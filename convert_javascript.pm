package convert_javascript;
use strict;

sub processFile{
	my $sourceDir=shift;
	my $in=shift;
	my $outDir=shift;
	my $outFile=$in;
	$outFile=~s/\.cs$/\.js/;
	
	my $f;
	open($f,$sourceDir.$in);
	my $out;
	open($out,">".$outDir.$outFile);
	my $classname;

	while(my $l=<$f>){
		$l=~s/using static System.Math;//gi;
		
		if($l=~m/public class ([0-9a-zA-Z\_]+)/){
			$classname=$1;
		}
		
		$l=~s/public class/class/gi;
		
		$l=~s/(\s+)public static double\[\] ([^\}]+)\{/$1static $2\{/gi;
		
		$l=~s/(\s+)static double ([^\}]+)\{/$1static $2\{/gi;
		
		if($l=~m/(\s+)double\[\] ([^\=]+)\=/){
			$l=$1."const ".$2."=new Array();\r\n";
		} elsif($l=~m/(\s*)temp\[\d+\]\=([^\(].*)\;\r\n/){
			$l=$1."temp.push($classname.".$2.");\r\n";
		} elsif($l=~m/(\s*)temp\[\d+\]\=(.*)\;\r\n/){
			$l=$1."temp.push(".$2.");\r\n";
		}
		
		$l=~s/double ([0-9a-zA-Z\_]+)\=0\.0\;/let $1\=0\.0;/;
		
		$l=~s/double\[\] //g;
		$l=~s/double //g;
		$l=~s/Cos\(/Math.cos\(/g;
		$l=~s/Sin\(/Math.sin\(/g;
		$l=~s/Pow\(/Math.pow\(/g;
		$l=~s/\/\//\#/g;
		
		print $out $l;
	}
	close($f);
}

1;