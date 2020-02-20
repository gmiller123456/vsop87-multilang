//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87c_pico_neptune{
   static double neptune_x_0_(double t){
      double neptune_x_0=0.0;
      neptune_x_0+=    30.05973100580 * cos( 5.31188633083 +       38.37685312130*t);
      neptune_x_0+=     0.40567587218 * cos( 3.98149970131 +        0.24381748350*t);
      neptune_x_0+=     0.13506026414 * cos( 3.50055820972 +       76.50988875911*t);
      neptune_x_0+=     0.15716341901 * cos( 0.11310077968 +       36.89238041300*t);
      neptune_x_0+=     0.14935642614 * cos( 1.08477702063 +       39.86132582961*t);
      neptune_x_0+=     0.02590782232 * cos( 1.99609768221 +        1.72829019180*t);
      neptune_x_0+=     0.01073890204 * cos( 5.38477153556 +       75.02541605080*t);

      return neptune_x_0;
   }

   static double neptune_x_2_(double t){
      double neptune_x_2=0.0;
      neptune_x_2+=     0.01620002167 * cos( 0.60038473142 +       38.37685312130*t);
      neptune_x_2=neptune_x_2 * t * t;

      return neptune_x_2;
   }

   static double neptune_x(double t){
      return neptune_x_0_(t)+neptune_x_2_(t);
   }

   static double neptune_y_0_(double t){
      double neptune_y_0=0.0;
      neptune_y_0+=    30.05973100580 * cos( 3.74109000403 +       38.37685312130*t);
      neptune_y_0+=     0.40567587218 * cos( 2.41070337452 +        0.24381748350*t);
      neptune_y_0+=     0.13506026414 * cos( 1.92976188293 +       76.50988875911*t);
      neptune_y_0+=     0.15716341901 * cos( 4.82548976006 +       36.89238041300*t);
      neptune_y_0+=     0.14935642614 * cos( 5.79716600101 +       39.86132582961*t);
      neptune_y_0+=     0.02590782232 * cos( 0.42530135542 +        1.72829019180*t);
      neptune_y_0+=     0.01073890204 * cos( 3.81397520876 +       75.02541605080*t);

      return neptune_y_0;
   }

   static double neptune_y_2_(double t){
      double neptune_y_2=0.0;
      neptune_y_2+=     0.01620002167 * cos( 5.31277371181 +       38.37685312130*t);
      neptune_y_2=neptune_y_2 * t * t;

      return neptune_y_2;
   }

   static double neptune_y(double t){
      return neptune_y_0_(t)+neptune_y_2_(t);
   }

   static double neptune_z_0_(double t){
      double neptune_z_0=0.0;
      neptune_z_0+=     0.92866054405 * cos( 1.44103930278 +       38.13303563780*t);
      neptune_z_0+=     0.01245978462 * cos( 0.00000000000 +        0.00000000000*t);

      return neptune_z_0;
   }

   static double neptune_z_1_(double t){
      double neptune_z_1=0.0;
      neptune_z_1+=     0.06832633707 * cos( 3.80782656293 +       38.13303563780*t);
      neptune_z_1=neptune_z_1 * t;

      return neptune_z_1;
   }

   static double neptune_z(double t){
      return neptune_z_0_(t)+neptune_z_1_(t);
   }

}
