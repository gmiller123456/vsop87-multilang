import static java.lang.Math.*;

public class vsop87e_pico_neptune{
   static double neptune_x(double t){
      double neptune_x_0=0.0;
      neptune_x_0+=    30.05734568801 * cos( 5.31211340030 +       38.13303563780*t);
      neptune_x_0+=     0.27050789973 * cos( 3.14159265359 +        0.00000000000*t);
      neptune_x_0+=     0.13504578270 * cos( 3.50075407055 +       76.26607127560*t);
      neptune_x_0+=     0.15725280871 * cos( 0.11319072402 +       36.64856292950*t);
      neptune_x_0+=     0.14934353052 * cos( 1.08499398649 +       39.61750834610*t);
      neptune_x_0+=     0.02597449604 * cos( 1.99590330725 +        1.48447270830*t);

      return neptune_x_0;
   }

   static double neptune_y(double t){
      double neptune_y_0=0.0;
      neptune_y_0+=    30.05900907352 * cos( 3.74086294715 +       38.13303563780*t);
      neptune_y_0+=     0.30171988148 * cos( 3.14159265359 +        0.00000000000*t);
      neptune_y_0+=     0.13505308635 * cos( 1.92949466968 +       76.26607127560*t);
      neptune_y_0+=     0.15705776296 * cos( 4.82539969469 +       36.64856292950*t);
      neptune_y_0+=     0.14935398681 * cos( 5.79694896309 +       39.61750834610*t);
      neptune_y_0+=     0.02584389323 * cos( 0.42549727257 +        1.48447270830*t);

      return neptune_y_0;
   }

   static double neptune_z(double t){
      double neptune_z_0=0.0;
      neptune_z_0+=     0.92861252357 * cos( 1.44103930199 +       38.13303563780*t);
      neptune_z_0+=     0.01244825806 * cos( 0.00000000000 +        0.00000000000*t);

      return neptune_z_0;
   }

}
