#!/usr/bin/perl
use strict;
use lib ".";
use convert_visualbasicnet qw(processFile);

my $sourceDir="C#/";

#convert_visualbasicnet::processFile($sourceDir,"vsop87_pico.cs","VisualBasicNet/");
run();

sub run(){

	my $d;
	opendir($d,$sourceDir);

	while(my $f=readdir($d)){
		if($f=~/^\./){next;}
		print "$f\r\n";
		convert_visualbasicnet::processFile($sourceDir,$f,"VisualBasicNet/");
	}


	closedir($d);
}
