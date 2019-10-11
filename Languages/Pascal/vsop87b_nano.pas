unit vsop87b_nano;

interface
uses Math;

procedure vsop87b_nano_getEarth(t: Double;temp: array of Double);
procedure vsop87b_nano_getJupiter(t: Double;temp: array of Double);
procedure vsop87b_nano_getMars(t: Double;temp: array of Double);
procedure vsop87b_nano_getMercury(t: Double;temp: array of Double);
procedure vsop87b_nano_getNeptune(t: Double;temp: array of Double);
procedure vsop87b_nano_getSaturn(t: Double;temp: array of Double);
procedure vsop87b_nano_getUranus(t: Double;temp: array of Double);
procedure vsop87b_nano_getVenus(t: Double;temp: array of Double);

implementation



function vsop87b_nano_earth_l(t: Double): Double;
   var earth_l_0: Double=0.0;
   var earth_l_1: Double=0.0;
begin

   earth_l_0:=earth_l_0 +      1.75347045673 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_l_0:=earth_l_0 +      0.03341656453 * Cos( 4.66925680415 +     6283.07584999140*t);

   earth_l_1:=earth_l_1 +   6283.07584999140 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_l_1:=earth_l_1 +      0.00206058863 * Cos( 2.67823455808 +     6283.07584999140*t);
   earth_l_1:=earth_l_1 * t;

   vsop87b_nano_earth_l := earth_l_0+earth_l_1;
end;

function vsop87b_nano_earth_b(t: Double): Double;
   var earth_b_1: Double=0.0;
begin

   earth_b_1:=earth_b_1 +      0.00227777722 * Cos( 3.41376620530 +     6283.07584999140*t);
   earth_b_1:=earth_b_1 * t;

   vsop87b_nano_earth_b := earth_b_1;
end;

function vsop87b_nano_earth_r(t: Double): Double;
   var earth_r_0: Double=0.0;
   var earth_r_1: Double=0.0;
begin

   earth_r_0:=earth_r_0 +      1.00013988784 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_r_0:=earth_r_0 +      0.01670699632 * Cos( 3.09846350258 +     6283.07584999140*t);

   earth_r_1:=earth_r_1 +      0.00103018607 * Cos( 1.10748968172 +     6283.07584999140*t);
   earth_r_1:=earth_r_1 * t;

   vsop87b_nano_earth_r := earth_r_0+earth_r_1;
end;

function vsop87b_nano_jupiter_l(t: Double): Double;
   var jupiter_l_0: Double=0.0;
   var jupiter_l_1: Double=0.0;
begin

   jupiter_l_0:=jupiter_l_0 +      0.59954691494 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_l_0:=jupiter_l_0 +      0.09695898719 * Cos( 5.06191793158 +      529.69096509460*t);
   jupiter_l_0:=jupiter_l_0 +      0.00573610142 * Cos( 1.44406205629 +        7.11354700080*t);
   jupiter_l_0:=jupiter_l_0 +      0.00306389205 * Cos( 5.41734730184 +     1059.38193018920*t);

   jupiter_l_1:=jupiter_l_1 +    529.69096508814 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_l_1:=jupiter_l_1 +      0.00489503243 * Cos( 4.22082939470 +      529.69096509460*t);
   jupiter_l_1:=jupiter_l_1 +      0.00228917222 * Cos( 6.02646855621 +        7.11354700080*t);
   jupiter_l_1:=jupiter_l_1 * t;

   vsop87b_nano_jupiter_l := jupiter_l_0+jupiter_l_1;
end;

function vsop87b_nano_jupiter_b(t: Double): Double;
   var jupiter_b_0: Double=0.0;
begin

   jupiter_b_0:=jupiter_b_0 +      0.02268615702 * Cos( 3.55852606721 +      529.69096509460*t);
   jupiter_b_0:=jupiter_b_0 +      0.00109971634 * Cos( 3.90809347197 +     1059.38193018920*t);
   jupiter_b_0:=jupiter_b_0 +      0.00110090358 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87b_nano_jupiter_b := jupiter_b_0;
end;

function vsop87b_nano_jupiter_r(t: Double): Double;
   var jupiter_r_0: Double=0.0;
   var jupiter_r_1: Double=0.0;
