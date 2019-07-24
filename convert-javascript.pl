#!/usr/bin/perl
use strict;

my $classname;
my $l;
while($l=<>){
	$l=~s/using static System.Math;//gi;
	
	if($l=~m/public class ([0-9a-zA-Z\_]+)/){
		$classname=$1;
	}
	
	$l=~s/public class/class/gi;
	
	$l=~s/(\s+)public static double\[\] ([^\}]+)\{/$1static $2\{/gi;
	
	$l=~s/(\s+)static double ([^\}]+)\{/$1static $2\{/gi;
	
	if($l=~m/(\s+)double\[\] ([^\=]+)\=/){
		$l=$1."const ".$2."=new Array();\r\n";
	} elsif($l=~m/(\s*)temp\[\d+\]\=([^\(].*)\;\r\n/){
		$l=$1."temp.push($classname.".$2.");\r\n";
	} elsif($l=~m/(\s*)temp\[\d+\]\=(.*)\;\r\n/){
		$l=$1."temp.push(".$2.");\r\n";
	}
	
	$l=~s/double ([0-9a-zA-Z\_]+)\=0\.0\;/let $1\=0\.0;/;
	
	$l=~s/double\[\] //g;
	$l=~s/double //g;
	$l=~s/Cos\(/Math.cos\(/g;
	$l=~s/\/\//\#/g;
	
	print $l;
}