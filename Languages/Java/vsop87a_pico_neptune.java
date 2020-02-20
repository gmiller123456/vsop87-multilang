//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87a_pico_neptune{
   static double neptune_x_0_(double t){
      double neptune_x_0=0.0;
      neptune_x_0+=    30.05890004476 * cos( 5.31211340029 +       38.13303563780*t);
      neptune_x_0+=     0.27080164222 * cos( 3.14159265359 +        0.00000000000*t);
      neptune_x_0+=     0.13505661755 * cos( 3.50078975634 +       76.26607127560*t);
      neptune_x_0+=     0.15726094556 * cos( 0.11319072675 +       36.64856292950*t);
      neptune_x_0+=     0.14935120126 * cos( 1.08499403018 +       39.61750834610*t);
      neptune_x_0+=     0.02597313814 * cos( 1.99590301412 +        1.48447270830*t);
      neptune_x_0+=     0.01074040708 * cos( 5.38502938672 +       74.78159856730*t);

      return neptune_x_0;
   }

   static double neptune_x(double t){
      return neptune_x_0_(t);
   }

   static double neptune_y_0_(double t){
      double neptune_y_0=0.0;
      neptune_y_0+=    30.06056351665 * cos( 3.74086294714 +       38.13303563780*t);
      neptune_y_0+=     0.30205857683 * cos( 3.14159265359 +        0.00000000000*t);
      neptune_y_0+=     0.13506391797 * cos( 1.92953034883 +       76.26607127560*t);
      neptune_y_0+=     0.15706589373 * cos( 4.82539970129 +       36.64856292950*t);
      neptune_y_0+=     0.14936165806 * cos( 5.79694900665 +       39.61750834610*t);
      neptune_y_0+=     0.02584250749 * cos( 0.42549700754 +        1.48447270830*t);
      neptune_y_0+=     0.01073739772 * cos( 3.81371728533 +       74.78159856730*t);

      return neptune_y_0;
   }

   static double neptune_y(double t){
      return neptune_y_0_(t);
   }

   static double neptune_z_0_(double t){
      double neptune_z_0=0.0;
      neptune_z_0+=     0.92866054405 * cos( 1.44103930278 +       38.13303563780*t);
      neptune_z_0+=     0.01245978462 * cos( 0.00000000000 +        0.00000000000*t);

      return neptune_z_0;
   }

   static double neptune_z(double t){
      return neptune_z_0_(t);
   }

}
