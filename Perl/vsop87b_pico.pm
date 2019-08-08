

package vsop87b_pico ;
use strict;

   sub pow{my $a=shift; my $b=shift; return $a**$b;}

   sub getEarth {
      my $t=shift;

      my @temp=();
      push(@temp,earth_l($t));
      push(@temp,earth_b($t));
      push(@temp,earth_r($t));
      return @temp;
   }

   sub getJupiter {
      my $t=shift;

      my @temp=();
      push(@temp,jupiter_l($t));
      push(@temp,jupiter_b($t));
      push(@temp,jupiter_r($t));
      return @temp;
   }

   sub getMars {
      my $t=shift;

      my @temp=();
      push(@temp,mars_l($t));
      push(@temp,mars_b($t));
      push(@temp,mars_r($t));
      return @temp;
   }

   sub getMercury {
      my $t=shift;

      my @temp=();
      push(@temp,mercury_l($t));
      push(@temp,mercury_b($t));
      push(@temp,mercury_r($t));
      return @temp;
   }

   sub getNeptune {
      my $t=shift;

      my @temp=();
      push(@temp,neptune_l($t));
      push(@temp,neptune_b($t));
      push(@temp,neptune_r($t));
      return @temp;
   }

   sub getSaturn {
      my $t=shift;

      my @temp=();
      push(@temp,saturn_l($t));
      push(@temp,saturn_b($t));
      push(@temp,saturn_r($t));
      return @temp;
   }

   sub getUranus {
      my $t=shift;

      my @temp=();
      push(@temp,uranus_l($t));
      push(@temp,uranus_b($t));
      push(@temp,uranus_r($t));
      return @temp;
   }

   sub getVenus {
      my $t=shift;

      my @temp=();
      push(@temp,venus_l($t));
      push(@temp,venus_b($t));
      push(@temp,venus_r($t));
      return @temp;
   }

   sub earth_l {
      my $t=shift;

      my $earth_l_0=0.0;
      $earth_l_0+=     1.75347045673 * cos( 0.00000000000 +        0.00000000000*$t);
      $earth_l_0+=     0.03341656453 * cos( 4.66925680415 +     6283.07584999140*$t);

      my $earth_l_1=0.0;
      $earth_l_1+=  6283.07584999140 * cos( 0.00000000000 +        0.00000000000*$t);
      $earth_l_1=$earth_l_1 * $t;

      return $earth_l_0+$earth_l_1;
   }

   sub earth_b {
      my $t=shift;

      return $0;
   }

   sub earth_r {
      my $t=shift;

      my $earth_r_0=0.0;
      $earth_r_0+=     1.00013988784 * cos( 0.00000000000 +        0.00000000000*$t);
      $earth_r_0+=     0.01670699632 * cos( 3.09846350258 +     6283.07584999140*$t);

      return $earth_r_0;
   }

   sub jupiter_l {
      my $t=shift;

      my $jupiter_l_0=0.0;
      $jupiter_l_0+=     0.59954691494 * cos( 0.00000000000 +        0.00000000000*$t);
      $jupiter_l_0+=     0.09695898719 * cos( 5.06191793158 +      529.69096509460*$t);

      my $jupiter_l_1=0.0;
      $jupiter_l_1+=   529.69096508814 * cos( 0.00000000000 +        0.00000000000*$t);
      $jupiter_l_1=$jupiter_l_1 * $t;

      return $jupiter_l_0+$jupiter_l_1;
   }

   sub jupiter_b {
      my $t=shift;

      my $jupiter_b_0=0.0;
      $jupiter_b_0+=     0.02268615702 * cos( 3.55852606721 +      529.69096509460*$t);

      return $jupiter_b_0;
   }

   sub jupiter_r {
      my $t=shift;

      my $jupiter_r_0=0.0;
      $jupiter_r_0+=     5.20887429326 * cos( 0.00000000000 +        0.00000000000*$t);
      $jupiter_r_0+=     0.25209327119 * cos( 3.49108639871 +      529.69096509460*$t);

      my $jupiter_r_1=0.0;
      $jupiter_r_1+=     0.01271801520 * cos( 2.64937512894 +      529.69096509460*$t);
      $jupiter_r_1=$jupiter_r_1 * $t;

      return $jupiter_r_0+$jupiter_r_1;
   }

   sub mars_l {
      my $t=shift;

      my $mars_l_0=0.0;
      $mars_l_0+=     6.20347711581 * cos( 0.00000000000 +        0.00000000000*$t);
      $mars_l_0+=     0.18656368093 * cos( 5.05037100270 +     3340.61242669980*$t);
      $mars_l_0+=     0.01108216816 * cos( 5.40099836344 +     6681.22485339960*$t);

      my $mars_l_1=0.0;
      $mars_l_1+=  3340.61242700512 * cos( 0.00000000000 +        0.00000000000*$t);
      $mars_l_1+=     0.01457554523 * cos( 3.60433733236 +     3340.61242669980*$t);
      $mars_l_1=$mars_l_1 * $t;

      return $mars_l_0+$mars_l_1;
   }

   sub mars_b {
      my $t=shift;

      my $mars_b_0=0.0;
      $mars_b_0+=     0.03197134986 * cos( 3.76832042431 +     3340.61242669980*$t);

      return $mars_b_0;
   }

   sub mars_r {
      my $t=shift;

      my $mars_r_0=0.0;
      $mars_r_0+=     1.53033488271 * cos( 0.00000000000 +        0.00000000000*$t);
      $mars_r_0+=     0.14184953160 * cos( 3.47971283528 +     3340.61242669980*$t);

      my $mars_r_1=0.0;
      $mars_r_1+=     0.01107433345 * cos( 2.03250524857 +     3340.61242669980*$t);
      $mars_r_1=$mars_r_1 * $t;

      return $mars_r_0+$mars_r_1;
   }

   sub mercury_l {
      my $t=shift;

      my $mercury_l_0=0.0;
      $mercury_l_0+=     4.40250710144 * cos( 0.00000000000 +        0.00000000000*$t);
      $mercury_l_0+=     0.40989414977 * cos( 1.48302034195 +    26087.90314157420*$t);
      $mercury_l_0+=     0.05046294200 * cos( 4.47785489551 +    52175.80628314840*$t);

      my $mercury_l_1=0.0;
      $mercury_l_1+= 26087.90313685529 * cos( 0.00000000000 +        0.00000000000*$t);
      $mercury_l_1+=     0.01131199811 * cos( 6.21874197797 +    26087.90314157420*$t);
      $mercury_l_1=$mercury_l_1 * $t;

      return $mercury_l_0+$mercury_l_1;
   }

   sub mercury_b {
      my $t=shift;

      my $mercury_b_0=0.0;
      $mercury_b_0+=     0.11737528961 * cos( 1.98357498767 +    26087.90314157420*$t);
      $mercury_b_0+=     0.02388076996 * cos( 5.03738959686 +    52175.80628314840*$t);
      $mercury_b_0+=     0.01222839532 * cos( 3.14159265359 +        0.00000000000*$t);

      return $mercury_b_0;
   }

   sub mercury_r {
      my $t=shift;

      my $mercury_r_0=0.0;
      $mercury_r_0+=     0.39528271651 * cos( 0.00000000000 +        0.00000000000*$t);
      $mercury_r_0+=     0.07834131818 * cos( 6.19233722598 +    26087.90314157420*$t);

      return $mercury_r_0;
   }

   sub neptune_l {
      my $t=shift;

      my $neptune_l_0=0.0;
      $neptune_l_0+=     5.31188633046 * cos( 0.00000000000 +        0.00000000000*$t);
      $neptune_l_0+=     0.01798475530 * cos( 2.90101273890 +       38.13303563780*$t);
      $neptune_l_0+=     0.01019727652 * cos( 0.48580922867 +        1.48447270830*$t);

      my $neptune_l_1=0.0;
      $neptune_l_1+=    38.13303563957 * cos( 0.00000000000 +        0.00000000000*$t);
      $neptune_l_1=$neptune_l_1 * $t;

      return $neptune_l_0+$neptune_l_1;
   }

   sub neptune_b {
      my $t=shift;

      my $neptune_b_0=0.0;
      $neptune_b_0+=     0.03088622933 * cos( 1.44104372644 +       38.13303563780*$t);

      return $neptune_b_0;
   }

   sub neptune_r {
      my $t=shift;

      my $neptune_r_0=0.0;
      $neptune_r_0+=    30.07013205828 * cos( 0.00000000000 +        0.00000000000*$t);
      $neptune_r_0+=     0.27062259632 * cos( 1.32999459377 +       38.13303563780*$t);
      $neptune_r_0+=     0.01691764014 * cos( 3.25186135653 +       36.64856292950*$t);

      return $neptune_r_0;
   }

   sub saturn_l {
      my $t=shift;

      my $saturn_l_0=0.0;
      $saturn_l_0+=     0.87401354025 * cos( 0.00000000000 +        0.00000000000*$t);
      $saturn_l_0+=     0.11107659762 * cos( 3.96205090159 +      213.29909543800*$t);
      $saturn_l_0+=     0.01414150957 * cos( 4.58581516874 +        7.11354700080*$t);

      my $saturn_l_1=0.0;
      $saturn_l_1+=   213.29909521690 * cos( 0.00000000000 +        0.00000000000*$t);
      $saturn_l_1+=     0.01297370862 * cos( 1.82834923978 +      213.29909543800*$t);
      $saturn_l_1=$saturn_l_1 * $t;

      return $saturn_l_0+$saturn_l_1;
   }

   sub saturn_b {
      my $t=shift;

      my $saturn_b_0=0.0;
      $saturn_b_0+=     0.04330678039 * cos( 3.60284428399 +      213.29909543800*$t);

      return $saturn_b_0;
   }

   sub saturn_r {
      my $t=shift;

      my $saturn_r_0=0.0;
      $saturn_r_0+=     9.55758135486 * cos( 0.00000000000 +        0.00000000000*$t);
      $saturn_r_0+=     0.52921382865 * cos( 2.39226219573 +      213.29909543800*$t);
      $saturn_r_0+=     0.01873679867 * cos( 5.23549604660 +      206.18554843720*$t);
      $saturn_r_0+=     0.01464663929 * cos( 1.64763042902 +      426.59819087600*$t);

      my $saturn_r_1=0.0;
      $saturn_r_1+=     0.06182981340 * cos( 0.25843511480 +      213.29909543800*$t);
      $saturn_r_1=$saturn_r_1 * $t;

      return $saturn_r_0+$saturn_r_1;
   }

   sub uranus_l {
      my $t=shift;

      my $uranus_l_0=0.0;
      $uranus_l_0+=     5.48129294297 * cos( 0.00000000000 +        0.00000000000*$t);
      $uranus_l_0+=     0.09260408234 * cos( 0.89106421507 +       74.78159856730*$t);
      $uranus_l_0+=     0.01504247898 * cos( 3.62719260920 +        1.48447270830*$t);

      my $uranus_l_1=0.0;
      $uranus_l_1+=    74.78159860910 * cos( 0.00000000000 +        0.00000000000*$t);
      $uranus_l_1=$uranus_l_1 * $t;

      return $uranus_l_0+$uranus_l_1;
   }

   sub uranus_b {
      my $t=shift;

      my $uranus_b_0=0.0;
      $uranus_b_0+=     0.01346277648 * cos( 2.61877810547 +       74.78159856730*$t);

      return $uranus_b_0;
   }

   sub uranus_r {
      my $t=shift;

      my $uranus_r_0=0.0;
      $uranus_r_0+=    19.21264847206 * cos( 0.00000000000 +        0.00000000000*$t);
      $uranus_r_0+=     0.88784984413 * cos( 5.60377527014 +       74.78159856730*$t);
      $uranus_r_0+=     0.03440836062 * cos( 0.32836099706 +       73.29712585900*$t);
      $uranus_r_0+=     0.02055653860 * cos( 1.78295159330 +      149.56319713460*$t);

      my $uranus_r_1=0.0;
      $uranus_r_1+=     0.01479896629 * cos( 3.67205697578 +       74.78159856730*$t);
      $uranus_r_1=$uranus_r_1 * $t;

      return $uranus_r_0+$uranus_r_1;
   }

   sub venus_l {
      my $t=shift;

      my $venus_l_0=0.0;
      $venus_l_0+=     3.17614666774 * cos( 0.00000000000 +        0.00000000000*$t);
      $venus_l_0+=     0.01353968419 * cos( 5.59313319619 +    10213.28554621100*$t);

      my $venus_l_1=0.0;
      $venus_l_1+= 10213.28554621638 * cos( 0.00000000000 +        0.00000000000*$t);
      $venus_l_1=$venus_l_1 * $t;

      return $venus_l_0+$venus_l_1;
   }

   sub venus_b {
      my $t=shift;

      my $venus_b_0=0.0;
      $venus_b_0+=     0.05923638472 * cos( 0.26702775812 +    10213.28554621100*$t);

      return $venus_b_0;
   }

   sub venus_r {
      my $t=shift;

      my $venus_r_0=0.0;
      $venus_r_0+=     0.72334820891 * cos( 0.00000000000 +        0.00000000000*$t);

      return $venus_r_0;
   }

1;
