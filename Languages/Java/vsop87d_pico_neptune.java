//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87d_pico_neptune{
   static double neptune_l_0_(double t){
      double neptune_l_0=0.0;
      neptune_l_0+=     5.31188633047 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_0+=     0.01798475509 * cos( 2.90101273050 +       38.13303563780*t);
      neptune_l_0+=     0.01019727662 * cos( 0.48580923660 +        1.48447270830*t);

      return neptune_l_0;
   }

   static double neptune_l_1_(double t){
      double neptune_l_1=0.0;
      neptune_l_1+=    38.37687716731 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_1=neptune_l_1 * t;

      return neptune_l_1;
   }

   static double neptune_l(double t){
      return neptune_l_0_(t)+neptune_l_1_(t);
   }

   static double neptune_b_0_(double t){
      double neptune_b_0=0.0;
      neptune_b_0+=     0.03088622933 * cos( 1.44104372626 +       38.13303563780*t);

      return neptune_b_0;
   }

   static double neptune_b(double t){
      return neptune_b_0_(t);
   }

   static double neptune_r_0_(double t){
      double neptune_r_0=0.0;
      neptune_r_0+=    30.07013206102 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_r_0+=     0.27062259490 * cos( 1.32999458930 +       38.13303563780*t);
      neptune_r_0+=     0.01691764281 * cos( 3.25186138896 +       36.64856292950*t);

      return neptune_r_0;
   }

   static double neptune_r(double t){
      return neptune_r_0_(t);
   }

}
