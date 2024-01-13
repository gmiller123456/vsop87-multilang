#!/usr/bin/perl
use strict;

open(my $f,"vsop87.chk");


while(my $l=<$f>){
	#print $l;
	my $version=trim(lc(substr($l,1,7)));
	if($version eq ""){next;}
	my $body=trim(lc(substr($l,10,10)));
	my $jd=trim(lc(substr($l,24,9)));
	$jd=~s/ *//gis;
    $jd=$jd."d0";
	$l=<$f>;
	my $var1=trim(substr($l,0,3))."d0";
	my $val1=trim(substr($l,3,14))."d0";
	my $var2=trim(substr($l,27,3))."d0";
	my $val2=trim(substr($l,30,14))."d0";
	my $var3=trim(substr($l,54,3))."d0";
	my $val3=trim(substr($l,57,14))."d0";
	$l=<$f>;
	my $var4=trim(substr($l,0,3))."d0";
	my $val4=trim(substr($l,3,14))."d0";
	my $var5=trim(substr($l,27,3))."d0";
	my $val5=trim(substr($l,30,14))."d0";
	my $var6=trim(substr($l,54,3))."d0";
	my $val6=trim(substr($l,57,14))."d0";
	
	if($body eq "earth-moon"){$body="emb";}
	
    $version=uc($version);

    if($version eq "VSOP87B" || $version eq "VSOP87D"){
        my $temp=$val1;
        $val1=$val2;
        $val2=$temp;

        $temp=$val4;
        $val4=$val5;
        $val5=$temp;
    }

	if($version eq "VSOP87"){
		print "call $version"."_Full_get".ucfirst($body)."(jd2et($jd),r6)\r\n";
        print "call check6(r6,$val1,$val2,$val3,$val4,$val5,$val6)\r\n";
	} else {
		print "call $version"."_Full_get".ucfirst($body)."(jd2et($jd),r3)\r\n";
        print "call check3(r3,$val1,$val2,$val3)\r\n";
		print "call $version"."_Full_get".ucfirst($body)."V(jd2et($jd),r3)\r\n";
        print "call check3(r3,$val4,$val5,$val6)\r\n";
	}
	$l=<$f>;
}

sub trim(){
	my $t=shift;
	$t=~s/\s*//gis;
	return $t;
}