

#VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
#Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain


package vsop87e_pico_velocities ;
use strict;

   sub pow{my $a=shift; my $b=shift; return $a**$b;}

   sub getEarth {
      my $t=shift;

      my @temp=();
      push(@temp,earth_x($t) / 365250.0);
      push(@temp,earth_y($t) / 365250.0);
      push(@temp,earth_z($t) / 365250.0);
      return @temp;
   }

   sub getJupiter {
      my $t=shift;

      my @temp=();
      push(@temp,jupiter_x($t) / 365250.0);
      push(@temp,jupiter_y($t) / 365250.0);
      push(@temp,jupiter_z($t) / 365250.0);
      return @temp;
   }

   sub getMars {
      my $t=shift;

      my @temp=();
      push(@temp,mars_x($t) / 365250.0);
      push(@temp,mars_y($t) / 365250.0);
      push(@temp,mars_z($t) / 365250.0);
      return @temp;
   }

   sub getMercury {
      my $t=shift;

      my @temp=();
      push(@temp,mercury_x($t) / 365250.0);
      push(@temp,mercury_y($t) / 365250.0);
      push(@temp,mercury_z($t) / 365250.0);
      return @temp;
   }

   sub getNeptune {
      my $t=shift;

      my @temp=();
      push(@temp,neptune_x($t) / 365250.0);
      push(@temp,neptune_y($t) / 365250.0);
      push(@temp,neptune_z($t) / 365250.0);
      return @temp;
   }

   sub getSaturn {
      my $t=shift;

      my @temp=();
      push(@temp,saturn_x($t) / 365250.0);
      push(@temp,saturn_y($t) / 365250.0);
      push(@temp,saturn_z($t) / 365250.0);
      return @temp;
   }

   sub getUranus {
      my $t=shift;

      my @temp=();
      push(@temp,uranus_x($t) / 365250.0);
      push(@temp,uranus_y($t) / 365250.0);
      push(@temp,uranus_z($t) / 365250.0);
      return @temp;
   }

   sub getVenus {
      my $t=shift;

      my @temp=();
      push(@temp,venus_x($t) / 365250.0);
      push(@temp,venus_y($t) / 365250.0);
      push(@temp,venus_z($t) / 365250.0);
      return @temp;
   }

   sub getSun {
      my $t=shift;

      my @temp=();
      push(@temp,sun_x($t) / 365250.0);
      push(@temp,sun_y($t) / 365250.0);
      push(@temp,sun_z($t) / 365250.0);
      return @temp;
   }

   sub earth_x {
      my $t=shift;

      my $exp=0.0;
      my $earth_x_0=0.0;
      $exp=0;
      $earth_x_0+=-pow($t,$exp)*     0.99982624851*    6283.07584999140*sin( 1.75348568475 +     6283.07584999140*$t);

      return $earth_x_0;
   }

   sub earth_y {
      my $t=shift;

      my $exp=0.0;
      my $earth_y_0=0.0;
      $exp=0;
      $earth_y_0+=-pow($t,$exp)*     0.99988907017*    6283.07584999140*sin( 0.18265890456 +     6283.07584999140*$t);
      $earth_y_0+=-pow($t,$exp)*     0.02408829501*       0.00000000000*sin( 3.14159265359 +        0.00000000000*$t);

      return $earth_y_0;
   }

   sub earth_z {
      my $t=shift;

      my $exp=0.0;
      return $0;
   }

   sub jupiter_x {
      my $t=shift;

      my $exp=0.0;
      my $jupiter_x_0=0.0;
      $exp=0;
      $jupiter_x_0+=-pow($t,$exp)*     5.19167797375*     529.69096509460*sin( 0.59945079482 +      529.69096509460*$t);
      $jupiter_x_0+=-pow($t,$exp)*     0.36633268070*       0.00000000000*sin( 3.14159265359 +        0.00000000000*$t);
      $jupiter_x_0+=-pow($t,$exp)*     0.12581924842*    1059.38193018920*sin( 0.94911581432 +     1059.38193018920*$t);
      $jupiter_x_0+=-pow($t,$exp)*     0.01499237862*     522.57741809380*sin( 0.73175554601 +      522.57741809380*$t);
      $jupiter_x_0+=-pow($t,$exp)*     0.01474818211*     536.80451209540*sin( 3.61736901402 +      536.80451209540*$t);

      return $jupiter_x_0;
   }

   sub jupiter_y {
      my $t=shift;

      my $exp=0.0;
      my $jupiter_y_0=0.0;
      $exp=0;
      $jupiter_y_0+=-pow($t,$exp)*     5.19024510371*     529.69096509460*sin( 5.31203160043 +      529.69096509460*$t);
      $jupiter_y_0+=-pow($t,$exp)*     0.12580850775*    1059.38193018920*sin( 5.66160225641 +     1059.38193018920*$t);
      $jupiter_y_0+=-pow($t,$exp)*     0.09329801081*       0.00000000000*sin( 3.14159265359 +        0.00000000000*$t);
      $jupiter_y_0+=-pow($t,$exp)*     0.01506838468*     522.57741809380*sin( 5.43934599781 +      522.57741809380*$t);
      $jupiter_y_0+=-pow($t,$exp)*     0.01474403395*     536.80451209540*sin( 2.04679547637 +      536.80451209540*$t);

      my $jupiter_y_1=0.0;
      $exp=1;
      $jupiter_y_1+=pow($t,$exp-1)*$exp*     0.01694792137*cos( 3.14159265359 +        0.00000000000*$t)-pow($t,$exp)*     0.01694792137*       0.00000000000*sin( 3.14159265359 +        0.00000000000*$t);

      return $jupiter_y_0+$jupiter_y_1;
   }

   sub jupiter_z {
      my $t=shift;

      my $exp=0.0;
      my $jupiter_z_0=0.0;
      $exp=0;
      $jupiter_z_0+=-pow($t,$exp)*     0.11811822789*     529.69096509460*sin( 3.55844641987 +      529.69096509460*$t);

      return $jupiter_z_0;
   }

   sub mars_x {
      my $t=shift;

      my $exp=0.0;
      my $mars_x_0=0.0;
      $exp=0;
      $mars_x_0+=-pow($t,$exp)*     1.51769887405*    3340.61242669980*sin( 6.20403346548 +     3340.61242669980*$t);
      $mars_x_0+=-pow($t,$exp)*     0.19473570996*       0.00000000000*sin( 3.14159265359 +        0.00000000000*$t);
      $mars_x_0+=-pow($t,$exp)*     0.07070917372*    6681.22485339960*sin( 0.25870338552 +     6681.22485339960*$t);

      return $mars_x_0;
   }

   sub mars_y {
      my $t=shift;

      my $exp=0.0;
      my $mars_y_0=0.0;
      $exp=0;
      $mars_y_0+=-pow($t,$exp)*     1.51558927367*    3340.61242669980*sin( 4.63212206588 +     3340.61242669980*$t);
      $mars_y_0+=-pow($t,$exp)*     0.07064547959*    6681.22485339960*sin( 4.97051892898 +     6681.22485339960*$t);
      $mars_y_0+=-pow($t,$exp)*     0.08689350637*       0.00000000000*sin( 0.00000000000 +        0.00000000000*$t);

      my $mars_y_1=0.0;
      $exp=1;
      $mars_y_1+=pow($t,$exp-1)*$exp*     0.01427318093*cos( 3.14159265359 +        0.00000000000*$t)-pow($t,$exp)*     0.01427318093*       0.00000000000*sin( 3.14159265359 +        0.00000000000*$t);

      return $mars_y_0+$mars_y_1;
   }

   sub mars_z {
      my $t=shift;

      my $exp=0.0;
      my $mars_z_0=0.0;
      $exp=0;
      $mars_z_0+=-pow($t,$exp)*     0.04901205639*    3340.61242669980*sin( 3.76712324293 +     3340.61242669980*$t);

      return $mars_z_0;
   }

   sub mercury_x {
      my $t=shift;

      my $exp=0.0;
      my $mercury_x_0=0.0;
      $exp=0;
      $mercury_x_0+=-pow($t,$exp)*     0.37546285495*   26087.90314157420*sin( 4.39651506942 +    26087.90314157420*$t);
      $mercury_x_0+=-pow($t,$exp)*     0.03825746037*   52175.80628314840*sin( 1.16485604343 +    52175.80628314840*$t);
      $mercury_x_0+=-pow($t,$exp)*     0.02596241714*       0.00000000000*sin( 3.14159265359 +        0.00000000000*$t);

      return $mercury_x_0;
   }

   sub mercury_y {
      my $t=shift;

      my $exp=0.0;
      my $mercury_y_0=0.0;
      $exp=0;
      $mercury_y_0+=-pow($t,$exp)*     0.37953636588*   26087.90314157420*sin( 2.83780617821 +    26087.90314157420*$t);
      $mercury_y_0+=-pow($t,$exp)*     0.11592262295*       0.00000000000*sin( 3.14159265359 +        0.00000000000*$t);
      $mercury_y_0+=-pow($t,$exp)*     0.03854667576*   52175.80628314840*sin( 5.88780608961 +    52175.80628314840*$t);

      return $mercury_y_0;
   }

   sub mercury_z {
      my $t=shift;

      my $exp=0.0;
      my $mercury_z_0=0.0;
      $exp=0;
      $mercury_z_0+=-pow($t,$exp)*     0.04607664562*   26087.90314157420*sin( 1.99295081967 +    26087.90314157420*$t);

      return $mercury_z_0;
   }

   sub neptune_x {
      my $t=shift;

      my $exp=0.0;
      my $neptune_x_0=0.0;
      $exp=0;
      $neptune_x_0+=-pow($t,$exp)*    30.05734568801*      38.13303563780*sin( 5.31211340030 +       38.13303563780*$t);
      $neptune_x_0+=-pow($t,$exp)*     0.27050789973*       0.00000000000*sin( 3.14159265359 +        0.00000000000*$t);
      $neptune_x_0+=-pow($t,$exp)*     0.13504578270*      76.26607127560*sin( 3.50075407055 +       76.26607127560*$t);
      $neptune_x_0+=-pow($t,$exp)*     0.15725280871*      36.64856292950*sin( 0.11319072402 +       36.64856292950*$t);
      $neptune_x_0+=-pow($t,$exp)*     0.14934353052*      39.61750834610*sin( 1.08499398649 +       39.61750834610*$t);
      $neptune_x_0+=-pow($t,$exp)*     0.02597449604*       1.48447270830*sin( 1.99590330725 +        1.48447270830*$t);

      return $neptune_x_0;
   }

   sub neptune_y {
      my $t=shift;

      my $exp=0.0;
      my $neptune_y_0=0.0;
      $exp=0;
      $neptune_y_0+=-pow($t,$exp)*    30.05900907352*      38.13303563780*sin( 3.74086294715 +       38.13303563780*$t);
      $neptune_y_0+=-pow($t,$exp)*     0.30171988148*       0.00000000000*sin( 3.14159265359 +        0.00000000000*$t);
      $neptune_y_0+=-pow($t,$exp)*     0.13505308635*      76.26607127560*sin( 1.92949466968 +       76.26607127560*$t);
      $neptune_y_0+=-pow($t,$exp)*     0.15705776296*      36.64856292950*sin( 4.82539969469 +       36.64856292950*$t);
      $neptune_y_0+=-pow($t,$exp)*     0.14935398681*      39.61750834610*sin( 5.79694896309 +       39.61750834610*$t);
      $neptune_y_0+=-pow($t,$exp)*     0.02584389323*       1.48447270830*sin( 0.42549727257 +        1.48447270830*$t);

      return $neptune_y_0;
   }

   sub neptune_z {
      my $t=shift;

      my $exp=0.0;
      my $neptune_z_0=0.0;
      $exp=0;
      $neptune_z_0+=-pow($t,$exp)*     0.92861252357*      38.13303563780*sin( 1.44103930199 +       38.13303563780*$t);
      $neptune_z_0+=-pow($t,$exp)*     0.01244825806*       0.00000000000*sin( 0.00000000000 +        0.00000000000*$t);

      return $neptune_z_0;
   }

   sub saturn_x {
      my $t=shift;

      my $exp=0.0;
      my $saturn_x_0=0.0;
      $exp=0;
      $saturn_x_0+=-pow($t,$exp)*     9.51366533422*     213.29909543800*sin( 0.87441380650 +      213.29909543800*$t);
      $saturn_x_0+=-pow($t,$exp)*     0.26404799161*     426.59819087600*sin( 0.12391580771 +      426.59819087600*$t);
      $saturn_x_0+=-pow($t,$exp)*     0.06758489145*     206.18554843720*sin( 4.16767544586 +      206.18554843720*$t);
      $saturn_x_0+=-pow($t,$exp)*     0.06622371284*     220.41264243880*sin( 0.75094738122 +      220.41264243880*$t);
      $saturn_x_0+=-pow($t,$exp)*     0.04274172066*       0.00000000000*sin( 0.00000000000 +        0.00000000000*$t);
      $saturn_x_0+=-pow($t,$exp)*     0.02335961354*       7.11354700080*sin( 2.02227905783 +        7.11354700080*$t);
      $saturn_x_0+=-pow($t,$exp)*     0.01255113414*     110.20632121940*sin( 2.17347170552 +      110.20632121940*$t);
      $saturn_x_0+=-pow($t,$exp)*     0.01115372225*     419.48464387520*sin( 3.15690865182 +      419.48464387520*$t);
      $saturn_x_0+=-pow($t,$exp)*     0.01097374519*     639.89728631400*sin( 5.65753938643 +      639.89728631400*$t);

      my $saturn_x_1=0.0;
      $exp=1;
      $saturn_x_1+=pow($t,$exp-1)*$exp*     0.07573807889*cos( 0.00000000000 +        0.00000000000*$t)-pow($t,$exp)*     0.07573807889*       0.00000000000*sin( 0.00000000000 +        0.00000000000*$t);
      $saturn_x_1+=pow($t,$exp-1)*$exp*     0.03084144308*cos( 4.27565898829 +      426.59819087600*$t)-pow($t,$exp)*     0.03084144308*     426.59819087600*sin( 4.27565898829 +      426.59819087600*$t);
      $saturn_x_1+=pow($t,$exp-1)*$exp*     0.02714141496*cos( 5.85229546861 +      206.18554843720*$t)-pow($t,$exp)*     0.02714141496*     206.18554843720*sin( 5.85229546861 +      206.18554843720*$t);
      $saturn_x_1+=pow($t,$exp-1)*$exp*     0.02642347272*cos( 5.33291950842 +      220.41264243880*$t)-pow($t,$exp)*     0.02642347272*     220.41264243880*sin( 5.33291950842 +      220.41264243880*$t);

      return $saturn_x_0+$saturn_x_1;
   }

   sub saturn_y {
      my $t=shift;

      my $exp=0.0;
      my $saturn_y_0=0.0;
      $exp=0;
      $saturn_y_0+=-pow($t,$exp)*     9.52714696877*     213.29909543800*sin( 5.58600556072 +      213.29909543800*$t);
      $saturn_y_0+=-pow($t,$exp)*     0.79354119271*       0.00000000000*sin( 3.14159265359 +        0.00000000000*$t);
      $saturn_y_0+=-pow($t,$exp)*     0.26434197609*     426.59819087600*sin( 4.83528742856 +      426.59819087600*$t);
      $saturn_y_0+=-pow($t,$exp)*     0.06914690347*     206.18554843720*sin( 2.55279029588 +      206.18554843720*$t);
      $saturn_y_0+=-pow($t,$exp)*     0.06631679200*     220.41264243880*sin( 5.46258849076 +      220.41264243880*$t);
      $saturn_y_0+=-pow($t,$exp)*     0.02345226948*       7.11354700080*sin( 0.44652393276 +        7.11354700080*$t);
      $saturn_y_0+=-pow($t,$exp)*     0.01183557497*     419.48464387520*sin( 1.34637027573 +      419.48464387520*$t);
      $saturn_y_0+=-pow($t,$exp)*     0.01245523800*     110.20632121940*sin( 0.60375781288 +      110.20632121940*$t);
      $saturn_y_0+=-pow($t,$exp)*     0.01098442011*     639.89728631400*sin( 4.08609387384 +      639.89728631400*$t);

      my $saturn_y_1=0.0;
      $exp=1;
      $saturn_y_1+=pow($t,$exp-1)*$exp*     0.05373895252*cos( 0.00000000000 +        0.00000000000*$t)-pow($t,$exp)*     0.05373895252*       0.00000000000*sin( 0.00000000000 +        0.00000000000*$t);
      $saturn_y_1+=pow($t,$exp-1)*$exp*     0.03089676414*cos( 2.70347020059 +      426.59819087600*$t)-pow($t,$exp)*     0.03089676414*     426.59819087600*sin( 2.70347020059 +      426.59819087600*$t);
      $saturn_y_1+=pow($t,$exp-1)*$exp*     0.02740812928*cos( 4.26667506460 +      206.18554843720*$t)-pow($t,$exp)*     0.02740812928*     206.18554843720*sin( 4.26667506460 +      206.18554843720*$t);
      $saturn_y_1+=pow($t,$exp-1)*$exp*     0.02646734779*cos( 3.76132299914 +      220.41264243880*$t)-pow($t,$exp)*     0.02646734779*     220.41264243880*sin( 3.76132299914 +      220.41264243880*$t);

      return $saturn_y_0+$saturn_y_1;
   }

   sub saturn_z {
      my $t=shift;

      my $exp=0.0;
      my $saturn_z_0=0.0;
      $exp=0;
      $saturn_z_0+=-pow($t,$exp)*     0.41345140292*     213.29909543800*sin( 3.60234141893 +      213.29909543800*$t);
      $saturn_z_0+=-pow($t,$exp)*     0.01147953788*     426.59819087600*sin( 2.85128771957 +      426.59819087600*$t);
      $saturn_z_0+=-pow($t,$exp)*     0.01213097211*       0.00000000000*sin( 0.00000000000 +        0.00000000000*$t);

      my $saturn_z_1=0.0;
      $exp=1;
      $saturn_z_1+=pow($t,$exp-1)*$exp*     0.01905958940*cos( 4.94544746619 +      213.29909543800*$t)-pow($t,$exp)*     0.01905958940*     213.29909543800*sin( 4.94544746619 +      213.29909543800*$t);

      return $saturn_z_0+$saturn_z_1;
   }

   sub sun_x {
      my $t=shift;

      my $exp=0.0;
      return $0;
   }

   sub sun_y {
      my $t=shift;

      my $exp=0.0;
      return $0;
   }

   sub sun_z {
      my $t=shift;

      my $exp=0.0;
      return $0;
   }

   sub uranus_x {
      my $t=shift;

      my $exp=0.0;
      my $uranus_x_0=0.0;
      $exp=0;
      $uranus_x_0+=-pow($t,$exp)*    19.17286937362*      74.78159856730*sin( 5.48133416758 +       74.78159856730*$t);
      $uranus_x_0+=-pow($t,$exp)*     1.32301898121*       0.00000000000*sin( 0.00000000000 +        0.00000000000*$t);
      $uranus_x_0+=-pow($t,$exp)*     0.44400556159*     149.56319713460*sin( 1.65967535182 +      149.56319713460*$t);
      $uranus_x_0+=-pow($t,$exp)*     0.14667584671*      73.29712585900*sin( 3.42395875589 +       73.29712585900*$t);
      $uranus_x_0+=-pow($t,$exp)*     0.14129215712*      76.26607127560*sin( 4.39576776954 +       76.26607127560*$t);
      $uranus_x_0+=-pow($t,$exp)*     0.06200970387*       1.48447270830*sin( 5.14043568284 +        1.48447270830*$t);
      $uranus_x_0+=-pow($t,$exp)*     0.01542890129*     224.34479570190*sin( 4.12122840701 +      224.34479570190*$t);
      $uranus_x_0+=-pow($t,$exp)*     0.01444153470*     148.07872442630*sin( 2.65117108186 +      148.07872442630*$t);

      return $uranus_x_0;
   }

   sub uranus_y {
      my $t=shift;

      my $exp=0.0;
      my $uranus_y_0=0.0;
      $exp=0;
      $uranus_y_0+=-pow($t,$exp)*    19.16434475791*      74.78159856730*sin( 3.91045677275 +       74.78159856730*$t);
      $uranus_y_0+=-pow($t,$exp)*     0.44388525091*     149.56319713460*sin( 0.08884126943 +      149.56319713460*$t);
      $uranus_y_0+=-pow($t,$exp)*     0.16222255941*       0.00000000000*sin( 3.14159265359 +        0.00000000000*$t);
      $uranus_y_0+=-pow($t,$exp)*     0.14755311401*      73.29712585900*sin( 1.85423292905 +       73.29712585900*$t);
      $uranus_y_0+=-pow($t,$exp)*     0.14122904825*      76.26607127560*sin( 2.82489928705 +       76.26607127560*$t);
      $uranus_y_0+=-pow($t,$exp)*     0.06249939655*       1.48447270830*sin( 3.56960238469 +        1.48447270830*$t);
      $uranus_y_0+=-pow($t,$exp)*     0.01542607086*     224.34479570190*sin( 2.55041543170 +      224.34479570190*$t);
      $uranus_y_0+=-pow($t,$exp)*     0.01442293466*     148.07872442630*sin( 1.08004535633 +      148.07872442630*$t);

      my $uranus_y_1=0.0;
      $exp=1;
      $uranus_y_1+=pow($t,$exp-1)*$exp*     0.02157902502*cos( 0.00000000000 +        0.00000000000*$t)-pow($t,$exp)*     0.02157902502*       0.00000000000*sin( 0.00000000000 +        0.00000000000*$t);

      return $uranus_y_0+$uranus_y_1;
   }

   sub uranus_z {
      my $t=shift;

      my $exp=0.0;
      my $uranus_z_0=0.0;
      $exp=0;
      $uranus_z_0+=-pow($t,$exp)*     0.25876996652*      74.78159856730*sin( 2.61861278845 +       74.78159856730*$t);
      $uranus_z_0+=-pow($t,$exp)*     0.01775471434*       0.00000000000*sin( 3.14159265359 +        0.00000000000*$t);

      return $uranus_z_0;
   }

   sub venus_x {
      my $t=shift;

      my $exp=0.0;
      my $venus_x_0=0.0;
      $exp=0;
      $venus_x_0+=-pow($t,$exp)*     0.72211104628*   10213.28554621100*sin( 3.17575836361 +    10213.28554621100*$t);

      return $venus_x_0;
   }

   sub venus_y {
      my $t=shift;

      my $exp=0.0;
      my $venus_y_0=0.0;
      $exp=0;
      $venus_y_0+=-pow($t,$exp)*     0.72324643689*   10213.28554621100*sin( 1.60573808356 +    10213.28554621100*$t);

      return $venus_y_0;
   }

   sub venus_z {
      my $t=shift;

      my $exp=0.0;
      my $venus_z_0=0.0;
      $exp=0;
      $venus_z_0+=-pow($t,$exp)*     0.04282979819*   10213.28554621100*sin( 0.26703856471 +    10213.28554621100*$t);

      return $venus_z_0;
   }

1;
