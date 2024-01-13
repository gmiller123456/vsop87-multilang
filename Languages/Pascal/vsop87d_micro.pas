//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

unit vsop87d_micro;

interface
uses Math;

procedure vsop87d_micro_getEarth(t: Double;var temp: array of Double);
procedure vsop87d_micro_getJupiter(t: Double;var temp: array of Double);
procedure vsop87d_micro_getMars(t: Double;var temp: array of Double);
procedure vsop87d_micro_getMercury(t: Double;var temp: array of Double);
procedure vsop87d_micro_getNeptune(t: Double;var temp: array of Double);
procedure vsop87d_micro_getSaturn(t: Double;var temp: array of Double);
procedure vsop87d_micro_getUranus(t: Double;var temp: array of Double);
procedure vsop87d_micro_getVenus(t: Double;var temp: array of Double);

implementation



function vsop87d_micro_earth_l(t: Double): Double;
   var earth_l_0: Double=0.0;
   var earth_l_1: Double=0.0;
   var earth_l_2: Double=0.0;
begin

   earth_l_0:=earth_l_0 +      1.75347045673 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_l_0:=earth_l_0 +      0.03341656456 * Cos( 4.66925680417 +     6283.07584999140*t);
   earth_l_0:=earth_l_0 +      0.00034894275 * Cos( 4.62610241759 +    12566.15169998280*t);

   earth_l_1:=earth_l_1 +   6283.31966747491 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_l_1:=earth_l_1 +      0.00206058863 * Cos( 2.67823455584 +     6283.07584999140*t);
   earth_l_1:=earth_l_1 * t;

   earth_l_2:=earth_l_2 +      0.00052918870 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_l_2:=earth_l_2 * t * t;

   vsop87d_micro_earth_l := earth_l_0+earth_l_1+earth_l_2;
end;

function vsop87d_micro_earth_b(t: Double): Double;
begin

   vsop87d_micro_earth_b := 0;
end;

function vsop87d_micro_earth_r(t: Double): Double;
   var earth_r_0: Double=0.0;
   var earth_r_1: Double=0.0;
begin

   earth_r_0:=earth_r_0 +      1.00013988799 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_r_0:=earth_r_0 +      0.01670699626 * Cos( 3.09846350771 +     6283.07584999140*t);
   earth_r_0:=earth_r_0 +      0.00013956023 * Cos( 3.05524609620 +    12566.15169998280*t);

   earth_r_1:=earth_r_1 +      0.00103018608 * Cos( 1.10748969588 +     6283.07584999140*t);
   earth_r_1:=earth_r_1 * t;

   vsop87d_micro_earth_r := earth_r_0+earth_r_1;
end;

function vsop87d_micro_jupiter_l(t: Double): Double;
   var jupiter_l_0: Double=0.0;
   var jupiter_l_1: Double=0.0;
   var jupiter_l_2: Double=0.0;
begin

   jupiter_l_0:=jupiter_l_0 +      0.59954691495 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_l_0:=jupiter_l_0 +      0.09695898711 * Cos( 5.06191793105 +      529.69096509460*t);
   jupiter_l_0:=jupiter_l_0 +      0.00573610145 * Cos( 1.44406205976 +        7.11354700080*t);
   jupiter_l_0:=jupiter_l_0 +      0.00306389180 * Cos( 5.41734729976 +     1059.38193018920*t);
   jupiter_l_0:=jupiter_l_0 +      0.00097178280 * Cos( 4.14264708819 +      632.78373931320*t);
   jupiter_l_0:=jupiter_l_0 +      0.00072903096 * Cos( 3.64042909255 +      522.57741809380*t);
   jupiter_l_0:=jupiter_l_0 +      0.00064263986 * Cos( 3.41145185203 +      103.09277421860*t);
   jupiter_l_0:=jupiter_l_0 +      0.00039806051 * Cos( 2.29376744855 +      419.48464387520*t);
   jupiter_l_0:=jupiter_l_0 +      0.00038857780 * Cos( 1.27231724860 +      316.39186965660*t);
   jupiter_l_0:=jupiter_l_0 +      0.00027964622 * Cos( 1.78454589485 +      536.80451209540*t);
   jupiter_l_0:=jupiter_l_0 +      0.00013589738 * Cos( 5.77481031590 +     1589.07289528380*t);

   jupiter_l_1:=jupiter_l_1 +    529.93480757497 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_l_1:=jupiter_l_1 +      0.00489741194 * Cos( 4.22066689928 +      529.69096509460*t);
   jupiter_l_1:=jupiter_l_1 +      0.00228918538 * Cos( 6.02647464016 +        7.11354700080*t);
   jupiter_l_1:=jupiter_l_1 +      0.00027655380 * Cos( 4.57265956824 +     1059.38193018920*t);
   jupiter_l_1:=jupiter_l_1 +      0.00020720943 * Cos( 5.45938936295 +      522.57741809380*t);
   jupiter_l_1:=jupiter_l_1 +      0.00012105732 * Cos( 0.16985765041 +      536.80451209540*t);
   jupiter_l_1:=jupiter_l_1 * t;

   jupiter_l_2:=jupiter_l_2 +      0.00047233598 * Cos( 4.32148323554 +        7.11354700080*t);
   jupiter_l_2:=jupiter_l_2 +      0.00030629053 * Cos( 2.93021440216 +      529.69096509460*t);
   jupiter_l_2:=jupiter_l_2 +      0.00038965550 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_l_2:=jupiter_l_2 * t * t;

   vsop87d_micro_jupiter_l := jupiter_l_0+jupiter_l_1+jupiter_l_2;
end;

function vsop87d_micro_jupiter_b(t: Double): Double;
   var jupiter_b_0: Double=0.0;
   var jupiter_b_1: Double=0.0;
