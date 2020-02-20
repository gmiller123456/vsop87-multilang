//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87a_milli_mercury{
   static double mercury_x_0_(double t){
      double mercury_x_0=0.0;
      mercury_x_0+=     0.37546291728 * cos( 4.39651506942 +    26087.90314157420*t);
      mercury_x_0+=     0.03825746672 * cos( 1.16485604339 +    52175.80628314840*t);
      mercury_x_0+=     0.02625615963 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_x_0+=     0.00584261333 * cos( 4.21599394757 +    78263.70942472259*t);
      mercury_x_0+=     0.00105716695 * cos( 0.98379033182 +   104351.61256629678*t);
      mercury_x_0+=     0.00021011730 * cos( 4.03469353923 +   130439.51570787099*t);
      mercury_x_0+=     0.00004433373 * cos( 0.80236674527 +   156527.41884944518*t);

      return mercury_x_0;
   }

   static double mercury_x_1_(double t){
      double mercury_x_1=0.0;
      mercury_x_1+=     0.00318848034 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_x_1+=     0.00105289019 * cos( 5.91600475006 +    52175.80628314840*t);
      mercury_x_1+=     0.00032316001 * cos( 2.68247273347 +    78263.70942472259*t);
      mercury_x_1+=     0.00011992889 * cos( 5.81575112963 +    26087.90314157420*t);
      mercury_x_1+=     0.00008783200 * cos( 5.73285747425 +   104351.61256629678*t);
      mercury_x_1+=     0.00002329042 * cos( 2.50023793407 +   130439.51570787099*t);
      mercury_x_1=mercury_x_1 * t;

      return mercury_x_1;
   }

   static double mercury_x_2_(double t){
      double mercury_x_2=0.0;
      mercury_x_2+=     0.00001484185 * cos( 4.35401210269 +    52175.80628314840*t);
      mercury_x_2+=     0.00001214995 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_x_2=mercury_x_2 * t * t;

      return mercury_x_2;
   }

   static double mercury_x(double t){
      return mercury_x_0_(t)+mercury_x_1_(t)+mercury_x_2_(t);
   }

   static double mercury_y_0_(double t){
      double mercury_y_0=0.0;
      mercury_y_0+=     0.37953642888 * cos( 2.83780617820 +    26087.90314157420*t);
      mercury_y_0+=     0.11626131831 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_y_0+=     0.03854668215 * cos( 5.88780608966 +    52175.80628314840*t);
      mercury_y_0+=     0.00587711268 * cos( 2.65498896201 +    78263.70942472259*t);
      mercury_y_0+=     0.00106235493 * cos( 5.70550616735 +   104351.61256629678*t);
      mercury_y_0+=     0.00021100828 * cos( 2.47291315849 +   130439.51570787099*t);
      mercury_y_0+=     0.00004450056 * cos( 5.52354907071 +   156527.41884944518*t);

      return mercury_y_0;
   }

   static double mercury_y_1_(double t){
      double mercury_y_1=0.0;
      mercury_y_1+=     0.00107803852 * cos( 4.34964793883 +    52175.80628314840*t);
      mercury_y_1+=     0.00080651544 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_y_1+=     0.00032715354 * cos( 1.11763734425 +    78263.70942472259*t);
      mercury_y_1+=     0.00008858158 * cos( 4.16852401867 +   104351.61256629678*t);
      mercury_y_1+=     0.00011914709 * cos( 1.22139986340 +    26087.90314157420*t);
      mercury_y_1+=     0.00002344469 * cos( 0.93615372641 +   130439.51570787099*t);
      mercury_y_1=mercury_y_1 * t;

      return mercury_y_1;
   }

   static double mercury_y_2_(double t){
      double mercury_y_2=0.0;
      mercury_y_2+=     0.00004612157 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_y_2+=     0.00001575670 * cos( 2.81172733349 +    52175.80628314840*t);
      mercury_y_2=mercury_y_2 * t * t;

      return mercury_y_2;
   }

   static double mercury_y(double t){
      return mercury_y_0_(t)+mercury_y_1_(t)+mercury_y_2_(t);
   }

   static double mercury_z_0_(double t){
      double mercury_z_0=0.0;
      mercury_z_0+=     0.04607665326 * cos( 1.99295081967 +    26087.90314157420*t);
      mercury_z_0+=     0.00708734365 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_z_0+=     0.00469171617 * cos( 5.04215742764 +    52175.80628314840*t);
      mercury_z_0+=     0.00071626395 * cos( 1.80894256071 +    78263.70942472259*t);
      mercury_z_0+=     0.00012957446 * cos( 4.85922032010 +   104351.61256629678*t);
      mercury_z_0+=     0.00002575002 * cos( 1.62646731545 +   130439.51570787099*t);

      return mercury_z_0;
   }

   static double mercury_z_1_(double t){
      double mercury_z_1=0.0;
      mercury_z_1+=     0.00108722177 * cos( 3.91134750825 +    26087.90314157420*t);
      mercury_z_1+=     0.00057826621 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_z_1+=     0.00004297352 * cos( 2.56373047177 +    52175.80628314840*t);
      mercury_z_1+=     0.00002435833 * cos( 0.05112640506 +    78263.70942472259*t);
      mercury_z_1=mercury_z_1 * t;

      return mercury_z_1;
   }

   static double mercury_z_2_(double t){
      double mercury_z_2=0.0;
      mercury_z_2+=     0.00001053118 * cos( 5.37979214357 +    26087.90314157420*t);
      mercury_z_2+=     0.00001185024 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_z_2=mercury_z_2 * t * t;

      return mercury_z_2;
   }

   static double mercury_z(double t){
      return mercury_z_0_(t)+mercury_z_1_(t)+mercury_z_2_(t);
   }

}
