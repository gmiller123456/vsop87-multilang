unit vsop87a_pico_velocities;

interface
uses Math;

procedure vsop87a_pico_velocities_getEarth(t: Double;var temp: array of Double);
procedure vsop87a_pico_velocities_getEmb(t: Double;var temp: array of Double);
procedure vsop87a_pico_velocities_getJupiter(t: Double;var temp: array of Double);
procedure vsop87a_pico_velocities_getMars(t: Double;var temp: array of Double);
procedure vsop87a_pico_velocities_getMercury(t: Double;var temp: array of Double);
procedure vsop87a_pico_velocities_getNeptune(t: Double;var temp: array of Double);
procedure vsop87a_pico_velocities_getSaturn(t: Double;var temp: array of Double);
procedure vsop87a_pico_velocities_getUranus(t: Double;var temp: array of Double);
procedure vsop87a_pico_velocities_getVenus(t: Double;var temp: array of Double);
procedure vsop87a_pico_velocities_getMoon(var earth: array of Double; var emb: array of Double;var temp: array of Double);

implementation


function vsop87a_pico_velocities_earth_x(t: Double): Double;
   var exp: Double=0.0;
   var earth_x_0: Double=0.0;
begin

   exp:=0;
   earth_x_0:=earth_x_0 + -Power(t,exp)*     0.99982928844*    6283.07584999140*Sin( 1.75348568475 +     6283.07584999140*t);

   vsop87a_pico_velocities_earth_x := earth_x_0;
end;

function vsop87a_pico_velocities_earth_y(t: Double): Double;
   var exp: Double=0.0;
   var earth_y_0: Double=0.0;
begin

   exp:=0;
   earth_y_0:=earth_y_0 + -Power(t,exp)*     0.99989211030*    6283.07584999140*Sin( 0.18265890456 +     6283.07584999140*t);
   earth_y_0:=earth_y_0 + -Power(t,exp)*     0.02442699036*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);

   vsop87a_pico_velocities_earth_y := earth_y_0;
end;

function vsop87a_pico_velocities_earth_z(t: Double): Double;
   var exp: Double=0.0;
begin

   vsop87a_pico_velocities_earth_z := 0;
end;

function vsop87a_pico_velocities_emb_x(t: Double): Double;
   var exp: Double=0.0;
   var emb_x_0: Double=0.0;
begin

   exp:=0;
   emb_x_0:=emb_x_0 + -Power(t,exp)*     0.99982927460*    6283.07584999140*Sin( 1.75348568475 +     6283.07584999140*t);

   vsop87a_pico_velocities_emb_x := emb_x_0;
end;

function vsop87a_pico_velocities_emb_y(t: Double): Double;
   var exp: Double=0.0;
   var emb_y_0: Double=0.0;
begin

   exp:=0;
   emb_y_0:=emb_y_0 + -Power(t,exp)*     0.99989209645*    6283.07584999140*Sin( 0.18265890456 +     6283.07584999140*t);
   emb_y_0:=emb_y_0 + -Power(t,exp)*     0.02442698841*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);

   vsop87a_pico_velocities_emb_y := emb_y_0;
end;

function vsop87a_pico_velocities_emb_z(t: Double): Double;
   var exp: Double=0.0;
begin

   vsop87a_pico_velocities_emb_z := 0;
end;

function vsop87a_pico_velocities_jupiter_x(t: Double): Double;
   var exp: Double=0.0;
   var jupiter_x_0: Double=0.0;