begin

   jupiter_b_0:=jupiter_b_0 +      0.02268615703 * Cos( 3.55852606718 +      529.69096509460*t);
   jupiter_b_0:=jupiter_b_0 +      0.00109971634 * Cos( 3.90809347389 +     1059.38193018920*t);
   jupiter_b_0:=jupiter_b_0 +      0.00110090358 * Cos( 0.00000000000 +        0.00000000000*t);

   jupiter_b_1:=jupiter_b_1 +      0.00177351787 * Cos( 5.70166488486 +      529.69096509460*t);
   jupiter_b_1:=jupiter_b_1 * t;

   vsop87d_micro_jupiter_b := jupiter_b_0+jupiter_b_1;
end;

function vsop87d_micro_jupiter_r(t: Double): Double;
   var jupiter_r_0: Double=0.0;
   var jupiter_r_1: Double=0.0;
   var jupiter_r_2: Double=0.0;
begin

   jupiter_r_0:=jupiter_r_0 +      5.20887429471 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_r_0:=jupiter_r_0 +      0.25209327020 * Cos( 3.49108640015 +      529.69096509460*t);
   jupiter_r_0:=jupiter_r_0 +      0.00610599902 * Cos( 3.84115365602 +     1059.38193018920*t);
   jupiter_r_0:=jupiter_r_0 +      0.00282029465 * Cos( 2.57419879933 +      632.78373931320*t);
   jupiter_r_0:=jupiter_r_0 +      0.00187647391 * Cos( 2.07590380082 +      522.57741809380*t);
   jupiter_r_0:=jupiter_r_0 +      0.00086792941 * Cos( 0.71001090609 +      419.48464387520*t);
   jupiter_r_0:=jupiter_r_0 +      0.00072062869 * Cos( 0.21465694745 +      536.80451209540*t);
   jupiter_r_0:=jupiter_r_0 +      0.00065517227 * Cos( 5.97995850843 +      316.39186965660*t);
   jupiter_r_0:=jupiter_r_0 +      0.00029134620 * Cos( 1.67759243710 +      103.09277421860*t);
   jupiter_r_0:=jupiter_r_0 +      0.00030135275 * Cos( 2.16132058449 +      949.17560896980*t);
   jupiter_r_0:=jupiter_r_0 +      0.00023453209 * Cos( 3.54023147303 +      735.87651353180*t);
   jupiter_r_0:=jupiter_r_0 +      0.00022283710 * Cos( 4.19362773546 +     1589.07289528380*t);
   jupiter_r_0:=jupiter_r_0 +      0.00023947340 * Cos( 0.27457854894 +        7.11354700080*t);
   jupiter_r_0:=jupiter_r_0 +      0.00013032600 * Cos( 2.96043055741 +     1162.47470440780*t);
   jupiter_r_0:=jupiter_r_0 +      0.00012749004 * Cos( 2.71550102862 +     1052.26838318840*t);

   jupiter_r_1:=jupiter_r_1 +      0.01271801596 * Cos( 2.64937511122 +      529.69096509460*t);
   jupiter_r_1:=jupiter_r_1 +      0.00061661771 * Cos( 3.00076251018 +     1059.38193018920*t);
   jupiter_r_1:=jupiter_r_1 +      0.00053443592 * Cos( 3.89717644226 +      522.57741809380*t);
   jupiter_r_1:=jupiter_r_1 +      0.00031185167 * Cos( 4.88276663526 +      536.80451209540*t);
   jupiter_r_1:=jupiter_r_1 +      0.00041390257 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_r_1:=jupiter_r_1 +      0.00011847190 * Cos( 2.41329588176 +      419.48464387520*t);
   jupiter_r_1:=jupiter_r_1 * t;

   jupiter_r_2:=jupiter_r_2 +      0.00079644833 * Cos( 1.35865896596 +      529.69096509460*t);
   jupiter_r_2:=jupiter_r_2 * t * t;

   vsop87d_micro_jupiter_r := jupiter_r_0+jupiter_r_1+jupiter_r_2;
end;

function vsop87d_micro_mars_l(t: Double): Double;
   var mars_l_0: Double=0.0;
   var mars_l_1: Double=0.0;
   var mars_l_2: Double=0.0;
begin

   mars_l_0:=mars_l_0 +      6.20347711583 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_l_0:=mars_l_0 +      0.18656368100 * Cos( 5.05037100303 +     3340.61242669980*t);
   mars_l_0:=mars_l_0 +      0.01108216792 * Cos( 5.40099836958 +     6681.22485339960*t);
   mars_l_0:=mars_l_0 +      0.00091798394 * Cos( 5.75478745111 +    10021.83728009940*t);
   mars_l_0:=mars_l_0 +      0.00027744987 * Cos( 5.97049512942 +        3.52311834900*t);
   mars_l_0:=mars_l_0 +      0.00010610230 * Cos( 2.93958524973 +     2281.23049651060*t);
   mars_l_0:=mars_l_0 +      0.00012315897 * Cos( 0.84956081238 +     2810.92146160520*t);

   mars_l_1:=mars_l_1 +   3340.85627474342 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_l_1:=mars_l_1 +      0.01458227051 * Cos( 3.60426053609 +     3340.61242669980*t);
   mars_l_1:=mars_l_1 +      0.00164901343 * Cos( 3.92631250962 +     6681.22485339960*t);
   mars_l_1:=mars_l_1 +      0.00019963338 * Cos( 4.26594061030 +    10021.83728009940*t);
   mars_l_1:=mars_l_1 * t;

   mars_l_2:=mars_l_2 +      0.00058015791 * Cos( 2.04979463279 +     3340.61242669980*t);
   mars_l_2:=mars_l_2 +      0.00054187645 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_l_2:=mars_l_2 +      0.00013908426 * Cos( 2.45742359888 +     6681.22485339960*t);
   mars_l_2:=mars_l_2 * t * t;

   vsop87d_micro_mars_l := mars_l_0+mars_l_1+mars_l_2;
