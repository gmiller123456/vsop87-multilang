unit vsop87e_micro;

interface
uses Math;

procedure vsop87e_micro_getEarth(t: Double;var temp: array of Double);
procedure vsop87e_micro_getJupiter(t: Double;var temp: array of Double);
procedure vsop87e_micro_getMars(t: Double;var temp: array of Double);
procedure vsop87e_micro_getMercury(t: Double;var temp: array of Double);
procedure vsop87e_micro_getNeptune(t: Double;var temp: array of Double);
procedure vsop87e_micro_getSaturn(t: Double;var temp: array of Double);
procedure vsop87e_micro_getUranus(t: Double;var temp: array of Double);
procedure vsop87e_micro_getVenus(t: Double;var temp: array of Double);
procedure vsop87e_micro_getSun(t: Double;var temp: array of Double);

implementation


function vsop87e_micro_earth_x(t: Double): Double;
   var earth_x_0: Double=0.0;
   var earth_x_1: Double=0.0;
begin

   earth_x_0:=earth_x_0 +      0.99982624851 * Cos( 1.75348568475 +     6283.07584999140*t);
   earth_x_0:=earth_x_0 +      0.00835254761 * Cos( 1.71034539458 +    12566.15169998280*t);
   earth_x_0:=earth_x_0 +      0.00590518455 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_x_0:=earth_x_0 +      0.00493120585 * Cos( 3.74115834452 +      529.69096509460*t);
   earth_x_0:=earth_x_0 +      0.00271650686 * Cos( 4.01601440281 +      213.29909543800*t);
   earth_x_0:=earth_x_0 +      0.00155434220 * Cos( 2.17052065758 +       38.13303563780*t);
   earth_x_0:=earth_x_0 +      0.00083789104 * Cos( 2.33967726393 +       74.78159856730*t);
   earth_x_0:=earth_x_0 +      0.00011821467 * Cos( 4.04599151293 +     1059.38193018920*t);
   earth_x_0:=earth_x_0 +      0.00010466596 * Cos( 1.66722645223 +    18849.22754997420*t);

   earth_x_1:=earth_x_1 +      0.00122106982 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_x_1:=earth_x_1 +      0.00051500000 * Cos( 6.00266267204 +    12566.15169998280*t);
   earth_x_1:=earth_x_1 * t;

   vsop87e_micro_earth_x := earth_x_0+earth_x_1;
end;

function vsop87e_micro_earth_y(t: Double): Double;
   var earth_y_0: Double=0.0;
   var earth_y_1: Double=0.0;
begin

   earth_y_0:=earth_y_0 +      0.99988907017 * Cos( 0.18265890456 +     6283.07584999140*t);
   earth_y_0:=earth_y_0 +      0.02408829501 * Cos( 3.14159265359 +        0.00000000000*t);
   earth_y_0:=earth_y_0 +      0.00835289774 * Cos( 0.13952879005 +    12566.15169998280*t);
   earth_y_0:=earth_y_0 +      0.00492966037 * Cos( 2.17052458400 +      529.69096509460*t);
   earth_y_0:=earth_y_0 +      0.00272033033 * Cos( 2.44443635549 +      213.29909543800*t);
   earth_y_0:=earth_y_0 +      0.00155442849 * Cos( 0.59927021065 +       38.13303563780*t);
   earth_y_0:=earth_y_0 +      0.00083751910 * Cos( 0.76880010707 +       74.78159856730*t);
   earth_y_0:=earth_y_0 +      0.00011819755 * Cos( 2.47524448851 +     1059.38193018920*t);
   earth_y_0:=earth_y_0 +      0.00010466933 * Cos( 0.09641690558 +    18849.22754997420*t);

   earth_y_1:=earth_y_1 +      0.00093052441 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_y_1:=earth_y_1 +      0.00051506453 * Cos( 4.43180499286 +    12566.15169998280*t);
   earth_y_1:=earth_y_1 * t;

   vsop87e_micro_earth_y := earth_y_0+earth_y_1;
end;

function vsop87e_micro_earth_z(t: Double): Double;
   var earth_z_0: Double=0.0;
   var earth_z_1: Double=0.0;
begin

   earth_z_0:=earth_z_0 +      0.00011810174 * Cos( 0.46078312048 +      213.29909543800*t);
   earth_z_0:=earth_z_0 +      0.00011270511 * Cos( 0.41685732455 +      529.69096509460*t);

   earth_z_1:=earth_z_1 +      0.00227821750 * Cos( 3.41372504278 +     6283.07584999140*t);
   earth_z_1:=earth_z_1 * t;

   vsop87e_micro_earth_z := earth_z_0+earth_z_1;
end;

function vsop87e_micro_jupiter_x(t: Double): Double;
   var jupiter_x_0: Double=0.0;
   var jupiter_x_1: Double=0.0;
   var jupiter_x_2: Double=0.0;
   var jupiter_x_3: Double=0.0;
begin

   jupiter_x_0:=jupiter_x_0 +      5.19167797375 * Cos( 0.59945079482 +      529.69096509460*t);
   jupiter_x_0:=jupiter_x_0 +      0.36633268070 * Cos( 3.14159265359 +        0.00000000000*t);
   jupiter_x_0:=jupiter_x_0 +      0.12581924842 * Cos( 0.94911581432 +     1059.38193018920*t);
   jupiter_x_0:=jupiter_x_0 +      0.01499237862 * Cos( 0.73175554601 +      522.57741809380*t);
   jupiter_x_0:=jupiter_x_0 +      0.01474818211 * Cos( 3.61736901402 +      536.80451209540*t);
   jupiter_x_0:=jupiter_x_0 +      0.00457316096 * Cos( 1.29883699143 +     1589.07289528380*t);
   jupiter_x_0:=jupiter_x_0 +      0.00302068886 * Cos( 5.17370377723 +        7.11354700080*t);
   jupiter_x_0:=jupiter_x_0 +      0.00385749947 * Cos( 2.01222596811 +      103.09277421860*t);
   jupiter_x_0:=jupiter_x_0 +      0.00192562451 * Cos( 4.98733787115 +      426.59819087600*t);
   jupiter_x_0:=jupiter_x_0 +      0.00150783740 * Cos( 6.11831671330 +      110.20632121940*t);
   jupiter_x_0:=jupiter_x_0 +      0.00144750651 * Cos( 5.55980048541 +      632.78373931320*t);
   jupiter_x_0:=jupiter_x_0 +      0.00154896097 * Cos( 2.17051189575 +       38.13303563780*t);
   jupiter_x_0:=jupiter_x_0 +      0.00137575946 * Cos( 4.01399498370 +      213.29909543800*t);
   jupiter_x_0:=jupiter_x_0 +      0.00103396684 * Cos( 6.19327175097 +     1052.26838318840*t);
   jupiter_x_0:=jupiter_x_0 +      0.00114092461 * Cos( 0.01567031739 +     1162.47470440780*t);
   jupiter_x_0:=jupiter_x_0 +      0.00072025988 * Cos( 3.96117200382 +     1066.49547719000*t);
   jupiter_x_0:=jupiter_x_0 +      0.00082181886 * Cos( 2.33944503932 +       74.78159856730*t);
   jupiter_x_0:=jupiter_x_0 +      0.00059429203 * Cos( 4.45768709661 +      949.17560896980*t);
   jupiter_x_0:=jupiter_x_0 +      0.00068217918 * Cos( 3.44053291909 +      846.08283475120*t);
   jupiter_x_0:=jupiter_x_0 +      0.00047092829 * Cos( 1.43942906349 +      419.48464387520*t);
   jupiter_x_0:=jupiter_x_0 +      0.00029905661 * Cos( 2.93170826549 +      206.18554843720*t);
   jupiter_x_0:=jupiter_x_0 +      0.00026609536 * Cos( 4.85102664902 +      323.50541665740*t);
   jupiter_x_0:=jupiter_x_0 +      0.00019708639 * Cos( 1.64891620821 +     2118.76386037840*t);
   jupiter_x_0:=jupiter_x_0 +      0.00016318258 * Cos( 1.94286700529 +      316.39186965660*t);
   jupiter_x_0:=jupiter_x_0 +      0.00016086488 * Cos( 0.87974686945 +      515.46387109300*t);
   jupiter_x_0:=jupiter_x_0 +      0.00014193776 * Cos( 2.07763165706 +      742.99006053260*t);
   jupiter_x_0:=jupiter_x_0 +      0.00015178545 * Cos( 6.25878811430 +      735.87651353180*t);
   jupiter_x_0:=jupiter_x_0 +      0.00011412363 * Cos( 3.48145943220 +      543.91805909620*t);
   jupiter_x_0:=jupiter_x_0 +      0.00012143698 * Cos( 3.75229920148 +      525.75881183150*t);
   jupiter_x_0:=jupiter_x_0 +      0.00011984824 * Cos( 0.58568596255 +      533.62311835770*t);

   jupiter_x_1:=jupiter_x_1 +      0.00883685325 * Cos( 3.14159265359 +        0.00000000000*t);
   jupiter_x_1:=jupiter_x_1 +      0.00634691138 * Cos( 0.10662162351 +     1059.38193018920*t);
   jupiter_x_1:=jupiter_x_1 +      0.00599147916 * Cos( 2.42996832550 +      522.57741809380*t);
   jupiter_x_1:=jupiter_x_1 +      0.00588595541 * Cos( 1.91556289228 +      536.80451209540*t);
   jupiter_x_1:=jupiter_x_1 +      0.00081798277 * Cos( 3.46668967473 +        7.11354700080*t);
   jupiter_x_1:=jupiter_x_1 +      0.00046157824 * Cos( 0.45714213541 +     1589.07289528380*t);
   jupiter_x_1:=jupiter_x_1 +      0.00032477578 * Cos( 1.74648870966 +     1052.26838318840*t);
   jupiter_x_1:=jupiter_x_1 +      0.00033859106 * Cos( 4.10112469499 +      529.69096509460*t);
   jupiter_x_1:=jupiter_x_1 +      0.00031204139 * Cos( 2.34698443027 +     1066.49547719000*t);
   jupiter_x_1:=jupiter_x_1 +      0.00021258131 * Cos( 4.36563858679 +      110.20632121940*t);
   jupiter_x_1:=jupiter_x_1 +      0.00017292154 * Cos( 3.99214003946 +      426.59819087600*t);
   jupiter_x_1:=jupiter_x_1 +      0.00013566605 * Cos( 0.30040958696 +      632.78373931320*t);
   jupiter_x_1:=jupiter_x_1 +      0.00012877132 * Cos( 2.57490337554 +      515.46387109300*t);
   jupiter_x_1:=jupiter_x_1 * t;

   jupiter_x_2:=jupiter_x_2 +      0.00123746423 * Cos( 4.13563340107 +      522.57741809380*t);
   jupiter_x_2:=jupiter_x_2 +      0.00121405454 * Cos( 0.21155087534 +      536.80451209540*t);
   jupiter_x_2:=jupiter_x_2 +      0.00085400287 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_x_2:=jupiter_x_2 +      0.00077611336 * Cos( 5.29776152037 +      529.69096509460*t);
   jupiter_x_2:=jupiter_x_2 +      0.00041371381 * Cos( 5.12291606259 +     1059.38193018920*t);
   jupiter_x_2:=jupiter_x_2 +      0.00011437051 * Cos( 1.72922178247 +        7.11354700080*t);
   jupiter_x_2:=jupiter_x_2 * t * t;

   jupiter_x_3:=jupiter_x_3 +      0.00017055031 * Cos( 5.86133054086 +      522.57741809380*t);
   jupiter_x_3:=jupiter_x_3 +      0.00016697614 * Cos( 4.77458774773 +      536.80451209540*t);
   jupiter_x_3:=jupiter_x_3 * t * t * t;

   vsop87e_micro_jupiter_x := jupiter_x_0+jupiter_x_1+jupiter_x_2+jupiter_x_3;
