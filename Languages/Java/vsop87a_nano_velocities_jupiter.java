//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87a_nano_velocities_jupiter{
   static double jupiter_x_0_(double t){
      double jupiter_x_0=0.0;
      double exp=0;
      jupiter_x_0+=-pow(t,exp)*     5.19663470114*     529.69096509460*sin( 0.59945082355 +      529.69096509460*t);
      jupiter_x_0+=-pow(t,exp)*     0.36662642320*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      jupiter_x_0+=-pow(t,exp)*     0.12593937922*    1059.38193018920*sin( 0.94911583701 +     1059.38193018920*t);
      jupiter_x_0+=-pow(t,exp)*     0.01500672056*     522.57741809380*sin( 0.73175134610 +      522.57741809380*t);
      jupiter_x_0+=-pow(t,exp)*     0.01476224578*     536.80451209540*sin( 3.61736921122 +      536.80451209540*t);
      jupiter_x_0+=-pow(t,exp)*     0.00457752736*    1589.07289528380*sin( 1.29883700755 +     1589.07289528380*t);
      jupiter_x_0+=-pow(t,exp)*     0.00301689798*       7.11354700080*sin( 5.17372551148 +        7.11354700080*t);
      jupiter_x_0+=-pow(t,exp)*     0.00385975375*     103.09277421860*sin( 2.01229910687 +      103.09277421860*t);
      jupiter_x_0+=-pow(t,exp)*     0.00194025405*     426.59819087600*sin( 5.02580363996 +      426.59819087600*t);
      jupiter_x_0+=-pow(t,exp)*     0.00150678793*     110.20632121940*sin( 6.12003027739 +      110.20632121940*t);
      jupiter_x_0+=-pow(t,exp)*     0.00144867641*     632.78373931320*sin( 5.55980577080 +      632.78373931320*t);
      jupiter_x_0+=-pow(t,exp)*     0.00134226996*     213.29909543800*sin( 0.87648567011 +      213.29909543800*t);
      jupiter_x_0+=-pow(t,exp)*     0.00103494641*    1052.26838318840*sin( 6.19324769120 +     1052.26838318840*t);
      jupiter_x_0+=-pow(t,exp)*     0.00114201562*    1162.47470440780*sin( 0.01567084269 +     1162.47470440780*t);

      return jupiter_x_0;
   }

   static double jupiter_x_1_(double t){
      double jupiter_x_1=0.0;
      double exp=1;
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00882389251*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00882389251*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00635297172*cos( 0.10662156868 +     1059.38193018920*t)-pow(t,exp)*     0.00635297172*    1059.38193018920*sin( 0.10662156868 +     1059.38193018920*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00599720482*cos( 2.42996678275 +      522.57741809380*t)-pow(t,exp)*     0.00599720482*     522.57741809380*sin( 2.42996678275 +      522.57741809380*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00589157060*cos( 1.91556314637 +      536.80451209540*t)-pow(t,exp)*     0.00589157060*     536.80451209540*sin( 1.91556314637 +      536.80451209540*t);

      return jupiter_x_1;
   }

   static double jupiter_x_2_(double t){
      double jupiter_x_2=0.0;
      double exp=2;
      jupiter_x_2+=pow(t,exp-1)*exp*     0.00123864644*cos( 4.13563277513 +      522.57741809380*t)-pow(t,exp)*     0.00123864644*     522.57741809380*sin( 4.13563277513 +      522.57741809380*t);
      jupiter_x_2+=pow(t,exp-1)*exp*     0.00121521296*cos( 0.21155109275 +      536.80451209540*t)-pow(t,exp)*     0.00121521296*     536.80451209540*sin( 0.21155109275 +      536.80451209540*t);

      return jupiter_x_2;
   }

   static double jupiter_x(double t){
      return jupiter_x_0_(t)+jupiter_x_1_(t)+jupiter_x_2_(t);
   }

   static double jupiter_y_0_(double t){
      double jupiter_y_0=0.0;
      double exp=0;
      jupiter_y_0+=-pow(t,exp)*     5.19520046589*     529.69096509460*sin( 5.31203162731 +      529.69096509460*t);
      jupiter_y_0+=-pow(t,exp)*     0.12592862602*    1059.38193018920*sin( 5.66160227728 +     1059.38193018920*t);
      jupiter_y_0+=-pow(t,exp)*     0.09363670616*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      jupiter_y_0+=-pow(t,exp)*     0.01508275299*     522.57741809380*sin( 5.43934968102 +      522.57741809380*t);
      jupiter_y_0+=-pow(t,exp)*     0.01475809370*     536.80451209540*sin( 2.04679566495 +      536.80451209540*t);
      jupiter_y_0+=-pow(t,exp)*     0.00457750806*    1589.07289528380*sin( 6.01129093501 +     1589.07289528380*t);
      jupiter_y_0+=-pow(t,exp)*     0.00300686679*       7.11354700080*sin( 3.60948050740 +        7.11354700080*t);
      jupiter_y_0+=-pow(t,exp)*     0.00378285578*     103.09277421860*sin( 3.53006782383 +      103.09277421860*t);
      jupiter_y_0+=-pow(t,exp)*     0.00192333128*     426.59819087600*sin( 3.45690564771 +      426.59819087600*t);
      jupiter_y_0+=-pow(t,exp)*     0.00146104656*     110.20632121940*sin( 4.62267224431 +      110.20632121940*t);
      jupiter_y_0+=-pow(t,exp)*     0.00139480058*     632.78373931320*sin( 4.00075307706 +      632.78373931320*t);
      jupiter_y_0+=-pow(t,exp)*     0.00132696764*     213.29909543800*sin( 5.62184581859 +      213.29909543800*t);
      jupiter_y_0+=-pow(t,exp)*     0.00101999807*    1052.26838318840*sin( 4.57594598884 +     1052.26838318840*t);
      jupiter_y_0+=-pow(t,exp)*     0.00114043110*    1162.47470440780*sin( 4.72982262969 +     1162.47470440780*t);

      return jupiter_y_0;
   }

   static double jupiter_y_1_(double t){
      double jupiter_y_1=0.0;
      double exp=1;
      jupiter_y_1+=pow(t,exp-1)*exp*     0.01694798253*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.01694798253*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00634859798*cos( 4.81903199650 +     1059.38193018920*t)-pow(t,exp)*     0.00634859798*    1059.38193018920*sin( 4.81903199650 +     1059.38193018920*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00601160431*cos( 0.85811249940 +      522.57741809380*t)-pow(t,exp)*     0.00601160431*     522.57741809380*sin( 0.85811249940 +      522.57741809380*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00588928504*cos( 0.34491576890 +      536.80451209540*t)-pow(t,exp)*     0.00588928504*     536.80451209540*sin( 0.34491576890 +      536.80451209540*t);

      return jupiter_y_1;
   }

   static double jupiter_y_2_(double t){
      double jupiter_y_2=0.0;
      double exp=2;
      jupiter_y_2+=pow(t,exp-1)*exp*     0.00124032509*cos( 2.56495576833 +      522.57741809380*t)-pow(t,exp)*     0.00124032509*     522.57741809380*sin( 2.56495576833 +      522.57741809380*t);
      jupiter_y_2+=pow(t,exp-1)*exp*     0.00121455991*cos( 4.92398766380 +      536.80451209540*t)-pow(t,exp)*     0.00121455991*     536.80451209540*sin( 4.92398766380 +      536.80451209540*t);

      return jupiter_y_2;
   }

   static double jupiter_y(double t){
      return jupiter_y_0_(t)+jupiter_y_1_(t)+jupiter_y_2_(t);
   }

   static double jupiter_z_0_(double t){
      double jupiter_z_0=0.0;
      double exp=0;
      jupiter_z_0+=-pow(t,exp)*     0.11823100489*     529.69096509460*sin( 3.55844646343 +      529.69096509460*t);
      jupiter_z_0+=-pow(t,exp)*     0.00859031952*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_z_0+=-pow(t,exp)*     0.00286562094*    1059.38193018920*sin( 3.90812238338 +     1059.38193018920*t);

      return jupiter_z_0;
   }

   static double jupiter_z_1_(double t){
      double jupiter_z_1=0.0;
      double exp=1;
      jupiter_z_1+=pow(t,exp-1)*exp*     0.00407072175*cos( 1.52699353482 +      529.69096509460*t)-pow(t,exp)*     0.00407072175*     529.69096509460*sin( 1.52699353482 +      529.69096509460*t);

      return jupiter_z_1;
   }

   static double jupiter_z(double t){
      return jupiter_z_0_(t)+jupiter_z_1_(t);
   }

}
