import static java.lang.Math.*;

public class vsop87e_pico_mars{
   static double mars_x(double t){
      double mars_x_0=0.0;
      mars_x_0+=     1.51769887405 * cos( 6.20403346548 +     3340.61242669980*t);
      mars_x_0+=     0.19473570996 * cos( 3.14159265359 +        0.00000000000*t);
      mars_x_0+=     0.07070917372 * cos( 0.25870338552 +     6681.22485339960*t);

      return mars_x_0;
   }

   static double mars_y(double t){
      double mars_y_0=0.0;
      mars_y_0+=     1.51558927367 * cos( 4.63212206588 +     3340.61242669980*t);
      mars_y_0+=     0.07064547959 * cos( 4.97051892898 +     6681.22485339960*t);
      mars_y_0+=     0.08689350637 * cos( 0.00000000000 +        0.00000000000*t);

      double mars_y_1=0.0;
      mars_y_1+=     0.01427318093 * cos( 3.14159265359 +        0.00000000000*t);
      mars_y_1=mars_y_1 * t;

      return mars_y_0+mars_y_1;
   }

   static double mars_z(double t){
      double mars_z_0=0.0;
      mars_z_0+=     0.04901205639 * cos( 3.76712324293 +     3340.61242669980*t);

      return mars_z_0;
   }

}