end;

function vsop87e_micro_jupiter_y(t: Double): Double;
   var jupiter_y_0: Double=0.0;
   var jupiter_y_1: Double=0.0;
   var jupiter_y_2: Double=0.0;
   var jupiter_y_3: Double=0.0;
begin

   jupiter_y_0:=jupiter_y_0 +      5.19024510371 * Cos( 5.31203160043 +      529.69096509460*t);
   jupiter_y_0:=jupiter_y_0 +      0.12580850775 * Cos( 5.66160225641 +     1059.38193018920*t);
   jupiter_y_0:=jupiter_y_0 +      0.09329801081 * Cos( 3.14159265359 +        0.00000000000*t);
   jupiter_y_0:=jupiter_y_0 +      0.01506838468 * Cos( 5.43934599781 +      522.57741809380*t);
   jupiter_y_0:=jupiter_y_0 +      0.01474403395 * Cos( 2.04679547637 +      536.80451209540*t);
   jupiter_y_0:=jupiter_y_0 +      0.00457314174 * Cos( 6.01129093508 +     1589.07289528380*t);
   jupiter_y_0:=jupiter_y_0 +      0.00301069256 * Cos( 3.60943303554 +        7.11354700080*t);
   jupiter_y_0:=jupiter_y_0 +      0.00378016915 * Cos( 3.53013675622 +      103.09277421860*t);
   jupiter_y_0:=jupiter_y_0 +      0.00190850034 * Cos( 3.41807324121 +      426.59819087600*t);
   jupiter_y_0:=jupiter_y_0 +      0.00146192922 * Cos( 4.62080103783 +      110.20632121940*t);
   jupiter_y_0:=jupiter_y_0 +      0.00139367298 * Cos( 4.00075739657 +      632.78373931320*t);
   jupiter_y_0:=jupiter_y_0 +      0.00154904248 * Cos( 0.59924790507 +       38.13303563780*t);
   jupiter_y_0:=jupiter_y_0 +      0.00139655050 * Cos( 2.41039954154 +      213.29909543800*t);
   jupiter_y_0:=jupiter_y_0 +      0.00101901831 * Cos( 4.57592165280 +     1052.26838318840*t);
   jupiter_y_0:=jupiter_y_0 +      0.00113934096 * Cos( 4.72982346991 +     1162.47470440780*t);
   jupiter_y_0:=jupiter_y_0 +      0.00072021597 * Cos( 2.39048430255 +     1066.49547719000*t);
   jupiter_y_0:=jupiter_y_0 +      0.00082109296 * Cos( 0.76861586597 +       74.78159856730*t);
   jupiter_y_0:=jupiter_y_0 +      0.00058995131 * Cos( 2.89529666872 +      949.17560896980*t);
   jupiter_y_0:=jupiter_y_0 +      0.00068308433 * Cos( 1.86538762629 +      846.08283475120*t);
   jupiter_y_0:=jupiter_y_0 +      0.00030597479 * Cos( 4.58059597562 +      206.18554843720*t);
   jupiter_y_0:=jupiter_y_0 +      0.00027182574 * Cos( 3.86962082273 +      419.48464387520*t);
   jupiter_y_0:=jupiter_y_0 +      0.00026615785 * Cos( 3.28135958246 +      323.50541665740*t);
   jupiter_y_0:=jupiter_y_0 +      0.00020859553 * Cos( 3.79339751809 +      735.87651353180*t);
   jupiter_y_0:=jupiter_y_0 +      0.00019708579 * Cos( 0.07818533602 +     2118.76386037840*t);
   jupiter_y_0:=jupiter_y_0 +      0.00018475985 * Cos( 0.38014924174 +      316.39186965660*t);
   jupiter_y_0:=jupiter_y_0 +      0.00016340182 * Cos( 5.56996543941 +      515.46387109300*t);
   jupiter_y_0:=jupiter_y_0 +      0.00014591238 * Cos( 0.47749865610 +      742.99006053260*t);
   jupiter_y_0:=jupiter_y_0 +      0.00011409020 * Cos( 1.91089175916 +      543.91805909620*t);
   jupiter_y_0:=jupiter_y_0 +      0.00012141842 * Cos( 2.18151948736 +      525.75881183150*t);
   jupiter_y_0:=jupiter_y_0 +      0.00011977440 * Cos( 5.29687559056 +      533.62311835770*t);

   jupiter_y_1:=jupiter_y_1 +      0.01694792137 * Cos( 3.14159265359 +        0.00000000000*t);
   jupiter_y_1:=jupiter_y_1 +      0.00634254247 * Cos( 4.81903195356 +     1059.38193018920*t);
   jupiter_y_1:=jupiter_y_1 +      0.00600587150 * Cos( 0.85811137383 +      522.57741809380*t);
   jupiter_y_1:=jupiter_y_1 +      0.00588367200 * Cos( 0.34491553018 +      536.80451209540*t);
   jupiter_y_1:=jupiter_y_1 +      0.00081289939 * Cos( 1.90910271853 +        7.11354700080*t);
   jupiter_y_1:=jupiter_y_1 +      0.00046843519 * Cos( 1.91294033052 +      529.69096509460*t);
   jupiter_y_1:=jupiter_y_1 +      0.00046150068 * Cos( 5.16955995419 +     1589.07289528380*t);
   jupiter_y_1:=jupiter_y_1 +      0.00032472443 * Cos( 0.17640771395 +     1052.26838318840*t);
   jupiter_y_1:=jupiter_y_1 +      0.00031201535 * Cos( 0.77624038457 +     1066.49547719000*t);
   jupiter_y_1:=jupiter_y_1 +      0.00019475766 * Cos( 3.00913152396 +      110.20632121940*t);
   jupiter_y_1:=jupiter_y_1 +      0.00016865586 * Cos( 2.45297644533 +      426.59819087600*t);
   jupiter_y_1:=jupiter_y_1 +      0.00013690691 * Cos( 5.02101628562 +      632.78373931320*t);
   jupiter_y_1:=jupiter_y_1 +      0.00013022204 * Cos( 0.98978959368 +      515.46387109300*t);
   jupiter_y_1:=jupiter_y_1 * t;

   jupiter_y_2:=jupiter_y_2 +      0.00123914193 * Cos( 2.56495551373 +      522.57741809380*t);
   jupiter_y_2:=jupiter_y_2 +      0.00121340211 * Cos( 4.92398747363 +      536.80451209540*t);
   jupiter_y_2:=jupiter_y_2 +      0.00076450198 * Cos( 3.75913373191 +      529.69096509460*t);
   jupiter_y_2:=jupiter_y_2 +      0.00076998857 * Cos( 3.14159265359 +        0.00000000000*t);
   jupiter_y_2:=jupiter_y_2 +      0.00041318153 * Cos( 3.55228415274 +     1059.38193018920*t);
   jupiter_y_2:=jupiter_y_2 +      0.00011292133 * Cos( 0.18554488524 +        7.11354700080*t);
   jupiter_y_2:=jupiter_y_2 * t * t;

   jupiter_y_3:=jupiter_y_3 +      0.00017069216 * Cos( 4.29096907367 +      522.57741809380*t);
   jupiter_y_3:=jupiter_y_3 +      0.00016685430 * Cos( 3.20365723177 +      536.80451209540*t);
   jupiter_y_3:=jupiter_y_3 * t * t * t;

   vsop87e_micro_jupiter_y := jupiter_y_0+jupiter_y_1+jupiter_y_2+jupiter_y_3;
end;

function vsop87e_micro_jupiter_z(t: Double): Double;
   var jupiter_z_0: Double=0.0;
   var jupiter_z_1: Double=0.0;
   var jupiter_z_2: Double=0.0;
begin

   jupiter_z_0:=jupiter_z_0 +      0.11811822789 * Cos( 3.55844641987 +      529.69096509460*t);
   jupiter_z_0:=jupiter_z_0 +      0.00857879296 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_z_0:=jupiter_z_0 +      0.00286288759 * Cos( 3.90812239092 +     1059.38193018920*t);
   jupiter_z_0:=jupiter_z_0 +      0.00042347799 * Cos( 3.60144639424 +      522.57741809380*t);
   jupiter_z_0:=jupiter_z_0 +      0.00033263796 * Cos( 0.30296971930 +      536.80451209540*t);
   jupiter_z_0:=jupiter_z_0 +      0.00010406225 * Cos( 4.25764578777 +     1589.07289528380*t);

   jupiter_z_1:=jupiter_z_1 +      0.00406683941 * Cos( 1.52699356726 +      529.69096509460*t);
   jupiter_z_1:=jupiter_z_1 +      0.00020287968 * Cos( 2.59878263946 +     1059.38193018920*t);
   jupiter_z_1:=jupiter_z_1 +      0.00014411207 * Cos( 4.85400100506 +      536.80451209540*t);
   jupiter_z_1:=jupiter_z_1 +      0.00015608009 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_z_1:=jupiter_z_1 +      0.00012718197 * Cos( 5.45536889012 +      522.57741809380*t);
   jupiter_z_1:=jupiter_z_1 * t;

   jupiter_z_2:=jupiter_z_2 +      0.00028608011 * Cos( 3.01374191263 +      529.69096509460*t);
   jupiter_z_2:=jupiter_z_2 * t * t;

   vsop87e_micro_jupiter_z := jupiter_z_0+jupiter_z_1+jupiter_z_2;
end;

function vsop87e_micro_mars_x(t: Double): Double;
   var mars_x_0: Double=0.0;
   var mars_x_1: Double=0.0;
   var mars_x_2: Double=0.0;
begin

   mars_x_0:=mars_x_0 +      1.51769887405 * Cos( 6.20403346548 +     3340.61242669980*t);
   mars_x_0:=mars_x_0 +      0.19473570996 * Cos( 3.14159265359 +        0.00000000000*t);
   mars_x_0:=mars_x_0 +      0.07070917372 * Cos( 0.25870338552 +     6681.22485339960*t);
   mars_x_0:=mars_x_0 +      0.00494196754 * Cos( 0.59669127752 +    10021.83728009940*t);
   mars_x_0:=mars_x_0 +      0.00482151285 * Cos( 3.74021439144 +      529.69096509460*t);
   mars_x_0:=mars_x_0 +      0.00271094292 * Cos( 4.01586959956 +      213.29909543800*t);
   mars_x_0:=mars_x_0 +      0.00155429009 * Cos( 2.17051900894 +       38.13303563780*t);
   mars_x_0:=mars_x_0 +      0.00083777640 * Cos( 2.33969868905 +       74.78159856730*t);
   mars_x_0:=mars_x_0 +      0.00040938237 * Cos( 0.93473307419 +    13362.44970679920*t);
   mars_x_0:=mars_x_0 +      0.00021067199 * Cos( 1.80435656154 +     3337.08930835080*t);
   mars_x_0:=mars_x_0 +      0.00021041626 * Cos( 1.17895619474 +     3344.13554504880*t);
   mars_x_0:=mars_x_0 +      0.00021794152 * Cos( 4.45100162839 +     1059.38193018920*t);

   mars_x_1:=mars_x_1 +      0.00862737448 * Cos( 3.14159265359 +        0.00000000000*t);
   mars_x_1:=mars_x_1 +      0.00552437771 * Cos( 5.09565872891 +     6681.22485339960*t);
   mars_x_1:=mars_x_1 +      0.00077184951 * Cos( 5.43315636209 +    10021.83728009940*t);
   mars_x_1:=mars_x_1 +      0.00020467294 * Cos( 5.57051812369 +     3340.61242669980*t);
   mars_x_1:=mars_x_1 * t;

   mars_x_2:=mars_x_2 +      0.00056368724 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_x_2:=mars_x_2 +      0.00022122521 * Cos( 3.54372113272 +     6681.22485339960*t);
   mars_x_2:=mars_x_2 * t * t;

   vsop87e_micro_mars_x := mars_x_0+mars_x_1+mars_x_2;