end;

function vsop87d_micro_mars_b(t: Double): Double;
   var mars_b_0: Double=0.0;
   var mars_b_1: Double=0.0;
   var mars_b_2: Double=0.0;
begin

   mars_b_0:=mars_b_0 +      0.03197134986 * Cos( 3.76832042432 +     3340.61242669980*t);
   mars_b_0:=mars_b_0 +      0.00298033234 * Cos( 4.10616996243 +     6681.22485339960*t);
   mars_b_0:=mars_b_0 +      0.00289104742 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_b_0:=mars_b_0 +      0.00031365538 * Cos( 4.44651052853 +    10021.83728009940*t);

   mars_b_1:=mars_b_1 +      0.00350068845 * Cos( 5.36847836211 +     3340.61242669980*t);
   mars_b_1:=mars_b_1 +      0.00014116030 * Cos( 3.14159265359 +        0.00000000000*t);
   mars_b_1:=mars_b_1 * t;

   mars_b_2:=mars_b_2 +      0.00016726690 * Cos( 0.60221392419 +     3340.61242669980*t);
   mars_b_2:=mars_b_2 * t * t;

   vsop87d_micro_mars_b := mars_b_0+mars_b_1+mars_b_2;
end;

function vsop87d_micro_mars_r(t: Double): Double;
   var mars_r_0: Double=0.0;
   var mars_r_1: Double=0.0;
   var mars_r_2: Double=0.0;
begin

   mars_r_0:=mars_r_0 +      1.53033488276 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_r_0:=mars_r_0 +      0.14184953153 * Cos( 3.47971283519 +     3340.61242669980*t);
   mars_r_0:=mars_r_0 +      0.00660776357 * Cos( 3.81783442097 +     6681.22485339960*t);
   mars_r_0:=mars_r_0 +      0.00046179117 * Cos( 4.15595316284 +    10021.83728009940*t);

   mars_r_1:=mars_r_1 +      0.01107433340 * Cos( 2.03250524950 +     3340.61242669980*t);
   mars_r_1:=mars_r_1 +      0.00103175886 * Cos( 2.37071845682 +     6681.22485339960*t);
   mars_r_1:=mars_r_1 +      0.00012877200 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_r_1:=mars_r_1 +      0.00010815880 * Cos( 2.70888093803 +    10021.83728009940*t);
   mars_r_1:=mars_r_1 * t;

   mars_r_2:=mars_r_2 +      0.00044242247 * Cos( 0.47930603943 +     3340.61242669980*t);
   mars_r_2:=mars_r_2 * t * t;

   vsop87d_micro_mars_r := mars_r_0+mars_r_1+mars_r_2;
end;

function vsop87d_micro_mercury_l(t: Double): Double;
   var mercury_l_0: Double=0.0;
   var mercury_l_1: Double=0.0;
   var mercury_l_2: Double=0.0;
begin

   mercury_l_0:=mercury_l_0 +      4.40250710144 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_l_0:=mercury_l_0 +      0.40989414976 * Cos( 1.48302034194 +    26087.90314157420*t);
   mercury_l_0:=mercury_l_0 +      0.05046294199 * Cos( 4.47785489540 +    52175.80628314840*t);
   mercury_l_0:=mercury_l_0 +      0.00855346843 * Cos( 1.16520322351 +    78263.70942472259*t);
   mercury_l_0:=mercury_l_0 +      0.00165590362 * Cos( 4.11969163181 +   104351.61256629678*t);
   mercury_l_0:=mercury_l_0 +      0.00034561897 * Cos( 0.77930765817 +   130439.51570787099*t);

   mercury_l_1:=mercury_l_1 +  26088.14706222746 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_l_1:=mercury_l_1 +      0.01126007832 * Cos( 6.21703970996 +    26087.90314157420*t);
   mercury_l_1:=mercury_l_1 +      0.00303471395 * Cos( 3.05565472363 +    52175.80628314840*t);
   mercury_l_1:=mercury_l_1 +      0.00080538452 * Cos( 6.10454743366 +    78263.70942472259*t);
   mercury_l_1:=mercury_l_1 +      0.00021245035 * Cos( 2.83531934452 +   104351.61256629678*t);
   mercury_l_1:=mercury_l_1 * t;

   mercury_l_2:=mercury_l_2 +      0.00053049845 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_l_2:=mercury_l_2 +      0.00016903658 * Cos( 4.69072300649 +    26087.90314157420*t);
   mercury_l_2:=mercury_l_2 * t * t;

   vsop87d_micro_mercury_l := mercury_l_0+mercury_l_1+mercury_l_2;
end;

function vsop87d_micro_mercury_b(t: Double): Double;
   var mercury_b_0: Double=0.0;
   var mercury_b_1: Double=0.0;
   var mercury_b_2: Double=0.0;
begin

   mercury_b_0:=mercury_b_0 +      0.11737528962 * Cos( 1.98357498767 +    26087.90314157420*t);
   mercury_b_0:=mercury_b_0 +      0.02388076996 * Cos( 5.03738959685 +    52175.80628314840*t);
   mercury_b_0:=mercury_b_0 +      0.01222839532 * Cos( 3.14159265359 +        0.00000000000*t);
   mercury_b_0:=mercury_b_0 +      0.00543251810 * Cos( 1.79644363963 +    78263.70942472259*t);
   mercury_b_0:=mercury_b_0 +      0.00129778770 * Cos( 4.83232503961 +   104351.61256629678*t);
   mercury_b_0:=mercury_b_0 +      0.00031866927 * Cos( 1.58088495667 +   130439.51570787099*t);

   mercury_b_1:=mercury_b_1 +      0.00429151362 * Cos( 3.50169780393 +    26087.90314157420*t);
   mercury_b_1:=mercury_b_1 +      0.00146233668 * Cos( 3.14159265359 +        0.00000000000*t);
   mercury_b_1:=mercury_b_1 +      0.00022675295 * Cos( 0.01515366880 +    52175.80628314840*t);
   mercury_b_1:=mercury_b_1 +      0.00010894981 * Cos( 0.48540174006 +    78263.70942472259*t);
   mercury_b_1:=mercury_b_1 * t;

   mercury_b_2:=mercury_b_2 +      0.00011830934 * Cos( 4.79065585784 +    26087.90314157420*t);
   mercury_b_2:=mercury_b_2 * t * t;

   vsop87d_micro_mercury_b := mercury_b_0+mercury_b_1+mercury_b_2;
