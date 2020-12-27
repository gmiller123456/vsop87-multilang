#!/usr/bin/perl
use strict;

print "Version,Planet,Variable,Exponent,A,B,C\r\n";

my @vsop87=("VSOP87.emb","VSOP87.jup","VSOP87.mar","VSOP87.mer","VSOP87.nep","VSOP87.sat","VSOP87.ura","VSOP87.ven");
my @vsop87a=("VSOP87A.ear","VSOP87A.emb","VSOP87A.jup","VSOP87A.mar","VSOP87A.mer","VSOP87A.nep","VSOP87A.sat","VSOP87A.ura","VSOP87A.ven");
my @vsop87b=("VSOP87B.ear","VSOP87B.jup","VSOP87B.mar","VSOP87B.mer","VSOP87B.nep","VSOP87B.sat","VSOP87B.ura","VSOP87B.ven");
my @vsop87c=("VSOP87C.ear","VSOP87C.jup","VSOP87C.mar","VSOP87C.mer","VSOP87C.nep","VSOP87C.sat","VSOP87C.ura","VSOP87C.ven");
my @vsop87d=("VSOP87D.ear","VSOP87D.jup","VSOP87D.mar","VSOP87D.mer","VSOP87D.nep","VSOP87D.sat","VSOP87D.ura","VSOP87D.ven");
my @vsop87e=("VSOP87E.ear","VSOP87E.jup","VSOP87E.mar","VSOP87E.mer","VSOP87E.nep","VSOP87E.sat","VSOP87E.sun","VSOP87E.ura","VSOP87E.ven");

processVersion("vsop87 ",@vsop87);
processVersion("vsop87a",@vsop87a);
processVersion("vsop87b",@vsop87b);
processVersion("vsop87c",@vsop87c);
processVersion("vsop87d",@vsop87d);
processVersion("vsop87e",@vsop87e);
	


sub processVersion(){
	my $version=shift;
	my @files=@_;
	
	foreach my $file (@files){
		processFile($version,$file);
	}
}

sub processFile(){
	my $version=shift;
	my $filename=shift;
	my $f;
	open($f,"data/".$filename);
	my $variable="";
	my $exponent=0;
	my @variables=();
	my $lastV="";
	my $hasTerms=0;
	my $lastVariable="";
    
    my $v;
    my $plan;
	while(my $l=<$f>){
		if(substr($l,0,7) eq ' VSOP87'){
			if($variable ne "" && $hasTerms==1){
				my $et="";
				for(my $c=0;$c<$exponent;$c++){
					$et.=" * t";
				}
			}
			my $vari=substr($l,41,1);
			$v=lc(substr($l,43+$vari,1));
			$exponent=substr($l,59,1);
			$plan=lc(substr($l,22,10));
			#$plan=~s/ //gis;
			
			if($v ne $lastV){
				$hasTerms=0;
			}
			$lastV=$v;
			
			my $t="".$plan."_".$v."_".$exponent;
			$variable=$t;
			if($variable ne $lastVariable){
				$hasTerms=0;
				$lastVariable=$variable;
			}
		} else {
			my $a=substr($l,79,18);
			my $b=substr($l,97,14);
			my $c=substr($l,111,20);
            if($hasTerms!=1){
                push(@variables,$variable);
            }
            
            print "$version,$plan,$v,$exponent,$a,$b,$c\r\n";
            $hasTerms=1;
		}
	}
}