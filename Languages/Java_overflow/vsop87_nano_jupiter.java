//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_nano_jupiter{
   static double jupiter_a_0_(double t){
      double jupiter_a_0=0.0;
      jupiter_a_0+=     5.20260319132 * cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_a_0;
   }

   static double jupiter_a(double t){
      return jupiter_a_0_(t);
   }

   static double jupiter_l_0_(double t){
      double jupiter_l_0=0.0;
      jupiter_l_0+=     0.59954649739 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_0+=     0.00573506125 * cos( 1.44396306420 +        7.11354700080*t);

      return jupiter_l_0;
   }

   static double jupiter_l_1_(double t){
      double jupiter_l_1=0.0;
      jupiter_l_1+=   529.69096509460 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_1+=     0.00228875491 * cos( 6.02639570653 +        7.11354700080*t);
      jupiter_l_1=jupiter_l_1 * t;

      return jupiter_l_1;
   }

   static double jupiter_l(double t){
      return jupiter_l_0_(t)+jupiter_l_1_(t);
   }

   static double jupiter_k_0_(double t){
      double jupiter_k_0=0.0;
      jupiter_k_0+=     0.04698572124 * cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_k_0;
   }

   static double jupiter_k_1_(double t){
      double jupiter_k_1=0.0;
      jupiter_k_1+=     0.00113010377 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_k_1=jupiter_k_1 * t;

      return jupiter_k_1;
   }

   static double jupiter_k(double t){
      return jupiter_k_0_(t)+jupiter_k_1_(t);
   }

   static double jupiter_h_0_(double t){
      double jupiter_h_0=0.0;
      jupiter_h_0+=     0.01200385748 * cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_h_0;
   }

   static double jupiter_h_1_(double t){
      double jupiter_h_1=0.0;
      jupiter_h_1+=     0.00217149360 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_h_1=jupiter_h_1 * t;

      return jupiter_h_1;
   }

   static double jupiter_h(double t){
      return jupiter_h_0_(t)+jupiter_h_1_(t);
   }

   static double jupiter_q_0_(double t){
      double jupiter_q_0=0.0;
      jupiter_q_0+=     0.00206561098 * cos( 3.14159265359 +        0.00000000000*t);

      return jupiter_q_0;
   }

   static double jupiter_q(double t){
      return jupiter_q_0_(t);
   }

   static double jupiter_p_0_(double t){
      double jupiter_p_0=0.0;
      jupiter_p_0+=     0.01118377157 * cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_p_0;
   }

   static double jupiter_p(double t){
      return jupiter_p_0_(t);
   }

}
