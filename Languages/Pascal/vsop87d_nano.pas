unit vsop87d_nano;

interface
uses Math;

procedure vsop87d_nano_getEarth(t: Double;temp: array of Double);
procedure vsop87d_nano_getJupiter(t: Double;temp: array of Double);
procedure vsop87d_nano_getMars(t: Double;temp: array of Double);
procedure vsop87d_nano_getMercury(t: Double;temp: array of Double);
procedure vsop87d_nano_getNeptune(t: Double;temp: array of Double);
procedure vsop87d_nano_getSaturn(t: Double;temp: array of Double);
procedure vsop87d_nano_getUranus(t: Double;temp: array of Double);
procedure vsop87d_nano_getVenus(t: Double;temp: array of Double);

implementation



function vsop87d_nano_earth_l(t: Double): Double;
   var earth_l_0: Double=0.0;
   var earth_l_1: Double=0.0;
begin

   earth_l_0:=earth_l_0 +      1.75347045673 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_l_0:=earth_l_0 +      0.03341656456 * Cos( 4.66925680417 +     6283.07584999140*t);

   earth_l_1:=earth_l_1 +   6283.31966747491 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_l_1:=earth_l_1 +      0.00206058863 * Cos( 2.67823455584 +     6283.07584999140*t);
   earth_l_1:=earth_l_1 * t;

   vsop87d_nano_earth_l := earth_l_0+earth_l_1;
end;

function vsop87d_nano_earth_b(t: Double): Double;
begin

   vsop87d_nano_earth_b := 0;
end;

function vsop87d_nano_earth_r(t: Double): Double;
   var earth_r_0: Double=0.0;
   var earth_r_1: Double=0.0;
begin

   earth_r_0:=earth_r_0 +      1.00013988799 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_r_0:=earth_r_0 +      0.01670699626 * Cos( 3.09846350771 +     6283.07584999140*t);

   earth_r_1:=earth_r_1 +      0.00103018608 * Cos( 1.10748969588 +     6283.07584999140*t);
   earth_r_1:=earth_r_1 * t;

   vsop87d_nano_earth_r := earth_r_0+earth_r_1;
end;

function vsop87d_nano_jupiter_l(t: Double): Double;
   var jupiter_l_0: Double=0.0;
   var jupiter_l_1: Double=0.0;
begin

   jupiter_l_0:=jupiter_l_0 +      0.59954691495 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_l_0:=jupiter_l_0 +      0.09695898711 * Cos( 5.06191793105 +      529.69096509460*t);
   jupiter_l_0:=jupiter_l_0 +      0.00573610145 * Cos( 1.44406205976 +        7.11354700080*t);
   jupiter_l_0:=jupiter_l_0 +      0.00306389180 * Cos( 5.41734729976 +     1059.38193018920*t);

   jupiter_l_1:=jupiter_l_1 +    529.93480757497 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_l_1:=jupiter_l_1 +      0.00489741194 * Cos( 4.22066689928 +      529.69096509460*t);
   jupiter_l_1:=jupiter_l_1 +      0.00228918538 * Cos( 6.02647464016 +        7.11354700080*t);
   jupiter_l_1:=jupiter_l_1 * t;

   vsop87d_nano_jupiter_l := jupiter_l_0+jupiter_l_1;
end;

function vsop87d_nano_jupiter_b(t: Double): Double;
   var jupiter_b_0: Double=0.0;
   var jupiter_b_1: Double=0.0;
begin

   jupiter_b_0:=jupiter_b_0 +      0.02268615703 * Cos( 3.55852606718 +      529.69096509460*t);
   jupiter_b_0:=jupiter_b_0 +      0.00109971634 * Cos( 3.90809347389 +     1059.38193018920*t);
   jupiter_b_0:=jupiter_b_0 +      0.00110090358 * Cos( 0.00000000000 +        0.00000000000*t);

   jupiter_b_1:=jupiter_b_1 +      0.00177351787 * Cos( 5.70166488486 +      529.69096509460*t);
   jupiter_b_1:=jupiter_b_1 * t;

   vsop87d_nano_jupiter_b := jupiter_b_0+jupiter_b_1;
end;

function vsop87d_nano_jupiter_r(t: Double): Double;
   var jupiter_r_0: Double=0.0;
   var jupiter_r_1: Double=0.0;
