//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_micro_neptune{
   static double neptune_l_0_(double t){
      double neptune_l_0=0.0;
      neptune_l_0+=     5.31188633046 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_0+=     0.01798475530 * cos( 2.90101273890 +       38.13303563780*t);
      neptune_l_0+=     0.01019727652 * cos( 0.48580922867 +        1.48447270830*t);
      neptune_l_0+=     0.00124531845 * cos( 4.83008090676 +       36.64856292950*t);
      neptune_l_0+=     0.00042064466 * cos( 5.41054993053 +        2.96894541660*t);
      neptune_l_0+=     0.00037714584 * cos( 6.09221808686 +       35.16409022120*t);
      neptune_l_0+=     0.00033784738 * cos( 1.24488874087 +       76.26607127560*t);
      neptune_l_0+=     0.00016482741 * cos( 0.00007727998 +      491.55792945680*t);

      return neptune_l_0;
   }

   static double neptune_l_1_(double t){
      double neptune_l_1=0.0;
      neptune_l_1+=    38.13303563957 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_1+=     0.00016604172 * cos( 4.86323329249 +        1.48447270830*t);
      neptune_l_1+=     0.00015744045 * cos( 2.27887427527 +       38.13303563780*t);
      neptune_l_1=neptune_l_1 * t;

      return neptune_l_1;
   }

   static double neptune_l(double t){
      return neptune_l_0_(t)+neptune_l_1_(t);
   }

   static double neptune_b_0_(double t){
      double neptune_b_0=0.0;
      neptune_b_0+=     0.03088622933 * cos( 1.44104372644 +       38.13303563780*t);
      neptune_b_0+=     0.00027780087 * cos( 5.91271884599 +       76.26607127560*t);
      neptune_b_0+=     0.00027623609 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_b_0+=     0.00015355489 * cos( 2.52123799551 +       36.64856292950*t);
      neptune_b_0+=     0.00015448133 * cos( 3.50877079215 +       39.61750834610*t);

      return neptune_b_0;
   }

   static double neptune_b(double t){
      return neptune_b_0_(t);
   }

   static double neptune_r_0_(double t){
      double neptune_r_0=0.0;
      neptune_r_0+=    30.07013205828 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_r_0+=     0.27062259632 * cos( 1.32999459377 +       38.13303563780*t);
      neptune_r_0+=     0.01691764014 * cos( 3.25186135653 +       36.64856292950*t);
      neptune_r_0+=     0.00807830553 * cos( 5.18592878704 +        1.48447270830*t);
      neptune_r_0+=     0.00537760510 * cos( 4.52113935896 +       35.16409022120*t);
      neptune_r_0+=     0.00495725141 * cos( 1.57105641650 +      491.55792945680*t);
      neptune_r_0+=     0.00274571975 * cos( 1.84552258866 +      175.16605980020*t);
      neptune_r_0+=     0.00135134092 * cos( 3.37220609835 +       39.61750834610*t);
      neptune_r_0+=     0.00121801746 * cos( 5.79754470298 +       76.26607127560*t);
      neptune_r_0+=     0.00100896068 * cos( 0.37702724930 +       73.29712585900*t);
      neptune_r_0+=     0.00069791331 * cos( 3.79616637768 +        2.96894541660*t);
      neptune_r_0+=     0.00046687836 * cos( 5.74938034313 +       33.67961751290*t);
      neptune_r_0+=     0.00024594531 * cos( 0.50801745878 +      109.94568878850*t);
      neptune_r_0+=     0.00016939478 * cos( 1.59422512526 +       71.81265315070*t);
      neptune_r_0+=     0.00014229808 * cos( 1.07785898723 +       74.78159856730*t);
      neptune_r_0+=     0.00012012320 * cos( 1.92059384991 +     1021.24889455140*t);

      return neptune_r_0;
   }

   static double neptune_r_1_(double t){
      double neptune_r_1=0.0;
      neptune_r_1+=     0.00236338618 * cos( 0.70497954792 +       38.13303563780*t);
      neptune_r_1+=     0.00013220034 * cos( 3.32014387930 +        1.48447270830*t);
      neptune_r_1=neptune_r_1 * t;

      return neptune_r_1;
   }

   static double neptune_r(double t){
      return neptune_r_0_(t)+neptune_r_1_(t);
   }

}