end;

function vsop87d_micro_mercury_r(t: Double): Double;
   var mercury_r_0: Double=0.0;
   var mercury_r_1: Double=0.0;
begin

   mercury_r_0:=mercury_r_0 +      0.39528271652 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_r_0:=mercury_r_0 +      0.07834131817 * Cos( 6.19233722599 +    26087.90314157420*t);
   mercury_r_0:=mercury_r_0 +      0.00795525557 * Cos( 2.95989690096 +    52175.80628314840*t);
   mercury_r_0:=mercury_r_0 +      0.00121281763 * Cos( 6.01064153805 +    78263.70942472259*t);
   mercury_r_0:=mercury_r_0 +      0.00021921969 * Cos( 2.77820093975 +   104351.61256629678*t);

   mercury_r_1:=mercury_r_1 +      0.00217347739 * Cos( 4.65617158663 +    26087.90314157420*t);
   mercury_r_1:=mercury_r_1 +      0.00044141826 * Cos( 1.42385543975 +    52175.80628314840*t);
   mercury_r_1:=mercury_r_1 +      0.00010094479 * Cos( 4.47466326316 +    78263.70942472259*t);
   mercury_r_1:=mercury_r_1 * t;

   vsop87d_micro_mercury_r := mercury_r_0+mercury_r_1;
end;

function vsop87d_micro_neptune_l(t: Double): Double;
   var neptune_l_0: Double=0.0;
   var neptune_l_1: Double=0.0;
   var neptune_l_2: Double=0.0;
begin

   neptune_l_0:=neptune_l_0 +      5.31188633047 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_0:=neptune_l_0 +      0.01798475509 * Cos( 2.90101273050 +       38.13303563780*t);
   neptune_l_0:=neptune_l_0 +      0.01019727662 * Cos( 0.48580923660 +        1.48447270830*t);
   neptune_l_0:=neptune_l_0 +      0.00124531845 * Cos( 4.83008090682 +       36.64856292950*t);
   neptune_l_0:=neptune_l_0 +      0.00042064450 * Cos( 5.41054991607 +        2.96894541660*t);
   neptune_l_0:=neptune_l_0 +      0.00037714589 * Cos( 6.09221834946 +       35.16409022120*t);
   neptune_l_0:=neptune_l_0 +      0.00033784734 * Cos( 1.24488865578 +       76.26607127560*t);
   neptune_l_0:=neptune_l_0 +      0.00016482741 * Cos( 0.00007729261 +      491.55792945680*t);

   neptune_l_1:=neptune_l_1 +     38.37687716731 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_1:=neptune_l_1 +      0.00016604187 * Cos( 4.86319129565 +        1.48447270830*t);
   neptune_l_1:=neptune_l_1 +      0.00015807148 * Cos( 2.27923488532 +       38.13303563780*t);
   neptune_l_1:=neptune_l_1 * t;

   neptune_l_2:=neptune_l_2 +      0.00053892649 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_2:=neptune_l_2 * t * t;

   vsop87d_micro_neptune_l := neptune_l_0+neptune_l_1+neptune_l_2;
end;

function vsop87d_micro_neptune_b(t: Double): Double;
   var neptune_b_0: Double=0.0;
   var neptune_b_1: Double=0.0;
begin

   neptune_b_0:=neptune_b_0 +      0.03088622933 * Cos( 1.44104372626 +       38.13303563780*t);
   neptune_b_0:=neptune_b_0 +      0.00027780087 * Cos( 5.91271882843 +       76.26607127560*t);
   neptune_b_0:=neptune_b_0 +      0.00027623609 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_b_0:=neptune_b_0 +      0.00015355490 * Cos( 2.52123799481 +       36.64856292950*t);
   neptune_b_0:=neptune_b_0 +      0.00015448133 * Cos( 3.50877080888 +       39.61750834610*t);

   neptune_b_1:=neptune_b_1 +      0.00227279214 * Cos( 3.80793089870 +       38.13303563780*t);
   neptune_b_1:=neptune_b_1 * t;

   vsop87d_micro_neptune_b := neptune_b_0+neptune_b_1;
end;

function vsop87d_micro_neptune_r(t: Double): Double;
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
   neptune_r_0:=neptune_r_0 +      0.00069791722 * Cos( 3.79617226928 +        2.96894541660*t);
   neptune_r_0:=neptune_r_0 +      0.00046687838 * Cos( 5.74937810094 +       33.67961751290*t);
   neptune_r_0:=neptune_r_0 +      0.00024593778 * Cos( 0.50801728204 +      109.94568878850*t);
   neptune_r_0:=neptune_r_0 +      0.00016939242 * Cos( 1.59422166991 +       71.81265315070*t);
   neptune_r_0:=neptune_r_0 +      0.00014229686 * Cos( 1.07786112902 +       74.78159856730*t);
   neptune_r_0:=neptune_r_0 +      0.00012011825 * Cos( 1.92062131635 +     1021.24889455140*t);

   neptune_r_1:=neptune_r_1 +      0.00236338502 * Cos( 0.70498011235 +       38.13303563780*t);
   neptune_r_1:=neptune_r_1 +      0.00013220279 * Cos( 3.32015499895 +        1.48447270830*t);
   neptune_r_1:=neptune_r_1 * t;

   vsop87d_micro_neptune_r := neptune_r_0+neptune_r_1;
