package convert_cpp;
use strict;

sub processFile{
	my $sourceDir=shift;
	my $in=shift;
	my $outDir=shift;
	my $outFile=$in;
	$outFile=~s/\.c$/\.cpp/;
	
	my $f;
	open($f,$sourceDir.$in);
	if(!$f){print $!;}
	my $out;
	open($out,">".$outDir.$outFile);

	my $classname=$outFile;
	$classname=~s/\.cpp//;
	my $text="";
	my @functions=();
	while(my $l=<$f>){
		$l=~s/$classname\_/$classname\:\:/g;
		if($l=~m/^double.*?\;/){
			$l="";
		}

		$text.=$l;
	}
	$text="#include \"$classname\.h\"\r\n".$text;
	print $out $text;
	#print $text;
	close($out);
}

1;