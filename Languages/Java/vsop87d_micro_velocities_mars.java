//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87d_micro_velocities_mars{
   static double mars_l_0_(double t){
      double mars_l_0=0.0;
      double exp=0;
      mars_l_0+=-pow(t,exp)*     6.20347711583*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mars_l_0+=-pow(t,exp)*     0.18656368100*    3340.61242669980*sin( 5.05037100303 +     3340.61242669980*t);
      mars_l_0+=-pow(t,exp)*     0.01108216792*    6681.22485339960*sin( 5.40099836958 +     6681.22485339960*t);
      mars_l_0+=-pow(t,exp)*     0.00091798394*   10021.83728009940*sin( 5.75478745111 +    10021.83728009940*t);
      mars_l_0+=-pow(t,exp)*     0.00027744987*       3.52311834900*sin( 5.97049512942 +        3.52311834900*t);
      mars_l_0+=-pow(t,exp)*     0.00010610230*    2281.23049651060*sin( 2.93958524973 +     2281.23049651060*t);
      mars_l_0+=-pow(t,exp)*     0.00012315897*    2810.92146160520*sin( 0.84956081238 +     2810.92146160520*t);

      return mars_l_0;
   }

   static double mars_l_1_(double t){
      double mars_l_1=0.0;
      double exp=1;
      mars_l_1+=pow(t,exp-1)*exp*  3340.85627474342*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*  3340.85627474342*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mars_l_1+=pow(t,exp-1)*exp*     0.01458227051*cos( 3.60426053609 +     3340.61242669980*t)-pow(t,exp)*     0.01458227051*    3340.61242669980*sin( 3.60426053609 +     3340.61242669980*t);
      mars_l_1+=pow(t,exp-1)*exp*     0.00164901343*cos( 3.92631250962 +     6681.22485339960*t)-pow(t,exp)*     0.00164901343*    6681.22485339960*sin( 3.92631250962 +     6681.22485339960*t);
      mars_l_1+=pow(t,exp-1)*exp*     0.00019963338*cos( 4.26594061030 +    10021.83728009940*t)-pow(t,exp)*     0.00019963338*   10021.83728009940*sin( 4.26594061030 +    10021.83728009940*t);

      return mars_l_1;
   }

   static double mars_l_2_(double t){
      double mars_l_2=0.0;
      double exp=2;
      mars_l_2+=pow(t,exp-1)*exp*     0.00058015791*cos( 2.04979463279 +     3340.61242669980*t)-pow(t,exp)*     0.00058015791*    3340.61242669980*sin( 2.04979463279 +     3340.61242669980*t);
      mars_l_2+=pow(t,exp-1)*exp*     0.00054187645*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00054187645*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mars_l_2+=pow(t,exp-1)*exp*     0.00013908426*cos( 2.45742359888 +     6681.22485339960*t)-pow(t,exp)*     0.00013908426*    6681.22485339960*sin( 2.45742359888 +     6681.22485339960*t);

      return mars_l_2;
   }

   static double mars_l(double t){
      return mars_l_0_(t)+mars_l_1_(t)+mars_l_2_(t);
   }

   static double mars_b_0_(double t){
      double mars_b_0=0.0;
      double exp=0;
      mars_b_0+=-pow(t,exp)*     0.03197134986*    3340.61242669980*sin( 3.76832042432 +     3340.61242669980*t);
      mars_b_0+=-pow(t,exp)*     0.00298033234*    6681.22485339960*sin( 4.10616996243 +     6681.22485339960*t);
      mars_b_0+=-pow(t,exp)*     0.00289104742*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mars_b_0+=-pow(t,exp)*     0.00031365538*   10021.83728009940*sin( 4.44651052853 +    10021.83728009940*t);

      return mars_b_0;
   }

   static double mars_b_1_(double t){
      double mars_b_1=0.0;
      double exp=1;
      mars_b_1+=pow(t,exp-1)*exp*     0.00350068845*cos( 5.36847836211 +     3340.61242669980*t)-pow(t,exp)*     0.00350068845*    3340.61242669980*sin( 5.36847836211 +     3340.61242669980*t);
      mars_b_1+=pow(t,exp-1)*exp*     0.00014116030*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00014116030*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);

      return mars_b_1;
   }

   static double mars_b_2_(double t){
      double mars_b_2=0.0;
      double exp=2;
      mars_b_2+=pow(t,exp-1)*exp*     0.00016726690*cos( 0.60221392419 +     3340.61242669980*t)-pow(t,exp)*     0.00016726690*    3340.61242669980*sin( 0.60221392419 +     3340.61242669980*t);

      return mars_b_2;
   }

   static double mars_b(double t){
      return mars_b_0_(t)+mars_b_1_(t)+mars_b_2_(t);
   }

   static double mars_r_0_(double t){
      double mars_r_0=0.0;
      double exp=0;
      mars_r_0+=-pow(t,exp)*     1.53033488276*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mars_r_0+=-pow(t,exp)*     0.14184953153*    3340.61242669980*sin( 3.47971283519 +     3340.61242669980*t);
      mars_r_0+=-pow(t,exp)*     0.00660776357*    6681.22485339960*sin( 3.81783442097 +     6681.22485339960*t);
      mars_r_0+=-pow(t,exp)*     0.00046179117*   10021.83728009940*sin( 4.15595316284 +    10021.83728009940*t);

      return mars_r_0;
   }

   static double mars_r_1_(double t){
      double mars_r_1=0.0;
      double exp=1;
      mars_r_1+=pow(t,exp-1)*exp*     0.01107433340*cos( 2.03250524950 +     3340.61242669980*t)-pow(t,exp)*     0.01107433340*    3340.61242669980*sin( 2.03250524950 +     3340.61242669980*t);
      mars_r_1+=pow(t,exp-1)*exp*     0.00103175886*cos( 2.37071845682 +     6681.22485339960*t)-pow(t,exp)*     0.00103175886*    6681.22485339960*sin( 2.37071845682 +     6681.22485339960*t);
      mars_r_1+=pow(t,exp-1)*exp*     0.00012877200*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00012877200*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mars_r_1+=pow(t,exp-1)*exp*     0.00010815880*cos( 2.70888093803 +    10021.83728009940*t)-pow(t,exp)*     0.00010815880*   10021.83728009940*sin( 2.70888093803 +    10021.83728009940*t);

      return mars_r_1;
   }

   static double mars_r_2_(double t){
      double mars_r_2=0.0;
      double exp=2;
      mars_r_2+=pow(t,exp-1)*exp*     0.00044242247*cos( 0.47930603943 +     3340.61242669980*t)-pow(t,exp)*     0.00044242247*    3340.61242669980*sin( 0.47930603943 +     3340.61242669980*t);

      return mars_r_2;
   }

   static double mars_r(double t){
      return mars_r_0_(t)+mars_r_1_(t)+mars_r_2_(t);
   }

}
