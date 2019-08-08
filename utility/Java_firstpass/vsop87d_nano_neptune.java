import static java.lang.Math.*;

public class vsop87d_nano_neptune{
   static double neptune_l(double t){
      double neptune_l_0=0.0;
      neptune_l_0+=     5.31188633047 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_0+=     0.01798475509 * cos( 2.90101273050 +       38.13303563780*t);
      neptune_l_0+=     0.01019727662 * cos( 0.48580923660 +        1.48447270830*t);
      neptune_l_0+=     0.00124531845 * cos( 4.83008090682 +       36.64856292950*t);

      double neptune_l_1=0.0;
      neptune_l_1+=    38.37687716731 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_1=neptune_l_1 * t;

      return neptune_l_0+neptune_l_1;
   }

   static double neptune_b(double t){
      double neptune_b_0=0.0;
      neptune_b_0+=     0.03088622933 * cos( 1.44104372626 +       38.13303563780*t);

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

      double neptune_r_1=0.0;
      neptune_r_1+=     0.00236338502 * cos( 0.70498011235 +       38.13303563780*t);
      neptune_r_1=neptune_r_1 * t;

      return neptune_r_0+neptune_r_1;
   }

}
