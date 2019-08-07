#!/usr/bin/perl
use strict;
use lib ".";
use convert_javascript qw(processFile);

my $sourceDir="C#/";

#convert_javascript::processFile($sourceDir,"vsop87a_pico.cs","Java/");
run();

sub run(){

	my $d;
	opendir($d,$sourceDir);

	while(my $f=readdir($d)){
		if($f=~/^\./){next;}
		print "$f\r\n";
		convert_javascript::processFile($sourceDir,$f,"javascript/");
	}


	closedir($d);
}
