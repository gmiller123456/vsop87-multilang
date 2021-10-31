#!/usr/bin/perl

#VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
#Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

use strict;
use File::Basename;
use lib dirname (__FILE__);

use POSIX "fmod";

use vsop87_full;

my $pi=3.14159265358979;

my $passok=1;

sub jd2et{
	my $jd=shift;
	return ($jd - 2451545.0) / 365250.0;
}

sub check2{
	my $a=shift;
	my $b=shift;

	my $t1 = fmod($a,$pi);
	my $t2 = fmod($b,$pi);

	if ($t1 < 0){
		$t1 +=$pi
	}
	if ($t2 < 0){
		$t2 +=$pi
	}
	if (abs($t1-$t2) > .0000000009){
		print ("Fail:".$t1." - ".$t2." = ".(abs($t1-$t2))."\r\n");
		$passok=0;
	}else{
	}
}

sub check6{
	my $r2=shift; my @r=@{$r2};
	my $a=shift;
	my $k=shift;
	my $q=shift;
	my $l=shift;
	my $h=shift;
	my $p=shift;

	check2($r[0],$a);
	check2($r[1],$l);
	check2($r[2],$k);
	check2($r[3],$h);
	check2($r[4],$q);
	check2($r[5],$p);
}

sub check3{
	my $r2=shift; my @r=@{$r2};
	my $a=shift;
	my $b=shift;
	my $c=shift;

	check2($r[0], $a);
	check2($r[1], $b);
	check2($r[2], $c);
}
my @temp;

@temp=vsop87_full::getMercury(jd2et(2415020.0));
check6(\@temp,.3870977206,.0452159418,.0405500078,3.1341564065,.2005915794,.0457636622);
print("Pass:");
print($passok);
