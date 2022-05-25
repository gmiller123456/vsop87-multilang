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

#For BASIC version only - keeps track of line number
my $lineNum=1000;
my $getPlanetsPos="";
my $getPlanetsVel="";
my %functionsPos;
my %functionsVel;
my %getFunctionsPos;
my %getFunctionsVel;

#$precisionIndex=0;
#$versionIndex=1;
#produceVersion();
#produceAllVersions();
produceAllPrecisionLevels();

sub ln {
    $lineNum+=10;
    return $lineNum." ";
}

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
    $lineNum=1000;
    $getPlanetsPos="";
    $getPlanetsVel="";
    %functionsPos=();
    %functionsVel=();
    %getFunctionsPos=();
    %getFunctionsVel=();

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
    open($f,">$filename.bas.temp");
    open($h,">$filename"."_velocities.bas.temp");


    generateGetPlanets();
    if($versionIndex==1){generateGetMoon();}
    generateCoordFunctions();

    fileEnd();

    close($h);
    close($f);

    open($f,">$filename.bas");
    open($h,">$filename"."_velocities.bas");

    fileStart();

    foreach my $key (keys %functionsPos){
        my $temp=$functionsPos{$key};
        $getPlanetsPos=~s/gosub $key/gosub $temp/gis;
    }

    foreach my $key (keys %functionsVel){
        my $temp=$functionsVel{$key};
        $getPlanetsVel=~s/gosub $key/gosub $temp/gis;
    }

    my $tp="1000 on p gosub ";
    my $tv="1000 on p gosub ";

    for(my $i=0;$i<scalar(@planets);$i++){
        if($i>0){$tp.=",";}
        $tp.=$getFunctionsPos{$planets[$i]};
        $tv.=$getFunctionsPos{$planets[$i]};
    }
    $tp.="\r\n1001 return\r\n";
    $tv.="\r\n1001 return\r\n";

    print $f $tp.$getPlanetsPos;
    print $h $tv.$getPlanetsVel;

    close($h);
    close($f);

    system("cat $filename.bas.temp >> $filename.bas");
    system("cat $filename"."_velocities.bas.temp >> $filename"."_velocities.bas");
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

    open($in,$currentVersion.".csv");
    my $l=<$in>; #skip header line

    while($l=<$in>){
        $l=~s/\r*\n*//gis;
        $l=~s/ //gis;   #Swift apparently doesn't like extra spaces in front of numbers
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
                print $f ln()."$currentVar=$currentVar";
                for(my $x=0;$x<$lastExponent;$x++){
                    print $f "*t";
                }
                print $f "\r\n";
                #print $h "\r\n";
            }
        }

        if($var ne $lastVar && $lastVar ne ""){
            my $t="";
            $t.=ln()."i=".join("+",@allVars)."\r\n";
            $t.=ln()."return\r\n";
            if(scalar(@allVars)==0){
                $t.=ln()."i=0\r\n";
                $t.=ln()."return\r\n";
            }


            print $f $t;
            print $h $t;

            $currentVar="";
            @allVars=();
        }

        if($var ne $lastVar){
            my $l=ln();
            print $f $l."rem r = $planet"."_$var(t)\r\n";
            $functionsPos{$planet."_".$var}=$l;
            $l=ln();
            print $h $l."rem r = $planet"."_$var(t)\r\n";
            $functionsVel{$planet."_".$var}=$l;
        }

        if($vars[4]>= $precision){
            if($exponentHasData==0){
                $currentVar="i".$exponent;
                push(@allVars,$currentVar);
                print $f ln()."$currentVar = 0.0\r\n";
                print $h ln()."$currentVar = 0.0\r\n";
            }

            print $f ln()."$currentVar = $currentVar + $vars[4] * cos($vars[5] + $vars[6]*t)\r\n";
            if($exponent==0){
                print $h ln()."$currentVar = $currentVar + -1 * $vars[4] * $vars[6] * sin($vars[5] + $vars[6]*t)\r\n";
            } else {
                print $h ln()."$currentVar = $currentVar + pow(t,".($exponent-1).") * $exponent * $vars[4] * cos($vars[5] + $vars[6]*t) -";
                print $h " pow(t,$exponent) * $vars[4] * $vars[6] * sin($vars[5] + $vars[6]*t)\r\n";
            }
            $exponentHasData=1;
        }

        $lastExponent=$exponent;
        $lastVar=$var;
    }
    print $f ln()."i = ".join("+",@allVars)."\r\n";
    print $f ln()."return\r\n";

    print $h ln()."i = ".join("+",@allVars)."\r\n";
    print $h ln()."return\r\n";

    close($in);
}

sub generateGetMoon{
    my $t="";
        $t.= ln()."rem ---------- r = getMoon(e, eb)\r\n";
        $t.= ln()."r(1)=(eb(1)-e(1))*(1 + 1 / 0.01230073677)\r\n";
        $t.= ln()."r(2)=(eb(2)-e(2))*(1 + 1 / 0.01230073677)\r\n";
        $t.= ln()."r(3)=(eb(3)-e(3))*(1 + 1 / 0.01230073677)\r\n";
        $t.= ln()."r(1)=r(1)+e(1)\r\n";
        $t.= ln()."r(2)=r(2)+e(2)\r\n";
        $t.= ln()."r(3)=r(3)+e(3)\r\n";
        $t.= ln()."return\r\n";

        print $f $t;
        print $h $t;
}

sub generateGetPlanets{
    foreach my $p (@planets){
        my $lp=lc($p);
        my $t="";
        my $t1="";
        my $t2="";
        
        my $line=ln();
        $t.= $line."rem ---------- r = get$p(t)\r\n";
        $getFunctionsPos{$p}=$line;
        $getFunctionsVel{$p}=$line;

        for(my $i=0; $i<scalar @varNames; $i++){
            $t1.= ln()."gosub $lp"."_$varNames[$i]\r\n";
            $t2.= ln()."gosub $lp"."_$varNames[$i]\r\n";
            $t1.= ln()."r(".($i+1).")=i\r\n";
            $t2.= ln()."r(".($i+1).")=i / 365250.0\r\n";
        }

        $getPlanetsPos.=$t.$t1;
        $getPlanetsVel.=$t.$t2;

        $t="";

        $t.= ln()."return\r\n";

        $getPlanetsPos.=$t;
        $getPlanetsVel.=$t;

    }
}

sub fileStart{
    my $t="";
    $t.= "997 rem VSOP87-Multilang http://www.celestialprogramming.com/\r\n";
    $t.= "998 rem Greg Miller (gmiller\@gregmiller.net) 2022.  Released as Public Domain\r\n";
    $t.= "999 rem \r\n";

    print $f $t;
    print $h $t;
 }

sub fileEnd{
    print $f ln()."end\r\n";
    print $h ln()."end\r\n";
}