begin

   jupiter_r_0:=jupiter_r_0 +      5.20887429471 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_r_0:=jupiter_r_0 +      0.25209327020 * Cos( 3.49108640015 +      529.69096509460*t);
   jupiter_r_0:=jupiter_r_0 +      0.00610599902 * Cos( 3.84115365602 +     1059.38193018920*t);
   jupiter_r_0:=jupiter_r_0 +      0.00282029465 * Cos( 2.57419879933 +      632.78373931320*t);
   jupiter_r_0:=jupiter_r_0 +      0.00187647391 * Cos( 2.07590380082 +      522.57741809380*t);

   jupiter_r_1:=jupiter_r_1 +      0.01271801596 * Cos( 2.64937511122 +      529.69096509460*t);
   jupiter_r_1:=jupiter_r_1 * t;

   vsop87d_nano_jupiter_r := jupiter_r_0+jupiter_r_1;
end;

function vsop87d_nano_mars_l(t: Double): Double;
   var mars_l_0: Double=0.0;
   var mars_l_1: Double=0.0;
begin

   mars_l_0:=mars_l_0 +      6.20347711583 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_l_0:=mars_l_0 +      0.18656368100 * Cos( 5.05037100303 +     3340.61242669980*t);
   mars_l_0:=mars_l_0 +      0.01108216792 * Cos( 5.40099836958 +     6681.22485339960*t);

   mars_l_1:=mars_l_1 +   3340.85627474342 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_l_1:=mars_l_1 +      0.01458227051 * Cos( 3.60426053609 +     3340.61242669980*t);
   mars_l_1:=mars_l_1 +      0.00164901343 * Cos( 3.92631250962 +     6681.22485339960*t);
   mars_l_1:=mars_l_1 * t;

   vsop87d_nano_mars_l := mars_l_0+mars_l_1;
end;

function vsop87d_nano_mars_b(t: Double): Double;
   var mars_b_0: Double=0.0;
   var mars_b_1: Double=0.0;
begin

   mars_b_0:=mars_b_0 +      0.03197134986 * Cos( 3.76832042432 +     3340.61242669980*t);
   mars_b_0:=mars_b_0 +      0.00298033234 * Cos( 4.10616996243 +     6681.22485339960*t);
   mars_b_0:=mars_b_0 +      0.00289104742 * Cos( 0.00000000000 +        0.00000000000*t);

   mars_b_1:=mars_b_1 +      0.00350068845 * Cos( 5.36847836211 +     3340.61242669980*t);
   mars_b_1:=mars_b_1 * t;

   vsop87d_nano_mars_b := mars_b_0+mars_b_1;
end;

function vsop87d_nano_mars_r(t: Double): Double;
   var mars_r_0: Double=0.0;
   var mars_r_1: Double=0.0;
begin

   mars_r_0:=mars_r_0 +      1.53033488276 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_r_0:=mars_r_0 +      0.14184953153 * Cos( 3.47971283519 +     3340.61242669980*t);
   mars_r_0:=mars_r_0 +      0.00660776357 * Cos( 3.81783442097 +     6681.22485339960*t);

   mars_r_1:=mars_r_1 +      0.01107433340 * Cos( 2.03250524950 +     3340.61242669980*t);
   mars_r_1:=mars_r_1 +      0.00103175886 * Cos( 2.37071845682 +     6681.22485339960*t);
   mars_r_1:=mars_r_1 * t;

   vsop87d_nano_mars_r := mars_r_0+mars_r_1;
end;

function vsop87d_nano_mercury_l(t: Double): Double;
   var mercury_l_0: Double=0.0;
   var mercury_l_1: Double=0.0;
begin

   mercury_l_0:=mercury_l_0 +      4.40250710144 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_l_0:=mercury_l_0 +      0.40989414976 * Cos( 1.48302034194 +    26087.90314157420*t);
   mercury_l_0:=mercury_l_0 +      0.05046294199 * Cos( 4.47785489540 +    52175.80628314840*t);
   mercury_l_0:=mercury_l_0 +      0.00855346843 * Cos( 1.16520322351 +    78263.70942472259*t);
   mercury_l_0:=mercury_l_0 +      0.00165590362 * Cos( 4.11969163181 +   104351.61256629678*t);

   mercury_l_1:=mercury_l_1 +  26088.14706222746 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_l_1:=mercury_l_1 +      0.01126007832 * Cos( 6.21703970996 +    26087.90314157420*t);
   mercury_l_1:=mercury_l_1 +      0.00303471395 * Cos( 3.05565472363 +    52175.80628314840*t);
   mercury_l_1:=mercury_l_1 * t;

   vsop87d_nano_mercury_l := mercury_l_0+mercury_l_1;
