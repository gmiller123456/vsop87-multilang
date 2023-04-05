#!/usr/bin/perl
use strict;

my @planets_=("Mercury","Venus","Emb","Mars","Jupiter","Saturn","Uranus","Neptune");
my @planetsA=("Mercury","Venus","Earth","Mars","Jupiter","Saturn","Uranus","Neptune","Emb");
my @planetsB=("Mercury","Venus","Earth","Mars","Jupiter","Saturn","Uranus","Neptune");
my @planetsE=("Mercury","Venus","Earth","Mars","Jupiter","Saturn","Uranus","Neptune","Sun");

my @versions=("vsop87","vsop87a","vsop87b","vsop87c","vsop87d","vsop87e");

my @precisionNames=("full","xxlarge","xlarge","large","small","xsmall","milli","micro","nano","pico");
my @precisionLevels=(0,.0000000001,.000000001,.00000001,.0000001,.000001,.00001,.0001,.001,.01);

my @varNamesBD=("l","b","r");
my @varNamesACE=("x","y","z");
my @varNames_=("a","l","k","h","q","p");

my $f;
my $h;

my $currentVersion;
my $precisionName;
my $precision;
my @planets;
my @varNames;

my $versionIndex;
my $precisionIndex;

#my $precisionIndex=5;
#my $versionIndex=1;
#produceVersion();
produceAllPrecisionLevels();

sub produceAllPrecisionLevels{
    for(my $i=0;$i<scalar @precisionLevels; $i++){
        $precisionIndex=$i;
        produceAllVersions();
    }
}

sub produceAllVersions {
    for(my $i=0;$i<scalar @versions; $i++){
        $versionIndex=$i;
        produceVersion();
    }
}

sub produceVersion {

    @planets=@planetsB;
    @varNames=@varNamesACE;
    if($versionIndex==0){@planets=@planets_; @varNames=@varNames_;}
    if($versionIndex==1){@planets=@planetsA};
    if($versionIndex==5){@planets=@planetsE};

    if($versionIndex==2 || $versionIndex==4){@varNames=@varNamesBD;}

    $currentVersion=$versions[$versionIndex];
    $precisionName=$precisionNames[$precisionIndex];
    $precision=$precisionLevels[$precisionIndex];
    produceFile();
}

sub produceFile {
    my $filename=$currentVersion."_".$precisionName;
    open($f,">$filename.vba");
    open($h,">$filename"."_velocities.vba");

    fileStart();

    generateGetPlanets();
    if($versionIndex==1){generateGetMoon();}
    generateCoordFunctions();

    fileEnd();

    close($h);
    close($f);
}

