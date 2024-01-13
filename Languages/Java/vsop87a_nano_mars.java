//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87a_nano_mars{
   static double mars_x_0_(double t){
      double mars_x_0=0.0;
      mars_x_0+=     1.51769936383 * cos( 6.20403346548 +     3340.61242669980*t);
      mars_x_0+=     0.19502945246 * cos( 3.14159265359 +        0.00000000000*t);
      mars_x_0+=     0.07070919655 * cos( 0.25870338558 +     6681.22485339960*t);
      mars_x_0+=     0.00494196914 * cos( 0.59669127768 +    10021.83728009940*t);

      return mars_x_0;
   }

   static double mars_x_1_(double t){
      double mars_x_1=0.0;
      mars_x_1+=     0.00861441374 * cos( 3.14159265359 +        0.00000000000*t);
      mars_x_1+=     0.00552437949 * cos( 5.09565872891 +     6681.22485339960*t);
      mars_x_1=mars_x_1 * t;

      return mars_x_1;
   }

   static double mars_x(double t){
      return mars_x_0_(t)+mars_x_1_(t);
   }

   static double mars_y_0_(double t){
      double mars_y_0=0.0;
      mars_y_0+=     1.51558976277 * cos( 4.63212206588 +     3340.61242669980*t);
      mars_y_0+=     0.07064550239 * cos( 4.97051892902 +     6681.22485339960*t);
      mars_y_0+=     0.08655481102 * cos( 0.00000000000 +        0.00000000000*t);
      mars_y_0+=     0.00493872848 * cos( 5.30877806694 +    10021.83728009940*t);

      return mars_y_0;
   }

   static double mars_y_1_(double t){
      double mars_y_1=0.0;
      mars_y_1+=     0.01427324210 * cos( 3.14159265359 +        0.00000000000*t);
      mars_y_1+=     0.00551063753 * cos( 3.52128320402 +     6681.22485339960*t);
      mars_y_1=mars_y_1 * t;

      return mars_y_1;
   }

   static double mars_y(double t){
      return mars_y_0_(t)+mars_y_1_(t);
   }

   static double mars_z_0_(double t){
      double mars_z_0=0.0;
      mars_z_0+=     0.04901207220 * cos( 3.76712324286 +     3340.61242669980*t);
      mars_z_0+=     0.00660669541 * cos( 0.00000000000 +        0.00000000000*t);
      mars_z_0+=     0.00228333904 * cos( 4.10544022266 +     6681.22485339960*t);

      return mars_z_0;
   }

   static double mars_z_1_(double t){
      double mars_z_1=0.0;
      mars_z_1+=     0.00331842958 * cos( 6.05027773492 +     3340.61242669980*t);
      mars_z_1=mars_z_1 * t;

      return mars_z_1;
   }

   static double mars_z(double t){
      return mars_z_0_(t)+mars_z_1_(t);
   }

}