end;

function vsop87d_nano_mercury_b(t: Double): Double;
   var mercury_b_0: Double=0.0;
   var mercury_b_1: Double=0.0;
begin

   mercury_b_0:=mercury_b_0 +      0.11737528962 * Cos( 1.98357498767 +    26087.90314157420*t);
   mercury_b_0:=mercury_b_0 +      0.02388076996 * Cos( 5.03738959685 +    52175.80628314840*t);
   mercury_b_0:=mercury_b_0 +      0.01222839532 * Cos( 3.14159265359 +        0.00000000000*t);
   mercury_b_0:=mercury_b_0 +      0.00543251810 * Cos( 1.79644363963 +    78263.70942472259*t);
   mercury_b_0:=mercury_b_0 +      0.00129778770 * Cos( 4.83232503961 +   104351.61256629678*t);

   mercury_b_1:=mercury_b_1 +      0.00429151362 * Cos( 3.50169780393 +    26087.90314157420*t);
   mercury_b_1:=mercury_b_1 +      0.00146233668 * Cos( 3.14159265359 +        0.00000000000*t);
   mercury_b_1:=mercury_b_1 * t;

   vsop87d_nano_mercury_b := mercury_b_0+mercury_b_1;
end;

function vsop87d_nano_mercury_r(t: Double): Double;
   var mercury_r_0: Double=0.0;
   var mercury_r_1: Double=0.0;
begin

   mercury_r_0:=mercury_r_0 +      0.39528271652 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_r_0:=mercury_r_0 +      0.07834131817 * Cos( 6.19233722599 +    26087.90314157420*t);
   mercury_r_0:=mercury_r_0 +      0.00795525557 * Cos( 2.95989690096 +    52175.80628314840*t);
   mercury_r_0:=mercury_r_0 +      0.00121281763 * Cos( 6.01064153805 +    78263.70942472259*t);

   mercury_r_1:=mercury_r_1 +      0.00217347739 * Cos( 4.65617158663 +    26087.90314157420*t);
   mercury_r_1:=mercury_r_1 * t;

   vsop87d_nano_mercury_r := mercury_r_0+mercury_r_1;
end;

function vsop87d_nano_neptune_l(t: Double): Double;
   var neptune_l_0: Double=0.0;
   var neptune_l_1: Double=0.0;
begin

   neptune_l_0:=neptune_l_0 +      5.31188633047 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_0:=neptune_l_0 +      0.01798475509 * Cos( 2.90101273050 +       38.13303563780*t);
   neptune_l_0:=neptune_l_0 +      0.01019727662 * Cos( 0.48580923660 +        1.48447270830*t);
   neptune_l_0:=neptune_l_0 +      0.00124531845 * Cos( 4.83008090682 +       36.64856292950*t);

   neptune_l_1:=neptune_l_1 +     38.37687716731 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_1:=neptune_l_1 * t;

   vsop87d_nano_neptune_l := neptune_l_0+neptune_l_1;
end;

function vsop87d_nano_neptune_b(t: Double): Double;
   var neptune_b_0: Double=0.0;
   var neptune_b_1: Double=0.0;
begin

   neptune_b_0:=neptune_b_0 +      0.03088622933 * Cos( 1.44104372626 +       38.13303563780*t);

   neptune_b_1:=neptune_b_1 +      0.00227279214 * Cos( 3.80793089870 +       38.13303563780*t);
   neptune_b_1:=neptune_b_1 * t;

   vsop87d_nano_neptune_b := neptune_b_0+neptune_b_1;
end;

function vsop87d_nano_neptune_r(t: Double): Double;
   var neptune_r_0: Double=0.0;
   var neptune_r_1: Double=0.0;
