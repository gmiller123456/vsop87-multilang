//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

#include <math.h>
double vsop87e_nano_velocities_earth_x(double t);
double vsop87e_nano_velocities_earth_y(double t);
double vsop87e_nano_velocities_earth_z(double t);
double vsop87e_nano_velocities_jupiter_x(double t);
double vsop87e_nano_velocities_jupiter_y(double t);
double vsop87e_nano_velocities_jupiter_z(double t);
double vsop87e_nano_velocities_mars_x(double t);
double vsop87e_nano_velocities_mars_y(double t);
double vsop87e_nano_velocities_mars_z(double t);
double vsop87e_nano_velocities_mercury_x(double t);
double vsop87e_nano_velocities_mercury_y(double t);
double vsop87e_nano_velocities_mercury_z(double t);
double vsop87e_nano_velocities_neptune_x(double t);
double vsop87e_nano_velocities_neptune_y(double t);
double vsop87e_nano_velocities_neptune_z(double t);
double vsop87e_nano_velocities_saturn_x(double t);
double vsop87e_nano_velocities_saturn_y(double t);
double vsop87e_nano_velocities_saturn_z(double t);
double vsop87e_nano_velocities_sun_x(double t);
double vsop87e_nano_velocities_sun_y(double t);
double vsop87e_nano_velocities_sun_z(double t);
double vsop87e_nano_velocities_uranus_x(double t);
double vsop87e_nano_velocities_uranus_y(double t);
double vsop87e_nano_velocities_uranus_z(double t);
double vsop87e_nano_velocities_venus_x(double t);
double vsop87e_nano_velocities_venus_y(double t);
double vsop87e_nano_velocities_venus_z(double t);


void vsop87e_nano_velocities_getEarth(double t,double temp[]){
   temp[0]=vsop87e_nano_velocities_earth_x(t) / 365250.0;
   temp[1]=vsop87e_nano_velocities_earth_y(t) / 365250.0;
   temp[2]=vsop87e_nano_velocities_earth_z(t) / 365250.0;
}

void vsop87e_nano_velocities_getJupiter(double t,double temp[]){
   temp[0]=vsop87e_nano_velocities_jupiter_x(t) / 365250.0;
   temp[1]=vsop87e_nano_velocities_jupiter_y(t) / 365250.0;
   temp[2]=vsop87e_nano_velocities_jupiter_z(t) / 365250.0;
}

void vsop87e_nano_velocities_getMars(double t,double temp[]){
   temp[0]=vsop87e_nano_velocities_mars_x(t) / 365250.0;
   temp[1]=vsop87e_nano_velocities_mars_y(t) / 365250.0;
   temp[2]=vsop87e_nano_velocities_mars_z(t) / 365250.0;
}

void vsop87e_nano_velocities_getMercury(double t,double temp[]){
   temp[0]=vsop87e_nano_velocities_mercury_x(t) / 365250.0;
   temp[1]=vsop87e_nano_velocities_mercury_y(t) / 365250.0;
   temp[2]=vsop87e_nano_velocities_mercury_z(t) / 365250.0;
}

void vsop87e_nano_velocities_getNeptune(double t,double temp[]){
   temp[0]=vsop87e_nano_velocities_neptune_x(t) / 365250.0;
   temp[1]=vsop87e_nano_velocities_neptune_y(t) / 365250.0;
   temp[2]=vsop87e_nano_velocities_neptune_z(t) / 365250.0;
}

void vsop87e_nano_velocities_getSaturn(double t,double temp[]){
   temp[0]=vsop87e_nano_velocities_saturn_x(t) / 365250.0;
   temp[1]=vsop87e_nano_velocities_saturn_y(t) / 365250.0;
   temp[2]=vsop87e_nano_velocities_saturn_z(t) / 365250.0;
}

void vsop87e_nano_velocities_getUranus(double t,double temp[]){
   temp[0]=vsop87e_nano_velocities_uranus_x(t) / 365250.0;
   temp[1]=vsop87e_nano_velocities_uranus_y(t) / 365250.0;
   temp[2]=vsop87e_nano_velocities_uranus_z(t) / 365250.0;
}

void vsop87e_nano_velocities_getVenus(double t,double temp[]){
   temp[0]=vsop87e_nano_velocities_venus_x(t) / 365250.0;
   temp[1]=vsop87e_nano_velocities_venus_y(t) / 365250.0;
   temp[2]=vsop87e_nano_velocities_venus_z(t) / 365250.0;
}

void vsop87e_nano_velocities_getSun(double t,double temp[]){
   temp[0]=vsop87e_nano_velocities_sun_x(t) / 365250.0;
   temp[1]=vsop87e_nano_velocities_sun_y(t) / 365250.0;
   temp[2]=vsop87e_nano_velocities_sun_z(t) / 365250.0;
}

double vsop87e_nano_velocities_earth_x(double t){
   double exp=0.0;
   double earth_x_0=0.0;
   exp=0;
   earth_x_0+=-pow(t,exp)*     0.99982624851*    6283.07584999140*sin( 1.75348568475 +     6283.07584999140*t);
   earth_x_0+=-pow(t,exp)*     0.00835254761*   12566.15169998280*sin( 1.71034539458 +    12566.15169998280*t);
   earth_x_0+=-pow(t,exp)*     0.00590518455*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   earth_x_0+=-pow(t,exp)*     0.00493120585*     529.69096509460*sin( 3.74115834452 +      529.69096509460*t);
   earth_x_0+=-pow(t,exp)*     0.00271650686*     213.29909543800*sin( 4.01601440281 +      213.29909543800*t);
   earth_x_0+=-pow(t,exp)*     0.00155434220*      38.13303563780*sin( 2.17052065758 +       38.13303563780*t);

   double earth_x_1=0.0;
   exp=1;
   earth_x_1+=pow(t,exp-1)*exp*     0.00122106982*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00122106982*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

   return earth_x_0+earth_x_1;
}

double vsop87e_nano_velocities_earth_y(double t){
   double exp=0.0;
   double earth_y_0=0.0;
   exp=0;
   earth_y_0+=-pow(t,exp)*     0.99988907017*    6283.07584999140*sin( 0.18265890456 +     6283.07584999140*t);
   earth_y_0+=-pow(t,exp)*     0.02408829501*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   earth_y_0+=-pow(t,exp)*     0.00835289774*   12566.15169998280*sin( 0.13952879005 +    12566.15169998280*t);
   earth_y_0+=-pow(t,exp)*     0.00492966037*     529.69096509460*sin( 2.17052458400 +      529.69096509460*t);
   earth_y_0+=-pow(t,exp)*     0.00272033033*     213.29909543800*sin( 2.44443635549 +      213.29909543800*t);
   earth_y_0+=-pow(t,exp)*     0.00155442849*      38.13303563780*sin( 0.59927021065 +       38.13303563780*t);

   return earth_y_0;
}

double vsop87e_nano_velocities_earth_z(double t){
   double exp=0.0;
   double earth_z_1=0.0;
   exp=1;
   earth_z_1+=pow(t,exp-1)*exp*     0.00227821750*cos( 3.41372504278 +     6283.07584999140*t)-pow(t,exp)*     0.00227821750*    6283.07584999140*sin( 3.41372504278 +     6283.07584999140*t);

   return earth_z_1;
}

