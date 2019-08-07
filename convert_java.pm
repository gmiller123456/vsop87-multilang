package convert_java;
use strict;

sub processFile{
	my $sourceDir=shift;
	my $in=shift;
	my $outDir=shift;
	my $outFile=$in;
	$outFile=~s/\.cs$/\.java/;
	
	my $f;
	open($f,$sourceDir.$in);
	my $out;
	open($out,">".$outDir.$outFile);

	my $classname;
	my $body="";
	my $inFunction=0;
	my $started=0;
	my $out2;
	while(my $l=<$f>){
		$l=~s/using static System.Math;/import static java.lang.Math.\*\;/gi;
		
		if($l=~m/public class ([0-9a-zA-Z\_]+)/){
			$classname=$1;
		}

		if($l=~m/static double ([a-zA-Z]+)\_/){
			if($body ne $1){
				$body=$1;
				if($started==1){
					print $out2 "}\r\n";
					close($out2);
				}
				open($out2,">$outDir"."/$classname"."_$body.java");
				print $out2 "import static java.lang.Math.*;\r\n\r\npublic class $classname"."_$body"."{\r\n";
			}
			$inFunction=1;
			$started=1;
		}

		if($l=~m/\}/ && $started==1){
			if($inFunction==0){
				print $out2 "}\r\n";
				close($out2);
				$started=0;
			} else {
				$inFunction=0;
			}
		}

		if($l!~m/temp\[\d\]\=temp/){
			$l=~s/(temp\[\d\]\=)([a-z]+)/$1$classname\_$2\.$2/;
		}

		$l=~s/Cos\(/cos\(/g;
		$l=~s/Sin\(/sin\(/g;
		$l=~s/Pow\(/pow\(/g;
		
		if($started==0){
			print $out $l;
		} else {
			print $out2 $l;
		}

	}
	close($out);
}

1;