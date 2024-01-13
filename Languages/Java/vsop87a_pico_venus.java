//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87a_pico_venus{
   static double venus_x_0_(double t){
      double venus_x_0=0.0;
      venus_x_0+=     0.72211281391 * cos( 3.17575836361 +    10213.28554621100*t);

      return venus_x_0;
   }

   static double venus_x(double t){
      return venus_x_0_(t);
   }

   static double venus_y_0_(double t){
      double venus_y_0=0.0;
      venus_y_0+=     0.72324820731 * cos( 1.60573808356 +    10213.28554621100*t);

      return venus_y_0;
   }

   static double venus_y(double t){
      return venus_y_0_(t);
   }

   static double venus_z_0_(double t){
      double venus_z_0=0.0;
      venus_z_0+=     0.04282990302 * cos( 0.26703856476 +    10213.28554621100*t);

      return venus_z_0;
   }

   static double venus_z(double t){
      return venus_z_0_(t);
   }

}
