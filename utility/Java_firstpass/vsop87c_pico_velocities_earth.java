import static java.lang.Math.*;

public class vsop87c_pico_velocities_earth{
   static double earth_x(double t){
      double exp=0.0;
      double earth_x_0=0.0;
      exp=0;
      earth_x_0+=-pow(t,exp)*     0.99986069925*    6283.31966747490*sin( 1.75347045757 +     6283.31966747490*t);
      earth_x_0+=-pow(t,exp)*     0.02506324281*       0.24381748350*sin( 4.93819429098 +        0.24381748350*t);

      return earth_x_0;
   }

   static double earth_y(double t){
      double exp=0.0;
      double earth_y_0=0.0;
      exp=0;
      earth_y_0+=-pow(t,exp)*     0.99986069925*    6283.31966747490*sin( 0.18267413078 +     6283.31966747490*t);
      earth_y_0+=-pow(t,exp)*     0.02506324281*       0.24381748350*sin( 3.36739796418 +        0.24381748350*t);

      return earth_y_0;
   }

   static double earth_z(double t){
      double exp=0.0;
      return 0;
   }

}
