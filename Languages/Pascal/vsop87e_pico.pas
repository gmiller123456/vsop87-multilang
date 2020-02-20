//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

unit vsop87e_pico;

interface
uses Math;

procedure vsop87e_pico_getEarth(t: Double;var temp: array of Double);
procedure vsop87e_pico_getJupiter(t: Double;var temp: array of Double);
procedure vsop87e_pico_getMars(t: Double;var temp: array of Double);
procedure vsop87e_pico_getMercury(t: Double;var temp: array of Double);
procedure vsop87e_pico_getNeptune(t: Double;var temp: array of Double);
procedure vsop87e_pico_getSaturn(t: Double;var temp: array of Double);
procedure vsop87e_pico_getUranus(t: Double;var temp: array of Double);
procedure vsop87e_pico_getVenus(t: Double;var temp: array of Double);
procedure vsop87e_pico_getSun(t: Double;var temp: array of Double);

implementation


function vsop87e_pico_earth_x(t: Double): Double;
   var earth_x_0: Double=0.0;
begin

   earth_x_0:=earth_x_0 +      0.99982624851 * Cos( 1.75348568475 +     6283.07584999140*t);

   vsop87e_pico_earth_x := earth_x_0;
end;

function vsop87e_pico_earth_y(t: Double): Double;
   var earth_y_0: Double=0.0;
begin

   earth_y_0:=earth_y_0 +      0.99988907017 * Cos( 0.18265890456 +     6283.07584999140*t);
   earth_y_0:=earth_y_0 +      0.02408829501 * Cos( 3.14159265359 +        0.00000000000*t);

   vsop87e_pico_earth_y := earth_y_0;
end;

function vsop87e_pico_earth_z(t: Double): Double;
begin

   vsop87e_pico_earth_z := 0;
end;

function vsop87e_pico_jupiter_x(t: Double): Double;
   var jupiter_x_0: Double=0.0;
begin

   jupiter_x_0:=jupiter_x_0 +      5.19167797375 * Cos( 0.59945079482 +      529.69096509460*t);
   jupiter_x_0:=jupiter_x_0 +      0.36633268070 * Cos( 3.14159265359 +        0.00000000000*t);
   jupiter_x_0:=jupiter_x_0 +      0.12581924842 * Cos( 0.94911581432 +     1059.38193018920*t);
   jupiter_x_0:=jupiter_x_0 +      0.01499237862 * Cos( 0.73175554601 +      522.57741809380*t);
   jupiter_x_0:=jupiter_x_0 +      0.01474818211 * Cos( 3.61736901402 +      536.80451209540*t);

   vsop87e_pico_jupiter_x := jupiter_x_0;
end;

function vsop87e_pico_jupiter_y(t: Double): Double;
   var jupiter_y_0: Double=0.0;
   var jupiter_y_1: Double=0.0;
begin

   jupiter_y_0:=jupiter_y_0 +      5.19024510371 * Cos( 5.31203160043 +      529.69096509460*t);
   jupiter_y_0:=jupiter_y_0 +      0.12580850775 * Cos( 5.66160225641 +     1059.38193018920*t);
   jupiter_y_0:=jupiter_y_0 +      0.09329801081 * Cos( 3.14159265359 +        0.00000000000*t);
   jupiter_y_0:=jupiter_y_0 +      0.01506838468 * Cos( 5.43934599781 +      522.57741809380*t);
   jupiter_y_0:=jupiter_y_0 +      0.01474403395 * Cos( 2.04679547637 +      536.80451209540*t);

   jupiter_y_1:=jupiter_y_1 +      0.01694792137 * Cos( 3.14159265359 +        0.00000000000*t);
   jupiter_y_1:=jupiter_y_1 * t;

   vsop87e_pico_jupiter_y := jupiter_y_0+jupiter_y_1;
end;

function vsop87e_pico_jupiter_z(t: Double): Double;
   var jupiter_z_0: Double=0.0;
begin

   jupiter_z_0:=jupiter_z_0 +      0.11811822789 * Cos( 3.55844641987 +      529.69096509460*t);

   vsop87e_pico_jupiter_z := jupiter_z_0;
