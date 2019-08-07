import static java.lang.Math.*;

public class vsop87c_pico_mars{
   static double mars_x_0_(double t){
      double mars_x_0=0.0;
      mars_x_0+=     1.51664432758 * cos( 6.20347631684 +     3340.85624418330*t);
      mars_x_0+=     0.21337343470 * cos( 2.72390342700 +        0.24381748350*t);
      mars_x_0+=     0.07067734657 * cos( 0.25841679630 +     6681.46867088311*t);

      return mars_x_0;
   }

   static double mars_x_1_(double t){
      double mars_x_1=0.0;
      mars_x_1+=     0.01668487239 * cos( 4.16976892466 +        0.24381748350*t);
      mars_x_1=mars_x_1 * t;

      return mars_x_1;
   }

   static double mars_x(double t){
      return mars_x_0_(t)+mars_x_1_(t);
   }

   static double mars_y_0_(double t){
      double mars_y_0=0.0;
      mars_y_0+=     1.51664432758 * cos( 4.63267999004 +     3340.85624418330*t);
      mars_y_0+=     0.21337343470 * cos( 1.15310710021 +        0.24381748350*t);
      mars_y_0+=     0.07067734657 * cos( 4.97080577669 +     6681.46867088311*t);

      return mars_y_0;
   }

   static double mars_y_1_(double t){
      double mars_y_1=0.0;
      mars_y_1+=     0.01668487239 * cos( 2.59897259786 +        0.24381748350*t);
      mars_y_1=mars_y_1 * t;

      return mars_y_1;
   }

   static double mars_y(double t){
      return mars_y_0_(t)+mars_y_1_(t);
   }

   static double mars_z_0_(double t){
      double mars_z_0=0.0;
      mars_z_0+=     0.04901207220 * cos( 3.76712324286 +     3340.61242669980*t);

      return mars_z_0;
   }

   static double mars_z(double t){
      return mars_z_0_(t);
   }

}