double vsop87e_nano_velocities_jupiter_x(double t){
   double exp=0.0;
   double jupiter_x_0=0.0;
   exp=0;
   jupiter_x_0+=-pow(t,exp)*     5.19167797375*     529.69096509460*sin( 0.59945079482 +      529.69096509460*t);
   jupiter_x_0+=-pow(t,exp)*     0.36633268070*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   jupiter_x_0+=-pow(t,exp)*     0.12581924842*    1059.38193018920*sin( 0.94911581432 +     1059.38193018920*t);
   jupiter_x_0+=-pow(t,exp)*     0.01499237862*     522.57741809380*sin( 0.73175554601 +      522.57741809380*t);
   jupiter_x_0+=-pow(t,exp)*     0.01474818211*     536.80451209540*sin( 3.61736901402 +      536.80451209540*t);
   jupiter_x_0+=-pow(t,exp)*     0.00457316096*    1589.07289528380*sin( 1.29883699143 +     1589.07289528380*t);
   jupiter_x_0+=-pow(t,exp)*     0.00302068886*       7.11354700080*sin( 5.17370377723 +        7.11354700080*t);
   jupiter_x_0+=-pow(t,exp)*     0.00385749947*     103.09277421860*sin( 2.01222596811 +      103.09277421860*t);
   jupiter_x_0+=-pow(t,exp)*     0.00192562451*     426.59819087600*sin( 4.98733787115 +      426.59819087600*t);
   jupiter_x_0+=-pow(t,exp)*     0.00150783740*     110.20632121940*sin( 6.11831671330 +      110.20632121940*t);
   jupiter_x_0+=-pow(t,exp)*     0.00144750651*     632.78373931320*sin( 5.55980048541 +      632.78373931320*t);
   jupiter_x_0+=-pow(t,exp)*     0.00154896097*      38.13303563780*sin( 2.17051189575 +       38.13303563780*t);
   jupiter_x_0+=-pow(t,exp)*     0.00137575946*     213.29909543800*sin( 4.01399498370 +      213.29909543800*t);
   jupiter_x_0+=-pow(t,exp)*     0.00103396684*    1052.26838318840*sin( 6.19327175097 +     1052.26838318840*t);
   jupiter_x_0+=-pow(t,exp)*     0.00114092461*    1162.47470440780*sin( 0.01567031739 +     1162.47470440780*t);

   double jupiter_x_1=0.0;
   exp=1;
   jupiter_x_1+=pow(t,exp-1)*exp*     0.00883685325*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00883685325*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   jupiter_x_1+=pow(t,exp-1)*exp*     0.00634691138*cos( 0.10662162351 +     1059.38193018920*t)-pow(t,exp)*     0.00634691138*    1059.38193018920*sin( 0.10662162351 +     1059.38193018920*t);
   jupiter_x_1+=pow(t,exp-1)*exp*     0.00599147916*cos( 2.42996832550 +      522.57741809380*t)-pow(t,exp)*     0.00599147916*     522.57741809380*sin( 2.42996832550 +      522.57741809380*t);
   jupiter_x_1+=pow(t,exp-1)*exp*     0.00588595541*cos( 1.91556289228 +      536.80451209540*t)-pow(t,exp)*     0.00588595541*     536.80451209540*sin( 1.91556289228 +      536.80451209540*t);

   double jupiter_x_2=0.0;
   exp=2;
   jupiter_x_2+=pow(t,exp-1)*exp*     0.00123746423*cos( 4.13563340107 +      522.57741809380*t)-pow(t,exp)*     0.00123746423*     522.57741809380*sin( 4.13563340107 +      522.57741809380*t);
   jupiter_x_2+=pow(t,exp-1)*exp*     0.00121405454*cos( 0.21155087534 +      536.80451209540*t)-pow(t,exp)*     0.00121405454*     536.80451209540*sin( 0.21155087534 +      536.80451209540*t);

   return jupiter_x_0+jupiter_x_1+jupiter_x_2;
}

double vsop87e_nano_velocities_jupiter_y(double t){
   double exp=0.0;
   double jupiter_y_0=0.0;
   exp=0;
   jupiter_y_0+=-pow(t,exp)*     5.19024510371*     529.69096509460*sin( 5.31203160043 +      529.69096509460*t);
   jupiter_y_0+=-pow(t,exp)*     0.12580850775*    1059.38193018920*sin( 5.66160225641 +     1059.38193018920*t);
   jupiter_y_0+=-pow(t,exp)*     0.09329801081*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   jupiter_y_0+=-pow(t,exp)*     0.01506838468*     522.57741809380*sin( 5.43934599781 +      522.57741809380*t);
   jupiter_y_0+=-pow(t,exp)*     0.01474403395*     536.80451209540*sin( 2.04679547637 +      536.80451209540*t);
   jupiter_y_0+=-pow(t,exp)*     0.00457314174*    1589.07289528380*sin( 6.01129093508 +     1589.07289528380*t);
   jupiter_y_0+=-pow(t,exp)*     0.00301069256*       7.11354700080*sin( 3.60943303554 +        7.11354700080*t);
   jupiter_y_0+=-pow(t,exp)*     0.00378016915*     103.09277421860*sin( 3.53013675622 +      103.09277421860*t);
   jupiter_y_0+=-pow(t,exp)*     0.00190850034*     426.59819087600*sin( 3.41807324121 +      426.59819087600*t);
   jupiter_y_0+=-pow(t,exp)*     0.00146192922*     110.20632121940*sin( 4.62080103783 +      110.20632121940*t);
   jupiter_y_0+=-pow(t,exp)*     0.00139367298*     632.78373931320*sin( 4.00075739657 +      632.78373931320*t);
   jupiter_y_0+=-pow(t,exp)*     0.00154904248*      38.13303563780*sin( 0.59924790507 +       38.13303563780*t);
   jupiter_y_0+=-pow(t,exp)*     0.00139655050*     213.29909543800*sin( 2.41039954154 +      213.29909543800*t);
   jupiter_y_0+=-pow(t,exp)*     0.00101901831*    1052.26838318840*sin( 4.57592165280 +     1052.26838318840*t);
   jupiter_y_0+=-pow(t,exp)*     0.00113934096*    1162.47470440780*sin( 4.72982346991 +     1162.47470440780*t);

   double jupiter_y_1=0.0;
   exp=1;
   jupiter_y_1+=pow(t,exp-1)*exp*     0.01694792137*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.01694792137*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   jupiter_y_1+=pow(t,exp-1)*exp*     0.00634254247*cos( 4.81903195356 +     1059.38193018920*t)-pow(t,exp)*     0.00634254247*    1059.38193018920*sin( 4.81903195356 +     1059.38193018920*t);
   jupiter_y_1+=pow(t,exp-1)*exp*     0.00600587150*cos( 0.85811137383 +      522.57741809380*t)-pow(t,exp)*     0.00600587150*     522.57741809380*sin( 0.85811137383 +      522.57741809380*t);
   jupiter_y_1+=pow(t,exp-1)*exp*     0.00588367200*cos( 0.34491553018 +      536.80451209540*t)-pow(t,exp)*     0.00588367200*     536.80451209540*sin( 0.34491553018 +      536.80451209540*t);

   double jupiter_y_2=0.0;
   exp=2;
   jupiter_y_2+=pow(t,exp-1)*exp*     0.00123914193*cos( 2.56495551373 +      522.57741809380*t)-pow(t,exp)*     0.00123914193*     522.57741809380*sin( 2.56495551373 +      522.57741809380*t);
   jupiter_y_2+=pow(t,exp-1)*exp*     0.00121340211*cos( 4.92398747363 +      536.80451209540*t)-pow(t,exp)*     0.00121340211*     536.80451209540*sin( 4.92398747363 +      536.80451209540*t);

   return jupiter_y_0+jupiter_y_1+jupiter_y_2;
}

