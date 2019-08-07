import static java.lang.Math.*;

public class vsop87d_micro_mars{
   static double mars_l_0_(double t){
      double mars_l_0=0.0;
      mars_l_0+=     6.20347711583 * cos( 0.00000000000 +        0.00000000000*t);
      mars_l_0+=     0.18656368100 * cos( 5.05037100303 +     3340.61242669980*t);
      mars_l_0+=     0.01108216792 * cos( 5.40099836958 +     6681.22485339960*t);
      mars_l_0+=     0.00091798394 * cos( 5.75478745111 +    10021.83728009940*t);
      mars_l_0+=     0.00027744987 * cos( 5.97049512942 +        3.52311834900*t);
      mars_l_0+=     0.00010610230 * cos( 2.93958524973 +     2281.23049651060*t);
      mars_l_0+=     0.00012315897 * cos( 0.84956081238 +     2810.92146160520*t);

      return mars_l_0;
   }

   static double mars_l_1_(double t){
      double mars_l_1=0.0;
      mars_l_1+=  3340.85627474342 * cos( 0.00000000000 +        0.00000000000*t);
      mars_l_1+=     0.01458227051 * cos( 3.60426053609 +     3340.61242669980*t);
      mars_l_1+=     0.00164901343 * cos( 3.92631250962 +     6681.22485339960*t);
      mars_l_1+=     0.00019963338 * cos( 4.26594061030 +    10021.83728009940*t);
      mars_l_1=mars_l_1 * t;

      return mars_l_1;
   }

   static double mars_l_2_(double t){
      double mars_l_2=0.0;
      mars_l_2+=     0.00058015791 * cos( 2.04979463279 +     3340.61242669980*t);
      mars_l_2+=     0.00054187645 * cos( 0.00000000000 +        0.00000000000*t);
      mars_l_2+=     0.00013908426 * cos( 2.45742359888 +     6681.22485339960*t);
      mars_l_2=mars_l_2 * t * t;

      return mars_l_2;
   }

   static double mars_l(double t){
      return mars_l_0_(t)+mars_l_1_(t)+mars_l_2_(t);
   }

   static double mars_b_0_(double t){
      double mars_b_0=0.0;
      mars_b_0+=     0.03197134986 * cos( 3.76832042432 +     3340.61242669980*t);
      mars_b_0+=     0.00298033234 * cos( 4.10616996243 +     6681.22485339960*t);
      mars_b_0+=     0.00289104742 * cos( 0.00000000000 +        0.00000000000*t);
      mars_b_0+=     0.00031365538 * cos( 4.44651052853 +    10021.83728009940*t);

      return mars_b_0;
   }

   static double mars_b_1_(double t){
      double mars_b_1=0.0;
      mars_b_1+=     0.00350068845 * cos( 5.36847836211 +     3340.61242669980*t);
      mars_b_1+=     0.00014116030 * cos( 3.14159265359 +        0.00000000000*t);
      mars_b_1=mars_b_1 * t;

      return mars_b_1;
   }

   static double mars_b_2_(double t){
      double mars_b_2=0.0;
      mars_b_2+=     0.00016726690 * cos( 0.60221392419 +     3340.61242669980*t);
      mars_b_2=mars_b_2 * t * t;

      return mars_b_2;
   }

   static double mars_b(double t){
      return mars_b_0_(t)+mars_b_1_(t)+mars_b_2_(t);
   }

   static double mars_r_0_(double t){
      double mars_r_0=0.0;
      mars_r_0+=     1.53033488276 * cos( 0.00000000000 +        0.00000000000*t);
      mars_r_0+=     0.14184953153 * cos( 3.47971283519 +     3340.61242669980*t);
      mars_r_0+=     0.00660776357 * cos( 3.81783442097 +     6681.22485339960*t);
      mars_r_0+=     0.00046179117 * cos( 4.15595316284 +    10021.83728009940*t);

      return mars_r_0;
   }

   static double mars_r_1_(double t){
      double mars_r_1=0.0;
      mars_r_1+=     0.01107433340 * cos( 2.03250524950 +     3340.61242669980*t);
      mars_r_1+=     0.00103175886 * cos( 2.37071845682 +     6681.22485339960*t);
      mars_r_1+=     0.00012877200 * cos( 0.00000000000 +        0.00000000000*t);
      mars_r_1+=     0.00010815880 * cos( 2.70888093803 +    10021.83728009940*t);
      mars_r_1=mars_r_1 * t;

      return mars_r_1;
   }

   static double mars_r_2_(double t){
      double mars_r_2=0.0;
      mars_r_2+=     0.00044242247 * cos( 0.47930603943 +     3340.61242669980*t);
      mars_r_2=mars_r_2 * t * t;

      return mars_r_2;
   }

   static double mars_r(double t){
      return mars_r_0_(t)+mars_r_1_(t)+mars_r_2_(t);
   }

}
