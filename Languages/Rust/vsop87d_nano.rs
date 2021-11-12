//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

pub fn get_mercury(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=mercury_l(t);
   temp[1]=mercury_b(t);
   temp[2]=mercury_r(t);

   return temp;
}

pub fn get_venus(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=venus_l(t);
   temp[1]=venus_b(t);
   temp[2]=venus_r(t);

   return temp;
}

pub fn get_earth(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=earth_l(t);
   temp[1]=earth_b(t);
   temp[2]=earth_r(t);

   return temp;
}

pub fn get_mars(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=mars_l(t);
   temp[1]=mars_b(t);
   temp[2]=mars_r(t);

   return temp;
}

pub fn get_jupiter(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=jupiter_l(t);
   temp[1]=jupiter_b(t);
   temp[2]=jupiter_r(t);

   return temp;
}

pub fn get_saturn(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=saturn_l(t);
   temp[1]=saturn_b(t);
   temp[2]=saturn_r(t);

   return temp;
}

pub fn get_uranus(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=uranus_l(t);
   temp[1]=uranus_b(t);
   temp[2]=uranus_r(t);

   return temp;
}

pub fn get_neptune(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=neptune_l(t);
   temp[1]=neptune_b(t);
   temp[2]=neptune_r(t);

   return temp;
}

fn venus_r(t: f64) -> f64{
   let mut venus_r_0: f64 = 0.0;

   venus_r_0 +=      0.00489824185 * ( 4.02151832268 +    10213.28554621100*t).cos();
   venus_r_0 +=      0.72334820905 * ( 0.00000000000 +        0.00000000000*t).cos();
   return venus_r_0;
}

fn venus_b(t: f64) -> f64{
   let mut venus_b_1: f64 = 0.0;

   venus_b_1 +=      0.00513347602 * ( 1.80364310797 +    10213.28554621100*t).cos();
   venus_b_1=venus_b_1*t;

   let mut venus_b_0: f64 = 0.0;

   venus_b_0 +=      0.05923638472 * ( 0.26702775813 +    10213.28554621100*t).cos();
   return venus_b_1+venus_b_0;
}

fn venus_l(t: f64) -> f64{
   let mut venus_l_1: f64 = 0.0;

   venus_l_1 +=  10213.52943052898 * ( 0.00000000000 +        0.00000000000*t).cos();
   venus_l_1=venus_l_1*t;

   let mut venus_l_0: f64 = 0.0;

   venus_l_0 +=      0.01353968419 * ( 5.59313319619 +    10213.28554621100*t).cos();
   venus_l_0 +=      3.17614666774 * ( 0.00000000000 +        0.00000000000*t).cos();
   return venus_l_1+venus_l_0;
}

fn uranus_r(t: f64) -> f64{
   let mut uranus_r_1: f64 = 0.0;

   uranus_r_1 +=      0.01479896370 * ( 3.67205705317 +       74.78159856730*t).cos();
   uranus_r_1=uranus_r_1*t;

   let mut uranus_r_0: f64 = 0.0;

   uranus_r_0 +=      0.00143705902 * ( 1.38368574483 +       11.04570026390*t).cos();
   uranus_r_0 +=      0.00161858251 * ( 2.79137863469 +      148.07872442630*t).cos();
   uranus_r_0 +=      0.00190521915 * ( 1.99809364502 +        1.48447270830*t).cos();
   uranus_r_0 +=      0.00243508222 * ( 1.57086595074 +       71.81265315070*t).cos();
   uranus_r_0 +=      0.00338525522 * ( 1.58002682946 +      138.51749687070*t).cos();
   uranus_r_0 +=      0.00496404171 * ( 1.40139934716 +      454.90936652730*t).cos();
   uranus_r_0 +=      0.00602248144 * ( 3.86003820462 +       63.73589830340*t).cos();
   uranus_r_0 +=      0.00649321851 * ( 4.52247298119 +       76.26607127560*t).cos();
   uranus_r_0 +=      0.02055653495 * ( 1.78295170028 +      149.56319713460*t).cos();
   uranus_r_0 +=      0.03440835545 * ( 0.32836098991 +       73.29712585900*t).cos();
   uranus_r_0 +=      0.88784984055 * ( 5.60377526994 +       74.78159856730*t).cos();
   uranus_r_0 +=     19.21264847881 * ( 0.00000000000 +        0.00000000000*t).cos();
   return uranus_r_1+uranus_r_0;
}

