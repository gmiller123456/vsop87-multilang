//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87d_pico_mercury{
   static double mercury_l_0_(double t){
      double mercury_l_0=0.0;
      mercury_l_0+=     4.40250710144 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_0+=     0.40989414976 * cos( 1.48302034194 +    26087.90314157420*t);
      mercury_l_0+=     0.05046294199 * cos( 4.47785489540 +    52175.80628314840*t);

      return mercury_l_0;
   }

   static double mercury_l_1_(double t){
      double mercury_l_1=0.0;
      mercury_l_1+= 26088.14706222746 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_1+=     0.01126007832 * cos( 6.21703970996 +    26087.90314157420*t);
      mercury_l_1=mercury_l_1 * t;

      return mercury_l_1;
   }

   static double mercury_l(double t){
      return mercury_l_0_(t)+mercury_l_1_(t);
   }

   static double mercury_b_0_(double t){
      double mercury_b_0=0.0;
      mercury_b_0+=     0.11737528962 * cos( 1.98357498767 +    26087.90314157420*t);
      mercury_b_0+=     0.02388076996 * cos( 5.03738959685 +    52175.80628314840*t);
      mercury_b_0+=     0.01222839532 * cos( 3.14159265359 +        0.00000000000*t);

      return mercury_b_0;
   }

   static double mercury_b(double t){
      return mercury_b_0_(t);
   }

   static double mercury_r_0_(double t){
      double mercury_r_0=0.0;
      mercury_r_0+=     0.39528271652 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_r_0+=     0.07834131817 * cos( 6.19233722599 +    26087.90314157420*t);

      return mercury_r_0;
   }

   static double mercury_r(double t){
      return mercury_r_0_(t);
   }

}
