//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

unit vsop87b_pico;

interface
uses Math;

procedure vsop87b_pico_getEarth(t: Double;var temp: array of Double);
procedure vsop87b_pico_getJupiter(t: Double;var temp: array of Double);
procedure vsop87b_pico_getMars(t: Double;var temp: array of Double);
procedure vsop87b_pico_getMercury(t: Double;var temp: array of Double);
procedure vsop87b_pico_getNeptune(t: Double;var temp: array of Double);
procedure vsop87b_pico_getSaturn(t: Double;var temp: array of Double);
procedure vsop87b_pico_getUranus(t: Double;var temp: array of Double);
procedure vsop87b_pico_getVenus(t: Double;var temp: array of Double);

implementation



function vsop87b_pico_earth_l(t: Double): Double;
   var earth_l_0: Double=0.0;
   var earth_l_1: Double=0.0;
begin

   earth_l_0:=earth_l_0 +      1.75347045673 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_l_0:=earth_l_0 +      0.03341656453 * Cos( 4.66925680415 +     6283.07584999140*t);

   earth_l_1:=earth_l_1 +   6283.07584999140 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_l_1:=earth_l_1 * t;

   vsop87b_pico_earth_l := earth_l_0+earth_l_1;
end;

function vsop87b_pico_earth_b(t: Double): Double;
begin

   vsop87b_pico_earth_b := 0;
end;

function vsop87b_pico_earth_r(t: Double): Double;
   var earth_r_0: Double=0.0;
begin

   earth_r_0:=earth_r_0 +      1.00013988784 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_r_0:=earth_r_0 +      0.01670699632 * Cos( 3.09846350258 +     6283.07584999140*t);

   vsop87b_pico_earth_r := earth_r_0;
end;

function vsop87b_pico_jupiter_l(t: Double): Double;
   var jupiter_l_0: Double=0.0;
   var jupiter_l_1: Double=0.0;
begin

   jupiter_l_0:=jupiter_l_0 +      0.59954691494 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_l_0:=jupiter_l_0 +      0.09695898719 * Cos( 5.06191793158 +      529.69096509460*t);

   jupiter_l_1:=jupiter_l_1 +    529.69096508814 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_l_1:=jupiter_l_1 * t;

   vsop87b_pico_jupiter_l := jupiter_l_0+jupiter_l_1;
end;

function vsop87b_pico_jupiter_b(t: Double): Double;
   var jupiter_b_0: Double=0.0;
begin

   jupiter_b_0:=jupiter_b_0 +      0.02268615702 * Cos( 3.55852606721 +      529.69096509460*t);

   vsop87b_pico_jupiter_b := jupiter_b_0;
end;

function vsop87b_pico_jupiter_r(t: Double): Double;
   var jupiter_r_0: Double=0.0;
   var jupiter_r_1: Double=0.0;
begin

   jupiter_r_0:=jupiter_r_0 +      5.20887429326 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_r_0:=jupiter_r_0 +      0.25209327119 * Cos( 3.49108639871 +      529.69096509460*t);

   jupiter_r_1:=jupiter_r_1 +      0.01271801520 * Cos( 2.64937512894 +      529.69096509460*t);
   jupiter_r_1:=jupiter_r_1 * t;

   vsop87b_pico_jupiter_r := jupiter_r_0+jupiter_r_1;
end;

function vsop87b_pico_mars_l(t: Double): Double;
   var mars_l_0: Double=0.0;
   var mars_l_1: Double=0.0;
begin

   mars_l_0:=mars_l_0 +      6.20347711581 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_l_0:=mars_l_0 +      0.18656368093 * Cos( 5.05037100270 +     3340.61242669980*t);
   mars_l_0:=mars_l_0 +      0.01108216816 * Cos( 5.40099836344 +     6681.22485339960*t);

   mars_l_1:=mars_l_1 +   3340.61242700512 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_l_1:=mars_l_1 +      0.01457554523 * Cos( 3.60433733236 +     3340.61242669980*t);
   mars_l_1:=mars_l_1 * t;

   vsop87b_pico_mars_l := mars_l_0+mars_l_1;
end;

function vsop87b_pico_mars_b(t: Double): Double;
   var mars_b_0: Double=0.0;
begin

   mars_b_0:=mars_b_0 +      0.03197134986 * Cos( 3.76832042431 +     3340.61242669980*t);

   vsop87b_pico_mars_b := mars_b_0;
end;

function vsop87b_pico_mars_r(t: Double): Double;
   var mars_r_0: Double=0.0;
   var mars_r_1: Double=0.0;
begin

   mars_r_0:=mars_r_0 +      1.53033488271 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_r_0:=mars_r_0 +      0.14184953160 * Cos( 3.47971283528 +     3340.61242669980*t);

   mars_r_1:=mars_r_1 +      0.01107433345 * Cos( 2.03250524857 +     3340.61242669980*t);
   mars_r_1:=mars_r_1 * t;

   vsop87b_pico_mars_r := mars_r_0+mars_r_1;
end;

