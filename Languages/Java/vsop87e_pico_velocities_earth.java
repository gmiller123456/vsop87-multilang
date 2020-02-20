//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87e_pico_velocities_earth{
   static double earth_x_0_(double t){
      double earth_x_0=0.0;
      double exp=0;
      earth_x_0+=-pow(t,exp)*     0.99982624851*    6283.07584999140*sin( 1.75348568475 +     6283.07584999140*t);

      return earth_x_0;
   }

   static double earth_x(double t){
      return earth_x_0_(t);
   }

   static double earth_y_0_(double t){
      double earth_y_0=0.0;
      double exp=0;
      earth_y_0+=-pow(t,exp)*     0.99988907017*    6283.07584999140*sin( 0.18265890456 +     6283.07584999140*t);
      earth_y_0+=-pow(t,exp)*     0.02408829501*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);

      return earth_y_0;
   }

   static double earth_y(double t){
      return earth_y_0_(t);
   }

   static double earth_z(double t){
      return 0;
   }

}
