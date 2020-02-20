//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

unit vsop87d_pico_velocities;

interface
uses Math;

procedure vsop87d_pico_velocities_getEarth(t: Double;var temp: array of Double);
procedure vsop87d_pico_velocities_getJupiter(t: Double;var temp: array of Double);
procedure vsop87d_pico_velocities_getMars(t: Double;var temp: array of Double);
procedure vsop87d_pico_velocities_getMercury(t: Double;var temp: array of Double);
procedure vsop87d_pico_velocities_getNeptune(t: Double;var temp: array of Double);
procedure vsop87d_pico_velocities_getSaturn(t: Double;var temp: array of Double);
procedure vsop87d_pico_velocities_getUranus(t: Double;var temp: array of Double);
procedure vsop87d_pico_velocities_getVenus(t: Double;var temp: array of Double);

implementation



function vsop87d_pico_velocities_earth_l(t: Double): Double;
   var exp: Double=0.0;
   var earth_l_0: Double=0.0;
   var earth_l_1: Double=0.0;
begin

   exp:=0;
   earth_l_0:=earth_l_0 + -Power(t,exp)*     1.75347045673*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   earth_l_0:=earth_l_0 + -Power(t,exp)*     0.03341656456*    6283.07584999140*Sin( 4.66925680417 +     6283.07584999140*t);

   exp:=1;
   earth_l_1:=earth_l_1 + Power(t,exp-1)*exp*  6283.31966747491*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*  6283.31966747491*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);

   vsop87d_pico_velocities_earth_l := earth_l_0+earth_l_1;
end;

function vsop87d_pico_velocities_earth_b(t: Double): Double;
   var exp: Double=0.0;
begin

   vsop87d_pico_velocities_earth_b := 0;
end;

function vsop87d_pico_velocities_earth_r(t: Double): Double;
   var exp: Double=0.0;
   var earth_r_0: Double=0.0;
begin

   exp:=0;
   earth_r_0:=earth_r_0 + -Power(t,exp)*     1.00013988799*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   earth_r_0:=earth_r_0 + -Power(t,exp)*     0.01670699626*    6283.07584999140*Sin( 3.09846350771 +     6283.07584999140*t);

   vsop87d_pico_velocities_earth_r := earth_r_0;
end;

function vsop87d_pico_velocities_jupiter_l(t: Double): Double;
   var exp: Double=0.0;
   var jupiter_l_0: Double=0.0;
   var jupiter_l_1: Double=0.0;
begin

   exp:=0;
   jupiter_l_0:=jupiter_l_0 + -Power(t,exp)*     0.59954691495*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   jupiter_l_0:=jupiter_l_0 + -Power(t,exp)*     0.09695898711*     529.69096509460*Sin( 5.06191793105 +      529.69096509460*t);

   exp:=1;
   jupiter_l_1:=jupiter_l_1 + Power(t,exp-1)*exp*   529.93480757497*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*   529.93480757497*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);

   vsop87d_pico_velocities_jupiter_l := jupiter_l_0+jupiter_l_1;
end;

function vsop87d_pico_velocities_jupiter_b(t: Double): Double;
   var exp: Double=0.0;
   var jupiter_b_0: Double=0.0;
begin

   exp:=0;
   jupiter_b_0:=jupiter_b_0 + -Power(t,exp)*     0.02268615703*     529.69096509460*Sin( 3.55852606718 +      529.69096509460*t);

   vsop87d_pico_velocities_jupiter_b := jupiter_b_0;
end;

function vsop87d_pico_velocities_jupiter_r(t: Double): Double;
   var exp: Double=0.0;
   var jupiter_r_0: Double=0.0;
   var jupiter_r_1: Double=0.0;
