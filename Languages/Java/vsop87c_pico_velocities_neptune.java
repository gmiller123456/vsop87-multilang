//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87c_pico_velocities_neptune{
   static double neptune_x_0_(double t){
      double neptune_x_0=0.0;
      double exp=0;
      neptune_x_0+=-pow(t,exp)*    30.05973100580*      38.37685312130*sin( 5.31188633083 +       38.37685312130*t);
      neptune_x_0+=-pow(t,exp)*     0.40567587218*       0.24381748350*sin( 3.98149970131 +        0.24381748350*t);
      neptune_x_0+=-pow(t,exp)*     0.13506026414*      76.50988875911*sin( 3.50055820972 +       76.50988875911*t);
      neptune_x_0+=-pow(t,exp)*     0.15716341901*      36.89238041300*sin( 0.11310077968 +       36.89238041300*t);
      neptune_x_0+=-pow(t,exp)*     0.14935642614*      39.86132582961*sin( 1.08477702063 +       39.86132582961*t);
      neptune_x_0+=-pow(t,exp)*     0.02590782232*       1.72829019180*sin( 1.99609768221 +        1.72829019180*t);
      neptune_x_0+=-pow(t,exp)*     0.01073890204*      75.02541605080*sin( 5.38477153556 +       75.02541605080*t);

      return neptune_x_0;
   }

   static double neptune_x_2_(double t){
      double neptune_x_2=0.0;
      double exp=2;
      neptune_x_2+=pow(t,exp-1)*exp*     0.01620002167*cos( 0.60038473142 +       38.37685312130*t)-pow(t,exp)*     0.01620002167*      38.37685312130*sin( 0.60038473142 +       38.37685312130*t);

      return neptune_x_2;
   }

   static double neptune_x(double t){
      return neptune_x_0_(t)+neptune_x_2_(t);
   }

   static double neptune_y_0_(double t){
      double neptune_y_0=0.0;
      double exp=0;
      neptune_y_0+=-pow(t,exp)*    30.05973100580*      38.37685312130*sin( 3.74109000403 +       38.37685312130*t);
      neptune_y_0+=-pow(t,exp)*     0.40567587218*       0.24381748350*sin( 2.41070337452 +        0.24381748350*t);
      neptune_y_0+=-pow(t,exp)*     0.13506026414*      76.50988875911*sin( 1.92976188293 +       76.50988875911*t);
      neptune_y_0+=-pow(t,exp)*     0.15716341901*      36.89238041300*sin( 4.82548976006 +       36.89238041300*t);
      neptune_y_0+=-pow(t,exp)*     0.14935642614*      39.86132582961*sin( 5.79716600101 +       39.86132582961*t);
      neptune_y_0+=-pow(t,exp)*     0.02590782232*       1.72829019180*sin( 0.42530135542 +        1.72829019180*t);
      neptune_y_0+=-pow(t,exp)*     0.01073890204*      75.02541605080*sin( 3.81397520876 +       75.02541605080*t);

      return neptune_y_0;
   }

   static double neptune_y_2_(double t){
      double neptune_y_2=0.0;
      double exp=2;
      neptune_y_2+=pow(t,exp-1)*exp*     0.01620002167*cos( 5.31277371181 +       38.37685312130*t)-pow(t,exp)*     0.01620002167*      38.37685312130*sin( 5.31277371181 +       38.37685312130*t);

      return neptune_y_2;
   }

   static double neptune_y(double t){
      return neptune_y_0_(t)+neptune_y_2_(t);
   }

   static double neptune_z_0_(double t){
      double neptune_z_0=0.0;
      double exp=0;
      neptune_z_0+=-pow(t,exp)*     0.92866054405*      38.13303563780*sin( 1.44103930278 +       38.13303563780*t);
      neptune_z_0+=-pow(t,exp)*     0.01245978462*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return neptune_z_0;
   }

   static double neptune_z_1_(double t){
      double neptune_z_1=0.0;
      double exp=1;
      neptune_z_1+=pow(t,exp-1)*exp*     0.06832633707*cos( 3.80782656293 +       38.13303563780*t)-pow(t,exp)*     0.06832633707*      38.13303563780*sin( 3.80782656293 +       38.13303563780*t);

      return neptune_z_1;
   }

   static double neptune_z(double t){
      return neptune_z_0_(t)+neptune_z_1_(t);
   }

}
