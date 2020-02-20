//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_pico_venus{
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

   static double venus_k(double t){
      return 0;
   }

   static double venus_h(double t){
      return 0;
   }

   static double venus_q(double t){
      return 0;
   }

   static double venus_p_0_(double t){
      double venus_p_0=0.0;
      venus_p_0+=     0.02882285775 * cos( 0.00000000000 +        0.00000000000*t);

      return venus_p_0;
   }

   static double venus_p(double t){
      return venus_p_0_(t);
   }

}
