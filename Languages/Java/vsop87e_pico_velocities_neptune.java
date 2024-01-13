//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87e_pico_velocities_neptune{
   static double neptune_x_0_(double t){
      double neptune_x_0=0.0;
      double exp=0;
      neptune_x_0+=-pow(t,exp)*    30.05734568801*      38.13303563780*sin( 5.31211340030 +       38.13303563780*t);
      neptune_x_0+=-pow(t,exp)*     0.27050789973*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      neptune_x_0+=-pow(t,exp)*     0.13504578270*      76.26607127560*sin( 3.50075407055 +       76.26607127560*t);
      neptune_x_0+=-pow(t,exp)*     0.15725280871*      36.64856292950*sin( 0.11319072402 +       36.64856292950*t);
      neptune_x_0+=-pow(t,exp)*     0.14934353052*      39.61750834610*sin( 1.08499398649 +       39.61750834610*t);
      neptune_x_0+=-pow(t,exp)*     0.02597449604*       1.48447270830*sin( 1.99590330725 +        1.48447270830*t);

      return neptune_x_0;
   }

   static double neptune_x(double t){
      return neptune_x_0_(t);
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

      return neptune_y_0;
   }

   static double neptune_y(double t){
      return neptune_y_0_(t);
   }

   static double neptune_z_0_(double t){
      double neptune_z_0=0.0;
      double exp=0;
      neptune_z_0+=-pow(t,exp)*     0.92861252357*      38.13303563780*sin( 1.44103930199 +       38.13303563780*t);
      neptune_z_0+=-pow(t,exp)*     0.01244825806*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return neptune_z_0;
   }

   static double neptune_z(double t){
      return neptune_z_0_(t);
   }

}