fn uranus_b(t: f64) -> f64{
   let mut uranus_b_1: f64 = 0.0;

   uranus_b_1 +=      0.00206366162 * ( 4.12394311407 +       74.78159856730*t).cos();
   uranus_b_1=uranus_b_1*t;

   let mut uranus_b_0: f64 = 0.0;

   uranus_b_0 +=      0.01346277639 * ( 2.61877810545 +       74.78159856730*t).cos();
   return uranus_b_1+uranus_b_0;
}

fn uranus_l(t: f64) -> f64{
   let mut uranus_l_1: f64 = 0.0;

   uranus_l_1 +=      0.00154458244 * ( 5.24201658072 +       74.78159856730*t).cos();
   uranus_l_1 +=     75.02543121646 * ( 0.00000000000 +        0.00000000000*t).cos();
   uranus_l_1=uranus_l_1*t;

   let mut uranus_l_0: f64 = 0.0;

   uranus_l_0 +=      0.00272328132 * ( 3.35823710524 +      149.56319713460*t).cos();
   uranus_l_0 +=      0.00365981718 * ( 1.89962189068 +       73.29712585900*t).cos();
   uranus_l_0 +=      0.01504247826 * ( 3.62719262195 +        1.48447270830*t).cos();
   uranus_l_0 +=      0.09260408252 * ( 0.89106421530 +       74.78159856730*t).cos();
   uranus_l_0 +=      5.48129294299 * ( 0.00000000000 +        0.00000000000*t).cos();
   return uranus_l_1+uranus_l_0;
}

fn saturn_r(t: f64) -> f64{
   let mut saturn_r_2: f64 = 0.0;

   saturn_r_2 +=      0.00436902464 * ( 4.78671673044 +      213.29909543800*t).cos();
   saturn_r_2=saturn_r_2*t*t;

   let mut saturn_r_1: f64 = 0.0;

   saturn_r_1 +=      0.00143891176 * ( 1.40744864239 +        7.11354700080*t).cos();
   saturn_r_1 +=      0.00186261540 * ( 3.14159265359 +        0.00000000000*t).cos();
   saturn_r_1 +=      0.00188491375 * ( 0.47215719444 +      220.41264243880*t).cos();
   saturn_r_1 +=      0.00341394136 * ( 5.79635773960 +      426.59819087600*t).cos();
   saturn_r_1 +=      0.00506577574 * ( 0.71114650941 +      206.18554843720*t).cos();
   saturn_r_1 +=      0.06182981282 * ( 0.25843515034 +      213.29909543800*t).cos();
   saturn_r_1=saturn_r_1*t;

   let mut saturn_r_0: f64 = 0.0;

   saturn_r_0 +=      0.00108974737 * ( 3.29313595577 +      110.20632121940*t).cos();
   saturn_r_0 +=      0.00140617548 * ( 5.70406652991 +      632.78373931320*t).cos();
   saturn_r_0 +=      0.00361778433 * ( 3.13904303264 +        7.11354700080*t).cos();
   saturn_r_0 +=      0.00371684449 * ( 2.27114833428 +      220.41264243880*t).cos();
   saturn_r_0 +=      0.00547506899 * ( 5.01532628454 +      103.09277421860*t).cos();
   saturn_r_0 +=      0.00821891059 * ( 5.93520025371 +      316.39186965660*t).cos();
   saturn_r_0 +=      0.01464663959 * ( 1.64763045468 +      426.59819087600*t).cos();
   saturn_r_0 +=      0.01873679934 * ( 5.23549605091 +      206.18554843720*t).cos();
   saturn_r_0 +=      0.52921382465 * ( 2.39226219733 +      213.29909543800*t).cos();
   saturn_r_0 +=      9.55758135801 * ( 0.00000000000 +        0.00000000000*t).cos();
   return saturn_r_2+saturn_r_1+saturn_r_0;
}

fn saturn_b(t: f64) -> f64{
   let mut saturn_b_1: f64 = 0.0;

   saturn_b_1 +=      0.00397554998 * ( 5.33289992556 +      213.29909543800*t).cos();
   saturn_b_1=saturn_b_1*t;

   let mut saturn_b_0: f64 = 0.0;

   saturn_b_0 +=      0.00240348303 * ( 2.85238489390 +      426.59819087600*t).cos();
   saturn_b_0 +=      0.04330678040 * ( 3.60284428399 +      213.29909543800*t).cos();
   return saturn_b_1+saturn_b_0;
}

