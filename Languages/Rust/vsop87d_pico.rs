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

   venus_r_0 +=      0.72334820905 * ( 0.00000000000 +        0.00000000000*t).cos();
   return venus_r_0;
}

fn venus_b(t: f64) -> f64{
   let mut venus_b_0: f64 = 0.0;

   venus_b_0 +=      0.05923638472 * ( 0.26702775813 +    10213.28554621100*t).cos();
   return venus_b_0;
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

   uranus_r_0 +=      0.02055653495 * ( 1.78295170028 +      149.56319713460*t).cos();
   uranus_r_0 +=      0.03440835545 * ( 0.32836098991 +       73.29712585900*t).cos();
   uranus_r_0 +=      0.88784984055 * ( 5.60377526994 +       74.78159856730*t).cos();
   uranus_r_0 +=     19.21264847881 * ( 0.00000000000 +        0.00000000000*t).cos();
   return uranus_r_1+uranus_r_0;
}

fn uranus_b(t: f64) -> f64{
   let mut uranus_b_0: f64 = 0.0;

   uranus_b_0 +=      0.01346277639 * ( 2.61877810545 +       74.78159856730*t).cos();
   return uranus_b_0;
}

fn uranus_l(t: f64) -> f64{
   let mut uranus_l_1: f64 = 0.0;

   uranus_l_1 +=     75.02543121646 * ( 0.00000000000 +        0.00000000000*t).cos();
   uranus_l_1=uranus_l_1*t;

   let mut uranus_l_0: f64 = 0.0;

   uranus_l_0 +=      0.01504247826 * ( 3.62719262195 +        1.48447270830*t).cos();
   uranus_l_0 +=      0.09260408252 * ( 0.89106421530 +       74.78159856730*t).cos();
   uranus_l_0 +=      5.48129294299 * ( 0.00000000000 +        0.00000000000*t).cos();
   return uranus_l_1+uranus_l_0;
}

fn saturn_r(t: f64) -> f64{
   let mut saturn_r_1: f64 = 0.0;

   saturn_r_1 +=      0.06182981282 * ( 0.25843515034 +      213.29909543800*t).cos();
   saturn_r_1=saturn_r_1*t;

   let mut saturn_r_0: f64 = 0.0;

   saturn_r_0 +=      0.01464663959 * ( 1.64763045468 +      426.59819087600*t).cos();
   saturn_r_0 +=      0.01873679934 * ( 5.23549605091 +      206.18554843720*t).cos();
   saturn_r_0 +=      0.52921382465 * ( 2.39226219733 +      213.29909543800*t).cos();
   saturn_r_0 +=      9.55758135801 * ( 0.00000000000 +        0.00000000000*t).cos();
   return saturn_r_1+saturn_r_0;
}

fn saturn_b(t: f64) -> f64{
   let mut saturn_b_0: f64 = 0.0;

   saturn_b_0 +=      0.04330678040 * ( 3.60284428399 +      213.29909543800*t).cos();
   return saturn_b_0;
}

fn saturn_l(t: f64) -> f64{
   let mut saturn_l_1: f64 = 0.0;

   saturn_l_1 +=      0.01296855005 * ( 1.82820544701 +      213.29909543800*t).cos();
   saturn_l_1 +=    213.54295595986 * ( 0.00000000000 +        0.00000000000*t).cos();
   saturn_l_1=saturn_l_1*t;

   let mut saturn_l_0: f64 = 0.0;

   saturn_l_0 +=      0.01414150958 * ( 4.58581515873 +        7.11354700080*t).cos();
   saturn_l_0 +=      0.11107659780 * ( 3.96205090194 +      213.29909543800*t).cos();
   saturn_l_0 +=      0.87401354029 * ( 0.00000000000 +        0.00000000000*t).cos();
   return saturn_l_1+saturn_l_0;
}

fn neptune_r(t: f64) -> f64{
   let mut neptune_r_0: f64 = 0.0;

   neptune_r_0 +=      0.01691764281 * ( 3.25186138896 +       36.64856292950*t).cos();
   neptune_r_0 +=      0.27062259490 * ( 1.32999458930 +       38.13303563780*t).cos();
   neptune_r_0 +=     30.07013206102 * ( 0.00000000000 +        0.00000000000*t).cos();
   return neptune_r_0;
}

fn neptune_b(t: f64) -> f64{
   let mut neptune_b_0: f64 = 0.0;

   neptune_b_0 +=      0.03088622933 * ( 1.44104372626 +       38.13303563780*t).cos();
   return neptune_b_0;
}

fn neptune_l(t: f64) -> f64{
   let mut neptune_l_1: f64 = 0.0;

   neptune_l_1 +=     38.37687716731 * ( 0.00000000000 +        0.00000000000*t).cos();
   neptune_l_1=neptune_l_1*t;

   let mut neptune_l_0: f64 = 0.0;

   neptune_l_0 +=      0.01019727662 * ( 0.48580923660 +        1.48447270830*t).cos();
   neptune_l_0 +=      0.01798475509 * ( 2.90101273050 +       38.13303563780*t).cos();
   neptune_l_0 +=      5.31188633047 * ( 0.00000000000 +        0.00000000000*t).cos();
   return neptune_l_1+neptune_l_0;
}

