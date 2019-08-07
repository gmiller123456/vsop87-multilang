#!/usr/bin/perl
use strict;

my $sourceDir="Java/";
my $outDir="Java2/";
processDir();
#processFile("vsop87_micro_jupiter.java");

sub processDir(){
	my $d;
	opendir($d,$sourceDir);

	while(my $f=readdir($d)){
		if(substr($f,0,1) eq ".") {next;}
		processFile($f);
	}

	closedir($d);
}

sub processFile(){
	my $filename=shift;
	my $f;
	my $out;
	#$out=\*STDOUT;
	open($out,">$outDir".$filename);
	open($f,$sourceDir.$filename);
	my $l;
	while($l=<$f>){
		while($l && $l!~/static double /){
			print $out $l;
			$l=<$f>;
		}

		if($l){
			my $function=$l;

			my $sum=processFunction($f,$out);
			if($sum eq ""){$sum="0";}
			print $out $function;
			print $out "      return $sum;\r\n";
		}
	}

	close($f);
}

sub processFunction(){
	my $f=shift;
	my $out=shift;
	my @vars=();

	my $l=<$f>;
	my $indent;
	my $var;
	my $infunc=0;
	while($l!~/return /){
		if($l!~/exp\=/ && $l=~m/(\s+)double ([a-zA-Z0-9\_]+)/){
			if($infunc!=0){
				print $out $indent."   return $var;\r\n$indent}\r\n\r\n";
			}
			$indent="   ";
			$var=$2;
			print $out $indent."static double $var\_(double t){\r\n";
			push (@vars,$var."_(t)");
			$infunc=1;
		}
		if($l=~m/double exp/){$l="";}
		$l=~s/exp\=/double exp\=/;
		print $out $l;
		$l=<$f>;
	}
	if($infunc!=0){
		print $out $indent."   return $var;\r\n$indent}\r\n\r\n";
	}

	return join("+",@vars);


}