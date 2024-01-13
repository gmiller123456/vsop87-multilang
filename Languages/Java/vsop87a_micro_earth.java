//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87a_micro_earth{
   static double earth_x_0_(double t){
      double earth_x_0=0.0;
      earth_x_0+=     0.99982928844 * cos( 1.75348568475 +     6283.07584999140*t);
      earth_x_0+=     0.00835257300 * cos( 1.71034539450 +    12566.15169998280*t);
      earth_x_0+=     0.00561144206 * cos( 0.00000000000 +        0.00000000000*t);
      earth_x_0+=     0.00010466628 * cos( 1.66722645223 +    18849.22754997420*t);

      return earth_x_0;
   }

   static double earth_x_1_(double t){
      double earth_x_1=0.0;
      earth_x_1+=     0.00123403056 * cos( 0.00000000000 +        0.00000000000*t);
      earth_x_1+=     0.00051500156 * cos( 6.00266267204 +    12566.15169998280*t);
      earth_x_1=earth_x_1 * t;

      return earth_x_1;
   }

   static double earth_x(double t){
      return earth_x_0_(t)+earth_x_1_(t);
   }

   static double earth_y_0_(double t){
      double earth_y_0=0.0;
      earth_y_0+=     0.99989211030 * cos( 0.18265890456 +     6283.07584999140*t);
      earth_y_0+=     0.02442699036 * cos( 3.14159265359 +        0.00000000000*t);
      earth_y_0+=     0.00835292314 * cos( 0.13952878991 +    12566.15169998280*t);
      earth_y_0+=     0.00010466965 * cos( 0.09641690558 +    18849.22754997420*t);

      return earth_y_0;
   }

   static double earth_y_1_(double t){
      double earth_y_1=0.0;
      earth_y_1+=     0.00093046324 * cos( 0.00000000000 +        0.00000000000*t);
      earth_y_1+=     0.00051506609 * cos( 4.43180499286 +    12566.15169998280*t);
      earth_y_1=earth_y_1 * t;

      return earth_y_1;
   }

   static double earth_y(double t){
      return earth_y_0_(t)+earth_y_1_(t);
   }

   static double earth_z_1_(double t){
      double earth_z_1=0.0;
      earth_z_1+=     0.00227822442 * cos( 3.41372504278 +     6283.07584999140*t);
      earth_z_1=earth_z_1 * t;

      return earth_z_1;
   }

   static double earth_z(double t){
      return earth_z_1_(t);
   }

}