double vsop87e_nano_velocities_jupiter_z(double t){
   double exp=0.0;
   double jupiter_z_0=0.0;
   exp=0;
   jupiter_z_0+=-pow(t,exp)*     0.11811822789*     529.69096509460*sin( 3.55844641987 +      529.69096509460*t);
   jupiter_z_0+=-pow(t,exp)*     0.00857879296*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   jupiter_z_0+=-pow(t,exp)*     0.00286288759*    1059.38193018920*sin( 3.90812239092 +     1059.38193018920*t);

   double jupiter_z_1=0.0;
   exp=1;
   jupiter_z_1+=pow(t,exp-1)*exp*     0.00406683941*cos( 1.52699356726 +      529.69096509460*t)-pow(t,exp)*     0.00406683941*     529.69096509460*sin( 1.52699356726 +      529.69096509460*t);

   return jupiter_z_0+jupiter_z_1;
}

double vsop87e_nano_velocities_mars_x(double t){
   double exp=0.0;
   double mars_x_0=0.0;
   exp=0;
   mars_x_0+=-pow(t,exp)*     1.51769887405*    3340.61242669980*sin( 6.20403346548 +     3340.61242669980*t);
   mars_x_0+=-pow(t,exp)*     0.19473570996*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   mars_x_0+=-pow(t,exp)*     0.07070917372*    6681.22485339960*sin( 0.25870338552 +     6681.22485339960*t);
   mars_x_0+=-pow(t,exp)*     0.00494196754*   10021.83728009940*sin( 0.59669127752 +    10021.83728009940*t);
   mars_x_0+=-pow(t,exp)*     0.00482151285*     529.69096509460*sin( 3.74021439144 +      529.69096509460*t);
   mars_x_0+=-pow(t,exp)*     0.00271094292*     213.29909543800*sin( 4.01586959956 +      213.29909543800*t);
   mars_x_0+=-pow(t,exp)*     0.00155429009*      38.13303563780*sin( 2.17051900894 +       38.13303563780*t);

   double mars_x_1=0.0;
   exp=1;
   mars_x_1+=pow(t,exp-1)*exp*     0.00862737448*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00862737448*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   mars_x_1+=pow(t,exp-1)*exp*     0.00552437771*cos( 5.09565872891 +     6681.22485339960*t)-pow(t,exp)*     0.00552437771*    6681.22485339960*sin( 5.09565872891 +     6681.22485339960*t);

   return mars_x_0+mars_x_1;
}

double vsop87e_nano_velocities_mars_y(double t){
   double exp=0.0;
   double mars_y_0=0.0;
   exp=0;
   mars_y_0+=-pow(t,exp)*     1.51558927367*    3340.61242669980*sin( 4.63212206588 +     3340.61242669980*t);
   mars_y_0+=-pow(t,exp)*     0.07064547959*    6681.22485339960*sin( 4.97051892898 +     6681.22485339960*t);
   mars_y_0+=-pow(t,exp)*     0.08689350637*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   mars_y_0+=-pow(t,exp)*     0.00493872689*   10021.83728009940*sin( 5.30877806678 +    10021.83728009940*t);
   mars_y_0+=-pow(t,exp)*     0.00482218424*     529.69096509460*sin( 2.16962356915 +      529.69096509460*t);
   mars_y_0+=-pow(t,exp)*     0.00271492455*     213.29909543800*sin( 2.44409624683 +      213.29909543800*t);
   mars_y_0+=-pow(t,exp)*     0.00155437832*      38.13303563780*sin( 0.59926749768 +       38.13303563780*t);

   double mars_y_1=0.0;
   exp=1;
   mars_y_1+=pow(t,exp-1)*exp*     0.01427318093*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.01427318093*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   mars_y_1+=pow(t,exp-1)*exp*     0.00551063576*cos( 3.52128320402 +     6681.22485339960*t)-pow(t,exp)*     0.00551063576*    6681.22485339960*sin( 3.52128320402 +     6681.22485339960*t);

   return mars_y_0+mars_y_1;
}

double vsop87e_nano_velocities_mars_z(double t){
   double exp=0.0;
   double mars_z_0=0.0;
   exp=0;
   mars_z_0+=-pow(t,exp)*     0.04901205639*    3340.61242669980*sin( 3.76712324293 +     3340.61242669980*t);
   mars_z_0+=-pow(t,exp)*     0.00659516885*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   mars_z_0+=-pow(t,exp)*     0.00228333831*    6681.22485339960*sin( 4.10544022266 +     6681.22485339960*t);

   double mars_z_1=0.0;
   exp=1;
   mars_z_1+=pow(t,exp-1)*exp*     0.00331842851*cos( 6.05027773492 +     3340.61242669980*t)-pow(t,exp)*     0.00331842851*    3340.61242669980*sin( 6.05027773492 +     3340.61242669980*t);

   return mars_z_0+mars_z_1;
}

double vsop87e_nano_velocities_mercury_x(double t){
   double exp=0.0;
   double mercury_x_0=0.0;
   exp=0;
   mercury_x_0+=-pow(t,exp)*     0.37546285495*   26087.90314157420*sin( 4.39651506942 +    26087.90314157420*t);
   mercury_x_0+=-pow(t,exp)*     0.03825746037*   52175.80628314840*sin( 1.16485604343 +    52175.80628314840*t);
   mercury_x_0+=-pow(t,exp)*     0.02596241714*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   mercury_x_0+=-pow(t,exp)*     0.00584261236*   78263.70942472259*sin( 4.21599394757 +    78263.70942472259*t);
   mercury_x_0+=-pow(t,exp)*     0.00495586029*     529.69096509460*sin( 3.74115422358 +      529.69096509460*t);
   mercury_x_0+=-pow(t,exp)*     0.00271797490*     213.29909543800*sin( 4.01600769847 +      213.29909543800*t);
   mercury_x_0+=-pow(t,exp)*     0.00155435621*      38.13303563780*sin( 2.17052060921 +       38.13303563780*t);
   mercury_x_0+=-pow(t,exp)*     0.00105716677*  104351.61256629678*sin( 0.98379033182 +   104351.61256629678*t);

   double mercury_x_1=0.0;
   exp=1;
   mercury_x_1+=pow(t,exp-1)*exp*     0.00317551960*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00317551960*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   mercury_x_1+=pow(t,exp-1)*exp*     0.00105289001*cos( 5.91600475006 +    52175.80628314840*t)-pow(t,exp)*     0.00105289001*   52175.80628314840*sin( 5.91600475006 +    52175.80628314840*t);

   return mercury_x_0+mercury_x_1;
}

