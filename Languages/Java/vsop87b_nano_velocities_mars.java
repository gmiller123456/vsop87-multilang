//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_nano_velocities_mars{
   static double mars_l_0_(double t){
      double mars_l_0=0.0;
      double exp=0;
      mars_l_0+=-pow(t,exp)*     6.20347711581*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mars_l_0+=-pow(t,exp)*     0.18656368093*    3340.61242669980*sin( 5.05037100270 +     3340.61242669980*t);
      mars_l_0+=-pow(t,exp)*     0.01108216816*    6681.22485339960*sin( 5.40099836344 +     6681.22485339960*t);

      return mars_l_0;
   }

   static double mars_l_1_(double t){
      double mars_l_1=0.0;
      double exp=1;
      mars_l_1+=pow(t,exp-1)*exp*  3340.61242700512*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*  3340.61242700512*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mars_l_1+=pow(t,exp-1)*exp*     0.01457554523*cos( 3.60433733236 +     3340.61242669980*t)-pow(t,exp)*     0.01457554523*    3340.61242669980*sin( 3.60433733236 +     3340.61242669980*t);
      mars_l_1+=pow(t,exp-1)*exp*     0.00168414711*cos( 3.92318567804 +     6681.22485339960*t)-pow(t,exp)*     0.00168414711*    6681.22485339960*sin( 3.92318567804 +     6681.22485339960*t);

      return mars_l_1;
   }

   static double mars_l(double t){
      return mars_l_0_(t)+mars_l_1_(t);
   }

   static double mars_b_0_(double t){
      double mars_b_0=0.0;
      double exp=0;
      mars_b_0+=-pow(t,exp)*     0.03197134986*    3340.61242669980*sin( 3.76832042431 +     3340.61242669980*t);
      mars_b_0+=-pow(t,exp)*     0.00298033234*    6681.22485339960*sin( 4.10616996305 +     6681.22485339960*t);
      mars_b_0+=-pow(t,exp)*     0.00289104742*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return mars_b_0;
   }

   static double mars_b_1_(double t){
      double mars_b_1=0.0;
      double exp=1;
      mars_b_1+=pow(t,exp-1)*exp*     0.00217310991*cos( 6.04472194776 +     3340.61242669980*t)-pow(t,exp)*     0.00217310991*    3340.61242669980*sin( 6.04472194776 +     3340.61242669980*t);

      return mars_b_1;
   }

   static double mars_b(double t){
      return mars_b_0_(t)+mars_b_1_(t);
   }

   static double mars_r_0_(double t){
      double mars_r_0=0.0;
      double exp=0;
      mars_r_0+=-pow(t,exp)*     1.53033488271*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mars_r_0+=-pow(t,exp)*     0.14184953160*    3340.61242669980*sin( 3.47971283528 +     3340.61242669980*t);
      mars_r_0+=-pow(t,exp)*     0.00660776362*    6681.22485339960*sin( 3.81783443019 +     6681.22485339960*t);

      return mars_r_0;
   }

   static double mars_r_1_(double t){
      double mars_r_1=0.0;
      double exp=1;
      mars_r_1+=pow(t,exp-1)*exp*     0.01107433345*cos( 2.03250524857 +     3340.61242669980*t)-pow(t,exp)*     0.01107433345*    3340.61242669980*sin( 2.03250524857 +     3340.61242669980*t);
      mars_r_1+=pow(t,exp-1)*exp*     0.00103175887*cos( 2.37071847807 +     6681.22485339960*t)-pow(t,exp)*     0.00103175887*    6681.22485339960*sin( 2.37071847807 +     6681.22485339960*t);

      return mars_r_1;
   }

   static double mars_r(double t){
      return mars_r_0_(t)+mars_r_1_(t);
   }

}