begin

   neptune_r_0:=neptune_r_0 +     30.07013206102 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_r_0:=neptune_r_0 +      0.27062259490 * Cos( 1.32999458930 +       38.13303563780*t);
   neptune_r_0:=neptune_r_0 +      0.01691764281 * Cos( 3.25186138896 +       36.64856292950*t);
   neptune_r_0:=neptune_r_0 +      0.00807830737 * Cos( 5.18592836167 +        1.48447270830*t);
   neptune_r_0:=neptune_r_0 +      0.00537760613 * Cos( 4.52113902845 +       35.16409022120*t);
   neptune_r_0:=neptune_r_0 +      0.00495725642 * Cos( 1.57105654815 +      491.55792945680*t);
   neptune_r_0:=neptune_r_0 +      0.00274571970 * Cos( 1.84552256801 +      175.16605980020*t);
   neptune_r_0:=neptune_r_0 +      0.00135134095 * Cos( 3.37220607384 +       39.61750834610*t);
   neptune_r_0:=neptune_r_0 +      0.00121801825 * Cos( 5.79754444303 +       76.26607127560*t);
   neptune_r_0:=neptune_r_0 +      0.00100895397 * Cos( 0.37702748681 +       73.29712585900*t);

   neptune_r_1:=neptune_r_1 +      0.00236338502 * Cos( 0.70498011235 +       38.13303563780*t);
   neptune_r_1:=neptune_r_1 * t;

   vsop87d_nano_neptune_r := neptune_r_0+neptune_r_1;
end;

function vsop87d_nano_saturn_l(t: Double): Double;
   var saturn_l_0: Double=0.0;
   var saturn_l_1: Double=0.0;
   var saturn_l_2: Double=0.0;
begin

   saturn_l_0:=saturn_l_0 +      0.87401354029 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_0:=saturn_l_0 +      0.11107659780 * Cos( 3.96205090194 +      213.29909543800*t);
   saturn_l_0:=saturn_l_0 +      0.01414150958 * Cos( 4.58581515873 +        7.11354700080*t);
   saturn_l_0:=saturn_l_0 +      0.00398379386 * Cos( 0.52112025957 +      206.18554843720*t);
   saturn_l_0:=saturn_l_0 +      0.00350769223 * Cos( 3.30329903015 +      426.59819087600*t);
   saturn_l_0:=saturn_l_0 +      0.00206816296 * Cos( 0.24658366938 +      103.09277421860*t);

   saturn_l_1:=saturn_l_1 +    213.54295595986 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_1:=saturn_l_1 +      0.01296855005 * Cos( 1.82820544701 +      213.29909543800*t);
   saturn_l_1:=saturn_l_1 +      0.00564347566 * Cos( 2.88500136429 +        7.11354700080*t);
   saturn_l_1:=saturn_l_1 +      0.00107678770 * Cos( 2.27769911872 +      206.18554843720*t);
   saturn_l_1:=saturn_l_1 * t;

   saturn_l_2:=saturn_l_2 +      0.00116441181 * Cos( 1.17987850633 +        7.11354700080*t);
   saturn_l_2:=saturn_l_2 * t * t;

   vsop87d_nano_saturn_l := saturn_l_0+saturn_l_1+saturn_l_2;
end;

function vsop87d_nano_saturn_b(t: Double): Double;
   var saturn_b_0: Double=0.0;
   var saturn_b_1: Double=0.0;
begin

   saturn_b_0:=saturn_b_0 +      0.04330678040 * Cos( 3.60284428399 +      213.29909543800*t);
   saturn_b_0:=saturn_b_0 +      0.00240348303 * Cos( 2.85238489390 +      426.59819087600*t);

   saturn_b_1:=saturn_b_1 +      0.00397554998 * Cos( 5.33289992556 +      213.29909543800*t);
   saturn_b_1:=saturn_b_1 * t;

   vsop87d_nano_saturn_b := saturn_b_0+saturn_b_1;
end;

function vsop87d_nano_saturn_r(t: Double): Double;
   var saturn_r_0: Double=0.0;
   var saturn_r_1: Double=0.0;
   var saturn_r_2: Double=0.0;