begin

   exp:=0;
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     5.20887429471*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     0.25209327020*     529.69096509460*Sin( 3.49108640015 +      529.69096509460*t);

   exp:=1;
   jupiter_r_1:=jupiter_r_1 + Power(t,exp-1)*exp*     0.01271801596*Cos( 2.64937511122 +      529.69096509460*t)-Power(t,exp)*     0.01271801596*     529.69096509460*Sin( 2.64937511122 +      529.69096509460*t);

   vsop87d_pico_velocities_jupiter_r := jupiter_r_0+jupiter_r_1;
end;

function vsop87d_pico_velocities_mars_l(t: Double): Double;
   var exp: Double=0.0;
   var mars_l_0: Double=0.0;
   var mars_l_1: Double=0.0;
begin

   exp:=0;
   mars_l_0:=mars_l_0 + -Power(t,exp)*     6.20347711583*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mars_l_0:=mars_l_0 + -Power(t,exp)*     0.18656368100*    3340.61242669980*Sin( 5.05037100303 +     3340.61242669980*t);
   mars_l_0:=mars_l_0 + -Power(t,exp)*     0.01108216792*    6681.22485339960*Sin( 5.40099836958 +     6681.22485339960*t);

   exp:=1;
   mars_l_1:=mars_l_1 + Power(t,exp-1)*exp*  3340.85627474342*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*  3340.85627474342*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mars_l_1:=mars_l_1 + Power(t,exp-1)*exp*     0.01458227051*Cos( 3.60426053609 +     3340.61242669980*t)-Power(t,exp)*     0.01458227051*    3340.61242669980*Sin( 3.60426053609 +     3340.61242669980*t);

   vsop87d_pico_velocities_mars_l := mars_l_0+mars_l_1;
end;

function vsop87d_pico_velocities_mars_b(t: Double): Double;
   var exp: Double=0.0;
   var mars_b_0: Double=0.0;
begin

   exp:=0;
   mars_b_0:=mars_b_0 + -Power(t,exp)*     0.03197134986*    3340.61242669980*Sin( 3.76832042432 +     3340.61242669980*t);

   vsop87d_pico_velocities_mars_b := mars_b_0;
end;

function vsop87d_pico_velocities_mars_r(t: Double): Double;
   var exp: Double=0.0;
   var mars_r_0: Double=0.0;
   var mars_r_1: Double=0.0;
begin

   exp:=0;
   mars_r_0:=mars_r_0 + -Power(t,exp)*     1.53033488276*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mars_r_0:=mars_r_0 + -Power(t,exp)*     0.14184953153*    3340.61242669980*Sin( 3.47971283519 +     3340.61242669980*t);

   exp:=1;
   mars_r_1:=mars_r_1 + Power(t,exp-1)*exp*     0.01107433340*Cos( 2.03250524950 +     3340.61242669980*t)-Power(t,exp)*     0.01107433340*    3340.61242669980*Sin( 2.03250524950 +     3340.61242669980*t);

   vsop87d_pico_velocities_mars_r := mars_r_0+mars_r_1;
end;

function vsop87d_pico_velocities_mercury_l(t: Double): Double;
   var exp: Double=0.0;
   var mercury_l_0: Double=0.0;
   var mercury_l_1: Double=0.0;
begin

   exp:=0;
   mercury_l_0:=mercury_l_0 + -Power(t,exp)*     4.40250710144*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mercury_l_0:=mercury_l_0 + -Power(t,exp)*     0.40989414976*   26087.90314157420*Sin( 1.48302034194 +    26087.90314157420*t);
   mercury_l_0:=mercury_l_0 + -Power(t,exp)*     0.05046294199*   52175.80628314840*Sin( 4.47785489540 +    52175.80628314840*t);

   exp:=1;
   mercury_l_1:=mercury_l_1 + Power(t,exp-1)*exp* 26088.14706222746*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)* 26088.14706222746*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mercury_l_1:=mercury_l_1 + Power(t,exp-1)*exp*     0.01126007832*Cos( 6.21703970996 +    26087.90314157420*t)-Power(t,exp)*     0.01126007832*   26087.90314157420*Sin( 6.21703970996 +    26087.90314157420*t);

   vsop87d_pico_velocities_mercury_l := mercury_l_0+mercury_l_1;
