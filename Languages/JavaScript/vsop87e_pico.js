//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain



class vsop87e_pico {
   static getEarth(t){
      const temp=new Array();
      temp.push(vsop87e_pico.earth_x(t));
      temp.push(vsop87e_pico.earth_y(t));
      temp.push(vsop87e_pico.earth_z(t));
      return temp;
   }

   static getJupiter(t){
      const temp=new Array();
      temp.push(vsop87e_pico.jupiter_x(t));
      temp.push(vsop87e_pico.jupiter_y(t));
      temp.push(vsop87e_pico.jupiter_z(t));
      return temp;
   }

   static getMars(t){
      const temp=new Array();
      temp.push(vsop87e_pico.mars_x(t));
      temp.push(vsop87e_pico.mars_y(t));
      temp.push(vsop87e_pico.mars_z(t));
      return temp;
   }

   static getMercury(t){
      const temp=new Array();
      temp.push(vsop87e_pico.mercury_x(t));
      temp.push(vsop87e_pico.mercury_y(t));
      temp.push(vsop87e_pico.mercury_z(t));
      return temp;
   }

   static getNeptune(t){
      const temp=new Array();
      temp.push(vsop87e_pico.neptune_x(t));
      temp.push(vsop87e_pico.neptune_y(t));
      temp.push(vsop87e_pico.neptune_z(t));
      return temp;
   }

   static getSaturn(t){
      const temp=new Array();
      temp.push(vsop87e_pico.saturn_x(t));
      temp.push(vsop87e_pico.saturn_y(t));
      temp.push(vsop87e_pico.saturn_z(t));
      return temp;
   }

   static getUranus(t){
      const temp=new Array();
      temp.push(vsop87e_pico.uranus_x(t));
      temp.push(vsop87e_pico.uranus_y(t));
      temp.push(vsop87e_pico.uranus_z(t));
      return temp;
   }

   static getVenus(t){
      const temp=new Array();
      temp.push(vsop87e_pico.venus_x(t));
      temp.push(vsop87e_pico.venus_y(t));
      temp.push(vsop87e_pico.venus_z(t));
      return temp;
   }

   static getSun(t){
      const temp=new Array();
      temp.push(vsop87e_pico.sun_x(t));
      temp.push(vsop87e_pico.sun_y(t));
      temp.push(vsop87e_pico.sun_z(t));
      return temp;
   }

   static earth_x(t){
      let earth_x_0=0.0;
      earth_x_0+=     0.99982624851 * Math.cos( 1.75348568475 +     6283.07584999140*t);

      return earth_x_0;
   }

   static earth_y(t){
      let earth_y_0=0.0;
      earth_y_0+=     0.99988907017 * Math.cos( 0.18265890456 +     6283.07584999140*t);
      earth_y_0+=     0.02408829501 * Math.cos( 3.14159265359 +        0.00000000000*t);

      return earth_y_0;
   }

   static earth_z(t){
      return 0;
   }

   static jupiter_x(t){
      let jupiter_x_0=0.0;
      jupiter_x_0+=     5.19167797375 * Math.cos( 0.59945079482 +      529.69096509460*t);
      jupiter_x_0+=     0.36633268070 * Math.cos( 3.14159265359 +        0.00000000000*t);
      jupiter_x_0+=     0.12581924842 * Math.cos( 0.94911581432 +     1059.38193018920*t);
      jupiter_x_0+=     0.01499237862 * Math.cos( 0.73175554601 +      522.57741809380*t);
      jupiter_x_0+=     0.01474818211 * Math.cos( 3.61736901402 +      536.80451209540*t);

      return jupiter_x_0;
   }