end;

function vsop87d_micro_saturn_l(t: Double): Double;
   var saturn_l_0: Double=0.0;
   var saturn_l_1: Double=0.0;
   var saturn_l_2: Double=0.0;
   var saturn_l_3: Double=0.0;
begin

   saturn_l_0:=saturn_l_0 +      0.87401354029 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_0:=saturn_l_0 +      0.11107659780 * Cos( 3.96205090194 +      213.29909543800*t);
   saturn_l_0:=saturn_l_0 +      0.01414150958 * Cos( 4.58581515873 +        7.11354700080*t);
   saturn_l_0:=saturn_l_0 +      0.00398379386 * Cos( 0.52112025957 +      206.18554843720*t);
   saturn_l_0:=saturn_l_0 +      0.00350769223 * Cos( 3.30329903015 +      426.59819087600*t);
   saturn_l_0:=saturn_l_0 +      0.00206816296 * Cos( 0.24658366938 +      103.09277421860*t);
   saturn_l_0:=saturn_l_0 +      0.00079271288 * Cos( 3.84007078530 +      220.41264243880*t);
   saturn_l_0:=saturn_l_0 +      0.00023990338 * Cos( 4.66976934860 +      110.20632121940*t);
   saturn_l_0:=saturn_l_0 +      0.00016573583 * Cos( 0.43719123541 +      419.48464387520*t);
   saturn_l_0:=saturn_l_0 +      0.00014906995 * Cos( 5.76903283845 +      316.39186965660*t);
   saturn_l_0:=saturn_l_0 +      0.00015820300 * Cos( 0.93808953760 +      632.78373931320*t);
   saturn_l_0:=saturn_l_0 +      0.00014609562 * Cos( 1.56518573691 +        3.93215326310*t);
   saturn_l_0:=saturn_l_0 +      0.00013160308 * Cos( 4.44891180176 +       14.22709400160*t);
   saturn_l_0:=saturn_l_0 +      0.00015053509 * Cos( 2.71670027883 +      639.89728631400*t);
   saturn_l_0:=saturn_l_0 +      0.00013005305 * Cos( 5.98119067061 +       11.04570026390*t);
   saturn_l_0:=saturn_l_0 +      0.00010725066 * Cos( 3.12939596466 +      202.25339517410*t);

   saturn_l_1:=saturn_l_1 +    213.54295595986 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_1:=saturn_l_1 +      0.01296855005 * Cos( 1.82820544701 +      213.29909543800*t);
   saturn_l_1:=saturn_l_1 +      0.00564347566 * Cos( 2.88500136429 +        7.11354700080*t);
   saturn_l_1:=saturn_l_1 +      0.00098323030 * Cos( 1.08070061328 +      426.59819087600*t);
   saturn_l_1:=saturn_l_1 +      0.00107678770 * Cos( 2.27769911872 +      206.18554843720*t);
   saturn_l_1:=saturn_l_1 +      0.00040254586 * Cos( 2.04128257090 +      220.41264243880*t);
   saturn_l_1:=saturn_l_1 +      0.00019941734 * Cos( 1.27954662736 +      103.09277421860*t);
   saturn_l_1:=saturn_l_1 +      0.00010511706 * Cos( 2.74880392800 +       14.22709400160*t);
   saturn_l_1:=saturn_l_1 * t;

   saturn_l_2:=saturn_l_2 +      0.00116441181 * Cos( 1.17987850633 +        7.11354700080*t);
   saturn_l_2:=saturn_l_2 +      0.00091920844 * Cos( 0.07425261094 +      213.29909543800*t);
   saturn_l_2:=saturn_l_2 +      0.00090592251 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_2:=saturn_l_2 +      0.00015276909 * Cos( 4.06492007503 +      206.18554843720*t);
   saturn_l_2:=saturn_l_2 +      0.00010631396 * Cos( 0.25778277414 +      220.41264243880*t);
   saturn_l_2:=saturn_l_2 +      0.00010604979 * Cos( 5.40963595885 +      426.59819087600*t);
   saturn_l_2:=saturn_l_2 * t * t;

   saturn_l_3:=saturn_l_3 +      0.00016038734 * Cos( 5.73945377424 +        7.11354700080*t);
   saturn_l_3:=saturn_l_3 * t * t * t;

   vsop87d_micro_saturn_l := saturn_l_0+saturn_l_1+saturn_l_2+saturn_l_3;
end;

function vsop87d_micro_saturn_b(t: Double): Double;
   var saturn_b_0: Double=0.0;
   var saturn_b_1: Double=0.0;
   var saturn_b_2: Double=0.0;
begin

   saturn_b_0:=saturn_b_0 +      0.04330678040 * Cos( 3.60284428399 +      213.29909543800*t);
   saturn_b_0:=saturn_b_0 +      0.00240348303 * Cos( 2.85238489390 +      426.59819087600*t);
   saturn_b_0:=saturn_b_0 +      0.00084745939 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_b_0:=saturn_b_0 +      0.00030863357 * Cos( 3.48441504465 +      220.41264243880*t);
   saturn_b_0:=saturn_b_0 +      0.00034116063 * Cos( 0.57297307844 +      206.18554843720*t);
   saturn_b_0:=saturn_b_0 +      0.00014734070 * Cos( 2.11846597870 +      639.89728631400*t);

   saturn_b_1:=saturn_b_1 +      0.00397554998 * Cos( 5.33289992556 +      213.29909543800*t);
   saturn_b_1:=saturn_b_1 +      0.00049478641 * Cos( 3.14159265359 +        0.00000000000*t);
   saturn_b_1:=saturn_b_1 +      0.00018571607 * Cos( 6.09919206378 +      426.59819087600*t);
   saturn_b_1:=saturn_b_1 +      0.00014800587 * Cos( 2.30586060520 +      206.18554843720*t);
   saturn_b_1:=saturn_b_1 * t;

   saturn_b_2:=saturn_b_2 +      0.00020629977 * Cos( 0.50482422817 +      213.29909543800*t);
   saturn_b_2:=saturn_b_2 * t * t;

   vsop87d_micro_saturn_b := saturn_b_0+saturn_b_1+saturn_b_2;