end;

function vsop87d_pico_velocities_mercury_b(t: Double): Double;
   var exp: Double=0.0;
   var mercury_b_0: Double=0.0;
begin

   exp:=0;
   mercury_b_0:=mercury_b_0 + -Power(t,exp)*     0.11737528962*   26087.90314157420*Sin( 1.98357498767 +    26087.90314157420*t);
   mercury_b_0:=mercury_b_0 + -Power(t,exp)*     0.02388076996*   52175.80628314840*Sin( 5.03738959685 +    52175.80628314840*t);
   mercury_b_0:=mercury_b_0 + -Power(t,exp)*     0.01222839532*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);

   vsop87d_pico_velocities_mercury_b := mercury_b_0;
end;

function vsop87d_pico_velocities_mercury_r(t: Double): Double;
   var exp: Double=0.0;
   var mercury_r_0: Double=0.0;
begin

   exp:=0;
   mercury_r_0:=mercury_r_0 + -Power(t,exp)*     0.39528271652*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mercury_r_0:=mercury_r_0 + -Power(t,exp)*     0.07834131817*   26087.90314157420*Sin( 6.19233722599 +    26087.90314157420*t);

   vsop87d_pico_velocities_mercury_r := mercury_r_0;
end;

function vsop87d_pico_velocities_neptune_l(t: Double): Double;
   var exp: Double=0.0;
   var neptune_l_0: Double=0.0;
   var neptune_l_1: Double=0.0;
begin

   exp:=0;
   neptune_l_0:=neptune_l_0 + -Power(t,exp)*     5.31188633047*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   neptune_l_0:=neptune_l_0 + -Power(t,exp)*     0.01798475509*      38.13303563780*Sin( 2.90101273050 +       38.13303563780*t);
   neptune_l_0:=neptune_l_0 + -Power(t,exp)*     0.01019727662*       1.48447270830*Sin( 0.48580923660 +        1.48447270830*t);

   exp:=1;
   neptune_l_1:=neptune_l_1 + Power(t,exp-1)*exp*    38.37687716731*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*    38.37687716731*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);

   vsop87d_pico_velocities_neptune_l := neptune_l_0+neptune_l_1;
end;

function vsop87d_pico_velocities_neptune_b(t: Double): Double;
   var exp: Double=0.0;
   var neptune_b_0: Double=0.0;
begin

   exp:=0;
   neptune_b_0:=neptune_b_0 + -Power(t,exp)*     0.03088622933*      38.13303563780*Sin( 1.44104372626 +       38.13303563780*t);

   vsop87d_pico_velocities_neptune_b := neptune_b_0;
end;

function vsop87d_pico_velocities_neptune_r(t: Double): Double;
   var exp: Double=0.0;
   var neptune_r_0: Double=0.0;
