import static java.lang.Math.*;

public class vsop87c_pico_earth{
   static double earth_x_0_(double t){
      double earth_x_0=0.0;
      earth_x_0+=     0.99986069925 * cos( 1.75347045757 +     6283.31966747490*t);
      earth_x_0+=     0.02506324281 * cos( 4.93819429098 +        0.24381748350*t);

      return earth_x_0;
   }

   static double earth_x(double t){
      return earth_x_0_(t);
   }

   static double earth_y_0_(double t){
      double earth_y_0=0.0;
      earth_y_0+=     0.99986069925 * cos( 0.18267413078 +     6283.31966747490*t);
      earth_y_0+=     0.02506324281 * cos( 3.36739796418 +        0.24381748350*t);

      return earth_y_0;
   }

   static double earth_y(double t){
      return earth_y_0_(t);
   }

   static double earth_z(double t){
      return 0;
   }

}
