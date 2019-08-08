#!/usr/bin/perl
use strict;

open(my $f,"data/vsop87.chk");


while(my $l=<$f>){
	#print $l;
	my $version=trim(lc(substr($l,1,7)));
	if($version eq ""){next;}
	my $body=trim(lc(substr($l,10,10)));
	my $jd=trim(lc(substr($l,24,9)));
	$jd=~s/ *//gis;
	$l=<$f>;
	my $var1=trim(substr($l,0,3));
	my $val1=trim(substr($l,3,14));
	my $var2=trim(substr($l,27,3));
	my $val2=trim(substr($l,30,14));
	my $var3=trim(substr($l,54,3));
	my $val3=trim(substr($l,57,14));
	$l=<$f>;
	my $var4=trim(substr($l,0,3));
	my $val4=trim(substr($l,3,14));
	my $var5=trim(substr($l,27,3));
	my $val5=trim(substr($l,30,14));
	my $var6=trim(substr($l,54,3));
	my $val6=trim(substr($l,57,14));
	
	if($body eq "earth-moon"){$body="emb";}
	
	if($version eq "vsop87"){
		print "check($version"."_full.get".ucfirst($body)."(jd2et($jd))";
		print ",$val1,$val2,$val3,$val4,$val5,$val6);\r\n";
	} else {
		print "check($version"."_full.get".ucfirst($body)."(jd2et($jd))";
		print ",$val1,$val2,$val3);\r\n";
		print "check($version"."_full_velocities.get".ucfirst($body)."(jd2et($jd))";
		print ",$val4,$val5,$val6);\r\n";
	}
	$l=<$f>;
}

sub trim(){
	my $t=shift;
	$t=~s/\s*//gis;
	return $t;
}