begin

   jupiter_r_0:=jupiter_r_0 +      5.20887429326 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_r_0:=jupiter_r_0 +      0.25209327119 * Cos( 3.49108639871 +      529.69096509460*t);
   jupiter_r_0:=jupiter_r_0 +      0.00610599976 * Cos( 3.84115365948 +     1059.38193018920*t);
   jupiter_r_0:=jupiter_r_0 +      0.00282029458 * Cos( 2.57419881293 +      632.78373931320*t);
   jupiter_r_0:=jupiter_r_0 +      0.00187647346 * Cos( 2.07590383214 +      522.57741809380*t);

   jupiter_r_1:=jupiter_r_1 +      0.01271801520 * Cos( 2.64937512894 +      529.69096509460*t);
   jupiter_r_1:=jupiter_r_1 * t;

   vsop87b_nano_jupiter_r := jupiter_r_0+jupiter_r_1;
end;

function vsop87b_nano_mars_l(t: Double): Double;
   var mars_l_0: Double=0.0;
   var mars_l_1: Double=0.0;
begin

   mars_l_0:=mars_l_0 +      6.20347711581 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_l_0:=mars_l_0 +      0.18656368093 * Cos( 5.05037100270 +     3340.61242669980*t);
   mars_l_0:=mars_l_0 +      0.01108216816 * Cos( 5.40099836344 +     6681.22485339960*t);

   mars_l_1:=mars_l_1 +   3340.61242700512 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_l_1:=mars_l_1 +      0.01457554523 * Cos( 3.60433733236 +     3340.61242669980*t);
   mars_l_1:=mars_l_1 +      0.00168414711 * Cos( 3.92318567804 +     6681.22485339960*t);
   mars_l_1:=mars_l_1 * t;

   vsop87b_nano_mars_l := mars_l_0+mars_l_1;
end;

function vsop87b_nano_mars_b(t: Double): Double;
   var mars_b_0: Double=0.0;
   var mars_b_1: Double=0.0;
begin

   mars_b_0:=mars_b_0 +      0.03197134986 * Cos( 3.76832042431 +     3340.61242669980*t);
   mars_b_0:=mars_b_0 +      0.00298033234 * Cos( 4.10616996305 +     6681.22485339960*t);
   mars_b_0:=mars_b_0 +      0.00289104742 * Cos( 0.00000000000 +        0.00000000000*t);

   mars_b_1:=mars_b_1 +      0.00217310991 * Cos( 6.04472194776 +     3340.61242669980*t);
   mars_b_1:=mars_b_1 * t;

   vsop87b_nano_mars_b := mars_b_0+mars_b_1;
end;

function vsop87b_nano_mars_r(t: Double): Double;
   var mars_r_0: Double=0.0;
   var mars_r_1: Double=0.0;
begin

   mars_r_0:=mars_r_0 +      1.53033488271 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_r_0:=mars_r_0 +      0.14184953160 * Cos( 3.47971283528 +     3340.61242669980*t);
   mars_r_0:=mars_r_0 +      0.00660776362 * Cos( 3.81783443019 +     6681.22485339960*t);

   mars_r_1:=mars_r_1 +      0.01107433345 * Cos( 2.03250524857 +     3340.61242669980*t);
   mars_r_1:=mars_r_1 +      0.00103175887 * Cos( 2.37071847807 +     6681.22485339960*t);
   mars_r_1:=mars_r_1 * t;

   vsop87b_nano_mars_r := mars_r_0+mars_r_1;
end;

function vsop87b_nano_mercury_l(t: Double): Double;
   var mercury_l_0: Double=0.0;
   var mercury_l_1: Double=0.0;
begin

   mercury_l_0:=mercury_l_0 +      4.40250710144 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_l_0:=mercury_l_0 +      0.40989414977 * Cos( 1.48302034195 +    26087.90314157420*t);
   mercury_l_0:=mercury_l_0 +      0.05046294200 * Cos( 4.47785489551 +    52175.80628314840*t);
   mercury_l_0:=mercury_l_0 +      0.00855346844 * Cos( 1.16520322459 +    78263.70942472259*t);
   mercury_l_0:=mercury_l_0 +      0.00165590362 * Cos( 4.11969163423 +   104351.61256629678*t);

   mercury_l_1:=mercury_l_1 +  26087.90313685529 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_l_1:=mercury_l_1 +      0.01131199811 * Cos( 6.21874197797 +    26087.90314157420*t);
   mercury_l_1:=mercury_l_1 +      0.00292242298 * Cos( 3.04449355541 +    52175.80628314840*t);
   mercury_l_1:=mercury_l_1 * t;

   vsop87b_nano_mercury_l := mercury_l_0+mercury_l_1;
