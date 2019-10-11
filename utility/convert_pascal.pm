package convert_pascal;
use strict;

sub processFile{
	my $sourceDir=shift;
	my $in=shift;
	my $outDir=shift;
	my $outFile=$in;
	$outFile=~s/\.cs$/\.pas/;
	
	my $f;
	open($f,$sourceDir.$in);
	my $out;
	open($out,">".$outDir.$outFile);

	my $classname;
	my $functionName;
	my $text="";
	my @functions=();
	while(my $l=<$f>){
		$l=~s/using static System.Math;//gi;
		
		if($l=~m/public class ([0-9a-zA-Z\_]+)/){
			$classname=$1;
			$l="";
		}

		if($l=~m/return temp/){$l="";}
		if($l=~m/double\[\] temp\=new double/){$l="";}

		$l=~s/public static double\[\] ([a-zA-Z]+)(\(.*?)\)/void $classname\_$1$2,double temp[])/;

		$l=~s/static double ([a-zA-Z\_0-9]+)/double $classname\_$1/;

		if($l=~m/temp\[\d\]\=temp/){
		} elsif($l=~m/temp\[\d\]\=\(emb/){
		} else {
			$l=~s/(temp\[\d\]\=)/$1$classname\_/;
		}

		if($l=~m/getMoon/){
			$l=~s/double\[\] ([a-zA-Z\_0-9]+)/double $1\[\]/g;
		}

		if($l=~m/^\}/){$l="";}

		$l=~s/^   //;
		
		if($l=~m/^void /){
			$l=~s/^void/procedure/;
			my $t=$l;
			$t=~s/\{/\;/;
			$t=~s/double +([a-zA-Z_0-9]+)\[\]/$1: array of Double/g;
			$t=~s/double +([a-zA-Z_0-9]+)/$1: Double/g;
			$t=~s/Double\,/Double\;/g;
			push (@functions,$t);
		}

		if($l=~m/^double /){
			$l=~m/^double (.*?)\(/;
			$functionName=$1;
			$l=~s/^double /function /;
			$l=~s/\{/\: Double\;\r\nbegin\r\n/;
		}
		
		$l=~s/return /$functionName \:\= /;

		$l=~s/\}/end\;/gs;
		$l=~s/\{/\;\r\nbegin/gs;
		$l=~s/\]\=/\]\:\=/gs;
		$l=~s/double/Double/gs;
		
		
		
		$l=~s/Double +([a-zA-Z_0-9]+)\[\]/$1: array of Double/g;
		$l=~s/Double +([a-zA-Z_0-9]+)/$1: Double/g;
		$l=~s/Double\,/Double\;/g;
		$l=~s/([a-zA-Z_0-9]+)\=/$1\:\=/g;
		$l=~s/([a-zA-Z_0-9]+)\+\=/$1\:\=$1\ + /g;
		$l=~s/([a-zA-Z_0-9]+)\: +Double\:\=0\.0/var $1\: Double\=0\.0/g;
		
		$l=~s/Pow\(/Power\(/g;

		$text.=$l;
	}
	$text="unit $classname;\r\n\r\ninterface\r\nuses Math;\r\n\r\n".join("",@functions)."\r\nimplementation".$text;
	
	#Move interface functions to the bottom, so functions aren't used before they're declared
	my @lines=split(/\r\n/,$text);
	
	my $firstLine;
	for(my $x=0;$x<scalar @lines;$x++){
		if(index($lines[$x],"implementation")!=-1){
			$firstLine=$x+1;
			$x=100000000;
		}
	}

	my $lastLine;
	for(my $x=0;$x<scalar @lines;$x++){
		if(index($lines[$x],"function")!=-1){
			$lastLine=$x-1;
			$x=100000000;
		}
	}
	
	for(my $x=$firstLine;$x<$lastLine;$x++){
		my $end=scalar @lines;
		$lines[$end]=$lines[$x];
		$lines[$x]="";
	}
	
	$text=join("\r\n",@lines);
	$text=~s/\r\n\r\n\r\n/\r\n/gs;
	$text=~s/\r\n\r\n\r\n/\r\n/gs;
	$text=~s/\r\n\r\n\r\n/\r\n/gs;
	$text.="\r\nend.\r\n";

	#Move variable declarations to before 'begin' statement
	@lines=split(/\r\n/,$text);
	for(my $x=0;$x<scalar @lines;$x++){
		if($lines[$x]=~m/ var /){
			my $y=$x;
			my $temp="";
			while(index($temp,"begin")==-1){
				$temp=$lines[$y];
				$lines[$y]=$lines[$y-1];
				$lines[$y-1]=$temp;
				$temp=$lines[$y];
				$y--;
			}
		}
	}
	$text=join("\r\n",@lines);
	
	print $out $text;
	close($out);
}

1;