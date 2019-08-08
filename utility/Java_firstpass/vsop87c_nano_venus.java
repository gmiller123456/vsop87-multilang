import static java.lang.Math.*;

public class vsop87c_nano_venus{
   static double venus_x(double t){
      double venus_x_0=0.0;
      venus_x_0+=     0.72268045621 * cos( 3.17614669179 +    10213.52936369450*t);
      venus_x_0+=     0.00733886107 * cos( 5.43699242686 +        0.24381748350*t);
      venus_x_0+=     0.00244692613 * cos( 4.05605630888 +    20426.81490990550*t);

      return venus_x_0;
   }

   static double venus_y(double t){
      double venus_y_0=0.0;
      venus_y_0+=     0.72268045621 * cos( 1.60535036499 +    10213.52936369450*t);
      venus_y_0+=     0.00733886107 * cos( 3.86619610007 +        0.24381748350*t);
      venus_y_0+=     0.00244692613 * cos( 2.48525998209 +    20426.81490990550*t);

      return venus_y_0;
   }

   static double venus_z(double t){
      double venus_z_0=0.0;
      venus_z_0+=     0.04282990302 * cos( 0.26703856476 +    10213.28554621100*t);

      double venus_z_1=0.0;
      venus_z_1+=     0.00371157532 * cos( 1.80370484107 +    10213.28554621100*t);
      venus_z_1=venus_z_1 * t;

      return venus_z_0+venus_z_1;
   }

}