end;

function vsop87e_micro_mars_y(t: Double): Double;
   var mars_y_0: Double=0.0;
   var mars_y_1: Double=0.0;
   var mars_y_2: Double=0.0;
begin

   mars_y_0:=mars_y_0 +      1.51558927367 * Cos( 4.63212206588 +     3340.61242669980*t);
   mars_y_0:=mars_y_0 +      0.07064547959 * Cos( 4.97051892898 +     6681.22485339960*t);
   mars_y_0:=mars_y_0 +      0.08689350637 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_y_0:=mars_y_0 +      0.00493872689 * Cos( 5.30877806678 +    10021.83728009940*t);
   mars_y_0:=mars_y_0 +      0.00482218424 * Cos( 2.16962356915 +      529.69096509460*t);
   mars_y_0:=mars_y_0 +      0.00271492455 * Cos( 2.44409624683 +      213.29909543800*t);
   mars_y_0:=mars_y_0 +      0.00155437832 * Cos( 0.59926749768 +       38.13303563780*t);
   mars_y_0:=mars_y_0 +      0.00083738369 * Cos( 0.76880567376 +       74.78159856730*t);
   mars_y_0:=mars_y_0 +      0.00040917422 * Cos( 5.64698263703 +    13362.44970679920*t);
   mars_y_0:=mars_y_0 +      0.00021036784 * Cos( 0.23240270955 +     3337.08930835080*t);
   mars_y_0:=mars_y_0 +      0.00021012921 * Cos( 5.89022773653 +     3344.13554504880*t);
   mars_y_0:=mars_y_0 +      0.00021795361 * Cos( 2.88000673227 +     1059.38193018920*t);

   mars_y_1:=mars_y_1 +      0.01427318093 * Cos( 3.14159265359 +        0.00000000000*t);
   mars_y_1:=mars_y_1 +      0.00551063576 * Cos( 3.52128320402 +     6681.22485339960*t);
   mars_y_1:=mars_y_1 +      0.00077091888 * Cos( 3.86082685753 +    10021.83728009940*t);
   mars_y_1:=mars_y_1 +      0.00037310479 * Cos( 1.16016958445 +     3340.61242669980*t);
   mars_y_1:=mars_y_1 * t;

   mars_y_2:=mars_y_2 +      0.00035452579 * Cos( 3.14159265359 +        0.00000000000*t);
   mars_y_2:=mars_y_2 +      0.00021950751 * Cos( 1.96291594946 +     6681.22485339960*t);
   mars_y_2:=mars_y_2 * t * t;

   vsop87e_micro_mars_y := mars_y_0+mars_y_1+mars_y_2;
end;

function vsop87e_micro_mars_z(t: Double): Double;
   var mars_z_0: Double=0.0;
   var mars_z_1: Double=0.0;
   var mars_z_2: Double=0.0;
begin

   mars_z_0:=mars_z_0 +      0.04901205639 * Cos( 3.76712324293 +     3340.61242669980*t);
   mars_z_0:=mars_z_0 +      0.00659516885 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_z_0:=mars_z_0 +      0.00228333831 * Cos( 4.10544022266 +     6681.22485339960*t);
   mars_z_0:=mars_z_0 +      0.00015958402 * Cos( 4.44367058261 +    10021.83728009940*t);
   mars_z_0:=mars_z_0 +      0.00011803129 * Cos( 0.45922638235 +      213.29909543800*t);
   mars_z_0:=mars_z_0 +      0.00011012894 * Cos( 0.39307428990 +      529.69096509460*t);

   mars_z_1:=mars_z_1 +      0.00331842851 * Cos( 6.05027773492 +     3340.61242669980*t);
   mars_z_1:=mars_z_1 +      0.00047797013 * Cos( 3.14159265359 +        0.00000000000*t);
   mars_z_1:=mars_z_1 * t;

   mars_z_2:=mars_z_2 +      0.00013705355 * Cos( 1.04212852598 +     3340.61242669980*t);
   mars_z_2:=mars_z_2 * t * t;

   vsop87e_micro_mars_z := mars_z_0+mars_z_1+mars_z_2;
end;

function vsop87e_micro_mercury_x(t: Double): Double;
   var mercury_x_0: Double=0.0;
   var mercury_x_1: Double=0.0;
begin

   mercury_x_0:=mercury_x_0 +      0.37546285495 * Cos( 4.39651506942 +    26087.90314157420*t);
   mercury_x_0:=mercury_x_0 +      0.03825746037 * Cos( 1.16485604343 +    52175.80628314840*t);
   mercury_x_0:=mercury_x_0 +      0.02596241714 * Cos( 3.14159265359 +        0.00000000000*t);
   mercury_x_0:=mercury_x_0 +      0.00584261236 * Cos( 4.21599394757 +    78263.70942472259*t);
   mercury_x_0:=mercury_x_0 +      0.00495586029 * Cos( 3.74115422358 +      529.69096509460*t);
   mercury_x_0:=mercury_x_0 +      0.00271797490 * Cos( 4.01600769847 +      213.29909543800*t);
   mercury_x_0:=mercury_x_0 +      0.00155435621 * Cos( 2.17052060921 +       38.13303563780*t);
   mercury_x_0:=mercury_x_0 +      0.00105716677 * Cos( 0.98379033182 +   104351.61256629678*t);
   mercury_x_0:=mercury_x_0 +      0.00083792888 * Cos( 2.33967639910 +       74.78159856730*t);
   mercury_x_0:=mercury_x_0 +      0.00021011726 * Cos( 4.03469353923 +   130439.51570787099*t);
   mercury_x_0:=mercury_x_0 +      0.00012216168 * Cos( 4.05786119279 +     1059.38193018920*t);

   mercury_x_1:=mercury_x_1 +      0.00317551960 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_x_1:=mercury_x_1 +      0.00105289001 * Cos( 5.91600475006 +    52175.80628314840*t);
   mercury_x_1:=mercury_x_1 +      0.00032315996 * Cos( 2.68247273347 +    78263.70942472259*t);
   mercury_x_1:=mercury_x_1 +      0.00011992887 * Cos( 5.81575112963 +    26087.90314157420*t);
   mercury_x_1:=mercury_x_1 * t;

   vsop87e_micro_mercury_x := mercury_x_0+mercury_x_1;
end;

function vsop87e_micro_mercury_y(t: Double): Double;
   var mercury_y_0: Double=0.0;
   var mercury_y_1: Double=0.0;
begin

   mercury_y_0:=mercury_y_0 +      0.37953636588 * Cos( 2.83780617821 +    26087.90314157420*t);
   mercury_y_0:=mercury_y_0 +      0.11592262295 * Cos( 3.14159265359 +        0.00000000000*t);
   mercury_y_0:=mercury_y_0 +      0.03854667576 * Cos( 5.88780608961 +    52175.80628314840*t);
   mercury_y_0:=mercury_y_0 +      0.00587711171 * Cos( 2.65498896201 +    78263.70942472259*t);
   mercury_y_0:=mercury_y_0 +      0.00495452148 * Cos( 2.17050902176 +      529.69096509460*t);
   mercury_y_0:=mercury_y_0 +      0.00272177927 * Cos( 2.44442843667 +      213.29909543800*t);
   mercury_y_0:=mercury_y_0 +      0.00155444251 * Cos( 0.59927014783 +       38.13303563780*t);
   mercury_y_0:=mercury_y_0 +      0.00106235475 * Cos( 5.70550616735 +   104351.61256629678*t);
   mercury_y_0:=mercury_y_0 +      0.00083755636 * Cos( 0.76879995697 +       74.78159856730*t);
   mercury_y_0:=mercury_y_0 +      0.00021100825 * Cos( 2.47291315849 +   130439.51570787099*t);
   mercury_y_0:=mercury_y_0 +      0.00012216279 * Cos( 2.48707059837 +     1059.38193018920*t);

   mercury_y_1:=mercury_y_1 +      0.00107803834 * Cos( 4.34964793883 +    52175.80628314840*t);
   mercury_y_1:=mercury_y_1 +      0.00080645427 * Cos( 3.14159265359 +        0.00000000000*t);
   mercury_y_1:=mercury_y_1 +      0.00032715349 * Cos( 1.11763734425 +    78263.70942472259*t);
   mercury_y_1:=mercury_y_1 +      0.00011914707 * Cos( 1.22139986340 +    26087.90314157420*t);
   mercury_y_1:=mercury_y_1 * t;

   vsop87e_micro_mercury_y := mercury_y_0+mercury_y_1;
end;

function vsop87e_micro_mercury_z(t: Double): Double;
   var mercury_z_0: Double=0.0;
   var mercury_z_1: Double=0.0;
begin

   mercury_z_0:=mercury_z_0 +      0.04607664562 * Cos( 1.99295081967 +    26087.90314157420*t);
   mercury_z_0:=mercury_z_0 +      0.00709887021 * Cos( 3.14159265359 +        0.00000000000*t);
   mercury_z_0:=mercury_z_0 +      0.00469171540 * Cos( 5.04215742764 +    52175.80628314840*t);
   mercury_z_0:=mercury_z_0 +      0.00071626383 * Cos( 1.80894256071 +    78263.70942472259*t);
   mercury_z_0:=mercury_z_0 +      0.00011810801 * Cos( 0.46073218799 +      213.29909543800*t);
   mercury_z_0:=mercury_z_0 +      0.00012957444 * Cos( 4.85922032010 +   104351.61256629678*t);
   mercury_z_0:=mercury_z_0 +      0.00011268745 * Cos( 0.41669991860 +      529.69096509460*t);

   mercury_z_1:=mercury_z_1 +      0.00108722159 * Cos( 3.91134750825 +    26087.90314157420*t);
   mercury_z_1:=mercury_z_1 +      0.00057693223 * Cos( 3.14159265359 +        0.00000000000*t);
   mercury_z_1:=mercury_z_1 * t;

   vsop87e_micro_mercury_z := mercury_z_0+mercury_z_1;
end;

function vsop87e_micro_neptune_x(t: Double): Double;
   var neptune_x_0: Double=0.0;
   var neptune_x_1: Double=0.0;
