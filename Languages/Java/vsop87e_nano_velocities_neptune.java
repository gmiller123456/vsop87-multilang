import static java.lang.Math.*;

public class vsop87e_nano_velocities_neptune{
   static double neptune_x_0_(double t){
      double neptune_x_0=0.0;
      double exp=0;
      neptune_x_0+=-pow(t,exp)*    30.05734568801*      38.13303563780*sin( 5.31211340030 +       38.13303563780*t);
      neptune_x_0+=-pow(t,exp)*     0.27050789973*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      neptune_x_0+=-pow(t,exp)*     0.13504578270*      76.26607127560*sin( 3.50075407055 +       76.26607127560*t);
      neptune_x_0+=-pow(t,exp)*     0.15725280871*      36.64856292950*sin( 0.11319072402 +       36.64856292950*t);
      neptune_x_0+=-pow(t,exp)*     0.14934353052*      39.61750834610*sin( 1.08499398649 +       39.61750834610*t);
      neptune_x_0+=-pow(t,exp)*     0.02597449604*       1.48447270830*sin( 1.99590330725 +        1.48447270830*t);
      neptune_x_0+=-pow(t,exp)*     0.00990668211*      74.78159856730*sin( 5.37690139386 +       74.78159856730*t);
      neptune_x_0+=-pow(t,exp)*     0.00823755467*      35.16409022120*sin( 1.43221512492 +       35.16409022120*t);
      neptune_x_0+=-pow(t,exp)*     0.00817566529*       2.96894541660*sin( 0.78180136001 +        2.96894541660*t);
      neptune_x_0+=-pow(t,exp)*     0.00565506338*      41.10198105440*sin( 5.98964911841 +       41.10198105440*t);
      neptune_x_0+=-pow(t,exp)*     0.00308146172*      73.29712585900*sin( 0.39998862713 +       73.29712585900*t);
      neptune_x_0+=-pow(t,exp)*     0.00135901755*      77.75054398390*sin( 5.54688721933 +       77.75054398390*t);

      return neptune_x_0;
   }

   static double neptune_x_1_(double t){
      double neptune_x_1=0.0;
      double exp=1;
      neptune_x_1+=pow(t,exp-1)*exp*     0.00255827017*cos( 2.01935687782 +       36.64856292950*t)-pow(t,exp)*     0.00255827017*      36.64856292950*sin( 2.01935687782 +       36.64856292950*t);
      neptune_x_1+=pow(t,exp-1)*exp*     0.00243112812*cos( 5.46214905602 +       39.61750834610*t)-pow(t,exp)*     0.00243112812*      39.61750834610*sin( 5.46214905602 +       39.61750834610*t);
      neptune_x_1+=pow(t,exp-1)*exp*     0.00118382753*cos( 2.88255085978 +       76.26607127560*t)-pow(t,exp)*     0.00118382753*      76.26607127560*sin( 2.88255085978 +       76.26607127560*t);

      return neptune_x_1;
   }

   static double neptune_x(double t){
      return neptune_x_0_(t)+neptune_x_1_(t);
   }

   static double neptune_y_0_(double t){
      double neptune_y_0=0.0;
      double exp=0;
      neptune_y_0+=-pow(t,exp)*    30.05900907352*      38.13303563780*sin( 3.74086294715 +       38.13303563780*t);
      neptune_y_0+=-pow(t,exp)*     0.30171988148*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      neptune_y_0+=-pow(t,exp)*     0.13505308635*      76.26607127560*sin( 1.92949466968 +       76.26607127560*t);
      neptune_y_0+=-pow(t,exp)*     0.15705776296*      36.64856292950*sin( 4.82539969469 +       36.64856292950*t);
      neptune_y_0+=-pow(t,exp)*     0.14935398681*      39.61750834610*sin( 5.79694896309 +       39.61750834610*t);
      neptune_y_0+=-pow(t,exp)*     0.02584389323*       1.48447270830*sin( 0.42549727257 +        1.48447270830*t);
      neptune_y_0+=-pow(t,exp)*     0.00990408083*      74.78159856730*sin( 3.80555424385 +       74.78159856730*t);
      neptune_y_0+=-pow(t,exp)*     0.00815165481*       2.96894541660*sin( 5.49429738442 +        2.96894541660*t);
      neptune_y_0+=-pow(t,exp)*     0.00582164520*      35.16409022120*sin( 6.19633859980 +       35.16409022120*t);
      neptune_y_0+=-pow(t,exp)*     0.00565547830*      41.10198105440*sin( 4.41843013268 +       41.10198105440*t);
      neptune_y_0+=-pow(t,exp)*     0.00305149662*      73.29712585900*sin( 5.11023952334 +       73.29712585900*t);
      neptune_y_0+=-pow(t,exp)*     0.00135911904*      77.75054398390*sin( 3.97565894083 +       77.75054398390*t);

      return neptune_y_0;
   }

   static double neptune_y_1_(double t){
      double neptune_y_1=0.0;
      double exp=1;
      neptune_y_1+=pow(t,exp-1)*exp*     0.00352941377*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00352941377*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      neptune_y_1+=pow(t,exp-1)*exp*     0.00256112241*cos( 0.44757496381 +       36.64856292950*t)-pow(t,exp)*     0.00256112241*      36.64856292950*sin( 0.44757496381 +       36.64856292950*t);
      neptune_y_1+=pow(t,exp-1)*exp*     0.00243135236*cos( 3.89099801420 +       39.61750834610*t)-pow(t,exp)*     0.00243135236*      39.61750834610*sin( 3.89099801420 +       39.61750834610*t);
      neptune_y_1+=pow(t,exp-1)*exp*     0.00118411800*cos( 1.31131262408 +       76.26607127560*t)-pow(t,exp)*     0.00118411800*      76.26607127560*sin( 1.31131262408 +       76.26607127560*t);

      return neptune_y_1;
   }

   static double neptune_y(double t){
      return neptune_y_0_(t)+neptune_y_1_(t);
   }

   static double neptune_z_0_(double t){
      double neptune_z_0=0.0;
      double exp=0;
      neptune_z_0+=-pow(t,exp)*     0.92861252357*      38.13303563780*sin( 1.44103930199 +       38.13303563780*t);
      neptune_z_0+=-pow(t,exp)*     0.01244825806*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      neptune_z_0+=-pow(t,exp)*     0.00474309033*      36.64856292950*sin( 2.52218768352 +       36.64856292950*t);
      neptune_z_0+=-pow(t,exp)*     0.00451964646*      39.61750834610*sin( 3.50949727943 +       39.61750834610*t);
      neptune_z_0+=-pow(t,exp)*     0.00417539868*      76.26607127560*sin( 5.91308871390 +       76.26607127560*t);

      return neptune_z_0;
   }

   static double neptune_z_1_(double t){
      double neptune_z_1=0.0;
      double exp=1;
      neptune_z_1+=pow(t,exp-1)*exp*     0.00154877961*cos( 2.14239038882 +       38.13303563780*t)-pow(t,exp)*     0.00154877961*      38.13303563780*sin( 2.14239038882 +       38.13303563780*t);

      return neptune_z_1;
   }

   static double neptune_z(double t){
      return neptune_z_0_(t)+neptune_z_1_(t);
   }

}
