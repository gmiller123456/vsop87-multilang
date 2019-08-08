#!/usr/bin/perl
use strict;
use lib ".";
use convert_perl qw(processFile);

my $sourceDir="javascript/";

#convert_perl::processFile($sourceDir,"vsop87_full.js","Perl/");
run();

sub run(){

	my $d;
	opendir($d,$sourceDir);

	while(my $f=readdir($d)){
		if($f=~/^\./){next;}
		print "$f\r\n";
		convert_perl::processFile($sourceDir,$f,"Perl/");
	}


	closedir($d);
}