fn saturn_l(t: f64) -> f64{
   let mut saturn_l_2: f64 = 0.0;

   saturn_l_2 +=      0.00116441181 * ( 1.17987850633 +        7.11354700080*t).cos();
   saturn_l_2=saturn_l_2*t*t;

   let mut saturn_l_1: f64 = 0.0;

   saturn_l_1 +=      0.00107678770 * ( 2.27769911872 +      206.18554843720*t).cos();
   saturn_l_1 +=      0.00564347566 * ( 2.88500136429 +        7.11354700080*t).cos();
   saturn_l_1 +=      0.01296855005 * ( 1.82820544701 +      213.29909543800*t).cos();
   saturn_l_1 +=    213.54295595986 * ( 0.00000000000 +        0.00000000000*t).cos();
   saturn_l_1=saturn_l_1*t;

   let mut saturn_l_0: f64 = 0.0;

   saturn_l_0 +=      0.00206816296 * ( 0.24658366938 +      103.09277421860*t).cos();
   saturn_l_0 +=      0.00350769223 * ( 3.30329903015 +      426.59819087600*t).cos();
   saturn_l_0 +=      0.00398379386 * ( 0.52112025957 +      206.18554843720*t).cos();
   saturn_l_0 +=      0.01414150958 * ( 4.58581515873 +        7.11354700080*t).cos();
   saturn_l_0 +=      0.11107659780 * ( 3.96205090194 +      213.29909543800*t).cos();
   saturn_l_0 +=      0.87401354029 * ( 0.00000000000 +        0.00000000000*t).cos();
   return saturn_l_2+saturn_l_1+saturn_l_0;
}

fn neptune_r(t: f64) -> f64{
   let mut neptune_r_1: f64 = 0.0;

   neptune_r_1 +=      0.00236338502 * ( 0.70498011235 +       38.13303563780*t).cos();
   neptune_r_1=neptune_r_1*t;

   let mut neptune_r_0: f64 = 0.0;

   neptune_r_0 +=      0.00100895397 * ( 0.37702748681 +       73.29712585900*t).cos();
   neptune_r_0 +=      0.00121801825 * ( 5.79754444303 +       76.26607127560*t).cos();
   neptune_r_0 +=      0.00135134095 * ( 3.37220607384 +       39.61750834610*t).cos();
   neptune_r_0 +=      0.00274571970 * ( 1.84552256801 +      175.16605980020*t).cos();
   neptune_r_0 +=      0.00495725642 * ( 1.57105654815 +      491.55792945680*t).cos();
   neptune_r_0 +=      0.00537760613 * ( 4.52113902845 +       35.16409022120*t).cos();
   neptune_r_0 +=      0.00807830737 * ( 5.18592836167 +        1.48447270830*t).cos();
   neptune_r_0 +=      0.01691764281 * ( 3.25186138896 +       36.64856292950*t).cos();
   neptune_r_0 +=      0.27062259490 * ( 1.32999458930 +       38.13303563780*t).cos();
   neptune_r_0 +=     30.07013206102 * ( 0.00000000000 +        0.00000000000*t).cos();
   return neptune_r_1+neptune_r_0;
}

fn neptune_b(t: f64) -> f64{
   let mut neptune_b_1: f64 = 0.0;

   neptune_b_1 +=      0.00227279214 * ( 3.80793089870 +       38.13303563780*t).cos();
   neptune_b_1=neptune_b_1*t;

   let mut neptune_b_0: f64 = 0.0;

   neptune_b_0 +=      0.03088622933 * ( 1.44104372626 +       38.13303563780*t).cos();
   return neptune_b_1+neptune_b_0;
}

fn neptune_l(t: f64) -> f64{
   let mut neptune_l_1: f64 = 0.0;

   neptune_l_1 +=     38.37687716731 * ( 0.00000000000 +        0.00000000000*t).cos();
   neptune_l_1=neptune_l_1*t;

   let mut neptune_l_0: f64 = 0.0;

   neptune_l_0 +=      0.00124531845 * ( 4.83008090682 +       36.64856292950*t).cos();
   neptune_l_0 +=      0.01019727662 * ( 0.48580923660 +        1.48447270830*t).cos();
   neptune_l_0 +=      0.01798475509 * ( 2.90101273050 +       38.13303563780*t).cos();
   neptune_l_0 +=      5.31188633047 * ( 0.00000000000 +        0.00000000000*t).cos();
   return neptune_l_1+neptune_l_0;
}

fn mercury_r(t: f64) -> f64{
   let mut mercury_r_1: f64 = 0.0;

   mercury_r_1 +=      0.00217347739 * ( 4.65617158663 +    26087.90314157420*t).cos();
   mercury_r_1=mercury_r_1*t;

   let mut mercury_r_0: f64 = 0.0;

   mercury_r_0 +=      0.00121281763 * ( 6.01064153805 +    78263.70942472259*t).cos();
   mercury_r_0 +=      0.00795525557 * ( 2.95989690096 +    52175.80628314840*t).cos();
   mercury_r_0 +=      0.07834131817 * ( 6.19233722599 +    26087.90314157420*t).cos();
   mercury_r_0 +=      0.39528271652 * ( 0.00000000000 +        0.00000000000*t).cos();
   return mercury_r_1+mercury_r_0;
}

