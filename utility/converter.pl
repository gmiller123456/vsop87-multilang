#!/usr/bin/perl
use strict;
use lib ".";
use convert_php qw(processFile);

my $sourceDir="../Languages/Perl/";

#convert_php::processFile($sourceDir,"vsop87a_nano_velocities.pm","../Languages/PHP/");
run();

sub run(){

	my $d;
	opendir($d,$sourceDir);

	while(my $f=readdir($d)){
		if($f=~/^\./){next;}
		print "$f\r\n";
		convert_php::processFile($sourceDir,$f,"../Languages/PHP/");
	}


	closedir($d);
}
