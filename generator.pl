#!/usr/bin/perl
use strict;

my %accuracy;
$accuracy{"xxlarge"}=0.0000000001;
$accuracy{"xlarge"}=0.000000001;
$accuracy{"large"}=0.00000001;
$accuracy{"small"}=0.0000001;
$accuracy{"xsmall"}=0.000001;
$accuracy{"milli"}=0.00001;
$accuracy{"micro"}=0.0001;
$accuracy{"nano"}=0.001;
$accuracy{"pico"}=0.01;
$accuracy{"full"}=0;
my $skippedTerms=0;
my $totalTerms=0;

my @vsop87=("VSOP87.emb","VSOP87.jup","VSOP87.mar","VSOP87.mer","VSOP87.nep","VSOP87.sat","VSOP87.ura","VSOP87.ven");
my @vsop87a=("VSOP87A.ear","VSOP87A.emb","VSOP87A.jup","VSOP87A.mar","VSOP87A.mer","VSOP87A.nep","VSOP87A.sat","VSOP87A.ura","VSOP87A.ven");
my @vsop87b=("VSOP87B.ear","VSOP87B.jup","VSOP87B.mar","VSOP87B.mer","VSOP87B.nep","VSOP87B.sat","VSOP87B.ura","VSOP87B.ven");
my @vsop87c=("VSOP87C.ear","VSOP87C.jup","VSOP87C.mar","VSOP87C.mer","VSOP87C.nep","VSOP87C.sat","VSOP87C.ura","VSOP87C.ven");
my @vsop87d=("VSOP87D.ear","VSOP87D.jup","VSOP87D.mar","VSOP87D.mer","VSOP87D.nep","VSOP87D.sat","VSOP87D.ura","VSOP87D.ven");
my @vsop87e=("VSOP87E.ear","VSOP87E.jup","VSOP87E.mar","VSOP87E.mer","VSOP87E.nep","VSOP87E.sat","VSOP87E.sun","VSOP87E.ura","VSOP87E.ven");

foreach my $key (keys(%accuracy)){
	processVersion("vsop87",$key,@vsop87);
	processVersion("vsop87a",$key,@vsop87a);
	processVersion("vsop87b",$key,@vsop87b);
	processVersion("vsop87c",$key,@vsop87c);
	processVersion("vsop87d",$key,@vsop87d);
	processVersion("vsop87e",$key,@vsop87e);
	
	print "$key Total Terms:   $totalTerms    Skipped Terms: $skippedTerms   Percent Skipped:  ".($skippedTerms/$totalTerms*100)."\r\n";
	$skippedTerms=0;
	$totalTerms=0;
}


sub processVersion(){
	my $version=shift;
	my $accversion=shift;
	my @files=@_;
	
	$version=$version."_".$accversion;
	
	open(my $out,">$version.cs");

	print $out "using static System.Math;\r\n\r\n";

	print $out "public class $version {\r\n";
	
	generatePublicFunctions($out,$version);
	
	foreach my $file (@files){
		processFile($out,$file,$accuracy{$accversion});
	}
	print $out "}\r\n";
}

