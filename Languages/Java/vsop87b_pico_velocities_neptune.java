//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_pico_velocities_neptune{
   static double neptune_l_0_(double t){
      double neptune_l_0=0.0;
      double exp=0;
      neptune_l_0+=-pow(t,exp)*     5.31188633046*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      neptune_l_0+=-pow(t,exp)*     0.01798475530*      38.13303563780*sin( 2.90101273890 +       38.13303563780*t);
      neptune_l_0+=-pow(t,exp)*     0.01019727652*       1.48447270830*sin( 0.48580922867 +        1.48447270830*t);

      return neptune_l_0;
   }

   static double neptune_l_1_(double t){
      double neptune_l_1=0.0;
      double exp=1;
      neptune_l_1+=pow(t,exp-1)*exp*    38.13303563957*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*    38.13303563957*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return neptune_l_1;
   }

   static double neptune_l(double t){
      return neptune_l_0_(t)+neptune_l_1_(t);
   }

   static double neptune_b_0_(double t){
      double neptune_b_0=0.0;
      double exp=0;
      neptune_b_0+=-pow(t,exp)*     0.03088622933*      38.13303563780*sin( 1.44104372644 +       38.13303563780*t);

      return neptune_b_0;
   }

   static double neptune_b(double t){
      return neptune_b_0_(t);
   }

   static double neptune_r_0_(double t){
      double neptune_r_0=0.0;
      double exp=0;
      neptune_r_0+=-pow(t,exp)*    30.07013205828*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      neptune_r_0+=-pow(t,exp)*     0.27062259632*      38.13303563780*sin( 1.32999459377 +       38.13303563780*t);
      neptune_r_0+=-pow(t,exp)*     0.01691764014*      36.64856292950*sin( 3.25186135653 +       36.64856292950*t);

      return neptune_r_0;
   }

   static double neptune_r(double t){
      return neptune_r_0_(t);
   }

}
