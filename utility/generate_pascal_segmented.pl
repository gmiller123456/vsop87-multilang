#!/usr/bin/perl
use strict;

my @planets_=("Mercury","Venus","Emb","Mars","Jupiter","Saturn","Uranus","Neptune");
my @planetsA=("Mercury","Venus","Earth","Mars","Jupiter","Saturn","Uranus","Neptune","Emb");
my @planetsB=("Mercury","Venus","Earth","Mars","Jupiter","Saturn","Uranus","Neptune");
my @planetsE=("Mercury","Venus","Earth","Mars","Jupiter","Saturn","Uranus","Neptune","Sun");

my @versions=("vsop87","vsop87a","vsop87b","vsop87c","vsop87d","vsop87e");

my @precisionNames=("full");
my @precisionLevels=(0);

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
my $filesAreOpen=0;

#my $precisionIndex=0;
#my $versionIndex=1;
#produceVersion();
#produceAllPrecisionLevels();
produceAllVersions();

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
    generateCoordFunctions();
}

sub startNewFile{
	my $planet=shift;

	my $filename=$currentVersion."_".$precisionName."_".$planet;
	open($f,">$filename.pas");
	open($h,">$filename"."_velocities.pas");
	$filesAreOpen=1;

	fileStart($planet);
}

sub closeCurrentFile{
	my $planet=shift;

	if($filesAreOpen){
		fileEnd($planet);

		close($h);
		close($f);
	}
	$filesAreOpen=0;
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
        $l=~s/ //gis;
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
                print $f "   $currentVar := $currentVar";
                for(my $x=0;$x<$lastExponent;$x++){
                    print $f "*t";
                }
                print $f ";\r\n\r\n";
                print $h "\r\n";
            }
        }

        if($var ne $lastVar && $lastVar ne ""){
            my $t="";
            $t.="   $lastPlanet"."_$lastVar := ".join("+",@allVars).";\r\n";
            $t.= "end;\r\n\r\n";
            if(scalar(@allVars)==0){
                $t="";
                $t.="   $lastPlanet"."_$lastVar := 0;\r\n";
                $t.= "end;\r\n\r\n";
            }
            print $f $t;
            print $h $t;

            $currentVar="";
            @allVars=();
        }

        if($planet ne $lastPlanet){
            closeCurrentFile($lastPlanet);
            startNewFile($planet);
        }

        if($var ne $lastVar  ){
            print $f "function $planet"."_$var(t: Double): Double;\r\n";
            print $h "function $planet"."_$var(t: Double): Double;\r\n";
				
				for(my $i=0;$i<6;$i++){
					print $f "   var $planet"."_$var"."_$i:Double = 0.0;\r\n";
					print $h "   var $planet"."_$var"."_$i:Double = 0.0;\r\n";
				}
				
				print $f "begin\r\n";
				print $h "begin\r\n";
        }

        if($vars[4]>= $precision){
            if($exponentHasData==0){
                $currentVar=$planet."_".$var."_".$exponent;
                push(@allVars,$currentVar);
            }

            print $f "   $currentVar := $currentVar + $vars[4] * Cos($vars[5] + $vars[6]*t);\r\n";
            if($exponent==0){
                print $h "   $currentVar := $currentVar + -Power(t,$exponent) * $vars[4] * $vars[6] * Sin($vars[5] + $vars[6]*t);\r\n";
            } else {
                print $h "   $currentVar := $currentVar + Power(t,".($exponent-1).") * $exponent * $vars[4] * Cos($vars[5] + $vars[6]*t) -";
                print $h " Power(t,$exponent) * $vars[4] * $vars[6] * Sin($vars[5] + $vars[6]*t);\r\n";
            }
            $exponentHasData=1;
        }

        $lastPlanet=$planet;    
        $lastExponent=$exponent;
        $lastVar=$var;
    }
    print $f "   $planet"."_$lastVar := ".join("+",@allVars).";\r\n";
    print $f "end;\r\n\r\n";

    print $h "   $planet"."_$lastVar := ".join("+",@allVars).";\r\n";
    print $h "end;\r\n\r\n";
    closeCurrentFile($planet);

    close($in);
}

