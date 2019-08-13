package convert_c;
use strict;

sub processFile{
	my $sourceDir=shift;
	my $in=shift;
	my $outDir=shift;
	my $outFile=$in;
	$outFile=~s/\.cs$/\.c/;
	
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


		$l=~s/Cos\(/cos\(/g;
		$l=~s/Sin\(/sin\(/g;
		$l=~s/Pow\(/pow\(/g;

		if($l=~m/^\}/){$l="";}

		$l=~s/^   //;

		if($l=~m/^double /){
			my $t=$l;
			$t=~s/\{/\;/;
			push (@functions,$t);


		}

		$text.=$l;
	}
	$text="#include \<math.h\>\r\n".join("",@functions).$text;
	print $out $text;
	close($out);
}

1;