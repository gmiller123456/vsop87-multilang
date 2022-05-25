#!/usr/bin/perl

use strict;

my $f;
open($f,"data/vsop87.chk");
my $line=10;
my $lastVer="";

my %planets;
$planets{"MERCURY"}=1;
$planets{"VENUS"}=2;
$planets{"EARTH"}=3;
$planets{"MARS"}=4;
$planets{"JUPITER"}=5;
$planets{"SATURN"}=6;
$planets{"URANUS"}=7;
$planets{"NEPTUNE"}=8;
$planets{"EARTH-MOON"}=9;
$planets{"SUN"}=9;

while(my $l=<$f>){
    if(length($l)<10){exit();}
    my @f1=split(/ +/,$l);
    my @f2=split(/ +/,<$f>);
    my @f3=split(/ +/,<$f>);
    <$f>;

    my $version=$f1[1];
    my $planet=$f1[2];
    my $jd=$f1[3];
    my $var1=$f2[1];
    my $val1=$f2[2];
    my $var2=$f2[4];
    my $val2=$f2[5];
    my $var3=$f2[7];
    my $val3=$f2[8];

    my $var4=$f3[1];
    my $val4=$f3[2];
    my $var5=$f3[4];
    my $val5=$f3[5];
    my $var6=$f3[7];
    my $val6=$f3[8];

    $jd=~s/JD//gs;

    if($lastVer ne $version){
        $line=10;
        print "\r\n";
    }
    #print "$version $planet $jd $var1 $val1 $var2 $val2 $var3 $val3 $var4 $val4 $var5 $val5 $var6 $val6\r\n";
    if($version eq "VSOP87"){
        my $p=$planets{$planet};
        if($planet eq "EARTH-MOON"){$p=3;}
        print "$line p=$p : jd=$jd : a(1)=$val1 : a(2)=$val4 : a(3)=$val2\r\n";
        $line++;
        print "$line a(4)=$val5 : a(5)=$val3 : a(6)=$val6 : gosub 200\r\n";
        $line++
    } else {
        print "$line p=".$planets{$planet}." : jd=$jd : a(1)=$val1 : a(2)=$val2 : a(3)=$val3 : gosub 200\r\n";
        $line++;
    }
    $lastVer=$version;
}