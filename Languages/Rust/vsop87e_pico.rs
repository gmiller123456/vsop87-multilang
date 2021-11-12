//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

pub fn get_mercury(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=mercury_x(t);
   temp[1]=mercury_y(t);
   temp[2]=mercury_z(t);

   return temp;
}

pub fn get_venus(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=venus_x(t);
   temp[1]=venus_y(t);
   temp[2]=venus_z(t);

   return temp;
}

pub fn get_earth(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=earth_x(t);
   temp[1]=earth_y(t);
   temp[2]=earth_z(t);

   return temp;
}

pub fn get_mars(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=mars_x(t);
   temp[1]=mars_y(t);
   temp[2]=mars_z(t);

   return temp;
}

pub fn get_jupiter(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=jupiter_x(t);
   temp[1]=jupiter_y(t);
   temp[2]=jupiter_z(t);

   return temp;
}

pub fn get_saturn(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=saturn_x(t);
   temp[1]=saturn_y(t);
   temp[2]=saturn_z(t);

   return temp;
}

pub fn get_uranus(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=uranus_x(t);
   temp[1]=uranus_y(t);
   temp[2]=uranus_z(t);

   return temp;
}

pub fn get_neptune(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=neptune_x(t);
   temp[1]=neptune_y(t);
   temp[2]=neptune_z(t);

   return temp;
}

pub fn get_sun(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=sun_x(t);
   temp[1]=sun_y(t);
   temp[2]=sun_z(t);

   return temp;
}

fn venus_z(t: f64) -> f64{
   let mut venus_z_0: f64 = 0.0;

   venus_z_0 +=      0.04282979819 * ( 0.26703856471 +    10213.28554621100*t).cos();
   return venus_z_0;
}

fn venus_y(t: f64) -> f64{
   let mut venus_y_0: f64 = 0.0;

   venus_y_0 +=      0.72324643689 * ( 1.60573808356 +    10213.28554621100*t).cos();
   return venus_y_0;
}

fn venus_x(t: f64) -> f64{
   let mut venus_x_0: f64 = 0.0;

   venus_x_0 +=      0.72211104628 * ( 3.17575836361 +    10213.28554621100*t).cos();
   return venus_x_0;
}

fn uranus_z(t: f64) -> f64{
   let mut uranus_z_0: f64 = 0.0;

   uranus_z_0 +=      0.01775471434 * ( 3.14159265359 +        0.00000000000*t).cos();
   uranus_z_0 +=      0.25876996652 * ( 2.61861278845 +       74.78159856730*t).cos();
   return uranus_z_0;
}

fn uranus_y(t: f64) -> f64{
   let mut uranus_y_1: f64 = 0.0;

   uranus_y_1 +=      0.02157902502 * ( 0.00000000000 +        0.00000000000*t).cos();
   uranus_y_1=uranus_y_1*t;

   let mut uranus_y_0: f64 = 0.0;

   uranus_y_0 +=      0.01442293466 * ( 1.08004535633 +      148.07872442630*t).cos();
   uranus_y_0 +=      0.01542607086 * ( 2.55041543170 +      224.34479570190*t).cos();
   uranus_y_0 +=      0.06249939655 * ( 3.56960238469 +        1.48447270830*t).cos();
   uranus_y_0 +=      0.14122904825 * ( 2.82489928705 +       76.26607127560*t).cos();
   uranus_y_0 +=      0.14755311401 * ( 1.85423292905 +       73.29712585900*t).cos();
   uranus_y_0 +=      0.16222255941 * ( 3.14159265359 +        0.00000000000*t).cos();
   uranus_y_0 +=      0.44388525091 * ( 0.08884126943 +      149.56319713460*t).cos();
   uranus_y_0 +=     19.16434475791 * ( 3.91045677275 +       74.78159856730*t).cos();
   return uranus_y_1+uranus_y_0;
}

