#!/usr/bin/perl
use strict;
use lib ".";
use convert_matlab qw(processFile);

my $sourceDir="../Languages/C#/";

#convert_matlab::processFile($sourceDir,"vsop87_nano.cs","../Languages/matlab-octave/");
run();

sub run(){

	my $d;
	opendir($d,$sourceDir);

	while(my $f=readdir($d)){
		if($f=~/^\./){next;}
		print "$f\r\n";
		convert_matlab::processFile($sourceDir,$f,"../Languages/matlab-octave/");
	}


	closedir($d);
}