begin

   neptune_x_0:=neptune_x_0 +     30.05734568801 * Cos( 5.31211340030 +       38.13303563780*t);
   neptune_x_0:=neptune_x_0 +      0.27050789973 * Cos( 3.14159265359 +        0.00000000000*t);
   neptune_x_0:=neptune_x_0 +      0.13504578270 * Cos( 3.50075407055 +       76.26607127560*t);
   neptune_x_0:=neptune_x_0 +      0.15725280871 * Cos( 0.11319072402 +       36.64856292950*t);
   neptune_x_0:=neptune_x_0 +      0.14934353052 * Cos( 1.08499398649 +       39.61750834610*t);
   neptune_x_0:=neptune_x_0 +      0.02597449604 * Cos( 1.99590330725 +        1.48447270830*t);
   neptune_x_0:=neptune_x_0 +      0.00990668211 * Cos( 5.37690139386 +       74.78159856730*t);
   neptune_x_0:=neptune_x_0 +      0.00823755467 * Cos( 1.43221512492 +       35.16409022120*t);
   neptune_x_0:=neptune_x_0 +      0.00817566529 * Cos( 0.78180136001 +        2.96894541660*t);
   neptune_x_0:=neptune_x_0 +      0.00565506338 * Cos( 5.98964911841 +       41.10198105440*t);
   neptune_x_0:=neptune_x_0 +      0.00308146172 * Cos( 0.39998862713 +       73.29712585900*t);
   neptune_x_0:=neptune_x_0 +      0.00135901755 * Cos( 5.54688721933 +       77.75054398390*t);
   neptune_x_0:=neptune_x_0 +      0.00090960996 * Cos( 1.68910476933 +      114.39910691340*t);
   neptune_x_0:=neptune_x_0 +      0.00069038680 * Cos( 5.83469111908 +        4.45341812490*t);
   neptune_x_0:=neptune_x_0 +      0.00060811221 * Cos( 2.62589871314 +       33.67961751290*t);
   neptune_x_0:=neptune_x_0 +      0.00054713428 * Cos( 1.55804647862 +       71.81265315070*t);
   neptune_x_0:=neptune_x_0 +      0.00028887848 * Cos( 4.78966833702 +       42.58645376270*t);
   neptune_x_0:=neptune_x_0 +      0.00012614574 * Cos( 3.57008196751 +      112.91463420510*t);
   neptune_x_0:=neptune_x_0 +      0.00012743164 * Cos( 2.73728741519 +      111.43016149680*t);

   neptune_x_1:=neptune_x_1 +      0.00255827017 * Cos( 2.01935687782 +       36.64856292950*t);
   neptune_x_1:=neptune_x_1 +      0.00243112812 * Cos( 5.46214905602 +       39.61750834610*t);
   neptune_x_1:=neptune_x_1 +      0.00118382753 * Cos( 2.88255085978 +       76.26607127560*t);
   neptune_x_1:=neptune_x_1 +      0.00039261522 * Cos( 3.14159265359 +        0.00000000000*t);
   neptune_x_1:=neptune_x_1 +      0.00021923572 * Cos( 3.20156162709 +       35.16409022120*t);
   neptune_x_1:=neptune_x_1 +      0.00017458926 * Cos( 4.26349403115 +       41.10198105440*t);
   neptune_x_1:=neptune_x_1 +      0.00013130617 * Cos( 5.36424961848 +        2.96894541660*t);
   neptune_x_1:=neptune_x_1 * t;

   vsop87e_micro_neptune_x := neptune_x_0+neptune_x_1;
end;

function vsop87e_micro_neptune_y(t: Double): Double;
   var neptune_y_0: Double=0.0;
   var neptune_y_1: Double=0.0;
begin

   neptune_y_0:=neptune_y_0 +     30.05900907352 * Cos( 3.74086294715 +       38.13303563780*t);
   neptune_y_0:=neptune_y_0 +      0.30171988148 * Cos( 3.14159265359 +        0.00000000000*t);
   neptune_y_0:=neptune_y_0 +      0.13505308635 * Cos( 1.92949466968 +       76.26607127560*t);
   neptune_y_0:=neptune_y_0 +      0.15705776296 * Cos( 4.82539969469 +       36.64856292950*t);
   neptune_y_0:=neptune_y_0 +      0.14935398681 * Cos( 5.79694896309 +       39.61750834610*t);
   neptune_y_0:=neptune_y_0 +      0.02584389323 * Cos( 0.42549727257 +        1.48447270830*t);
   neptune_y_0:=neptune_y_0 +      0.00990408083 * Cos( 3.80555424385 +       74.78159856730*t);
   neptune_y_0:=neptune_y_0 +      0.00815165481 * Cos( 5.49429738442 +        2.96894541660*t);
   neptune_y_0:=neptune_y_0 +      0.00582164520 * Cos( 6.19633859980 +       35.16409022120*t);
   neptune_y_0:=neptune_y_0 +      0.00565547830 * Cos( 4.41843013268 +       41.10198105440*t);
   neptune_y_0:=neptune_y_0 +      0.00305149662 * Cos( 5.11023952334 +       73.29712585900*t);
   neptune_y_0:=neptune_y_0 +      0.00135911904 * Cos( 3.97565894083 +       77.75054398390*t);
   neptune_y_0:=neptune_y_0 +      0.00090966163 * Cos( 0.11783850542 +      114.39910691340*t);
   neptune_y_0:=neptune_y_0 +      0.00068788416 * Cos( 4.26391987401 +        4.45341812490*t);
   neptune_y_0:=neptune_y_0 +      0.00028891942 * Cos( 3.21848982783 +       42.58645376270*t);
   neptune_y_0:=neptune_y_0 +      0.00020079747 * Cos( 1.19788749777 +       33.67961751290*t);
   neptune_y_0:=neptune_y_0 +      0.00012613423 * Cos( 1.99783010734 +      112.91463420510*t);
   neptune_y_0:=neptune_y_0 +      0.00012822727 * Cos( 1.16749515319 +      111.43016149680*t);

   neptune_y_1:=neptune_y_1 +      0.00352941377 * Cos( 3.14159265359 +        0.00000000000*t);
   neptune_y_1:=neptune_y_1 +      0.00256112241 * Cos( 0.44757496381 +       36.64856292950*t);
   neptune_y_1:=neptune_y_1 +      0.00243135236 * Cos( 3.89099801420 +       39.61750834610*t);
   neptune_y_1:=neptune_y_1 +      0.00118411800 * Cos( 1.31131262408 +       76.26607127560*t);
   neptune_y_1:=neptune_y_1 +      0.00021935569 * Cos( 1.63124087146 +       35.16409022120*t);
   neptune_y_1:=neptune_y_1 +      0.00017461450 * Cos( 2.69229907252 +       41.10198105440*t);
   neptune_y_1:=neptune_y_1 +      0.00012992380 * Cos( 3.79578633002 +        2.96894541660*t);
   neptune_y_1:=neptune_y_1 * t;

   vsop87e_micro_neptune_y := neptune_y_0+neptune_y_1;
end;

function vsop87e_micro_neptune_z(t: Double): Double;
   var neptune_z_0: Double=0.0;
   var neptune_z_1: Double=0.0;
begin

   neptune_z_0:=neptune_z_0 +      0.92861252357 * Cos( 1.44103930199 +       38.13303563780*t);
   neptune_z_0:=neptune_z_0 +      0.01244825806 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_z_0:=neptune_z_0 +      0.00474309033 * Cos( 2.52218768352 +       36.64856292950*t);
   neptune_z_0:=neptune_z_0 +      0.00451964646 * Cos( 3.50949727943 +       39.61750834610*t);
   neptune_z_0:=neptune_z_0 +      0.00417539868 * Cos( 5.91308871390 +       76.26607127560*t);
   neptune_z_0:=neptune_z_0 +      0.00084101913 * Cos( 4.38932612685 +        1.48447270830*t);
   neptune_z_0:=neptune_z_0 +      0.00032204313 * Cos( 1.48923465055 +       74.78159856730*t);
   neptune_z_0:=neptune_z_0 +      0.00030871862 * Cos( 3.29017492215 +       35.16409022120*t);
   neptune_z_0:=neptune_z_0 +      0.00025811465 * Cos( 3.19303929710 +        2.96894541660*t);
   neptune_z_0:=neptune_z_0 +      0.00016864457 * Cos( 2.13251137546 +       41.10198105440*t);

   neptune_z_1:=neptune_z_1 +      0.00154877961 * Cos( 2.14239038882 +       38.13303563780*t);
   neptune_z_1:=neptune_z_1 * t;

   vsop87e_micro_neptune_z := neptune_z_0+neptune_z_1;
end;

function vsop87e_micro_saturn_x(t: Double): Double;
   var saturn_x_0: Double=0.0;
   var saturn_x_1: Double=0.0;
   var saturn_x_2: Double=0.0;
   var saturn_x_3: Double=0.0;
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
   saturn_x_0:=saturn_x_0 +      0.00716112591 * Cos( 2.71151505735 +      316.39186965660*t);
   saturn_x_0:=saturn_x_0 +      0.00509529043 * Cos( 4.95879639669 +      103.09277421860*t);
   saturn_x_0:=saturn_x_0 +      0.00372789068 * Cos( 0.00137750888 +      433.71173787680*t);
   saturn_x_0:=saturn_x_0 +      0.00149659945 * Cos( 2.17071100189 +       38.13303563780*t);
   saturn_x_0:=saturn_x_0 +      0.00097835080 * Cos( 1.01502366873 +      323.50541665740*t);
   saturn_x_0:=saturn_x_0 +      0.00083256484 * Cos( 3.06289145446 +      529.69096509460*t);
   saturn_x_0:=saturn_x_0 +      0.00080605800 * Cos( 5.62066478674 +       11.04570026390*t);
   saturn_x_0:=saturn_x_0 +      0.00083758534 * Cos( 0.62038891091 +      227.52618943960*t);
   saturn_x_0:=saturn_x_0 +      0.00074267111 * Cos( 2.38212789877 +      632.78373931320*t);
   saturn_x_0:=saturn_x_0 +      0.00070199356 * Cos( 0.88789759781 +      209.36694217490*t);
   saturn_x_0:=saturn_x_0 +      0.00068836111 * Cos( 4.01788121810 +      217.23124870110*t);
   saturn_x_0:=saturn_x_0 +      0.00065601455 * Cos( 2.69726244676 +      202.25339517410*t);
   saturn_x_0:=saturn_x_0 +      0.00058306839 * Cos( 2.16048044319 +      224.34479570190*t);
   saturn_x_0:=saturn_x_0 +      0.00054006503 * Cos( 4.90926255487 +      853.19638175200*t);
   saturn_x_0:=saturn_x_0 +      0.00058995712 * Cos( 2.33042838103 +       74.78159856730*t);
   saturn_x_0:=saturn_x_0 +      0.00045542953 * Cos( 1.88235196400 +       14.22709400160*t);
   saturn_x_0:=saturn_x_0 +      0.00038334470 * Cos( 4.39817733456 +      199.07200143640*t);
   saturn_x_0:=saturn_x_0 +      0.00044537354 * Cos( 5.60825622208 +       63.73589830340*t);
   saturn_x_0:=saturn_x_0 +      0.00025158000 * Cos( 0.37800583496 +      216.48048917570*t);
   saturn_x_0:=saturn_x_0 +      0.00024547484 * Cos( 4.53150636994 +      210.11770170030*t);
   saturn_x_0:=saturn_x_0 +      0.00024669930 * Cos( 5.60389432714 +      415.55249061210*t);
   saturn_x_0:=saturn_x_0 +      0.00025485006 * Cos( 1.63932503888 +      117.31986822020*t);
   saturn_x_0:=saturn_x_0 +      0.00024058786 * Cos( 5.85571939691 +      522.57741809380*t);
   saturn_x_0:=saturn_x_0 +      0.00031244965 * Cos( 4.62930311280 +      735.87651353180*t);
   saturn_x_0:=saturn_x_0 +      0.00023365871 * Cos( 5.53492454782 +      647.01083331480*t);
   saturn_x_0:=saturn_x_0 +      0.00023237024 * Cos( 0.10474288122 +      149.56319713460*t);
   saturn_x_0:=saturn_x_0 +      0.00014727416 * Cos( 4.67982458404 +      277.03499374140*t);
   saturn_x_0:=saturn_x_0 +      0.00012389760 * Cos( 4.19747910039 +      490.33408917940*t);
   saturn_x_0:=saturn_x_0 +      0.00012023054 * Cos( 5.66372239094 +      351.81659230870*t);

   saturn_x_1:=saturn_x_1 +      0.07573807889 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_x_1:=saturn_x_1 +      0.03084144308 * Cos( 4.27565898829 +      426.59819087600*t);
   saturn_x_1:=saturn_x_1 +      0.02714141496 * Cos( 5.85229546861 +      206.18554843720*t);
   saturn_x_1:=saturn_x_1 +      0.02642347272 * Cos( 5.33291950842 +      220.41264243880*t);
   saturn_x_1:=saturn_x_1 +      0.00627003445 * Cos( 0.32898258729 +        7.11354700080*t);
   saturn_x_1:=saturn_x_1 +      0.00256488381 * Cos( 3.52479443238 +      639.89728631400*t);
   saturn_x_1:=saturn_x_1 +      0.00312269012 * Cos( 4.83002443322 +      419.48464387520*t);
   saturn_x_1:=saturn_x_1 +      0.00189142591 * Cos( 4.48642939502 +      433.71173787680*t);
   saturn_x_1:=saturn_x_1 +      0.00203589147 * Cos( 1.10998720016 +      213.29909543800*t);
   saturn_x_1:=saturn_x_1 +      0.00119517217 * Cos( 1.14736396934 +      110.20632121940*t);
   saturn_x_1:=saturn_x_1 +      0.00066742869 * Cos( 3.72347003212 +      316.39186965660*t);
   saturn_x_1:=saturn_x_1 +      0.00066882235 * Cos( 5.20257498551 +      227.52618943960*t);
   saturn_x_1:=saturn_x_1 +      0.00030991837 * Cos( 6.06069383491 +      199.07200143640*t);
   saturn_x_1:=saturn_x_1 +      0.00030413111 * Cos( 0.18746990038 +       14.22709400160*t);
   saturn_x_1:=saturn_x_1 +      0.00022268129 * Cos( 6.19542444435 +      103.09277421860*t);
   saturn_x_1:=saturn_x_1 +      0.00018933918 * Cos( 2.77615609434 +      853.19638175200*t);
   saturn_x_1:=saturn_x_1 +      0.00018087850 * Cos( 5.09162753222 +      209.36694217490*t);
   saturn_x_1:=saturn_x_1 +      0.00017772775 * Cos( 6.10381591303 +      217.23124870110*t);
   saturn_x_1:=saturn_x_1 +      0.00016291548 * Cos( 4.86945682592 +      216.48048917570*t);
   saturn_x_1:=saturn_x_1 +      0.00017120603 * Cos( 4.59542499292 +      632.78373931320*t);
   saturn_x_1:=saturn_x_1 +      0.00015889950 * Cos( 0.03653526810 +      210.11770170030*t);
   saturn_x_1:=saturn_x_1 +      0.00016193213 * Cos( 5.60825312945 +      323.50541665740*t);
   saturn_x_1:=saturn_x_1 +      0.00014461916 * Cos( 3.67449803828 +      647.01083331480*t);
   saturn_x_1:=saturn_x_1 +      0.00011058978 * Cos( 0.03175095579 +      117.31986822020*t);
   saturn_x_1:=saturn_x_1 * t;

   saturn_x_2:=saturn_x_2 +      0.00560586041 * Cos( 1.26401676555 +      206.18554843720*t);
   saturn_x_2:=saturn_x_2 +      0.00545678885 * Cos( 3.62343709789 +      220.41264243880*t);
   saturn_x_2:=saturn_x_2 +      0.00443297401 * Cos( 3.14159265359 +        0.00000000000*t);
   saturn_x_2:=saturn_x_2 +      0.00336013651 * Cos( 2.42547432210 +      213.29909543800*t);
   saturn_x_2:=saturn_x_2 +      0.00224237163 * Cos( 2.49151267683 +      426.59819087600*t);
   saturn_x_2:=saturn_x_2 +      0.00087156936 * Cos( 4.89048703815 +        7.11354700080*t);
   saturn_x_2:=saturn_x_2 +      0.00050013864 * Cos( 2.70119455991 +      433.71173787680*t);
   saturn_x_2:=saturn_x_2 +      0.00045109880 * Cos( 0.36735560493 +      419.48464387520*t);
   saturn_x_2:=saturn_x_2 +      0.00032838505 * Cos( 1.59210694211 +      639.89728631400*t);
   saturn_x_2:=saturn_x_2 +      0.00027145848 * Cos( 3.49804001342 +      227.52618943960*t);
   saturn_x_2:=saturn_x_2 +      0.00012672501 * Cos( 1.45466696358 +      199.07200143640*t);
   saturn_x_2:=saturn_x_2 +      0.00010329051 * Cos( 4.76949570032 +       14.22709400160*t);
   saturn_x_2:=saturn_x_2 * t * t;

   saturn_x_3:=saturn_x_3 +      0.00077093916 * Cos( 2.97714400003 +      206.18554843720*t);
   saturn_x_3:=saturn_x_3 +      0.00075318954 * Cos( 1.89208004954 +      220.41264243880*t);
   saturn_x_3:=saturn_x_3 +      0.00018448888 * Cos( 3.14159265359 +        0.00000000000*t);
   saturn_x_3:=saturn_x_3 +      0.00010524182 * Cos( 0.66368351849 +      426.59819087600*t);
   saturn_x_3:=saturn_x_3 * t * t * t;

   vsop87e_micro_saturn_x := saturn_x_0+saturn_x_1+saturn_x_2+saturn_x_3;