function vsop87b_pico_mercury_l(t: Double): Double;
   var mercury_l_0: Double=0.0;
   var mercury_l_1: Double=0.0;
begin

   mercury_l_0:=mercury_l_0 +      4.40250710144 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_l_0:=mercury_l_0 +      0.40989414977 * Cos( 1.48302034195 +    26087.90314157420*t);
   mercury_l_0:=mercury_l_0 +      0.05046294200 * Cos( 4.47785489551 +    52175.80628314840*t);

   mercury_l_1:=mercury_l_1 +  26087.90313685529 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_l_1:=mercury_l_1 +      0.01131199811 * Cos( 6.21874197797 +    26087.90314157420*t);
   mercury_l_1:=mercury_l_1 * t;

   vsop87b_pico_mercury_l := mercury_l_0+mercury_l_1;
end;

function vsop87b_pico_mercury_b(t: Double): Double;
   var mercury_b_0: Double=0.0;
begin

   mercury_b_0:=mercury_b_0 +      0.11737528961 * Cos( 1.98357498767 +    26087.90314157420*t);
   mercury_b_0:=mercury_b_0 +      0.02388076996 * Cos( 5.03738959686 +    52175.80628314840*t);
   mercury_b_0:=mercury_b_0 +      0.01222839532 * Cos( 3.14159265359 +        0.00000000000*t);

   vsop87b_pico_mercury_b := mercury_b_0;
end;

function vsop87b_pico_mercury_r(t: Double): Double;
   var mercury_r_0: Double=0.0;
begin

   mercury_r_0:=mercury_r_0 +      0.39528271651 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_r_0:=mercury_r_0 +      0.07834131818 * Cos( 6.19233722598 +    26087.90314157420*t);

   vsop87b_pico_mercury_r := mercury_r_0;
end;

function vsop87b_pico_neptune_l(t: Double): Double;
   var neptune_l_0: Double=0.0;
   var neptune_l_1: Double=0.0;
begin

   neptune_l_0:=neptune_l_0 +      5.31188633046 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_0:=neptune_l_0 +      0.01798475530 * Cos( 2.90101273890 +       38.13303563780*t);
   neptune_l_0:=neptune_l_0 +      0.01019727652 * Cos( 0.48580922867 +        1.48447270830*t);

   neptune_l_1:=neptune_l_1 +     38.13303563957 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_1:=neptune_l_1 * t;

   vsop87b_pico_neptune_l := neptune_l_0+neptune_l_1;
end;

function vsop87b_pico_neptune_b(t: Double): Double;
   var neptune_b_0: Double=0.0;
begin

   neptune_b_0:=neptune_b_0 +      0.03088622933 * Cos( 1.44104372644 +       38.13303563780*t);

   vsop87b_pico_neptune_b := neptune_b_0;
end;

function vsop87b_pico_neptune_r(t: Double): Double;
   var neptune_r_0: Double=0.0;
begin

   neptune_r_0:=neptune_r_0 +     30.07013205828 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_r_0:=neptune_r_0 +      0.27062259632 * Cos( 1.32999459377 +       38.13303563780*t);
   neptune_r_0:=neptune_r_0 +      0.01691764014 * Cos( 3.25186135653 +       36.64856292950*t);

   vsop87b_pico_neptune_r := neptune_r_0;
end;

function vsop87b_pico_saturn_l(t: Double): Double;
   var saturn_l_0: Double=0.0;
   var saturn_l_1: Double=0.0;
begin

   saturn_l_0:=saturn_l_0 +      0.87401354025 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_0:=saturn_l_0 +      0.11107659762 * Cos( 3.96205090159 +      213.29909543800*t);
   saturn_l_0:=saturn_l_0 +      0.01414150957 * Cos( 4.58581516874 +        7.11354700080*t);

   saturn_l_1:=saturn_l_1 +    213.29909521690 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_1:=saturn_l_1 +      0.01297370862 * Cos( 1.82834923978 +      213.29909543800*t);
   saturn_l_1:=saturn_l_1 * t;

   vsop87b_pico_saturn_l := saturn_l_0+saturn_l_1;
end;

function vsop87b_pico_saturn_b(t: Double): Double;
   var saturn_b_0: Double=0.0;
begin

   saturn_b_0:=saturn_b_0 +      0.04330678039 * Cos( 3.60284428399 +      213.29909543800*t);

   vsop87b_pico_saturn_b := saturn_b_0;
end;

function vsop87b_pico_saturn_r(t: Double): Double;
   var saturn_r_0: Double=0.0;
   var saturn_r_1: Double=0.0;
begin

   saturn_r_0:=saturn_r_0 +      9.55758135486 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_r_0:=saturn_r_0 +      0.52921382865 * Cos( 2.39226219573 +      213.29909543800*t);
   saturn_r_0:=saturn_r_0 +      0.01873679867 * Cos( 5.23549604660 +      206.18554843720*t);
   saturn_r_0:=saturn_r_0 +      0.01464663929 * Cos( 1.64763042902 +      426.59819087600*t);

   saturn_r_1:=saturn_r_1 +      0.06182981340 * Cos( 0.25843511480 +      213.29909543800*t);
   saturn_r_1:=saturn_r_1 * t;

   vsop87b_pico_saturn_r := saturn_r_0+saturn_r_1;
