#!/usr/bin/perl

use strict;
opendir(my $d,".");
while(my $f=readdir($d)){
	if($f=~m/^\./){next;}
	if(-d $f){next;}

	addheader($f);
}
closedir($d);

sub addheader {
	my $filename=shift;
	print "$filename\r\n";

	my $newname="$filename.new";

	open(my $f,$filename);
	open(my $o,">$filename.new");


	my $l=<$f>;
	print $o $l;

	print $o "\r\n//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html\r\n";
	print $o "//Greg Miller (gmiller\@gregmiller.net) 2019.  Released as Public Domain\r\n\r\n";

	while($l=<$f>){
		print $o $l;
	}

	close($o);
	close($f);

	unlink($f);
	rename ($newname,$filename);


}