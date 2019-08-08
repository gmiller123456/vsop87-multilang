package convert_perl;
use strict;

#This converter works from the JavaScript version, not the C# version like most of the other converters

sub processFile{
	my $sourceDir=shift;
	my $in=shift;
	my $outDir=shift;
	my $outFile=$in;
	$outFile=~s/\.js$/\.pm/;
	
	my $f;
	open($f,$sourceDir.$in);
	my $out;
	open($out,">".$outDir.$outFile);
	my $classname;

	while(my $l=<$f>){
		if($l=~m/class (.+)\{/){
			$classname=$1;
			$l="package $1;\r\nuse strict;\r\n\r\n   sub pow{my \$a=shift; my \$b=shift; return \$a**\$b;}\r\n\r\n";

			$classname=~s/\s//gis;


		}

		$l=~s/$classname\.//g;

		$l=~s/vsop87_[a-z]+\.//g;
		$l=~s/vsop87._[a-z]+\.//g;

		$l=~s/temp\.push\(/push\(\@temp,/;

		$l=~s/return temp/return \@temp/;

		if($l=~m/const temp/){
			$l="      my \@temp=();\r\n"
		}

		if($l=~m/static ([\w]+)\(t\)/){
			$l="   sub $1 {\r\n      my \$t=shift;\r\n\r\n";
		}

		if($l=~m/static getMoon/){
			$l="   sub getMoon(){\r\n      my \$t1=shift; my \@earth=\@{\$t1};\r\n      my \$t2=shift; my \@emb=\@{\$t2};\r\n\r\n";
		}

		$l=~s/([^\$])temp\[/$1\$temp\[/g;
		$l=~s/([^\$])earth\[/$1\$earth\[/g;
		$l=~s/([^\$])emb\[/$1\$emb\[/g;

		$l=~s/\*t/\*\$t/g;
		$l=~s/\* t/\* \$t/g;

		$l=~s/\(t/\(\$t/g;
		$l=~s/Math\.//g;
		$l=~s/let /my \$/g;

		if($l=~m/return ([A-Za-z0-9\_]+)/){
			$l=~s/([A-Za-z0-9\_]+)/\$$1/g;
			$l=~s/\$return/return/;
		}


		$l=~s/(\s)([A-Za-z0-9\_]+)\+\=/$1\$$2\+\=/g;
		$l=~s/(\s)([A-Za-z0-9\_]+)\=/$1\$$2\=/g;
		$l=~s/([A-Za-z0-9\_]+)\=([A-Za-z0-9\_]+) \* \$t/$1\=\$$2 \* \$t/g;
		$l=~s/([^\$])exp/$1\$exp/g;

		$l=~s/^\}/1;/;
		
		print $out $l;
	}
	close($f);
}

1;