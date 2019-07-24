#!/usr/bin/perl
use strict;

my $classname;
my $l;
while($l=<>){
	$l=~s/using static System.Math;/import math/gi;
	
	if($l=~m/public class ([0-9a-zA-Z\_]+)/){
		$classname=$1;
	}
	
	$l=~s/public class ([^\}]+)\{/class $1\:/gi;
	
	$l=~s/(\s+)public static double\[\] ([^\}]+)\{/$1\@staticmethod\r\n$1def $2\:/gi;
	
	$l=~s/(\s+)static double ([^\}]+)\{/$1\@staticmethod\r\n$1def $2\:/gi;
	
	if($l=~m/(\s+)double\[\] ([^\=]+)\=/){
		$l=$1.$2."=[]\r\n";
	} elsif($l=~m/(\s*)temp\[\d+\]\=([^\(].*)\r\n/){
		$l=$1."temp.append($classname.".$2.")\r\n";
	} elsif($l=~m/(\s*)temp\[\d+\]\=(.*)\;\r\n/){
		$l=$1."temp.append(".$2.")\r\n";
	}
	
	$l=~s/\;//g;
	#$l=~s/\}\s*//g;
	$l=~s/\}//g;
	$l=~s/double\[\] //g;
	$l=~s/double //g;
	$l=~s/Cos\(/math.cos\(/g;
	$l=~s/\/\//\#/g;
	
	print $l;
}