fn mercury_r(t: f64) -> f64{
   let mut mercury_r_0: f64 = 0.0;

   mercury_r_0 +=      0.07834131817 * ( 6.19233722599 +    26087.90314157420*t).cos();
   mercury_r_0 +=      0.39528271652 * ( 0.00000000000 +        0.00000000000*t).cos();
   return mercury_r_0;
}

fn mercury_b(t: f64) -> f64{
   let mut mercury_b_0: f64 = 0.0;

   mercury_b_0 +=      0.01222839532 * ( 3.14159265359 +        0.00000000000*t).cos();
   mercury_b_0 +=      0.02388076996 * ( 5.03738959685 +    52175.80628314840*t).cos();
   mercury_b_0 +=      0.11737528962 * ( 1.98357498767 +    26087.90314157420*t).cos();
   return mercury_b_0;
}

fn mercury_l(t: f64) -> f64{
   let mut mercury_l_1: f64 = 0.0;

   mercury_l_1 +=      0.01126007832 * ( 6.21703970996 +    26087.90314157420*t).cos();
   mercury_l_1 +=  26088.14706222746 * ( 0.00000000000 +        0.00000000000*t).cos();
   mercury_l_1=mercury_l_1*t;

   let mut mercury_l_0: f64 = 0.0;

   mercury_l_0 +=      0.05046294199 * ( 4.47785489540 +    52175.80628314840*t).cos();
   mercury_l_0 +=      0.40989414976 * ( 1.48302034194 +    26087.90314157420*t).cos();
   mercury_l_0 +=      4.40250710144 * ( 0.00000000000 +        0.00000000000*t).cos();
   return mercury_l_1+mercury_l_0;
}

fn mars_r(t: f64) -> f64{
   let mut mars_r_1: f64 = 0.0;

   mars_r_1 +=      0.01107433340 * ( 2.03250524950 +     3340.61242669980*t).cos();
   mars_r_1=mars_r_1*t;

   let mut mars_r_0: f64 = 0.0;

   mars_r_0 +=      0.14184953153 * ( 3.47971283519 +     3340.61242669980*t).cos();
   mars_r_0 +=      1.53033488276 * ( 0.00000000000 +        0.00000000000*t).cos();
   return mars_r_1+mars_r_0;
}

fn mars_b(t: f64) -> f64{
   let mut mars_b_0: f64 = 0.0;

   mars_b_0 +=      0.03197134986 * ( 3.76832042432 +     3340.61242669980*t).cos();
   return mars_b_0;
}

fn mars_l(t: f64) -> f64{
   let mut mars_l_1: f64 = 0.0;

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

   jupiter_r_0 +=      0.25209327020 * ( 3.49108640015 +      529.69096509460*t).cos();
   jupiter_r_0 +=      5.20887429471 * ( 0.00000000000 +        0.00000000000*t).cos();
   return jupiter_r_1+jupiter_r_0;
}

fn jupiter_b(t: f64) -> f64{
   let mut jupiter_b_0: f64 = 0.0;

   jupiter_b_0 +=      0.02268615703 * ( 3.55852606718 +      529.69096509460*t).cos();
   return jupiter_b_0;
}

fn jupiter_l(t: f64) -> f64{
   let mut jupiter_l_1: f64 = 0.0;

   jupiter_l_1 +=    529.93480757497 * ( 0.00000000000 +        0.00000000000*t).cos();
   jupiter_l_1=jupiter_l_1*t;

   let mut jupiter_l_0: f64 = 0.0;

   jupiter_l_0 +=      0.09695898711 * ( 5.06191793105 +      529.69096509460*t).cos();
   jupiter_l_0 +=      0.59954691495 * ( 0.00000000000 +        0.00000000000*t).cos();
   return jupiter_l_1+jupiter_l_0;
}

fn earth_r(t: f64) -> f64{
   let mut earth_r_0: f64 = 0.0;

   earth_r_0 +=      0.01670699626 * ( 3.09846350771 +     6283.07584999140*t).cos();
   earth_r_0 +=      1.00013988799 * ( 0.00000000000 +        0.00000000000*t).cos();
   return earth_r_0;
}

fn earth_b(t: f64) -> f64{
   return 0;
}

fn earth_l(t: f64) -> f64{
   let mut earth_l_1: f64 = 0.0;

   earth_l_1 +=   6283.31966747491 * ( 0.00000000000 +        0.00000000000*t).cos();
   earth_l_1=earth_l_1*t;

   let mut earth_l_0: f64 = 0.0;

   earth_l_0 +=      0.03341656456 * ( 4.66925680417 +     6283.07584999140*t).cos();
   earth_l_0 +=      1.75347045673 * ( 0.00000000000 +        0.00000000000*t).cos();
   return earth_l_1+earth_l_0;
}

