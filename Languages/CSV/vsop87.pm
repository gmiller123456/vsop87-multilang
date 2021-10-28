package vsop87;
use strict;
use POSIX "fmod";

#VSOP87-Multilang https://www.celestialprogramming.com/vsop87-multilang/index.html
#Greg Miller (gmiller@gregmiller.net) 2020.  Released as Public Domain

my $pi=3.14159265358979;

sub getPlanet{
    my $version=shift;
    my $planet=shift;
    my $t=shift;

    if($version eq "vsop87"){
        my ($a)=getVariable($t,$version,$planet,"a");
        my ($l)=getVariable($t,$version,$planet,"l");
        my ($k)=getVariable($t,$version,$planet,"k");
        my ($h)=getVariable($t,$version,$planet,"h");
        my ($q)=getVariable($t,$version,$planet,"q");
        my ($p)=getVariable($t,$version,$planet,"p");

        $l=fmod($l,2*$pi);
        if($l<0){
            $l+=2*3.1415926535;
        }

        return($a,$k,$q,$l,$h,$p);
    } elsif ($version eq "vsop87a" || $version eq "vsop87c" || $version eq "vsop87e"){
        my ($x,$xv)=getVariable($t,$version,$planet,"x");
        my ($y,$yv)=getVariable($t,$version,$planet,"y");
        my ($z,$zv)=getVariable($t,$version,$planet,"z");

        return ($x, $y, $z, $xv, $yv, $zv);
    } else {
        my ($l,$lv)=getVariable($t,$version,$planet,"l");
        my ($b,$bv)=getVariable($t,$version,$planet,"b");
        my ($r,$rv)=getVariable($t,$version,$planet,"r");

        $l=fmod($l,2*$pi);
        if($l<0){
            $l+=2*3.1415926535;
        }

        return ($l,$b,$r,$lv,$bv,$rv);
    }
}

sub getVariable{
    my $t=shift;
    my $ve=shift;
    my $p=shift;
    my $va=shift;
    my $e=shift;

    my $f;
    open($f,"$ve.csv");

    my $acc=0.0;
    my $thisSum=0.0;
    my $thisVelocity=0.0;
    my $prevExponent=-1;
    my $l=<$f>; #skip header line
    while($l=<$f>){
        $l=~s/\r*\n*//gis;
        my ($ver,$planet,$variable,$exponent,$a,$b,$c)=split(",",$l);
        $ver=~s/\s*//g;
        $planet=~s/\s*//g;
        $variable=~s/\s*//g;
        $exponent=~s/\s*//g;

        if($exponent != $prevExponent && abs($thisSum)>1e-15){
            $thisSum*=$t**$prevExponent;
            $acc+=$thisSum;
            $thisSum=0.0;
        }

        if($ver eq $ve && $planet eq $p && $va eq $variable){
            #Position
            $thisSum+=$a*cos($b+$c*$t);

            #Velocity
            if($exponent==0){
                $thisVelocity+= - $a * $c * sin($b + $c*$t);
            } else {
                $thisVelocity+=$t**($exponent-1) * $exponent * $a * cos($b + $c * $t) - $t**$exponent * $a * $c * sin($b + $c*$t);
            }
        }
        $prevExponent=$exponent;
    }

    close($f);
    return ($acc,$thisVelocity/ 365250.0);
}

1;