double vsop87e_nano_velocities_mercury_y(double t){
   double exp=0.0;
   double mercury_y_0=0.0;
   exp=0;
   mercury_y_0+=-pow(t,exp)*     0.37953636588*   26087.90314157420*sin( 2.83780617821 +    26087.90314157420*t);
   mercury_y_0+=-pow(t,exp)*     0.11592262295*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   mercury_y_0+=-pow(t,exp)*     0.03854667576*   52175.80628314840*sin( 5.88780608961 +    52175.80628314840*t);
   mercury_y_0+=-pow(t,exp)*     0.00587711171*   78263.70942472259*sin( 2.65498896201 +    78263.70942472259*t);
   mercury_y_0+=-pow(t,exp)*     0.00495452148*     529.69096509460*sin( 2.17050902176 +      529.69096509460*t);
   mercury_y_0+=-pow(t,exp)*     0.00272177927*     213.29909543800*sin( 2.44442843667 +      213.29909543800*t);
   mercury_y_0+=-pow(t,exp)*     0.00155444251*      38.13303563780*sin( 0.59927014783 +       38.13303563780*t);
   mercury_y_0+=-pow(t,exp)*     0.00106235475*  104351.61256629678*sin( 5.70550616735 +   104351.61256629678*t);

   double mercury_y_1=0.0;
   exp=1;
   mercury_y_1+=pow(t,exp-1)*exp*     0.00107803834*cos( 4.34964793883 +    52175.80628314840*t)-pow(t,exp)*     0.00107803834*   52175.80628314840*sin( 4.34964793883 +    52175.80628314840*t);

   return mercury_y_0+mercury_y_1;
}

double vsop87e_nano_velocities_mercury_z(double t){
   double exp=0.0;
   double mercury_z_0=0.0;
   exp=0;
   mercury_z_0+=-pow(t,exp)*     0.04607664562*   26087.90314157420*sin( 1.99295081967 +    26087.90314157420*t);
   mercury_z_0+=-pow(t,exp)*     0.00709887021*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   mercury_z_0+=-pow(t,exp)*     0.00469171540*   52175.80628314840*sin( 5.04215742764 +    52175.80628314840*t);

   double mercury_z_1=0.0;
   exp=1;
   mercury_z_1+=pow(t,exp-1)*exp*     0.00108722159*cos( 3.91134750825 +    26087.90314157420*t)-pow(t,exp)*     0.00108722159*   26087.90314157420*sin( 3.91134750825 +    26087.90314157420*t);

   return mercury_z_0+mercury_z_1;
}

double vsop87e_nano_velocities_neptune_x(double t){
   double exp=0.0;
   double neptune_x_0=0.0;
   exp=0;
   neptune_x_0+=-pow(t,exp)*    30.05734568801*      38.13303563780*sin( 5.31211340030 +       38.13303563780*t);
   neptune_x_0+=-pow(t,exp)*     0.27050789973*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   neptune_x_0+=-pow(t,exp)*     0.13504578270*      76.26607127560*sin( 3.50075407055 +       76.26607127560*t);
   neptune_x_0+=-pow(t,exp)*     0.15725280871*      36.64856292950*sin( 0.11319072402 +       36.64856292950*t);
   neptune_x_0+=-pow(t,exp)*     0.14934353052*      39.61750834610*sin( 1.08499398649 +       39.61750834610*t);
   neptune_x_0+=-pow(t,exp)*     0.02597449604*       1.48447270830*sin( 1.99590330725 +        1.48447270830*t);
   neptune_x_0+=-pow(t,exp)*     0.00990668211*      74.78159856730*sin( 5.37690139386 +       74.78159856730*t);
   neptune_x_0+=-pow(t,exp)*     0.00823755467*      35.16409022120*sin( 1.43221512492 +       35.16409022120*t);
   neptune_x_0+=-pow(t,exp)*     0.00817566529*       2.96894541660*sin( 0.78180136001 +        2.96894541660*t);
   neptune_x_0+=-pow(t,exp)*     0.00565506338*      41.10198105440*sin( 5.98964911841 +       41.10198105440*t);
   neptune_x_0+=-pow(t,exp)*     0.00308146172*      73.29712585900*sin( 0.39998862713 +       73.29712585900*t);
   neptune_x_0+=-pow(t,exp)*     0.00135901755*      77.75054398390*sin( 5.54688721933 +       77.75054398390*t);

   double neptune_x_1=0.0;
   exp=1;
   neptune_x_1+=pow(t,exp-1)*exp*     0.00255827017*cos( 2.01935687782 +       36.64856292950*t)-pow(t,exp)*     0.00255827017*      36.64856292950*sin( 2.01935687782 +       36.64856292950*t);
   neptune_x_1+=pow(t,exp-1)*exp*     0.00243112812*cos( 5.46214905602 +       39.61750834610*t)-pow(t,exp)*     0.00243112812*      39.61750834610*sin( 5.46214905602 +       39.61750834610*t);
   neptune_x_1+=pow(t,exp-1)*exp*     0.00118382753*cos( 2.88255085978 +       76.26607127560*t)-pow(t,exp)*     0.00118382753*      76.26607127560*sin( 2.88255085978 +       76.26607127560*t);

   return neptune_x_0+neptune_x_1;
}

double vsop87e_nano_velocities_neptune_y(double t){
   double exp=0.0;
   double neptune_y_0=0.0;
   exp=0;
   neptune_y_0+=-pow(t,exp)*    30.05900907352*      38.13303563780*sin( 3.74086294715 +       38.13303563780*t);
   neptune_y_0+=-pow(t,exp)*     0.30171988148*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   neptune_y_0+=-pow(t,exp)*     0.13505308635*      76.26607127560*sin( 1.92949466968 +       76.26607127560*t);
   neptune_y_0+=-pow(t,exp)*     0.15705776296*      36.64856292950*sin( 4.82539969469 +       36.64856292950*t);
   neptune_y_0+=-pow(t,exp)*     0.14935398681*      39.61750834610*sin( 5.79694896309 +       39.61750834610*t);
   neptune_y_0+=-pow(t,exp)*     0.02584389323*       1.48447270830*sin( 0.42549727257 +        1.48447270830*t);
   neptune_y_0+=-pow(t,exp)*     0.00990408083*      74.78159856730*sin( 3.80555424385 +       74.78159856730*t);
   neptune_y_0+=-pow(t,exp)*     0.00815165481*       2.96894541660*sin( 5.49429738442 +        2.96894541660*t);
   neptune_y_0+=-pow(t,exp)*     0.00582164520*      35.16409022120*sin( 6.19633859980 +       35.16409022120*t);
   neptune_y_0+=-pow(t,exp)*     0.00565547830*      41.10198105440*sin( 4.41843013268 +       41.10198105440*t);
   neptune_y_0+=-pow(t,exp)*     0.00305149662*      73.29712585900*sin( 5.11023952334 +       73.29712585900*t);
   neptune_y_0+=-pow(t,exp)*     0.00135911904*      77.75054398390*sin( 3.97565894083 +       77.75054398390*t);

   double neptune_y_1=0.0;
   exp=1;
   neptune_y_1+=pow(t,exp-1)*exp*     0.00352941377*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00352941377*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   neptune_y_1+=pow(t,exp-1)*exp*     0.00256112241*cos( 0.44757496381 +       36.64856292950*t)-pow(t,exp)*     0.00256112241*      36.64856292950*sin( 0.44757496381 +       36.64856292950*t);
   neptune_y_1+=pow(t,exp-1)*exp*     0.00243135236*cos( 3.89099801420 +       39.61750834610*t)-pow(t,exp)*     0.00243135236*      39.61750834610*sin( 3.89099801420 +       39.61750834610*t);
   neptune_y_1+=pow(t,exp-1)*exp*     0.00118411800*cos( 1.31131262408 +       76.26607127560*t)-pow(t,exp)*     0.00118411800*      76.26607127560*sin( 1.31131262408 +       76.26607127560*t);

   return neptune_y_0+neptune_y_1;
}