end;

function vsop87e_pico_mars_x(t: Double): Double;
   var mars_x_0: Double=0.0;
begin

   mars_x_0:=mars_x_0 +      1.51769887405 * Cos( 6.20403346548 +     3340.61242669980*t);
   mars_x_0:=mars_x_0 +      0.19473570996 * Cos( 3.14159265359 +        0.00000000000*t);
   mars_x_0:=mars_x_0 +      0.07070917372 * Cos( 0.25870338552 +     6681.22485339960*t);

   vsop87e_pico_mars_x := mars_x_0;
end;

function vsop87e_pico_mars_y(t: Double): Double;
   var mars_y_0: Double=0.0;
   var mars_y_1: Double=0.0;
begin

   mars_y_0:=mars_y_0 +      1.51558927367 * Cos( 4.63212206588 +     3340.61242669980*t);
   mars_y_0:=mars_y_0 +      0.07064547959 * Cos( 4.97051892898 +     6681.22485339960*t);
   mars_y_0:=mars_y_0 +      0.08689350637 * Cos( 0.00000000000 +        0.00000000000*t);

   mars_y_1:=mars_y_1 +      0.01427318093 * Cos( 3.14159265359 +        0.00000000000*t);
   mars_y_1:=mars_y_1 * t;

   vsop87e_pico_mars_y := mars_y_0+mars_y_1;
end;

function vsop87e_pico_mars_z(t: Double): Double;
   var mars_z_0: Double=0.0;
begin

   mars_z_0:=mars_z_0 +      0.04901205639 * Cos( 3.76712324293 +     3340.61242669980*t);

   vsop87e_pico_mars_z := mars_z_0;
end;

function vsop87e_pico_mercury_x(t: Double): Double;
   var mercury_x_0: Double=0.0;
begin

   mercury_x_0:=mercury_x_0 +      0.37546285495 * Cos( 4.39651506942 +    26087.90314157420*t);
   mercury_x_0:=mercury_x_0 +      0.03825746037 * Cos( 1.16485604343 +    52175.80628314840*t);
   mercury_x_0:=mercury_x_0 +      0.02596241714 * Cos( 3.14159265359 +        0.00000000000*t);

   vsop87e_pico_mercury_x := mercury_x_0;
end;

function vsop87e_pico_mercury_y(t: Double): Double;
   var mercury_y_0: Double=0.0;
begin

   mercury_y_0:=mercury_y_0 +      0.37953636588 * Cos( 2.83780617821 +    26087.90314157420*t);
   mercury_y_0:=mercury_y_0 +      0.11592262295 * Cos( 3.14159265359 +        0.00000000000*t);
   mercury_y_0:=mercury_y_0 +      0.03854667576 * Cos( 5.88780608961 +    52175.80628314840*t);

   vsop87e_pico_mercury_y := mercury_y_0;
end;

function vsop87e_pico_mercury_z(t: Double): Double;
   var mercury_z_0: Double=0.0;
begin

   mercury_z_0:=mercury_z_0 +      0.04607664562 * Cos( 1.99295081967 +    26087.90314157420*t);

   vsop87e_pico_mercury_z := mercury_z_0;
end;

function vsop87e_pico_neptune_x(t: Double): Double;
   var neptune_x_0: Double=0.0;
begin

   neptune_x_0:=neptune_x_0 +     30.05734568801 * Cos( 5.31211340030 +       38.13303563780*t);
   neptune_x_0:=neptune_x_0 +      0.27050789973 * Cos( 3.14159265359 +        0.00000000000*t);
   neptune_x_0:=neptune_x_0 +      0.13504578270 * Cos( 3.50075407055 +       76.26607127560*t);
   neptune_x_0:=neptune_x_0 +      0.15725280871 * Cos( 0.11319072402 +       36.64856292950*t);
   neptune_x_0:=neptune_x_0 +      0.14934353052 * Cos( 1.08499398649 +       39.61750834610*t);
   neptune_x_0:=neptune_x_0 +      0.02597449604 * Cos( 1.99590330725 +        1.48447270830*t);

   vsop87e_pico_neptune_x := neptune_x_0;