   static jupiter_y(t){
      let jupiter_y_0=0.0;
      jupiter_y_0+=     5.19024510371 * Math.cos( 5.31203160043 +      529.69096509460*t);
      jupiter_y_0+=     0.12580850775 * Math.cos( 5.66160225641 +     1059.38193018920*t);
      jupiter_y_0+=     0.09329801081 * Math.cos( 3.14159265359 +        0.00000000000*t);
      jupiter_y_0+=     0.01506838468 * Math.cos( 5.43934599781 +      522.57741809380*t);
      jupiter_y_0+=     0.01474403395 * Math.cos( 2.04679547637 +      536.80451209540*t);

      let jupiter_y_1=0.0;
      jupiter_y_1+=     0.01694792137 * Math.cos( 3.14159265359 +        0.00000000000*t);
      jupiter_y_1=jupiter_y_1 * t;

      return jupiter_y_0+jupiter_y_1;
   }

   static jupiter_z(t){
      let jupiter_z_0=0.0;
      jupiter_z_0+=     0.11811822789 * Math.cos( 3.55844641987 +      529.69096509460*t);

      return jupiter_z_0;
   }

   static mars_x(t){
      let mars_x_0=0.0;
      mars_x_0+=     1.51769887405 * Math.cos( 6.20403346548 +     3340.61242669980*t);
      mars_x_0+=     0.19473570996 * Math.cos( 3.14159265359 +        0.00000000000*t);
      mars_x_0+=     0.07070917372 * Math.cos( 0.25870338552 +     6681.22485339960*t);

      return mars_x_0;
   }

   static mars_y(t){
      let mars_y_0=0.0;
      mars_y_0+=     1.51558927367 * Math.cos( 4.63212206588 +     3340.61242669980*t);
      mars_y_0+=     0.07064547959 * Math.cos( 4.97051892898 +     6681.22485339960*t);
      mars_y_0+=     0.08689350637 * Math.cos( 0.00000000000 +        0.00000000000*t);

      let mars_y_1=0.0;
      mars_y_1+=     0.01427318093 * Math.cos( 3.14159265359 +        0.00000000000*t);
      mars_y_1=mars_y_1 * t;

      return mars_y_0+mars_y_1;
   }

   static mars_z(t){
      let mars_z_0=0.0;
      mars_z_0+=     0.04901205639 * Math.cos( 3.76712324293 +     3340.61242669980*t);

      return mars_z_0;
   }

   static mercury_x(t){
      let mercury_x_0=0.0;
      mercury_x_0+=     0.37546285495 * Math.cos( 4.39651506942 +    26087.90314157420*t);
      mercury_x_0+=     0.03825746037 * Math.cos( 1.16485604343 +    52175.80628314840*t);
      mercury_x_0+=     0.02596241714 * Math.cos( 3.14159265359 +        0.00000000000*t);

      return mercury_x_0;
   }

   static mercury_y(t){
      let mercury_y_0=0.0;
      mercury_y_0+=     0.37953636588 * Math.cos( 2.83780617821 +    26087.90314157420*t);
      mercury_y_0+=     0.11592262295 * Math.cos( 3.14159265359 +        0.00000000000*t);
      mercury_y_0+=     0.03854667576 * Math.cos( 5.88780608961 +    52175.80628314840*t);

      return mercury_y_0;
   }

   static mercury_z(t){
      let mercury_z_0=0.0;
      mercury_z_0+=     0.04607664562 * Math.cos( 1.99295081967 +    26087.90314157420*t);

      return mercury_z_0;
   }

   static neptune_x(t){
      let neptune_x_0=0.0;
      neptune_x_0+=    30.05734568801 * Math.cos( 5.31211340030 +       38.13303563780*t);
      neptune_x_0+=     0.27050789973 * Math.cos( 3.14159265359 +        0.00000000000*t);
      neptune_x_0+=     0.13504578270 * Math.cos( 3.50075407055 +       76.26607127560*t);
      neptune_x_0+=     0.15725280871 * Math.cos( 0.11319072402 +       36.64856292950*t);
      neptune_x_0+=     0.14934353052 * Math.cos( 1.08499398649 +       39.61750834610*t);
      neptune_x_0+=     0.02597449604 * Math.cos( 1.99590330725 +        1.48447270830*t);

      return neptune_x_0;
   }