double vsop87e_nano_velocities_neptune_z(double t){
   double exp=0.0;
   double neptune_z_0=0.0;
   exp=0;
   neptune_z_0+=-pow(t,exp)*     0.92861252357*      38.13303563780*sin( 1.44103930199 +       38.13303563780*t);
   neptune_z_0+=-pow(t,exp)*     0.01244825806*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   neptune_z_0+=-pow(t,exp)*     0.00474309033*      36.64856292950*sin( 2.52218768352 +       36.64856292950*t);
   neptune_z_0+=-pow(t,exp)*     0.00451964646*      39.61750834610*sin( 3.50949727943 +       39.61750834610*t);
   neptune_z_0+=-pow(t,exp)*     0.00417539868*      76.26607127560*sin( 5.91308871390 +       76.26607127560*t);

   double neptune_z_1=0.0;
   exp=1;
   neptune_z_1+=pow(t,exp-1)*exp*     0.00154877961*cos( 2.14239038882 +       38.13303563780*t)-pow(t,exp)*     0.00154877961*      38.13303563780*sin( 2.14239038882 +       38.13303563780*t);

   return neptune_z_0+neptune_z_1;
}

double vsop87e_nano_velocities_saturn_x(double t){
   double exp=0.0;
   double saturn_x_0=0.0;
   exp=0;
   saturn_x_0+=-pow(t,exp)*     9.51366533422*     213.29909543800*sin( 0.87441380650 +      213.29909543800*t);
   saturn_x_0+=-pow(t,exp)*     0.26404799161*     426.59819087600*sin( 0.12391580771 +      426.59819087600*t);
   saturn_x_0+=-pow(t,exp)*     0.06758489145*     206.18554843720*sin( 4.16767544586 +      206.18554843720*t);
   saturn_x_0+=-pow(t,exp)*     0.06622371284*     220.41264243880*sin( 0.75094738122 +      220.41264243880*t);
   saturn_x_0+=-pow(t,exp)*     0.04274172066*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   saturn_x_0+=-pow(t,exp)*     0.02335961354*       7.11354700080*sin( 2.02227905783 +        7.11354700080*t);
   saturn_x_0+=-pow(t,exp)*     0.01255113414*     110.20632121940*sin( 2.17347170552 +      110.20632121940*t);
   saturn_x_0+=-pow(t,exp)*     0.01115372225*     419.48464387520*sin( 3.15690865182 +      419.48464387520*t);
   saturn_x_0+=-pow(t,exp)*     0.01097374519*     639.89728631400*sin( 5.65753938643 +      639.89728631400*t);
   saturn_x_0+=-pow(t,exp)*     0.00716112591*     316.39186965660*sin( 2.71151505735 +      316.39186965660*t);
   saturn_x_0+=-pow(t,exp)*     0.00509529043*     103.09277421860*sin( 4.95879639669 +      103.09277421860*t);
   saturn_x_0+=-pow(t,exp)*     0.00372789068*     433.71173787680*sin( 0.00137750888 +      433.71173787680*t);
   saturn_x_0+=-pow(t,exp)*     0.00149659945*      38.13303563780*sin( 2.17071100189 +       38.13303563780*t);

   double saturn_x_1=0.0;
   exp=1;
   saturn_x_1+=pow(t,exp-1)*exp*     0.07573807889*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.07573807889*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   saturn_x_1+=pow(t,exp-1)*exp*     0.03084144308*cos( 4.27565898829 +      426.59819087600*t)-pow(t,exp)*     0.03084144308*     426.59819087600*sin( 4.27565898829 +      426.59819087600*t);
   saturn_x_1+=pow(t,exp-1)*exp*     0.02714141496*cos( 5.85229546861 +      206.18554843720*t)-pow(t,exp)*     0.02714141496*     206.18554843720*sin( 5.85229546861 +      206.18554843720*t);
   saturn_x_1+=pow(t,exp-1)*exp*     0.02642347272*cos( 5.33291950842 +      220.41264243880*t)-pow(t,exp)*     0.02642347272*     220.41264243880*sin( 5.33291950842 +      220.41264243880*t);
   saturn_x_1+=pow(t,exp-1)*exp*     0.00627003445*cos( 0.32898258729 +        7.11354700080*t)-pow(t,exp)*     0.00627003445*       7.11354700080*sin( 0.32898258729 +        7.11354700080*t);
   saturn_x_1+=pow(t,exp-1)*exp*     0.00256488381*cos( 3.52479443238 +      639.89728631400*t)-pow(t,exp)*     0.00256488381*     639.89728631400*sin( 3.52479443238 +      639.89728631400*t);
   saturn_x_1+=pow(t,exp-1)*exp*     0.00312269012*cos( 4.83002443322 +      419.48464387520*t)-pow(t,exp)*     0.00312269012*     419.48464387520*sin( 4.83002443322 +      419.48464387520*t);
   saturn_x_1+=pow(t,exp-1)*exp*     0.00189142591*cos( 4.48642939502 +      433.71173787680*t)-pow(t,exp)*     0.00189142591*     433.71173787680*sin( 4.48642939502 +      433.71173787680*t);
   saturn_x_1+=pow(t,exp-1)*exp*     0.00203589147*cos( 1.10998720016 +      213.29909543800*t)-pow(t,exp)*     0.00203589147*     213.29909543800*sin( 1.10998720016 +      213.29909543800*t);
   saturn_x_1+=pow(t,exp-1)*exp*     0.00119517217*cos( 1.14736396934 +      110.20632121940*t)-pow(t,exp)*     0.00119517217*     110.20632121940*sin( 1.14736396934 +      110.20632121940*t);

   double saturn_x_2=0.0;
   exp=2;
   saturn_x_2+=pow(t,exp-1)*exp*     0.00560586041*cos( 1.26401676555 +      206.18554843720*t)-pow(t,exp)*     0.00560586041*     206.18554843720*sin( 1.26401676555 +      206.18554843720*t);
   saturn_x_2+=pow(t,exp-1)*exp*     0.00545678885*cos( 3.62343709789 +      220.41264243880*t)-pow(t,exp)*     0.00545678885*     220.41264243880*sin( 3.62343709789 +      220.41264243880*t);
   saturn_x_2+=pow(t,exp-1)*exp*     0.00443297401*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00443297401*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   saturn_x_2+=pow(t,exp-1)*exp*     0.00336013651*cos( 2.42547432210 +      213.29909543800*t)-pow(t,exp)*     0.00336013651*     213.29909543800*sin( 2.42547432210 +      213.29909543800*t);
   saturn_x_2+=pow(t,exp-1)*exp*     0.00224237163*cos( 2.49151267683 +      426.59819087600*t)-pow(t,exp)*     0.00224237163*     426.59819087600*sin( 2.49151267683 +      426.59819087600*t);

   return saturn_x_0+saturn_x_1+saturn_x_2;
}

