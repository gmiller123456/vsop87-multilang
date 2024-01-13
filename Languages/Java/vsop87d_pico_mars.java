//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87d_pico_mars{
   static double mars_l_0_(double t){
      double mars_l_0=0.0;
      mars_l_0+=     6.20347711583 * cos( 0.00000000000 +        0.00000000000*t);
      mars_l_0+=     0.18656368100 * cos( 5.05037100303 +     3340.61242669980*t);
      mars_l_0+=     0.01108216792 * cos( 5.40099836958 +     6681.22485339960*t);

      return mars_l_0;
   }

   static double mars_l_1_(double t){
      double mars_l_1=0.0;
      mars_l_1+=  3340.85627474342 * cos( 0.00000000000 +        0.00000000000*t);
      mars_l_1+=     0.01458227051 * cos( 3.60426053609 +     3340.61242669980*t);
      mars_l_1=mars_l_1 * t;

      return mars_l_1;
   }

   static double mars_l(double t){
      return mars_l_0_(t)+mars_l_1_(t);
   }

   static double mars_b_0_(double t){
      double mars_b_0=0.0;
      mars_b_0+=     0.03197134986 * cos( 3.76832042432 +     3340.61242669980*t);

      return mars_b_0;
   }

   static double mars_b(double t){
      return mars_b_0_(t);
   }

   static double mars_r_0_(double t){
      double mars_r_0=0.0;
      mars_r_0+=     1.53033488276 * cos( 0.00000000000 +        0.00000000000*t);
      mars_r_0+=     0.14184953153 * cos( 3.47971283519 +     3340.61242669980*t);

      return mars_r_0;
   }

   static double mars_r_1_(double t){
      double mars_r_1=0.0;
      mars_r_1+=     0.01107433340 * cos( 2.03250524950 +     3340.61242669980*t);
      mars_r_1=mars_r_1 * t;

      return mars_r_1;
   }

   static double mars_r(double t){
      return mars_r_0_(t)+mars_r_1_(t);
   }

}