end;

function vsop87e_pico_neptune_y(t: Double): Double;
   var neptune_y_0: Double=0.0;
begin

   neptune_y_0:=neptune_y_0 +     30.05900907352 * Cos( 3.74086294715 +       38.13303563780*t);
   neptune_y_0:=neptune_y_0 +      0.30171988148 * Cos( 3.14159265359 +        0.00000000000*t);
   neptune_y_0:=neptune_y_0 +      0.13505308635 * Cos( 1.92949466968 +       76.26607127560*t);
   neptune_y_0:=neptune_y_0 +      0.15705776296 * Cos( 4.82539969469 +       36.64856292950*t);
   neptune_y_0:=neptune_y_0 +      0.14935398681 * Cos( 5.79694896309 +       39.61750834610*t);
   neptune_y_0:=neptune_y_0 +      0.02584389323 * Cos( 0.42549727257 +        1.48447270830*t);

   vsop87e_pico_neptune_y := neptune_y_0;
end;

function vsop87e_pico_neptune_z(t: Double): Double;
   var neptune_z_0: Double=0.0;
begin

   neptune_z_0:=neptune_z_0 +      0.92861252357 * Cos( 1.44103930199 +       38.13303563780*t);
   neptune_z_0:=neptune_z_0 +      0.01244825806 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87e_pico_neptune_z := neptune_z_0;
end;

function vsop87e_pico_saturn_x(t: Double): Double;
   var saturn_x_0: Double=0.0;
   var saturn_x_1: Double=0.0;
begin

   saturn_x_0:=saturn_x_0 +      9.51366533422 * Cos( 0.87441380650 +      213.29909543800*t);
   saturn_x_0:=saturn_x_0 +      0.26404799161 * Cos( 0.12391580771 +      426.59819087600*t);
   saturn_x_0:=saturn_x_0 +      0.06758489145 * Cos( 4.16767544586 +      206.18554843720*t);
   saturn_x_0:=saturn_x_0 +      0.06622371284 * Cos( 0.75094738122 +      220.41264243880*t);
   saturn_x_0:=saturn_x_0 +      0.04274172066 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_x_0:=saturn_x_0 +      0.02335961354 * Cos( 2.02227905783 +        7.11354700080*t);
   saturn_x_0:=saturn_x_0 +      0.01255113414 * Cos( 2.17347170552 +      110.20632121940*t);
   saturn_x_0:=saturn_x_0 +      0.01115372225 * Cos( 3.15690865182 +      419.48464387520*t);
   saturn_x_0:=saturn_x_0 +      0.01097374519 * Cos( 5.65753938643 +      639.89728631400*t);

   saturn_x_1:=saturn_x_1 +      0.07573807889 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_x_1:=saturn_x_1 +      0.03084144308 * Cos( 4.27565898829 +      426.59819087600*t);
   saturn_x_1:=saturn_x_1 +      0.02714141496 * Cos( 5.85229546861 +      206.18554843720*t);
   saturn_x_1:=saturn_x_1 +      0.02642347272 * Cos( 5.33291950842 +      220.41264243880*t);
   saturn_x_1:=saturn_x_1 * t;

   vsop87e_pico_saturn_x := saturn_x_0+saturn_x_1;
end;

function vsop87e_pico_saturn_y(t: Double): Double;
   var saturn_y_0: Double=0.0;
   var saturn_y_1: Double=0.0;
