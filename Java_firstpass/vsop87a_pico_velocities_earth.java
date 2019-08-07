import static java.lang.Math.*;

public class vsop87a_pico_velocities_earth{
   static double earth_x(double t){
      double exp=0.0;
      double earth_x_0=0.0;
      exp=0;
      earth_x_0+=-pow(t,exp)*     0.99982928844*    6283.07584999140*sin( 1.75348568475 +     6283.07584999140*t);

      return earth_x_0;
   }

   static double earth_y(double t){
      double exp=0.0;
      double earth_y_0=0.0;
      exp=0;
      earth_y_0+=-pow(t,exp)*     0.99989211030*    6283.07584999140*sin( 0.18265890456 +     6283.07584999140*t);
      earth_y_0+=-pow(t,exp)*     0.02442699036*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);

      return earth_y_0;
   }

   static double earth_z(double t){
      double exp=0.0;
      return 0;
   }

}
