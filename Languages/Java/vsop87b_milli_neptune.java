//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_milli_neptune{
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
      neptune_l_0+=     0.00009198584 * cos( 4.93747051954 +       39.61750834610*t);
      neptune_l_0+=     0.00008994250 * cos( 0.27462171806 +      175.16605980020*t);
      neptune_l_0+=     0.00004216242 * cos( 1.98711875978 +       73.29712585900*t);
      neptune_l_0+=     0.00003364807 * cos( 1.03590060915 +       33.67961751290*t);
      neptune_l_0+=     0.00002284800 * cos( 4.20606949415 +        4.45341812490*t);
      neptune_l_0+=     0.00001433516 * cos( 2.78339802539 +       74.78159856730*t);

      return neptune_l_0;
   }

   static double neptune_l_1_(double t){
      double neptune_l_1=0.0;
      neptune_l_1+=    38.13303563957 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_1+=     0.00016604172 * cos( 4.86323329249 +        1.48447270830*t);
      neptune_l_1+=     0.00015744045 * cos( 2.27887427527 +       38.13303563780*t);
      neptune_l_1+=     0.00001306261 * cos( 3.67285209620 +        2.96894541660*t);
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
      neptune_b_0+=     0.00001999918 * cos( 1.50998668632 +       74.78159856730*t);
      neptune_b_0+=     0.00001967540 * cos( 4.37778196626 +        1.48447270830*t);
      neptune_b_0+=     0.00001015137 * cos( 3.21560997434 +       35.16409022120*t);

      return neptune_b_0;
   }

   static double neptune_b_1_(double t){
      double neptune_b_1=0.0;
      neptune_b_1+=     0.00005150897 * cos( 2.14270496419 +       38.13303563780*t);
      neptune_b_1=neptune_b_1 * t;

      return neptune_b_1;
   }

   static double neptune_b(double t){
      return neptune_b_0_(t)+neptune_b_1_(t);
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
      neptune_r_0+=     0.00008394349 * cos( 0.67818233586 +      146.59425171800*t);
      neptune_r_0+=     0.00007571796 * cos( 1.07149207335 +      388.46515523820*t);
      neptune_r_0+=     0.00005720872 * cos( 2.59061733345 +        4.45341812490*t);
      neptune_r_0+=     0.00004840210 * cos( 1.90681013048 +       41.10198105440*t);
      neptune_r_0+=     0.00004483493 * cos( 2.90573464537 +      529.69096509460*t);
      neptune_r_0+=     0.00004269595 * cos( 3.41333526870 +      453.42489381900*t);
      neptune_r_0+=     0.00004353588 * cos( 0.67984856103 +       32.19514480460*t);
      neptune_r_0+=     0.00004420549 * cos( 1.74990681127 +      108.46121608020*t);
      neptune_r_0+=     0.00002879755 * cos( 1.98627174527 +      137.03302416240*t);
      neptune_r_0+=     0.00002635535 * cos( 3.09755951044 +      213.29909543800*t);
      neptune_r_0+=     0.00003381113 * cos( 0.84810966225 +      183.24281464750*t);
      neptune_r_0+=     0.00002877511 * cos( 3.67417203197 +      350.33211960040*t);
      neptune_r_0+=     0.00002306505 * cos( 2.80964587883 +       70.32818044240*t);
      neptune_r_0+=     0.00002529939 * cos( 5.79822254729 +      490.07345674850*t);
      neptune_r_0+=     0.00002522868 * cos( 0.48612122962 +      493.04240216510*t);
      neptune_r_0+=     0.00002085926 * cos( 0.61853857468 +       33.94024994380*t);
      neptune_r_0+=     0.00001976522 * cos( 5.11703044560 +      168.05251279940*t);
      neptune_r_0+=     0.00001904055 * cos( 1.72165893329 +      182.27960680100*t);
      neptune_r_0+=     0.00001653525 * cos( 1.92781987560 +      145.10977900970*t);
      neptune_r_0+=     0.00001434507 * cos( 1.69985856533 +      484.44438245600*t);
      neptune_r_0+=     0.00001403029 * cos( 4.58914203187 +      498.67147645760*t);
      neptune_r_0+=     0.00001499989 * cos( 1.01619882251 +      219.89137757700*t);
      neptune_r_0+=     0.00001397976 * cos( 0.76199761055 +      176.65053250850*t);
      neptune_r_0+=     0.00001402764 * cos( 6.07659120736 +      173.68158709190*t);
      neptune_r_0+=     0.00001128278 * cos( 5.96666460978 +        9.56122755560*t);
      neptune_r_0+=     0.00001228058 * cos( 1.59915900158 +       77.75054398390*t);

      return neptune_r_0;
   }

   static double neptune_r_1_(double t){
      double neptune_r_1=0.0;
      neptune_r_1+=     0.00236338618 * cos( 0.70497954792 +       38.13303563780*t);
      neptune_r_1+=     0.00013220034 * cos( 3.32014387930 +        1.48447270830*t);
      neptune_r_1+=     0.00008621779 * cos( 6.21626927537 +       35.16409022120*t);
      neptune_r_1+=     0.00002701587 * cos( 1.88124996531 +       39.61750834610*t);
      neptune_r_1+=     0.00002153060 * cos( 5.16877044933 +       76.26607127560*t);
      neptune_r_1+=     0.00002154170 * cos( 2.09430333390 +        2.96894541660*t);
      neptune_r_1+=     0.00001463314 * cos( 1.18410155089 +       33.67961751290*t);
      neptune_r_1+=     0.00001603164 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_r_1+=     0.00001135663 * cos( 3.91905853528 +       36.64856292950*t);
      neptune_r_1=neptune_r_1 * t;

      return neptune_r_1;
   }

   static double neptune_r_2_(double t){
      double neptune_r_2=0.0;
      neptune_r_2+=     0.00004247776 * cos( 5.89911844921 +       38.13303563780*t);
      neptune_r_2=neptune_r_2 * t * t;

      return neptune_r_2;
   }

   static double neptune_r(double t){
      return neptune_r_0_(t)+neptune_r_1_(t)+neptune_r_2_(t);
   }

}
