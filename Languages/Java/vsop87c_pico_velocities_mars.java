//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87c_pico_velocities_mars{
   static double mars_x_0_(double t){
      double mars_x_0=0.0;
      double exp=0;
      mars_x_0+=-pow(t,exp)*     1.51664432758*    3340.85624418330*sin( 6.20347631684 +     3340.85624418330*t);
      mars_x_0+=-pow(t,exp)*     0.21337343470*       0.24381748350*sin( 2.72390342700 +        0.24381748350*t);
      mars_x_0+=-pow(t,exp)*     0.07067734657*    6681.46867088311*sin( 0.25841679630 +     6681.46867088311*t);

      return mars_x_0;
   }

   static double mars_x_1_(double t){
      double mars_x_1=0.0;
      double exp=1;
      mars_x_1+=pow(t,exp-1)*exp*     0.01668487239*cos( 4.16976892466 +        0.24381748350*t)-pow(t,exp)*     0.01668487239*       0.24381748350*sin( 4.16976892466 +        0.24381748350*t);

      return mars_x_1;
   }

   static double mars_x(double t){
      return mars_x_0_(t)+mars_x_1_(t);
   }

   static double mars_y_0_(double t){
      double mars_y_0=0.0;
      double exp=0;
      mars_y_0+=-pow(t,exp)*     1.51664432758*    3340.85624418330*sin( 4.63267999004 +     3340.85624418330*t);
      mars_y_0+=-pow(t,exp)*     0.21337343470*       0.24381748350*sin( 1.15310710021 +        0.24381748350*t);
      mars_y_0+=-pow(t,exp)*     0.07067734657*    6681.46867088311*sin( 4.97080577669 +     6681.46867088311*t);

      return mars_y_0;
   }

   static double mars_y_1_(double t){
      double mars_y_1=0.0;
      double exp=1;
      mars_y_1+=pow(t,exp-1)*exp*     0.01668487239*cos( 2.59897259786 +        0.24381748350*t)-pow(t,exp)*     0.01668487239*       0.24381748350*sin( 2.59897259786 +        0.24381748350*t);

      return mars_y_1;
   }

   static double mars_y(double t){
      return mars_y_0_(t)+mars_y_1_(t);
   }

   static double mars_z_0_(double t){
      double mars_z_0=0.0;
      double exp=0;
      mars_z_0+=-pow(t,exp)*     0.04901207220*    3340.61242669980*sin( 3.76712324286 +     3340.61242669980*t);

      return mars_z_0;
   }

   static double mars_z(double t){
      return mars_z_0_(t);
   }

}
