package convert_python;
use strict;

sub processFile{
	my $sourceDir=shift;
	my $in=shift;
	my $outDir=shift;
	my $outFile=$in;
	$outFile=~s/\.cs$/\.py/;
	
	my $f;
	open($f,$sourceDir.$in);
	my $out;
	open($out,">".$outDir.$outFile);
	my $classname;


	my $classname;
	while(my $l=<$f>){
		$l=~s/using static System.Math;/import math/gi;
		
		if($l=~m/public class ([0-9a-zA-Z\_]+)/){
			$classname=$1;
		}
		
		$l=~s/public class ([^\}]+)\{/class $1\:/gi;
		
		$l=~s/(\s+)public static double\[\] ([^\}]+)\{/$1\@staticmethod\r\n$1def $2\:/gi;
		
		$l=~s/(\s+)static double ([^\}]+)\{/$1\@staticmethod\r\n$1def $2\:/gi;
		
		if($l=~m/(\s+)double\[\] ([^\=]+)\=/){
			$l=$1.$2."=[]\r\n";
		} elsif($l=~m/(\s*)temp\[\d+\]\=([^\(].*)\r\n/){
			$l=$1."temp.append($classname.".$2.")\r\n";
		} elsif($l=~m/(\s*)temp\[\d+\]\=(.*)\;\r\n/){
			$l=$1."temp.append(".$2.")\r\n";
		}
		
		$l=~s/\;//g;
		#$l=~s/\}\s*//g;
		$l=~s/\}//g;
		$l=~s/double\[\] //g;
		$l=~s/double //g;
		$l=~s/Cos\(/math.cos\(/g;
		$l=~s/Sin\(/math.sin\(/g;
		$l=~s/Pow\(/math.pow\(/g;
		$l=~s/\/\//\#/g;
		
		print $out $l;
	}
}

1;