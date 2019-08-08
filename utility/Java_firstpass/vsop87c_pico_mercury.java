import static java.lang.Math.*;

public class vsop87c_pico_mercury{
   static double mercury_x(double t){
      double mercury_x_0=0.0;
      mercury_x_0+=     0.37749277893 * cos( 4.40259139579 +    26088.14695905770*t);
      mercury_x_0+=     0.11918926148 * cos( 4.49027758439 +        0.24381748350*t);
      mercury_x_0+=     0.03840153904 * cos( 1.17015646101 +    52176.05010063190*t);

      return mercury_x_0;
   }

   static double mercury_y(double t){
      double mercury_y_0=0.0;
      mercury_y_0+=     0.37749277893 * cos( 2.83179506899 +    26088.14695905770*t);
      mercury_y_0+=     0.11918926148 * cos( 2.91948125760 +        0.24381748350*t);
      mercury_y_0+=     0.03840153904 * cos( 5.88254544140 +    52176.05010063190*t);

      return mercury_y_0;
   }

   static double mercury_z(double t){
      double mercury_z_0=0.0;
      mercury_z_0+=     0.04607665326 * cos( 1.99295081967 +    26087.90314157420*t);

      return mercury_z_0;
   }

}
