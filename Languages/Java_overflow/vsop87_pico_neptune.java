//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_pico_neptune{
   static double neptune_a_0_(double t){
      double neptune_a_0=0.0;
      neptune_a_0+=    30.11038686942 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_a_0+=     0.14818172119 * cos( 1.57105922541 +      491.55792945680*t);
      neptune_a_0+=     0.03597274341 * cos( 1.84552690821 +      175.16605980020*t);

      return neptune_a_0;
   }

   static double neptune_a(double t){
      return neptune_a_0_(t);
   }

   static double neptune_l_0_(double t){
      double neptune_l_0=0.0;
      neptune_l_0+=     5.31188628676 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_0+=     0.01017628072 * cos( 0.48586478491 +        1.48447270830*t);

      return neptune_l_0;
   }

   static double neptune_l_1_(double t){
      double neptune_l_1=0.0;
      neptune_l_1+=    38.13303563780 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_1=neptune_l_1 * t;

      return neptune_l_1;
   }

   static double neptune_l(double t){
      return neptune_l_0_(t)+neptune_l_1_(t);
   }

   static double neptune_k(double t){
      return 0;
   }

   static double neptune_h(double t){
      return 0;
   }

   static double neptune_q_0_(double t){
      double neptune_q_0=0.0;
      neptune_q_0+=     0.01029147819 * cos( 3.14159265359 +        0.00000000000*t);

      return neptune_q_0;
   }

   static double neptune_q(double t){
      return neptune_q_0_(t);
   }

   static double neptune_p_0_(double t){
      double neptune_p_0=0.0;
      neptune_p_0+=     0.01151683985 * cos( 0.00000000000 +        0.00000000000*t);

      return neptune_p_0;
   }

   static double neptune_p(double t){
      return neptune_p_0_(t);
   }

}