fn mercury_b(t: f64) -> f64{
   let mut mercury_b_1: f64 = 0.0;

   mercury_b_1 +=      0.00146233668 * ( 3.14159265359 +        0.00000000000*t).cos();
   mercury_b_1 +=      0.00429151362 * ( 3.50169780393 +    26087.90314157420*t).cos();
   mercury_b_1=mercury_b_1*t;

   let mut mercury_b_0: f64 = 0.0;

   mercury_b_0 +=      0.00129778770 * ( 4.83232503961 +   104351.61256629678*t).cos();
   mercury_b_0 +=      0.00543251810 * ( 1.79644363963 +    78263.70942472259*t).cos();
   mercury_b_0 +=      0.01222839532 * ( 3.14159265359 +        0.00000000000*t).cos();
   mercury_b_0 +=      0.02388076996 * ( 5.03738959685 +    52175.80628314840*t).cos();
   mercury_b_0 +=      0.11737528962 * ( 1.98357498767 +    26087.90314157420*t).cos();
   return mercury_b_1+mercury_b_0;
}

fn mercury_l(t: f64) -> f64{
   let mut mercury_l_1: f64 = 0.0;

   mercury_l_1 +=      0.00303471395 * ( 3.05565472363 +    52175.80628314840*t).cos();
   mercury_l_1 +=      0.01126007832 * ( 6.21703970996 +    26087.90314157420*t).cos();
   mercury_l_1 +=  26088.14706222746 * ( 0.00000000000 +        0.00000000000*t).cos();
   mercury_l_1=mercury_l_1*t;

   let mut mercury_l_0: f64 = 0.0;

   mercury_l_0 +=      0.00165590362 * ( 4.11969163181 +   104351.61256629678*t).cos();
   mercury_l_0 +=      0.00855346843 * ( 1.16520322351 +    78263.70942472259*t).cos();
   mercury_l_0 +=      0.05046294199 * ( 4.47785489540 +    52175.80628314840*t).cos();
   mercury_l_0 +=      0.40989414976 * ( 1.48302034194 +    26087.90314157420*t).cos();
   mercury_l_0 +=      4.40250710144 * ( 0.00000000000 +        0.00000000000*t).cos();
   return mercury_l_1+mercury_l_0;
}

fn mars_r(t: f64) -> f64{
   let mut mars_r_1: f64 = 0.0;

   mars_r_1 +=      0.00103175886 * ( 2.37071845682 +     6681.22485339960*t).cos();
   mars_r_1 +=      0.01107433340 * ( 2.03250524950 +     3340.61242669980*t).cos();
   mars_r_1=mars_r_1*t;

   let mut mars_r_0: f64 = 0.0;

   mars_r_0 +=      0.00660776357 * ( 3.81783442097 +     6681.22485339960*t).cos();
   mars_r_0 +=      0.14184953153 * ( 3.47971283519 +     3340.61242669980*t).cos();
   mars_r_0 +=      1.53033488276 * ( 0.00000000000 +        0.00000000000*t).cos();
   return mars_r_1+mars_r_0;
}

fn mars_b(t: f64) -> f64{
   let mut mars_b_1: f64 = 0.0;

   mars_b_1 +=      0.00350068845 * ( 5.36847836211 +     3340.61242669980*t).cos();
   mars_b_1=mars_b_1*t;

   let mut mars_b_0: f64 = 0.0;

   mars_b_0 +=      0.00289104742 * ( 0.00000000000 +        0.00000000000*t).cos();
   mars_b_0 +=      0.00298033234 * ( 4.10616996243 +     6681.22485339960*t).cos();
   mars_b_0 +=      0.03197134986 * ( 3.76832042432 +     3340.61242669980*t).cos();
   return mars_b_1+mars_b_0;
}

fn mars_l(t: f64) -> f64{
   let mut mars_l_1: f64 = 0.0;

   mars_l_1 +=      0.00164901343 * ( 3.92631250962 +     6681.22485339960*t).cos();
   mars_l_1 +=      0.01458227051 * ( 3.60426053609 +     3340.61242669980*t).cos();
   mars_l_1 +=   3340.85627474342 * ( 0.00000000000 +        0.00000000000*t).cos();
   mars_l_1=mars_l_1*t;

   let mut mars_l_0: f64 = 0.0;

   mars_l_0 +=      0.01108216792 * ( 5.40099836958 +     6681.22485339960*t).cos();
   mars_l_0 +=      0.18656368100 * ( 5.05037100303 +     3340.61242669980*t).cos();
   mars_l_0 +=      6.20347711583 * ( 0.00000000000 +        0.00000000000*t).cos();
   return mars_l_1+mars_l_0;
}