end;

function vsop87d_micro_saturn_r(t: Double): Double;
   var saturn_r_0: Double=0.0;
   var saturn_r_1: Double=0.0;
   var saturn_r_2: Double=0.0;
   var saturn_r_3: Double=0.0;
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
   saturn_r_0:=saturn_r_0 +      0.00069007015 * Cos( 5.94099622447 +      419.48464387520*t);
   saturn_r_0:=saturn_r_0 +      0.00061053350 * Cos( 0.94037761156 +      639.89728631400*t);
   saturn_r_0:=saturn_r_0 +      0.00048913044 * Cos( 1.55733388472 +      202.25339517410*t);
   saturn_r_0:=saturn_r_0 +      0.00034143794 * Cos( 0.19518550682 +      277.03499374140*t);
   saturn_r_0:=saturn_r_0 +      0.00032401718 * Cos( 5.47084606947 +      949.17560896980*t);
   saturn_r_0:=saturn_r_0 +      0.00020936573 * Cos( 0.46349163993 +      735.87651353180*t);
   saturn_r_0:=saturn_r_0 +      0.00020839118 * Cos( 1.52102590640 +      433.71173787680*t);
   saturn_r_0:=saturn_r_0 +      0.00020746678 * Cos( 5.33255667599 +      199.07200143640*t);
   saturn_r_0:=saturn_r_0 +      0.00015298457 * Cos( 3.05943652881 +      529.69096509460*t);
   saturn_r_0:=saturn_r_0 +      0.00014296479 * Cos( 2.60433537909 +      323.50541665740*t);
   saturn_r_0:=saturn_r_0 +      0.00011993314 * Cos( 5.98051421881 +      846.08283475120*t);
   saturn_r_0:=saturn_r_0 +      0.00011380261 * Cos( 1.73105746566 +      522.57741809380*t);
   saturn_r_0:=saturn_r_0 +      0.00012884128 * Cos( 1.64892310393 +      138.51749687070*t);

   saturn_r_1:=saturn_r_1 +      0.06182981282 * Cos( 0.25843515034 +      213.29909543800*t);
   saturn_r_1:=saturn_r_1 +      0.00506577574 * Cos( 0.71114650941 +      206.18554843720*t);
   saturn_r_1:=saturn_r_1 +      0.00341394136 * Cos( 5.79635773960 +      426.59819087600*t);
   saturn_r_1:=saturn_r_1 +      0.00188491375 * Cos( 0.47215719444 +      220.41264243880*t);
   saturn_r_1:=saturn_r_1 +      0.00186261540 * Cos( 3.14159265359 +        0.00000000000*t);
   saturn_r_1:=saturn_r_1 +      0.00143891176 * Cos( 1.40744864239 +        7.11354700080*t);
   saturn_r_1:=saturn_r_1 +      0.00049621111 * Cos( 6.01744469580 +      103.09277421860*t);
   saturn_r_1:=saturn_r_1 +      0.00020928189 * Cos( 5.09245654470 +      639.89728631400*t);
   saturn_r_1:=saturn_r_1 +      0.00019952612 * Cos( 1.17560125007 +      419.48464387520*t);
   saturn_r_1:=saturn_r_1 +      0.00018839639 * Cos( 1.60819563173 +      110.20632121940*t);
   saturn_r_1:=saturn_r_1 +      0.00012892827 * Cos( 5.94330258435 +      433.71173787680*t);
   saturn_r_1:=saturn_r_1 +      0.00013876565 * Cos( 0.75886204364 +      199.07200143640*t);
   saturn_r_1:=saturn_r_1 * t;

   saturn_r_2:=saturn_r_2 +      0.00436902464 * Cos( 4.78671673044 +      213.29909543800*t);
   saturn_r_2:=saturn_r_2 +      0.00071922760 * Cos( 2.50069994874 +      206.18554843720*t);
   saturn_r_2:=saturn_r_2 +      0.00049766792 * Cos( 4.97168150870 +      220.41264243880*t);
   saturn_r_2:=saturn_r_2 +      0.00043220894 * Cos( 3.86940443794 +      426.59819087600*t);
   saturn_r_2:=saturn_r_2 +      0.00029645554 * Cos( 5.96310264282 +        7.11354700080*t);
   saturn_r_2:=saturn_r_2 * t * t;

   saturn_r_3:=saturn_r_3 +      0.00020315005 * Cos( 3.02186626038 +      213.29909543800*t);
   saturn_r_3:=saturn_r_3 * t * t * t;

   vsop87d_micro_saturn_r := saturn_r_0+saturn_r_1+saturn_r_2+saturn_r_3;
end;

function vsop87d_micro_uranus_l(t: Double): Double;
   var uranus_l_0: Double=0.0;
   var uranus_l_1: Double=0.0;
   var uranus_l_2: Double=0.0;