   static neptune_y(t){
      let neptune_y_0=0.0;
      neptune_y_0+=    30.05900907352 * Math.cos( 3.74086294715 +       38.13303563780*t);
      neptune_y_0+=     0.30171988148 * Math.cos( 3.14159265359 +        0.00000000000*t);
      neptune_y_0+=     0.13505308635 * Math.cos( 1.92949466968 +       76.26607127560*t);
      neptune_y_0+=     0.15705776296 * Math.cos( 4.82539969469 +       36.64856292950*t);
      neptune_y_0+=     0.14935398681 * Math.cos( 5.79694896309 +       39.61750834610*t);
      neptune_y_0+=     0.02584389323 * Math.cos( 0.42549727257 +        1.48447270830*t);

      return neptune_y_0;
   }

   static neptune_z(t){
      let neptune_z_0=0.0;
      neptune_z_0+=     0.92861252357 * Math.cos( 1.44103930199 +       38.13303563780*t);
      neptune_z_0+=     0.01244825806 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return neptune_z_0;
   }

   static saturn_x(t){
      let saturn_x_0=0.0;
      saturn_x_0+=     9.51366533422 * Math.cos( 0.87441380650 +      213.29909543800*t);
      saturn_x_0+=     0.26404799161 * Math.cos( 0.12391580771 +      426.59819087600*t);
      saturn_x_0+=     0.06758489145 * Math.cos( 4.16767544586 +      206.18554843720*t);
      saturn_x_0+=     0.06622371284 * Math.cos( 0.75094738122 +      220.41264243880*t);
      saturn_x_0+=     0.04274172066 * Math.cos( 0.00000000000 +        0.00000000000*t);
      saturn_x_0+=     0.02335961354 * Math.cos( 2.02227905783 +        7.11354700080*t);
      saturn_x_0+=     0.01255113414 * Math.cos( 2.17347170552 +      110.20632121940*t);
      saturn_x_0+=     0.01115372225 * Math.cos( 3.15690865182 +      419.48464387520*t);
      saturn_x_0+=     0.01097374519 * Math.cos( 5.65753938643 +      639.89728631400*t);

      let saturn_x_1=0.0;
      saturn_x_1+=     0.07573807889 * Math.cos( 0.00000000000 +        0.00000000000*t);
      saturn_x_1+=     0.03084144308 * Math.cos( 4.27565898829 +      426.59819087600*t);
      saturn_x_1+=     0.02714141496 * Math.cos( 5.85229546861 +      206.18554843720*t);
      saturn_x_1+=     0.02642347272 * Math.cos( 5.33291950842 +      220.41264243880*t);
      saturn_x_1=saturn_x_1 * t;

      return saturn_x_0+saturn_x_1;
   }

   static saturn_y(t){
      let saturn_y_0=0.0;
      saturn_y_0+=     9.52714696877 * Math.cos( 5.58600556072 +      213.29909543800*t);
      saturn_y_0+=     0.79354119271 * Math.cos( 3.14159265359 +        0.00000000000*t);
      saturn_y_0+=     0.26434197609 * Math.cos( 4.83528742856 +      426.59819087600*t);
      saturn_y_0+=     0.06914690347 * Math.cos( 2.55279029588 +      206.18554843720*t);
      saturn_y_0+=     0.06631679200 * Math.cos( 5.46258849076 +      220.41264243880*t);
      saturn_y_0+=     0.02345226948 * Math.cos( 0.44652393276 +        7.11354700080*t);
      saturn_y_0+=     0.01183557497 * Math.cos( 1.34637027573 +      419.48464387520*t);
      saturn_y_0+=     0.01245523800 * Math.cos( 0.60375781288 +      110.20632121940*t);
      saturn_y_0+=     0.01098442011 * Math.cos( 4.08609387384 +      639.89728631400*t);

      let saturn_y_1=0.0;
      saturn_y_1+=     0.05373895252 * Math.cos( 0.00000000000 +        0.00000000000*t);
      saturn_y_1+=     0.03089676414 * Math.cos( 2.70347020059 +      426.59819087600*t);
      saturn_y_1+=     0.02740812928 * Math.cos( 4.26667506460 +      206.18554843720*t);
      saturn_y_1+=     0.02646734779 * Math.cos( 3.76132299914 +      220.41264243880*t);
      saturn_y_1=saturn_y_1 * t;

      return saturn_y_0+saturn_y_1;
   }