end;

function vsop87b_nano_mercury_b(t: Double): Double;
   var mercury_b_0: Double=0.0;
   var mercury_b_1: Double=0.0;
begin

   mercury_b_0:=mercury_b_0 +      0.11737528961 * Cos( 1.98357498767 +    26087.90314157420*t);
   mercury_b_0:=mercury_b_0 +      0.02388076996 * Cos( 5.03738959686 +    52175.80628314840*t);
   mercury_b_0:=mercury_b_0 +      0.01222839532 * Cos( 3.14159265359 +        0.00000000000*t);
   mercury_b_0:=mercury_b_0 +      0.00543251810 * Cos( 1.79644363964 +    78263.70942472259*t);
   mercury_b_0:=mercury_b_0 +      0.00129778770 * Cos( 4.83232503958 +   104351.61256629678*t);

   mercury_b_1:=mercury_b_1 +      0.00274646065 * Cos( 3.95008450011 +    26087.90314157420*t);
   mercury_b_1:=mercury_b_1 * t;

   vsop87b_nano_mercury_b := mercury_b_0+mercury_b_1;
end;

function vsop87b_nano_mercury_r(t: Double): Double;
   var mercury_r_0: Double=0.0;
   var mercury_r_1: Double=0.0;
begin

   mercury_r_0:=mercury_r_0 +      0.39528271651 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_r_0:=mercury_r_0 +      0.07834131818 * Cos( 6.19233722598 +    26087.90314157420*t);
   mercury_r_0:=mercury_r_0 +      0.00795525558 * Cos( 2.95989690104 +    52175.80628314840*t);
   mercury_r_0:=mercury_r_0 +      0.00121281764 * Cos( 6.01064153797 +    78263.70942472259*t);

   mercury_r_1:=mercury_r_1 +      0.00217347740 * Cos( 4.65617158665 +    26087.90314157420*t);
   mercury_r_1:=mercury_r_1 * t;

   vsop87b_nano_mercury_r := mercury_r_0+mercury_r_1;
end;

function vsop87b_nano_neptune_l(t: Double): Double;
   var neptune_l_0: Double=0.0;
   var neptune_l_1: Double=0.0;
begin

   neptune_l_0:=neptune_l_0 +      5.31188633046 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_0:=neptune_l_0 +      0.01798475530 * Cos( 2.90101273890 +       38.13303563780*t);
   neptune_l_0:=neptune_l_0 +      0.01019727652 * Cos( 0.48580922867 +        1.48447270830*t);
   neptune_l_0:=neptune_l_0 +      0.00124531845 * Cos( 4.83008090676 +       36.64856292950*t);

   neptune_l_1:=neptune_l_1 +     38.13303563957 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_1:=neptune_l_1 * t;

   vsop87b_nano_neptune_l := neptune_l_0+neptune_l_1;
end;

function vsop87b_nano_neptune_b(t: Double): Double;
   var neptune_b_0: Double=0.0;
begin

   neptune_b_0:=neptune_b_0 +      0.03088622933 * Cos( 1.44104372644 +       38.13303563780*t);

   vsop87b_nano_neptune_b := neptune_b_0;
end;

function vsop87b_nano_neptune_r(t: Double): Double;
   var neptune_r_0: Double=0.0;
   var neptune_r_1: Double=0.0;