begin

   uranus_l_0:=uranus_l_0 +      5.48129294299 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_0:=uranus_l_0 +      0.09260408252 * Cos( 0.89106421530 +       74.78159856730*t);
   uranus_l_0:=uranus_l_0 +      0.01504247826 * Cos( 3.62719262195 +        1.48447270830*t);
   uranus_l_0:=uranus_l_0 +      0.00365981718 * Cos( 1.89962189068 +       73.29712585900*t);
   uranus_l_0:=uranus_l_0 +      0.00272328132 * Cos( 3.35823710524 +      149.56319713460*t);
   uranus_l_0:=uranus_l_0 +      0.00070328499 * Cos( 5.39254431993 +       63.73589830340*t);
   uranus_l_0:=uranus_l_0 +      0.00068892609 * Cos( 6.09292489045 +       76.26607127560*t);
   uranus_l_0:=uranus_l_0 +      0.00061998592 * Cos( 2.26952040469 +        2.96894541660*t);
   uranus_l_0:=uranus_l_0 +      0.00061950714 * Cos( 2.85098907565 +       11.04570026390*t);
   uranus_l_0:=uranus_l_0 +      0.00026468869 * Cos( 3.14152087888 +       71.81265315070*t);
   uranus_l_0:=uranus_l_0 +      0.00025710505 * Cos( 6.11379842935 +      454.90936652730*t);
   uranus_l_0:=uranus_l_0 +      0.00021078897 * Cos( 4.36059465144 +      148.07872442630*t);
   uranus_l_0:=uranus_l_0 +      0.00017818665 * Cos( 1.74436982544 +       36.64856292950*t);
   uranus_l_0:=uranus_l_0 +      0.00014613471 * Cos( 4.73732047977 +        3.93215326310*t);
   uranus_l_0:=uranus_l_0 +      0.00011162535 * Cos( 5.82681993692 +      224.34479570190*t);
   uranus_l_0:=uranus_l_0 +      0.00010997934 * Cos( 0.48865493179 +      138.51749687070*t);

   uranus_l_1:=uranus_l_1 +     75.02543121646 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_1:=uranus_l_1 +      0.00154458244 * Cos( 5.24201658072 +       74.78159856730*t);
   uranus_l_1:=uranus_l_1 +      0.00024456413 * Cos( 1.71255705309 +        1.48447270830*t);
   uranus_l_1:=uranus_l_1 * t;

   uranus_l_2:=uranus_l_2 +      0.00053033277 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_2:=uranus_l_2 * t * t;

   vsop87d_micro_uranus_l := uranus_l_0+uranus_l_1+uranus_l_2;
end;

function vsop87d_micro_uranus_b(t: Double): Double;
   var uranus_b_0: Double=0.0;
   var uranus_b_1: Double=0.0;
begin

   uranus_b_0:=uranus_b_0 +      0.01346277639 * Cos( 2.61877810545 +       74.78159856730*t);
   uranus_b_0:=uranus_b_0 +      0.00062341405 * Cos( 5.08111175856 +      149.56319713460*t);
   uranus_b_0:=uranus_b_0 +      0.00061601203 * Cos( 3.14159265359 +        0.00000000000*t);

   uranus_b_1:=uranus_b_1 +      0.00206366162 * Cos( 4.12394311407 +       74.78159856730*t);
   uranus_b_1:=uranus_b_1 * t;

   vsop87d_micro_uranus_b := uranus_b_0+uranus_b_1;
end;

function vsop87d_micro_uranus_r(t: Double): Double;
   var uranus_r_0: Double=0.0;
   var uranus_r_1: Double=0.0;
   var uranus_r_2: Double=0.0;
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
   uranus_r_0:=uranus_r_0 +      0.00093192359 * Cos( 0.17437193645 +       36.64856292950*t);
   uranus_r_0:=uranus_r_0 +      0.00071424265 * Cos( 4.24509327405 +      224.34479570190*t);
   uranus_r_0:=uranus_r_0 +      0.00089805842 * Cos( 3.66105366329 +      109.94568878850*t);
   uranus_r_0:=uranus_r_0 +      0.00039009624 * Cos( 1.66971128869 +       70.84944530420*t);
   uranus_r_0:=uranus_r_0 +      0.00046677322 * Cos( 1.39976563936 +       35.16409022120*t);
   uranus_r_0:=uranus_r_0 +      0.00039025681 * Cos( 3.36234710692 +      277.03499374140*t);
   uranus_r_0:=uranus_r_0 +      0.00036755160 * Cos( 3.88648934736 +      146.59425171800*t);
   uranus_r_0:=uranus_r_0 +      0.00030348875 * Cos( 0.70100446346 +      151.04766984290*t);
   uranus_r_0:=uranus_r_0 +      0.00029156264 * Cos( 3.18056174556 +       77.75054398390*t);
   uranus_r_0:=uranus_r_0 +      0.00020471584 * Cos( 1.55588961500 +      202.25339517410*t);
   uranus_r_0:=uranus_r_0 +      0.00025620360 * Cos( 5.25656292802 +      380.12776796000*t);
   uranus_r_0:=uranus_r_0 +      0.00025785805 * Cos( 3.78537741503 +       85.82729883120*t);
   uranus_r_0:=uranus_r_0 +      0.00022637152 * Cos( 0.72519137745 +      529.69096509460*t);
   uranus_r_0:=uranus_r_0 +      0.00020473163 * Cos( 2.79639811626 +       70.32818044240*t);
   uranus_r_0:=uranus_r_0 +      0.00017900561 * Cos( 0.55455488605 +        2.96894541660*t);
   uranus_r_0:=uranus_r_0 +      0.00012328151 * Cos( 5.96039150918 +      127.47179660680*t);
   uranus_r_0:=uranus_r_0 +      0.00014701566 * Cos( 4.90434406648 +      108.46121608020*t);
   uranus_r_0:=uranus_r_0 +      0.00011494701 * Cos( 0.43774027872 +       65.22037101170*t);
   uranus_r_0:=uranus_r_0 +      0.00015502809 * Cos( 5.35405037603 +       38.13303563780*t);
   uranus_r_0:=uranus_r_0 +      0.00010792699 * Cos( 1.42104858472 +      213.29909543800*t);
   uranus_r_0:=uranus_r_0 +      0.00011696085 * Cos( 3.29825599114 +        3.93215326310*t);
   uranus_r_0:=uranus_r_0 +      0.00011959355 * Cos( 1.75044072173 +      984.60033162190*t);
   uranus_r_0:=uranus_r_0 +      0.00012896507 * Cos( 2.62154018241 +      111.43016149680*t);
   uranus_r_0:=uranus_r_0 +      0.00011852996 * Cos( 0.99342814582 +       52.69019803950*t);

   uranus_r_1:=uranus_r_1 +      0.01479896370 * Cos( 3.67205705317 +       74.78159856730*t);
   uranus_r_1:=uranus_r_1 +      0.00071212085 * Cos( 6.22601006675 +       63.73589830340*t);
   uranus_r_1:=uranus_r_1 +      0.00068626972 * Cos( 6.13411265052 +      149.56319713460*t);
   uranus_r_1:=uranus_r_1 +      0.00020857262 * Cos( 5.24625494219 +       11.04570026390*t);
   uranus_r_1:=uranus_r_1 +      0.00021468152 * Cos( 2.60176704270 +       76.26607127560*t);
   uranus_r_1:=uranus_r_1 +      0.00024059649 * Cos( 3.14159265359 +        0.00000000000*t);
   uranus_r_1:=uranus_r_1 +      0.00011405346 * Cos( 0.01848461561 +       70.84944530420*t);
   uranus_r_1:=uranus_r_1 * t;

   uranus_r_2:=uranus_r_2 +      0.00022439904 * Cos( 0.69953118760 +       74.78159856730*t);
   uranus_r_2:=uranus_r_2 * t * t;

   vsop87d_micro_uranus_r := uranus_r_0+uranus_r_1+uranus_r_2;
