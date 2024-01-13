//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_pico_saturn{
   static double saturn_a_0_(double t){
      double saturn_a_0=0.0;
      saturn_a_0+=     9.55490959574 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_a_0+=     0.03363448736 * cos( 6.00973673460 +      316.39186965660*t);

      return saturn_a_0;
   }

   static double saturn_a(double t){
      return saturn_a_0_(t);
   }

   static double saturn_l_0_(double t){
      double saturn_l_0=0.0;
      saturn_l_0+=     0.87401675650 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_0+=     0.01411655077 * cos( 4.58553469006 +        7.11354700080*t);

      return saturn_l_0;
   }

   static double saturn_l_1_(double t){
      double saturn_l_1=0.0;
      saturn_l_1+=   213.29909543800 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_1=saturn_l_1 * t;

      return saturn_l_1;
   }

   static double saturn_l(double t){
      return saturn_l_0_(t)+saturn_l_1_(t);
   }

   static double saturn_k(double t){
      return 0;
   }

   static double saturn_h_0_(double t){
      double saturn_h_0=0.0;
      saturn_h_0+=     0.05542964254 * cos( 0.00000000000 +        0.00000000000*t);

      return saturn_h_0;
   }

   static double saturn_h(double t){
      return saturn_h_0_(t);
   }

   static double saturn_q(double t){
      return 0;
   }

   static double saturn_p_0_(double t){
      double saturn_p_0=0.0;
      saturn_p_0+=     0.01989147301 * cos( 0.00000000000 +        0.00000000000*t);

      return saturn_p_0;
   }

   static double saturn_p(double t){
      return saturn_p_0_(t);
   }

}
