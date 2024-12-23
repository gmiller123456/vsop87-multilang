import static java.lang.Math.*;

public class vsop87d_micro_neptune{
   static double neptune_l(double t){
      double neptune_l_0=0.0;
      neptune_l_0+=     5.31188633047 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_0+=     0.01798475509 * cos( 2.90101273050 +       38.13303563780*t);
      neptune_l_0+=     0.01019727662 * cos( 0.48580923660 +        1.48447270830*t);
      neptune_l_0+=     0.00124531845 * cos( 4.83008090682 +       36.64856292950*t);
      neptune_l_0+=     0.00042064450 * cos( 5.41054991607 +        2.96894541660*t);
      neptune_l_0+=     0.00037714589 * cos( 6.09221834946 +       35.16409022120*t);
      neptune_l_0+=     0.00033784734 * cos( 1.24488865578 +       76.26607127560*t);
      neptune_l_0+=     0.00016482741 * cos( 0.00007729261 +      491.55792945680*t);

      double neptune_l_1=0.0;
      neptune_l_1+=    38.37687716731 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_1+=     0.00016604187 * cos( 4.86319129565 +        1.48447270830*t);
      neptune_l_1+=     0.00015807148 * cos( 2.27923488532 +       38.13303563780*t);
      neptune_l_1=neptune_l_1 * t;

      double neptune_l_2=0.0;
      neptune_l_2+=     0.00053892649 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_2=neptune_l_2 * t * t;

      return neptune_l_0+neptune_l_1+neptune_l_2;
   }

   static double neptune_b(double t){
      double neptune_b_0=0.0;
      neptune_b_0+=     0.03088622933 * cos( 1.44104372626 +       38.13303563780*t);
      neptune_b_0+=     0.00027780087 * cos( 5.91271882843 +       76.26607127560*t);
      neptune_b_0+=     0.00027623609 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_b_0+=     0.00015355490 * cos( 2.52123799481 +       36.64856292950*t);
      neptune_b_0+=     0.00015448133 * cos( 3.50877080888 +       39.61750834610*t);

      double neptune_b_1=0.0;
      neptune_b_1+=     0.00227279214 * cos( 3.80793089870 +       38.13303563780*t);
      neptune_b_1=neptune_b_1 * t;

      return neptune_b_0+neptune_b_1;
   }

   static double neptune_r(double t){
      double neptune_r_0=0.0;
      neptune_r_0+=    30.07013206102 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_r_0+=     0.27062259490 * cos( 1.32999458930 +       38.13303563780*t);
      neptune_r_0+=     0.01691764281 * cos( 3.25186138896 +       36.64856292950*t);
      neptune_r_0+=     0.00807830737 * cos( 5.18592836167 +        1.48447270830*t);
      neptune_r_0+=     0.00537760613 * cos( 4.52113902845 +       35.16409022120*t);
      neptune_r_0+=     0.00495725642 * cos( 1.57105654815 +      491.55792945680*t);
      neptune_r_0+=     0.00274571970 * cos( 1.84552256801 +      175.16605980020*t);
      neptune_r_0+=     0.00135134095 * cos( 3.37220607384 +       39.61750834610*t);
      neptune_r_0+=     0.00121801825 * cos( 5.79754444303 +       76.26607127560*t);
      neptune_r_0+=     0.00100895397 * cos( 0.37702748681 +       73.29712585900*t);
      neptune_r_0+=     0.00069791722 * cos( 3.79617226928 +        2.96894541660*t);
      neptune_r_0+=     0.00046687838 * cos( 5.74937810094 +       33.67961751290*t);
      neptune_r_0+=     0.00024593778 * cos( 0.50801728204 +      109.94568878850*t);
      neptune_r_0+=     0.00016939242 * cos( 1.59422166991 +       71.81265315070*t);
      neptune_r_0+=     0.00014229686 * cos( 1.07786112902 +       74.78159856730*t);
      neptune_r_0+=     0.00012011825 * cos( 1.92062131635 +     1021.24889455140*t);

      double neptune_r_1=0.0;
      neptune_r_1+=     0.00236338502 * cos( 0.70498011235 +       38.13303563780*t);
      neptune_r_1+=     0.00013220279 * cos( 3.32015499895 +        1.48447270830*t);
      neptune_r_1=neptune_r_1 * t;

      return neptune_r_0+neptune_r_1;
   }

}
