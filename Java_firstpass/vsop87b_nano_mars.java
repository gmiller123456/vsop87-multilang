import static java.lang.Math.*;

public class vsop87b_nano_mars{
   static double mars_l(double t){
      double mars_l_0=0.0;
      mars_l_0+=     6.20347711581 * cos( 0.00000000000 +        0.00000000000*t);
      mars_l_0+=     0.18656368093 * cos( 5.05037100270 +     3340.61242669980*t);
      mars_l_0+=     0.01108216816 * cos( 5.40099836344 +     6681.22485339960*t);

      double mars_l_1=0.0;
      mars_l_1+=  3340.61242700512 * cos( 0.00000000000 +        0.00000000000*t);
      mars_l_1+=     0.01457554523 * cos( 3.60433733236 +     3340.61242669980*t);
      mars_l_1+=     0.00168414711 * cos( 3.92318567804 +     6681.22485339960*t);
      mars_l_1=mars_l_1 * t;

      return mars_l_0+mars_l_1;
   }

   static double mars_b(double t){
      double mars_b_0=0.0;
      mars_b_0+=     0.03197134986 * cos( 3.76832042431 +     3340.61242669980*t);
      mars_b_0+=     0.00298033234 * cos( 4.10616996305 +     6681.22485339960*t);
      mars_b_0+=     0.00289104742 * cos( 0.00000000000 +        0.00000000000*t);

      double mars_b_1=0.0;
      mars_b_1+=     0.00217310991 * cos( 6.04472194776 +     3340.61242669980*t);
      mars_b_1=mars_b_1 * t;

      return mars_b_0+mars_b_1;
   }

   static double mars_r(double t){
      double mars_r_0=0.0;
      mars_r_0+=     1.53033488271 * cos( 0.00000000000 +        0.00000000000*t);
      mars_r_0+=     0.14184953160 * cos( 3.47971283528 +     3340.61242669980*t);
      mars_r_0+=     0.00660776362 * cos( 3.81783443019 +     6681.22485339960*t);

      double mars_r_1=0.0;
      mars_r_1+=     0.01107433345 * cos( 2.03250524857 +     3340.61242669980*t);
      mars_r_1+=     0.00103175887 * cos( 2.37071847807 +     6681.22485339960*t);
      mars_r_1=mars_r_1 * t;

      return mars_r_0+mars_r_1;
   }

}