double vsop87e_nano_velocities_saturn_y(double t){
   double exp=0.0;
   double saturn_y_0=0.0;
   exp=0;
   saturn_y_0+=-pow(t,exp)*     9.52714696877*     213.29909543800*sin( 5.58600556072 +      213.29909543800*t);
   saturn_y_0+=-pow(t,exp)*     0.79354119271*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   saturn_y_0+=-pow(t,exp)*     0.26434197609*     426.59819087600*sin( 4.83528742856 +      426.59819087600*t);
   saturn_y_0+=-pow(t,exp)*     0.06914690347*     206.18554843720*sin( 2.55279029588 +      206.18554843720*t);
   saturn_y_0+=-pow(t,exp)*     0.06631679200*     220.41264243880*sin( 5.46258849076 +      220.41264243880*t);
   saturn_y_0+=-pow(t,exp)*     0.02345226948*       7.11354700080*sin( 0.44652393276 +        7.11354700080*t);
   saturn_y_0+=-pow(t,exp)*     0.01183557497*     419.48464387520*sin( 1.34637027573 +      419.48464387520*t);
   saturn_y_0+=-pow(t,exp)*     0.01245523800*     110.20632121940*sin( 0.60375781288 +      110.20632121940*t);
   saturn_y_0+=-pow(t,exp)*     0.01098442011*     639.89728631400*sin( 4.08609387384 +      639.89728631400*t);
   saturn_y_0+=-pow(t,exp)*     0.00700636234*     316.39186965660*sin( 1.13613024684 +      316.39186965660*t);
   saturn_y_0+=-pow(t,exp)*     0.00373221824*     433.71173787680*sin( 4.71309283502 +      433.71173787680*t);
   saturn_y_0+=-pow(t,exp)*     0.00335413797*     103.09277421860*sin( 0.66392970394 +      103.09277421860*t);
   saturn_y_0+=-pow(t,exp)*     0.00149675444*      38.13303563780*sin( 0.59938943096 +       38.13303563780*t);

   double saturn_y_1=0.0;
   exp=1;
   saturn_y_1+=pow(t,exp-1)*exp*     0.05373895252*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.05373895252*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   saturn_y_1+=pow(t,exp-1)*exp*     0.03089676414*cos( 2.70347020059 +      426.59819087600*t)-pow(t,exp)*     0.03089676414*     426.59819087600*sin( 2.70347020059 +      426.59819087600*t);
   saturn_y_1+=pow(t,exp-1)*exp*     0.02740812928*cos( 4.26667506460 +      206.18554843720*t)-pow(t,exp)*     0.02740812928*     206.18554843720*sin( 4.26667506460 +      206.18554843720*t);
   saturn_y_1+=pow(t,exp-1)*exp*     0.02646734779*cos( 3.76132299914 +      220.41264243880*t)-pow(t,exp)*     0.02646734779*     220.41264243880*sin( 3.76132299914 +      220.41264243880*t);
   saturn_y_1+=pow(t,exp-1)*exp*     0.00631417689*cos( 5.03245728319 +        7.11354700080*t)-pow(t,exp)*     0.00631417689*       7.11354700080*sin( 5.03245728319 +        7.11354700080*t);
   saturn_y_1+=pow(t,exp-1)*exp*     0.00256727017*cos( 1.95352327208 +      639.89728631400*t)-pow(t,exp)*     0.00256727017*     639.89728631400*sin( 1.95352327208 +      639.89728631400*t);
   saturn_y_1+=pow(t,exp-1)*exp*     0.00312184641*cos( 3.25850939353 +      419.48464387520*t)-pow(t,exp)*     0.00312184641*     419.48464387520*sin( 3.25850939353 +      419.48464387520*t);
   saturn_y_1+=pow(t,exp-1)*exp*     0.00189379568*cos( 2.91502328680 +      433.71173787680*t)-pow(t,exp)*     0.00189379568*     433.71173787680*sin( 2.91502328680 +      433.71173787680*t);
   saturn_y_1+=pow(t,exp-1)*exp*     0.00164086267*cos( 5.29239224879 +      213.29909543800*t)-pow(t,exp)*     0.00164086267*     213.29909543800*sin( 5.29239224879 +      213.29909543800*t);
   saturn_y_1+=pow(t,exp-1)*exp*     0.00116775818*cos( 5.89150757121 +      110.20632121940*t)-pow(t,exp)*     0.00116775818*     110.20632121940*sin( 5.89150757121 +      110.20632121940*t);

   double saturn_y_2=0.0;
   exp=2;
   saturn_y_2+=pow(t,exp-1)*exp*     0.00563545688*cos( 5.97115835983 +      206.18554843720*t)-pow(t,exp)*     0.00563545688*     206.18554843720*sin( 5.97115835983 +      206.18554843720*t);
   saturn_y_2+=pow(t,exp-1)*exp*     0.00546856143*cos( 2.05154974712 +      220.41264243880*t)-pow(t,exp)*     0.00546856143*     220.41264243880*sin( 2.05154974712 +      220.41264243880*t);
   saturn_y_2+=pow(t,exp-1)*exp*     0.00458462799*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00458462799*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   saturn_y_2+=pow(t,exp-1)*exp*     0.00362190876*cos( 0.89540102818 +      213.29909543800*t)-pow(t,exp)*     0.00362190876*     213.29909543800*sin( 0.89540102818 +      213.29909543800*t);
   saturn_y_2+=pow(t,exp-1)*exp*     0.00225456249*cos( 0.91699830789 +      426.59819087600*t)-pow(t,exp)*     0.00225456249*     426.59819087600*sin( 0.91699830789 +      426.59819087600*t);

   return saturn_y_0+saturn_y_1+saturn_y_2;
}

double vsop87e_nano_velocities_saturn_z(double t){
   double exp=0.0;
   double saturn_z_0=0.0;
   exp=0;
   saturn_z_0+=-pow(t,exp)*     0.41345140292*     213.29909543800*sin( 3.60234141893 +      213.29909543800*t);
   saturn_z_0+=-pow(t,exp)*     0.01147953788*     426.59819087600*sin( 2.85128771957 +      426.59819087600*t);
   saturn_z_0+=-pow(t,exp)*     0.01213097211*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   saturn_z_0+=-pow(t,exp)*     0.00329186544*     206.18554843720*sin( 0.57121482436 +      206.18554843720*t);
   saturn_z_0+=-pow(t,exp)*     0.00286852189*     220.41264243880*sin( 3.48073528206 +      220.41264243880*t);

   double saturn_z_1=0.0;
   exp=1;
   saturn_z_1+=pow(t,exp-1)*exp*     0.01905958940*cos( 4.94544746619 +      213.29909543800*t)-pow(t,exp)*     0.01905958940*     213.29909543800*sin( 4.94544746619 +      213.29909543800*t);
   saturn_z_1+=pow(t,exp-1)*exp*     0.00528167867*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00528167867*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   saturn_z_1+=pow(t,exp-1)*exp*     0.00130224990*cos( 2.26141028606 +      206.18554843720*t)-pow(t,exp)*     0.00130224990*     206.18554843720*sin( 2.26141028606 +      206.18554843720*t);
   saturn_z_1+=pow(t,exp-1)*exp*     0.00101437388*cos( 1.79095832223 +      220.41264243880*t)-pow(t,exp)*     0.00101437388*     220.41264243880*sin( 1.79095832223 +      220.41264243880*t);

   double saturn_z_2=0.0;
   exp=2;
   saturn_z_2+=pow(t,exp-1)*exp*     0.00131237677*cos( 0.08868998014 +      213.29909543800*t)-pow(t,exp)*     0.00131237677*     213.29909543800*sin( 0.08868998014 +      213.29909543800*t);

   return saturn_z_0+saturn_z_1+saturn_z_2;
}

