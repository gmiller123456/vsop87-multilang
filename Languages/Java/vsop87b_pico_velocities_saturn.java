//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_pico_velocities_saturn{
   static double saturn_l_0_(double t){
      double saturn_l_0=0.0;
      double exp=0;
      saturn_l_0+=-pow(t,exp)*     0.87401354025*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      saturn_l_0+=-pow(t,exp)*     0.11107659762*     213.29909543800*sin( 3.96205090159 +      213.29909543800*t);
      saturn_l_0+=-pow(t,exp)*     0.01414150957*       7.11354700080*sin( 4.58581516874 +        7.11354700080*t);

      return saturn_l_0;
   }

   static double saturn_l_1_(double t){
      double saturn_l_1=0.0;
      double exp=1;
      saturn_l_1+=pow(t,exp-1)*exp*   213.29909521690*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*   213.29909521690*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.01297370862*cos( 1.82834923978 +      213.29909543800*t)-pow(t,exp)*     0.01297370862*     213.29909543800*sin( 1.82834923978 +      213.29909543800*t);

      return saturn_l_1;
   }

   static double saturn_l(double t){
      return saturn_l_0_(t)+saturn_l_1_(t);
   }

   static double saturn_b_0_(double t){
      double saturn_b_0=0.0;
      double exp=0;
      saturn_b_0+=-pow(t,exp)*     0.04330678039*     213.29909543800*sin( 3.60284428399 +      213.29909543800*t);

      return saturn_b_0;
   }

   static double saturn_b(double t){
      return saturn_b_0_(t);
   }

   static double saturn_r_0_(double t){
      double saturn_r_0=0.0;
      double exp=0;
      saturn_r_0+=-pow(t,exp)*     9.55758135486*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      saturn_r_0+=-pow(t,exp)*     0.52921382865*     213.29909543800*sin( 2.39226219573 +      213.29909543800*t);
      saturn_r_0+=-pow(t,exp)*     0.01873679867*     206.18554843720*sin( 5.23549604660 +      206.18554843720*t);
      saturn_r_0+=-pow(t,exp)*     0.01464663929*     426.59819087600*sin( 1.64763042902 +      426.59819087600*t);

      return saturn_r_0;
   }

   static double saturn_r_1_(double t){
      double saturn_r_1=0.0;
      double exp=1;
      saturn_r_1+=pow(t,exp-1)*exp*     0.06182981340*cos( 0.25843511480 +      213.29909543800*t)-pow(t,exp)*     0.06182981340*     213.29909543800*sin( 0.25843511480 +      213.29909543800*t);

      return saturn_r_1;
   }

   static double saturn_r(double t){
      return saturn_r_0_(t)+saturn_r_1_(t);
   }

}
