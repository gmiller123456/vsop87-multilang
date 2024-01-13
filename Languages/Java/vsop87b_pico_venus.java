//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_pico_venus{
   static double venus_l_0_(double t){
      double venus_l_0=0.0;
      venus_l_0+=     3.17614666774 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_0+=     0.01353968419 * cos( 5.59313319619 +    10213.28554621100*t);

      return venus_l_0;
   }

   static double venus_l_1_(double t){
      double venus_l_1=0.0;
      venus_l_1+= 10213.28554621638 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_1=venus_l_1 * t;

      return venus_l_1;
   }

   static double venus_l(double t){
      return venus_l_0_(t)+venus_l_1_(t);
   }

   static double venus_b_0_(double t){
      double venus_b_0=0.0;
      venus_b_0+=     0.05923638472 * cos( 0.26702775812 +    10213.28554621100*t);

      return venus_b_0;
   }

   static double venus_b(double t){
      return venus_b_0_(t);
   }

   static double venus_r_0_(double t){
      double venus_r_0=0.0;
      venus_r_0+=     0.72334820891 * cos( 0.00000000000 +        0.00000000000*t);

      return venus_r_0;
   }

   static double venus_r(double t){
      return venus_r_0_(t);
   }

}
