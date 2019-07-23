#!/usr/bin/perl
use strict;


my @vsop87=("VSOP87.emb","VSOP87.jup","VSOP87.mar","VSOP87.mer","VSOP87.nep","VSOP87.sat","VSOP87.ura","VSOP87.ven");
my @vsop87a=("VSOP87A.ear","VSOP87A.emb","VSOP87A.jup","VSOP87A.mar","VSOP87A.mer","VSOP87A.nep","VSOP87A.sat","VSOP87A.ura","VSOP87A.ven");
my @vsop87b=("VSOP87B.ear","VSOP87B.jup","VSOP87B.mar","VSOP87B.mer","VSOP87B.nep","VSOP87B.sat","VSOP87B.ura","VSOP87B.ven");
my @vsop87c=("VSOP87C.ear","VSOP87C.jup","VSOP87C.mar","VSOP87C.mer","VSOP87C.nep","VSOP87C.sat","VSOP87C.ura","VSOP87C.ven");
my @vsop87d=("VSOP87D.ear","VSOP87D.jup","VSOP87D.mar","VSOP87D.mer","VSOP87D.nep","VSOP87D.sat","VSOP87D.ura","VSOP87D.ven");
my @vsop87e=("VSOP87E.ear","VSOP87E.jup","VSOP87E.mar","VSOP87E.mer","VSOP87E.nep","VSOP87E.sat","VSOP87E.sun","VSOP87E.ura","VSOP87E.ven");

processVersion("vsop87",@vsop87);
processVersion("vsop87a",@vsop87a);
processVersion("vsop87b",@vsop87b);
processVersion("vsop87c",@vsop87c);
processVersion("vsop87d",@vsop87d);
processVersion("vsop87e",@vsop87e);

sub processVersion(){
	my $version=shift;
	my @files=@_;
	
	open(my $out,">$version.cs");

	print $out "using static System.Math;\r\n\r\n";

	print $out "public class $version {\r\n";
	
	generatePublicFunctions($out,$version);
	
	foreach my $file (@files){
		processFile($out,$file);
	}
	print $out "}\r\n";
}

sub generatePublicFunctions(){
	my $out=shift;
	my $version=shift;
	my @vars=();
	my @bodies=();
	my $v=substr($version,6,1);
	
	if($version eq "vsop87"){
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
		print $out "      return temp;\r\n   }\r\n\r\n";
	}
}

sub processFile(){
	my $out=shift;
	my $filename=shift;
	my $f;
	open($f,"data/".$filename);
	my $variable="";
	my $exponent=0;
	my @variables=();
	my $lastV="";
	while(my $l=<$f>){
		if(substr($l,0,7) eq ' VSOP87'){
			if($variable ne ""){
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
				print $out "      return ".join("+",@variables).";\r\n";
				print $out "   }\r\n\r\n";
				@variables=();
			}
			
			if($v ne $lastV){
				print $out "   static double $plan"."_$v"."(double t){\r\n";
			}
			$lastV=$v;
			
			my $t="".$plan."_".$v."_".$exponent;
			print $out "      double $t=0.0;\r\n";
			$variable=$t;
			push(@variables,$variable);
		} else {
			my $a=substr($l,79,18);
			my $b=substr($l,97,14);
			my $c=substr($l,111,20);
			print $out "      $variable+=$a * Cos($b + $c*t);\r\n";
		}
	}
	my $et="";
	for(my $c=0;$c<$exponent;$c++){
		$et.=" * t";
	}
	print $out "      $variable=$variable".$et.";\r\n\r\n";
	
	print $out "      return ".join("+",@variables).";\r\n";
	print $out "   }\r\n";

}