fn uranus_x(t: f64) -> f64{
   let mut uranus_x_0: f64 = 0.0;

   uranus_x_0 +=      0.01444153470 * ( 2.65117108186 +      148.07872442630*t).cos();
   uranus_x_0 +=      0.01542890129 * ( 4.12122840701 +      224.34479570190*t).cos();
   uranus_x_0 +=      0.06200970387 * ( 5.14043568284 +        1.48447270830*t).cos();
   uranus_x_0 +=      0.14129215712 * ( 4.39576776954 +       76.26607127560*t).cos();
   uranus_x_0 +=      0.14667584671 * ( 3.42395875589 +       73.29712585900*t).cos();
   uranus_x_0 +=      0.44400556159 * ( 1.65967535182 +      149.56319713460*t).cos();
   uranus_x_0 +=      1.32301898121 * ( 0.00000000000 +        0.00000000000*t).cos();
   uranus_x_0 +=     19.17286937362 * ( 5.48133416758 +       74.78159856730*t).cos();
   return uranus_x_0;
}

fn sun_z(t: f64) -> f64{
   return 0;
}

fn sun_y(t: f64) -> f64{
   return 0;
}

fn sun_x(t: f64) -> f64{
   return 0;
}

fn saturn_z(t: f64) -> f64{
   let mut saturn_z_1: f64 = 0.0;

   saturn_z_1 +=      0.01905958940 * ( 4.94544746619 +      213.29909543800*t).cos();
   saturn_z_1=saturn_z_1*t;

   let mut saturn_z_0: f64 = 0.0;

   saturn_z_0 +=      0.01213097211 * ( 0.00000000000 +        0.00000000000*t).cos();
   saturn_z_0 +=      0.01147953788 * ( 2.85128771957 +      426.59819087600*t).cos();
   saturn_z_0 +=      0.41345140292 * ( 3.60234141893 +      213.29909543800*t).cos();
   return saturn_z_1+saturn_z_0;
}

fn saturn_y(t: f64) -> f64{
   let mut saturn_y_1: f64 = 0.0;

   saturn_y_1 +=      0.02646734779 * ( 3.76132299914 +      220.41264243880*t).cos();
   saturn_y_1 +=      0.02740812928 * ( 4.26667506460 +      206.18554843720*t).cos();
   saturn_y_1 +=      0.03089676414 * ( 2.70347020059 +      426.59819087600*t).cos();
   saturn_y_1 +=      0.05373895252 * ( 0.00000000000 +        0.00000000000*t).cos();
   saturn_y_1=saturn_y_1*t;

   let mut saturn_y_0: f64 = 0.0;

   saturn_y_0 +=      0.01098442011 * ( 4.08609387384 +      639.89728631400*t).cos();
   saturn_y_0 +=      0.01245523800 * ( 0.60375781288 +      110.20632121940*t).cos();
   saturn_y_0 +=      0.01183557497 * ( 1.34637027573 +      419.48464387520*t).cos();
   saturn_y_0 +=      0.02345226948 * ( 0.44652393276 +        7.11354700080*t).cos();
   saturn_y_0 +=      0.06631679200 * ( 5.46258849076 +      220.41264243880*t).cos();
   saturn_y_0 +=      0.06914690347 * ( 2.55279029588 +      206.18554843720*t).cos();
   saturn_y_0 +=      0.26434197609 * ( 4.83528742856 +      426.59819087600*t).cos();
   saturn_y_0 +=      0.79354119271 * ( 3.14159265359 +        0.00000000000*t).cos();
   saturn_y_0 +=      9.52714696877 * ( 5.58600556072 +      213.29909543800*t).cos();
   return saturn_y_1+saturn_y_0;
}