end;

function vsop87b_pico_uranus_l(t: Double): Double;
   var uranus_l_0: Double=0.0;
   var uranus_l_1: Double=0.0;
begin

   uranus_l_0:=uranus_l_0 +      5.48129294297 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_0:=uranus_l_0 +      0.09260408234 * Cos( 0.89106421507 +       74.78159856730*t);
   uranus_l_0:=uranus_l_0 +      0.01504247898 * Cos( 3.62719260920 +        1.48447270830*t);

   uranus_l_1:=uranus_l_1 +     74.78159860910 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_1:=uranus_l_1 * t;

   vsop87b_pico_uranus_l := uranus_l_0+uranus_l_1;
end;

function vsop87b_pico_uranus_b(t: Double): Double;
   var uranus_b_0: Double=0.0;
begin

   uranus_b_0:=uranus_b_0 +      0.01346277648 * Cos( 2.61877810547 +       74.78159856730*t);

   vsop87b_pico_uranus_b := uranus_b_0;
end;

function vsop87b_pico_uranus_r(t: Double): Double;
   var uranus_r_0: Double=0.0;
   var uranus_r_1: Double=0.0;
begin

   uranus_r_0:=uranus_r_0 +     19.21264847206 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_r_0:=uranus_r_0 +      0.88784984413 * Cos( 5.60377527014 +       74.78159856730*t);
   uranus_r_0:=uranus_r_0 +      0.03440836062 * Cos( 0.32836099706 +       73.29712585900*t);
   uranus_r_0:=uranus_r_0 +      0.02055653860 * Cos( 1.78295159330 +      149.56319713460*t);

   uranus_r_1:=uranus_r_1 +      0.01479896629 * Cos( 3.67205697578 +       74.78159856730*t);
   uranus_r_1:=uranus_r_1 * t;

   vsop87b_pico_uranus_r := uranus_r_0+uranus_r_1;
end;

function vsop87b_pico_venus_l(t: Double): Double;
   var venus_l_0: Double=0.0;
   var venus_l_1: Double=0.0;
begin

   venus_l_0:=venus_l_0 +      3.17614666774 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_l_0:=venus_l_0 +      0.01353968419 * Cos( 5.59313319619 +    10213.28554621100*t);

   venus_l_1:=venus_l_1 +  10213.28554621638 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_l_1:=venus_l_1 * t;

   vsop87b_pico_venus_l := venus_l_0+venus_l_1;
end;

function vsop87b_pico_venus_b(t: Double): Double;
   var venus_b_0: Double=0.0;
begin

   venus_b_0:=venus_b_0 +      0.05923638472 * Cos( 0.26702775812 +    10213.28554621100*t);

   vsop87b_pico_venus_b := venus_b_0;
end;

function vsop87b_pico_venus_r(t: Double): Double;
   var venus_r_0: Double=0.0;
begin

   venus_r_0:=venus_r_0 +      0.72334820891 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87b_pico_venus_r := venus_r_0;
end;

procedure vsop87b_pico_getEarth(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87b_pico_earth_l(t);
   temp[1]:=vsop87b_pico_earth_b(t);
   temp[2]:=vsop87b_pico_earth_r(t);
end;

procedure vsop87b_pico_getJupiter(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87b_pico_jupiter_l(t);
   temp[1]:=vsop87b_pico_jupiter_b(t);
   temp[2]:=vsop87b_pico_jupiter_r(t);
end;

procedure vsop87b_pico_getMars(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87b_pico_mars_l(t);
   temp[1]:=vsop87b_pico_mars_b(t);
   temp[2]:=vsop87b_pico_mars_r(t);
end;

procedure vsop87b_pico_getMercury(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87b_pico_mercury_l(t);
   temp[1]:=vsop87b_pico_mercury_b(t);
   temp[2]:=vsop87b_pico_mercury_r(t);
end;

procedure vsop87b_pico_getNeptune(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87b_pico_neptune_l(t);
   temp[1]:=vsop87b_pico_neptune_b(t);
   temp[2]:=vsop87b_pico_neptune_r(t);
end;

procedure vsop87b_pico_getSaturn(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87b_pico_saturn_l(t);
   temp[1]:=vsop87b_pico_saturn_b(t);
   temp[2]:=vsop87b_pico_saturn_r(t);
end;

procedure vsop87b_pico_getUranus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87b_pico_uranus_l(t);
   temp[1]:=vsop87b_pico_uranus_b(t);
   temp[2]:=vsop87b_pico_uranus_r(t);
end;

procedure vsop87b_pico_getVenus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87b_pico_venus_l(t);
   temp[1]:=vsop87b_pico_venus_b(t);
   temp[2]:=vsop87b_pico_venus_r(t);
end;
end.