end;

function vsop87d_micro_venus_l(t: Double): Double;
   var venus_l_0: Double=0.0;
   var venus_l_1: Double=0.0;
   var venus_l_2: Double=0.0;
begin

   venus_l_0:=venus_l_0 +      3.17614666774 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_l_0:=venus_l_0 +      0.01353968419 * Cos( 5.59313319619 +    10213.28554621100*t);
   venus_l_0:=venus_l_0 +      0.00089891645 * Cos( 5.30650048468 +    20426.57109242200*t);

   venus_l_1:=venus_l_1 +  10213.52943052898 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_l_1:=venus_l_1 +      0.00095707712 * Cos( 2.46424448979 +    10213.28554621100*t);
   venus_l_1:=venus_l_1 +      0.00014444977 * Cos( 0.51624564679 +    20426.57109242200*t);
   venus_l_1:=venus_l_1 * t;

   venus_l_2:=venus_l_2 +      0.00054127076 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_l_2:=venus_l_2 * t * t;

   vsop87d_micro_venus_l := venus_l_0+venus_l_1+venus_l_2;
end;

function vsop87d_micro_venus_b(t: Double): Double;
   var venus_b_0: Double=0.0;
   var venus_b_1: Double=0.0;
   var venus_b_2: Double=0.0;
begin

   venus_b_0:=venus_b_0 +      0.05923638472 * Cos( 0.26702775813 +    10213.28554621100*t);
   venus_b_0:=venus_b_0 +      0.00040107978 * Cos( 1.14737178106 +    20426.57109242200*t);
   venus_b_0:=venus_b_0 +      0.00032814918 * Cos( 3.14159265359 +        0.00000000000*t);

   venus_b_1:=venus_b_1 +      0.00513347602 * Cos( 1.80364310797 +    10213.28554621100*t);
   venus_b_1:=venus_b_1 * t;

   venus_b_2:=venus_b_2 +      0.00022377665 * Cos( 3.38509143877 +    10213.28554621100*t);
   venus_b_2:=venus_b_2 * t * t;

   vsop87d_micro_venus_b := venus_b_0+venus_b_1+venus_b_2;
end;

function vsop87d_micro_venus_r(t: Double): Double;
   var venus_r_0: Double=0.0;
   var venus_r_1: Double=0.0;
begin

   venus_r_0:=venus_r_0 +      0.72334820905 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_r_0:=venus_r_0 +      0.00489824185 * Cos( 4.02151832268 +    10213.28554621100*t);

   venus_r_1:=venus_r_1 +      0.00034551039 * Cos( 0.89198710598 +    10213.28554621100*t);
   venus_r_1:=venus_r_1 * t;

   vsop87d_micro_venus_r := venus_r_0+venus_r_1;
end;

procedure vsop87d_micro_getEarth(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_micro_earth_l(t);
   temp[1]:=vsop87d_micro_earth_b(t);
   temp[2]:=vsop87d_micro_earth_r(t);
end;

procedure vsop87d_micro_getJupiter(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_micro_jupiter_l(t);
   temp[1]:=vsop87d_micro_jupiter_b(t);
   temp[2]:=vsop87d_micro_jupiter_r(t);
end;

procedure vsop87d_micro_getMars(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_micro_mars_l(t);
   temp[1]:=vsop87d_micro_mars_b(t);
   temp[2]:=vsop87d_micro_mars_r(t);
end;

procedure vsop87d_micro_getMercury(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_micro_mercury_l(t);
   temp[1]:=vsop87d_micro_mercury_b(t);
   temp[2]:=vsop87d_micro_mercury_r(t);
end;

procedure vsop87d_micro_getNeptune(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_micro_neptune_l(t);
   temp[1]:=vsop87d_micro_neptune_b(t);
   temp[2]:=vsop87d_micro_neptune_r(t);
end;

procedure vsop87d_micro_getSaturn(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_micro_saturn_l(t);
   temp[1]:=vsop87d_micro_saturn_b(t);
   temp[2]:=vsop87d_micro_saturn_r(t);
end;

procedure vsop87d_micro_getUranus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_micro_uranus_l(t);
   temp[1]:=vsop87d_micro_uranus_b(t);
   temp[2]:=vsop87d_micro_uranus_r(t);
end;

procedure vsop87d_micro_getVenus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_micro_venus_l(t);
   temp[1]:=vsop87d_micro_venus_b(t);
   temp[2]:=vsop87d_micro_venus_r(t);
end;
end.