fn saturn_x(t: f64) -> f64{
   let mut saturn_x_1: f64 = 0.0;

   saturn_x_1 +=      0.02642347272 * ( 5.33291950842 +      220.41264243880*t).cos();
   saturn_x_1 +=      0.02714141496 * ( 5.85229546861 +      206.18554843720*t).cos();
   saturn_x_1 +=      0.03084144308 * ( 4.27565898829 +      426.59819087600*t).cos();
   saturn_x_1 +=      0.07573807889 * ( 0.00000000000 +        0.00000000000*t).cos();
   saturn_x_1=saturn_x_1*t;

   let mut saturn_x_0: f64 = 0.0;

   saturn_x_0 +=      0.01097374519 * ( 5.65753938643 +      639.89728631400*t).cos();
   saturn_x_0 +=      0.01115372225 * ( 3.15690865182 +      419.48464387520*t).cos();
   saturn_x_0 +=      0.01255113414 * ( 2.17347170552 +      110.20632121940*t).cos();
   saturn_x_0 +=      0.02335961354 * ( 2.02227905783 +        7.11354700080*t).cos();
   saturn_x_0 +=      0.04274172066 * ( 0.00000000000 +        0.00000000000*t).cos();
   saturn_x_0 +=      0.06622371284 * ( 0.75094738122 +      220.41264243880*t).cos();
   saturn_x_0 +=      0.06758489145 * ( 4.16767544586 +      206.18554843720*t).cos();
   saturn_x_0 +=      0.26404799161 * ( 0.12391580771 +      426.59819087600*t).cos();
   saturn_x_0 +=      9.51366533422 * ( 0.87441380650 +      213.29909543800*t).cos();
   return saturn_x_1+saturn_x_0;
}

fn neptune_z(t: f64) -> f64{
   let mut neptune_z_0: f64 = 0.0;

   neptune_z_0 +=      0.01244825806 * ( 0.00000000000 +        0.00000000000*t).cos();
   neptune_z_0 +=      0.92861252357 * ( 1.44103930199 +       38.13303563780*t).cos();
   return neptune_z_0;
}

fn neptune_y(t: f64) -> f64{
   let mut neptune_y_0: f64 = 0.0;

   neptune_y_0 +=      0.02584389323 * ( 0.42549727257 +        1.48447270830*t).cos();
   neptune_y_0 +=      0.14935398681 * ( 5.79694896309 +       39.61750834610*t).cos();
   neptune_y_0 +=      0.15705776296 * ( 4.82539969469 +       36.64856292950*t).cos();
   neptune_y_0 +=      0.13505308635 * ( 1.92949466968 +       76.26607127560*t).cos();
   neptune_y_0 +=      0.30171988148 * ( 3.14159265359 +        0.00000000000*t).cos();
   neptune_y_0 +=     30.05900907352 * ( 3.74086294715 +       38.13303563780*t).cos();
   return neptune_y_0;
}

fn neptune_x(t: f64) -> f64{
   let mut neptune_x_0: f64 = 0.0;

   neptune_x_0 +=      0.02597449604 * ( 1.99590330725 +        1.48447270830*t).cos();
   neptune_x_0 +=      0.14934353052 * ( 1.08499398649 +       39.61750834610*t).cos();
   neptune_x_0 +=      0.15725280871 * ( 0.11319072402 +       36.64856292950*t).cos();
   neptune_x_0 +=      0.13504578270 * ( 3.50075407055 +       76.26607127560*t).cos();
   neptune_x_0 +=      0.27050789973 * ( 3.14159265359 +        0.00000000000*t).cos();
   neptune_x_0 +=     30.05734568801 * ( 5.31211340030 +       38.13303563780*t).cos();
   return neptune_x_0;
}

fn mercury_z(t: f64) -> f64{
   let mut mercury_z_0: f64 = 0.0;

   mercury_z_0 +=      0.04607664562 * ( 1.99295081967 +    26087.90314157420*t).cos();
   return mercury_z_0;
}

fn mercury_y(t: f64) -> f64{
   let mut mercury_y_0: f64 = 0.0;

   mercury_y_0 +=      0.03854667576 * ( 5.88780608961 +    52175.80628314840*t).cos();
   mercury_y_0 +=      0.11592262295 * ( 3.14159265359 +        0.00000000000*t).cos();
   mercury_y_0 +=      0.37953636588 * ( 2.83780617821 +    26087.90314157420*t).cos();
   return mercury_y_0;
}

fn mercury_x(t: f64) -> f64{
   let mut mercury_x_0: f64 = 0.0;

   mercury_x_0 +=      0.02596241714 * ( 3.14159265359 +        0.00000000000*t).cos();
   mercury_x_0 +=      0.03825746037 * ( 1.16485604343 +    52175.80628314840*t).cos();
   mercury_x_0 +=      0.37546285495 * ( 4.39651506942 +    26087.90314157420*t).cos();
   return mercury_x_0;
}

