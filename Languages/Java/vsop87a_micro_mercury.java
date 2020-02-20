//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87a_micro_mercury{
   static double mercury_x_0_(double t){
      double mercury_x_0=0.0;
      mercury_x_0+=     0.37546291728 * cos( 4.39651506942 +    26087.90314157420*t);
      mercury_x_0+=     0.03825746672 * cos( 1.16485604339 +    52175.80628314840*t);
      mercury_x_0+=     0.02625615963 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_x_0+=     0.00584261333 * cos( 4.21599394757 +    78263.70942472259*t);
      mercury_x_0+=     0.00105716695 * cos( 0.98379033182 +   104351.61256629678*t);
      mercury_x_0+=     0.00021011730 * cos( 4.03469353923 +   130439.51570787099*t);

      return mercury_x_0;
   }

   static double mercury_x_1_(double t){
      double mercury_x_1=0.0;
      mercury_x_1+=     0.00318848034 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_x_1+=     0.00105289019 * cos( 5.91600475006 +    52175.80628314840*t);
      mercury_x_1+=     0.00032316001 * cos( 2.68247273347 +    78263.70942472259*t);
      mercury_x_1+=     0.00011992889 * cos( 5.81575112963 +    26087.90314157420*t);
      mercury_x_1=mercury_x_1 * t;

      return mercury_x_1;
   }

   static double mercury_x(double t){
      return mercury_x_0_(t)+mercury_x_1_(t);
   }

   static double mercury_y_0_(double t){
      double mercury_y_0=0.0;
      mercury_y_0+=     0.37953642888 * cos( 2.83780617820 +    26087.90314157420*t);
      mercury_y_0+=     0.11626131831 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_y_0+=     0.03854668215 * cos( 5.88780608966 +    52175.80628314840*t);
      mercury_y_0+=     0.00587711268 * cos( 2.65498896201 +    78263.70942472259*t);
      mercury_y_0+=     0.00106235493 * cos( 5.70550616735 +   104351.61256629678*t);
      mercury_y_0+=     0.00021100828 * cos( 2.47291315849 +   130439.51570787099*t);

      return mercury_y_0;
   }

   static double mercury_y_1_(double t){
      double mercury_y_1=0.0;
      mercury_y_1+=     0.00107803852 * cos( 4.34964793883 +    52175.80628314840*t);
      mercury_y_1+=     0.00080651544 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_y_1+=     0.00032715354 * cos( 1.11763734425 +    78263.70942472259*t);
      mercury_y_1+=     0.00011914709 * cos( 1.22139986340 +    26087.90314157420*t);
      mercury_y_1=mercury_y_1 * t;

      return mercury_y_1;
   }

   static double mercury_y(double t){
      return mercury_y_0_(t)+mercury_y_1_(t);
   }

   static double mercury_z_0_(double t){
      double mercury_z_0=0.0;
      mercury_z_0+=     0.04607665326 * cos( 1.99295081967 +    26087.90314157420*t);
      mercury_z_0+=     0.00708734365 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_z_0+=     0.00469171617 * cos( 5.04215742764 +    52175.80628314840*t);
      mercury_z_0+=     0.00071626395 * cos( 1.80894256071 +    78263.70942472259*t);
      mercury_z_0+=     0.00012957446 * cos( 4.85922032010 +   104351.61256629678*t);

      return mercury_z_0;
   }

   static double mercury_z_1_(double t){
      double mercury_z_1=0.0;
      mercury_z_1+=     0.00108722177 * cos( 3.91134750825 +    26087.90314157420*t);
      mercury_z_1+=     0.00057826621 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_z_1=mercury_z_1 * t;

      return mercury_z_1;
   }

   static double mercury_z(double t){
      return mercury_z_0_(t)+mercury_z_1_(t);
   }

}
