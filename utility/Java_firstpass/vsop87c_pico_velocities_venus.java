import static java.lang.Math.*;

public class vsop87c_pico_velocities_venus{
   static double venus_x(double t){
      double exp=0.0;
      double venus_x_0=0.0;
      exp=0;
      venus_x_0+=-pow(t,exp)*     0.72268045621*   10213.52936369450*sin( 3.17614669179 +    10213.52936369450*t);

      return venus_x_0;
   }

   static double venus_y(double t){
      double exp=0.0;
      double venus_y_0=0.0;
      exp=0;
      venus_y_0+=-pow(t,exp)*     0.72268045621*   10213.52936369450*sin( 1.60535036499 +    10213.52936369450*t);

      return venus_y_0;
   }

   static double venus_z(double t){
      double exp=0.0;
      double venus_z_0=0.0;
      exp=0;
      venus_z_0+=-pow(t,exp)*     0.04282990302*   10213.28554621100*sin( 0.26703856476 +    10213.28554621100*t);

      return venus_z_0;
   }

}
