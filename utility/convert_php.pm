package convert_php;
use strict;

sub processFile{
	my $sourceDir=shift;
	my $in=shift;
	my $outDir=shift;
	my $outFile=$in;
	$outFile=~s/\.pm$/\.php/;
	
	my $f;
	open($f,$sourceDir.$in);
	my $out;
	open($out,">".$outDir.$outFile);


	my $classname;
	my $functionName;

	print $out "<\?php\r\n";
	while(my $l=<$f>){
		
		if($l=~m/package ([0-9a-zA-Z\_]+)/){
			$classname=$1;
			$l="class $1 {\r\n";
		}

		$l=~s/sub getMoon\(\)/public static function getMoon\(\$earth,\$emb\)/;
		$l=~s/sub ([^ ]+)/public static function $1\(\$t\)/g;
		if($l=~m/shift/){$l="";}
		if($l=~m/use strict/){$l="";}
		if($l=~m/my \@temp/){$l="      \$temp=[];\r\n";}
		$l=~s/\@temp/\$temp/g;
		$l=~s/push/array_push/g;
		$l=~s/^1\;/\}/;
		$l=~s/my //g;

		if($l=~m/array_push/ && $l!~/emb\[/){
			$l=~s/temp\,/temp\,$classname\:\:/;
			
		}

		


		#print $l;
		print $out $l;
	}
	print $out "\?>\r\n";
}

1;