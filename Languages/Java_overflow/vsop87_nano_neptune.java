//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_nano_neptune{
   static double neptune_a_0_(double t){
      double neptune_a_0=0.0;
      neptune_a_0+=    30.11038686942 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_a_0+=     0.14818172119 * cos( 1.57105922541 +      491.55792945680*t);
      neptune_a_0+=     0.03597274341 * cos( 1.84552690821 +      175.16605980020*t);
      neptune_a_0+=     0.00832345688 * cos( 5.19528065894 +        1.48447270830*t);
      neptune_a_0+=     0.00694303990 * cos( 1.92062235445 +     1021.24889455140*t);
      neptune_a_0+=     0.00462318447 * cos( 0.16921610518 +       36.64856292950*t);
      neptune_a_0+=     0.00144701407 * cos( 3.36967102070 +      453.42489381900*t);
      neptune_a_0+=     0.00185666340 * cos( 1.07141029917 +      388.46515523820*t);
      neptune_a_0+=     0.00105687575 * cos( 3.48447772920 +       73.29712585900*t);
      neptune_a_0+=     0.00101174992 * cos( 2.72476929716 +     6244.94281435360*t);

      return neptune_a_0;
   }

   static double neptune_a(double t){
      return neptune_a_0_(t);
   }

   static double neptune_l_0_(double t){
      double neptune_l_0=0.0;
      neptune_l_0+=     5.31188628676 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_0+=     0.01017628072 * cos( 0.48586478491 +        1.48447270830*t);
      neptune_l_0+=     0.00441710236 * cos( 0.00020868462 +      491.55792945680*t);

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

   static double neptune_k_0_(double t){
      double neptune_k_0=0.0;
      neptune_k_0+=     0.00599977571 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_k_0+=     0.00343810387 * cos( 0.59989432818 +      529.69096509460*t);
      neptune_k_0+=     0.00136232980 * cos( 5.31190360139 +       38.13303563780*t);
      neptune_k_0+=     0.00131042161 * cos( 2.54238248127 +      453.42489381900*t);

      return neptune_k_0;
   }

   static double neptune_k(double t){
      return neptune_k_0_(t);
   }

   static double neptune_h_0_(double t){
      double neptune_h_0=0.0;
      neptune_h_0+=     0.00669242413 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_h_0+=     0.00344034784 * cos( 5.31201105782 +      529.69096509460*t);
      neptune_h_0+=     0.00136278888 * cos( 3.74103613444 +       38.13303563780*t);
      neptune_h_0+=     0.00131043136 * cos( 4.11313570675 +      453.42489381900*t);

      return neptune_h_0;
   }

   static double neptune_h(double t){
      return neptune_h_0_(t);
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
