//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87d_pico_velocities_saturn{
   static double saturn_l_0_(double t){
      double saturn_l_0=0.0;
      double exp=0;
      saturn_l_0+=-pow(t,exp)*     0.87401354029*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      saturn_l_0+=-pow(t,exp)*     0.11107659780*     213.29909543800*sin( 3.96205090194 +      213.29909543800*t);
      saturn_l_0+=-pow(t,exp)*     0.01414150958*       7.11354700080*sin( 4.58581515873 +        7.11354700080*t);

      return saturn_l_0;
   }

   static double saturn_l_1_(double t){
      double saturn_l_1=0.0;
      double exp=1;
      saturn_l_1+=pow(t,exp-1)*exp*   213.54295595986*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*   213.54295595986*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.01296855005*cos( 1.82820544701 +      213.29909543800*t)-pow(t,exp)*     0.01296855005*     213.29909543800*sin( 1.82820544701 +      213.29909543800*t);

      return saturn_l_1;
   }

   static double saturn_l(double t){
      return saturn_l_0_(t)+saturn_l_1_(t);
   }

   static double saturn_b_0_(double t){
      double saturn_b_0=0.0;
      double exp=0;
      saturn_b_0+=-pow(t,exp)*     0.04330678040*     213.29909543800*sin( 3.60284428399 +      213.29909543800*t);

      return saturn_b_0;
   }

   static double saturn_b(double t){
      return saturn_b_0_(t);
   }

   static double saturn_r_0_(double t){
      double saturn_r_0=0.0;
      double exp=0;
      saturn_r_0+=-pow(t,exp)*     9.55758135801*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      saturn_r_0+=-pow(t,exp)*     0.52921382465*     213.29909543800*sin( 2.39226219733 +      213.29909543800*t);
      saturn_r_0+=-pow(t,exp)*     0.01873679934*     206.18554843720*sin( 5.23549605091 +      206.18554843720*t);
      saturn_r_0+=-pow(t,exp)*     0.01464663959*     426.59819087600*sin( 1.64763045468 +      426.59819087600*t);

      return saturn_r_0;
   }

   static double saturn_r_1_(double t){
      double saturn_r_1=0.0;
      double exp=1;
      saturn_r_1+=pow(t,exp-1)*exp*     0.06182981282*cos( 0.25843515034 +      213.29909543800*t)-pow(t,exp)*     0.06182981282*     213.29909543800*sin( 0.25843515034 +      213.29909543800*t);

      return saturn_r_1;
   }

   static double saturn_r(double t){
      return saturn_r_0_(t)+saturn_r_1_(t);
   }

}
