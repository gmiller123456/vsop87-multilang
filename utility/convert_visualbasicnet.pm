package convert_visualbasicnet;
use strict;

sub processFile{
	my $sourceDir=shift;
	my $in=shift;
	my $outDir=shift;
	my $outFile=$in;
	$outFile=~s/\.cs$/\.vb/;
	
	my $f;
	open($f,$sourceDir.$in);
	my $out;
	open($out,">".$outDir.$outFile);


	my $classname;
	my $functionName;
	while(my $l=<$f>){
		$l=~s/using static System.Math;/Imports System.Math/gi;
		
		if($l=~m/public class ([0-9a-zA-Z\_]+)/){
			$classname=$1;
		}
		
		$l=~s/public class ([^\}]+)\{/Public Class $1/gi;
		
		$l=~s/(\s+)public static double\[\] ([^\}]+)\{/$1Public Shared Function $2 as Double()/gi;
		
		$l=~s/(\s+)static double ([^\}]+)\{/$1Shared Function $2 as Double/gi;
		
		if($l=~m/(\s+)double\[\] ([^\=]+)\=.*double\[(\d+)\]/){
			$l="$1Dim $2($3) as Double\r\n";
		} elsif($l=~m/(\s*)temp\[(\d+)\]\=([^\(].*)\r\n/){
			$l=$1."temp($2)=".$3."\r\n";
			$l=~s/\[/\(/g;
			$l=~s/\]/\)/g;
		} elsif($l=~m/(\s*)temp\[(\d+)\]\=(.*)\;\r\n/){
			$l=$1."temp($2)=".$3."\r\n";
			$l=~s/\[/\(/g;
			$l=~s/\]/\)/g;
		}
		
		$l=~s/\;//g;
		$l=~s/\/\//\'/g;

		if($l=~m/Function ([a-zA-Z0-9_]+)/){
			$functionName=$1;
			$l=~s/double ([a-zA-Z0-9_]+)/$1 as Double/gis;
			$l=~s/double\[\] ([a-zA-Z0-9_]+)/$1 as Double()/gis;
		} else {
			$l=~s/double ([a-zA-Z0-9_]+)/Dim $1 as Double/gis;
			$l=~s/double\[\] ([a-zA-Z0-9_]+).*(double\[(\d+)\])/Dim $1 as Double()/gis;
		}

		$l=~s/return ([a-zA-Z0-9_]+)/$functionName=$1/;
		if($l=~m/\}/){
			if($functionName ne ""){
				$l=~s/\}/End Function/;
				$functionName="";
			} else {
				$l=~s/\}/End Class/;
			}
		}


		print $out $l;
	}
}

1;