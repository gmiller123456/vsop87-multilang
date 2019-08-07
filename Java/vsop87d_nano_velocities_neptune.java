import static java.lang.Math.*;

public class vsop87d_nano_velocities_neptune{
   static double neptune_l_0_(double t){
      double neptune_l_0=0.0;
      double exp=0;
      neptune_l_0+=-pow(t,exp)*     5.31188633047*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      neptune_l_0+=-pow(t,exp)*     0.01798475509*      38.13303563780*sin( 2.90101273050 +       38.13303563780*t);
      neptune_l_0+=-pow(t,exp)*     0.01019727662*       1.48447270830*sin( 0.48580923660 +        1.48447270830*t);
      neptune_l_0+=-pow(t,exp)*     0.00124531845*      36.64856292950*sin( 4.83008090682 +       36.64856292950*t);

      return neptune_l_0;
   }

   static double neptune_l_1_(double t){
      double neptune_l_1=0.0;
      double exp=1;
      neptune_l_1+=pow(t,exp-1)*exp*    38.37687716731*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*    38.37687716731*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return neptune_l_1;
   }

   static double neptune_l(double t){
      return neptune_l_0_(t)+neptune_l_1_(t);
   }

   static double neptune_b_0_(double t){
      double neptune_b_0=0.0;
      double exp=0;
      neptune_b_0+=-pow(t,exp)*     0.03088622933*      38.13303563780*sin( 1.44104372626 +       38.13303563780*t);

      return neptune_b_0;
   }

   static double neptune_b_1_(double t){
      double neptune_b_1=0.0;
      double exp=1;
      neptune_b_1+=pow(t,exp-1)*exp*     0.00227279214*cos( 3.80793089870 +       38.13303563780*t)-pow(t,exp)*     0.00227279214*      38.13303563780*sin( 3.80793089870 +       38.13303563780*t);

      return neptune_b_1;
   }

   static double neptune_b(double t){
      return neptune_b_0_(t)+neptune_b_1_(t);
   }

   static double neptune_r_0_(double t){
      double neptune_r_0=0.0;
      double exp=0;
      neptune_r_0+=-pow(t,exp)*    30.07013206102*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      neptune_r_0+=-pow(t,exp)*     0.27062259490*      38.13303563780*sin( 1.32999458930 +       38.13303563780*t);
      neptune_r_0+=-pow(t,exp)*     0.01691764281*      36.64856292950*sin( 3.25186138896 +       36.64856292950*t);
      neptune_r_0+=-pow(t,exp)*     0.00807830737*       1.48447270830*sin( 5.18592836167 +        1.48447270830*t);
      neptune_r_0+=-pow(t,exp)*     0.00537760613*      35.16409022120*sin( 4.52113902845 +       35.16409022120*t);
      neptune_r_0+=-pow(t,exp)*     0.00495725642*     491.55792945680*sin( 1.57105654815 +      491.55792945680*t);
      neptune_r_0+=-pow(t,exp)*     0.00274571970*     175.16605980020*sin( 1.84552256801 +      175.16605980020*t);
      neptune_r_0+=-pow(t,exp)*     0.00135134095*      39.61750834610*sin( 3.37220607384 +       39.61750834610*t);
      neptune_r_0+=-pow(t,exp)*     0.00121801825*      76.26607127560*sin( 5.79754444303 +       76.26607127560*t);
      neptune_r_0+=-pow(t,exp)*     0.00100895397*      73.29712585900*sin( 0.37702748681 +       73.29712585900*t);

      return neptune_r_0;
   }

   static double neptune_r_1_(double t){
      double neptune_r_1=0.0;
      double exp=1;
      neptune_r_1+=pow(t,exp-1)*exp*     0.00236338502*cos( 0.70498011235 +       38.13303563780*t)-pow(t,exp)*     0.00236338502*      38.13303563780*sin( 0.70498011235 +       38.13303563780*t);

      return neptune_r_1;
   }

   static double neptune_r(double t){
      return neptune_r_0_(t)+neptune_r_1_(t);
   }

}