end;

function vsop87e_micro_saturn_y(t: Double): Double;
   var saturn_y_0: Double=0.0;
   var saturn_y_1: Double=0.0;
   var saturn_y_2: Double=0.0;
   var saturn_y_3: Double=0.0;
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
   saturn_y_0:=saturn_y_0 +      0.00700636234 * Cos( 1.13613024684 +      316.39186965660*t);
   saturn_y_0:=saturn_y_0 +      0.00373221824 * Cos( 4.71309283502 +      433.71173787680*t);
   saturn_y_0:=saturn_y_0 +      0.00335413797 * Cos( 0.66392970394 +      103.09277421860*t);
   saturn_y_0:=saturn_y_0 +      0.00149675444 * Cos( 0.59938943096 +       38.13303563780*t);
   saturn_y_0:=saturn_y_0 +      0.00097829309 * Cos( 5.72860910220 +      323.50541665740*t);
   saturn_y_0:=saturn_y_0 +      0.00080377512 * Cos( 1.51715226439 +      529.69096509460*t);
   saturn_y_0:=saturn_y_0 +      0.00080576954 * Cos( 4.05258308529 +       11.04570026390*t);
   saturn_y_0:=saturn_y_0 +      0.00083875875 * Cos( 5.33204068233 +      227.52618943960*t);
   saturn_y_0:=saturn_y_0 +      0.00070138439 * Cos( 5.59777958177 +      209.36694217490*t);
   saturn_y_0:=saturn_y_0 +      0.00065919181 * Cos( 1.25972156533 +      202.25339517410*t);
   saturn_y_0:=saturn_y_0 +      0.00071069917 * Cos( 0.88882645933 +      632.78373931320*t);
   saturn_y_0:=saturn_y_0 +      0.00068966168 * Cos( 2.44460285922 +      217.23124870110*t);
   saturn_y_0:=saturn_y_0 +      0.00058391222 * Cos( 0.58871774298 +      224.34479570190*t);
   saturn_y_0:=saturn_y_0 +      0.00054033488 * Cos( 3.33755971377 +      853.19638175200*t);
   saturn_y_0:=saturn_y_0 +      0.00058932599 * Cos( 0.76188426024 +       74.78159856730*t);
   saturn_y_0:=saturn_y_0 +      0.00045783362 * Cos( 0.30331816441 +       14.22709400160*t);
   saturn_y_0:=saturn_y_0 +      0.00041964833 * Cos( 2.62589505876 +      199.07200143640*t);
   saturn_y_0:=saturn_y_0 +      0.00044692371 * Cos( 0.90600229248 +       63.73589830340*t);
   saturn_y_0:=saturn_y_0 +      0.00025192380 * Cos( 5.08963506546 +      216.48048917570*t);
   saturn_y_0:=saturn_y_0 +      0.00024633800 * Cos( 2.95445207628 +      210.11770170030*t);
   saturn_y_0:=saturn_y_0 +      0.00024828004 * Cos( 4.02630021779 +      415.55249061210*t);
   saturn_y_0:=saturn_y_0 +      0.00025539506 * Cos( 0.06636302741 +      117.31986822020*t);
   saturn_y_0:=saturn_y_0 +      0.00029671710 * Cos( 6.09960421165 +      735.87651353180*t);
   saturn_y_0:=saturn_y_0 +      0.00023390138 * Cos( 3.96337860167 +      647.01083331480*t);
   saturn_y_0:=saturn_y_0 +      0.00020506212 * Cos( 1.05154502619 +      522.57741809380*t);
   saturn_y_0:=saturn_y_0 +      0.00020269405 * Cos( 2.34321183269 +      309.27832265580*t);
   saturn_y_0:=saturn_y_0 +      0.00023261688 * Cos( 4.81745174067 +      149.56319713460*t);
   saturn_y_0:=saturn_y_0 +      0.00015379504 * Cos( 3.10227913670 +      277.03499374140*t);
   saturn_y_0:=saturn_y_0 +      0.00012419205 * Cos( 2.62558143020 +      490.33408917940*t);
   saturn_y_0:=saturn_y_0 +      0.00012044624 * Cos( 4.09265940857 +      351.81659230870*t);

   saturn_y_1:=saturn_y_1 +      0.05373895252 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_y_1:=saturn_y_1 +      0.03089676414 * Cos( 2.70347020059 +      426.59819087600*t);
   saturn_y_1:=saturn_y_1 +      0.02740812928 * Cos( 4.26667506460 +      206.18554843720*t);
   saturn_y_1:=saturn_y_1 +      0.02646734779 * Cos( 3.76132299914 +      220.41264243880*t);
   saturn_y_1:=saturn_y_1 +      0.00631417689 * Cos( 5.03245728319 +        7.11354700080*t);
   saturn_y_1:=saturn_y_1 +      0.00256727017 * Cos( 1.95352327208 +      639.89728631400*t);
   saturn_y_1:=saturn_y_1 +      0.00312184641 * Cos( 3.25850939353 +      419.48464387520*t);
   saturn_y_1:=saturn_y_1 +      0.00189379568 * Cos( 2.91502328680 +      433.71173787680*t);
   saturn_y_1:=saturn_y_1 +      0.00164086267 * Cos( 5.29239224879 +      213.29909543800*t);
   saturn_y_1:=saturn_y_1 +      0.00116775818 * Cos( 5.89150757121 +      110.20632121940*t);
   saturn_y_1:=saturn_y_1 +      0.00067189505 * Cos( 2.17042977500 +      316.39186965660*t);
   saturn_y_1:=saturn_y_1 +      0.00066984273 * Cos( 3.63101074215 +      227.52618943960*t);
   saturn_y_1:=saturn_y_1 +      0.00032993193 * Cos( 4.35526131741 +      199.07200143640*t);
   saturn_y_1:=saturn_y_1 +      0.00030623941 * Cos( 4.88862019450 +       14.22709400160*t);
   saturn_y_1:=saturn_y_1 +      0.00022227517 * Cos( 4.62224969869 +      103.09277421860*t);
   saturn_y_1:=saturn_y_1 +      0.00018939541 * Cos( 1.20409782475 +      853.19638175200*t);
   saturn_y_1:=saturn_y_1 +      0.00018074789 * Cos( 3.51566121826 +      209.36694217490*t);
   saturn_y_1:=saturn_y_1 +      0.00017786462 * Cos( 4.53214139341 +      217.23124870110*t);
   saturn_y_1:=saturn_y_1 +      0.00016316041 * Cos( 3.29784030574 +      216.48048917570*t);
   saturn_y_1:=saturn_y_1 +      0.00015939705 * Cos( 4.74503240139 +      210.11770170030*t);
   saturn_y_1:=saturn_y_1 +      0.00016718004 * Cos( 3.00200323762 +      632.78373931320*t);
   saturn_y_1:=saturn_y_1 +      0.00016150533 * Cos( 4.04213724873 +      323.50541665740*t);
   saturn_y_1:=saturn_y_1 +      0.00014477333 * Cos( 2.10298721499 +      647.01083331480*t);
   saturn_y_1:=saturn_y_1 +      0.00011081470 * Cos( 4.74085903299 +      117.31986822020*t);
   saturn_y_1:=saturn_y_1 * t;

   saturn_y_2:=saturn_y_2 +      0.00563545688 * Cos( 5.97115835983 +      206.18554843720*t);
   saturn_y_2:=saturn_y_2 +      0.00546856143 * Cos( 2.05154974712 +      220.41264243880*t);
   saturn_y_2:=saturn_y_2 +      0.00458462799 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_y_2:=saturn_y_2 +      0.00362190876 * Cos( 0.89540102818 +      213.29909543800*t);
   saturn_y_2:=saturn_y_2 +      0.00225456249 * Cos( 0.91699830789 +      426.59819087600*t);
   saturn_y_2:=saturn_y_2 +      0.00088376134 * Cos( 3.30289743790 +        7.11354700080*t);
   saturn_y_2:=saturn_y_2 +      0.00050087062 * Cos( 1.12976577868 +      433.71173787680*t);
   saturn_y_2:=saturn_y_2 +      0.00045503682 * Cos( 5.07669915666 +      419.48464387520*t);
   saturn_y_2:=saturn_y_2 +      0.00032887404 * Cos( 0.02089587128 +      639.89728631400*t);
   saturn_y_2:=saturn_y_2 +      0.00027192023 * Cos( 1.92638417379 +      227.52618943960*t);
   saturn_y_2:=saturn_y_2 +      0.00013247777 * Cos( 6.07692233033 +      199.07200143640*t);
   saturn_y_2:=saturn_y_2 +      0.00010424268 * Cos( 3.18247070949 +       14.22709400160*t);
   saturn_y_2:=saturn_y_2 * t * t;

   saturn_y_3:=saturn_y_3 +      0.00077354527 * Cos( 1.40391035241 +      206.18554843720*t);
   saturn_y_3:=saturn_y_3 +      0.00075542804 * Cos( 0.31962897945 +      220.41264243880*t);
   saturn_y_3:=saturn_y_3 +      0.00022841198 * Cos( 3.14159265359 +        0.00000000000*t);
   saturn_y_3:=saturn_y_3 +      0.00010669170 * Cos( 5.36495612200 +      426.59819087600*t);
   saturn_y_3:=saturn_y_3 * t * t * t;

   vsop87e_micro_saturn_y := saturn_y_0+saturn_y_1+saturn_y_2+saturn_y_3;