begin

   saturn_r_0:=saturn_r_0 +      9.55758135801 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_r_0:=saturn_r_0 +      0.52921382465 * Cos( 2.39226219733 +      213.29909543800*t);
   saturn_r_0:=saturn_r_0 +      0.01873679934 * Cos( 5.23549605091 +      206.18554843720*t);
   saturn_r_0:=saturn_r_0 +      0.01464663959 * Cos( 1.64763045468 +      426.59819087600*t);
   saturn_r_0:=saturn_r_0 +      0.00821891059 * Cos( 5.93520025371 +      316.39186965660*t);
   saturn_r_0:=saturn_r_0 +      0.00547506899 * Cos( 5.01532628454 +      103.09277421860*t);
   saturn_r_0:=saturn_r_0 +      0.00371684449 * Cos( 2.27114833428 +      220.41264243880*t);
   saturn_r_0:=saturn_r_0 +      0.00361778433 * Cos( 3.13904303264 +        7.11354700080*t);
   saturn_r_0:=saturn_r_0 +      0.00140617548 * Cos( 5.70406652991 +      632.78373931320*t);
   saturn_r_0:=saturn_r_0 +      0.00108974737 * Cos( 3.29313595577 +      110.20632121940*t);

   saturn_r_1:=saturn_r_1 +      0.06182981282 * Cos( 0.25843515034 +      213.29909543800*t);
   saturn_r_1:=saturn_r_1 +      0.00506577574 * Cos( 0.71114650941 +      206.18554843720*t);
   saturn_r_1:=saturn_r_1 +      0.00341394136 * Cos( 5.79635773960 +      426.59819087600*t);
   saturn_r_1:=saturn_r_1 +      0.00188491375 * Cos( 0.47215719444 +      220.41264243880*t);
   saturn_r_1:=saturn_r_1 +      0.00186261540 * Cos( 3.14159265359 +        0.00000000000*t);
   saturn_r_1:=saturn_r_1 +      0.00143891176 * Cos( 1.40744864239 +        7.11354700080*t);
   saturn_r_1:=saturn_r_1 * t;

   saturn_r_2:=saturn_r_2 +      0.00436902464 * Cos( 4.78671673044 +      213.29909543800*t);
   saturn_r_2:=saturn_r_2 * t * t;

   vsop87d_nano_saturn_r := saturn_r_0+saturn_r_1+saturn_r_2;
end;

function vsop87d_nano_uranus_l(t: Double): Double;
   var uranus_l_0: Double=0.0;
   var uranus_l_1: Double=0.0;
begin

   uranus_l_0:=uranus_l_0 +      5.48129294299 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_0:=uranus_l_0 +      0.09260408252 * Cos( 0.89106421530 +       74.78159856730*t);
   uranus_l_0:=uranus_l_0 +      0.01504247826 * Cos( 3.62719262195 +        1.48447270830*t);
   uranus_l_0:=uranus_l_0 +      0.00365981718 * Cos( 1.89962189068 +       73.29712585900*t);
   uranus_l_0:=uranus_l_0 +      0.00272328132 * Cos( 3.35823710524 +      149.56319713460*t);

   uranus_l_1:=uranus_l_1 +     75.02543121646 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_1:=uranus_l_1 +      0.00154458244 * Cos( 5.24201658072 +       74.78159856730*t);
   uranus_l_1:=uranus_l_1 * t;

   vsop87d_nano_uranus_l := uranus_l_0+uranus_l_1;
end;

function vsop87d_nano_uranus_b(t: Double): Double;
   var uranus_b_0: Double=0.0;
   var uranus_b_1: Double=0.0;
begin

   uranus_b_0:=uranus_b_0 +      0.01346277639 * Cos( 2.61877810545 +       74.78159856730*t);

   uranus_b_1:=uranus_b_1 +      0.00206366162 * Cos( 4.12394311407 +       74.78159856730*t);
   uranus_b_1:=uranus_b_1 * t;

   vsop87d_nano_uranus_b := uranus_b_0+uranus_b_1;
end;

function vsop87d_nano_uranus_r(t: Double): Double;
   var uranus_r_0: Double=0.0;
   var uranus_r_1: Double=0.0;
begin

   uranus_r_0:=uranus_r_0 +     19.21264847881 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_r_0:=uranus_r_0 +      0.88784984055 * Cos( 5.60377526994 +       74.78159856730*t);
   uranus_r_0:=uranus_r_0 +      0.03440835545 * Cos( 0.32836098991 +       73.29712585900*t);
   uranus_r_0:=uranus_r_0 +      0.02055653495 * Cos( 1.78295170028 +      149.56319713460*t);
   uranus_r_0:=uranus_r_0 +      0.00649321851 * Cos( 4.52247298119 +       76.26607127560*t);
   uranus_r_0:=uranus_r_0 +      0.00602248144 * Cos( 3.86003820462 +       63.73589830340*t);
   uranus_r_0:=uranus_r_0 +      0.00496404171 * Cos( 1.40139934716 +      454.90936652730*t);
   uranus_r_0:=uranus_r_0 +      0.00338525522 * Cos( 1.58002682946 +      138.51749687070*t);
   uranus_r_0:=uranus_r_0 +      0.00243508222 * Cos( 1.57086595074 +       71.81265315070*t);
   uranus_r_0:=uranus_r_0 +      0.00190521915 * Cos( 1.99809364502 +        1.48447270830*t);
   uranus_r_0:=uranus_r_0 +      0.00161858251 * Cos( 2.79137863469 +      148.07872442630*t);
   uranus_r_0:=uranus_r_0 +      0.00143705902 * Cos( 1.38368574483 +       11.04570026390*t);

   uranus_r_1:=uranus_r_1 +      0.01479896370 * Cos( 3.67205705317 +       74.78159856730*t);
   uranus_r_1:=uranus_r_1 * t;

   vsop87d_nano_uranus_r := uranus_r_0+uranus_r_1;