begin

   exp:=0;
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*    30.07013206102*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.27062259490*      38.13303563780*Sin( 1.32999458930 +       38.13303563780*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.01691764281*      36.64856292950*Sin( 3.25186138896 +       36.64856292950*t);

   vsop87d_pico_velocities_neptune_r := neptune_r_0;
end;

function vsop87d_pico_velocities_saturn_l(t: Double): Double;
   var exp: Double=0.0;
   var saturn_l_0: Double=0.0;
   var saturn_l_1: Double=0.0;
begin

   exp:=0;
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.87401354029*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.11107659780*     213.29909543800*Sin( 3.96205090194 +      213.29909543800*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.01414150958*       7.11354700080*Sin( 4.58581515873 +        7.11354700080*t);

   exp:=1;
   saturn_l_1:=saturn_l_1 + Power(t,exp-1)*exp*   213.54295595986*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*   213.54295595986*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   saturn_l_1:=saturn_l_1 + Power(t,exp-1)*exp*     0.01296855005*Cos( 1.82820544701 +      213.29909543800*t)-Power(t,exp)*     0.01296855005*     213.29909543800*Sin( 1.82820544701 +      213.29909543800*t);

   vsop87d_pico_velocities_saturn_l := saturn_l_0+saturn_l_1;
end;

function vsop87d_pico_velocities_saturn_b(t: Double): Double;
   var exp: Double=0.0;
   var saturn_b_0: Double=0.0;
begin

   exp:=0;
   saturn_b_0:=saturn_b_0 + -Power(t,exp)*     0.04330678040*     213.29909543800*Sin( 3.60284428399 +      213.29909543800*t);

   vsop87d_pico_velocities_saturn_b := saturn_b_0;
end;

function vsop87d_pico_velocities_saturn_r(t: Double): Double;
   var exp: Double=0.0;
   var saturn_r_0: Double=0.0;
   var saturn_r_1: Double=0.0;
begin

   exp:=0;
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     9.55758135801*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.52921382465*     213.29909543800*Sin( 2.39226219733 +      213.29909543800*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.01873679934*     206.18554843720*Sin( 5.23549605091 +      206.18554843720*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.01464663959*     426.59819087600*Sin( 1.64763045468 +      426.59819087600*t);

   exp:=1;
   saturn_r_1:=saturn_r_1 + Power(t,exp-1)*exp*     0.06182981282*Cos( 0.25843515034 +      213.29909543800*t)-Power(t,exp)*     0.06182981282*     213.29909543800*Sin( 0.25843515034 +      213.29909543800*t);

   vsop87d_pico_velocities_saturn_r := saturn_r_0+saturn_r_1;
end;

function vsop87d_pico_velocities_uranus_l(t: Double): Double;
   var exp: Double=0.0;
   var uranus_l_0: Double=0.0;
   var uranus_l_1: Double=0.0;
begin

   exp:=0;
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     5.48129294299*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.09260408252*      74.78159856730*Sin( 0.89106421530 +       74.78159856730*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.01504247826*       1.48447270830*Sin( 3.62719262195 +        1.48447270830*t);

   exp:=1;
   uranus_l_1:=uranus_l_1 + Power(t,exp-1)*exp*    75.02543121646*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*    75.02543121646*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);

   vsop87d_pico_velocities_uranus_l := uranus_l_0+uranus_l_1;
end;

function vsop87d_pico_velocities_uranus_b(t: Double): Double;
   var exp: Double=0.0;
   var uranus_b_0: Double=0.0;
begin

   exp:=0;
   uranus_b_0:=uranus_b_0 + -Power(t,exp)*     0.01346277639*      74.78159856730*Sin( 2.61877810545 +       74.78159856730*t);

   vsop87d_pico_velocities_uranus_b := uranus_b_0;
end;

function vsop87d_pico_velocities_uranus_r(t: Double): Double;
   var exp: Double=0.0;
   var uranus_r_0: Double=0.0;
   var uranus_r_1: Double=0.0;
begin

   exp:=0;
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*    19.21264847881*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.88784984055*      74.78159856730*Sin( 5.60377526994 +       74.78159856730*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.03440835545*      73.29712585900*Sin( 0.32836098991 +       73.29712585900*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.02055653495*     149.56319713460*Sin( 1.78295170028 +      149.56319713460*t);

   exp:=1;
   uranus_r_1:=uranus_r_1 + Power(t,exp-1)*exp*     0.01479896370*Cos( 3.67205705317 +       74.78159856730*t)-Power(t,exp)*     0.01479896370*      74.78159856730*Sin( 3.67205705317 +       74.78159856730*t);

   vsop87d_pico_velocities_uranus_r := uranus_r_0+uranus_r_1;
end;

function vsop87d_pico_velocities_venus_l(t: Double): Double;
   var exp: Double=0.0;
   var venus_l_0: Double=0.0;
   var venus_l_1: Double=0.0;
begin

   exp:=0;
   venus_l_0:=venus_l_0 + -Power(t,exp)*     3.17614666774*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   venus_l_0:=venus_l_0 + -Power(t,exp)*     0.01353968419*   10213.28554621100*Sin( 5.59313319619 +    10213.28554621100*t);

   exp:=1;
   venus_l_1:=venus_l_1 + Power(t,exp-1)*exp* 10213.52943052898*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)* 10213.52943052898*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);

   vsop87d_pico_velocities_venus_l := venus_l_0+venus_l_1;
end;

function vsop87d_pico_velocities_venus_b(t: Double): Double;
   var exp: Double=0.0;
   var venus_b_0: Double=0.0;
begin

   exp:=0;
   venus_b_0:=venus_b_0 + -Power(t,exp)*     0.05923638472*   10213.28554621100*Sin( 0.26702775813 +    10213.28554621100*t);

   vsop87d_pico_velocities_venus_b := venus_b_0;
end;

function vsop87d_pico_velocities_venus_r(t: Double): Double;
   var exp: Double=0.0;
   var venus_r_0: Double=0.0;
begin

   exp:=0;
   venus_r_0:=venus_r_0 + -Power(t,exp)*     0.72334820905*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);

   vsop87d_pico_velocities_venus_r := venus_r_0;
end;

procedure vsop87d_pico_velocities_getEarth(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_pico_velocities_earth_l(t) / 365250.0;
   temp[1]:=vsop87d_pico_velocities_earth_b(t) / 365250.0;
   temp[2]:=vsop87d_pico_velocities_earth_r(t) / 365250.0;
end;

procedure vsop87d_pico_velocities_getJupiter(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_pico_velocities_jupiter_l(t) / 365250.0;
   temp[1]:=vsop87d_pico_velocities_jupiter_b(t) / 365250.0;
   temp[2]:=vsop87d_pico_velocities_jupiter_r(t) / 365250.0;
end;

procedure vsop87d_pico_velocities_getMars(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_pico_velocities_mars_l(t) / 365250.0;
   temp[1]:=vsop87d_pico_velocities_mars_b(t) / 365250.0;
   temp[2]:=vsop87d_pico_velocities_mars_r(t) / 365250.0;
end;

procedure vsop87d_pico_velocities_getMercury(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_pico_velocities_mercury_l(t) / 365250.0;
   temp[1]:=vsop87d_pico_velocities_mercury_b(t) / 365250.0;
   temp[2]:=vsop87d_pico_velocities_mercury_r(t) / 365250.0;
end;

procedure vsop87d_pico_velocities_getNeptune(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_pico_velocities_neptune_l(t) / 365250.0;
   temp[1]:=vsop87d_pico_velocities_neptune_b(t) / 365250.0;
   temp[2]:=vsop87d_pico_velocities_neptune_r(t) / 365250.0;
end;

procedure vsop87d_pico_velocities_getSaturn(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_pico_velocities_saturn_l(t) / 365250.0;
   temp[1]:=vsop87d_pico_velocities_saturn_b(t) / 365250.0;
   temp[2]:=vsop87d_pico_velocities_saturn_r(t) / 365250.0;
end;

procedure vsop87d_pico_velocities_getUranus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_pico_velocities_uranus_l(t) / 365250.0;
   temp[1]:=vsop87d_pico_velocities_uranus_b(t) / 365250.0;
   temp[2]:=vsop87d_pico_velocities_uranus_r(t) / 365250.0;
end;

procedure vsop87d_pico_velocities_getVenus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_pico_velocities_venus_l(t) / 365250.0;
   temp[1]:=vsop87d_pico_velocities_venus_b(t) / 365250.0;
   temp[2]:=vsop87d_pico_velocities_venus_r(t) / 365250.0;
end;
end.