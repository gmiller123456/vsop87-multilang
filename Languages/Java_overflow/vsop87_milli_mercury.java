//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_milli_mercury{
   static double mercury_a_0_(double t){
      double mercury_a_0=0.0;
      mercury_a_0+=     0.38709830982 * cos( 0.00000000000 +        0.00000000000*t);

      return mercury_a_0;
   }

   static double mercury_a(double t){
      return mercury_a_0_(t);
   }

   static double mercury_l_0_(double t){
      double mercury_l_0=0.0;
      mercury_l_0+=     4.40260884240 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_0+=     0.00003557754 * cos( 1.51229384945 +     1109.37855209340*t);
      mercury_l_0+=     0.00001732389 * cos( 4.10404056787 +     5661.33204915220*t);

      return mercury_l_0;
   }

   static double mercury_l_1_(double t){
      double mercury_l_1=0.0;
      mercury_l_1+= 26087.90314157420 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_1=mercury_l_1 * t;

      return mercury_l_1;
   }

   static double mercury_l(double t){
      return mercury_l_0_(t)+mercury_l_1_(t);
   }

   static double mercury_k_0_(double t){
      double mercury_k_0=0.0;
      mercury_k_0+=     0.04466059760 * cos( 0.00000000000 +        0.00000000000*t);

      return mercury_k_0;
   }

   static double mercury_k_1_(double t){
      double mercury_k_1=0.0;
      mercury_k_1+=     0.00552114624 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_k_1=mercury_k_1 * t;

      return mercury_k_1;
   }

   static double mercury_k_2_(double t){
      double mercury_k_2=0.0;
      mercury_k_2+=     0.00001860568 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_k_2=mercury_k_2 * t * t;

      return mercury_k_2;
   }

   static double mercury_k(double t){
      return mercury_k_0_(t)+mercury_k_1_(t)+mercury_k_2_(t);
   }

   static double mercury_h_0_(double t){
      double mercury_h_0=0.0;
      mercury_h_0+=     0.20072331368 * cos( 0.00000000000 +        0.00000000000*t);

      return mercury_h_0;
   }

   static double mercury_h_1_(double t){
      double mercury_h_1=0.0;
      mercury_h_1+=     0.00143750118 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_h_1=mercury_h_1 * t;

      return mercury_h_1;
   }

   static double mercury_h_2_(double t){
      double mercury_h_2=0.0;
      mercury_h_2+=     0.00007974120 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_h_2=mercury_h_2 * t * t;

      return mercury_h_2;
   }

   static double mercury_h(double t){
      return mercury_h_0_(t)+mercury_h_1_(t)+mercury_h_2_(t);
   }

   static double mercury_q_0_(double t){
      double mercury_q_0=0.0;
      mercury_q_0+=     0.04061563384 * cos( 0.00000000000 +        0.00000000000*t);

      return mercury_q_0;
   }

   static double mercury_q_1_(double t){
      double mercury_q_1=0.0;
      mercury_q_1+=     0.00065433117 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_q_1=mercury_q_1 * t;

      return mercury_q_1;
   }

   static double mercury_q_2_(double t){
      double mercury_q_2=0.0;
      mercury_q_2+=     0.00001071215 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_q_2=mercury_q_2 * t * t;

      return mercury_q_2;
   }

   static double mercury_q(double t){
      return mercury_q_0_(t)+mercury_q_1_(t)+mercury_q_2_(t);
   }

   static double mercury_p_0_(double t){
      double mercury_p_0=0.0;
      mercury_p_0+=     0.04563550461 * cos( 0.00000000000 +        0.00000000000*t);

      return mercury_p_0;
   }

   static double mercury_p_1_(double t){
      double mercury_p_1=0.0;
      mercury_p_1+=     0.00127633657 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_p_1=mercury_p_1 * t;

      return mercury_p_1;
   }

   static double mercury_p(double t){
      return mercury_p_0_(t)+mercury_p_1_(t);
   }

}
