//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87e_pico_velocities_mars{
   static double mars_x_0_(double t){
      double mars_x_0=0.0;
      double exp=0;
      mars_x_0+=-pow(t,exp)*     1.51769887405*    3340.61242669980*sin( 6.20403346548 +     3340.61242669980*t);
      mars_x_0+=-pow(t,exp)*     0.19473570996*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      mars_x_0+=-pow(t,exp)*     0.07070917372*    6681.22485339960*sin( 0.25870338552 +     6681.22485339960*t);

      return mars_x_0;
   }

   static double mars_x(double t){
      return mars_x_0_(t);
   }

   static double mars_y_0_(double t){
      double mars_y_0=0.0;
      double exp=0;
      mars_y_0+=-pow(t,exp)*     1.51558927367*    3340.61242669980*sin( 4.63212206588 +     3340.61242669980*t);
      mars_y_0+=-pow(t,exp)*     0.07064547959*    6681.22485339960*sin( 4.97051892898 +     6681.22485339960*t);
      mars_y_0+=-pow(t,exp)*     0.08689350637*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return mars_y_0;
   }

   static double mars_y_1_(double t){
      double mars_y_1=0.0;
      double exp=1;
      mars_y_1+=pow(t,exp-1)*exp*     0.01427318093*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.01427318093*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);

      return mars_y_1;
   }

   static double mars_y(double t){
      return mars_y_0_(t)+mars_y_1_(t);
   }

   static double mars_z_0_(double t){
      double mars_z_0=0.0;
      double exp=0;
      mars_z_0+=-pow(t,exp)*     0.04901205639*    3340.61242669980*sin( 3.76712324293 +     3340.61242669980*t);

      return mars_z_0;
   }

   static double mars_z(double t){
      return mars_z_0_(t);
   }

}