end;

function vsop87e_micro_saturn_z(t: Double): Double;
   var saturn_z_0: Double=0.0;
   var saturn_z_1: Double=0.0;
   var saturn_z_2: Double=0.0;
begin

   saturn_z_0:=saturn_z_0 +      0.41345140292 * Cos( 3.60234141893 +      213.29909543800*t);
   saturn_z_0:=saturn_z_0 +      0.01147953788 * Cos( 2.85128771957 +      426.59819087600*t);
   saturn_z_0:=saturn_z_0 +      0.01213097211 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_z_0:=saturn_z_0 +      0.00329186544 * Cos( 0.57121482436 +      206.18554843720*t);
   saturn_z_0:=saturn_z_0 +      0.00286852189 * Cos( 3.48073528206 +      220.41264243880*t);
   saturn_z_0:=saturn_z_0 +      0.00099054808 * Cos( 4.73370561217 +        7.11354700080*t);
   saturn_z_0:=saturn_z_0 +      0.00057347600 * Cos( 4.92616271331 +      110.20632121940*t);
   saturn_z_0:=saturn_z_0 +      0.00047724545 * Cos( 2.10039838370 +      639.89728631400*t);
   saturn_z_0:=saturn_z_0 +      0.00043448305 * Cos( 5.84904880596 +      419.48464387520*t);
   saturn_z_0:=saturn_z_0 +      0.00034555171 * Cos( 5.42614764541 +      316.39186965660*t);
   saturn_z_0:=saturn_z_0 +      0.00016180782 * Cos( 2.72987541776 +      433.71173787680*t);

   saturn_z_1:=saturn_z_1 +      0.01905958940 * Cos( 4.94544746619 +      213.29909543800*t);
   saturn_z_1:=saturn_z_1 +      0.00528167867 * Cos( 3.14159265359 +        0.00000000000*t);
   saturn_z_1:=saturn_z_1 +      0.00130224990 * Cos( 2.26141028606 +      206.18554843720*t);
   saturn_z_1:=saturn_z_1 +      0.00101437388 * Cos( 1.79095832223 +      220.41264243880*t);
   saturn_z_1:=saturn_z_1 +      0.00085922590 * Cos( 0.51612794233 +      426.59819087600*t);
   saturn_z_1:=saturn_z_1 +      0.00022253070 * Cos( 3.07685453172 +        7.11354700080*t);
   saturn_z_1:=saturn_z_1 +      0.00016174973 * Cos( 1.19988846625 +      419.48464387520*t);
   saturn_z_1:=saturn_z_1 * t;

   saturn_z_2:=saturn_z_2 +      0.00131237677 * Cos( 0.08868998014 +      213.29909543800*t);
   saturn_z_2:=saturn_z_2 +      0.00030139033 * Cos( 3.91396211806 +      206.18554843720*t);
   saturn_z_2:=saturn_z_2 +      0.00019316662 * Cos( 0.09228751610 +      220.41264243880*t);
   saturn_z_2:=saturn_z_2 * t * t;

   vsop87e_micro_saturn_z := saturn_z_0+saturn_z_1+saturn_z_2;
end;

function vsop87e_micro_sun_x(t: Double): Double;
   var sun_x_0: Double=0.0;
begin

   sun_x_0:=sun_x_0 +      0.00495672739 * Cos( 3.74107356792 +      529.69096509460*t);
   sun_x_0:=sun_x_0 +      0.00271802376 * Cos( 4.01601149775 +      213.29909543800*t);
   sun_x_0:=sun_x_0 +      0.00155435675 * Cos( 2.17052050061 +       38.13303563780*t);
   sun_x_0:=sun_x_0 +      0.00083792997 * Cos( 2.33967985523 +       74.78159856730*t);
   sun_x_0:=sun_x_0 +      0.00029374249 * Cos( 0.00000000000 +        0.00000000000*t);
   sun_x_0:=sun_x_0 +      0.00012013079 * Cos( 4.09073224903 +     1059.38193018920*t);

   vsop87e_micro_sun_x := sun_x_0;
end;

function vsop87e_micro_sun_y(t: Double): Double;
   var sun_y_0: Double=0.0;
begin

   sun_y_0:=sun_y_0 +      0.00495536218 * Cos( 2.17046712634 +      529.69096509460*t);
   sun_y_0:=sun_y_0 +      0.00272185821 * Cos( 2.44443364925 +      213.29909543800*t);
   sun_y_0:=sun_y_0 +      0.00155444313 * Cos( 0.59927010840 +       38.13303563780*t);
   sun_y_0:=sun_y_0 +      0.00083755792 * Cos( 0.76880164710 +       74.78159856730*t);
   sun_y_0:=sun_y_0 +      0.00033869535 * Cos( 0.00000000000 +        0.00000000000*t);
   sun_y_0:=sun_y_0 +      0.00012011827 * Cos( 2.52003147880 +     1059.38193018920*t);

   vsop87e_micro_sun_y := sun_y_0;
end;

function vsop87e_micro_sun_z(t: Double): Double;
   var sun_z_0: Double=0.0;
begin

   sun_z_0:=sun_z_0 +      0.00011810648 * Cos( 0.46078690233 +      213.29909543800*t);
   sun_z_0:=sun_z_0 +      0.00011277700 * Cos( 0.41689943638 +      529.69096509460*t);

   vsop87e_micro_sun_z := sun_z_0;
end;

function vsop87e_micro_uranus_x(t: Double): Double;
   var uranus_x_0: Double=0.0;
   var uranus_x_1: Double=0.0;
   var uranus_x_2: Double=0.0;