   static saturn_z(t){
      let saturn_z_0=0.0;
      saturn_z_0+=     0.41345140292 * Math.cos( 3.60234141893 +      213.29909543800*t);
      saturn_z_0+=     0.01147953788 * Math.cos( 2.85128771957 +      426.59819087600*t);
      saturn_z_0+=     0.01213097211 * Math.cos( 0.00000000000 +        0.00000000000*t);

      let saturn_z_1=0.0;
      saturn_z_1+=     0.01905958940 * Math.cos( 4.94544746619 +      213.29909543800*t);
      saturn_z_1=saturn_z_1 * t;

      return saturn_z_0+saturn_z_1;
   }

   static sun_x(t){
      return 0;
   }

   static sun_y(t){
      return 0;
   }

   static sun_z(t){
      return 0;
   }

   static uranus_x(t){
      let uranus_x_0=0.0;
      uranus_x_0+=    19.17286937362 * Math.cos( 5.48133416758 +       74.78159856730*t);
      uranus_x_0+=     1.32301898121 * Math.cos( 0.00000000000 +        0.00000000000*t);
      uranus_x_0+=     0.44400556159 * Math.cos( 1.65967535182 +      149.56319713460*t);
      uranus_x_0+=     0.14667584671 * Math.cos( 3.42395875589 +       73.29712585900*t);
      uranus_x_0+=     0.14129215712 * Math.cos( 4.39576776954 +       76.26607127560*t);
      uranus_x_0+=     0.06200970387 * Math.cos( 5.14043568284 +        1.48447270830*t);
      uranus_x_0+=     0.01542890129 * Math.cos( 4.12122840701 +      224.34479570190*t);
      uranus_x_0+=     0.01444153470 * Math.cos( 2.65117108186 +      148.07872442630*t);

      return uranus_x_0;
   }

   static uranus_y(t){
      let uranus_y_0=0.0;
      uranus_y_0+=    19.16434475791 * Math.cos( 3.91045677275 +       74.78159856730*t);
      uranus_y_0+=     0.44388525091 * Math.cos( 0.08884126943 +      149.56319713460*t);
      uranus_y_0+=     0.16222255941 * Math.cos( 3.14159265359 +        0.00000000000*t);
      uranus_y_0+=     0.14755311401 * Math.cos( 1.85423292905 +       73.29712585900*t);
      uranus_y_0+=     0.14122904825 * Math.cos( 2.82489928705 +       76.26607127560*t);
      uranus_y_0+=     0.06249939655 * Math.cos( 3.56960238469 +        1.48447270830*t);
      uranus_y_0+=     0.01542607086 * Math.cos( 2.55041543170 +      224.34479570190*t);
      uranus_y_0+=     0.01442293466 * Math.cos( 1.08004535633 +      148.07872442630*t);

      let uranus_y_1=0.0;
      uranus_y_1+=     0.02157902502 * Math.cos( 0.00000000000 +        0.00000000000*t);
      uranus_y_1=uranus_y_1 * t;

      return uranus_y_0+uranus_y_1;
   }

   static uranus_z(t){
      let uranus_z_0=0.0;
      uranus_z_0+=     0.25876996652 * Math.cos( 2.61861278845 +       74.78159856730*t);
      uranus_z_0+=     0.01775471434 * Math.cos( 3.14159265359 +        0.00000000000*t);

      return uranus_z_0;
   }

   static venus_x(t){
      let venus_x_0=0.0;
      venus_x_0+=     0.72211104628 * Math.cos( 3.17575836361 +    10213.28554621100*t);

      return venus_x_0;
   }

   static venus_y(t){
      let venus_y_0=0.0;
      venus_y_0+=     0.72324643689 * Math.cos( 1.60573808356 +    10213.28554621100*t);

      return venus_y_0;
   }

   static venus_z(t){
      let venus_z_0=0.0;
      venus_z_0+=     0.04282979819 * Math.cos( 0.26703856471 +    10213.28554621100*t);

      return venus_z_0;
   }

}
