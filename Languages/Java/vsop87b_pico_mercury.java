//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_pico_mercury{
   static double mercury_l_0_(double t){
      double mercury_l_0=0.0;
      mercury_l_0+=     4.40250710144 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_0+=     0.40989414977 * cos( 1.48302034195 +    26087.90314157420*t);
      mercury_l_0+=     0.05046294200 * cos( 4.47785489551 +    52175.80628314840*t);

      return mercury_l_0;
   }

   static double mercury_l_1_(double t){
      double mercury_l_1=0.0;
      mercury_l_1+= 26087.90313685529 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_1+=     0.01131199811 * cos( 6.21874197797 +    26087.90314157420*t);
      mercury_l_1=mercury_l_1 * t;

      return mercury_l_1;
   }

   static double mercury_l(double t){
      return mercury_l_0_(t)+mercury_l_1_(t);
   }

   static double mercury_b_0_(double t){
      double mercury_b_0=0.0;
      mercury_b_0+=     0.11737528961 * cos( 1.98357498767 +    26087.90314157420*t);
      mercury_b_0+=     0.02388076996 * cos( 5.03738959686 +    52175.80628314840*t);
      mercury_b_0+=     0.01222839532 * cos( 3.14159265359 +        0.00000000000*t);

      return mercury_b_0;
   }

   static double mercury_b(double t){
      return mercury_b_0_(t);
   }

   static double mercury_r_0_(double t){
      double mercury_r_0=0.0;
      mercury_r_0+=     0.39528271651 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_r_0+=     0.07834131818 * cos( 6.19233722598 +    26087.90314157420*t);

      return mercury_r_0;
   }

   static double mercury_r(double t){
      return mercury_r_0_(t);
   }

}
