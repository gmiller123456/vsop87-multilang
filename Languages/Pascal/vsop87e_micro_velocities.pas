unit vsop87e_micro_velocities;

interface
uses Math;

procedure vsop87e_micro_velocities_getEarth(t: Double;var temp: array of Double);
procedure vsop87e_micro_velocities_getJupiter(t: Double;var temp: array of Double);
procedure vsop87e_micro_velocities_getMars(t: Double;var temp: array of Double);
procedure vsop87e_micro_velocities_getMercury(t: Double;var temp: array of Double);
procedure vsop87e_micro_velocities_getNeptune(t: Double;var temp: array of Double);
procedure vsop87e_micro_velocities_getSaturn(t: Double;var temp: array of Double);
procedure vsop87e_micro_velocities_getUranus(t: Double;var temp: array of Double);
procedure vsop87e_micro_velocities_getVenus(t: Double;var temp: array of Double);
procedure vsop87e_micro_velocities_getSun(t: Double;var temp: array of Double);

implementation


function vsop87e_micro_velocities_earth_x(t: Double): Double;
   var exp: Double=0.0;
   var earth_x_0: Double=0.0;
   var earth_x_1: Double=0.0;
begin

   exp:=0;
   earth_x_0:=earth_x_0 + -Power(t,exp)*     0.99982624851*    6283.07584999140*Sin( 1.75348568475 +     6283.07584999140*t);
   earth_x_0:=earth_x_0 + -Power(t,exp)*     0.00835254761*   12566.15169998280*Sin( 1.71034539458 +    12566.15169998280*t);
   earth_x_0:=earth_x_0 + -Power(t,exp)*     0.00590518455*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   earth_x_0:=earth_x_0 + -Power(t,exp)*     0.00493120585*     529.69096509460*Sin( 3.74115834452 +      529.69096509460*t);
   earth_x_0:=earth_x_0 + -Power(t,exp)*     0.00271650686*     213.29909543800*Sin( 4.01601440281 +      213.29909543800*t);
   earth_x_0:=earth_x_0 + -Power(t,exp)*     0.00155434220*      38.13303563780*Sin( 2.17052065758 +       38.13303563780*t);
   earth_x_0:=earth_x_0 + -Power(t,exp)*     0.00083789104*      74.78159856730*Sin( 2.33967726393 +       74.78159856730*t);
   earth_x_0:=earth_x_0 + -Power(t,exp)*     0.00011821467*    1059.38193018920*Sin( 4.04599151293 +     1059.38193018920*t);
   earth_x_0:=earth_x_0 + -Power(t,exp)*     0.00010466596*   18849.22754997420*Sin( 1.66722645223 +    18849.22754997420*t);

   exp:=1;
   earth_x_1:=earth_x_1 + Power(t,exp-1)*exp*     0.00122106982*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.00122106982*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   earth_x_1:=earth_x_1 + Power(t,exp-1)*exp*     0.00051500000*Cos( 6.00266267204 +    12566.15169998280*t)-Power(t,exp)*     0.00051500000*   12566.15169998280*Sin( 6.00266267204 +    12566.15169998280*t);

   vsop87e_micro_velocities_earth_x := earth_x_0+earth_x_1;
end;

function vsop87e_micro_velocities_earth_y(t: Double): Double;
   var exp: Double=0.0;
   var earth_y_0: Double=0.0;
   var earth_y_1: Double=0.0;
begin

   exp:=0;
   earth_y_0:=earth_y_0 + -Power(t,exp)*     0.99988907017*    6283.07584999140*Sin( 0.18265890456 +     6283.07584999140*t);
   earth_y_0:=earth_y_0 + -Power(t,exp)*     0.02408829501*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   earth_y_0:=earth_y_0 + -Power(t,exp)*     0.00835289774*   12566.15169998280*Sin( 0.13952879005 +    12566.15169998280*t);
   earth_y_0:=earth_y_0 + -Power(t,exp)*     0.00492966037*     529.69096509460*Sin( 2.17052458400 +      529.69096509460*t);
   earth_y_0:=earth_y_0 + -Power(t,exp)*     0.00272033033*     213.29909543800*Sin( 2.44443635549 +      213.29909543800*t);
   earth_y_0:=earth_y_0 + -Power(t,exp)*     0.00155442849*      38.13303563780*Sin( 0.59927021065 +       38.13303563780*t);
   earth_y_0:=earth_y_0 + -Power(t,exp)*     0.00083751910*      74.78159856730*Sin( 0.76880010707 +       74.78159856730*t);
   earth_y_0:=earth_y_0 + -Power(t,exp)*     0.00011819755*    1059.38193018920*Sin( 2.47524448851 +     1059.38193018920*t);
   earth_y_0:=earth_y_0 + -Power(t,exp)*     0.00010466933*   18849.22754997420*Sin( 0.09641690558 +    18849.22754997420*t);

   exp:=1;
   earth_y_1:=earth_y_1 + Power(t,exp-1)*exp*     0.00093052441*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.00093052441*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   earth_y_1:=earth_y_1 + Power(t,exp-1)*exp*     0.00051506453*Cos( 4.43180499286 +    12566.15169998280*t)-Power(t,exp)*     0.00051506453*   12566.15169998280*Sin( 4.43180499286 +    12566.15169998280*t);

   vsop87e_micro_velocities_earth_y := earth_y_0+earth_y_1;
end;

function vsop87e_micro_velocities_earth_z(t: Double): Double;
   var exp: Double=0.0;
   var earth_z_0: Double=0.0;
   var earth_z_1: Double=0.0;
begin

   exp:=0;
   earth_z_0:=earth_z_0 + -Power(t,exp)*     0.00011810174*     213.29909543800*Sin( 0.46078312048 +      213.29909543800*t);
   earth_z_0:=earth_z_0 + -Power(t,exp)*     0.00011270511*     529.69096509460*Sin( 0.41685732455 +      529.69096509460*t);

   exp:=1;
   earth_z_1:=earth_z_1 + Power(t,exp-1)*exp*     0.00227821750*Cos( 3.41372504278 +     6283.07584999140*t)-Power(t,exp)*     0.00227821750*    6283.07584999140*Sin( 3.41372504278 +     6283.07584999140*t);

   vsop87e_micro_velocities_earth_z := earth_z_0+earth_z_1;
end;

function vsop87e_micro_velocities_jupiter_x(t: Double): Double;
   var exp: Double=0.0;
   var jupiter_x_0: Double=0.0;
   var jupiter_x_1: Double=0.0;
   var jupiter_x_2: Double=0.0;
   var jupiter_x_3: Double=0.0;