begin

   saturn_y_0:=saturn_y_0 +      9.52714696877 * Cos( 5.58600556072 +      213.29909543800*t);
   saturn_y_0:=saturn_y_0 +      0.79354119271 * Cos( 3.14159265359 +        0.00000000000*t);
   saturn_y_0:=saturn_y_0 +      0.26434197609 * Cos( 4.83528742856 +      426.59819087600*t);
   saturn_y_0:=saturn_y_0 +      0.06914690347 * Cos( 2.55279029588 +      206.18554843720*t);
   saturn_y_0:=saturn_y_0 +      0.06631679200 * Cos( 5.46258849076 +      220.41264243880*t);
   saturn_y_0:=saturn_y_0 +      0.02345226948 * Cos( 0.44652393276 +        7.11354700080*t);
   saturn_y_0:=saturn_y_0 +      0.01183557497 * Cos( 1.34637027573 +      419.48464387520*t);
   saturn_y_0:=saturn_y_0 +      0.01245523800 * Cos( 0.60375781288 +      110.20632121940*t);
   saturn_y_0:=saturn_y_0 +      0.01098442011 * Cos( 4.08609387384 +      639.89728631400*t);

   saturn_y_1:=saturn_y_1 +      0.05373895252 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_y_1:=saturn_y_1 +      0.03089676414 * Cos( 2.70347020059 +      426.59819087600*t);
   saturn_y_1:=saturn_y_1 +      0.02740812928 * Cos( 4.26667506460 +      206.18554843720*t);
   saturn_y_1:=saturn_y_1 +      0.02646734779 * Cos( 3.76132299914 +      220.41264243880*t);
   saturn_y_1:=saturn_y_1 * t;

   vsop87e_pico_saturn_y := saturn_y_0+saturn_y_1;
end;

function vsop87e_pico_saturn_z(t: Double): Double;
   var saturn_z_0: Double=0.0;
   var saturn_z_1: Double=0.0;
begin

   saturn_z_0:=saturn_z_0 +      0.41345140292 * Cos( 3.60234141893 +      213.29909543800*t);
   saturn_z_0:=saturn_z_0 +      0.01147953788 * Cos( 2.85128771957 +      426.59819087600*t);
   saturn_z_0:=saturn_z_0 +      0.01213097211 * Cos( 0.00000000000 +        0.00000000000*t);

   saturn_z_1:=saturn_z_1 +      0.01905958940 * Cos( 4.94544746619 +      213.29909543800*t);
   saturn_z_1:=saturn_z_1 * t;

   vsop87e_pico_saturn_z := saturn_z_0+saturn_z_1;
end;

function vsop87e_pico_sun_x(t: Double): Double;
begin

   vsop87e_pico_sun_x := 0;
end;

function vsop87e_pico_sun_y(t: Double): Double;
begin

   vsop87e_pico_sun_y := 0;
end;

function vsop87e_pico_sun_z(t: Double): Double;
begin

   vsop87e_pico_sun_z := 0;
end;

function vsop87e_pico_uranus_x(t: Double): Double;
   var uranus_x_0: Double=0.0;
begin

   uranus_x_0:=uranus_x_0 +     19.17286937362 * Cos( 5.48133416758 +       74.78159856730*t);
   uranus_x_0:=uranus_x_0 +      1.32301898121 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_x_0:=uranus_x_0 +      0.44400556159 * Cos( 1.65967535182 +      149.56319713460*t);
   uranus_x_0:=uranus_x_0 +      0.14667584671 * Cos( 3.42395875589 +       73.29712585900*t);
   uranus_x_0:=uranus_x_0 +      0.14129215712 * Cos( 4.39576776954 +       76.26607127560*t);
   uranus_x_0:=uranus_x_0 +      0.06200970387 * Cos( 5.14043568284 +        1.48447270830*t);
   uranus_x_0:=uranus_x_0 +      0.01542890129 * Cos( 4.12122840701 +      224.34479570190*t);
   uranus_x_0:=uranus_x_0 +      0.01444153470 * Cos( 2.65117108186 +      148.07872442630*t);

   vsop87e_pico_uranus_x := uranus_x_0;
end;

function vsop87e_pico_uranus_y(t: Double): Double;
   var uranus_y_0: Double=0.0;
   var uranus_y_1: Double=0.0;
