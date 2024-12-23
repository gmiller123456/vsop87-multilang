#!/usr/bin/perl
use strict;

my @planets_=("mercury","venus","emb","mars","jupiter","saturn","uranus","neptune");
my @planetsA=("mercury","venus","earth","mars","jupiter","saturn","uranus","neptune","emb");
my @planetsB=("mercury","venus","earth","mars","jupiter","saturn","uranus","neptune");
my @planetsE=("mercury","venus","earth","mars","jupiter","saturn","uranus","neptune","sun");

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

#Below three lines for testing
#$versionIndex=1;
#$precisionIndex=0;
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
    my $dir=$filename;


    open($f,">$filename.rs");
    open($h,">$filename"."_velocities.rs");

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
                print $f ";\r\n\r\n";
                print $h "\r\n";
            }
        }

        if($var ne $lastVar && $lastVar ne ""){
            my $t="";
            $t.="   return ".join("+",@allVars).";\r\n";
            $t.= "}\r\n\r\n";
            if(scalar(@allVars)==0){
                $t="";
                $t.="   return 0;\r\n";
                $t.= "}\r\n\r\n";
            }


            print $f $t;
            print $h $t;

            $currentVar="";
            @allVars=();
        }

        if($var ne $lastVar){
            print $f "fn $planet"."_$var(t: f64) -> f64{\r\n";
            print $h "fn $planet"."_$var(t: f64) -> f64 {\r\n";
        }

        if($vars[4]>= $precision){
            if($exponentHasData==0){
                $currentVar=$planet."_".$var."_".$exponent;
                push(@allVars,$currentVar);
                print $f "   let mut $currentVar: f64 = 0.0;\r\n\r\n";
                print $h "   let mut $currentVar: f64 = 0.0;\r\n\r\n";
            }

            print $f "   $currentVar += $vars[4] * ($vars[5] + $vars[6]*t).cos();\r\n";
            if($exponent==0){
                print $h "   $currentVar += -1f64 * $vars[4] * $vars[6] * ($vars[5] + $vars[6]*t).sin();\r\n";
            } else {
                print $h "   $currentVar += ((t.powf(".($exponent-1)."f64))) * $exponent"."f64 * $vars[4] * ($vars[5] + $vars[6]*t).cos() -";
                print $h " ((t.powf($exponent"."f64))) * $vars[4] * $vars[6] * ($vars[5] + $vars[6]*t).sin();\r\n";
            }
            $exponentHasData=1;
        }

        $lastExponent=$exponent;
        $lastVar=$var;
    }
    print $f "   return ".join("+",@allVars).";\r\n";
    print $f "}\r\n\r\n";

    print $h "   return ".join("+",@allVars).";\r\n";
    print $h "}\r\n\r\n";

    close($in);
}

sub generateGetMoon{
    my $t="";
        $t.= "pub fn get_moon(earth: [f64;3], emb: [f64;3]) -> [f64;3]{\r\n";
        $t.= "   let mut temp:[f64;3]=[0f64;3];\r\n";
        $t.= "\r\n";
        $t.= "   temp[0]=(emb[0]-earth[0])*(1f64 + 1f64 / 0.01230073677f64);\r\n";
        $t.= "   temp[1]=(emb[1]-earth[1])*(1f64 + 1f64 / 0.01230073677f64);\r\n";
        $t.= "   temp[2]=(emb[2]-earth[2])*(1f64 + 1f64 / 0.01230073677f64);\r\n";
        $t.= "   temp[0]=temp[0]+earth[0];\r\n";
        $t.= "   temp[1]=temp[1]+earth[1];\r\n";
        $t.= "   temp[2]=temp[2]+earth[2];\r\n";
        $t.= "\r\n";
        $t.= "   return temp;\r\n";
        $t.= "}\r\n\r\n";

        print $f $t;
        print $h $t;
}

sub generateGetPlanets{
    foreach my $p (@planets){
        my $lp=lc($p);
        my $t="";
        my $t1="";
        my $t2="";
        if($currentVersion eq "vsop87"){
            $t.= "pub fn get_$p(t: f64) -> [f64;6]{\r\n";
        } else {
            $t.= "pub fn get_$p(t: f64) -> [f64;3]{\r\n";
        }

        if($currentVersion eq "vsop87"){
            $t.= "   let mut temp: [f64;6]=[0f64;6];\r\n";
        } else {
            $t.= "   let mut temp: [f64;3]=[0f64;3];\r\n";
        }

        for(my $i=0; $i<scalar @varNames; $i++){
            $t1.= "   temp[$i]=$lp"."_$varNames[$i](t);\r\n";
            $t2.= "   temp[$i]=$lp"."_$varNames[$i](t) / 365250.0;\r\n";
        }

        print $f $t.$t1;
        print $h $t.$t2;

        $t="";

        $t.= "\r\n";
        $t.= "   return temp;\r\n";
        $t.= "}\r\n\r\n";

        print $f $t;
        print $h $t;

    }
}

sub fileStart{
    my $t="";
    $t.= "//VSOP87-Multilang http://www.celestialprogramming.com/\r\n";
    $t.= "//Greg Miller (gmiller\@gregmiller.net) 2021.  Released as Public Domain\r\n";
    $t.= "\r\n";

    print $f $t;
    print $h $t;

}

sub fileEnd{
}