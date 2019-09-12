package convert_matlab;
use strict;

sub processFile{
	my $sourceDir=shift;
	my $in=shift;
	my $outDir=shift;
	my $outFile=$in;
	$outFile=~s/\.cs$/\.m/;
	
	my $f;
	open($f,$sourceDir.$in);
	my $out;
	open($out,">".$outDir.$outFile);

	my $classname;
	my $text="";
	my @functions=();
	while(my $l=<$f>){
		$l=~s/using static System.Math;//gi;
		
		if($l=~m/public class ([0-9a-zA-Z\_]+)/){
			$classname=$1;
			$l="classdef $classname\r\n   methods(Static)\r\n";
		}
		
		$l=~s/new double\[3\]/cell\(3,1\)/;
		$l=~s/new double\[6\]/cell\(6,1\)/;
		$l=~s/double\[\] temp\=/temp\=/;
		$l=~s/temp\[(\d)\]\=/temp\($1+1\)\=$classname\./g;
		$l=~s/temp\[(\d)\]/temp\($1+1\)/g;
		$l=~s/emb\[(\d)\]/emb\($1+1\)/;
		$l=~s/earth\[(\d)\]/earth\($1+1\)/;

		$l=~s/public static double\[\] ([a-zA-Z]+)(\(.*?)\)/function retval\=$1$2)/;

		$l=~s/static double ([a-zA-Z\_0-9]+)/function retval=$1/;

		if($l=~m/getMoon/){
			$l=~s/\[\]//g;
		}
		
		$l=~s/double //g;


		$l=~s/Cos\(/cos\(/g;
		$l=~s/Sin\(/sin\(/g;
		$l=~s/Pow\(/power\(/g;
		
		$l=~s/return/retval\=/;

		if($l=~m/^\}/){$l="   end\r\nend\r\n"};
		$l=~s/\}/end/;
		$l=~s/\{//g;

		$text.=$l;
	}
	print $out $text;
	#print $text;
	close($out);
}

1;