#!/usr/bin/perl
use strict;
use lib ".";
use convert_c qw(processFile);

my $sourceDir="../Lanugages/C#/";

#convert_c::processFile($sourceDir,"vsop87a_full_velocities.cs","../Lanugages/C/");
run();

sub run(){

	my $d;
	opendir($d,$sourceDir);

	while(my $f=readdir($d)){
		if($f=~/^\./){next;}
		print "$f\r\n";
		convert_c::processFile($sourceDir,$f,"../Lanugages/C/");
	}


	closedir($d);
}
