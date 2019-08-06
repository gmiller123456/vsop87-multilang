#!/usr/bin/perl
use strict;
use lib ".";
use convert_python qw(processFile);


my $sourceDir="C#/";
my $d;
opendir($d,$sourceDir);

while(my $f=readdir($d)){
	if($f=~/^\./){next;}
	print "$f\r\n";
	convert_python::processFile($sourceDir,$f,"python/");
}

closedir($d);