double vsop87e_nano_velocities_sun_x(double t){
   double exp=0.0;
   double sun_x_0=0.0;
   exp=0;
   sun_x_0+=-pow(t,exp)*     0.00495672739*     529.69096509460*sin( 3.74107356792 +      529.69096509460*t);
   sun_x_0+=-pow(t,exp)*     0.00271802376*     213.29909543800*sin( 4.01601149775 +      213.29909543800*t);
   sun_x_0+=-pow(t,exp)*     0.00155435675*      38.13303563780*sin( 2.17052050061 +       38.13303563780*t);

   return sun_x_0;
}

double vsop87e_nano_velocities_sun_y(double t){
   double exp=0.0;
   double sun_y_0=0.0;
   exp=0;
   sun_y_0+=-pow(t,exp)*     0.00495536218*     529.69096509460*sin( 2.17046712634 +      529.69096509460*t);
   sun_y_0+=-pow(t,exp)*     0.00272185821*     213.29909543800*sin( 2.44443364925 +      213.29909543800*t);
   sun_y_0+=-pow(t,exp)*     0.00155444313*      38.13303563780*sin( 0.59927010840 +       38.13303563780*t);

   return sun_y_0;
}

double vsop87e_nano_velocities_sun_z(double t){
   double exp=0.0;
   return 0;
}

double vsop87e_nano_velocities_uranus_x(double t){
   double exp=0.0;
   double uranus_x_0=0.0;
   exp=0;
   uranus_x_0+=-pow(t,exp)*    19.17286937362*      74.78159856730*sin( 5.48133416758 +       74.78159856730*t);
   uranus_x_0+=-pow(t,exp)*     1.32301898121*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   uranus_x_0+=-pow(t,exp)*     0.44400556159*     149.56319713460*sin( 1.65967535182 +      149.56319713460*t);
   uranus_x_0+=-pow(t,exp)*     0.14667584671*      73.29712585900*sin( 3.42395875589 +       73.29712585900*t);
   uranus_x_0+=-pow(t,exp)*     0.14129215712*      76.26607127560*sin( 4.39576776954 +       76.26607127560*t);
   uranus_x_0+=-pow(t,exp)*     0.06200970387*       1.48447270830*sin( 5.14043568284 +        1.48447270830*t);
   uranus_x_0+=-pow(t,exp)*     0.01542890129*     224.34479570190*sin( 4.12122840701 +      224.34479570190*t);
   uranus_x_0+=-pow(t,exp)*     0.01444153470*     148.07872442630*sin( 2.65117108186 +      148.07872442630*t);
   uranus_x_0+=-pow(t,exp)*     0.00944969862*      11.04570026390*sin( 1.65871112189 +       11.04570026390*t);
   uranus_x_0+=-pow(t,exp)*     0.00657496073*     151.04766984290*sin( 0.57595186181 +      151.04766984290*t);
   uranus_x_0+=-pow(t,exp)*     0.00621603101*      77.75054398390*sin( 3.05881560775 +       77.75054398390*t);
   uranus_x_0+=-pow(t,exp)*     0.00585159800*      71.81265315070*sin( 4.79934731599 +       71.81265315070*t);
   uranus_x_0+=-pow(t,exp)*     0.00633971831*      63.73589830340*sin( 4.09554584740 +       63.73589830340*t);
   uranus_x_0+=-pow(t,exp)*     0.00547675794*      85.82729883120*sin( 3.63127816021 +       85.82729883120*t);
   uranus_x_0+=-pow(t,exp)*     0.00458242260*       2.96894541660*sin( 3.90788427382 +        2.96894541660*t);
   uranus_x_0+=-pow(t,exp)*     0.00383608186*     138.51749687070*sin( 6.18762167352 +      138.51749687070*t);
   uranus_x_0+=-pow(t,exp)*     0.00145499145*      70.84944530420*sin( 2.31759819136 +       70.84944530420*t);
   uranus_x_0+=-pow(t,exp)*     0.00135334157*      78.71375183040*sin( 5.51062460646 +       78.71375183040*t);
   uranus_x_0+=-pow(t,exp)*     0.00120354886*      39.61750834610*sin( 4.10218670070 +       39.61750834610*t);
   uranus_x_0+=-pow(t,exp)*     0.00125099578*     111.43016149680*sin( 2.51455157066 +      111.43016149680*t);
   uranus_x_0+=-pow(t,exp)*     0.00111255099*     222.86032299360*sin( 5.12253353573 +      222.86032299360*t);
   uranus_x_0+=-pow(t,exp)*     0.00104615229*     146.59425171800*sin( 3.90538915195 +      146.59425171800*t);
   uranus_x_0+=-pow(t,exp)*     0.00110162872*      35.16409022120*sin( 4.45478121996 +       35.16409022120*t);

   double uranus_x_1=0.0;
   exp=1;
   uranus_x_1+=pow(t,exp-1)*exp*     0.00739697937*cos( 6.01067921255 +      149.56319713460*t)-pow(t,exp)*     0.00739697937*     149.56319713460*sin( 6.01067921255 +      149.56319713460*t);
   uranus_x_1+=pow(t,exp-1)*exp*     0.00528174379*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00528174379*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   uranus_x_1+=pow(t,exp-1)*exp*     0.00239830578*cos( 5.33657752107 +       73.29712585900*t)-pow(t,exp)*     0.00239830578*      73.29712585900*sin( 5.33657752107 +       73.29712585900*t);
   uranus_x_1+=pow(t,exp-1)*exp*     0.00229661096*cos( 2.48203377424 +       76.26607127560*t)-pow(t,exp)*     0.00229661096*      76.26607127560*sin( 2.48203377424 +       76.26607127560*t);
   uranus_x_1+=pow(t,exp-1)*exp*     0.00111041831*cos( 5.57157483973 +       11.04570026390*t)-pow(t,exp)*     0.00111041831*      11.04570026390*sin( 5.57157483973 +       11.04570026390*t);

   return uranus_x_0+uranus_x_1;
}