begin

   neptune_r_0:=neptune_r_0 +     30.07013205828 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_r_0:=neptune_r_0 +      0.27062259632 * Cos( 1.32999459377 +       38.13303563780*t);
   neptune_r_0:=neptune_r_0 +      0.01691764014 * Cos( 3.25186135653 +       36.64856292950*t);
   neptune_r_0:=neptune_r_0 +      0.00807830553 * Cos( 5.18592878704 +        1.48447270830*t);
   neptune_r_0:=neptune_r_0 +      0.00537760510 * Cos( 4.52113935896 +       35.16409022120*t);
   neptune_r_0:=neptune_r_0 +      0.00495725141 * Cos( 1.57105641650 +      491.55792945680*t);
   neptune_r_0:=neptune_r_0 +      0.00274571975 * Cos( 1.84552258866 +      175.16605980020*t);
   neptune_r_0:=neptune_r_0 +      0.00135134092 * Cos( 3.37220609835 +       39.61750834610*t);
   neptune_r_0:=neptune_r_0 +      0.00121801746 * Cos( 5.79754470298 +       76.26607127560*t);
   neptune_r_0:=neptune_r_0 +      0.00100896068 * Cos( 0.37702724930 +       73.29712585900*t);

   neptune_r_1:=neptune_r_1 +      0.00236338618 * Cos( 0.70497954792 +       38.13303563780*t);
   neptune_r_1:=neptune_r_1 * t;

   vsop87b_nano_neptune_r := neptune_r_0+neptune_r_1;
end;

function vsop87b_nano_saturn_l(t: Double): Double;
   var saturn_l_0: Double=0.0;
   var saturn_l_1: Double=0.0;
   var saturn_l_2: Double=0.0;
begin

   saturn_l_0:=saturn_l_0 +      0.87401354025 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_0:=saturn_l_0 +      0.11107659762 * Cos( 3.96205090159 +      213.29909543800*t);
   saturn_l_0:=saturn_l_0 +      0.01414150957 * Cos( 4.58581516874 +        7.11354700080*t);
   saturn_l_0:=saturn_l_0 +      0.00398379389 * Cos( 0.52112032699 +      206.18554843720*t);
   saturn_l_0:=saturn_l_0 +      0.00350769243 * Cos( 3.30329907896 +      426.59819087600*t);
   saturn_l_0:=saturn_l_0 +      0.00206816305 * Cos( 0.24658372002 +      103.09277421860*t);

   saturn_l_1:=saturn_l_1 +    213.29909521690 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_1:=saturn_l_1 +      0.01297370862 * Cos( 1.82834923978 +      213.29909543800*t);
   saturn_l_1:=saturn_l_1 +      0.00564345393 * Cos( 2.88499717272 +        7.11354700080*t);
   saturn_l_1:=saturn_l_1 +      0.00107674962 * Cos( 2.27769131009 +      206.18554843720*t);
   saturn_l_1:=saturn_l_1 * t;

   saturn_l_2:=saturn_l_2 +      0.00116441330 * Cos( 1.17988132879 +        7.11354700080*t);
   saturn_l_2:=saturn_l_2 * t * t;

   vsop87b_nano_saturn_l := saturn_l_0+saturn_l_1+saturn_l_2;
end;

function vsop87b_nano_saturn_b(t: Double): Double;
   var saturn_b_0: Double=0.0;
   var saturn_b_1: Double=0.0;
begin

   saturn_b_0:=saturn_b_0 +      0.04330678039 * Cos( 3.60284428399 +      213.29909543800*t);
   saturn_b_0:=saturn_b_0 +      0.00240348302 * Cos( 2.85238489373 +      426.59819087600*t);

   saturn_b_1:=saturn_b_1 +      0.00198927992 * Cos( 4.93901017903 +      213.29909543800*t);
   saturn_b_1:=saturn_b_1 * t;

   vsop87b_nano_saturn_b := saturn_b_0+saturn_b_1;
end;

function vsop87b_nano_saturn_r(t: Double): Double;
   var saturn_r_0: Double=0.0;
   var saturn_r_1: Double=0.0;
   var saturn_r_2: Double=0.0;
