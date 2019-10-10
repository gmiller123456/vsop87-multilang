#!/usr/bin/perl
use strict;
use lib ".";
use convert_pascal qw(processFile);

my $sourceDir="../Languages/C#/";

convert_pascal::processFile($sourceDir,"vsop87a_nano.cs","../Languages/Pascal/");
#convert_pascal::processFile($sourceDir,"vsop87a_nano_velocities.cs","../Languages/Pascal/");
#run();

sub run(){

	my $d;
	opendir($d,$sourceDir);

	while(my $f=readdir($d)){
		if($f=~/^\./){next;}
		print "$f\r\n";
		convert_pascal::processFile($sourceDir,$f,"../Languages/Pascal/");
	}


	closedir($d);
}