sub generateCoordFunctions{
    my $in;
    my $var="";
    my $lastVar="";
    my $planet="";
    my $lastPlanet="";
    my $exponent="";
    my $lastExponent="";
    my $currentVar="";
    my @allVars=();
    my $exponentHasData=0;
    my $funcName="";

    open($in,$currentVersion.".csv");
    my $l=<$in>; #skip header line

    while($l=<$in>){
        $l=~s/\r*\n*//gis;
        my @vars=split(/\,/,$l);
        $planet=$vars[1];
        $planet=~s/ *//gis;
        $var=$vars[2];
        $exponent=$vars[3];

        if($exponent ne $lastExponent){
            $exponentHasData=0;
        }

        if($exponent ne $lastExponent && $currentVar ne ""){
            if($lastExponent != 0){
                print $f "   $currentVar=$currentVar";
                for(my $x=0;$x<$lastExponent;$x++){
                    print $f "*t";
                }
                print $f "\r\n\r\n";
                print $h "\r\n";
            }
        }

        if($var ne $lastVar && $lastVar ne ""){
            my $t="\r\n";
            $t.="   $funcName = ".join("+",@allVars)."\r\n";
            $t.= "end function\r\n\r\n";
            if(scalar(@allVars)==0){
                $t="\r\n";
                $t.="   $funcName = 0\r\n";
                $t.= "end function\r\n\r\n";
            }

            my $th="\r\n";
            $th.="   $funcName"."_velocity = ".join("+",@allVars)."\r\n";
            $th.= "end function\r\n\r\n";
            if(scalar(@allVars)==0){
                $th="\r\n";
                $th.="   $funcName"."_velocity = 0\r\n";
                $th.= "end function\r\n\r\n";
            }

            print $f $t;
            print $h $th;

            $currentVar="";
            @allVars=();
        }

        if($var ne $lastVar){
            $funcName=$currentVersion."_".$precisionName."_".$planet."_$var";
            print $f "function ".$currentVersion."_".$precisionName."_".$planet."_$var(t as Double)\r\n";
            print $h "function ".$currentVersion."_".$precisionName."_".$planet."_$var"."_velocity(t as Double)\r\n";
        }

        if($vars[4]>= $precision){
            if($exponentHasData==0){
                $currentVar=$planet."_".$var."_".$exponent;
                push(@allVars,$currentVar);
                print $f "   dim $currentVar as Double\r\n";
                print $f "   $currentVar = 0.0\r\n\r\n";
                print $h "   dim $currentVar as Double\r\n";
                print $h "   $currentVar = 0.0\r\n\r\n";
            }

            print $f "   $currentVar = $currentVar + $vars[4] * cos($vars[5] + $vars[6]*t)\r\n";
            if($exponent==0){
                print $h "   $currentVar = $currentVar -1 * $vars[4] * $vars[6] * sin($vars[5] + $vars[6]*t)\r\n";
            } else {
                print $h "   $currentVar = $currentVar + pow(t,".($exponent-1).") * $exponent * $vars[4] * cos($vars[5] + $vars[6]*t) -";
                print $h " pow(t,$exponent) * $vars[4] * $vars[6] * sin($vars[5] + $vars[6]*t)\r\n";
            }
            $exponentHasData=1;
        }

        $lastExponent=$exponent;
        $lastVar=$var;
    }
    print $f "   $funcName = ".join("+",@allVars)."\r\n";
    print $f "end function\r\n\r\n";

    print $h "   $funcName"."_velocity = ".join("+",@allVars)."\r\n";
    print $h "end function\r\n\r\n";

    close($in);
}

sub generateGetMoon{
    my $t="";
        $t.= "function ".$currentVersion."_".$precisionName."_getMoon(earth as Variant, emb as Variant) as Variant\r\n";
        $t.= "   dim temp(3)\r\n";
        $t.= "\r\n";
        $t.= "   temp(1)=(emb(1)-earth(1))*(1 + 1 / 0.01230073677)\r\n";
        $t.= "   temp(2)=(emb(2)-earth(2))*(1 + 1 / 0.01230073677)\r\n";
        $t.= "   temp(3)=(emb(3)-earth(3))*(1 + 1 / 0.01230073677)\r\n";
        $t.= "   temp(1)=temp(1)+earth(1)\r\n";
        $t.= "   temp(2)=temp(2)+earth(2)\r\n";
        $t.= "   temp(3)=temp(3)+earth(3)\r\n";
        $t.= "\r\n";
        $t.= "   ".$currentVersion."_".$precisionName."_getMoon = temp\r\n";
        $t.= "end function\r\n\r\n";

        print $f $t;
        print $h $t;
}

sub generateGetPlanets{
    foreach my $p (@planets){
        my $lp=lc($p);
        my $t="";
        my $t1="";
        my $t2="";
        $t.= "function ".$currentVersion."_".$precisionName."_get$p(t as Double) as Variant\r\n";

        if($currentVersion eq "vsop87"){
            $t.= "   dim temp(6)\r\n";
        } else {
            $t.= "   dim temp(3)\r\n";
        }

        for(my $i=0; $i<scalar @varNames; $i++){
            $t1.= "   temp(".($i-0+1).")=".$currentVersion."_".$precisionName."_".$lp."_$varNames[$i](t)\r\n";
            $t2.= "   temp(".($i-0+1).")=".$currentVersion."_".$precisionName."_".$lp."_$varNames[$i]_velocity(t) / 365250.0\r\n";
        }

        print $f $t.$t1;
        print $h $t.$t2;

        $t="";

        $t.= "\r\n";
        $t.= "   ".$currentVersion."_".$precisionName."_get$p = temp\r\n";
        $t.= "end function\r\n\r\n";

        print $f $t;
        print $h $t;

    }
}

sub fileStart{
    my $t="";
    $t.= "rem VSOP87-Multilang http://www.celestialprogramming.com/\r\n";
    $t.= "rem Greg Miller (gmiller\@gregmiller.net) 2023.  Released as Public Domain\r\n";
    $t.= "\r\n";

    print $f $t;
    print $h $t;

}

sub fileEnd{
}