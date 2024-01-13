//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_pico_mars{
   static double mars_a_0_(double t){
      double mars_a_0=0.0;
      mars_a_0+=     1.52367934191 * cos( 0.00000000000 +        0.00000000000*t);

      return mars_a_0;
   }

   static double mars_a(double t){
      return mars_a_0_(t);
   }

   static double mars_l_0_(double t){
      double mars_l_0=0.0;
      mars_l_0+=     6.20347611291 * cos( 0.00000000000 +        0.00000000000*t);

      return mars_l_0;
   }

   static double mars_l_1_(double t){
      double mars_l_1=0.0;
      mars_l_1+=  3340.61242669981 * cos( 0.00000000000 +        0.00000000000*t);
      mars_l_1=mars_l_1 * t;

      return mars_l_1;
   }

   static double mars_l(double t){
      return mars_l_0_(t)+mars_l_1_(t);
   }

   static double mars_k_0_(double t){
      double mars_k_0=0.0;
      mars_k_0+=     0.08536560252 * cos( 0.00000000000 +        0.00000000000*t);

      return mars_k_0;
   }

   static double mars_k(double t){
      return mars_k_0_(t);
   }

   static double mars_h_0_(double t){
      double mars_h_0=0.0;
      mars_h_0+=     0.03789973236 * cos( 3.14159265359 +        0.00000000000*t);

      return mars_h_0;
   }

   static double mars_h(double t){
      return mars_h_0_(t);
   }

   static double mars_q_0_(double t){
      double mars_q_0=0.0;
      mars_q_0+=     0.01047042574 * cos( 0.00000000000 +        0.00000000000*t);

      return mars_q_0;
   }

   static double mars_q(double t){
      return mars_q_0_(t);
   }

   static double mars_p_0_(double t){
      double mars_p_0=0.0;
      mars_p_0+=     0.01228449307 * cos( 0.00000000000 +        0.00000000000*t);

      return mars_p_0;
   }

   static double mars_p(double t){
      return mars_p_0_(t);
   }

}