begin

   exp:=0;
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     5.19167797375*     529.69096509460*Sin( 0.59945079482 +      529.69096509460*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.36633268070*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.12581924842*    1059.38193018920*Sin( 0.94911581432 +     1059.38193018920*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.01499237862*     522.57741809380*Sin( 0.73175554601 +      522.57741809380*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.01474818211*     536.80451209540*Sin( 3.61736901402 +      536.80451209540*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00457316096*    1589.07289528380*Sin( 1.29883699143 +     1589.07289528380*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00302068886*       7.11354700080*Sin( 5.17370377723 +        7.11354700080*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00385749947*     103.09277421860*Sin( 2.01222596811 +      103.09277421860*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00192562451*     426.59819087600*Sin( 4.98733787115 +      426.59819087600*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00150783740*     110.20632121940*Sin( 6.11831671330 +      110.20632121940*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00144750651*     632.78373931320*Sin( 5.55980048541 +      632.78373931320*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00154896097*      38.13303563780*Sin( 2.17051189575 +       38.13303563780*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00137575946*     213.29909543800*Sin( 4.01399498370 +      213.29909543800*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00103396684*    1052.26838318840*Sin( 6.19327175097 +     1052.26838318840*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00114092461*    1162.47470440780*Sin( 0.01567031739 +     1162.47470440780*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00072025988*    1066.49547719000*Sin( 3.96117200382 +     1066.49547719000*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00082181886*      74.78159856730*Sin( 2.33944503932 +       74.78159856730*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00059429203*     949.17560896980*Sin( 4.45768709661 +      949.17560896980*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00068217918*     846.08283475120*Sin( 3.44053291909 +      846.08283475120*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00047092829*     419.48464387520*Sin( 1.43942906349 +      419.48464387520*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00029905661*     206.18554843720*Sin( 2.93170826549 +      206.18554843720*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00026609536*     323.50541665740*Sin( 4.85102664902 +      323.50541665740*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00019708639*    2118.76386037840*Sin( 1.64891620821 +     2118.76386037840*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00016318258*     316.39186965660*Sin( 1.94286700529 +      316.39186965660*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00016086488*     515.46387109300*Sin( 0.87974686945 +      515.46387109300*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00014193776*     742.99006053260*Sin( 2.07763165706 +      742.99006053260*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00015178545*     735.87651353180*Sin( 6.25878811430 +      735.87651353180*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00011412363*     543.91805909620*Sin( 3.48145943220 +      543.91805909620*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00012143698*     525.75881183150*Sin( 3.75229920148 +      525.75881183150*t);
   jupiter_x_0:=jupiter_x_0 + -Power(t,exp)*     0.00011984824*     533.62311835770*Sin( 0.58568596255 +      533.62311835770*t);

   exp:=1;
   jupiter_x_1:=jupiter_x_1 + Power(t,exp-1)*exp*     0.00883685325*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00883685325*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   jupiter_x_1:=jupiter_x_1 + Power(t,exp-1)*exp*     0.00634691138*Cos( 0.10662162351 +     1059.38193018920*t)-Power(t,exp)*     0.00634691138*    1059.38193018920*Sin( 0.10662162351 +     1059.38193018920*t);
   jupiter_x_1:=jupiter_x_1 + Power(t,exp-1)*exp*     0.00599147916*Cos( 2.42996832550 +      522.57741809380*t)-Power(t,exp)*     0.00599147916*     522.57741809380*Sin( 2.42996832550 +      522.57741809380*t);
   jupiter_x_1:=jupiter_x_1 + Power(t,exp-1)*exp*     0.00588595541*Cos( 1.91556289228 +      536.80451209540*t)-Power(t,exp)*     0.00588595541*     536.80451209540*Sin( 1.91556289228 +      536.80451209540*t);
   jupiter_x_1:=jupiter_x_1 + Power(t,exp-1)*exp*     0.00081798277*Cos( 3.46668967473 +        7.11354700080*t)-Power(t,exp)*     0.00081798277*       7.11354700080*Sin( 3.46668967473 +        7.11354700080*t);
   jupiter_x_1:=jupiter_x_1 + Power(t,exp-1)*exp*     0.00046157824*Cos( 0.45714213541 +     1589.07289528380*t)-Power(t,exp)*     0.00046157824*    1589.07289528380*Sin( 0.45714213541 +     1589.07289528380*t);
   jupiter_x_1:=jupiter_x_1 + Power(t,exp-1)*exp*     0.00032477578*Cos( 1.74648870966 +     1052.26838318840*t)-Power(t,exp)*     0.00032477578*    1052.26838318840*Sin( 1.74648870966 +     1052.26838318840*t);
   jupiter_x_1:=jupiter_x_1 + Power(t,exp-1)*exp*     0.00033859106*Cos( 4.10112469499 +      529.69096509460*t)-Power(t,exp)*     0.00033859106*     529.69096509460*Sin( 4.10112469499 +      529.69096509460*t);
   jupiter_x_1:=jupiter_x_1 + Power(t,exp-1)*exp*     0.00031204139*Cos( 2.34698443027 +     1066.49547719000*t)-Power(t,exp)*     0.00031204139*    1066.49547719000*Sin( 2.34698443027 +     1066.49547719000*t);
   jupiter_x_1:=jupiter_x_1 + Power(t,exp-1)*exp*     0.00021258131*Cos( 4.36563858679 +      110.20632121940*t)-Power(t,exp)*     0.00021258131*     110.20632121940*Sin( 4.36563858679 +      110.20632121940*t);
   jupiter_x_1:=jupiter_x_1 + Power(t,exp-1)*exp*     0.00017292154*Cos( 3.99214003946 +      426.59819087600*t)-Power(t,exp)*     0.00017292154*     426.59819087600*Sin( 3.99214003946 +      426.59819087600*t);
   jupiter_x_1:=jupiter_x_1 + Power(t,exp-1)*exp*     0.00013566605*Cos( 0.30040958696 +      632.78373931320*t)-Power(t,exp)*     0.00013566605*     632.78373931320*Sin( 0.30040958696 +      632.78373931320*t);
   jupiter_x_1:=jupiter_x_1 + Power(t,exp-1)*exp*     0.00012877132*Cos( 2.57490337554 +      515.46387109300*t)-Power(t,exp)*     0.00012877132*     515.46387109300*Sin( 2.57490337554 +      515.46387109300*t);

   exp:=2;
   jupiter_x_2:=jupiter_x_2 + Power(t,exp-1)*exp*     0.00123746423*Cos( 4.13563340107 +      522.57741809380*t)-Power(t,exp)*     0.00123746423*     522.57741809380*Sin( 4.13563340107 +      522.57741809380*t);
   jupiter_x_2:=jupiter_x_2 + Power(t,exp-1)*exp*     0.00121405454*Cos( 0.21155087534 +      536.80451209540*t)-Power(t,exp)*     0.00121405454*     536.80451209540*Sin( 0.21155087534 +      536.80451209540*t);
   jupiter_x_2:=jupiter_x_2 + Power(t,exp-1)*exp*     0.00085400287*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.00085400287*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   jupiter_x_2:=jupiter_x_2 + Power(t,exp-1)*exp*     0.00077611336*Cos( 5.29776152037 +      529.69096509460*t)-Power(t,exp)*     0.00077611336*     529.69096509460*Sin( 5.29776152037 +      529.69096509460*t);
   jupiter_x_2:=jupiter_x_2 + Power(t,exp-1)*exp*     0.00041371381*Cos( 5.12291606259 +     1059.38193018920*t)-Power(t,exp)*     0.00041371381*    1059.38193018920*Sin( 5.12291606259 +     1059.38193018920*t);
   jupiter_x_2:=jupiter_x_2 + Power(t,exp-1)*exp*     0.00011437051*Cos( 1.72922178247 +        7.11354700080*t)-Power(t,exp)*     0.00011437051*       7.11354700080*Sin( 1.72922178247 +        7.11354700080*t);

   exp:=3;
   jupiter_x_3:=jupiter_x_3 + Power(t,exp-1)*exp*     0.00017055031*Cos( 5.86133054086 +      522.57741809380*t)-Power(t,exp)*     0.00017055031*     522.57741809380*Sin( 5.86133054086 +      522.57741809380*t);
   jupiter_x_3:=jupiter_x_3 + Power(t,exp-1)*exp*     0.00016697614*Cos( 4.77458774773 +      536.80451209540*t)-Power(t,exp)*     0.00016697614*     536.80451209540*Sin( 4.77458774773 +      536.80451209540*t);

   vsop87e_micro_velocities_jupiter_x := jupiter_x_0+jupiter_x_1+jupiter_x_2+jupiter_x_3;
end;

function vsop87e_micro_velocities_jupiter_y(t: Double): Double;
   var exp: Double=0.0;
   var jupiter_y_0: Double=0.0;
   var jupiter_y_1: Double=0.0;
   var jupiter_y_2: Double=0.0;
   var jupiter_y_3: Double=0.0;
begin

   exp:=0;
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     5.19024510371*     529.69096509460*Sin( 5.31203160043 +      529.69096509460*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.12580850775*    1059.38193018920*Sin( 5.66160225641 +     1059.38193018920*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.09329801081*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.01506838468*     522.57741809380*Sin( 5.43934599781 +      522.57741809380*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.01474403395*     536.80451209540*Sin( 2.04679547637 +      536.80451209540*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00457314174*    1589.07289528380*Sin( 6.01129093508 +     1589.07289528380*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00301069256*       7.11354700080*Sin( 3.60943303554 +        7.11354700080*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00378016915*     103.09277421860*Sin( 3.53013675622 +      103.09277421860*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00190850034*     426.59819087600*Sin( 3.41807324121 +      426.59819087600*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00146192922*     110.20632121940*Sin( 4.62080103783 +      110.20632121940*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00139367298*     632.78373931320*Sin( 4.00075739657 +      632.78373931320*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00154904248*      38.13303563780*Sin( 0.59924790507 +       38.13303563780*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00139655050*     213.29909543800*Sin( 2.41039954154 +      213.29909543800*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00101901831*    1052.26838318840*Sin( 4.57592165280 +     1052.26838318840*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00113934096*    1162.47470440780*Sin( 4.72982346991 +     1162.47470440780*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00072021597*    1066.49547719000*Sin( 2.39048430255 +     1066.49547719000*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00082109296*      74.78159856730*Sin( 0.76861586597 +       74.78159856730*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00058995131*     949.17560896980*Sin( 2.89529666872 +      949.17560896980*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00068308433*     846.08283475120*Sin( 1.86538762629 +      846.08283475120*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00030597479*     206.18554843720*Sin( 4.58059597562 +      206.18554843720*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00027182574*     419.48464387520*Sin( 3.86962082273 +      419.48464387520*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00026615785*     323.50541665740*Sin( 3.28135958246 +      323.50541665740*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00020859553*     735.87651353180*Sin( 3.79339751809 +      735.87651353180*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00019708579*    2118.76386037840*Sin( 0.07818533602 +     2118.76386037840*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00018475985*     316.39186965660*Sin( 0.38014924174 +      316.39186965660*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00016340182*     515.46387109300*Sin( 5.56996543941 +      515.46387109300*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00014591238*     742.99006053260*Sin( 0.47749865610 +      742.99006053260*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00011409020*     543.91805909620*Sin( 1.91089175916 +      543.91805909620*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00012141842*     525.75881183150*Sin( 2.18151948736 +      525.75881183150*t);
   jupiter_y_0:=jupiter_y_0 + -Power(t,exp)*     0.00011977440*     533.62311835770*Sin( 5.29687559056 +      533.62311835770*t);

   exp:=1;
   jupiter_y_1:=jupiter_y_1 + Power(t,exp-1)*exp*     0.01694792137*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.01694792137*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   jupiter_y_1:=jupiter_y_1 + Power(t,exp-1)*exp*     0.00634254247*Cos( 4.81903195356 +     1059.38193018920*t)-Power(t,exp)*     0.00634254247*    1059.38193018920*Sin( 4.81903195356 +     1059.38193018920*t);
   jupiter_y_1:=jupiter_y_1 + Power(t,exp-1)*exp*     0.00600587150*Cos( 0.85811137383 +      522.57741809380*t)-Power(t,exp)*     0.00600587150*     522.57741809380*Sin( 0.85811137383 +      522.57741809380*t);
   jupiter_y_1:=jupiter_y_1 + Power(t,exp-1)*exp*     0.00588367200*Cos( 0.34491553018 +      536.80451209540*t)-Power(t,exp)*     0.00588367200*     536.80451209540*Sin( 0.34491553018 +      536.80451209540*t);
   jupiter_y_1:=jupiter_y_1 + Power(t,exp-1)*exp*     0.00081289939*Cos( 1.90910271853 +        7.11354700080*t)-Power(t,exp)*     0.00081289939*       7.11354700080*Sin( 1.90910271853 +        7.11354700080*t);
   jupiter_y_1:=jupiter_y_1 + Power(t,exp-1)*exp*     0.00046843519*Cos( 1.91294033052 +      529.69096509460*t)-Power(t,exp)*     0.00046843519*     529.69096509460*Sin( 1.91294033052 +      529.69096509460*t);
   jupiter_y_1:=jupiter_y_1 + Power(t,exp-1)*exp*     0.00046150068*Cos( 5.16955995419 +     1589.07289528380*t)-Power(t,exp)*     0.00046150068*    1589.07289528380*Sin( 5.16955995419 +     1589.07289528380*t);
   jupiter_y_1:=jupiter_y_1 + Power(t,exp-1)*exp*     0.00032472443*Cos( 0.17640771395 +     1052.26838318840*t)-Power(t,exp)*     0.00032472443*    1052.26838318840*Sin( 0.17640771395 +     1052.26838318840*t);
   jupiter_y_1:=jupiter_y_1 + Power(t,exp-1)*exp*     0.00031201535*Cos( 0.77624038457 +     1066.49547719000*t)-Power(t,exp)*     0.00031201535*    1066.49547719000*Sin( 0.77624038457 +     1066.49547719000*t);
   jupiter_y_1:=jupiter_y_1 + Power(t,exp-1)*exp*     0.00019475766*Cos( 3.00913152396 +      110.20632121940*t)-Power(t,exp)*     0.00019475766*     110.20632121940*Sin( 3.00913152396 +      110.20632121940*t);
   jupiter_y_1:=jupiter_y_1 + Power(t,exp-1)*exp*     0.00016865586*Cos( 2.45297644533 +      426.59819087600*t)-Power(t,exp)*     0.00016865586*     426.59819087600*Sin( 2.45297644533 +      426.59819087600*t);
   jupiter_y_1:=jupiter_y_1 + Power(t,exp-1)*exp*     0.00013690691*Cos( 5.02101628562 +      632.78373931320*t)-Power(t,exp)*     0.00013690691*     632.78373931320*Sin( 5.02101628562 +      632.78373931320*t);
   jupiter_y_1:=jupiter_y_1 + Power(t,exp-1)*exp*     0.00013022204*Cos( 0.98978959368 +      515.46387109300*t)-Power(t,exp)*     0.00013022204*     515.46387109300*Sin( 0.98978959368 +      515.46387109300*t);

   exp:=2;
   jupiter_y_2:=jupiter_y_2 + Power(t,exp-1)*exp*     0.00123914193*Cos( 2.56495551373 +      522.57741809380*t)-Power(t,exp)*     0.00123914193*     522.57741809380*Sin( 2.56495551373 +      522.57741809380*t);
   jupiter_y_2:=jupiter_y_2 + Power(t,exp-1)*exp*     0.00121340211*Cos( 4.92398747363 +      536.80451209540*t)-Power(t,exp)*     0.00121340211*     536.80451209540*Sin( 4.92398747363 +      536.80451209540*t);
   jupiter_y_2:=jupiter_y_2 + Power(t,exp-1)*exp*     0.00076450198*Cos( 3.75913373191 +      529.69096509460*t)-Power(t,exp)*     0.00076450198*     529.69096509460*Sin( 3.75913373191 +      529.69096509460*t);
   jupiter_y_2:=jupiter_y_2 + Power(t,exp-1)*exp*     0.00076998857*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00076998857*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   jupiter_y_2:=jupiter_y_2 + Power(t,exp-1)*exp*     0.00041318153*Cos( 3.55228415274 +     1059.38193018920*t)-Power(t,exp)*     0.00041318153*    1059.38193018920*Sin( 3.55228415274 +     1059.38193018920*t);
   jupiter_y_2:=jupiter_y_2 + Power(t,exp-1)*exp*     0.00011292133*Cos( 0.18554488524 +        7.11354700080*t)-Power(t,exp)*     0.00011292133*       7.11354700080*Sin( 0.18554488524 +        7.11354700080*t);

   exp:=3;
   jupiter_y_3:=jupiter_y_3 + Power(t,exp-1)*exp*     0.00017069216*Cos( 4.29096907367 +      522.57741809380*t)-Power(t,exp)*     0.00017069216*     522.57741809380*Sin( 4.29096907367 +      522.57741809380*t);
   jupiter_y_3:=jupiter_y_3 + Power(t,exp-1)*exp*     0.00016685430*Cos( 3.20365723177 +      536.80451209540*t)-Power(t,exp)*     0.00016685430*     536.80451209540*Sin( 3.20365723177 +      536.80451209540*t);

   vsop87e_micro_velocities_jupiter_y := jupiter_y_0+jupiter_y_1+jupiter_y_2+jupiter_y_3;
end;

function vsop87e_micro_velocities_jupiter_z(t: Double): Double;
   var exp: Double=0.0;
   var jupiter_z_0: Double=0.0;
   var jupiter_z_1: Double=0.0;
   var jupiter_z_2: Double=0.0;
begin

   exp:=0;
   jupiter_z_0:=jupiter_z_0 + -Power(t,exp)*     0.11811822789*     529.69096509460*Sin( 3.55844641987 +      529.69096509460*t);
   jupiter_z_0:=jupiter_z_0 + -Power(t,exp)*     0.00857879296*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   jupiter_z_0:=jupiter_z_0 + -Power(t,exp)*     0.00286288759*    1059.38193018920*Sin( 3.90812239092 +     1059.38193018920*t);
   jupiter_z_0:=jupiter_z_0 + -Power(t,exp)*     0.00042347799*     522.57741809380*Sin( 3.60144639424 +      522.57741809380*t);
   jupiter_z_0:=jupiter_z_0 + -Power(t,exp)*     0.00033263796*     536.80451209540*Sin( 0.30296971930 +      536.80451209540*t);
   jupiter_z_0:=jupiter_z_0 + -Power(t,exp)*     0.00010406225*    1589.07289528380*Sin( 4.25764578777 +     1589.07289528380*t);

   exp:=1;
   jupiter_z_1:=jupiter_z_1 + Power(t,exp-1)*exp*     0.00406683941*Cos( 1.52699356726 +      529.69096509460*t)-Power(t,exp)*     0.00406683941*     529.69096509460*Sin( 1.52699356726 +      529.69096509460*t);
   jupiter_z_1:=jupiter_z_1 + Power(t,exp-1)*exp*     0.00020287968*Cos( 2.59878263946 +     1059.38193018920*t)-Power(t,exp)*     0.00020287968*    1059.38193018920*Sin( 2.59878263946 +     1059.38193018920*t);
   jupiter_z_1:=jupiter_z_1 + Power(t,exp-1)*exp*     0.00014411207*Cos( 4.85400100506 +      536.80451209540*t)-Power(t,exp)*     0.00014411207*     536.80451209540*Sin( 4.85400100506 +      536.80451209540*t);
   jupiter_z_1:=jupiter_z_1 + Power(t,exp-1)*exp*     0.00015608009*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.00015608009*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   jupiter_z_1:=jupiter_z_1 + Power(t,exp-1)*exp*     0.00012718197*Cos( 5.45536889012 +      522.57741809380*t)-Power(t,exp)*     0.00012718197*     522.57741809380*Sin( 5.45536889012 +      522.57741809380*t);

   exp:=2;
   jupiter_z_2:=jupiter_z_2 + Power(t,exp-1)*exp*     0.00028608011*Cos( 3.01374191263 +      529.69096509460*t)-Power(t,exp)*     0.00028608011*     529.69096509460*Sin( 3.01374191263 +      529.69096509460*t);

   vsop87e_micro_velocities_jupiter_z := jupiter_z_0+jupiter_z_1+jupiter_z_2;
end;

function vsop87e_micro_velocities_mars_x(t: Double): Double;
   var exp: Double=0.0;
   var mars_x_0: Double=0.0;
   var mars_x_1: Double=0.0;
   var mars_x_2: Double=0.0;
begin

   exp:=0;
   mars_x_0:=mars_x_0 + -Power(t,exp)*     1.51769887405*    3340.61242669980*Sin( 6.20403346548 +     3340.61242669980*t);
   mars_x_0:=mars_x_0 + -Power(t,exp)*     0.19473570996*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   mars_x_0:=mars_x_0 + -Power(t,exp)*     0.07070917372*    6681.22485339960*Sin( 0.25870338552 +     6681.22485339960*t);
   mars_x_0:=mars_x_0 + -Power(t,exp)*     0.00494196754*   10021.83728009940*Sin( 0.59669127752 +    10021.83728009940*t);
   mars_x_0:=mars_x_0 + -Power(t,exp)*     0.00482151285*     529.69096509460*Sin( 3.74021439144 +      529.69096509460*t);
   mars_x_0:=mars_x_0 + -Power(t,exp)*     0.00271094292*     213.29909543800*Sin( 4.01586959956 +      213.29909543800*t);
   mars_x_0:=mars_x_0 + -Power(t,exp)*     0.00155429009*      38.13303563780*Sin( 2.17051900894 +       38.13303563780*t);
   mars_x_0:=mars_x_0 + -Power(t,exp)*     0.00083777640*      74.78159856730*Sin( 2.33969868905 +       74.78159856730*t);
   mars_x_0:=mars_x_0 + -Power(t,exp)*     0.00040938237*   13362.44970679920*Sin( 0.93473307419 +    13362.44970679920*t);
   mars_x_0:=mars_x_0 + -Power(t,exp)*     0.00021067199*    3337.08930835080*Sin( 1.80435656154 +     3337.08930835080*t);
   mars_x_0:=mars_x_0 + -Power(t,exp)*     0.00021041626*    3344.13554504880*Sin( 1.17895619474 +     3344.13554504880*t);
   mars_x_0:=mars_x_0 + -Power(t,exp)*     0.00021794152*    1059.38193018920*Sin( 4.45100162839 +     1059.38193018920*t);

   exp:=1;
   mars_x_1:=mars_x_1 + Power(t,exp-1)*exp*     0.00862737448*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00862737448*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   mars_x_1:=mars_x_1 + Power(t,exp-1)*exp*     0.00552437771*Cos( 5.09565872891 +     6681.22485339960*t)-Power(t,exp)*     0.00552437771*    6681.22485339960*Sin( 5.09565872891 +     6681.22485339960*t);
   mars_x_1:=mars_x_1 + Power(t,exp-1)*exp*     0.00077184951*Cos( 5.43315636209 +    10021.83728009940*t)-Power(t,exp)*     0.00077184951*   10021.83728009940*Sin( 5.43315636209 +    10021.83728009940*t);
   mars_x_1:=mars_x_1 + Power(t,exp-1)*exp*     0.00020467294*Cos( 5.57051812369 +     3340.61242669980*t)-Power(t,exp)*     0.00020467294*    3340.61242669980*Sin( 5.57051812369 +     3340.61242669980*t);

   exp:=2;
   mars_x_2:=mars_x_2 + Power(t,exp-1)*exp*     0.00056368724*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.00056368724*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mars_x_2:=mars_x_2 + Power(t,exp-1)*exp*     0.00022122521*Cos( 3.54372113272 +     6681.22485339960*t)-Power(t,exp)*     0.00022122521*    6681.22485339960*Sin( 3.54372113272 +     6681.22485339960*t);

   vsop87e_micro_velocities_mars_x := mars_x_0+mars_x_1+mars_x_2;
end;

function vsop87e_micro_velocities_mars_y(t: Double): Double;
   var exp: Double=0.0;
   var mars_y_0: Double=0.0;
   var mars_y_1: Double=0.0;
   var mars_y_2: Double=0.0;
begin

   exp:=0;
   mars_y_0:=mars_y_0 + -Power(t,exp)*     1.51558927367*    3340.61242669980*Sin( 4.63212206588 +     3340.61242669980*t);
   mars_y_0:=mars_y_0 + -Power(t,exp)*     0.07064547959*    6681.22485339960*Sin( 4.97051892898 +     6681.22485339960*t);
   mars_y_0:=mars_y_0 + -Power(t,exp)*     0.08689350637*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mars_y_0:=mars_y_0 + -Power(t,exp)*     0.00493872689*   10021.83728009940*Sin( 5.30877806678 +    10021.83728009940*t);
   mars_y_0:=mars_y_0 + -Power(t,exp)*     0.00482218424*     529.69096509460*Sin( 2.16962356915 +      529.69096509460*t);
   mars_y_0:=mars_y_0 + -Power(t,exp)*     0.00271492455*     213.29909543800*Sin( 2.44409624683 +      213.29909543800*t);
   mars_y_0:=mars_y_0 + -Power(t,exp)*     0.00155437832*      38.13303563780*Sin( 0.59926749768 +       38.13303563780*t);
   mars_y_0:=mars_y_0 + -Power(t,exp)*     0.00083738369*      74.78159856730*Sin( 0.76880567376 +       74.78159856730*t);
   mars_y_0:=mars_y_0 + -Power(t,exp)*     0.00040917422*   13362.44970679920*Sin( 5.64698263703 +    13362.44970679920*t);
   mars_y_0:=mars_y_0 + -Power(t,exp)*     0.00021036784*    3337.08930835080*Sin( 0.23240270955 +     3337.08930835080*t);
   mars_y_0:=mars_y_0 + -Power(t,exp)*     0.00021012921*    3344.13554504880*Sin( 5.89022773653 +     3344.13554504880*t);
   mars_y_0:=mars_y_0 + -Power(t,exp)*     0.00021795361*    1059.38193018920*Sin( 2.88000673227 +     1059.38193018920*t);

   exp:=1;
   mars_y_1:=mars_y_1 + Power(t,exp-1)*exp*     0.01427318093*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.01427318093*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   mars_y_1:=mars_y_1 + Power(t,exp-1)*exp*     0.00551063576*Cos( 3.52128320402 +     6681.22485339960*t)-Power(t,exp)*     0.00551063576*    6681.22485339960*Sin( 3.52128320402 +     6681.22485339960*t);
   mars_y_1:=mars_y_1 + Power(t,exp-1)*exp*     0.00077091888*Cos( 3.86082685753 +    10021.83728009940*t)-Power(t,exp)*     0.00077091888*   10021.83728009940*Sin( 3.86082685753 +    10021.83728009940*t);
   mars_y_1:=mars_y_1 + Power(t,exp-1)*exp*     0.00037310479*Cos( 1.16016958445 +     3340.61242669980*t)-Power(t,exp)*     0.00037310479*    3340.61242669980*Sin( 1.16016958445 +     3340.61242669980*t);

   exp:=2;
   mars_y_2:=mars_y_2 + Power(t,exp-1)*exp*     0.00035452579*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00035452579*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   mars_y_2:=mars_y_2 + Power(t,exp-1)*exp*     0.00021950751*Cos( 1.96291594946 +     6681.22485339960*t)-Power(t,exp)*     0.00021950751*    6681.22485339960*Sin( 1.96291594946 +     6681.22485339960*t);

   vsop87e_micro_velocities_mars_y := mars_y_0+mars_y_1+mars_y_2;
end;

function vsop87e_micro_velocities_mars_z(t: Double): Double;
   var exp: Double=0.0;
   var mars_z_0: Double=0.0;
   var mars_z_1: Double=0.0;
   var mars_z_2: Double=0.0;
begin

   exp:=0;
   mars_z_0:=mars_z_0 + -Power(t,exp)*     0.04901205639*    3340.61242669980*Sin( 3.76712324293 +     3340.61242669980*t);
   mars_z_0:=mars_z_0 + -Power(t,exp)*     0.00659516885*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mars_z_0:=mars_z_0 + -Power(t,exp)*     0.00228333831*    6681.22485339960*Sin( 4.10544022266 +     6681.22485339960*t);
   mars_z_0:=mars_z_0 + -Power(t,exp)*     0.00015958402*   10021.83728009940*Sin( 4.44367058261 +    10021.83728009940*t);
   mars_z_0:=mars_z_0 + -Power(t,exp)*     0.00011803129*     213.29909543800*Sin( 0.45922638235 +      213.29909543800*t);
   mars_z_0:=mars_z_0 + -Power(t,exp)*     0.00011012894*     529.69096509460*Sin( 0.39307428990 +      529.69096509460*t);

   exp:=1;
   mars_z_1:=mars_z_1 + Power(t,exp-1)*exp*     0.00331842851*Cos( 6.05027773492 +     3340.61242669980*t)-Power(t,exp)*     0.00331842851*    3340.61242669980*Sin( 6.05027773492 +     3340.61242669980*t);
   mars_z_1:=mars_z_1 + Power(t,exp-1)*exp*     0.00047797013*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00047797013*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);

   exp:=2;
   mars_z_2:=mars_z_2 + Power(t,exp-1)*exp*     0.00013705355*Cos( 1.04212852598 +     3340.61242669980*t)-Power(t,exp)*     0.00013705355*    3340.61242669980*Sin( 1.04212852598 +     3340.61242669980*t);

   vsop87e_micro_velocities_mars_z := mars_z_0+mars_z_1+mars_z_2;
end;

function vsop87e_micro_velocities_mercury_x(t: Double): Double;
   var exp: Double=0.0;
   var mercury_x_0: Double=0.0;
   var mercury_x_1: Double=0.0;
begin

   exp:=0;
   mercury_x_0:=mercury_x_0 + -Power(t,exp)*     0.37546285495*   26087.90314157420*Sin( 4.39651506942 +    26087.90314157420*t);
   mercury_x_0:=mercury_x_0 + -Power(t,exp)*     0.03825746037*   52175.80628314840*Sin( 1.16485604343 +    52175.80628314840*t);
   mercury_x_0:=mercury_x_0 + -Power(t,exp)*     0.02596241714*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   mercury_x_0:=mercury_x_0 + -Power(t,exp)*     0.00584261236*   78263.70942472259*Sin( 4.21599394757 +    78263.70942472259*t);
   mercury_x_0:=mercury_x_0 + -Power(t,exp)*     0.00495586029*     529.69096509460*Sin( 3.74115422358 +      529.69096509460*t);
   mercury_x_0:=mercury_x_0 + -Power(t,exp)*     0.00271797490*     213.29909543800*Sin( 4.01600769847 +      213.29909543800*t);
   mercury_x_0:=mercury_x_0 + -Power(t,exp)*     0.00155435621*      38.13303563780*Sin( 2.17052060921 +       38.13303563780*t);
   mercury_x_0:=mercury_x_0 + -Power(t,exp)*     0.00105716677*  104351.61256629678*Sin( 0.98379033182 +   104351.61256629678*t);
   mercury_x_0:=mercury_x_0 + -Power(t,exp)*     0.00083792888*      74.78159856730*Sin( 2.33967639910 +       74.78159856730*t);
   mercury_x_0:=mercury_x_0 + -Power(t,exp)*     0.00021011726*  130439.51570787099*Sin( 4.03469353923 +   130439.51570787099*t);
   mercury_x_0:=mercury_x_0 + -Power(t,exp)*     0.00012216168*    1059.38193018920*Sin( 4.05786119279 +     1059.38193018920*t);

   exp:=1;
   mercury_x_1:=mercury_x_1 + Power(t,exp-1)*exp*     0.00317551960*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.00317551960*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mercury_x_1:=mercury_x_1 + Power(t,exp-1)*exp*     0.00105289001*Cos( 5.91600475006 +    52175.80628314840*t)-Power(t,exp)*     0.00105289001*   52175.80628314840*Sin( 5.91600475006 +    52175.80628314840*t);
   mercury_x_1:=mercury_x_1 + Power(t,exp-1)*exp*     0.00032315996*Cos( 2.68247273347 +    78263.70942472259*t)-Power(t,exp)*     0.00032315996*   78263.70942472259*Sin( 2.68247273347 +    78263.70942472259*t);
   mercury_x_1:=mercury_x_1 + Power(t,exp-1)*exp*     0.00011992887*Cos( 5.81575112963 +    26087.90314157420*t)-Power(t,exp)*     0.00011992887*   26087.90314157420*Sin( 5.81575112963 +    26087.90314157420*t);

   vsop87e_micro_velocities_mercury_x := mercury_x_0+mercury_x_1;
end;

function vsop87e_micro_velocities_mercury_y(t: Double): Double;
   var exp: Double=0.0;
   var mercury_y_0: Double=0.0;
   var mercury_y_1: Double=0.0;
begin

   exp:=0;
   mercury_y_0:=mercury_y_0 + -Power(t,exp)*     0.37953636588*   26087.90314157420*Sin( 2.83780617821 +    26087.90314157420*t);
   mercury_y_0:=mercury_y_0 + -Power(t,exp)*     0.11592262295*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   mercury_y_0:=mercury_y_0 + -Power(t,exp)*     0.03854667576*   52175.80628314840*Sin( 5.88780608961 +    52175.80628314840*t);
   mercury_y_0:=mercury_y_0 + -Power(t,exp)*     0.00587711171*   78263.70942472259*Sin( 2.65498896201 +    78263.70942472259*t);
   mercury_y_0:=mercury_y_0 + -Power(t,exp)*     0.00495452148*     529.69096509460*Sin( 2.17050902176 +      529.69096509460*t);
   mercury_y_0:=mercury_y_0 + -Power(t,exp)*     0.00272177927*     213.29909543800*Sin( 2.44442843667 +      213.29909543800*t);
   mercury_y_0:=mercury_y_0 + -Power(t,exp)*     0.00155444251*      38.13303563780*Sin( 0.59927014783 +       38.13303563780*t);
   mercury_y_0:=mercury_y_0 + -Power(t,exp)*     0.00106235475*  104351.61256629678*Sin( 5.70550616735 +   104351.61256629678*t);
   mercury_y_0:=mercury_y_0 + -Power(t,exp)*     0.00083755636*      74.78159856730*Sin( 0.76879995697 +       74.78159856730*t);
   mercury_y_0:=mercury_y_0 + -Power(t,exp)*     0.00021100825*  130439.51570787099*Sin( 2.47291315849 +   130439.51570787099*t);
   mercury_y_0:=mercury_y_0 + -Power(t,exp)*     0.00012216279*    1059.38193018920*Sin( 2.48707059837 +     1059.38193018920*t);

   exp:=1;
   mercury_y_1:=mercury_y_1 + Power(t,exp-1)*exp*     0.00107803834*Cos( 4.34964793883 +    52175.80628314840*t)-Power(t,exp)*     0.00107803834*   52175.80628314840*Sin( 4.34964793883 +    52175.80628314840*t);
   mercury_y_1:=mercury_y_1 + Power(t,exp-1)*exp*     0.00080645427*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00080645427*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   mercury_y_1:=mercury_y_1 + Power(t,exp-1)*exp*     0.00032715349*Cos( 1.11763734425 +    78263.70942472259*t)-Power(t,exp)*     0.00032715349*   78263.70942472259*Sin( 1.11763734425 +    78263.70942472259*t);
   mercury_y_1:=mercury_y_1 + Power(t,exp-1)*exp*     0.00011914707*Cos( 1.22139986340 +    26087.90314157420*t)-Power(t,exp)*     0.00011914707*   26087.90314157420*Sin( 1.22139986340 +    26087.90314157420*t);

   vsop87e_micro_velocities_mercury_y := mercury_y_0+mercury_y_1;
end;

function vsop87e_micro_velocities_mercury_z(t: Double): Double;
   var exp: Double=0.0;
   var mercury_z_0: Double=0.0;
   var mercury_z_1: Double=0.0;
begin

   exp:=0;
   mercury_z_0:=mercury_z_0 + -Power(t,exp)*     0.04607664562*   26087.90314157420*Sin( 1.99295081967 +    26087.90314157420*t);
   mercury_z_0:=mercury_z_0 + -Power(t,exp)*     0.00709887021*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   mercury_z_0:=mercury_z_0 + -Power(t,exp)*     0.00469171540*   52175.80628314840*Sin( 5.04215742764 +    52175.80628314840*t);
   mercury_z_0:=mercury_z_0 + -Power(t,exp)*     0.00071626383*   78263.70942472259*Sin( 1.80894256071 +    78263.70942472259*t);
   mercury_z_0:=mercury_z_0 + -Power(t,exp)*     0.00011810801*     213.29909543800*Sin( 0.46073218799 +      213.29909543800*t);
   mercury_z_0:=mercury_z_0 + -Power(t,exp)*     0.00012957444*  104351.61256629678*Sin( 4.85922032010 +   104351.61256629678*t);
   mercury_z_0:=mercury_z_0 + -Power(t,exp)*     0.00011268745*     529.69096509460*Sin( 0.41669991860 +      529.69096509460*t);

   exp:=1;
   mercury_z_1:=mercury_z_1 + Power(t,exp-1)*exp*     0.00108722159*Cos( 3.91134750825 +    26087.90314157420*t)-Power(t,exp)*     0.00108722159*   26087.90314157420*Sin( 3.91134750825 +    26087.90314157420*t);
   mercury_z_1:=mercury_z_1 + Power(t,exp-1)*exp*     0.00057693223*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00057693223*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);

   vsop87e_micro_velocities_mercury_z := mercury_z_0+mercury_z_1;
end;

function vsop87e_micro_velocities_neptune_x(t: Double): Double;
   var exp: Double=0.0;
   var neptune_x_0: Double=0.0;
   var neptune_x_1: Double=0.0;
begin

   exp:=0;
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*    30.05734568801*      38.13303563780*Sin( 5.31211340030 +       38.13303563780*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.27050789973*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.13504578270*      76.26607127560*Sin( 3.50075407055 +       76.26607127560*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.15725280871*      36.64856292950*Sin( 0.11319072402 +       36.64856292950*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.14934353052*      39.61750834610*Sin( 1.08499398649 +       39.61750834610*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.02597449604*       1.48447270830*Sin( 1.99590330725 +        1.48447270830*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.00990668211*      74.78159856730*Sin( 5.37690139386 +       74.78159856730*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.00823755467*      35.16409022120*Sin( 1.43221512492 +       35.16409022120*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.00817566529*       2.96894541660*Sin( 0.78180136001 +        2.96894541660*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.00565506338*      41.10198105440*Sin( 5.98964911841 +       41.10198105440*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.00308146172*      73.29712585900*Sin( 0.39998862713 +       73.29712585900*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.00135901755*      77.75054398390*Sin( 5.54688721933 +       77.75054398390*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.00090960996*     114.39910691340*Sin( 1.68910476933 +      114.39910691340*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.00069038680*       4.45341812490*Sin( 5.83469111908 +        4.45341812490*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.00060811221*      33.67961751290*Sin( 2.62589871314 +       33.67961751290*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.00054713428*      71.81265315070*Sin( 1.55804647862 +       71.81265315070*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.00028887848*      42.58645376270*Sin( 4.78966833702 +       42.58645376270*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.00012614574*     112.91463420510*Sin( 3.57008196751 +      112.91463420510*t);
   neptune_x_0:=neptune_x_0 + -Power(t,exp)*     0.00012743164*     111.43016149680*Sin( 2.73728741519 +      111.43016149680*t);

   exp:=1;
   neptune_x_1:=neptune_x_1 + Power(t,exp-1)*exp*     0.00255827017*Cos( 2.01935687782 +       36.64856292950*t)-Power(t,exp)*     0.00255827017*      36.64856292950*Sin( 2.01935687782 +       36.64856292950*t);
   neptune_x_1:=neptune_x_1 + Power(t,exp-1)*exp*     0.00243112812*Cos( 5.46214905602 +       39.61750834610*t)-Power(t,exp)*     0.00243112812*      39.61750834610*Sin( 5.46214905602 +       39.61750834610*t);
   neptune_x_1:=neptune_x_1 + Power(t,exp-1)*exp*     0.00118382753*Cos( 2.88255085978 +       76.26607127560*t)-Power(t,exp)*     0.00118382753*      76.26607127560*Sin( 2.88255085978 +       76.26607127560*t);
   neptune_x_1:=neptune_x_1 + Power(t,exp-1)*exp*     0.00039261522*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00039261522*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   neptune_x_1:=neptune_x_1 + Power(t,exp-1)*exp*     0.00021923572*Cos( 3.20156162709 +       35.16409022120*t)-Power(t,exp)*     0.00021923572*      35.16409022120*Sin( 3.20156162709 +       35.16409022120*t);
   neptune_x_1:=neptune_x_1 + Power(t,exp-1)*exp*     0.00017458926*Cos( 4.26349403115 +       41.10198105440*t)-Power(t,exp)*     0.00017458926*      41.10198105440*Sin( 4.26349403115 +       41.10198105440*t);
   neptune_x_1:=neptune_x_1 + Power(t,exp-1)*exp*     0.00013130617*Cos( 5.36424961848 +        2.96894541660*t)-Power(t,exp)*     0.00013130617*       2.96894541660*Sin( 5.36424961848 +        2.96894541660*t);

   vsop87e_micro_velocities_neptune_x := neptune_x_0+neptune_x_1;
end;

function vsop87e_micro_velocities_neptune_y(t: Double): Double;
   var exp: Double=0.0;
   var neptune_y_0: Double=0.0;
   var neptune_y_1: Double=0.0;
begin

   exp:=0;
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*    30.05900907352*      38.13303563780*Sin( 3.74086294715 +       38.13303563780*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.30171988148*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.13505308635*      76.26607127560*Sin( 1.92949466968 +       76.26607127560*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.15705776296*      36.64856292950*Sin( 4.82539969469 +       36.64856292950*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.14935398681*      39.61750834610*Sin( 5.79694896309 +       39.61750834610*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.02584389323*       1.48447270830*Sin( 0.42549727257 +        1.48447270830*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.00990408083*      74.78159856730*Sin( 3.80555424385 +       74.78159856730*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.00815165481*       2.96894541660*Sin( 5.49429738442 +        2.96894541660*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.00582164520*      35.16409022120*Sin( 6.19633859980 +       35.16409022120*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.00565547830*      41.10198105440*Sin( 4.41843013268 +       41.10198105440*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.00305149662*      73.29712585900*Sin( 5.11023952334 +       73.29712585900*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.00135911904*      77.75054398390*Sin( 3.97565894083 +       77.75054398390*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.00090966163*     114.39910691340*Sin( 0.11783850542 +      114.39910691340*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.00068788416*       4.45341812490*Sin( 4.26391987401 +        4.45341812490*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.00028891942*      42.58645376270*Sin( 3.21848982783 +       42.58645376270*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.00020079747*      33.67961751290*Sin( 1.19788749777 +       33.67961751290*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.00012613423*     112.91463420510*Sin( 1.99783010734 +      112.91463420510*t);
   neptune_y_0:=neptune_y_0 + -Power(t,exp)*     0.00012822727*     111.43016149680*Sin( 1.16749515319 +      111.43016149680*t);

   exp:=1;
   neptune_y_1:=neptune_y_1 + Power(t,exp-1)*exp*     0.00352941377*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00352941377*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   neptune_y_1:=neptune_y_1 + Power(t,exp-1)*exp*     0.00256112241*Cos( 0.44757496381 +       36.64856292950*t)-Power(t,exp)*     0.00256112241*      36.64856292950*Sin( 0.44757496381 +       36.64856292950*t);
   neptune_y_1:=neptune_y_1 + Power(t,exp-1)*exp*     0.00243135236*Cos( 3.89099801420 +       39.61750834610*t)-Power(t,exp)*     0.00243135236*      39.61750834610*Sin( 3.89099801420 +       39.61750834610*t);
   neptune_y_1:=neptune_y_1 + Power(t,exp-1)*exp*     0.00118411800*Cos( 1.31131262408 +       76.26607127560*t)-Power(t,exp)*     0.00118411800*      76.26607127560*Sin( 1.31131262408 +       76.26607127560*t);
   neptune_y_1:=neptune_y_1 + Power(t,exp-1)*exp*     0.00021935569*Cos( 1.63124087146 +       35.16409022120*t)-Power(t,exp)*     0.00021935569*      35.16409022120*Sin( 1.63124087146 +       35.16409022120*t);
   neptune_y_1:=neptune_y_1 + Power(t,exp-1)*exp*     0.00017461450*Cos( 2.69229907252 +       41.10198105440*t)-Power(t,exp)*     0.00017461450*      41.10198105440*Sin( 2.69229907252 +       41.10198105440*t);
   neptune_y_1:=neptune_y_1 + Power(t,exp-1)*exp*     0.00012992380*Cos( 3.79578633002 +        2.96894541660*t)-Power(t,exp)*     0.00012992380*       2.96894541660*Sin( 3.79578633002 +        2.96894541660*t);

   vsop87e_micro_velocities_neptune_y := neptune_y_0+neptune_y_1;
end;

function vsop87e_micro_velocities_neptune_z(t: Double): Double;
   var exp: Double=0.0;
   var neptune_z_0: Double=0.0;
   var neptune_z_1: Double=0.0;
begin

   exp:=0;
   neptune_z_0:=neptune_z_0 + -Power(t,exp)*     0.92861252357*      38.13303563780*Sin( 1.44103930199 +       38.13303563780*t);
   neptune_z_0:=neptune_z_0 + -Power(t,exp)*     0.01244825806*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   neptune_z_0:=neptune_z_0 + -Power(t,exp)*     0.00474309033*      36.64856292950*Sin( 2.52218768352 +       36.64856292950*t);
   neptune_z_0:=neptune_z_0 + -Power(t,exp)*     0.00451964646*      39.61750834610*Sin( 3.50949727943 +       39.61750834610*t);
   neptune_z_0:=neptune_z_0 + -Power(t,exp)*     0.00417539868*      76.26607127560*Sin( 5.91308871390 +       76.26607127560*t);
   neptune_z_0:=neptune_z_0 + -Power(t,exp)*     0.00084101913*       1.48447270830*Sin( 4.38932612685 +        1.48447270830*t);
   neptune_z_0:=neptune_z_0 + -Power(t,exp)*     0.00032204313*      74.78159856730*Sin( 1.48923465055 +       74.78159856730*t);
   neptune_z_0:=neptune_z_0 + -Power(t,exp)*     0.00030871862*      35.16409022120*Sin( 3.29017492215 +       35.16409022120*t);
   neptune_z_0:=neptune_z_0 + -Power(t,exp)*     0.00025811465*       2.96894541660*Sin( 3.19303929710 +        2.96894541660*t);
   neptune_z_0:=neptune_z_0 + -Power(t,exp)*     0.00016864457*      41.10198105440*Sin( 2.13251137546 +       41.10198105440*t);

   exp:=1;
   neptune_z_1:=neptune_z_1 + Power(t,exp-1)*exp*     0.00154877961*Cos( 2.14239038882 +       38.13303563780*t)-Power(t,exp)*     0.00154877961*      38.13303563780*Sin( 2.14239038882 +       38.13303563780*t);

   vsop87e_micro_velocities_neptune_z := neptune_z_0+neptune_z_1;
end;

function vsop87e_micro_velocities_saturn_x(t: Double): Double;
   var exp: Double=0.0;
   var saturn_x_0: Double=0.0;
   var saturn_x_1: Double=0.0;
   var saturn_x_2: Double=0.0;
   var saturn_x_3: Double=0.0;
begin

   exp:=0;
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     9.51366533422*     213.29909543800*Sin( 0.87441380650 +      213.29909543800*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.26404799161*     426.59819087600*Sin( 0.12391580771 +      426.59819087600*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.06758489145*     206.18554843720*Sin( 4.16767544586 +      206.18554843720*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.06622371284*     220.41264243880*Sin( 0.75094738122 +      220.41264243880*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.04274172066*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.02335961354*       7.11354700080*Sin( 2.02227905783 +        7.11354700080*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.01255113414*     110.20632121940*Sin( 2.17347170552 +      110.20632121940*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.01115372225*     419.48464387520*Sin( 3.15690865182 +      419.48464387520*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.01097374519*     639.89728631400*Sin( 5.65753938643 +      639.89728631400*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00716112591*     316.39186965660*Sin( 2.71151505735 +      316.39186965660*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00509529043*     103.09277421860*Sin( 4.95879639669 +      103.09277421860*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00372789068*     433.71173787680*Sin( 0.00137750888 +      433.71173787680*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00149659945*      38.13303563780*Sin( 2.17071100189 +       38.13303563780*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00097835080*     323.50541665740*Sin( 1.01502366873 +      323.50541665740*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00083256484*     529.69096509460*Sin( 3.06289145446 +      529.69096509460*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00080605800*      11.04570026390*Sin( 5.62066478674 +       11.04570026390*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00083758534*     227.52618943960*Sin( 0.62038891091 +      227.52618943960*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00074267111*     632.78373931320*Sin( 2.38212789877 +      632.78373931320*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00070199356*     209.36694217490*Sin( 0.88789759781 +      209.36694217490*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00068836111*     217.23124870110*Sin( 4.01788121810 +      217.23124870110*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00065601455*     202.25339517410*Sin( 2.69726244676 +      202.25339517410*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00058306839*     224.34479570190*Sin( 2.16048044319 +      224.34479570190*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00054006503*     853.19638175200*Sin( 4.90926255487 +      853.19638175200*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00058995712*      74.78159856730*Sin( 2.33042838103 +       74.78159856730*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00045542953*      14.22709400160*Sin( 1.88235196400 +       14.22709400160*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00038334470*     199.07200143640*Sin( 4.39817733456 +      199.07200143640*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00044537354*      63.73589830340*Sin( 5.60825622208 +       63.73589830340*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00025158000*     216.48048917570*Sin( 0.37800583496 +      216.48048917570*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00024547484*     210.11770170030*Sin( 4.53150636994 +      210.11770170030*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00024669930*     415.55249061210*Sin( 5.60389432714 +      415.55249061210*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00025485006*     117.31986822020*Sin( 1.63932503888 +      117.31986822020*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00024058786*     522.57741809380*Sin( 5.85571939691 +      522.57741809380*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00031244965*     735.87651353180*Sin( 4.62930311280 +      735.87651353180*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00023365871*     647.01083331480*Sin( 5.53492454782 +      647.01083331480*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00023237024*     149.56319713460*Sin( 0.10474288122 +      149.56319713460*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00014727416*     277.03499374140*Sin( 4.67982458404 +      277.03499374140*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00012389760*     490.33408917940*Sin( 4.19747910039 +      490.33408917940*t);
   saturn_x_0:=saturn_x_0 + -Power(t,exp)*     0.00012023054*     351.81659230870*Sin( 5.66372239094 +      351.81659230870*t);

   exp:=1;
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.07573807889*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.07573807889*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.03084144308*Cos( 4.27565898829 +      426.59819087600*t)-Power(t,exp)*     0.03084144308*     426.59819087600*Sin( 4.27565898829 +      426.59819087600*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.02714141496*Cos( 5.85229546861 +      206.18554843720*t)-Power(t,exp)*     0.02714141496*     206.18554843720*Sin( 5.85229546861 +      206.18554843720*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.02642347272*Cos( 5.33291950842 +      220.41264243880*t)-Power(t,exp)*     0.02642347272*     220.41264243880*Sin( 5.33291950842 +      220.41264243880*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00627003445*Cos( 0.32898258729 +        7.11354700080*t)-Power(t,exp)*     0.00627003445*       7.11354700080*Sin( 0.32898258729 +        7.11354700080*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00256488381*Cos( 3.52479443238 +      639.89728631400*t)-Power(t,exp)*     0.00256488381*     639.89728631400*Sin( 3.52479443238 +      639.89728631400*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00312269012*Cos( 4.83002443322 +      419.48464387520*t)-Power(t,exp)*     0.00312269012*     419.48464387520*Sin( 4.83002443322 +      419.48464387520*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00189142591*Cos( 4.48642939502 +      433.71173787680*t)-Power(t,exp)*     0.00189142591*     433.71173787680*Sin( 4.48642939502 +      433.71173787680*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00203589147*Cos( 1.10998720016 +      213.29909543800*t)-Power(t,exp)*     0.00203589147*     213.29909543800*Sin( 1.10998720016 +      213.29909543800*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00119517217*Cos( 1.14736396934 +      110.20632121940*t)-Power(t,exp)*     0.00119517217*     110.20632121940*Sin( 1.14736396934 +      110.20632121940*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00066742869*Cos( 3.72347003212 +      316.39186965660*t)-Power(t,exp)*     0.00066742869*     316.39186965660*Sin( 3.72347003212 +      316.39186965660*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00066882235*Cos( 5.20257498551 +      227.52618943960*t)-Power(t,exp)*     0.00066882235*     227.52618943960*Sin( 5.20257498551 +      227.52618943960*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00030991837*Cos( 6.06069383491 +      199.07200143640*t)-Power(t,exp)*     0.00030991837*     199.07200143640*Sin( 6.06069383491 +      199.07200143640*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00030413111*Cos( 0.18746990038 +       14.22709400160*t)-Power(t,exp)*     0.00030413111*      14.22709400160*Sin( 0.18746990038 +       14.22709400160*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00022268129*Cos( 6.19542444435 +      103.09277421860*t)-Power(t,exp)*     0.00022268129*     103.09277421860*Sin( 6.19542444435 +      103.09277421860*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00018933918*Cos( 2.77615609434 +      853.19638175200*t)-Power(t,exp)*     0.00018933918*     853.19638175200*Sin( 2.77615609434 +      853.19638175200*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00018087850*Cos( 5.09162753222 +      209.36694217490*t)-Power(t,exp)*     0.00018087850*     209.36694217490*Sin( 5.09162753222 +      209.36694217490*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00017772775*Cos( 6.10381591303 +      217.23124870110*t)-Power(t,exp)*     0.00017772775*     217.23124870110*Sin( 6.10381591303 +      217.23124870110*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00016291548*Cos( 4.86945682592 +      216.48048917570*t)-Power(t,exp)*     0.00016291548*     216.48048917570*Sin( 4.86945682592 +      216.48048917570*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00017120603*Cos( 4.59542499292 +      632.78373931320*t)-Power(t,exp)*     0.00017120603*     632.78373931320*Sin( 4.59542499292 +      632.78373931320*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00015889950*Cos( 0.03653526810 +      210.11770170030*t)-Power(t,exp)*     0.00015889950*     210.11770170030*Sin( 0.03653526810 +      210.11770170030*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00016193213*Cos( 5.60825312945 +      323.50541665740*t)-Power(t,exp)*     0.00016193213*     323.50541665740*Sin( 5.60825312945 +      323.50541665740*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00014461916*Cos( 3.67449803828 +      647.01083331480*t)-Power(t,exp)*     0.00014461916*     647.01083331480*Sin( 3.67449803828 +      647.01083331480*t);
   saturn_x_1:=saturn_x_1 + Power(t,exp-1)*exp*     0.00011058978*Cos( 0.03175095579 +      117.31986822020*t)-Power(t,exp)*     0.00011058978*     117.31986822020*Sin( 0.03175095579 +      117.31986822020*t);

   exp:=2;
   saturn_x_2:=saturn_x_2 + Power(t,exp-1)*exp*     0.00560586041*Cos( 1.26401676555 +      206.18554843720*t)-Power(t,exp)*     0.00560586041*     206.18554843720*Sin( 1.26401676555 +      206.18554843720*t);
   saturn_x_2:=saturn_x_2 + Power(t,exp-1)*exp*     0.00545678885*Cos( 3.62343709789 +      220.41264243880*t)-Power(t,exp)*     0.00545678885*     220.41264243880*Sin( 3.62343709789 +      220.41264243880*t);
   saturn_x_2:=saturn_x_2 + Power(t,exp-1)*exp*     0.00443297401*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00443297401*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   saturn_x_2:=saturn_x_2 + Power(t,exp-1)*exp*     0.00336013651*Cos( 2.42547432210 +      213.29909543800*t)-Power(t,exp)*     0.00336013651*     213.29909543800*Sin( 2.42547432210 +      213.29909543800*t);
   saturn_x_2:=saturn_x_2 + Power(t,exp-1)*exp*     0.00224237163*Cos( 2.49151267683 +      426.59819087600*t)-Power(t,exp)*     0.00224237163*     426.59819087600*Sin( 2.49151267683 +      426.59819087600*t);
   saturn_x_2:=saturn_x_2 + Power(t,exp-1)*exp*     0.00087156936*Cos( 4.89048703815 +        7.11354700080*t)-Power(t,exp)*     0.00087156936*       7.11354700080*Sin( 4.89048703815 +        7.11354700080*t);
   saturn_x_2:=saturn_x_2 + Power(t,exp-1)*exp*     0.00050013864*Cos( 2.70119455991 +      433.71173787680*t)-Power(t,exp)*     0.00050013864*     433.71173787680*Sin( 2.70119455991 +      433.71173787680*t);
   saturn_x_2:=saturn_x_2 + Power(t,exp-1)*exp*     0.00045109880*Cos( 0.36735560493 +      419.48464387520*t)-Power(t,exp)*     0.00045109880*     419.48464387520*Sin( 0.36735560493 +      419.48464387520*t);
   saturn_x_2:=saturn_x_2 + Power(t,exp-1)*exp*     0.00032838505*Cos( 1.59210694211 +      639.89728631400*t)-Power(t,exp)*     0.00032838505*     639.89728631400*Sin( 1.59210694211 +      639.89728631400*t);
   saturn_x_2:=saturn_x_2 + Power(t,exp-1)*exp*     0.00027145848*Cos( 3.49804001342 +      227.52618943960*t)-Power(t,exp)*     0.00027145848*     227.52618943960*Sin( 3.49804001342 +      227.52618943960*t);
   saturn_x_2:=saturn_x_2 + Power(t,exp-1)*exp*     0.00012672501*Cos( 1.45466696358 +      199.07200143640*t)-Power(t,exp)*     0.00012672501*     199.07200143640*Sin( 1.45466696358 +      199.07200143640*t);
   saturn_x_2:=saturn_x_2 + Power(t,exp-1)*exp*     0.00010329051*Cos( 4.76949570032 +       14.22709400160*t)-Power(t,exp)*     0.00010329051*      14.22709400160*Sin( 4.76949570032 +       14.22709400160*t);

   exp:=3;
   saturn_x_3:=saturn_x_3 + Power(t,exp-1)*exp*     0.00077093916*Cos( 2.97714400003 +      206.18554843720*t)-Power(t,exp)*     0.00077093916*     206.18554843720*Sin( 2.97714400003 +      206.18554843720*t);
   saturn_x_3:=saturn_x_3 + Power(t,exp-1)*exp*     0.00075318954*Cos( 1.89208004954 +      220.41264243880*t)-Power(t,exp)*     0.00075318954*     220.41264243880*Sin( 1.89208004954 +      220.41264243880*t);
   saturn_x_3:=saturn_x_3 + Power(t,exp-1)*exp*     0.00018448888*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00018448888*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   saturn_x_3:=saturn_x_3 + Power(t,exp-1)*exp*     0.00010524182*Cos( 0.66368351849 +      426.59819087600*t)-Power(t,exp)*     0.00010524182*     426.59819087600*Sin( 0.66368351849 +      426.59819087600*t);

   vsop87e_micro_velocities_saturn_x := saturn_x_0+saturn_x_1+saturn_x_2+saturn_x_3;
end;

function vsop87e_micro_velocities_saturn_y(t: Double): Double;
   var exp: Double=0.0;
   var saturn_y_0: Double=0.0;
   var saturn_y_1: Double=0.0;
   var saturn_y_2: Double=0.0;
   var saturn_y_3: Double=0.0;
begin

   exp:=0;
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     9.52714696877*     213.29909543800*Sin( 5.58600556072 +      213.29909543800*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.79354119271*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.26434197609*     426.59819087600*Sin( 4.83528742856 +      426.59819087600*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.06914690347*     206.18554843720*Sin( 2.55279029588 +      206.18554843720*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.06631679200*     220.41264243880*Sin( 5.46258849076 +      220.41264243880*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.02345226948*       7.11354700080*Sin( 0.44652393276 +        7.11354700080*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.01183557497*     419.48464387520*Sin( 1.34637027573 +      419.48464387520*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.01245523800*     110.20632121940*Sin( 0.60375781288 +      110.20632121940*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.01098442011*     639.89728631400*Sin( 4.08609387384 +      639.89728631400*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00700636234*     316.39186965660*Sin( 1.13613024684 +      316.39186965660*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00373221824*     433.71173787680*Sin( 4.71309283502 +      433.71173787680*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00335413797*     103.09277421860*Sin( 0.66392970394 +      103.09277421860*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00149675444*      38.13303563780*Sin( 0.59938943096 +       38.13303563780*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00097829309*     323.50541665740*Sin( 5.72860910220 +      323.50541665740*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00080377512*     529.69096509460*Sin( 1.51715226439 +      529.69096509460*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00080576954*      11.04570026390*Sin( 4.05258308529 +       11.04570026390*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00083875875*     227.52618943960*Sin( 5.33204068233 +      227.52618943960*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00070138439*     209.36694217490*Sin( 5.59777958177 +      209.36694217490*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00065919181*     202.25339517410*Sin( 1.25972156533 +      202.25339517410*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00071069917*     632.78373931320*Sin( 0.88882645933 +      632.78373931320*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00068966168*     217.23124870110*Sin( 2.44460285922 +      217.23124870110*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00058391222*     224.34479570190*Sin( 0.58871774298 +      224.34479570190*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00054033488*     853.19638175200*Sin( 3.33755971377 +      853.19638175200*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00058932599*      74.78159856730*Sin( 0.76188426024 +       74.78159856730*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00045783362*      14.22709400160*Sin( 0.30331816441 +       14.22709400160*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00041964833*     199.07200143640*Sin( 2.62589505876 +      199.07200143640*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00044692371*      63.73589830340*Sin( 0.90600229248 +       63.73589830340*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00025192380*     216.48048917570*Sin( 5.08963506546 +      216.48048917570*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00024633800*     210.11770170030*Sin( 2.95445207628 +      210.11770170030*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00024828004*     415.55249061210*Sin( 4.02630021779 +      415.55249061210*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00025539506*     117.31986822020*Sin( 0.06636302741 +      117.31986822020*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00029671710*     735.87651353180*Sin( 6.09960421165 +      735.87651353180*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00023390138*     647.01083331480*Sin( 3.96337860167 +      647.01083331480*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00020506212*     522.57741809380*Sin( 1.05154502619 +      522.57741809380*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00020269405*     309.27832265580*Sin( 2.34321183269 +      309.27832265580*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00023261688*     149.56319713460*Sin( 4.81745174067 +      149.56319713460*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00015379504*     277.03499374140*Sin( 3.10227913670 +      277.03499374140*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00012419205*     490.33408917940*Sin( 2.62558143020 +      490.33408917940*t);
   saturn_y_0:=saturn_y_0 + -Power(t,exp)*     0.00012044624*     351.81659230870*Sin( 4.09265940857 +      351.81659230870*t);

   exp:=1;
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.05373895252*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.05373895252*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.03089676414*Cos( 2.70347020059 +      426.59819087600*t)-Power(t,exp)*     0.03089676414*     426.59819087600*Sin( 2.70347020059 +      426.59819087600*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.02740812928*Cos( 4.26667506460 +      206.18554843720*t)-Power(t,exp)*     0.02740812928*     206.18554843720*Sin( 4.26667506460 +      206.18554843720*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.02646734779*Cos( 3.76132299914 +      220.41264243880*t)-Power(t,exp)*     0.02646734779*     220.41264243880*Sin( 3.76132299914 +      220.41264243880*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00631417689*Cos( 5.03245728319 +        7.11354700080*t)-Power(t,exp)*     0.00631417689*       7.11354700080*Sin( 5.03245728319 +        7.11354700080*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00256727017*Cos( 1.95352327208 +      639.89728631400*t)-Power(t,exp)*     0.00256727017*     639.89728631400*Sin( 1.95352327208 +      639.89728631400*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00312184641*Cos( 3.25850939353 +      419.48464387520*t)-Power(t,exp)*     0.00312184641*     419.48464387520*Sin( 3.25850939353 +      419.48464387520*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00189379568*Cos( 2.91502328680 +      433.71173787680*t)-Power(t,exp)*     0.00189379568*     433.71173787680*Sin( 2.91502328680 +      433.71173787680*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00164086267*Cos( 5.29239224879 +      213.29909543800*t)-Power(t,exp)*     0.00164086267*     213.29909543800*Sin( 5.29239224879 +      213.29909543800*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00116775818*Cos( 5.89150757121 +      110.20632121940*t)-Power(t,exp)*     0.00116775818*     110.20632121940*Sin( 5.89150757121 +      110.20632121940*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00067189505*Cos( 2.17042977500 +      316.39186965660*t)-Power(t,exp)*     0.00067189505*     316.39186965660*Sin( 2.17042977500 +      316.39186965660*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00066984273*Cos( 3.63101074215 +      227.52618943960*t)-Power(t,exp)*     0.00066984273*     227.52618943960*Sin( 3.63101074215 +      227.52618943960*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00032993193*Cos( 4.35526131741 +      199.07200143640*t)-Power(t,exp)*     0.00032993193*     199.07200143640*Sin( 4.35526131741 +      199.07200143640*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00030623941*Cos( 4.88862019450 +       14.22709400160*t)-Power(t,exp)*     0.00030623941*      14.22709400160*Sin( 4.88862019450 +       14.22709400160*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00022227517*Cos( 4.62224969869 +      103.09277421860*t)-Power(t,exp)*     0.00022227517*     103.09277421860*Sin( 4.62224969869 +      103.09277421860*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00018939541*Cos( 1.20409782475 +      853.19638175200*t)-Power(t,exp)*     0.00018939541*     853.19638175200*Sin( 1.20409782475 +      853.19638175200*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00018074789*Cos( 3.51566121826 +      209.36694217490*t)-Power(t,exp)*     0.00018074789*     209.36694217490*Sin( 3.51566121826 +      209.36694217490*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00017786462*Cos( 4.53214139341 +      217.23124870110*t)-Power(t,exp)*     0.00017786462*     217.23124870110*Sin( 4.53214139341 +      217.23124870110*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00016316041*Cos( 3.29784030574 +      216.48048917570*t)-Power(t,exp)*     0.00016316041*     216.48048917570*Sin( 3.29784030574 +      216.48048917570*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00015939705*Cos( 4.74503240139 +      210.11770170030*t)-Power(t,exp)*     0.00015939705*     210.11770170030*Sin( 4.74503240139 +      210.11770170030*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00016718004*Cos( 3.00200323762 +      632.78373931320*t)-Power(t,exp)*     0.00016718004*     632.78373931320*Sin( 3.00200323762 +      632.78373931320*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00016150533*Cos( 4.04213724873 +      323.50541665740*t)-Power(t,exp)*     0.00016150533*     323.50541665740*Sin( 4.04213724873 +      323.50541665740*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00014477333*Cos( 2.10298721499 +      647.01083331480*t)-Power(t,exp)*     0.00014477333*     647.01083331480*Sin( 2.10298721499 +      647.01083331480*t);
   saturn_y_1:=saturn_y_1 + Power(t,exp-1)*exp*     0.00011081470*Cos( 4.74085903299 +      117.31986822020*t)-Power(t,exp)*     0.00011081470*     117.31986822020*Sin( 4.74085903299 +      117.31986822020*t);

   exp:=2;
   saturn_y_2:=saturn_y_2 + Power(t,exp-1)*exp*     0.00563545688*Cos( 5.97115835983 +      206.18554843720*t)-Power(t,exp)*     0.00563545688*     206.18554843720*Sin( 5.97115835983 +      206.18554843720*t);
   saturn_y_2:=saturn_y_2 + Power(t,exp-1)*exp*     0.00546856143*Cos( 2.05154974712 +      220.41264243880*t)-Power(t,exp)*     0.00546856143*     220.41264243880*Sin( 2.05154974712 +      220.41264243880*t);
   saturn_y_2:=saturn_y_2 + Power(t,exp-1)*exp*     0.00458462799*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.00458462799*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   saturn_y_2:=saturn_y_2 + Power(t,exp-1)*exp*     0.00362190876*Cos( 0.89540102818 +      213.29909543800*t)-Power(t,exp)*     0.00362190876*     213.29909543800*Sin( 0.89540102818 +      213.29909543800*t);
   saturn_y_2:=saturn_y_2 + Power(t,exp-1)*exp*     0.00225456249*Cos( 0.91699830789 +      426.59819087600*t)-Power(t,exp)*     0.00225456249*     426.59819087600*Sin( 0.91699830789 +      426.59819087600*t);
   saturn_y_2:=saturn_y_2 + Power(t,exp-1)*exp*     0.00088376134*Cos( 3.30289743790 +        7.11354700080*t)-Power(t,exp)*     0.00088376134*       7.11354700080*Sin( 3.30289743790 +        7.11354700080*t);
   saturn_y_2:=saturn_y_2 + Power(t,exp-1)*exp*     0.00050087062*Cos( 1.12976577868 +      433.71173787680*t)-Power(t,exp)*     0.00050087062*     433.71173787680*Sin( 1.12976577868 +      433.71173787680*t);
   saturn_y_2:=saturn_y_2 + Power(t,exp-1)*exp*     0.00045503682*Cos( 5.07669915666 +      419.48464387520*t)-Power(t,exp)*     0.00045503682*     419.48464387520*Sin( 5.07669915666 +      419.48464387520*t);
   saturn_y_2:=saturn_y_2 + Power(t,exp-1)*exp*     0.00032887404*Cos( 0.02089587128 +      639.89728631400*t)-Power(t,exp)*     0.00032887404*     639.89728631400*Sin( 0.02089587128 +      639.89728631400*t);
   saturn_y_2:=saturn_y_2 + Power(t,exp-1)*exp*     0.00027192023*Cos( 1.92638417379 +      227.52618943960*t)-Power(t,exp)*     0.00027192023*     227.52618943960*Sin( 1.92638417379 +      227.52618943960*t);
   saturn_y_2:=saturn_y_2 + Power(t,exp-1)*exp*     0.00013247777*Cos( 6.07692233033 +      199.07200143640*t)-Power(t,exp)*     0.00013247777*     199.07200143640*Sin( 6.07692233033 +      199.07200143640*t);
   saturn_y_2:=saturn_y_2 + Power(t,exp-1)*exp*     0.00010424268*Cos( 3.18247070949 +       14.22709400160*t)-Power(t,exp)*     0.00010424268*      14.22709400160*Sin( 3.18247070949 +       14.22709400160*t);

   exp:=3;
   saturn_y_3:=saturn_y_3 + Power(t,exp-1)*exp*     0.00077354527*Cos( 1.40391035241 +      206.18554843720*t)-Power(t,exp)*     0.00077354527*     206.18554843720*Sin( 1.40391035241 +      206.18554843720*t);
   saturn_y_3:=saturn_y_3 + Power(t,exp-1)*exp*     0.00075542804*Cos( 0.31962897945 +      220.41264243880*t)-Power(t,exp)*     0.00075542804*     220.41264243880*Sin( 0.31962897945 +      220.41264243880*t);
   saturn_y_3:=saturn_y_3 + Power(t,exp-1)*exp*     0.00022841198*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00022841198*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   saturn_y_3:=saturn_y_3 + Power(t,exp-1)*exp*     0.00010669170*Cos( 5.36495612200 +      426.59819087600*t)-Power(t,exp)*     0.00010669170*     426.59819087600*Sin( 5.36495612200 +      426.59819087600*t);

   vsop87e_micro_velocities_saturn_y := saturn_y_0+saturn_y_1+saturn_y_2+saturn_y_3;
end;

function vsop87e_micro_velocities_saturn_z(t: Double): Double;
   var exp: Double=0.0;
   var saturn_z_0: Double=0.0;
   var saturn_z_1: Double=0.0;
   var saturn_z_2: Double=0.0;
begin

   exp:=0;
   saturn_z_0:=saturn_z_0 + -Power(t,exp)*     0.41345140292*     213.29909543800*Sin( 3.60234141893 +      213.29909543800*t);
   saturn_z_0:=saturn_z_0 + -Power(t,exp)*     0.01147953788*     426.59819087600*Sin( 2.85128771957 +      426.59819087600*t);
   saturn_z_0:=saturn_z_0 + -Power(t,exp)*     0.01213097211*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   saturn_z_0:=saturn_z_0 + -Power(t,exp)*     0.00329186544*     206.18554843720*Sin( 0.57121482436 +      206.18554843720*t);
   saturn_z_0:=saturn_z_0 + -Power(t,exp)*     0.00286852189*     220.41264243880*Sin( 3.48073528206 +      220.41264243880*t);
   saturn_z_0:=saturn_z_0 + -Power(t,exp)*     0.00099054808*       7.11354700080*Sin( 4.73370561217 +        7.11354700080*t);
   saturn_z_0:=saturn_z_0 + -Power(t,exp)*     0.00057347600*     110.20632121940*Sin( 4.92616271331 +      110.20632121940*t);
   saturn_z_0:=saturn_z_0 + -Power(t,exp)*     0.00047724545*     639.89728631400*Sin( 2.10039838370 +      639.89728631400*t);
   saturn_z_0:=saturn_z_0 + -Power(t,exp)*     0.00043448305*     419.48464387520*Sin( 5.84904880596 +      419.48464387520*t);
   saturn_z_0:=saturn_z_0 + -Power(t,exp)*     0.00034555171*     316.39186965660*Sin( 5.42614764541 +      316.39186965660*t);
   saturn_z_0:=saturn_z_0 + -Power(t,exp)*     0.00016180782*     433.71173787680*Sin( 2.72987541776 +      433.71173787680*t);

   exp:=1;
   saturn_z_1:=saturn_z_1 + Power(t,exp-1)*exp*     0.01905958940*Cos( 4.94544746619 +      213.29909543800*t)-Power(t,exp)*     0.01905958940*     213.29909543800*Sin( 4.94544746619 +      213.29909543800*t);
   saturn_z_1:=saturn_z_1 + Power(t,exp-1)*exp*     0.00528167867*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00528167867*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   saturn_z_1:=saturn_z_1 + Power(t,exp-1)*exp*     0.00130224990*Cos( 2.26141028606 +      206.18554843720*t)-Power(t,exp)*     0.00130224990*     206.18554843720*Sin( 2.26141028606 +      206.18554843720*t);
   saturn_z_1:=saturn_z_1 + Power(t,exp-1)*exp*     0.00101437388*Cos( 1.79095832223 +      220.41264243880*t)-Power(t,exp)*     0.00101437388*     220.41264243880*Sin( 1.79095832223 +      220.41264243880*t);
   saturn_z_1:=saturn_z_1 + Power(t,exp-1)*exp*     0.00085922590*Cos( 0.51612794233 +      426.59819087600*t)-Power(t,exp)*     0.00085922590*     426.59819087600*Sin( 0.51612794233 +      426.59819087600*t);
   saturn_z_1:=saturn_z_1 + Power(t,exp-1)*exp*     0.00022253070*Cos( 3.07685453172 +        7.11354700080*t)-Power(t,exp)*     0.00022253070*       7.11354700080*Sin( 3.07685453172 +        7.11354700080*t);
   saturn_z_1:=saturn_z_1 + Power(t,exp-1)*exp*     0.00016174973*Cos( 1.19988846625 +      419.48464387520*t)-Power(t,exp)*     0.00016174973*     419.48464387520*Sin( 1.19988846625 +      419.48464387520*t);

   exp:=2;
   saturn_z_2:=saturn_z_2 + Power(t,exp-1)*exp*     0.00131237677*Cos( 0.08868998014 +      213.29909543800*t)-Power(t,exp)*     0.00131237677*     213.29909543800*Sin( 0.08868998014 +      213.29909543800*t);
   saturn_z_2:=saturn_z_2 + Power(t,exp-1)*exp*     0.00030139033*Cos( 3.91396211806 +      206.18554843720*t)-Power(t,exp)*     0.00030139033*     206.18554843720*Sin( 3.91396211806 +      206.18554843720*t);
   saturn_z_2:=saturn_z_2 + Power(t,exp-1)*exp*     0.00019316662*Cos( 0.09228751610 +      220.41264243880*t)-Power(t,exp)*     0.00019316662*     220.41264243880*Sin( 0.09228751610 +      220.41264243880*t);

   vsop87e_micro_velocities_saturn_z := saturn_z_0+saturn_z_1+saturn_z_2;
end;

function vsop87e_micro_velocities_sun_x(t: Double): Double;
   var exp: Double=0.0;
   var sun_x_0: Double=0.0;
begin

   exp:=0;
   sun_x_0:=sun_x_0 + -Power(t,exp)*     0.00495672739*     529.69096509460*Sin( 3.74107356792 +      529.69096509460*t);
   sun_x_0:=sun_x_0 + -Power(t,exp)*     0.00271802376*     213.29909543800*Sin( 4.01601149775 +      213.29909543800*t);
   sun_x_0:=sun_x_0 + -Power(t,exp)*     0.00155435675*      38.13303563780*Sin( 2.17052050061 +       38.13303563780*t);
   sun_x_0:=sun_x_0 + -Power(t,exp)*     0.00083792997*      74.78159856730*Sin( 2.33967985523 +       74.78159856730*t);
   sun_x_0:=sun_x_0 + -Power(t,exp)*     0.00029374249*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   sun_x_0:=sun_x_0 + -Power(t,exp)*     0.00012013079*    1059.38193018920*Sin( 4.09073224903 +     1059.38193018920*t);

   vsop87e_micro_velocities_sun_x := sun_x_0;
end;

function vsop87e_micro_velocities_sun_y(t: Double): Double;
   var exp: Double=0.0;
   var sun_y_0: Double=0.0;
begin

   exp:=0;
   sun_y_0:=sun_y_0 + -Power(t,exp)*     0.00495536218*     529.69096509460*Sin( 2.17046712634 +      529.69096509460*t);
   sun_y_0:=sun_y_0 + -Power(t,exp)*     0.00272185821*     213.29909543800*Sin( 2.44443364925 +      213.29909543800*t);
   sun_y_0:=sun_y_0 + -Power(t,exp)*     0.00155444313*      38.13303563780*Sin( 0.59927010840 +       38.13303563780*t);
   sun_y_0:=sun_y_0 + -Power(t,exp)*     0.00083755792*      74.78159856730*Sin( 0.76880164710 +       74.78159856730*t);
   sun_y_0:=sun_y_0 + -Power(t,exp)*     0.00033869535*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   sun_y_0:=sun_y_0 + -Power(t,exp)*     0.00012011827*    1059.38193018920*Sin( 2.52003147880 +     1059.38193018920*t);

   vsop87e_micro_velocities_sun_y := sun_y_0;
end;

function vsop87e_micro_velocities_sun_z(t: Double): Double;
   var exp: Double=0.0;
   var sun_z_0: Double=0.0;
begin

   exp:=0;
   sun_z_0:=sun_z_0 + -Power(t,exp)*     0.00011810648*     213.29909543800*Sin( 0.46078690233 +      213.29909543800*t);
   sun_z_0:=sun_z_0 + -Power(t,exp)*     0.00011277700*     529.69096509460*Sin( 0.41689943638 +      529.69096509460*t);

   vsop87e_micro_velocities_sun_z := sun_z_0;
end;

function vsop87e_micro_velocities_uranus_x(t: Double): Double;
   var exp: Double=0.0;
   var uranus_x_0: Double=0.0;
   var uranus_x_1: Double=0.0;
   var uranus_x_2: Double=0.0;
begin

   exp:=0;
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*    19.17286937362*      74.78159856730*Sin( 5.48133416758 +       74.78159856730*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     1.32301898121*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.44400556159*     149.56319713460*Sin( 1.65967535182 +      149.56319713460*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.14667584671*      73.29712585900*Sin( 3.42395875589 +       73.29712585900*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.14129215712*      76.26607127560*Sin( 4.39576776954 +       76.26607127560*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.06200970387*       1.48447270830*Sin( 5.14043568284 +        1.48447270830*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.01542890129*     224.34479570190*Sin( 4.12122840701 +      224.34479570190*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.01444153470*     148.07872442630*Sin( 2.65117108186 +      148.07872442630*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00944969862*      11.04570026390*Sin( 1.65871112189 +       11.04570026390*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00657496073*     151.04766984290*Sin( 0.57595186181 +      151.04766984290*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00621603101*      77.75054398390*Sin( 3.05881560775 +       77.75054398390*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00585159800*      71.81265315070*Sin( 4.79934731599 +       71.81265315070*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00633971831*      63.73589830340*Sin( 4.09554584740 +       63.73589830340*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00547675794*      85.82729883120*Sin( 3.63127816021 +       85.82729883120*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00458242260*       2.96894541660*Sin( 3.90788427382 +        2.96894541660*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00383608186*     138.51749687070*Sin( 6.18762167352 +      138.51749687070*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00145499145*      70.84944530420*Sin( 2.31759819136 +       70.84944530420*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00135334157*      78.71375183040*Sin( 5.51062460646 +       78.71375183040*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00120354886*      39.61750834610*Sin( 4.10218670070 +       39.61750834610*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00125099578*     111.43016149680*Sin( 2.51455157066 +      111.43016149680*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00111255099*     222.86032299360*Sin( 5.12253353573 +      222.86032299360*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00104615229*     146.59425171800*Sin( 3.90538915195 +      146.59425171800*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00110162872*      35.16409022120*Sin( 4.45478121996 +       35.16409022120*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00063581767*     299.12639426920*Sin( 0.29966264689 +      299.12639426920*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00053904041*       3.93215326310*Sin( 3.92590422507 +        3.93215326310*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00065063923*     109.94568878850*Sin( 3.73008432701 +      109.94568878850*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00059935440*      38.13303563780*Sin( 5.30012287089 +       38.13303563780*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00039183521*       4.45341812490*Sin( 2.68841323459 +        4.45341812490*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00034340286*     225.82926841020*Sin( 3.03782445102 +      225.82926841020*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00033133106*      65.22037101170*Sin( 2.54202102521 +       65.22037101170*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00034554296*      79.23501669220*Sin( 1.84698778371 +       79.23501669220*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00033865960*      70.32818044240*Sin( 5.98418361600 +       70.32818044240*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00028371102*     127.47179660680*Sin( 2.58026061716 +      127.47179660680*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00035938423*     202.25339517410*Sin( 4.08805817528 +      202.25339517410*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00025208291*       9.56122755560*Sin( 5.30270440656 +        9.56122755560*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00023466780*     145.63104387150*Sin( 4.09729826283 +      145.63104387150*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00022962960*      84.34282612290*Sin( 5.51475242270 +       84.34282612290*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00031822530*     152.53214255120*Sin( 5.53948530245 +      152.53214255120*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00025767220*     213.29909543800*Sin( 2.64279937947 +      213.29909543800*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00028383708*     184.72728735580*Sin( 6.01785438397 +      184.72728735580*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00026656250*     160.60889739850*Sin( 6.11027934265 +      160.60889739850*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00019675903*      74.66972398270*Sin( 5.53431398332 +       74.66972398270*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00019653015*      74.89347315190*Sin( 2.28660913421 +       74.89347315190*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00019953738*      12.53017297220*Sin( 0.57452653801 +       12.53017297220*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00018565067*      52.69019803950*Sin( 0.62225019017 +       52.69019803950*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00020084107*      22.09140052780*Sin( 4.47297514058 +       22.09140052780*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00019925827*     112.91463420510*Sin( 1.39875506889 +      112.91463420510*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00018577959*      33.67961751290*Sin( 5.70218580551 +       33.67961751290*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00016587870*     108.46121608020*Sin( 4.86920309163 +      108.46121608020*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00015199755*      41.10198105440*Sin( 2.88408510221 +       41.10198105440*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00011245310*      71.60020482960*Sin( 6.11597014635 +       71.60020482960*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00013947849*     221.37585028530*Sin( 6.27545944070 +      221.37585028530*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00010797879*      77.96299230500*Sin( 1.70031895074 +       77.96299230500*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00013593381*      87.31177153950*Sin( 2.55407931798 +       87.31177153950*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00012884351*     145.10977900970*Sin( 5.08737999470 +      145.10977900970*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00012394786*      72.33391801250*Sin( 6.21892878850 +       72.33391801250*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00011538642*      77.22927912210*Sin( 1.77241794539 +       77.22927912210*t);
   uranus_x_0:=uranus_x_0 + -Power(t,exp)*     0.00011442510*      36.64856292950*Sin( 0.20030247485 +       36.64856292950*t);

   exp:=1;
   uranus_x_1:=uranus_x_1 + Power(t,exp-1)*exp*     0.00739697937*Cos( 6.01067921255 +      149.56319713460*t)-Power(t,exp)*     0.00739697937*     149.56319713460*Sin( 6.01067921255 +      149.56319713460*t);
   uranus_x_1:=uranus_x_1 + Power(t,exp-1)*exp*     0.00528174379*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00528174379*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   uranus_x_1:=uranus_x_1 + Power(t,exp-1)*exp*     0.00239830578*Cos( 5.33657752107 +       73.29712585900*t)-Power(t,exp)*     0.00239830578*      73.29712585900*Sin( 5.33657752107 +       73.29712585900*t);
   uranus_x_1:=uranus_x_1 + Power(t,exp-1)*exp*     0.00229661096*Cos( 2.48203377424 +       76.26607127560*t)-Power(t,exp)*     0.00229661096*      76.26607127560*Sin( 2.48203377424 +       76.26607127560*t);
   uranus_x_1:=uranus_x_1 + Power(t,exp-1)*exp*     0.00111041831*Cos( 5.57157483973 +       11.04570026390*t)-Power(t,exp)*     0.00111041831*      11.04570026390*Sin( 5.57157483973 +       11.04570026390*t);
   uranus_x_1:=uranus_x_1 + Power(t,exp-1)*exp*     0.00096348588*Cos( 0.35070396367 +       63.73589830340*t)-Power(t,exp)*     0.00096348588*      63.73589830340*Sin( 0.35070396367 +       63.73589830340*t);
   uranus_x_1:=uranus_x_1 + Power(t,exp-1)*exp*     0.00081508425*Cos( 1.21058628422 +       85.82729883120*t)-Power(t,exp)*     0.00081508425*      85.82729883120*Sin( 1.21058628422 +       85.82729883120*t);
   uranus_x_1:=uranus_x_1 + Power(t,exp-1)*exp*     0.00045685509*Cos( 2.29216605538 +      138.51749687070*t)-Power(t,exp)*     0.00045685509*     138.51749687070*Sin( 2.29216605538 +      138.51749687070*t);
   uranus_x_1:=uranus_x_1 + Power(t,exp-1)*exp*     0.00051382144*Cos( 2.18938250169 +      224.34479570190*t)-Power(t,exp)*     0.00051382144*     224.34479570190*Sin( 2.18938250169 +      224.34479570190*t);
   uranus_x_1:=uranus_x_1 + Power(t,exp-1)*exp*     0.00038842663*Cos( 0.30724636172 +       70.84944530420*t)-Power(t,exp)*     0.00038842663*      70.84944530420*Sin( 0.30724636172 +       70.84944530420*t);
   uranus_x_1:=uranus_x_1 + Power(t,exp-1)*exp*     0.00036156923*Cos( 1.23634800002 +       78.71375183040*t)-Power(t,exp)*     0.00036156923*      78.71375183040*Sin( 1.23634800002 +       78.71375183040*t);
   uranus_x_1:=uranus_x_1 + Power(t,exp-1)*exp*     0.00032331648*Cos( 5.06666434496 +       74.78159856730*t)-Power(t,exp)*     0.00032331648*      74.78159856730*Sin( 5.06666434496 +       74.78159856730*t);
   uranus_x_1:=uranus_x_1 + Power(t,exp-1)*exp*     0.00021684713*Cos( 4.93711029212 +      151.04766984290*t)-Power(t,exp)*     0.00021684713*     151.04766984290*Sin( 4.93711029212 +      151.04766984290*t);
   uranus_x_1:=uranus_x_1 + Power(t,exp-1)*exp*     0.00019441253*Cos( 1.30617221059 +       77.75054398390*t)-Power(t,exp)*     0.00019441253*      77.75054398390*Sin( 1.30617221059 +       77.75054398390*t);
   uranus_x_1:=uranus_x_1 + Power(t,exp-1)*exp*     0.00017375530*Cos( 0.24607209329 +       71.81265315070*t)-Power(t,exp)*     0.00017375530*      71.81265315070*Sin( 0.24607209329 +       71.81265315070*t);
   uranus_x_1:=uranus_x_1 + Power(t,exp-1)*exp*     0.00015211071*Cos( 5.53141633140 +        3.93215326310*t)-Power(t,exp)*     0.00015211071*       3.93215326310*Sin( 5.53141633140 +        3.93215326310*t);

   exp:=2;
   uranus_x_2:=uranus_x_2 + Power(t,exp-1)*exp*     0.00016015031*Cos( 3.83700030134 +       74.78159856730*t)-Power(t,exp)*     0.00016015031*      74.78159856730*Sin( 3.83700030134 +       74.78159856730*t);
   uranus_x_2:=uranus_x_2 + Power(t,exp-1)*exp*     0.00010915299*Cos( 3.02987776270 +      149.56319713460*t)-Power(t,exp)*     0.00010915299*     149.56319713460*Sin( 3.02987776270 +      149.56319713460*t);

   vsop87e_micro_velocities_uranus_x := uranus_x_0+uranus_x_1+uranus_x_2;
end;

function vsop87e_micro_velocities_uranus_y(t: Double): Double;
   var exp: Double=0.0;
   var uranus_y_0: Double=0.0;
   var uranus_y_1: Double=0.0;
   var uranus_y_2: Double=0.0;
begin

   exp:=0;
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*    19.16434475791*      74.78159856730*Sin( 3.91045677275 +       74.78159856730*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.44388525091*     149.56319713460*Sin( 0.08884126943 +      149.56319713460*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.16222255941*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.14755311401*      73.29712585900*Sin( 1.85423292905 +       73.29712585900*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.14122904825*      76.26607127560*Sin( 2.82489928705 +       76.26607127560*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.06249939655*       1.48447270830*Sin( 3.56960238469 +        1.48447270830*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.01542607086*     224.34479570190*Sin( 2.55041543170 +      224.34479570190*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.01442293466*     148.07872442630*Sin( 1.08004535633 +      148.07872442630*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00938950136*      11.04570026390*Sin( 0.09277492739 +       11.04570026390*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00650307020*      63.73589830340*Sin( 2.76144565363 +       63.73589830340*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00657314387*     151.04766984290*Sin( 5.28830720039 +      151.04766984290*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00621305207*      77.75054398390*Sin( 1.48795124826 +       77.75054398390*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00541938502*      71.81265315070*Sin( 3.24476518729 +       71.81265315070*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00547449443*      85.82729883120*Sin( 2.06038015757 +       85.82729883120*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00459611215*       2.96894541660*Sin( 2.33745675699 +        2.96894541660*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00387905368*     138.51749687070*Sin( 4.62027047251 +      138.51749687070*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00144026146*      70.84944530420*Sin( 0.75015758735 +       70.84944530420*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00135284941*      78.71375183040*Sin( 3.93970261854 +       78.71375183040*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00120431731*      39.61750834610*Sin( 2.53138588744 +       39.61750834610*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00124862444*     111.43016149680*Sin( 0.94315799565 +      111.43016149680*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00111199717*     222.86032299360*Sin( 3.55163790142 +      222.86032299360*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00104503352*     146.59425171800*Sin( 2.33345670641 +      146.59425171800*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00108550063*      35.16409022120*Sin( 6.02230047678 +       35.16409022120*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00063570927*     299.12639426920*Sin( 5.01204999475 +      299.12639426920*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00053287586*       3.93215326310*Sin( 2.38436439892 +        3.93215326310*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00063771339*     109.94568878850*Sin( 2.15607569061 +      109.94568878850*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00060797570*      38.13303563780*Sin( 3.73070787340 +       38.13303563780*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00039220442*       4.45341812490*Sin( 1.11841144768 +        4.45341812490*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00034204008*      65.22037101170*Sin( 0.92405447828 +       65.22037101170*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00034332981*     225.82926841020*Sin( 1.46696953800 +      225.82926841020*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00034536961*      79.23501669220*Sin( 0.27613229331 +       79.23501669220*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00039259031*     202.25339517410*Sin( 5.75909949077 +      202.25339517410*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00026157159*       9.56122755560*Sin( 3.74095916304 +        9.56122755560*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00023426309*     145.63104387150*Sin( 2.52740094518 +      145.63104387150*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00022932162*      84.34282612290*Sin( 3.94455708202 +       84.34282612290*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00031814882*     152.53214255120*Sin( 3.96860117340 +      152.53214255120*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00025235989*      70.32818044240*Sin( 4.45141520694 +       70.32818044240*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00025902590*     213.29909543800*Sin( 1.06899231907 +      213.29909543800*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00028371248*     184.72728735580*Sin( 4.44714636367 +      184.72728735580*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00026651934*     160.60889739850*Sin( 4.53944389687 +      160.60889739850*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00019665349*      74.66972398270*Sin( 3.96350065335 +       74.66972398270*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00019642987*      74.89347315190*Sin( 0.71577796385 +       74.89347315190*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00019838446*      12.53017297220*Sin( 5.29115100742 +       12.53017297220*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00015537967*      52.69019803950*Sin( 1.87863275460 +       52.69019803950*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00020715948*      36.64856292950*Sin( 4.93996485297 +       36.64856292950*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00020115100*     127.47179660680*Sin( 3.45473780762 +      127.47179660680*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00020050993*      22.09140052780*Sin( 2.90386377392 +       22.09140052780*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00019900975*     112.91463420510*Sin( 6.11072709584 +      112.91463420510*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00018124970*      33.67961751290*Sin( 0.98477642246 +       33.67961751290*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00015203524*      41.10198105440*Sin( 1.31307053626 +       41.10198105440*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00011238530*      71.60020482960*Sin( 4.54508332436 +       71.60020482960*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00013948178*     221.37585028530*Sin( 4.70475195371 +      221.37585028530*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00010819255*      77.96299230500*Sin( 0.12807059988 +       77.96299230500*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00013589092*      87.31177153950*Sin( 0.98313830596 +       87.31177153950*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00012407787*      72.33391801250*Sin( 4.64945783340 +       72.33391801250*t);
   uranus_y_0:=uranus_y_0 + -Power(t,exp)*     0.00011531140*      77.22927912210*Sin( 0.20190074645 +       77.22927912210*t);

   exp:=1;
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.02157902502*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.02157902502*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.00739195286*Cos( 4.43963987365 +      149.56319713460*t)-Power(t,exp)*     0.00739195286*     149.56319713460*Sin( 4.43963987365 +      149.56319713460*t);
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.00238535521*Cos( 3.76882481679 +       73.29712585900*t)-Power(t,exp)*     0.00238535521*      73.29712585900*Sin( 3.76882481679 +       73.29712585900*t);
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.00229380743*Cos( 0.91089104293 +       76.26607127560*t)-Power(t,exp)*     0.00229380743*      76.26607127560*Sin( 0.91089104293 +       76.26607127560*t);
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.00110133819*Cos( 4.00844673444 +       11.04570026390*t)-Power(t,exp)*     0.00110133819*      11.04570026390*Sin( 4.00844673444 +       11.04570026390*t);
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.00094974903*Cos( 5.07141531968 +       63.73589830340*t)-Power(t,exp)*     0.00094974903*      63.73589830340*Sin( 5.07141531968 +       63.73589830340*t);
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.00081470719*Cos( 5.92275377361 +       85.82729883120*t)-Power(t,exp)*     0.00081470719*      85.82729883120*Sin( 5.92275377361 +       85.82729883120*t);
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.00045455130*Cos( 0.73292269945 +      138.51749687070*t)-Power(t,exp)*     0.00045455130*     138.51749687070*Sin( 0.73292269945 +      138.51749687070*t);
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.00051366624*Cos( 0.61847245463 +      224.34479570190*t)-Power(t,exp)*     0.00051366624*     224.34479570190*Sin( 0.61847245463 +      224.34479570190*t);
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.00038294306*Cos( 5.01873585224 +       70.84944530420*t)-Power(t,exp)*     0.00038294306*      70.84944530420*Sin( 5.01873585224 +       70.84944530420*t);
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.00036144546*Cos( 5.94859451726 +       78.71375183040*t)-Power(t,exp)*     0.00036144546*      78.71375183040*Sin( 5.94859451726 +       78.71375183040*t);
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.00032419094*Cos( 4.32617246805 +       74.78159856730*t)-Power(t,exp)*     0.00032419094*      74.78159856730*Sin( 4.32617246805 +       74.78159856730*t);
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.00021672326*Cos( 3.36607324420 +      151.04766984290*t)-Power(t,exp)*     0.00021672326*     151.04766984290*Sin( 3.36607324420 +      151.04766984290*t);
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.00019424370*Cos( 6.01841918370 +       77.75054398390*t)-Power(t,exp)*     0.00019424370*      77.75054398390*Sin( 6.01841918370 +       77.75054398390*t);
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.00017392494*Cos( 4.96098883366 +       71.81265315070*t)-Power(t,exp)*     0.00017392494*      71.81265315070*Sin( 4.96098883366 +       71.81265315070*t);
   uranus_y_1:=uranus_y_1 + Power(t,exp-1)*exp*     0.00014991169*Cos( 3.97176856758 +        3.93215326310*t)-Power(t,exp)*     0.00014991169*       3.93215326310*Sin( 3.97176856758 +        3.93215326310*t);

   exp:=2;
   uranus_y_2:=uranus_y_2 + Power(t,exp-1)*exp*     0.00034868461*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00034868461*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   uranus_y_2:=uranus_y_2 + Power(t,exp-1)*exp*     0.00016588468*Cos( 2.29556740317 +       74.78159856730*t)-Power(t,exp)*     0.00016588468*      74.78159856730*Sin( 2.29556740317 +       74.78159856730*t);
   uranus_y_2:=uranus_y_2 + Power(t,exp-1)*exp*     0.00010905147*Cos( 1.45737963668 +      149.56319713460*t)-Power(t,exp)*     0.00010905147*     149.56319713460*Sin( 1.45737963668 +      149.56319713460*t);

   vsop87e_micro_velocities_uranus_y := uranus_y_0+uranus_y_1+uranus_y_2;
end;

function vsop87e_micro_velocities_uranus_z(t: Double): Double;
   var exp: Double=0.0;
   var uranus_z_0: Double=0.0;
   var uranus_z_1: Double=0.0;
   var uranus_z_2: Double=0.0;
begin

   exp:=0;
   uranus_z_0:=uranus_z_0 + -Power(t,exp)*     0.25876996652*      74.78159856730*Sin( 2.61861278845 +       74.78159856730*t);
   uranus_z_0:=uranus_z_0 + -Power(t,exp)*     0.01775471434*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   uranus_z_0:=uranus_z_0 + -Power(t,exp)*     0.00599290075*     149.56319713460*Sin( 5.08119534568 +      149.56319713460*t);
   uranus_z_0:=uranus_z_0 + -Power(t,exp)*     0.00190282274*      76.26607127560*Sin( 1.61654207891 +       76.26607127560*t);
   uranus_z_0:=uranus_z_0 + -Power(t,exp)*     0.00190873655*      73.29712585900*Sin( 0.57869366179 +       73.29712585900*t);
   uranus_z_0:=uranus_z_0 + -Power(t,exp)*     0.00084625392*       1.48447270830*Sin( 2.26025774942 +        1.48447270830*t);
   uranus_z_0:=uranus_z_0 + -Power(t,exp)*     0.00030733539*      63.73589830340*Sin( 0.23570745974 +       63.73589830340*t);
   uranus_z_0:=uranus_z_0 + -Power(t,exp)*     0.00020842052*     224.34479570190*Sin( 1.26054208091 +      224.34479570190*t);
   uranus_z_0:=uranus_z_0 + -Power(t,exp)*     0.00019733410*     148.07872442630*Sin( 6.04314596336 +      148.07872442630*t);
   uranus_z_0:=uranus_z_0 + -Power(t,exp)*     0.00012537530*      11.04570026390*Sin( 5.17169051466 +       11.04570026390*t);
   uranus_z_0:=uranus_z_0 + -Power(t,exp)*     0.00014582183*      71.81265315070*Sin( 6.14852624696 +       71.81265315070*t);

   exp:=1;
   uranus_z_1:=uranus_z_1 + Power(t,exp-1)*exp*     0.00655887992*Cos( 0.01271946942 +       74.78159856730*t)-Power(t,exp)*     0.00655887992*      74.78159856730*Sin( 0.01271946942 +       74.78159856730*t);
   uranus_z_1:=uranus_z_1 + Power(t,exp-1)*exp*     0.00049782349*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.00049782349*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   uranus_z_1:=uranus_z_1 + Power(t,exp-1)*exp*     0.00023873149*Cos( 2.73870549601 +      149.56319713460*t)-Power(t,exp)*     0.00023873149*     149.56319713460*Sin( 2.73870549601 +      149.56319713460*t);

   exp:=2;
   uranus_z_2:=uranus_z_2 + Power(t,exp-1)*exp*     0.00014697217*Cos( 1.75149164608 +       74.78159856730*t)-Power(t,exp)*     0.00014697217*      74.78159856730*Sin( 1.75149164608 +       74.78159856730*t);

   vsop87e_micro_velocities_uranus_z := uranus_z_0+uranus_z_1+uranus_z_2;
end;

function vsop87e_micro_velocities_venus_x(t: Double): Double;
   var exp: Double=0.0;
   var venus_x_0: Double=0.0;
   var venus_x_1: Double=0.0;
begin

   exp:=0;
   venus_x_0:=venus_x_0 + -Power(t,exp)*     0.72211104628*   10213.28554621100*Sin( 3.17575836361 +    10213.28554621100*t);
   venus_x_0:=venus_x_0 + -Power(t,exp)*     0.00515822267*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   venus_x_0:=venus_x_0 + -Power(t,exp)*     0.00494908458*     529.69096509460*Sin( 3.74108234732 +      529.69096509460*t);
   venus_x_0:=venus_x_0 + -Power(t,exp)*     0.00244499876*   20426.57109242200*Sin( 4.05566613867 +    20426.57109242200*t);
   venus_x_0:=venus_x_0 + -Power(t,exp)*     0.00271754748*     213.29909543800*Sin( 4.01601261142 +      213.29909543800*t);
   venus_x_0:=venus_x_0 + -Power(t,exp)*     0.00155435209*      38.13303563780*Sin( 2.17052052050 +       38.13303563780*t);
   venus_x_0:=venus_x_0 + -Power(t,exp)*     0.00083791771*      74.78159856730*Sin( 2.33967946884 +       74.78159856730*t);
   venus_x_0:=venus_x_0 + -Power(t,exp)*     0.00011914665*    1059.38193018920*Sin( 4.08456666781 +     1059.38193018920*t);

   exp:=1;
   venus_x_1:=venus_x_1 + Power(t,exp-1)*exp*     0.00035158710*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00035158710*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   venus_x_1:=venus_x_1 + Power(t,exp-1)*exp*     0.00017234950*Cos( 0.92721124604 +    20426.57109242200*t)-Power(t,exp)*     0.00017234950*   20426.57109242200*Sin( 0.92721124604 +    20426.57109242200*t);

   vsop87e_micro_velocities_venus_x := venus_x_0+venus_x_1;
end;

function vsop87e_micro_velocities_venus_y(t: Double): Double;
   var exp: Double=0.0;
   var venus_y_0: Double=0.0;
   var venus_y_1: Double=0.0;
begin

   exp:=0;
   venus_y_0:=venus_y_0 + -Power(t,exp)*     0.72324643689*   10213.28554621100*Sin( 1.60573808356 +    10213.28554621100*t);
   venus_y_0:=venus_y_0 + -Power(t,exp)*     0.00515636737*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   venus_y_0:=venus_y_0 + -Power(t,exp)*     0.00494765697*     529.69096509460*Sin( 2.17048019743 +      529.69096509460*t);
   venus_y_0:=venus_y_0 + -Power(t,exp)*     0.00244884190*   20426.57109242200*Sin( 2.48564953999 +    20426.57109242200*t);
   venus_y_0:=venus_y_0 + -Power(t,exp)*     0.00272138024*     213.29909543800*Sin( 2.44443638845 +      213.29909543800*t);
   venus_y_0:=venus_y_0 + -Power(t,exp)*     0.00155443844*      38.13303563780*Sin( 0.59927014146 +       38.13303563780*t);
   venus_y_0:=venus_y_0 + -Power(t,exp)*     0.00083754576*      74.78159856730*Sin( 0.76880143132 +       74.78159856730*t);
   venus_y_0:=venus_y_0 + -Power(t,exp)*     0.00011913202*    1059.38193018920*Sin( 2.51387064934 +     1059.38193018920*t);

   exp:=1;
   venus_y_1:=venus_y_1 + Power(t,exp-1)*exp*     0.00039237546*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.00039237546*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   venus_y_1:=venus_y_1 + Power(t,exp-1)*exp*     0.00017282284*Cos( 5.63824735900 +    20426.57109242200*t)-Power(t,exp)*     0.00017282284*   20426.57109242200*Sin( 5.63824735900 +    20426.57109242200*t);

   vsop87e_micro_velocities_venus_y := venus_y_0+venus_y_1;
end;

function vsop87e_micro_velocities_venus_z(t: Double): Double;
   var exp: Double=0.0;
   var venus_z_0: Double=0.0;
   var venus_z_1: Double=0.0;
begin

   exp:=0;
   venus_z_0:=venus_z_0 + -Power(t,exp)*     0.04282979819*   10213.28554621100*Sin( 0.26703856471 +    10213.28554621100*t);
   venus_z_0:=venus_z_0 + -Power(t,exp)*     0.00036740999*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   venus_z_0:=venus_z_0 + -Power(t,exp)*     0.00014501844*   20426.57109242200*Sin( 1.14696911390 +    20426.57109242200*t);
   venus_z_0:=venus_z_0 + -Power(t,exp)*     0.00011808377*     213.29909543800*Sin( 0.46064367724 +      213.29909543800*t);
   venus_z_0:=venus_z_0 + -Power(t,exp)*     0.00011238047*     529.69096509460*Sin( 0.41541669438 +      529.69096509460*t);

   exp:=1;
   venus_z_1:=venus_z_1 + Power(t,exp-1)*exp*     0.00208095894*Cos( 1.88967278742 +    10213.28554621100*t)-Power(t,exp)*     0.00208095894*   10213.28554621100*Sin( 1.88967278742 +    10213.28554621100*t);

   vsop87e_micro_velocities_venus_z := venus_z_0+venus_z_1;
end;

procedure vsop87e_micro_velocities_getEarth(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_velocities_earth_x(t) / 365250.0;
   temp[1]:=vsop87e_micro_velocities_earth_y(t) / 365250.0;
   temp[2]:=vsop87e_micro_velocities_earth_z(t) / 365250.0;
end;

procedure vsop87e_micro_velocities_getJupiter(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_velocities_jupiter_x(t) / 365250.0;
   temp[1]:=vsop87e_micro_velocities_jupiter_y(t) / 365250.0;
   temp[2]:=vsop87e_micro_velocities_jupiter_z(t) / 365250.0;
end;

procedure vsop87e_micro_velocities_getMars(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_velocities_mars_x(t) / 365250.0;
   temp[1]:=vsop87e_micro_velocities_mars_y(t) / 365250.0;
   temp[2]:=vsop87e_micro_velocities_mars_z(t) / 365250.0;
end;

procedure vsop87e_micro_velocities_getMercury(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_velocities_mercury_x(t) / 365250.0;
   temp[1]:=vsop87e_micro_velocities_mercury_y(t) / 365250.0;
   temp[2]:=vsop87e_micro_velocities_mercury_z(t) / 365250.0;
end;

procedure vsop87e_micro_velocities_getNeptune(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_velocities_neptune_x(t) / 365250.0;
   temp[1]:=vsop87e_micro_velocities_neptune_y(t) / 365250.0;
   temp[2]:=vsop87e_micro_velocities_neptune_z(t) / 365250.0;
end;

procedure vsop87e_micro_velocities_getSaturn(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_velocities_saturn_x(t) / 365250.0;
   temp[1]:=vsop87e_micro_velocities_saturn_y(t) / 365250.0;
   temp[2]:=vsop87e_micro_velocities_saturn_z(t) / 365250.0;
end;

procedure vsop87e_micro_velocities_getUranus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_velocities_uranus_x(t) / 365250.0;
   temp[1]:=vsop87e_micro_velocities_uranus_y(t) / 365250.0;
   temp[2]:=vsop87e_micro_velocities_uranus_z(t) / 365250.0;
end;

procedure vsop87e_micro_velocities_getVenus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_velocities_venus_x(t) / 365250.0;
   temp[1]:=vsop87e_micro_velocities_venus_y(t) / 365250.0;
   temp[2]:=vsop87e_micro_velocities_venus_z(t) / 365250.0;
end;

procedure vsop87e_micro_velocities_getSun(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_velocities_sun_x(t) / 365250.0;
   temp[1]:=vsop87e_micro_velocities_sun_y(t) / 365250.0;
   temp[2]:=vsop87e_micro_velocities_sun_z(t) / 365250.0;
end;
end.