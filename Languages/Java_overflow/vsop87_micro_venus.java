//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_micro_venus{
   static double venus_a_0_(double t){
      double venus_a_0=0.0;
      venus_a_0+=     0.72332981996 * cos( 0.00000000000 +        0.00000000000*t);

      return venus_a_0;
   }

   static double venus_a(double t){
      return venus_a_0_(t);
   }

   static double venus_l_0_(double t){
      double venus_l_0=0.0;
      venus_l_0+=     3.17614669689 * cos( 0.00000000000 +        0.00000000000*t);

      return venus_l_0;
   }

   static double venus_l_1_(double t){
      double venus_l_1=0.0;
      venus_l_1+= 10213.28554621100 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_1=venus_l_1 * t;

      return venus_l_1;
   }

   static double venus_l(double t){
      return venus_l_0_(t)+venus_l_1_(t);
   }

   static double venus_k_0_(double t){
      double venus_k_0=0.0;
      venus_k_0+=     0.00449282133 * cos( 3.14159265359 +        0.00000000000*t);

      return venus_k_0;
   }

   static double venus_k_1_(double t){
      double venus_k_1=0.0;
      venus_k_1+=     0.00031259019 * cos( 0.00000000000 +        0.00000000000*t);
      venus_k_1=venus_k_1 * t;

      return venus_k_1;
   }

   static double venus_k(double t){
      return venus_k_0_(t)+venus_k_1_(t);
   }

   static double venus_h_0_(double t){
      double venus_h_0=0.0;
      venus_h_0+=     0.00506684726 * cos( 0.00000000000 +        0.00000000000*t);

      return venus_h_0;
   }

   static double venus_h_1_(double t){
      double venus_h_1=0.0;
      venus_h_1+=     0.00036121239 * cos( 3.14159265359 +        0.00000000000*t);
      venus_h_1=venus_h_1 * t;

      return venus_h_1;
   }

   static double venus_h(double t){
      return venus_h_0_(t)+venus_h_1_(t);
   }

   static double venus_q_0_(double t){
      double venus_q_0=0.0;
      venus_q_0+=     0.00682410142 * cos( 0.00000000000 +        0.00000000000*t);

      return venus_q_0;
   }

   static double venus_q_1_(double t){
      double venus_q_1=0.0;
      venus_q_1+=     0.00138133826 * cos( 0.00000000000 +        0.00000000000*t);
      venus_q_1=venus_q_1 * t;

      return venus_q_1;
   }

   static double venus_q(double t){
      return venus_q_0_(t)+venus_q_1_(t);
   }

   static double venus_p_0_(double t){
      double venus_p_0=0.0;
      venus_p_0+=     0.02882285775 * cos( 0.00000000000 +        0.00000000000*t);

      return venus_p_0;
   }

   static double venus_p_1_(double t){
      double venus_p_1=0.0;
      venus_p_1+=     0.00040384791 * cos( 3.14159265359 +        0.00000000000*t);
      venus_p_1=venus_p_1 * t;

      return venus_p_1;
   }

   static double venus_p(double t){
      return venus_p_0_(t)+venus_p_1_(t);
   }

}
