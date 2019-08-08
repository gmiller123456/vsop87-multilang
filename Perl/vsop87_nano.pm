

package vsop87_nano ;
use strict;

   sub pow{my $a=shift; my $b=shift; return $a**$b;}

   sub getEmb {
      my $t=shift;

      my @temp=();
      push(@temp,emb_a($t));
      push(@temp,emb_l($t));
      push(@temp,emb_k($t));
      push(@temp,emb_h($t));
      push(@temp,emb_q($t));
      push(@temp,emb_p($t));
      return @temp;
   }

   sub getJupiter {
      my $t=shift;

      my @temp=();
      push(@temp,jupiter_a($t));
      push(@temp,jupiter_l($t));
      push(@temp,jupiter_k($t));
      push(@temp,jupiter_h($t));
      push(@temp,jupiter_q($t));
      push(@temp,jupiter_p($t));
      return @temp;
   }

   sub getMars {
      my $t=shift;

      my @temp=();
      push(@temp,mars_a($t));
      push(@temp,mars_l($t));
      push(@temp,mars_k($t));
      push(@temp,mars_h($t));
      push(@temp,mars_q($t));
      push(@temp,mars_p($t));
      return @temp;
   }

   sub getMercury {
      my $t=shift;

      my @temp=();
      push(@temp,mercury_a($t));
      push(@temp,mercury_l($t));
      push(@temp,mercury_k($t));
      push(@temp,mercury_h($t));
      push(@temp,mercury_q($t));
      push(@temp,mercury_p($t));
      return @temp;
   }

   sub getNeptune {
      my $t=shift;

      my @temp=();
      push(@temp,neptune_a($t));
      push(@temp,neptune_l($t));
      push(@temp,neptune_k($t));
      push(@temp,neptune_h($t));
      push(@temp,neptune_q($t));
      push(@temp,neptune_p($t));
      return @temp;
   }

   sub getSaturn {
      my $t=shift;

      my @temp=();
      push(@temp,saturn_a($t));
      push(@temp,saturn_l($t));
      push(@temp,saturn_k($t));
      push(@temp,saturn_h($t));
      push(@temp,saturn_q($t));
      push(@temp,saturn_p($t));
      return @temp;
   }

   sub getUranus {
      my $t=shift;

      my @temp=();
      push(@temp,uranus_a($t));
      push(@temp,uranus_l($t));
      push(@temp,uranus_k($t));
      push(@temp,uranus_h($t));
      push(@temp,uranus_q($t));
      push(@temp,uranus_p($t));
      return @temp;
   }

   sub getVenus {
      my $t=shift;

      my @temp=();
      push(@temp,venus_a($t));
      push(@temp,venus_l($t));
      push(@temp,venus_k($t));
      push(@temp,venus_h($t));
      push(@temp,venus_q($t));
      push(@temp,venus_p($t));
      return @temp;
   }

   sub emb_a {
      my $t=shift;

      my $emb_a_0=0.0;
      $emb_a_0+=     1.00000101778 * cos( 0.00000000000 +        0.00000000000*$t);

      return $emb_a_0;
   }

   sub emb_l {
      my $t=shift;

      my $emb_l_0=0.0;
      $emb_l_0+=     1.75347045953 * cos( 0.00000000000 +        0.00000000000*$t);

      my $emb_l_1=0.0;
      $emb_l_1+=  6283.07584999140 * cos( 0.00000000000 +        0.00000000000*$t);
      $emb_l_1=$emb_l_1 * $t;

      return $emb_l_0+$emb_l_1;
   }

   sub emb_k {
      my $t=shift;

      my $emb_k_0=0.0;
      $emb_k_0+=     0.00374081650 * cos( 3.14159265359 +        0.00000000000*$t);

      return $emb_k_0;
   }

   sub emb_h {
      my $t=shift;

      my $emb_h_0=0.0;
      $emb_h_0+=     0.01628447663 * cos( 0.00000000000 +        0.00000000000*$t);

      return $emb_h_0;
   }

   sub emb_q {
      my $t=shift;

      my $emb_q_1=0.0;
      $emb_q_1+=     0.00113468869 * cos( 3.14159265359 +        0.00000000000*$t);
      $emb_q_1=$emb_q_1 * $t;

      return $emb_q_1;
   }

   sub emb_p {
      my $t=shift;

      return $0;
   }

   sub jupiter_a {
      my $t=shift;

      my $jupiter_a_0=0.0;
      $jupiter_a_0+=     5.20260319132 * cos( 0.00000000000 +        0.00000000000*$t);

      return $jupiter_a_0;
   }

   sub jupiter_l {
      my $t=shift;

      my $jupiter_l_0=0.0;
      $jupiter_l_0+=     0.59954649739 * cos( 0.00000000000 +        0.00000000000*$t);
      $jupiter_l_0+=     0.00573506125 * cos( 1.44396306420 +        7.11354700080*$t);

      my $jupiter_l_1=0.0;
      $jupiter_l_1+=   529.69096509460 * cos( 0.00000000000 +        0.00000000000*$t);
      $jupiter_l_1+=     0.00228875491 * cos( 6.02639570653 +        7.11354700080*$t);
      $jupiter_l_1=$jupiter_l_1 * $t;

      return $jupiter_l_0+$jupiter_l_1;
   }

   sub jupiter_k {
      my $t=shift;

      my $jupiter_k_0=0.0;
      $jupiter_k_0+=     0.04698572124 * cos( 0.00000000000 +        0.00000000000*$t);

      my $jupiter_k_1=0.0;
      $jupiter_k_1+=     0.00113010377 * cos( 0.00000000000 +        0.00000000000*$t);
      $jupiter_k_1=$jupiter_k_1 * $t;

      return $jupiter_k_0+$jupiter_k_1;
   }

   sub jupiter_h {
      my $t=shift;

      my $jupiter_h_0=0.0;
      $jupiter_h_0+=     0.01200385748 * cos( 0.00000000000 +        0.00000000000*$t);

      my $jupiter_h_1=0.0;
      $jupiter_h_1+=     0.00217149360 * cos( 0.00000000000 +        0.00000000000*$t);
      $jupiter_h_1=$jupiter_h_1 * $t;

      return $jupiter_h_0+$jupiter_h_1;
   }

   sub jupiter_q {
      my $t=shift;

      my $jupiter_q_0=0.0;
      $jupiter_q_0+=     0.00206561098 * cos( 3.14159265359 +        0.00000000000*$t);

      return $jupiter_q_0;
   }

   sub jupiter_p {
      my $t=shift;

      my $jupiter_p_0=0.0;
      $jupiter_p_0+=     0.01118377157 * cos( 0.00000000000 +        0.00000000000*$t);

      return $jupiter_p_0;
   }

   sub mars_a {
      my $t=shift;

      my $mars_a_0=0.0;
      $mars_a_0+=     1.52367934191 * cos( 0.00000000000 +        0.00000000000*$t);

      return $mars_a_0;
   }

   sub mars_l {
      my $t=shift;

      my $mars_l_0=0.0;
      $mars_l_0+=     6.20347611291 * cos( 0.00000000000 +        0.00000000000*$t);

      my $mars_l_1=0.0;
      $mars_l_1+=  3340.61242669981 * cos( 0.00000000000 +        0.00000000000*$t);
      $mars_l_1=$mars_l_1 * $t;

      return $mars_l_0+$mars_l_1;
   }

   sub mars_k {
      my $t=shift;

      my $mars_k_0=0.0;
      $mars_k_0+=     0.08536560252 * cos( 0.00000000000 +        0.00000000000*$t);

      my $mars_k_1=0.0;
      $mars_k_1+=     0.00376330152 * cos( 0.00000000000 +        0.00000000000*$t);
      $mars_k_1=$mars_k_1 * $t;

      return $mars_k_0+$mars_k_1;
   }

   sub mars_h {
      my $t=shift;

      my $mars_h_0=0.0;
      $mars_h_0+=     0.03789973236 * cos( 3.14159265359 +        0.00000000000*$t);

      my $mars_h_1=0.0;
      $mars_h_1+=     0.00624657465 * cos( 0.00000000000 +        0.00000000000*$t);
      $mars_h_1=$mars_h_1 * $t;

      return $mars_h_0+$mars_h_1;
   }

   sub mars_q {
      my $t=shift;

      my $mars_q_0=0.0;
      $mars_q_0+=     0.01047042574 * cos( 0.00000000000 +        0.00000000000*$t);

      return $mars_q_0;
   }

   sub mars_p {
      my $t=shift;

      my $mars_p_0=0.0;
      $mars_p_0+=     0.01228449307 * cos( 0.00000000000 +        0.00000000000*$t);

      my $mars_p_1=0.0;
      $mars_p_1+=     0.00108020083 * cos( 3.14159265359 +        0.00000000000*$t);
      $mars_p_1=$mars_p_1 * $t;

      return $mars_p_0+$mars_p_1;
   }

   sub mercury_a {
      my $t=shift;

      my $mercury_a_0=0.0;
      $mercury_a_0+=     0.38709830982 * cos( 0.00000000000 +        0.00000000000*$t);

      return $mercury_a_0;
   }

   sub mercury_l {
      my $t=shift;

      my $mercury_l_0=0.0;
      $mercury_l_0+=     4.40260884240 * cos( 0.00000000000 +        0.00000000000*$t);

      my $mercury_l_1=0.0;
      $mercury_l_1+= 26087.90314157420 * cos( 0.00000000000 +        0.00000000000*$t);
      $mercury_l_1=$mercury_l_1 * $t;

      return $mercury_l_0+$mercury_l_1;
   }

   sub mercury_k {
      my $t=shift;

      my $mercury_k_0=0.0;
      $mercury_k_0+=     0.04466059760 * cos( 0.00000000000 +        0.00000000000*$t);

      my $mercury_k_1=0.0;
      $mercury_k_1+=     0.00552114624 * cos( 3.14159265359 +        0.00000000000*$t);
      $mercury_k_1=$mercury_k_1 * $t;

      return $mercury_k_0+$mercury_k_1;
   }

   sub mercury_h {
      my $t=shift;

      my $mercury_h_0=0.0;
      $mercury_h_0+=     0.20072331368 * cos( 0.00000000000 +        0.00000000000*$t);

      my $mercury_h_1=0.0;
      $mercury_h_1+=     0.00143750118 * cos( 0.00000000000 +        0.00000000000*$t);
      $mercury_h_1=$mercury_h_1 * $t;

      return $mercury_h_0+$mercury_h_1;
   }

   sub mercury_q {
      my $t=shift;

      my $mercury_q_0=0.0;
      $mercury_q_0+=     0.04061563384 * cos( 0.00000000000 +        0.00000000000*$t);

      return $mercury_q_0;
   }

   sub mercury_p {
      my $t=shift;

      my $mercury_p_0=0.0;
      $mercury_p_0+=     0.04563550461 * cos( 0.00000000000 +        0.00000000000*$t);

      my $mercury_p_1=0.0;
      $mercury_p_1+=     0.00127633657 * cos( 3.14159265359 +        0.00000000000*$t);
      $mercury_p_1=$mercury_p_1 * $t;

      return $mercury_p_0+$mercury_p_1;
   }

   sub neptune_a {
      my $t=shift;

      my $neptune_a_0=0.0;
      $neptune_a_0+=    30.11038686942 * cos( 0.00000000000 +        0.00000000000*$t);
      $neptune_a_0+=     0.14818172119 * cos( 1.57105922541 +      491.55792945680*$t);
      $neptune_a_0+=     0.03597274341 * cos( 1.84552690821 +      175.16605980020*$t);
      $neptune_a_0+=     0.00832345688 * cos( 5.19528065894 +        1.48447270830*$t);
      $neptune_a_0+=     0.00694303990 * cos( 1.92062235445 +     1021.24889455140*$t);
      $neptune_a_0+=     0.00462318447 * cos( 0.16921610518 +       36.64856292950*$t);
      $neptune_a_0+=     0.00144701407 * cos( 3.36967102070 +      453.42489381900*$t);
      $neptune_a_0+=     0.00185666340 * cos( 1.07141029917 +      388.46515523820*$t);
      $neptune_a_0+=     0.00105687575 * cos( 3.48447772920 +       73.29712585900*$t);
      $neptune_a_0+=     0.00101174992 * cos( 2.72476929716 +     6244.94281435360*$t);

      return $neptune_a_0;
   }

   sub neptune_l {
      my $t=shift;

      my $neptune_l_0=0.0;
      $neptune_l_0+=     5.31188628676 * cos( 0.00000000000 +        0.00000000000*$t);
      $neptune_l_0+=     0.01017628072 * cos( 0.48586478491 +        1.48447270830*$t);
      $neptune_l_0+=     0.00441710236 * cos( 0.00020868462 +      491.55792945680*$t);

      my $neptune_l_1=0.0;
      $neptune_l_1+=    38.13303563780 * cos( 0.00000000000 +        0.00000000000*$t);
      $neptune_l_1=$neptune_l_1 * $t;

      return $neptune_l_0+$neptune_l_1;
   }

   sub neptune_k {
      my $t=shift;

      my $neptune_k_0=0.0;
      $neptune_k_0+=     0.00599977571 * cos( 0.00000000000 +        0.00000000000*$t);
      $neptune_k_0+=     0.00343810387 * cos( 0.59989432818 +      529.69096509460*$t);
      $neptune_k_0+=     0.00136232980 * cos( 5.31190360139 +       38.13303563780*$t);
      $neptune_k_0+=     0.00131042161 * cos( 2.54238248127 +      453.42489381900*$t);

      return $neptune_k_0;
   }

   sub neptune_h {
      my $t=shift;

      my $neptune_h_0=0.0;
      $neptune_h_0+=     0.00669242413 * cos( 0.00000000000 +        0.00000000000*$t);
      $neptune_h_0+=     0.00344034784 * cos( 5.31201105782 +      529.69096509460*$t);
      $neptune_h_0+=     0.00136278888 * cos( 3.74103613444 +       38.13303563780*$t);
      $neptune_h_0+=     0.00131043136 * cos( 4.11313570675 +      453.42489381900*$t);

      return $neptune_h_0;
   }

   sub neptune_q {
      my $t=shift;

      my $neptune_q_0=0.0;
      $neptune_q_0+=     0.01029147819 * cos( 3.14159265359 +        0.00000000000*$t);

      return $neptune_q_0;
   }

   sub neptune_p {
      my $t=shift;

      my $neptune_p_0=0.0;
      $neptune_p_0+=     0.01151683985 * cos( 0.00000000000 +        0.00000000000*$t);

      return $neptune_p_0;
   }

   sub saturn_a {
      my $t=shift;

      my $saturn_a_0=0.0;
      $saturn_a_0+=     9.55490959574 * cos( 0.00000000000 +        0.00000000000*$t);
      $saturn_a_0+=     0.03363448736 * cos( 6.00973673460 +      316.39186965660*$t);
      $saturn_a_0+=     0.00354492417 * cos( 5.81482665415 +      103.09277421860*$t);
      $saturn_a_0+=     0.00289062242 * cos( 3.01816520038 +        7.11354700080*$t);
      $saturn_a_0+=     0.00308461590 * cos( 2.55488166399 +      632.78373931320*$t);
      $saturn_a_0+=     0.00149912686 * cos( 3.86270340354 +      419.48464387520*$t);
      $saturn_a_0+=     0.00143605062 * cos( 4.85917505070 +      213.29909543800*$t);
      $saturn_a_0+=     0.00146816895 * cos( 0.07437685257 +      846.08283475120*$t);
      $saturn_a_0+=     0.00142075017 * cos( 2.32273369924 +      949.17560896980*$t);

      my $saturn_a_1=0.0;
      $saturn_a_1+=     0.00115108584 * cos( 1.31913907888 +        7.11354700080*$t);
      $saturn_a_1=$saturn_a_1 * $t;

      return $saturn_a_0+$saturn_a_1;
   }

   sub saturn_l {
      my $t=shift;

      my $saturn_l_0=0.0;
      $saturn_l_0+=     0.87401675650 * cos( 0.00000000000 +        0.00000000000*$t);
      $saturn_l_0+=     0.01411655077 * cos( 4.58553469006 +        7.11354700080*$t);
      $saturn_l_0+=     0.00259784547 * cos( 4.43343036691 +      316.39186965660*$t);
      $saturn_l_0+=     0.00149861955 * cos( 0.26851062811 +      103.09277421860*$t);

      my $saturn_l_1=0.0;
      $saturn_l_1+=   213.29909543800 * cos( 0.00000000000 +        0.00000000000*$t);
      $saturn_l_1+=     0.00563352798 * cos( 2.88478561660 +        7.11354700080*$t);
      $saturn_l_1=$saturn_l_1 * $t;

      my $saturn_l_2=0.0;
      $saturn_l_2+=     0.00116235667 * cos( 1.17971682406 +        7.11354700080*$t);
      $saturn_l_2=$saturn_l_2 * $t * $t;

      return $saturn_l_0+$saturn_l_1+$saturn_l_2;
   }

   sub saturn_k {
      my $t=shift;

      my $saturn_k_0=0.0;
      $saturn_k_0+=     0.00296003595 * cos( 3.14159265359 +        0.00000000000*$t);
      $saturn_k_0+=     0.00155326496 * cos( 5.16402515606 +        7.11354700080*$t);
      $saturn_k_0+=     0.00197268763 * cos( 0.59616692002 +      529.69096509460*$t);
      $saturn_k_0+=     0.00126322249 * cos( 0.86230560136 +      213.29909543800*$t);

      my $saturn_k_1=0.0;
      $saturn_k_1+=     0.00529602626 * cos( 3.14159265359 +        0.00000000000*$t);
      $saturn_k_1=$saturn_k_1 * $t;

      return $saturn_k_0+$saturn_k_1;
   }

   sub saturn_h {
      my $t=shift;

      my $saturn_h_0=0.0;
      $saturn_h_0+=     0.05542964254 * cos( 0.00000000000 +        0.00000000000*$t);
      $saturn_h_0+=     0.00154553684 * cos( 3.59447132230 +        7.11354700080*$t);
      $saturn_h_0+=     0.00196887619 * cos( 5.31528897782 +      529.69096509460*$t);
      $saturn_h_0+=     0.00124537423 * cos( 5.60295505720 +      213.29909543800*$t);

      my $saturn_h_1=0.0;
      $saturn_h_1+=     0.00375593887 * cos( 3.14159265359 +        0.00000000000*$t);
      $saturn_h_1=$saturn_h_1 * $t;

      return $saturn_h_0+$saturn_h_1;
   }

   sub saturn_q {
      my $t=shift;

      my $saturn_q_0=0.0;
      $saturn_q_0+=     0.00871747436 * cos( 3.14159265359 +        0.00000000000*$t);

      return $saturn_q_0;
   }

   sub saturn_p {
      my $t=shift;

      my $saturn_p_0=0.0;
      $saturn_p_0+=     0.01989147301 * cos( 0.00000000000 +        0.00000000000*$t);

      return $saturn_p_0;
   }

   sub uranus_a {
      my $t=shift;

      my $uranus_a_0=0.0;
      $uranus_a_0+=    19.21844606178 * cos( 0.00000000000 +        0.00000000000*$t);
      $uranus_a_0+=     0.08030476240 * cos( 1.40140954803 +      454.90936652730*$t);
      $uranus_a_0+=     0.02068375131 * cos( 1.67626096637 +      138.51749687070*$t);
      $uranus_a_0+=     0.00406413575 * cos( 5.21303965129 +      380.12776796000*$t);
      $uranus_a_0+=     0.00365190162 * cos( 1.75064255586 +      984.60033162190*$t);
      $uranus_a_0+=     0.00391818405 * cos( 2.05935807638 +        1.48447270830*$t);
      $uranus_a_0+=     0.00313720406 * cos( 2.19852745462 +       74.78159856730*$t);
      $uranus_a_0+=     0.00148020073 * cos( 4.84763548983 +       63.73589830340*$t);
      $uranus_a_0+=     0.00124336026 * cos( 1.34101096123 +       11.04570026390*$t);
      $uranus_a_0+=     0.00120436873 * cos( 0.15931700196 +      277.03499374140*$t);
      $uranus_a_0+=     0.00102755162 * cos( 0.89451486294 +      351.81659230870*$t);

      return $uranus_a_0;
   }

   sub uranus_l {
      my $t=shift;

      my $uranus_l_0=0.0;
      $uranus_l_0+=     5.48129387159 * cos( 0.00000000000 +        0.00000000000*$t);
      $uranus_l_0+=     0.01503941337 * cos( 3.62721239702 +        1.48447270830*$t);
      $uranus_l_0+=     0.00341045477 * cos( 6.11377091373 +      454.90936652730*$t);

      my $uranus_l_1=0.0;
      $uranus_l_1+=    74.78159856730 * cos( 0.00000000000 +        0.00000000000*$t);
      $uranus_l_1=$uranus_l_1 * $t;

      return $uranus_l_0+$uranus_l_1;
   }

   sub uranus_k {
      my $t=shift;

      my $uranus_k_0=0.0;
      $uranus_k_0+=     0.04595132376 * cos( 3.14159265359 +        0.00000000000*$t);
      $uranus_k_0+=     0.00274532742 * cos( 0.59960944961 +      529.69096509460*$t);
      $uranus_k_0+=     0.00209611522 * cos( 1.99913587697 +        1.48447270830*$t);
      $uranus_k_0+=     0.00136013862 * cos( 5.48189691557 +       74.78159856730*$t);
      $uranus_k_0+=     0.00116379910 * cos( 2.20321839185 +      380.12776796000*$t);

      return $uranus_k_0;
   }

   sub uranus_h {
      my $t=shift;

      my $uranus_h_0=0.0;
      $uranus_h_0+=     0.00563791307 * cos( 0.00000000000 +        0.00000000000*$t);
      $uranus_h_0+=     0.00274676149 * cos( 5.31178834743 +      529.69096509460*$t);
      $uranus_h_0+=     0.00210407426 * cos( 0.42744224313 +        1.48447270830*$t);
      $uranus_h_0+=     0.00136132837 * cos( 3.91136489012 +       74.78159856730*$t);
      $uranus_h_0+=     0.00116288289 * cos( 3.77434233468 +      380.12776796000*$t);

      return $uranus_h_0;
   }

   sub uranus_q {
      my $t=shift;

      my $uranus_q_0=0.0;
      $uranus_q_0+=     0.00185915075 * cos( 0.00000000000 +        0.00000000000*$t);

      return $uranus_q_0;
   }

   sub uranus_p {
      my $t=shift;

      my $uranus_p_0=0.0;
      $uranus_p_0+=     0.00648617008 * cos( 0.00000000000 +        0.00000000000*$t);

      return $uranus_p_0;
   }

   sub venus_a {
      my $t=shift;

      my $venus_a_0=0.0;
      $venus_a_0+=     0.72332981996 * cos( 0.00000000000 +        0.00000000000*$t);

      return $venus_a_0;
   }

   sub venus_l {
      my $t=shift;

      my $venus_l_0=0.0;
      $venus_l_0+=     3.17614669689 * cos( 0.00000000000 +        0.00000000000*$t);

      my $venus_l_1=0.0;
      $venus_l_1+= 10213.28554621100 * cos( 0.00000000000 +        0.00000000000*$t);
      $venus_l_1=$venus_l_1 * $t;

      return $venus_l_0+$venus_l_1;
   }

   sub venus_k {
      my $t=shift;

      my $venus_k_0=0.0;
      $venus_k_0+=     0.00449282133 * cos( 3.14159265359 +        0.00000000000*$t);

      return $venus_k_0;
   }

   sub venus_h {
      my $t=shift;

      my $venus_h_0=0.0;
      $venus_h_0+=     0.00506684726 * cos( 0.00000000000 +        0.00000000000*$t);

      return $venus_h_0;
   }

   sub venus_q {
      my $t=shift;

      my $venus_q_0=0.0;
      $venus_q_0+=     0.00682410142 * cos( 0.00000000000 +        0.00000000000*$t);

      my $venus_q_1=0.0;
      $venus_q_1+=     0.00138133826 * cos( 0.00000000000 +        0.00000000000*$t);
      $venus_q_1=$venus_q_1 * $t;

      return $venus_q_0+$venus_q_1;
   }

   sub venus_p {
      my $t=shift;

      my $venus_p_0=0.0;
      $venus_p_0+=     0.02882285775 * cos( 0.00000000000 +        0.00000000000*$t);

      return $venus_p_0;
   }

1;
