//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87c_pico_velocities_mercury{
   static double mercury_x_0_(double t){
      double mercury_x_0=0.0;
      double exp=0;
      mercury_x_0+=-pow(t,exp)*     0.37749277893*   26088.14695905770*sin( 4.40259139579 +    26088.14695905770*t);
      mercury_x_0+=-pow(t,exp)*     0.11918926148*       0.24381748350*sin( 4.49027758439 +        0.24381748350*t);
      mercury_x_0+=-pow(t,exp)*     0.03840153904*   52176.05010063190*sin( 1.17015646101 +    52176.05010063190*t);

      return mercury_x_0;
   }

   static double mercury_x(double t){
      return mercury_x_0_(t);
   }

   static double mercury_y_0_(double t){
      double mercury_y_0=0.0;
      double exp=0;
      mercury_y_0+=-pow(t,exp)*     0.37749277893*   26088.14695905770*sin( 2.83179506899 +    26088.14695905770*t);
      mercury_y_0+=-pow(t,exp)*     0.11918926148*       0.24381748350*sin( 2.91948125760 +        0.24381748350*t);
      mercury_y_0+=-pow(t,exp)*     0.03840153904*   52176.05010063190*sin( 5.88254544140 +    52176.05010063190*t);

      return mercury_y_0;
   }

   static double mercury_y(double t){
      return mercury_y_0_(t);
   }

   static double mercury_z_0_(double t){
      double mercury_z_0=0.0;
      double exp=0;
      mercury_z_0+=-pow(t,exp)*     0.04607665326*   26087.90314157420*sin( 1.99295081967 +    26087.90314157420*t);

      return mercury_z_0;
   }

   static double mercury_z(double t){
      return mercury_z_0_(t);
   }

}
