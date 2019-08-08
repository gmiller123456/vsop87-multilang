import static java.lang.Math.*;

public class vsop87e_pico_mercury{
   static double mercury_x(double t){
      double mercury_x_0=0.0;
      mercury_x_0+=     0.37546285495 * cos( 4.39651506942 +    26087.90314157420*t);
      mercury_x_0+=     0.03825746037 * cos( 1.16485604343 +    52175.80628314840*t);
      mercury_x_0+=     0.02596241714 * cos( 3.14159265359 +        0.00000000000*t);

      return mercury_x_0;
   }

   static double mercury_y(double t){
      double mercury_y_0=0.0;
      mercury_y_0+=     0.37953636588 * cos( 2.83780617821 +    26087.90314157420*t);
      mercury_y_0+=     0.11592262295 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_y_0+=     0.03854667576 * cos( 5.88780608961 +    52175.80628314840*t);

      return mercury_y_0;
   }

   static double mercury_z(double t){
      double mercury_z_0=0.0;
      mercury_z_0+=     0.04607664562 * cos( 1.99295081967 +    26087.90314157420*t);

      return mercury_z_0;
   }

}