sub generatePublicFunctions(){
	my $out=shift;
	my $version=shift;
	my @vars=();
	my @bodies=();
	my $v=substr($version,6,1);
	
	if(substr($version,0,7) eq "vsop87_"){
		@vars=("a","l","k","h","q","p");
		@bodies=("emb","jupiter","mars","mercury","neptune","saturn","uranus","venus");
	} elsif($v eq "a" || $v eq "c" || $v eq "e"){
		@vars=("x","y","z");
		@bodies=("earth","jupiter","mars","mercury","neptune","saturn","uranus","venus");
		if($v eq "a"){
			@bodies=("earth","emb","jupiter","mars","mercury","neptune","saturn","uranus","venus");
		}
		if($v eq "e"){
			@bodies=("earth","jupiter","mars","mercury","neptune","saturn","uranus","venus","sun");
		}
	} else {
		@vars=("l","b","r");
		@bodies=("earth","jupiter","mars","mercury","neptune","saturn","uranus","venus");
	}
	
	my $numVars=scalar(@vars);
	
	foreach my $body (@bodies){
		my $i=0;
		print $out "   public static double[] get".ucfirst($body)."(double t){\r\n";
		print $out "      double[] temp=new double[$numVars];\r\n";
		foreach my $var (@vars){
			print $out "      temp[$i]=$body"."_$var"."(t);\r\n";
			$i++;
		}
		print $out "      return temp;\r\n   }\r\n\r\n";
	}
	if($v eq "a"){
		print $out "   public static double[] getMoon(double[] earth, double[] emb){\r\n";
		print $out "      double[] temp=new double[$numVars];\r\n";
		print $out "      temp[0]=(emb[0]-earth[0])*(1 + 1 / 0.01230073677);\r\n";
		print $out "      temp[1]=(emb[1]-earth[1])*(1 + 1 / 0.01230073677);\r\n";
		print $out "      temp[2]=(emb[2]-earth[2])*(1 + 1 / 0.01230073677);\r\n";
		print $out "      temp[0]=temp[0]+earth[0];\r\n";
		print $out "      temp[1]=temp[1]+earth[1];\r\n";
		print $out "      temp[2]=temp[2]+earth[2];\r\n";
		print $out "      return temp;\r\n   }\r\n\r\n";
	}
}

sub processFile(){
	my $out=shift;
	my $filename=shift;
	my $accuracy=shift;
	my $f;
	open($f,"data/".$filename);
	my $variable="";
	my $exponent=0;
	my @variables=();
	my $lastV="";
	my $hasTerms=0;
	my $lastVariable="";
	while(my $l=<$f>){
		if(substr($l,0,7) eq ' VSOP87'){
			if($variable ne "" && $hasTerms==1){
				my $et="";
				for(my $c=0;$c<$exponent;$c++){
					$et.=" * t";
				}
				if($exponent!=0){
					print $out "      $variable=$variable".$et.";\r\n";
				}
				print $out "\r\n";
			}
			my $vari=substr($l,41,1);
			my $v=lc(substr($l,43+$vari,1));
			$exponent=substr($l,59,1);
			my $plan=lc(substr($l,22,10));
			$plan=~s/ //gis;
			
			if($v ne $lastV && $lastV ne ""){
				if(scalar (@variables)==0){
					print $out "      return 0;\r\n";
				} else {
					print $out "      return ".join("+",@variables).";\r\n";
				}
				print $out "   }\r\n\r\n";
				@variables=();
			}
			
			if($v ne $lastV){
				$hasTerms=0;
				print $out "   static double $plan"."_$v"."(double t){\r\n";
			}
			$lastV=$v;
			
			my $t="".$plan."_".$v."_".$exponent;
			$variable=$t;
			if($variable ne $lastVariable){
				$hasTerms=0;
				$lastVariable=$variable;
			}
		} else {
			my $a=substr($l,79,18);
			my $b=substr($l,97,14);
			my $c=substr($l,111,20);
			if($a>=$accuracy || $accuracy==0){
				if($hasTerms!=1){
					print $out "      double $variable=0.0;\r\n";
					push(@variables,$variable);
				}
				
				print $out "      $variable+=$a * Cos($b + $c*t);\r\n";
				$hasTerms=1;
			} else {
				$skippedTerms++;
			}
			$totalTerms++;
		}
	}
	
	if($hasTerms==1){
		my $et="";
		for(my $c=0;$c<$exponent;$c++){
			$et.=" * t";
		}
		print $out "      $variable=$variable".$et.";\r\n\r\n";
	}

	if(scalar (@variables)==0){
		print $out "      return 0;\r\n";
	} else {
		print $out "      return ".join("+",@variables).";\r\n";
	}
	print $out "   }\r\n\r\n";

}