begin

   uranus_y_0:=uranus_y_0 +     19.16434475791 * Cos( 3.91045677275 +       74.78159856730*t);
   uranus_y_0:=uranus_y_0 +      0.44388525091 * Cos( 0.08884126943 +      149.56319713460*t);
   uranus_y_0:=uranus_y_0 +      0.16222255941 * Cos( 3.14159265359 +        0.00000000000*t);
   uranus_y_0:=uranus_y_0 +      0.14755311401 * Cos( 1.85423292905 +       73.29712585900*t);
   uranus_y_0:=uranus_y_0 +      0.14122904825 * Cos( 2.82489928705 +       76.26607127560*t);
   uranus_y_0:=uranus_y_0 +      0.06249939655 * Cos( 3.56960238469 +        1.48447270830*t);
   uranus_y_0:=uranus_y_0 +      0.01542607086 * Cos( 2.55041543170 +      224.34479570190*t);
   uranus_y_0:=uranus_y_0 +      0.01442293466 * Cos( 1.08004535633 +      148.07872442630*t);

   uranus_y_1:=uranus_y_1 +      0.02157902502 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_y_1:=uranus_y_1 * t;

   vsop87e_pico_uranus_y := uranus_y_0+uranus_y_1;
end;

function vsop87e_pico_uranus_z(t: Double): Double;
   var uranus_z_0: Double=0.0;
begin

   uranus_z_0:=uranus_z_0 +      0.25876996652 * Cos( 2.61861278845 +       74.78159856730*t);
   uranus_z_0:=uranus_z_0 +      0.01775471434 * Cos( 3.14159265359 +        0.00000000000*t);

   vsop87e_pico_uranus_z := uranus_z_0;
end;

function vsop87e_pico_venus_x(t: Double): Double;
   var venus_x_0: Double=0.0;
begin

   venus_x_0:=venus_x_0 +      0.72211104628 * Cos( 3.17575836361 +    10213.28554621100*t);

   vsop87e_pico_venus_x := venus_x_0;
end;

function vsop87e_pico_venus_y(t: Double): Double;
   var venus_y_0: Double=0.0;
begin

   venus_y_0:=venus_y_0 +      0.72324643689 * Cos( 1.60573808356 +    10213.28554621100*t);

   vsop87e_pico_venus_y := venus_y_0;
end;

function vsop87e_pico_venus_z(t: Double): Double;
   var venus_z_0: Double=0.0;
begin

   venus_z_0:=venus_z_0 +      0.04282979819 * Cos( 0.26703856471 +    10213.28554621100*t);

   vsop87e_pico_venus_z := venus_z_0;
end;

procedure vsop87e_pico_getEarth(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_pico_earth_x(t);
   temp[1]:=vsop87e_pico_earth_y(t);
   temp[2]:=vsop87e_pico_earth_z(t);
end;

procedure vsop87e_pico_getJupiter(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_pico_jupiter_x(t);
   temp[1]:=vsop87e_pico_jupiter_y(t);
   temp[2]:=vsop87e_pico_jupiter_z(t);
end;

procedure vsop87e_pico_getMars(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_pico_mars_x(t);
   temp[1]:=vsop87e_pico_mars_y(t);
   temp[2]:=vsop87e_pico_mars_z(t);
end;

procedure vsop87e_pico_getMercury(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_pico_mercury_x(t);
   temp[1]:=vsop87e_pico_mercury_y(t);
   temp[2]:=vsop87e_pico_mercury_z(t);
end;

procedure vsop87e_pico_getNeptune(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_pico_neptune_x(t);
   temp[1]:=vsop87e_pico_neptune_y(t);
   temp[2]:=vsop87e_pico_neptune_z(t);
end;

procedure vsop87e_pico_getSaturn(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_pico_saturn_x(t);
   temp[1]:=vsop87e_pico_saturn_y(t);
   temp[2]:=vsop87e_pico_saturn_z(t);
end;

procedure vsop87e_pico_getUranus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_pico_uranus_x(t);
   temp[1]:=vsop87e_pico_uranus_y(t);
   temp[2]:=vsop87e_pico_uranus_z(t);
end;

procedure vsop87e_pico_getVenus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_pico_venus_x(t);
   temp[1]:=vsop87e_pico_venus_y(t);
   temp[2]:=vsop87e_pico_venus_z(t);
end;

procedure vsop87e_pico_getSun(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_pico_sun_x(t);
   temp[1]:=vsop87e_pico_sun_y(t);
   temp[2]:=vsop87e_pico_sun_z(t);
end;
end.