sub generateGetMoon{
    my $t="";
        $t.= "   static getMoon(earth, emb){\r\n";
        $t.= "      var temp=[0.0, 0.0, 0,0];\r\n";
        $t.= "\r\n";
        $t.= "      temp[0]=(emb[0]-earth[0])*(1 + 1 / 0.01230073677);\r\n";
        $t.= "      temp[1]=(emb[1]-earth[1])*(1 + 1 / 0.01230073677);\r\n";
        $t.= "      temp[2]=(emb[2]-earth[2])*(1 + 1 / 0.01230073677);\r\n";
        $t.= "      temp[0]=temp[0]+earth[0];\r\n";
        $t.= "      temp[1]=temp[1]+earth[1];\r\n";
        $t.= "      temp[2]=temp[2]+earth[2];\r\n";
        $t.= "\r\n";
        $t.= "      return temp;\r\n";
        $t.= "   }\r\n\r\n";

        print $f $t;
        print $h $t;
}

sub generateGetPlanets{
    foreach my $p (@planets){
        my $lp=lc($p);
        my $t="";
        my $t1="";
        my $t2="";
        $t.= "   static get$p(t){\r\n";

        if($currentVersion eq "vsop87"){
            $t.= "      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0];\r\n";
        } else {
            $t.= "      var temp=[0.0, 0.0, 0.0];\r\n";
        }

        for(my $i=0; $i<scalar @varNames; $i++){
            $t1.= "      temp[$i]=this.$lp"."_$varNames[$i](t);\r\n";
            $t2.= "      temp[$i]=this.$lp"."_$varNames[$i](t) / 365250.0;\r\n";
        }

        print $f $t.$t1;
        print $h $t.$t2;

        $t="";

        $t.= "\r\n";
        $t.= "      return temp;\r\n";
        $t.= "   }\r\n\r\n";

        print $f $t;
        print $h $t;
    }
}

sub fileStart{
	my $planet=shift;
	my $t="";
	$t.= "//VSOP87-Multilang http://www.celestialprogramming.com/\r\n";
	$t.= "//Greg Miller (gmiller\@gregmiller.net) 2022.  Released as Public Domain\r\n";
	$t.= "\r\n";

	print $f $t;
	print $h $t;

	print $f "unit $currentVersion"."_".$precisionName."_"."$planet;\r\n\r\ninterface\r\nuses Math;\r\n\r\n";
	print $h "unit $currentVersion"."_".$precisionName."_".$planet."_velocities;\r\n\r\ninterface\r\nuses Math;\r\n\r\n";
	
	print $f "procedure ".$currentVersion."_".$precisionName."_get".ucfirst($planet)."(t: Double;var temp: array of Double);\r\n\r\n";
	print $h "procedure ".$currentVersion."_".$precisionName."_velocities_get".ucfirst($planet)."(t: Double;var temp: array of Double);\r\n\r\n";
	
	print $f "implementation\r\n\r\n";
	print $h "implementation\r\n\r\n";

}

sub fileEnd{
	my $planet=shift;

	print $f "procedure ".$currentVersion."_".$precisionName."_get".ucfirst($planet)."(t: Double;var temp: array of Double);\r\n";
	print $h "procedure ".$currentVersion."_".$precisionName."_velocities_get".ucfirst($planet)."(t: Double;var temp: array of Double);\r\n";
	
	print $f "begin\r\n";
	print $h "begin\r\n";
	
	for(my $i=0;$i<scalar(@varNames);$i++){
		print $f "   temp[$i] := $planet"."_$varNames[$i](t);\r\n";
		print $h "   temp[$i] := $planet"."_$varNames[$i](t) / 365250.0;\r\n";
	}
	
	print $f "end;\r\n\r\n";
	print $h "end;\r\n\r\n";


	if($filesAreOpen==1){
		print $f "end.\r\n";
		print $h "end.\r\n";
	}
}