end;

function vsop87d_nano_venus_l(t: Double): Double;
   var venus_l_0: Double=0.0;
   var venus_l_1: Double=0.0;
begin

   venus_l_0:=venus_l_0 +      3.17614666774 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_l_0:=venus_l_0 +      0.01353968419 * Cos( 5.59313319619 +    10213.28554621100*t);

   venus_l_1:=venus_l_1 +  10213.52943052898 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_l_1:=venus_l_1 * t;

   vsop87d_nano_venus_l := venus_l_0+venus_l_1;
end;

function vsop87d_nano_venus_b(t: Double): Double;
   var venus_b_0: Double=0.0;
   var venus_b_1: Double=0.0;
begin

   venus_b_0:=venus_b_0 +      0.05923638472 * Cos( 0.26702775813 +    10213.28554621100*t);

   venus_b_1:=venus_b_1 +      0.00513347602 * Cos( 1.80364310797 +    10213.28554621100*t);
   venus_b_1:=venus_b_1 * t;

   vsop87d_nano_venus_b := venus_b_0+venus_b_1;
end;

function vsop87d_nano_venus_r(t: Double): Double;
   var venus_r_0: Double=0.0;
begin

   venus_r_0:=venus_r_0 +      0.72334820905 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_r_0:=venus_r_0 +      0.00489824185 * Cos( 4.02151832268 +    10213.28554621100*t);

   vsop87d_nano_venus_r := venus_r_0;
end;

procedure vsop87d_nano_getEarth(t: Double;temp: array of Double);
begin
   temp[0]:=vsop87d_nano_earth_l(t);
   temp[1]:=vsop87d_nano_earth_b(t);
   temp[2]:=vsop87d_nano_earth_r(t);
end;

procedure vsop87d_nano_getJupiter(t: Double;temp: array of Double);
begin
   temp[0]:=vsop87d_nano_jupiter_l(t);
   temp[1]:=vsop87d_nano_jupiter_b(t);
   temp[2]:=vsop87d_nano_jupiter_r(t);
end;

procedure vsop87d_nano_getMars(t: Double;temp: array of Double);
begin
   temp[0]:=vsop87d_nano_mars_l(t);
   temp[1]:=vsop87d_nano_mars_b(t);
   temp[2]:=vsop87d_nano_mars_r(t);
end;

procedure vsop87d_nano_getMercury(t: Double;temp: array of Double);
begin
   temp[0]:=vsop87d_nano_mercury_l(t);
   temp[1]:=vsop87d_nano_mercury_b(t);
   temp[2]:=vsop87d_nano_mercury_r(t);
end;

procedure vsop87d_nano_getNeptune(t: Double;temp: array of Double);
begin
   temp[0]:=vsop87d_nano_neptune_l(t);
   temp[1]:=vsop87d_nano_neptune_b(t);
   temp[2]:=vsop87d_nano_neptune_r(t);
end;

procedure vsop87d_nano_getSaturn(t: Double;temp: array of Double);
begin
   temp[0]:=vsop87d_nano_saturn_l(t);
   temp[1]:=vsop87d_nano_saturn_b(t);
   temp[2]:=vsop87d_nano_saturn_r(t);
end;

procedure vsop87d_nano_getUranus(t: Double;temp: array of Double);
begin
   temp[0]:=vsop87d_nano_uranus_l(t);
   temp[1]:=vsop87d_nano_uranus_b(t);
   temp[2]:=vsop87d_nano_uranus_r(t);
end;

procedure vsop87d_nano_getVenus(t: Double;temp: array of Double);
begin
   temp[0]:=vsop87d_nano_venus_l(t);
   temp[1]:=vsop87d_nano_venus_b(t);
   temp[2]:=vsop87d_nano_venus_r(t);
end;
end.