double vsop87e_nano_velocities_uranus_y(double t){
   double exp=0.0;
   double uranus_y_0=0.0;
   exp=0;
   uranus_y_0+=-pow(t,exp)*    19.16434475791*      74.78159856730*sin( 3.91045677275 +       74.78159856730*t);
   uranus_y_0+=-pow(t,exp)*     0.44388525091*     149.56319713460*sin( 0.08884126943 +      149.56319713460*t);
   uranus_y_0+=-pow(t,exp)*     0.16222255941*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   uranus_y_0+=-pow(t,exp)*     0.14755311401*      73.29712585900*sin( 1.85423292905 +       73.29712585900*t);
   uranus_y_0+=-pow(t,exp)*     0.14122904825*      76.26607127560*sin( 2.82489928705 +       76.26607127560*t);
   uranus_y_0+=-pow(t,exp)*     0.06249939655*       1.48447270830*sin( 3.56960238469 +        1.48447270830*t);
   uranus_y_0+=-pow(t,exp)*     0.01542607086*     224.34479570190*sin( 2.55041543170 +      224.34479570190*t);
   uranus_y_0+=-pow(t,exp)*     0.01442293466*     148.07872442630*sin( 1.08004535633 +      148.07872442630*t);
   uranus_y_0+=-pow(t,exp)*     0.00938950136*      11.04570026390*sin( 0.09277492739 +       11.04570026390*t);
   uranus_y_0+=-pow(t,exp)*     0.00650307020*      63.73589830340*sin( 2.76144565363 +       63.73589830340*t);
   uranus_y_0+=-pow(t,exp)*     0.00657314387*     151.04766984290*sin( 5.28830720039 +      151.04766984290*t);
   uranus_y_0+=-pow(t,exp)*     0.00621305207*      77.75054398390*sin( 1.48795124826 +       77.75054398390*t);
   uranus_y_0+=-pow(t,exp)*     0.00541938502*      71.81265315070*sin( 3.24476518729 +       71.81265315070*t);
   uranus_y_0+=-pow(t,exp)*     0.00547449443*      85.82729883120*sin( 2.06038015757 +       85.82729883120*t);
   uranus_y_0+=-pow(t,exp)*     0.00459611215*       2.96894541660*sin( 2.33745675699 +        2.96894541660*t);
   uranus_y_0+=-pow(t,exp)*     0.00387905368*     138.51749687070*sin( 4.62027047251 +      138.51749687070*t);
   uranus_y_0+=-pow(t,exp)*     0.00144026146*      70.84944530420*sin( 0.75015758735 +       70.84944530420*t);
   uranus_y_0+=-pow(t,exp)*     0.00135284941*      78.71375183040*sin( 3.93970261854 +       78.71375183040*t);
   uranus_y_0+=-pow(t,exp)*     0.00120431731*      39.61750834610*sin( 2.53138588744 +       39.61750834610*t);
   uranus_y_0+=-pow(t,exp)*     0.00124862444*     111.43016149680*sin( 0.94315799565 +      111.43016149680*t);
   uranus_y_0+=-pow(t,exp)*     0.00111199717*     222.86032299360*sin( 3.55163790142 +      222.86032299360*t);
   uranus_y_0+=-pow(t,exp)*     0.00104503352*     146.59425171800*sin( 2.33345670641 +      146.59425171800*t);
   uranus_y_0+=-pow(t,exp)*     0.00108550063*      35.16409022120*sin( 6.02230047678 +       35.16409022120*t);

   double uranus_y_1=0.0;
   exp=1;
   uranus_y_1+=pow(t,exp-1)*exp*     0.02157902502*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.02157902502*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   uranus_y_1+=pow(t,exp-1)*exp*     0.00739195286*cos( 4.43963987365 +      149.56319713460*t)-pow(t,exp)*     0.00739195286*     149.56319713460*sin( 4.43963987365 +      149.56319713460*t);
   uranus_y_1+=pow(t,exp-1)*exp*     0.00238535521*cos( 3.76882481679 +       73.29712585900*t)-pow(t,exp)*     0.00238535521*      73.29712585900*sin( 3.76882481679 +       73.29712585900*t);
   uranus_y_1+=pow(t,exp-1)*exp*     0.00229380743*cos( 0.91089104293 +       76.26607127560*t)-pow(t,exp)*     0.00229380743*      76.26607127560*sin( 0.91089104293 +       76.26607127560*t);
   uranus_y_1+=pow(t,exp-1)*exp*     0.00110133819*cos( 4.00844673444 +       11.04570026390*t)-pow(t,exp)*     0.00110133819*      11.04570026390*sin( 4.00844673444 +       11.04570026390*t);

   return uranus_y_0+uranus_y_1;
}

double vsop87e_nano_velocities_uranus_z(double t){
   double exp=0.0;
   double uranus_z_0=0.0;
   exp=0;
   uranus_z_0+=-pow(t,exp)*     0.25876996652*      74.78159856730*sin( 2.61861278845 +       74.78159856730*t);
   uranus_z_0+=-pow(t,exp)*     0.01775471434*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   uranus_z_0+=-pow(t,exp)*     0.00599290075*     149.56319713460*sin( 5.08119534568 +      149.56319713460*t);
   uranus_z_0+=-pow(t,exp)*     0.00190282274*      76.26607127560*sin( 1.61654207891 +       76.26607127560*t);
   uranus_z_0+=-pow(t,exp)*     0.00190873655*      73.29712585900*sin( 0.57869366179 +       73.29712585900*t);

   double uranus_z_1=0.0;
   exp=1;
   uranus_z_1+=pow(t,exp-1)*exp*     0.00655887992*cos( 0.01271946942 +       74.78159856730*t)-pow(t,exp)*     0.00655887992*      74.78159856730*sin( 0.01271946942 +       74.78159856730*t);

   return uranus_z_0+uranus_z_1;
}

double vsop87e_nano_velocities_venus_x(double t){
   double exp=0.0;
   double venus_x_0=0.0;
   exp=0;
   venus_x_0+=-pow(t,exp)*     0.72211104628*   10213.28554621100*sin( 3.17575836361 +    10213.28554621100*t);
   venus_x_0+=-pow(t,exp)*     0.00515822267*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   venus_x_0+=-pow(t,exp)*     0.00494908458*     529.69096509460*sin( 3.74108234732 +      529.69096509460*t);
   venus_x_0+=-pow(t,exp)*     0.00244499876*   20426.57109242200*sin( 4.05566613867 +    20426.57109242200*t);
   venus_x_0+=-pow(t,exp)*     0.00271754748*     213.29909543800*sin( 4.01601261142 +      213.29909543800*t);
   venus_x_0+=-pow(t,exp)*     0.00155435209*      38.13303563780*sin( 2.17052052050 +       38.13303563780*t);

   return venus_x_0;
}

double vsop87e_nano_velocities_venus_y(double t){
   double exp=0.0;
   double venus_y_0=0.0;
   exp=0;
   venus_y_0+=-pow(t,exp)*     0.72324643689*   10213.28554621100*sin( 1.60573808356 +    10213.28554621100*t);
   venus_y_0+=-pow(t,exp)*     0.00515636737*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
   venus_y_0+=-pow(t,exp)*     0.00494765697*     529.69096509460*sin( 2.17048019743 +      529.69096509460*t);
   venus_y_0+=-pow(t,exp)*     0.00244884190*   20426.57109242200*sin( 2.48564953999 +    20426.57109242200*t);
   venus_y_0+=-pow(t,exp)*     0.00272138024*     213.29909543800*sin( 2.44443638845 +      213.29909543800*t);
   venus_y_0+=-pow(t,exp)*     0.00155443844*      38.13303563780*sin( 0.59927014146 +       38.13303563780*t);

   return venus_y_0;
}

double vsop87e_nano_velocities_venus_z(double t){
   double exp=0.0;
   double venus_z_0=0.0;
   exp=0;
   venus_z_0+=-pow(t,exp)*     0.04282979819*   10213.28554621100*sin( 0.26703856471 +    10213.28554621100*t);

   double venus_z_1=0.0;
   exp=1;
   venus_z_1+=pow(t,exp-1)*exp*     0.00208095894*cos( 1.88967278742 +    10213.28554621100*t)-pow(t,exp)*     0.00208095894*   10213.28554621100*sin( 1.88967278742 +    10213.28554621100*t);

   return venus_z_0+venus_z_1;
}