begin

   saturn_r_0:=saturn_r_0 +      9.55758135486 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_r_0:=saturn_r_0 +      0.52921382865 * Cos( 2.39226219573 +      213.29909543800*t);
   saturn_r_0:=saturn_r_0 +      0.01873679867 * Cos( 5.23549604660 +      206.18554843720*t);
   saturn_r_0:=saturn_r_0 +      0.01464663929 * Cos( 1.64763042902 +      426.59819087600*t);
   saturn_r_0:=saturn_r_0 +      0.00821891141 * Cos( 5.93520042303 +      316.39186965660*t);
   saturn_r_0:=saturn_r_0 +      0.00547506923 * Cos( 5.01532618980 +      103.09277421860*t);
   saturn_r_0:=saturn_r_0 +      0.00371684650 * Cos( 2.27114821115 +      220.41264243880*t);
   saturn_r_0:=saturn_r_0 +      0.00361778765 * Cos( 3.13904301847 +        7.11354700080*t);
   saturn_r_0:=saturn_r_0 +      0.00140617506 * Cos( 5.70406606781 +      632.78373931320*t);
   saturn_r_0:=saturn_r_0 +      0.00108974848 * Cos( 3.29313390175 +      110.20632121940*t);

   saturn_r_1:=saturn_r_1 +      0.06182981340 * Cos( 0.25843511480 +      213.29909543800*t);
   saturn_r_1:=saturn_r_1 +      0.00506577242 * Cos( 0.71114625261 +      206.18554843720*t);
   saturn_r_1:=saturn_r_1 +      0.00341394029 * Cos( 5.79635741658 +      426.59819087600*t);
   saturn_r_1:=saturn_r_1 +      0.00188491195 * Cos( 0.47215589652 +      220.41264243880*t);
   saturn_r_1:=saturn_r_1 +      0.00186261486 * Cos( 3.14159265359 +        0.00000000000*t);
   saturn_r_1:=saturn_r_1 +      0.00143891146 * Cos( 1.40744822888 +        7.11354700080*t);
   saturn_r_1:=saturn_r_1 * t;

   saturn_r_2:=saturn_r_2 +      0.00436902572 * Cos( 4.78671677509 +      213.29909543800*t);
   saturn_r_2:=saturn_r_2 * t * t;

   vsop87b_nano_saturn_r := saturn_r_0+saturn_r_1+saturn_r_2;
end;

function vsop87b_nano_uranus_l(t: Double): Double;
   var uranus_l_0: Double=0.0;
   var uranus_l_1: Double=0.0;
begin

   uranus_l_0:=uranus_l_0 +      5.48129294297 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_0:=uranus_l_0 +      0.09260408234 * Cos( 0.89106421507 +       74.78159856730*t);
   uranus_l_0:=uranus_l_0 +      0.01504247898 * Cos( 3.62719260920 +        1.48447270830*t);
   uranus_l_0:=uranus_l_0 +      0.00365981674 * Cos( 1.89962179044 +       73.29712585900*t);
   uranus_l_0:=uranus_l_0 +      0.00272328168 * Cos( 3.35823706307 +      149.56319713460*t);

   uranus_l_1:=uranus_l_1 +     74.78159860910 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_1:=uranus_l_1 +      0.00154332863 * Cos( 5.24158770553 +       74.78159856730*t);
   uranus_l_1:=uranus_l_1 * t;

   vsop87b_nano_uranus_l := uranus_l_0+uranus_l_1;
end;

function vsop87b_nano_uranus_b(t: Double): Double;
   var uranus_b_0: Double=0.0;
begin

   uranus_b_0:=uranus_b_0 +      0.01346277648 * Cos( 2.61877810547 +       74.78159856730*t);

   vsop87b_nano_uranus_b := uranus_b_0;
end;

function vsop87b_nano_uranus_r(t: Double): Double;
   var uranus_r_0: Double=0.0;
   var uranus_r_1: Double=0.0;
begin

   uranus_r_0:=uranus_r_0 +     19.21264847206 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_r_0:=uranus_r_0 +      0.88784984413 * Cos( 5.60377527014 +       74.78159856730*t);
   uranus_r_0:=uranus_r_0 +      0.03440836062 * Cos( 0.32836099706 +       73.29712585900*t);
   uranus_r_0:=uranus_r_0 +      0.02055653860 * Cos( 1.78295159330 +      149.56319713460*t);
   uranus_r_0:=uranus_r_0 +      0.00649322410 * Cos( 4.52247285911 +       76.26607127560*t);
   uranus_r_0:=uranus_r_0 +      0.00602247865 * Cos( 3.86003823674 +       63.73589830340*t);
   uranus_r_0:=uranus_r_0 +      0.00496404167 * Cos( 1.40139935333 +      454.90936652730*t);
   uranus_r_0:=uranus_r_0 +      0.00338525369 * Cos( 1.58002770318 +      138.51749687070*t);
   uranus_r_0:=uranus_r_0 +      0.00243509114 * Cos( 1.57086606044 +       71.81265315070*t);
   uranus_r_0:=uranus_r_0 +      0.00190522303 * Cos( 1.99809394714 +        1.48447270830*t);
   uranus_r_0:=uranus_r_0 +      0.00161858838 * Cos( 2.79137786799 +      148.07872442630*t);
   uranus_r_0:=uranus_r_0 +      0.00143706183 * Cos( 1.38368544947 +       11.04570026390*t);

   uranus_r_1:=uranus_r_1 +      0.01479896629 * Cos( 3.67205697578 +       74.78159856730*t);
   uranus_r_1:=uranus_r_1 * t;

   vsop87b_nano_uranus_r := uranus_r_0+uranus_r_1;