begin

   uranus_x_0:=uranus_x_0 +     19.17286937362 * Cos( 5.48133416758 +       74.78159856730*t);
   uranus_x_0:=uranus_x_0 +      1.32301898121 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_x_0:=uranus_x_0 +      0.44400556159 * Cos( 1.65967535182 +      149.56319713460*t);
   uranus_x_0:=uranus_x_0 +      0.14667584671 * Cos( 3.42395875589 +       73.29712585900*t);
   uranus_x_0:=uranus_x_0 +      0.14129215712 * Cos( 4.39576776954 +       76.26607127560*t);
   uranus_x_0:=uranus_x_0 +      0.06200970387 * Cos( 5.14043568284 +        1.48447270830*t);
   uranus_x_0:=uranus_x_0 +      0.01542890129 * Cos( 4.12122840701 +      224.34479570190*t);
   uranus_x_0:=uranus_x_0 +      0.01444153470 * Cos( 2.65117108186 +      148.07872442630*t);
   uranus_x_0:=uranus_x_0 +      0.00944969862 * Cos( 1.65871112189 +       11.04570026390*t);
   uranus_x_0:=uranus_x_0 +      0.00657496073 * Cos( 0.57595186181 +      151.04766984290*t);
   uranus_x_0:=uranus_x_0 +      0.00621603101 * Cos( 3.05881560775 +       77.75054398390*t);
   uranus_x_0:=uranus_x_0 +      0.00585159800 * Cos( 4.79934731599 +       71.81265315070*t);
   uranus_x_0:=uranus_x_0 +      0.00633971831 * Cos( 4.09554584740 +       63.73589830340*t);
   uranus_x_0:=uranus_x_0 +      0.00547675794 * Cos( 3.63127816021 +       85.82729883120*t);
   uranus_x_0:=uranus_x_0 +      0.00458242260 * Cos( 3.90788427382 +        2.96894541660*t);
   uranus_x_0:=uranus_x_0 +      0.00383608186 * Cos( 6.18762167352 +      138.51749687070*t);
   uranus_x_0:=uranus_x_0 +      0.00145499145 * Cos( 2.31759819136 +       70.84944530420*t);
   uranus_x_0:=uranus_x_0 +      0.00135334157 * Cos( 5.51062460646 +       78.71375183040*t);
   uranus_x_0:=uranus_x_0 +      0.00120354886 * Cos( 4.10218670070 +       39.61750834610*t);
   uranus_x_0:=uranus_x_0 +      0.00125099578 * Cos( 2.51455157066 +      111.43016149680*t);
   uranus_x_0:=uranus_x_0 +      0.00111255099 * Cos( 5.12253353573 +      222.86032299360*t);
   uranus_x_0:=uranus_x_0 +      0.00104615229 * Cos( 3.90538915195 +      146.59425171800*t);
   uranus_x_0:=uranus_x_0 +      0.00110162872 * Cos( 4.45478121996 +       35.16409022120*t);
   uranus_x_0:=uranus_x_0 +      0.00063581767 * Cos( 0.29966264689 +      299.12639426920*t);
   uranus_x_0:=uranus_x_0 +      0.00053904041 * Cos( 3.92590422507 +        3.93215326310*t);
   uranus_x_0:=uranus_x_0 +      0.00065063923 * Cos( 3.73008432701 +      109.94568878850*t);
   uranus_x_0:=uranus_x_0 +      0.00059935440 * Cos( 5.30012287089 +       38.13303563780*t);
   uranus_x_0:=uranus_x_0 +      0.00039183521 * Cos( 2.68841323459 +        4.45341812490*t);
   uranus_x_0:=uranus_x_0 +      0.00034340286 * Cos( 3.03782445102 +      225.82926841020*t);
   uranus_x_0:=uranus_x_0 +      0.00033133106 * Cos( 2.54202102521 +       65.22037101170*t);
   uranus_x_0:=uranus_x_0 +      0.00034554296 * Cos( 1.84698778371 +       79.23501669220*t);
   uranus_x_0:=uranus_x_0 +      0.00033865960 * Cos( 5.98418361600 +       70.32818044240*t);
   uranus_x_0:=uranus_x_0 +      0.00028371102 * Cos( 2.58026061716 +      127.47179660680*t);
   uranus_x_0:=uranus_x_0 +      0.00035938423 * Cos( 4.08805817528 +      202.25339517410*t);
   uranus_x_0:=uranus_x_0 +      0.00025208291 * Cos( 5.30270440656 +        9.56122755560*t);
   uranus_x_0:=uranus_x_0 +      0.00023466780 * Cos( 4.09729826283 +      145.63104387150*t);
   uranus_x_0:=uranus_x_0 +      0.00022962960 * Cos( 5.51475242270 +       84.34282612290*t);
   uranus_x_0:=uranus_x_0 +      0.00031822530 * Cos( 5.53948530245 +      152.53214255120*t);
   uranus_x_0:=uranus_x_0 +      0.00025767220 * Cos( 2.64279937947 +      213.29909543800*t);
   uranus_x_0:=uranus_x_0 +      0.00028383708 * Cos( 6.01785438397 +      184.72728735580*t);
   uranus_x_0:=uranus_x_0 +      0.00026656250 * Cos( 6.11027934265 +      160.60889739850*t);
   uranus_x_0:=uranus_x_0 +      0.00019675903 * Cos( 5.53431398332 +       74.66972398270*t);
   uranus_x_0:=uranus_x_0 +      0.00019653015 * Cos( 2.28660913421 +       74.89347315190*t);
   uranus_x_0:=uranus_x_0 +      0.00019953738 * Cos( 0.57452653801 +       12.53017297220*t);
   uranus_x_0:=uranus_x_0 +      0.00018565067 * Cos( 0.62225019017 +       52.69019803950*t);
   uranus_x_0:=uranus_x_0 +      0.00020084107 * Cos( 4.47297514058 +       22.09140052780*t);
   uranus_x_0:=uranus_x_0 +      0.00019925827 * Cos( 1.39875506889 +      112.91463420510*t);
   uranus_x_0:=uranus_x_0 +      0.00018577959 * Cos( 5.70218580551 +       33.67961751290*t);
   uranus_x_0:=uranus_x_0 +      0.00016587870 * Cos( 4.86920309163 +      108.46121608020*t);
   uranus_x_0:=uranus_x_0 +      0.00015199755 * Cos( 2.88408510221 +       41.10198105440*t);
   uranus_x_0:=uranus_x_0 +      0.00011245310 * Cos( 6.11597014635 +       71.60020482960*t);
   uranus_x_0:=uranus_x_0 +      0.00013947849 * Cos( 6.27545944070 +      221.37585028530*t);
   uranus_x_0:=uranus_x_0 +      0.00010797879 * Cos( 1.70031895074 +       77.96299230500*t);
   uranus_x_0:=uranus_x_0 +      0.00013593381 * Cos( 2.55407931798 +       87.31177153950*t);
   uranus_x_0:=uranus_x_0 +      0.00012884351 * Cos( 5.08737999470 +      145.10977900970*t);
   uranus_x_0:=uranus_x_0 +      0.00012394786 * Cos( 6.21892878850 +       72.33391801250*t);
   uranus_x_0:=uranus_x_0 +      0.00011538642 * Cos( 1.77241794539 +       77.22927912210*t);
   uranus_x_0:=uranus_x_0 +      0.00011442510 * Cos( 0.20030247485 +       36.64856292950*t);

   uranus_x_1:=uranus_x_1 +      0.00739697937 * Cos( 6.01067921255 +      149.56319713460*t);
   uranus_x_1:=uranus_x_1 +      0.00528174379 * Cos( 3.14159265359 +        0.00000000000*t);
   uranus_x_1:=uranus_x_1 +      0.00239830578 * Cos( 5.33657752107 +       73.29712585900*t);
   uranus_x_1:=uranus_x_1 +      0.00229661096 * Cos( 2.48203377424 +       76.26607127560*t);
   uranus_x_1:=uranus_x_1 +      0.00111041831 * Cos( 5.57157483973 +       11.04570026390*t);
   uranus_x_1:=uranus_x_1 +      0.00096348588 * Cos( 0.35070396367 +       63.73589830340*t);
   uranus_x_1:=uranus_x_1 +      0.00081508425 * Cos( 1.21058628422 +       85.82729883120*t);
   uranus_x_1:=uranus_x_1 +      0.00045685509 * Cos( 2.29216605538 +      138.51749687070*t);
   uranus_x_1:=uranus_x_1 +      0.00051382144 * Cos( 2.18938250169 +      224.34479570190*t);
   uranus_x_1:=uranus_x_1 +      0.00038842663 * Cos( 0.30724636172 +       70.84944530420*t);
   uranus_x_1:=uranus_x_1 +      0.00036156923 * Cos( 1.23634800002 +       78.71375183040*t);
   uranus_x_1:=uranus_x_1 +      0.00032331648 * Cos( 5.06666434496 +       74.78159856730*t);
   uranus_x_1:=uranus_x_1 +      0.00021684713 * Cos( 4.93711029212 +      151.04766984290*t);
   uranus_x_1:=uranus_x_1 +      0.00019441253 * Cos( 1.30617221059 +       77.75054398390*t);
   uranus_x_1:=uranus_x_1 +      0.00017375530 * Cos( 0.24607209329 +       71.81265315070*t);
   uranus_x_1:=uranus_x_1 +      0.00015211071 * Cos( 5.53141633140 +        3.93215326310*t);
   uranus_x_1:=uranus_x_1 * t;

   uranus_x_2:=uranus_x_2 +      0.00016015031 * Cos( 3.83700030134 +       74.78159856730*t);
   uranus_x_2:=uranus_x_2 +      0.00010915299 * Cos( 3.02987776270 +      149.56319713460*t);
   uranus_x_2:=uranus_x_2 * t * t;

   vsop87e_micro_uranus_x := uranus_x_0+uranus_x_1+uranus_x_2;
end;

function vsop87e_micro_uranus_y(t: Double): Double;
   var uranus_y_0: Double=0.0;
   var uranus_y_1: Double=0.0;
   var uranus_y_2: Double=0.0;
begin

   uranus_y_0:=uranus_y_0 +     19.16434475791 * Cos( 3.91045677275 +       74.78159856730*t);
   uranus_y_0:=uranus_y_0 +      0.44388525091 * Cos( 0.08884126943 +      149.56319713460*t);
   uranus_y_0:=uranus_y_0 +      0.16222255941 * Cos( 3.14159265359 +        0.00000000000*t);
   uranus_y_0:=uranus_y_0 +      0.14755311401 * Cos( 1.85423292905 +       73.29712585900*t);
   uranus_y_0:=uranus_y_0 +      0.14122904825 * Cos( 2.82489928705 +       76.26607127560*t);
   uranus_y_0:=uranus_y_0 +      0.06249939655 * Cos( 3.56960238469 +        1.48447270830*t);
   uranus_y_0:=uranus_y_0 +      0.01542607086 * Cos( 2.55041543170 +      224.34479570190*t);
   uranus_y_0:=uranus_y_0 +      0.01442293466 * Cos( 1.08004535633 +      148.07872442630*t);
   uranus_y_0:=uranus_y_0 +      0.00938950136 * Cos( 0.09277492739 +       11.04570026390*t);
   uranus_y_0:=uranus_y_0 +      0.00650307020 * Cos( 2.76144565363 +       63.73589830340*t);
   uranus_y_0:=uranus_y_0 +      0.00657314387 * Cos( 5.28830720039 +      151.04766984290*t);
   uranus_y_0:=uranus_y_0 +      0.00621305207 * Cos( 1.48795124826 +       77.75054398390*t);
   uranus_y_0:=uranus_y_0 +      0.00541938502 * Cos( 3.24476518729 +       71.81265315070*t);
   uranus_y_0:=uranus_y_0 +      0.00547449443 * Cos( 2.06038015757 +       85.82729883120*t);
   uranus_y_0:=uranus_y_0 +      0.00459611215 * Cos( 2.33745675699 +        2.96894541660*t);
   uranus_y_0:=uranus_y_0 +      0.00387905368 * Cos( 4.62027047251 +      138.51749687070*t);
   uranus_y_0:=uranus_y_0 +      0.00144026146 * Cos( 0.75015758735 +       70.84944530420*t);
   uranus_y_0:=uranus_y_0 +      0.00135284941 * Cos( 3.93970261854 +       78.71375183040*t);
   uranus_y_0:=uranus_y_0 +      0.00120431731 * Cos( 2.53138588744 +       39.61750834610*t);
   uranus_y_0:=uranus_y_0 +      0.00124862444 * Cos( 0.94315799565 +      111.43016149680*t);
   uranus_y_0:=uranus_y_0 +      0.00111199717 * Cos( 3.55163790142 +      222.86032299360*t);
   uranus_y_0:=uranus_y_0 +      0.00104503352 * Cos( 2.33345670641 +      146.59425171800*t);
   uranus_y_0:=uranus_y_0 +      0.00108550063 * Cos( 6.02230047678 +       35.16409022120*t);
   uranus_y_0:=uranus_y_0 +      0.00063570927 * Cos( 5.01204999475 +      299.12639426920*t);
   uranus_y_0:=uranus_y_0 +      0.00053287586 * Cos( 2.38436439892 +        3.93215326310*t);
   uranus_y_0:=uranus_y_0 +      0.00063771339 * Cos( 2.15607569061 +      109.94568878850*t);
   uranus_y_0:=uranus_y_0 +      0.00060797570 * Cos( 3.73070787340 +       38.13303563780*t);
   uranus_y_0:=uranus_y_0 +      0.00039220442 * Cos( 1.11841144768 +        4.45341812490*t);
   uranus_y_0:=uranus_y_0 +      0.00034204008 * Cos( 0.92405447828 +       65.22037101170*t);
   uranus_y_0:=uranus_y_0 +      0.00034332981 * Cos( 1.46696953800 +      225.82926841020*t);
   uranus_y_0:=uranus_y_0 +      0.00034536961 * Cos( 0.27613229331 +       79.23501669220*t);
   uranus_y_0:=uranus_y_0 +      0.00039259031 * Cos( 5.75909949077 +      202.25339517410*t);
   uranus_y_0:=uranus_y_0 +      0.00026157159 * Cos( 3.74095916304 +        9.56122755560*t);
   uranus_y_0:=uranus_y_0 +      0.00023426309 * Cos( 2.52740094518 +      145.63104387150*t);
   uranus_y_0:=uranus_y_0 +      0.00022932162 * Cos( 3.94455708202 +       84.34282612290*t);
   uranus_y_0:=uranus_y_0 +      0.00031814882 * Cos( 3.96860117340 +      152.53214255120*t);
   uranus_y_0:=uranus_y_0 +      0.00025235989 * Cos( 4.45141520694 +       70.32818044240*t);
   uranus_y_0:=uranus_y_0 +      0.00025902590 * Cos( 1.06899231907 +      213.29909543800*t);
   uranus_y_0:=uranus_y_0 +      0.00028371248 * Cos( 4.44714636367 +      184.72728735580*t);
   uranus_y_0:=uranus_y_0 +      0.00026651934 * Cos( 4.53944389687 +      160.60889739850*t);
   uranus_y_0:=uranus_y_0 +      0.00019665349 * Cos( 3.96350065335 +       74.66972398270*t);
   uranus_y_0:=uranus_y_0 +      0.00019642987 * Cos( 0.71577796385 +       74.89347315190*t);
   uranus_y_0:=uranus_y_0 +      0.00019838446 * Cos( 5.29115100742 +       12.53017297220*t);
   uranus_y_0:=uranus_y_0 +      0.00015537967 * Cos( 1.87863275460 +       52.69019803950*t);
   uranus_y_0:=uranus_y_0 +      0.00020715948 * Cos( 4.93996485297 +       36.64856292950*t);
   uranus_y_0:=uranus_y_0 +      0.00020115100 * Cos( 3.45473780762 +      127.47179660680*t);
   uranus_y_0:=uranus_y_0 +      0.00020050993 * Cos( 2.90386377392 +       22.09140052780*t);
   uranus_y_0:=uranus_y_0 +      0.00019900975 * Cos( 6.11072709584 +      112.91463420510*t);
   uranus_y_0:=uranus_y_0 +      0.00018124970 * Cos( 0.98477642246 +       33.67961751290*t);
   uranus_y_0:=uranus_y_0 +      0.00015203524 * Cos( 1.31307053626 +       41.10198105440*t);
   uranus_y_0:=uranus_y_0 +      0.00011238530 * Cos( 4.54508332436 +       71.60020482960*t);
   uranus_y_0:=uranus_y_0 +      0.00013948178 * Cos( 4.70475195371 +      221.37585028530*t);
   uranus_y_0:=uranus_y_0 +      0.00010819255 * Cos( 0.12807059988 +       77.96299230500*t);
   uranus_y_0:=uranus_y_0 +      0.00013589092 * Cos( 0.98313830596 +       87.31177153950*t);
   uranus_y_0:=uranus_y_0 +      0.00012407787 * Cos( 4.64945783340 +       72.33391801250*t);
   uranus_y_0:=uranus_y_0 +      0.00011531140 * Cos( 0.20190074645 +       77.22927912210*t);

   uranus_y_1:=uranus_y_1 +      0.02157902502 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_y_1:=uranus_y_1 +      0.00739195286 * Cos( 4.43963987365 +      149.56319713460*t);
   uranus_y_1:=uranus_y_1 +      0.00238535521 * Cos( 3.76882481679 +       73.29712585900*t);
   uranus_y_1:=uranus_y_1 +      0.00229380743 * Cos( 0.91089104293 +       76.26607127560*t);
   uranus_y_1:=uranus_y_1 +      0.00110133819 * Cos( 4.00844673444 +       11.04570026390*t);
   uranus_y_1:=uranus_y_1 +      0.00094974903 * Cos( 5.07141531968 +       63.73589830340*t);
   uranus_y_1:=uranus_y_1 +      0.00081470719 * Cos( 5.92275377361 +       85.82729883120*t);
   uranus_y_1:=uranus_y_1 +      0.00045455130 * Cos( 0.73292269945 +      138.51749687070*t);
   uranus_y_1:=uranus_y_1 +      0.00051366624 * Cos( 0.61847245463 +      224.34479570190*t);
   uranus_y_1:=uranus_y_1 +      0.00038294306 * Cos( 5.01873585224 +       70.84944530420*t);
   uranus_y_1:=uranus_y_1 +      0.00036144546 * Cos( 5.94859451726 +       78.71375183040*t);
   uranus_y_1:=uranus_y_1 +      0.00032419094 * Cos( 4.32617246805 +       74.78159856730*t);
   uranus_y_1:=uranus_y_1 +      0.00021672326 * Cos( 3.36607324420 +      151.04766984290*t);
   uranus_y_1:=uranus_y_1 +      0.00019424370 * Cos( 6.01841918370 +       77.75054398390*t);
   uranus_y_1:=uranus_y_1 +      0.00017392494 * Cos( 4.96098883366 +       71.81265315070*t);
   uranus_y_1:=uranus_y_1 +      0.00014991169 * Cos( 3.97176856758 +        3.93215326310*t);
   uranus_y_1:=uranus_y_1 * t;

   uranus_y_2:=uranus_y_2 +      0.00034868461 * Cos( 3.14159265359 +        0.00000000000*t);
   uranus_y_2:=uranus_y_2 +      0.00016588468 * Cos( 2.29556740317 +       74.78159856730*t);
   uranus_y_2:=uranus_y_2 +      0.00010905147 * Cos( 1.45737963668 +      149.56319713460*t);
   uranus_y_2:=uranus_y_2 * t * t;

   vsop87e_micro_uranus_y := uranus_y_0+uranus_y_1+uranus_y_2;
