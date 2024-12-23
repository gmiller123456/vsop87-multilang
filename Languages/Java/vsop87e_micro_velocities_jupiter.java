//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87e_micro_velocities_jupiter{
   static double jupiter_x_0_(double t){
      double jupiter_x_0=0.0;
      double exp=0;
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
      jupiter_x_0+=-pow(t,exp)*     0.00072025988*    1066.49547719000*sin( 3.96117200382 +     1066.49547719000*t);
      jupiter_x_0+=-pow(t,exp)*     0.00082181886*      74.78159856730*sin( 2.33944503932 +       74.78159856730*t);
      jupiter_x_0+=-pow(t,exp)*     0.00059429203*     949.17560896980*sin( 4.45768709661 +      949.17560896980*t);
      jupiter_x_0+=-pow(t,exp)*     0.00068217918*     846.08283475120*sin( 3.44053291909 +      846.08283475120*t);
      jupiter_x_0+=-pow(t,exp)*     0.00047092829*     419.48464387520*sin( 1.43942906349 +      419.48464387520*t);
      jupiter_x_0+=-pow(t,exp)*     0.00029905661*     206.18554843720*sin( 2.93170826549 +      206.18554843720*t);
      jupiter_x_0+=-pow(t,exp)*     0.00026609536*     323.50541665740*sin( 4.85102664902 +      323.50541665740*t);
      jupiter_x_0+=-pow(t,exp)*     0.00019708639*    2118.76386037840*sin( 1.64891620821 +     2118.76386037840*t);
      jupiter_x_0+=-pow(t,exp)*     0.00016318258*     316.39186965660*sin( 1.94286700529 +      316.39186965660*t);
      jupiter_x_0+=-pow(t,exp)*     0.00016086488*     515.46387109300*sin( 0.87974686945 +      515.46387109300*t);
      jupiter_x_0+=-pow(t,exp)*     0.00014193776*     742.99006053260*sin( 2.07763165706 +      742.99006053260*t);
      jupiter_x_0+=-pow(t,exp)*     0.00015178545*     735.87651353180*sin( 6.25878811430 +      735.87651353180*t);
      jupiter_x_0+=-pow(t,exp)*     0.00011412363*     543.91805909620*sin( 3.48145943220 +      543.91805909620*t);
      jupiter_x_0+=-pow(t,exp)*     0.00012143698*     525.75881183150*sin( 3.75229920148 +      525.75881183150*t);
      jupiter_x_0+=-pow(t,exp)*     0.00011984824*     533.62311835770*sin( 0.58568596255 +      533.62311835770*t);

      return jupiter_x_0;
   }

   static double jupiter_x_1_(double t){
      double jupiter_x_1=0.0;
      double exp=1;
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00883685325*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00883685325*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00634691138*cos( 0.10662162351 +     1059.38193018920*t)-pow(t,exp)*     0.00634691138*    1059.38193018920*sin( 0.10662162351 +     1059.38193018920*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00599147916*cos( 2.42996832550 +      522.57741809380*t)-pow(t,exp)*     0.00599147916*     522.57741809380*sin( 2.42996832550 +      522.57741809380*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00588595541*cos( 1.91556289228 +      536.80451209540*t)-pow(t,exp)*     0.00588595541*     536.80451209540*sin( 1.91556289228 +      536.80451209540*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00081798277*cos( 3.46668967473 +        7.11354700080*t)-pow(t,exp)*     0.00081798277*       7.11354700080*sin( 3.46668967473 +        7.11354700080*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00046157824*cos( 0.45714213541 +     1589.07289528380*t)-pow(t,exp)*     0.00046157824*    1589.07289528380*sin( 0.45714213541 +     1589.07289528380*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00032477578*cos( 1.74648870966 +     1052.26838318840*t)-pow(t,exp)*     0.00032477578*    1052.26838318840*sin( 1.74648870966 +     1052.26838318840*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00033859106*cos( 4.10112469499 +      529.69096509460*t)-pow(t,exp)*     0.00033859106*     529.69096509460*sin( 4.10112469499 +      529.69096509460*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00031204139*cos( 2.34698443027 +     1066.49547719000*t)-pow(t,exp)*     0.00031204139*    1066.49547719000*sin( 2.34698443027 +     1066.49547719000*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00021258131*cos( 4.36563858679 +      110.20632121940*t)-pow(t,exp)*     0.00021258131*     110.20632121940*sin( 4.36563858679 +      110.20632121940*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00017292154*cos( 3.99214003946 +      426.59819087600*t)-pow(t,exp)*     0.00017292154*     426.59819087600*sin( 3.99214003946 +      426.59819087600*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00013566605*cos( 0.30040958696 +      632.78373931320*t)-pow(t,exp)*     0.00013566605*     632.78373931320*sin( 0.30040958696 +      632.78373931320*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00012877132*cos( 2.57490337554 +      515.46387109300*t)-pow(t,exp)*     0.00012877132*     515.46387109300*sin( 2.57490337554 +      515.46387109300*t);

      return jupiter_x_1;
   }

   static double jupiter_x_2_(double t){
      double jupiter_x_2=0.0;
      double exp=2;
      jupiter_x_2+=pow(t,exp-1)*exp*     0.00123746423*cos( 4.13563340107 +      522.57741809380*t)-pow(t,exp)*     0.00123746423*     522.57741809380*sin( 4.13563340107 +      522.57741809380*t);
      jupiter_x_2+=pow(t,exp-1)*exp*     0.00121405454*cos( 0.21155087534 +      536.80451209540*t)-pow(t,exp)*     0.00121405454*     536.80451209540*sin( 0.21155087534 +      536.80451209540*t);
      jupiter_x_2+=pow(t,exp-1)*exp*     0.00085400287*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00085400287*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_x_2+=pow(t,exp-1)*exp*     0.00077611336*cos( 5.29776152037 +      529.69096509460*t)-pow(t,exp)*     0.00077611336*     529.69096509460*sin( 5.29776152037 +      529.69096509460*t);
      jupiter_x_2+=pow(t,exp-1)*exp*     0.00041371381*cos( 5.12291606259 +     1059.38193018920*t)-pow(t,exp)*     0.00041371381*    1059.38193018920*sin( 5.12291606259 +     1059.38193018920*t);
      jupiter_x_2+=pow(t,exp-1)*exp*     0.00011437051*cos( 1.72922178247 +        7.11354700080*t)-pow(t,exp)*     0.00011437051*       7.11354700080*sin( 1.72922178247 +        7.11354700080*t);

      return jupiter_x_2;
   }

   static double jupiter_x_3_(double t){
      double jupiter_x_3=0.0;
      double exp=3;
      jupiter_x_3+=pow(t,exp-1)*exp*     0.00017055031*cos( 5.86133054086 +      522.57741809380*t)-pow(t,exp)*     0.00017055031*     522.57741809380*sin( 5.86133054086 +      522.57741809380*t);
      jupiter_x_3+=pow(t,exp-1)*exp*     0.00016697614*cos( 4.77458774773 +      536.80451209540*t)-pow(t,exp)*     0.00016697614*     536.80451209540*sin( 4.77458774773 +      536.80451209540*t);

      return jupiter_x_3;
   }

   static double jupiter_x(double t){
      return jupiter_x_0_(t)+jupiter_x_1_(t)+jupiter_x_2_(t)+jupiter_x_3_(t);
   }

   static double jupiter_y_0_(double t){
      double jupiter_y_0=0.0;
      double exp=0;
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
      jupiter_y_0+=-pow(t,exp)*     0.00072021597*    1066.49547719000*sin( 2.39048430255 +     1066.49547719000*t);
      jupiter_y_0+=-pow(t,exp)*     0.00082109296*      74.78159856730*sin( 0.76861586597 +       74.78159856730*t);
      jupiter_y_0+=-pow(t,exp)*     0.00058995131*     949.17560896980*sin( 2.89529666872 +      949.17560896980*t);
      jupiter_y_0+=-pow(t,exp)*     0.00068308433*     846.08283475120*sin( 1.86538762629 +      846.08283475120*t);
      jupiter_y_0+=-pow(t,exp)*     0.00030597479*     206.18554843720*sin( 4.58059597562 +      206.18554843720*t);
      jupiter_y_0+=-pow(t,exp)*     0.00027182574*     419.48464387520*sin( 3.86962082273 +      419.48464387520*t);
      jupiter_y_0+=-pow(t,exp)*     0.00026615785*     323.50541665740*sin( 3.28135958246 +      323.50541665740*t);
      jupiter_y_0+=-pow(t,exp)*     0.00020859553*     735.87651353180*sin( 3.79339751809 +      735.87651353180*t);
      jupiter_y_0+=-pow(t,exp)*     0.00019708579*    2118.76386037840*sin( 0.07818533602 +     2118.76386037840*t);
      jupiter_y_0+=-pow(t,exp)*     0.00018475985*     316.39186965660*sin( 0.38014924174 +      316.39186965660*t);
      jupiter_y_0+=-pow(t,exp)*     0.00016340182*     515.46387109300*sin( 5.56996543941 +      515.46387109300*t);
      jupiter_y_0+=-pow(t,exp)*     0.00014591238*     742.99006053260*sin( 0.47749865610 +      742.99006053260*t);
      jupiter_y_0+=-pow(t,exp)*     0.00011409020*     543.91805909620*sin( 1.91089175916 +      543.91805909620*t);
      jupiter_y_0+=-pow(t,exp)*     0.00012141842*     525.75881183150*sin( 2.18151948736 +      525.75881183150*t);
      jupiter_y_0+=-pow(t,exp)*     0.00011977440*     533.62311835770*sin( 5.29687559056 +      533.62311835770*t);

      return jupiter_y_0;
   }

   static double jupiter_y_1_(double t){
      double jupiter_y_1=0.0;
      double exp=1;
      jupiter_y_1+=pow(t,exp-1)*exp*     0.01694792137*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.01694792137*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00634254247*cos( 4.81903195356 +     1059.38193018920*t)-pow(t,exp)*     0.00634254247*    1059.38193018920*sin( 4.81903195356 +     1059.38193018920*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00600587150*cos( 0.85811137383 +      522.57741809380*t)-pow(t,exp)*     0.00600587150*     522.57741809380*sin( 0.85811137383 +      522.57741809380*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00588367200*cos( 0.34491553018 +      536.80451209540*t)-pow(t,exp)*     0.00588367200*     536.80451209540*sin( 0.34491553018 +      536.80451209540*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00081289939*cos( 1.90910271853 +        7.11354700080*t)-pow(t,exp)*     0.00081289939*       7.11354700080*sin( 1.90910271853 +        7.11354700080*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00046843519*cos( 1.91294033052 +      529.69096509460*t)-pow(t,exp)*     0.00046843519*     529.69096509460*sin( 1.91294033052 +      529.69096509460*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00046150068*cos( 5.16955995419 +     1589.07289528380*t)-pow(t,exp)*     0.00046150068*    1589.07289528380*sin( 5.16955995419 +     1589.07289528380*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00032472443*cos( 0.17640771395 +     1052.26838318840*t)-pow(t,exp)*     0.00032472443*    1052.26838318840*sin( 0.17640771395 +     1052.26838318840*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00031201535*cos( 0.77624038457 +     1066.49547719000*t)-pow(t,exp)*     0.00031201535*    1066.49547719000*sin( 0.77624038457 +     1066.49547719000*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00019475766*cos( 3.00913152396 +      110.20632121940*t)-pow(t,exp)*     0.00019475766*     110.20632121940*sin( 3.00913152396 +      110.20632121940*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00016865586*cos( 2.45297644533 +      426.59819087600*t)-pow(t,exp)*     0.00016865586*     426.59819087600*sin( 2.45297644533 +      426.59819087600*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00013690691*cos( 5.02101628562 +      632.78373931320*t)-pow(t,exp)*     0.00013690691*     632.78373931320*sin( 5.02101628562 +      632.78373931320*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00013022204*cos( 0.98978959368 +      515.46387109300*t)-pow(t,exp)*     0.00013022204*     515.46387109300*sin( 0.98978959368 +      515.46387109300*t);

      return jupiter_y_1;
   }

   static double jupiter_y_2_(double t){
      double jupiter_y_2=0.0;
      double exp=2;
      jupiter_y_2+=pow(t,exp-1)*exp*     0.00123914193*cos( 2.56495551373 +      522.57741809380*t)-pow(t,exp)*     0.00123914193*     522.57741809380*sin( 2.56495551373 +      522.57741809380*t);
      jupiter_y_2+=pow(t,exp-1)*exp*     0.00121340211*cos( 4.92398747363 +      536.80451209540*t)-pow(t,exp)*     0.00121340211*     536.80451209540*sin( 4.92398747363 +      536.80451209540*t);
      jupiter_y_2+=pow(t,exp-1)*exp*     0.00076450198*cos( 3.75913373191 +      529.69096509460*t)-pow(t,exp)*     0.00076450198*     529.69096509460*sin( 3.75913373191 +      529.69096509460*t);
      jupiter_y_2+=pow(t,exp-1)*exp*     0.00076998857*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00076998857*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      jupiter_y_2+=pow(t,exp-1)*exp*     0.00041318153*cos( 3.55228415274 +     1059.38193018920*t)-pow(t,exp)*     0.00041318153*    1059.38193018920*sin( 3.55228415274 +     1059.38193018920*t);
      jupiter_y_2+=pow(t,exp-1)*exp*     0.00011292133*cos( 0.18554488524 +        7.11354700080*t)-pow(t,exp)*     0.00011292133*       7.11354700080*sin( 0.18554488524 +        7.11354700080*t);

      return jupiter_y_2;
   }

   static double jupiter_y_3_(double t){
      double jupiter_y_3=0.0;
      double exp=3;
      jupiter_y_3+=pow(t,exp-1)*exp*     0.00017069216*cos( 4.29096907367 +      522.57741809380*t)-pow(t,exp)*     0.00017069216*     522.57741809380*sin( 4.29096907367 +      522.57741809380*t);
      jupiter_y_3+=pow(t,exp-1)*exp*     0.00016685430*cos( 3.20365723177 +      536.80451209540*t)-pow(t,exp)*     0.00016685430*     536.80451209540*sin( 3.20365723177 +      536.80451209540*t);

      return jupiter_y_3;
   }

   static double jupiter_y(double t){
      return jupiter_y_0_(t)+jupiter_y_1_(t)+jupiter_y_2_(t)+jupiter_y_3_(t);
   }

   static double jupiter_z_0_(double t){
      double jupiter_z_0=0.0;
      double exp=0;
      jupiter_z_0+=-pow(t,exp)*     0.11811822789*     529.69096509460*sin( 3.55844641987 +      529.69096509460*t);
      jupiter_z_0+=-pow(t,exp)*     0.00857879296*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_z_0+=-pow(t,exp)*     0.00286288759*    1059.38193018920*sin( 3.90812239092 +     1059.38193018920*t);
      jupiter_z_0+=-pow(t,exp)*     0.00042347799*     522.57741809380*sin( 3.60144639424 +      522.57741809380*t);
      jupiter_z_0+=-pow(t,exp)*     0.00033263796*     536.80451209540*sin( 0.30296971930 +      536.80451209540*t);
      jupiter_z_0+=-pow(t,exp)*     0.00010406225*    1589.07289528380*sin( 4.25764578777 +     1589.07289528380*t);

      return jupiter_z_0;
   }

   static double jupiter_z_1_(double t){
      double jupiter_z_1=0.0;
      double exp=1;
      jupiter_z_1+=pow(t,exp-1)*exp*     0.00406683941*cos( 1.52699356726 +      529.69096509460*t)-pow(t,exp)*     0.00406683941*     529.69096509460*sin( 1.52699356726 +      529.69096509460*t);
      jupiter_z_1+=pow(t,exp-1)*exp*     0.00020287968*cos( 2.59878263946 +     1059.38193018920*t)-pow(t,exp)*     0.00020287968*    1059.38193018920*sin( 2.59878263946 +     1059.38193018920*t);
      jupiter_z_1+=pow(t,exp-1)*exp*     0.00014411207*cos( 4.85400100506 +      536.80451209540*t)-pow(t,exp)*     0.00014411207*     536.80451209540*sin( 4.85400100506 +      536.80451209540*t);
      jupiter_z_1+=pow(t,exp-1)*exp*     0.00015608009*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00015608009*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_z_1+=pow(t,exp-1)*exp*     0.00012718197*cos( 5.45536889012 +      522.57741809380*t)-pow(t,exp)*     0.00012718197*     522.57741809380*sin( 5.45536889012 +      522.57741809380*t);

      return jupiter_z_1;
   }

   static double jupiter_z_2_(double t){
      double jupiter_z_2=0.0;
      double exp=2;
      jupiter_z_2+=pow(t,exp-1)*exp*     0.00028608011*cos( 3.01374191263 +      529.69096509460*t)-pow(t,exp)*     0.00028608011*     529.69096509460*sin( 3.01374191263 +      529.69096509460*t);

      return jupiter_z_2;
   }

   static double jupiter_z(double t){
      return jupiter_z_0_(t)+jupiter_z_1_(t)+jupiter_z_2_(t);
   }

}