begin

   exp:=0;
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     5.19663470114*     529.69096509460*Sin( 0.59945082355 +      529.69096509460*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.36662642320*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.12593937922*    1059.38193018920*Sin( 0.94911583701 +     1059.38193018920*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.01500672056*     522.57741809380*Sin( 0.73175134610 +      522.57741809380*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.01476224578*     536.80451209540*Sin( 3.61736921122 +      536.80451209540*t);

   vsop87a_pico_velocities_jupiter_x := jupiter_x_0;
end;

function vsop87a_pico_velocities_jupiter_y(t: Double): Double;
   var exp: Double=0.0;
   var jupiter_y_0: Double=0.0;
   var jupiter_y_1: Double=0.0;
begin

   exp:=0;
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     5.19520046589*     529.69096509460*Sin( 5.31203162731 +      529.69096509460*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.12592862602*    1059.38193018920*Sin( 5.66160227728 +     1059.38193018920*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.09363670616*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.01508275299*     522.57741809380*Sin( 5.43934968102 +      522.57741809380*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.01475809370*     536.80451209540*Sin( 2.04679566495 +      536.80451209540*t);

   exp:=1;
   jupiter_y_1:=jupiter_y_1 + Power(t,exp-1)*exp*     0.01694798253*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.01694798253*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);

   vsop87a_pico_velocities_jupiter_y := jupiter_y_0+jupiter_y_1;
end;

function vsop87a_pico_velocities_jupiter_z(t: Double): Double;
   var exp: Double=0.0;
   var jupiter_z_0: Double=0.0;
begin

   exp:=0;
   jupiter_z_0:=jupiter_z_0 + -Power(t,exp)*     0.11823100489*     529.69096509460*Sin( 3.55844646343 +      529.69096509460*t);

   vsop87a_pico_velocities_jupiter_z := jupiter_z_0;
end;

function vsop87a_pico_velocities_mars_x(t: Double): Double;
   var exp: Double=0.0;
   var mars_x_0: Double=0.0;
begin

   exp:=0;
   mars_x_0:=mars_x_0 + -Power(t,exp)*     1.51769936383*    3340.61242669980*Sin( 6.20403346548 +     3340.61242669980*t);
   mars_x_0:=mars_x_0 + -Power(t,exp)*     0.19502945246*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   mars_x_0:=mars_x_0 + -Power(t,exp)*     0.07070919655*    6681.22485339960*Sin( 0.25870338558 +     6681.22485339960*t);

   vsop87a_pico_velocities_mars_x := mars_x_0;
end;

function vsop87a_pico_velocities_mars_y(t: Double): Double;
   var exp: Double=0.0;
   var mars_y_0: Double=0.0;
   var mars_y_1: Double=0.0;
begin

   exp:=0;
   mars_y_0:=mars_y_0 + -Power(t,exp)*     1.51558976277*    3340.61242669980*Sin( 4.63212206588 +     3340.61242669980*t);
   mars_y_0:=mars_y_0 + -Power(t,exp)*     0.07064550239*    6681.22485339960*Sin( 4.97051892902 +     6681.22485339960*t);
   mars_y_0:=mars_y_0 + -Power(t,exp)*     0.08655481102*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);

   exp:=1;
   mars_y_1:=mars_y_1 + Power(t,exp-1)*exp*     0.01427324210*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.01427324210*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);

   vsop87a_pico_velocities_mars_y := mars_y_0+mars_y_1;
end;

function vsop87a_pico_velocities_mars_z(t: Double): Double;
   var exp: Double=0.0;
   var mars_z_0: Double=0.0;
begin

   exp:=0;
   mars_z_0:=mars_z_0 + -Power(t,exp)*     0.04901207220*    3340.61242669980*Sin( 3.76712324286 +     3340.61242669980*t);

   vsop87a_pico_velocities_mars_z := mars_z_0;
end;

function vsop87a_pico_velocities_mercury_x(t: Double): Double;
   var exp: Double=0.0;
   var mercury_x_0: Double=0.0;
begin

   exp:=0;
   mercury_x_0:=mercury_x_0 + -Power(t,exp)*     0.37546291728*   26087.90314157420*Sin( 4.39651506942 +    26087.90314157420*t);
   mercury_x_0:=mercury_x_0 + -Power(t,exp)*     0.03825746672*   52175.80628314840*Sin( 1.16485604339 +    52175.80628314840*t);
   mercury_x_0:=mercury_x_0 + -Power(t,exp)*     0.02625615963*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);

   vsop87a_pico_velocities_mercury_x := mercury_x_0;
end;

function vsop87a_pico_velocities_mercury_y(t: Double): Double;
   var exp: Double=0.0;
   var mercury_y_0: Double=0.0;
begin

   exp:=0;
   mercury_y_0:=mercury_y_0 + -Power(t,exp)*     0.37953642888*   26087.90314157420*Sin( 2.83780617820 +    26087.90314157420*t);
   mercury_y_0:=mercury_y_0 + -Power(t,exp)*     0.11626131831*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   mercury_y_0:=mercury_y_0 + -Power(t,exp)*     0.03854668215*   52175.80628314840*Sin( 5.88780608966 +    52175.80628314840*t);

   vsop87a_pico_velocities_mercury_y := mercury_y_0;
end;

function vsop87a_pico_velocities_mercury_z(t: Double): Double;
   var exp: Double=0.0;
   var mercury_z_0: Double=0.0;
begin

   exp:=0;
   mercury_z_0:=mercury_z_0 + -Power(t,exp)*     0.04607665326*   26087.90314157420*Sin( 1.99295081967 +    26087.90314157420*t);

   vsop87a_pico_velocities_mercury_z := mercury_z_0;
end;

function vsop87a_pico_velocities_neptune_x(t: Double): Double;
   var exp: Double=0.0;
   var neptune_x_0: Double=0.0;
begin

   exp:=0;
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*    30.05890004476*      38.13303563780*Sin( 5.31211340029 +       38.13303563780*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.27080164222*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.13505661755*      76.26607127560*Sin( 3.50078975634 +       76.26607127560*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.15726094556*      36.64856292950*Sin( 0.11319072675 +       36.64856292950*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.14935120126*      39.61750834610*Sin( 1.08499403018 +       39.61750834610*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.02597313814*       1.48447270830*Sin( 1.99590301412 +        1.48447270830*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.01074040708*      74.78159856730*Sin( 5.38502938672 +       74.78159856730*t);

   vsop87a_pico_velocities_neptune_x := neptune_x_0;
end;

function vsop87a_pico_velocities_neptune_y(t: Double): Double;
   var exp: Double=0.0;
   var neptune_y_0: Double=0.0;
begin

   exp:=0;
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*    30.06056351665*      38.13303563780*Sin( 3.74086294714 +       38.13303563780*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.30205857683*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.13506391797*      76.26607127560*Sin( 1.92953034883 +       76.26607127560*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.15706589373*      36.64856292950*Sin( 4.82539970129 +       36.64856292950*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.14936165806*      39.61750834610*Sin( 5.79694900665 +       39.61750834610*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.02584250749*       1.48447270830*Sin( 0.42549700754 +        1.48447270830*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.01073739772*      74.78159856730*Sin( 3.81371728533 +       74.78159856730*t);

   vsop87a_pico_velocities_neptune_y := neptune_y_0;
end;

function vsop87a_pico_velocities_neptune_z(t: Double): Double;
   var exp: Double=0.0;
   var neptune_z_0: Double=0.0;
begin

   exp:=0;
   neptune_z_0:=neptune_z_0 + -Power(t,exp)*     0.92866054405*      38.13303563780*Sin( 1.44103930278 +       38.13303563780*t);
   neptune_z_0:=neptune_z_0 + -Power(t,exp)*     0.01245978462*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);

   vsop87a_pico_velocities_neptune_z := neptune_z_0;
end;

function vsop87a_pico_velocities_saturn_x(t: Double): Double;
   var exp: Double=0.0;
   var saturn_x_0: Double=0.0;
   var saturn_x_1: Double=0.0;
begin

   exp:=0;
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     9.51638335797*     213.29909543800*Sin( 0.87441380794 +      213.29909543800*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.26412374238*     426.59819087600*Sin( 0.12390892620 +      426.59819087600*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.06760430339*     206.18554843720*Sin( 4.16767145778 +      206.18554843720*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.06624260115*     220.41264243880*Sin( 0.75094737780 +      220.41264243880*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.04244797817*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.02336340488*       7.11354700080*Sin( 2.02227784673 +        7.11354700080*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.01255372247*     110.20632121940*Sin( 2.17338917731 +      110.20632121940*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.01115684467*     419.48464387520*Sin( 3.15686878377 +      419.48464387520*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.01097683232*     639.89728631400*Sin( 5.65753337256 +      639.89728631400*t);

   exp:=1;
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.07575103962*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.07575103962*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.03085041716*Cos( 4.27565749128 +      426.59819087600*t)-Power(t,exp)*     0.03085041716*     426.59819087600*Sin( 4.27565749128 +      426.59819087600*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.02714918399*Cos( 5.85229412397 +      206.18554843720*t)-Power(t,exp)*     0.02714918399*     206.18554843720*Sin( 5.85229412397 +      206.18554843720*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.02643100909*Cos( 5.33291950584 +      220.41264243880*t)-Power(t,exp)*     0.02643100909*     220.41264243880*Sin( 5.33291950584 +      220.41264243880*t);

   vsop87a_pico_velocities_saturn_x := saturn_x_0+saturn_x_1;
end;

function vsop87a_pico_velocities_saturn_y(t: Double): Double;
   var exp: Double=0.0;
   var saturn_y_0: Double=0.0;
   var saturn_y_1: Double=0.0;
begin

   exp:=0;
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     9.52986882699*     213.29909543800*Sin( 5.58600556665 +      213.29909543800*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.79387988806*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.26441781302*     426.59819087600*Sin( 4.83528061849 +      426.59819087600*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.06916653915*     206.18554843720*Sin( 2.55279408706 +      206.18554843720*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.06633570703*     220.41264243880*Sin( 5.46258848288 +      220.41264243880*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.02345609742*       7.11354700080*Sin( 0.44652132519 +        7.11354700080*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.01183874652*     419.48464387520*Sin( 1.34638298371 +      419.48464387520*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.01245790434*     110.20632121940*Sin( 0.60367177975 +      110.20632121940*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.01098751131*     639.89728631400*Sin( 4.08608782813 +      639.89728631400*t);

   exp:=1;
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.05373889135*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.05373889135*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.03090575152*Cos( 2.70346890906 +      426.59819087600*t)-Power(t,exp)*     0.03090575152*     426.59819087600*Sin( 2.70346890906 +      426.59819087600*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.02741594312*Cos( 4.26667636015 +      206.18554843720*t)-Power(t,exp)*     0.02741594312*     206.18554843720*Sin( 4.26667636015 +      206.18554843720*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.02647489677*Cos( 3.76132298889 +      220.41264243880*t)-Power(t,exp)*     0.02647489677*     220.41264243880*Sin( 3.76132298889 +      220.41264243880*t);

   vsop87a_pico_velocities_saturn_y := saturn_y_0+saturn_y_1;
end;

function vsop87a_pico_velocities_saturn_z(t: Double): Double;
   var exp: Double=0.0;
   var saturn_z_0: Double=0.0;
   var saturn_z_1: Double=0.0;
begin

   exp:=0;
   saturn_z_0:=saturn_z_0 + -Power(t,exp)*     0.41356950940*     213.29909543800*Sin( 3.60234142982 +      213.29909543800*t);
   saturn_z_0:=saturn_z_0 + -Power(t,exp)*     0.01148283576*     426.59819087600*Sin( 2.85128367469 +      426.59819087600*t);
   saturn_z_0:=saturn_z_0 + -Power(t,exp)*     0.01214249867*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);

   exp:=1;
   saturn_z_1:=saturn_z_1 + Power(t,exp-1)*exp*     0.01906503283*Cos( 4.94544746116 +      213.29909543800*t)-Power(t,exp)*     0.01906503283*     213.29909543800*Sin( 4.94544746116 +      213.29909543800*t);

   vsop87a_pico_velocities_saturn_z := saturn_z_0+saturn_z_1;
end;

function vsop87a_pico_velocities_uranus_x(t: Double): Double;
   var exp: Double=0.0;
   var uranus_x_0: Double=0.0;
begin

   exp:=0;
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*    19.17370730359*      74.78159856730*Sin( 5.48133416489 +       74.78159856730*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     1.32272523872*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.44402496796*     149.56319713460*Sin( 1.65967519586 +      149.56319713460*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.14668209481*      73.29712585900*Sin( 3.42395862804 +       73.29712585900*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.14130269479*      76.26607127560*Sin( 4.39572927934 +       76.26607127560*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.06201106178*       1.48447270830*Sin( 5.14043574125 +        1.48447270830*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.01542951343*     224.34479570190*Sin( 4.12121838072 +      224.34479570190*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.01444216660*     148.07872442630*Sin( 2.65117115201 +      148.07872442630*t);

   vsop87a_pico_velocities_uranus_x := uranus_x_0;
end;

function vsop87a_pico_velocities_uranus_y(t: Double): Double;
   var exp: Double=0.0;
   var uranus_y_0: Double=0.0;
   var uranus_y_1: Double=0.0;
begin

   exp:=0;
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*    19.16518231584*      74.78159856730*Sin( 3.91045677002 +       74.78159856730*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.44390465203*     149.56319713460*Sin( 0.08884111329 +      149.56319713460*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.16256125476*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.14755940186*      73.29712585900*Sin( 1.85423280679 +       73.29712585900*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.14123958128*      76.26607127560*Sin( 2.82486076549 +       76.26607127560*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.06250078231*       1.48447270830*Sin( 3.56960243857 +        1.48447270830*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.01542668264*     224.34479570190*Sin( 2.55040539213 +      224.34479570190*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.01442356575*     148.07872442630*Sin( 1.08004542712 +      148.07872442630*t);

   exp:=1;
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.02157896385*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.02157896385*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);

   vsop87a_pico_velocities_uranus_y := uranus_y_0+uranus_y_1;
end;

function vsop87a_pico_velocities_uranus_z(t: Double): Double;
   var exp: Double=0.0;
   var uranus_z_0: Double=0.0;
begin

   exp:=0;
   uranus_z_0:=uranus_z_0 + -Power(t,exp)*     0.25878127698*      74.78159856730*Sin( 2.61861272578 +       74.78159856730*t);
   uranus_z_0:=uranus_z_0 + -Power(t,exp)*     0.01774318778*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);

   vsop87a_pico_velocities_uranus_z := uranus_z_0;
end;

function vsop87a_pico_velocities_venus_x(t: Double): Double;
   var exp: Double=0.0;
   var venus_x_0: Double=0.0;
begin

   exp:=0;
   venus_x_0:=venus_x_0 + -Power(t,exp)*     0.72211281391*   10213.28554621100*Sin( 3.17575836361 +    10213.28554621100*t);

   vsop87a_pico_velocities_venus_x := venus_x_0;
end;

function vsop87a_pico_velocities_venus_y(t: Double): Double;
   var exp: Double=0.0;
   var venus_y_0: Double=0.0;
begin

   exp:=0;
   venus_y_0:=venus_y_0 + -Power(t,exp)*     0.72324820731*   10213.28554621100*Sin( 1.60573808356 +    10213.28554621100*t);

   vsop87a_pico_velocities_venus_y := venus_y_0;
end;

function vsop87a_pico_velocities_venus_z(t: Double): Double;
   var exp: Double=0.0;
   var venus_z_0: Double=0.0;
begin

   exp:=0;
   venus_z_0:=venus_z_0 + -Power(t,exp)*     0.04282990302*   10213.28554621100*Sin( 0.26703856476 +    10213.28554621100*t);

   vsop87a_pico_velocities_venus_z := venus_z_0;
end;

procedure vsop87a_pico_velocities_getEarth(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87a_pico_velocities_earth_x(t) / 365250.0;
   temp[1]:=vsop87a_pico_velocities_earth_y(t) / 365250.0;
   temp[2]:=vsop87a_pico_velocities_earth_z(t) / 365250.0;
end;

procedure vsop87a_pico_velocities_getEmb(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87a_pico_velocities_emb_x(t) / 365250.0;
   temp[1]:=vsop87a_pico_velocities_emb_y(t) / 365250.0;
   temp[2]:=vsop87a_pico_velocities_emb_z(t) / 365250.0;
end;

procedure vsop87a_pico_velocities_getJupiter(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87a_pico_velocities_jupiter_x(t) / 365250.0;
   temp[1]:=vsop87a_pico_velocities_jupiter_y(t) / 365250.0;
   temp[2]:=vsop87a_pico_velocities_jupiter_z(t) / 365250.0;
end;

procedure vsop87a_pico_velocities_getMars(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87a_pico_velocities_mars_x(t) / 365250.0;
   temp[1]:=vsop87a_pico_velocities_mars_y(t) / 365250.0;
   temp[2]:=vsop87a_pico_velocities_mars_z(t) / 365250.0;
end;

procedure vsop87a_pico_velocities_getMercury(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87a_pico_velocities_mercury_x(t) / 365250.0;
   temp[1]:=vsop87a_pico_velocities_mercury_y(t) / 365250.0;
   temp[2]:=vsop87a_pico_velocities_mercury_z(t) / 365250.0;
end;

procedure vsop87a_pico_velocities_getNeptune(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87a_pico_velocities_neptune_x(t) / 365250.0;
   temp[1]:=vsop87a_pico_velocities_neptune_y(t) / 365250.0;
   temp[2]:=vsop87a_pico_velocities_neptune_z(t) / 365250.0;
end;

procedure vsop87a_pico_velocities_getSaturn(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87a_pico_velocities_saturn_x(t) / 365250.0;
   temp[1]:=vsop87a_pico_velocities_saturn_y(t) / 365250.0;
   temp[2]:=vsop87a_pico_velocities_saturn_z(t) / 365250.0;
end;

procedure vsop87a_pico_velocities_getUranus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87a_pico_velocities_uranus_x(t) / 365250.0;
   temp[1]:=vsop87a_pico_velocities_uranus_y(t) / 365250.0;
   temp[2]:=vsop87a_pico_velocities_uranus_z(t) / 365250.0;
end;

procedure vsop87a_pico_velocities_getVenus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87a_pico_velocities_venus_x(t) / 365250.0;
   temp[1]:=vsop87a_pico_velocities_venus_y(t) / 365250.0;
   temp[2]:=vsop87a_pico_velocities_venus_z(t) / 365250.0;
end;

procedure vsop87a_pico_velocities_getMoon(var earth: array of Double; var emb: array of Double;var temp: array of Double);
begin
   temp[0]:=(emb[0]-earth[0])*(1 + 1 / 0.01230073677);
   temp[1]:=(emb[1]-earth[1])*(1 + 1 / 0.01230073677);
   temp[2]:=(emb[2]-earth[2])*(1 + 1 / 0.01230073677);
   temp[0]:=temp[0]+earth[0];
   temp[1]:=temp[1]+earth[1];
   temp[2]:=temp[2]+earth[2];
end;
end.