end;

function vsop87e_micro_uranus_z(t: Double): Double;
   var uranus_z_0: Double=0.0;
   var uranus_z_1: Double=0.0;
   var uranus_z_2: Double=0.0;
begin

   uranus_z_0:=uranus_z_0 +      0.25876996652 * Cos( 2.61861278845 +       74.78159856730*t);
   uranus_z_0:=uranus_z_0 +      0.01775471434 * Cos( 3.14159265359 +        0.00000000000*t);
   uranus_z_0:=uranus_z_0 +      0.00599290075 * Cos( 5.08119534568 +      149.56319713460*t);
   uranus_z_0:=uranus_z_0 +      0.00190282274 * Cos( 1.61654207891 +       76.26607127560*t);
   uranus_z_0:=uranus_z_0 +      0.00190873655 * Cos( 0.57869366179 +       73.29712585900*t);
   uranus_z_0:=uranus_z_0 +      0.00084625392 * Cos( 2.26025774942 +        1.48447270830*t);
   uranus_z_0:=uranus_z_0 +      0.00030733539 * Cos( 0.23570745974 +       63.73589830340*t);
   uranus_z_0:=uranus_z_0 +      0.00020842052 * Cos( 1.26054208091 +      224.34479570190*t);
   uranus_z_0:=uranus_z_0 +      0.00019733410 * Cos( 6.04314596336 +      148.07872442630*t);
   uranus_z_0:=uranus_z_0 +      0.00012537530 * Cos( 5.17169051466 +       11.04570026390*t);
   uranus_z_0:=uranus_z_0 +      0.00014582183 * Cos( 6.14852624696 +       71.81265315070*t);

   uranus_z_1:=uranus_z_1 +      0.00655887992 * Cos( 0.01271946942 +       74.78159856730*t);
   uranus_z_1:=uranus_z_1 +      0.00049782349 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_z_1:=uranus_z_1 +      0.00023873149 * Cos( 2.73870549601 +      149.56319713460*t);
   uranus_z_1:=uranus_z_1 * t;

   uranus_z_2:=uranus_z_2 +      0.00014697217 * Cos( 1.75149164608 +       74.78159856730*t);
   uranus_z_2:=uranus_z_2 * t * t;

   vsop87e_micro_uranus_z := uranus_z_0+uranus_z_1+uranus_z_2;
end;

function vsop87e_micro_venus_x(t: Double): Double;
   var venus_x_0: Double=0.0;
   var venus_x_1: Double=0.0;
begin

   venus_x_0:=venus_x_0 +      0.72211104628 * Cos( 3.17575836361 +    10213.28554621100*t);
   venus_x_0:=venus_x_0 +      0.00515822267 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_x_0:=venus_x_0 +      0.00494908458 * Cos( 3.74108234732 +      529.69096509460*t);
   venus_x_0:=venus_x_0 +      0.00244499876 * Cos( 4.05566613867 +    20426.57109242200*t);
   venus_x_0:=venus_x_0 +      0.00271754748 * Cos( 4.01601261142 +      213.29909543800*t);
   venus_x_0:=venus_x_0 +      0.00155435209 * Cos( 2.17052052050 +       38.13303563780*t);
   venus_x_0:=venus_x_0 +      0.00083791771 * Cos( 2.33967946884 +       74.78159856730*t);
   venus_x_0:=venus_x_0 +      0.00011914665 * Cos( 4.08456666781 +     1059.38193018920*t);

   venus_x_1:=venus_x_1 +      0.00035158710 * Cos( 3.14159265359 +        0.00000000000*t);
   venus_x_1:=venus_x_1 +      0.00017234950 * Cos( 0.92721124604 +    20426.57109242200*t);
   venus_x_1:=venus_x_1 * t;

   vsop87e_micro_venus_x := venus_x_0+venus_x_1;
end;

function vsop87e_micro_venus_y(t: Double): Double;
   var venus_y_0: Double=0.0;
   var venus_y_1: Double=0.0;
begin

   venus_y_0:=venus_y_0 +      0.72324643689 * Cos( 1.60573808356 +    10213.28554621100*t);
   venus_y_0:=venus_y_0 +      0.00515636737 * Cos( 3.14159265359 +        0.00000000000*t);
   venus_y_0:=venus_y_0 +      0.00494765697 * Cos( 2.17048019743 +      529.69096509460*t);
   venus_y_0:=venus_y_0 +      0.00244884190 * Cos( 2.48564953999 +    20426.57109242200*t);
   venus_y_0:=venus_y_0 +      0.00272138024 * Cos( 2.44443638845 +      213.29909543800*t);
   venus_y_0:=venus_y_0 +      0.00155443844 * Cos( 0.59927014146 +       38.13303563780*t);
   venus_y_0:=venus_y_0 +      0.00083754576 * Cos( 0.76880143132 +       74.78159856730*t);
   venus_y_0:=venus_y_0 +      0.00011913202 * Cos( 2.51387064934 +     1059.38193018920*t);

   venus_y_1:=venus_y_1 +      0.00039237546 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_y_1:=venus_y_1 +      0.00017282284 * Cos( 5.63824735900 +    20426.57109242200*t);
   venus_y_1:=venus_y_1 * t;

   vsop87e_micro_venus_y := venus_y_0+venus_y_1;
end;

function vsop87e_micro_venus_z(t: Double): Double;
   var venus_z_0: Double=0.0;
   var venus_z_1: Double=0.0;
begin

   venus_z_0:=venus_z_0 +      0.04282979819 * Cos( 0.26703856471 +    10213.28554621100*t);
   venus_z_0:=venus_z_0 +      0.00036740999 * Cos( 3.14159265359 +        0.00000000000*t);
   venus_z_0:=venus_z_0 +      0.00014501844 * Cos( 1.14696911390 +    20426.57109242200*t);
   venus_z_0:=venus_z_0 +      0.00011808377 * Cos( 0.46064367724 +      213.29909543800*t);
   venus_z_0:=venus_z_0 +      0.00011238047 * Cos( 0.41541669438 +      529.69096509460*t);

   venus_z_1:=venus_z_1 +      0.00208095894 * Cos( 1.88967278742 +    10213.28554621100*t);
   venus_z_1:=venus_z_1 * t;

   vsop87e_micro_venus_z := venus_z_0+venus_z_1;
end;

procedure vsop87e_micro_getEarth(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_earth_x(t);
   temp[1]:=vsop87e_micro_earth_y(t);
   temp[2]:=vsop87e_micro_earth_z(t);
end;

procedure vsop87e_micro_getJupiter(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_jupiter_x(t);
   temp[1]:=vsop87e_micro_jupiter_y(t);
   temp[2]:=vsop87e_micro_jupiter_z(t);
end;

procedure vsop87e_micro_getMars(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_mars_x(t);
   temp[1]:=vsop87e_micro_mars_y(t);
   temp[2]:=vsop87e_micro_mars_z(t);
end;

procedure vsop87e_micro_getMercury(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_mercury_x(t);
   temp[1]:=vsop87e_micro_mercury_y(t);
   temp[2]:=vsop87e_micro_mercury_z(t);
end;

procedure vsop87e_micro_getNeptune(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_neptune_x(t);
   temp[1]:=vsop87e_micro_neptune_y(t);
   temp[2]:=vsop87e_micro_neptune_z(t);
end;

procedure vsop87e_micro_getSaturn(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_saturn_x(t);
   temp[1]:=vsop87e_micro_saturn_y(t);
   temp[2]:=vsop87e_micro_saturn_z(t);
end;

procedure vsop87e_micro_getUranus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_uranus_x(t);
   temp[1]:=vsop87e_micro_uranus_y(t);
   temp[2]:=vsop87e_micro_uranus_z(t);
end;

procedure vsop87e_micro_getVenus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_venus_x(t);
   temp[1]:=vsop87e_micro_venus_y(t);
   temp[2]:=vsop87e_micro_venus_z(t);
end;

procedure vsop87e_micro_getSun(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87e_micro_sun_x(t);
   temp[1]:=vsop87e_micro_sun_y(t);
   temp[2]:=vsop87e_micro_sun_z(t);
end;
end.