end;

function vsop87b_nano_venus_l(t: Double): Double;
   var venus_l_0: Double=0.0;
   var venus_l_1: Double=0.0;
begin

   venus_l_0:=venus_l_0 +      3.17614666774 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_l_0:=venus_l_0 +      0.01353968419 * Cos( 5.59313319619 +    10213.28554621100*t);

   venus_l_1:=venus_l_1 +  10213.28554621638 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_l_1:=venus_l_1 * t;

   vsop87b_nano_venus_l := venus_l_0+venus_l_1;
end;

function vsop87b_nano_venus_b(t: Double): Double;
   var venus_b_0: Double=0.0;
   var venus_b_1: Double=0.0;
begin

   venus_b_0:=venus_b_0 +      0.05923638472 * Cos( 0.26702775812 +    10213.28554621100*t);

   venus_b_1:=venus_b_1 +      0.00287821243 * Cos( 1.88964962838 +    10213.28554621100*t);
   venus_b_1:=venus_b_1 * t;

   vsop87b_nano_venus_b := venus_b_0+venus_b_1;
end;

function vsop87b_nano_venus_r(t: Double): Double;
   var venus_r_0: Double=0.0;
begin

   venus_r_0:=venus_r_0 +      0.72334820891 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_r_0:=venus_r_0 +      0.00489824182 * Cos( 4.02151831717 +    10213.28554621100*t);

   vsop87b_nano_venus_r := venus_r_0;
end;

procedure vsop87b_nano_getEarth(t: Double;temp: array of Double);
begin
   temp[0]:=vsop87b_nano_earth_l(t);
   temp[1]:=vsop87b_nano_earth_b(t);
   temp[2]:=vsop87b_nano_earth_r(t);
end;

procedure vsop87b_nano_getJupiter(t: Double;temp: array of Double);
begin
   temp[0]:=vsop87b_nano_jupiter_l(t);
   temp[1]:=vsop87b_nano_jupiter_b(t);
   temp[2]:=vsop87b_nano_jupiter_r(t);
end;

procedure vsop87b_nano_getMars(t: Double;temp: array of Double);
begin
   temp[0]:=vsop87b_nano_mars_l(t);
   temp[1]:=vsop87b_nano_mars_b(t);
   temp[2]:=vsop87b_nano_mars_r(t);
end;

procedure vsop87b_nano_getMercury(t: Double;temp: array of Double);
begin
   temp[0]:=vsop87b_nano_mercury_l(t);
   temp[1]:=vsop87b_nano_mercury_b(t);
   temp[2]:=vsop87b_nano_mercury_r(t);
end;

procedure vsop87b_nano_getNeptune(t: Double;temp: array of Double);
begin
   temp[0]:=vsop87b_nano_neptune_l(t);
   temp[1]:=vsop87b_nano_neptune_b(t);
   temp[2]:=vsop87b_nano_neptune_r(t);
end;

procedure vsop87b_nano_getSaturn(t: Double;temp: array of Double);
begin
   temp[0]:=vsop87b_nano_saturn_l(t);
   temp[1]:=vsop87b_nano_saturn_b(t);
   temp[2]:=vsop87b_nano_saturn_r(t);
end;

procedure vsop87b_nano_getUranus(t: Double;temp: array of Double);
begin
   temp[0]:=vsop87b_nano_uranus_l(t);
   temp[1]:=vsop87b_nano_uranus_b(t);
   temp[2]:=vsop87b_nano_uranus_r(t);
end;

procedure vsop87b_nano_getVenus(t: Double;temp: array of Double);
begin
   temp[0]:=vsop87b_nano_venus_l(t);
   temp[1]:=vsop87b_nano_venus_b(t);
   temp[2]:=vsop87b_nano_venus_r(t);
end;
end.