fn mars_z(t: f64) -> f64{
   let mut mars_z_0: f64 = 0.0;

   mars_z_0 +=      0.04901205639 * ( 3.76712324293 +     3340.61242669980*t).cos();
   return mars_z_0;
}

fn mars_y(t: f64) -> f64{
   let mut mars_y_1: f64 = 0.0;

   mars_y_1 +=      0.01427318093 * ( 3.14159265359 +        0.00000000000*t).cos();
   mars_y_1=mars_y_1*t;

   let mut mars_y_0: f64 = 0.0;

   mars_y_0 +=      0.08689350637 * ( 0.00000000000 +        0.00000000000*t).cos();
   mars_y_0 +=      0.07064547959 * ( 4.97051892898 +     6681.22485339960*t).cos();
   mars_y_0 +=      1.51558927367 * ( 4.63212206588 +     3340.61242669980*t).cos();
   return mars_y_1+mars_y_0;
}

fn mars_x(t: f64) -> f64{
   let mut mars_x_0: f64 = 0.0;

   mars_x_0 +=      0.07070917372 * ( 0.25870338552 +     6681.22485339960*t).cos();
   mars_x_0 +=      0.19473570996 * ( 3.14159265359 +        0.00000000000*t).cos();
   mars_x_0 +=      1.51769887405 * ( 6.20403346548 +     3340.61242669980*t).cos();
   return mars_x_0;
}

fn jupiter_z(t: f64) -> f64{
   let mut jupiter_z_0: f64 = 0.0;

   jupiter_z_0 +=      0.11811822789 * ( 3.55844641987 +      529.69096509460*t).cos();
   return jupiter_z_0;
}

fn jupiter_y(t: f64) -> f64{
   let mut jupiter_y_1: f64 = 0.0;

   jupiter_y_1 +=      0.01694792137 * ( 3.14159265359 +        0.00000000000*t).cos();
   jupiter_y_1=jupiter_y_1*t;

   let mut jupiter_y_0: f64 = 0.0;

   jupiter_y_0 +=      0.01474403395 * ( 2.04679547637 +      536.80451209540*t).cos();
   jupiter_y_0 +=      0.01506838468 * ( 5.43934599781 +      522.57741809380*t).cos();
   jupiter_y_0 +=      0.09329801081 * ( 3.14159265359 +        0.00000000000*t).cos();
   jupiter_y_0 +=      0.12580850775 * ( 5.66160225641 +     1059.38193018920*t).cos();
   jupiter_y_0 +=      5.19024510371 * ( 5.31203160043 +      529.69096509460*t).cos();
   return jupiter_y_1+jupiter_y_0;
}

fn jupiter_x(t: f64) -> f64{
   let mut jupiter_x_0: f64 = 0.0;

   jupiter_x_0 +=      0.01474818211 * ( 3.61736901402 +      536.80451209540*t).cos();
   jupiter_x_0 +=      0.01499237862 * ( 0.73175554601 +      522.57741809380*t).cos();
   jupiter_x_0 +=      0.12581924842 * ( 0.94911581432 +     1059.38193018920*t).cos();
   jupiter_x_0 +=      0.36633268070 * ( 3.14159265359 +        0.00000000000*t).cos();
   jupiter_x_0 +=      5.19167797375 * ( 0.59945079482 +      529.69096509460*t).cos();
   return jupiter_x_0;
}

fn earth_z(t: f64) -> f64{
   return 0;
}

fn earth_y(t: f64) -> f64{
   let mut earth_y_0: f64 = 0.0;

   earth_y_0 +=      0.02408829501 * ( 3.14159265359 +        0.00000000000*t).cos();
   earth_y_0 +=      0.99988907017 * ( 0.18265890456 +     6283.07584999140*t).cos();
   return earth_y_0;
}

fn earth_x(t: f64) -> f64{
   let mut earth_x_0: f64 = 0.0;

   earth_x_0 +=      0.99982624851 * ( 1.75348568475 +     6283.07584999140*t).cos();
   return earth_x_0;
}