fn jupiter_r(t: f64) -> f64{
   let mut jupiter_r_1: f64 = 0.0;

   jupiter_r_1 +=      0.01271801596 * ( 2.64937511122 +      529.69096509460*t).cos();
   jupiter_r_1=jupiter_r_1*t;

   let mut jupiter_r_0: f64 = 0.0;

   jupiter_r_0 +=      0.00187647391 * ( 2.07590380082 +      522.57741809380*t).cos();
   jupiter_r_0 +=      0.00282029465 * ( 2.57419879933 +      632.78373931320*t).cos();
   jupiter_r_0 +=      0.00610599902 * ( 3.84115365602 +     1059.38193018920*t).cos();
   jupiter_r_0 +=      0.25209327020 * ( 3.49108640015 +      529.69096509460*t).cos();
   jupiter_r_0 +=      5.20887429471 * ( 0.00000000000 +        0.00000000000*t).cos();
   return jupiter_r_1+jupiter_r_0;
}

fn jupiter_b(t: f64) -> f64{
   let mut jupiter_b_1: f64 = 0.0;

   jupiter_b_1 +=      0.00177351787 * ( 5.70166488486 +      529.69096509460*t).cos();
   jupiter_b_1=jupiter_b_1*t;

   let mut jupiter_b_0: f64 = 0.0;

   jupiter_b_0 +=      0.00110090358 * ( 0.00000000000 +        0.00000000000*t).cos();
   jupiter_b_0 +=      0.00109971634 * ( 3.90809347389 +     1059.38193018920*t).cos();
   jupiter_b_0 +=      0.02268615703 * ( 3.55852606718 +      529.69096509460*t).cos();
   return jupiter_b_1+jupiter_b_0;
}

fn jupiter_l(t: f64) -> f64{
   let mut jupiter_l_1: f64 = 0.0;

   jupiter_l_1 +=      0.00228918538 * ( 6.02647464016 +        7.11354700080*t).cos();
   jupiter_l_1 +=      0.00489741194 * ( 4.22066689928 +      529.69096509460*t).cos();
   jupiter_l_1 +=    529.93480757497 * ( 0.00000000000 +        0.00000000000*t).cos();
   jupiter_l_1=jupiter_l_1*t;

   let mut jupiter_l_0: f64 = 0.0;

   jupiter_l_0 +=      0.00306389180 * ( 5.41734729976 +     1059.38193018920*t).cos();
   jupiter_l_0 +=      0.00573610145 * ( 1.44406205976 +        7.11354700080*t).cos();
   jupiter_l_0 +=      0.09695898711 * ( 5.06191793105 +      529.69096509460*t).cos();
   jupiter_l_0 +=      0.59954691495 * ( 0.00000000000 +        0.00000000000*t).cos();
   return jupiter_l_1+jupiter_l_0;
}

fn earth_r(t: f64) -> f64{
   let mut earth_r_1: f64 = 0.0;

   earth_r_1 +=      0.00103018608 * ( 1.10748969588 +     6283.07584999140*t).cos();
   earth_r_1=earth_r_1*t;

   let mut earth_r_0: f64 = 0.0;

   earth_r_0 +=      0.01670699626 * ( 3.09846350771 +     6283.07584999140*t).cos();
   earth_r_0 +=      1.00013988799 * ( 0.00000000000 +        0.00000000000*t).cos();
   return earth_r_1+earth_r_0;
}

fn earth_b(t: f64) -> f64{
   return 0;
}

fn earth_l(t: f64) -> f64{
   let mut earth_l_1: f64 = 0.0;

   earth_l_1 +=      0.00206058863 * ( 2.67823455584 +     6283.07584999140*t).cos();
   earth_l_1 +=   6283.31966747491 * ( 0.00000000000 +        0.00000000000*t).cos();
   earth_l_1=earth_l_1*t;

   let mut earth_l_0: f64 = 0.0;

   earth_l_0 +=      0.03341656456 * ( 4.66925680417 +     6283.07584999140*t).cos();
   earth_l_0 +=      1.75347045673 * ( 0.00000000000 +        0.00000000000*t).cos();
   return earth_l_1+earth_l_0;
}

