//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87c_nano_earth{
   static double earth_x_0_(double t){
      double earth_x_0=0.0;
      earth_x_0+=     0.99986069925 * cos( 1.75347045757 +     6283.31966747490*t);
      earth_x_0+=     0.02506324281 * cos( 4.93819429098 +        0.24381748350*t);
      earth_x_0+=     0.00835274807 * cos( 1.71033525539 +    12566.39551746630*t);

      return earth_x_0;
   }

   static double earth_x_1_(double t){
      double earth_x_1=0.0;
      earth_x_1+=     0.00154550744 * cos( 0.64605836878 +        0.24381748350*t);
      earth_x_1=earth_x_1 * t;

      return earth_x_1;
   }

   static double earth_x(double t){
      return earth_x_0_(t)+earth_x_1_(t);
   }

   static double earth_y_0_(double t){
      double earth_y_0=0.0;
      earth_y_0+=     0.99986069925 * cos( 0.18267413078 +     6283.31966747490*t);
      earth_y_0+=     0.02506324281 * cos( 3.36739796418 +        0.24381748350*t);
      earth_y_0+=     0.00835274807 * cos( 0.13953892859 +    12566.39551746630*t);

      return earth_y_0;
   }

   static double earth_y_1_(double t){
      double earth_y_1=0.0;
      earth_y_1+=     0.00154550744 * cos( 5.35844734917 +        0.24381748350*t);
      earth_y_1=earth_y_1 * t;

      return earth_y_1;
   }

   static double earth_y(double t){
      return earth_y_0_(t)+earth_y_1_(t);
   }

   static double earth_z(double t){
      return 0;
   }

}
