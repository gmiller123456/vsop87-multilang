import static java.lang.Math.*;

public class vsop87a_pico_velocities_mercury{
   static double mercury_x(double t){
      double exp=0.0;
      double mercury_x_0=0.0;
      exp=0;
      mercury_x_0+=-pow(t,exp)*     0.37546291728*   26087.90314157420*sin( 4.39651506942 +    26087.90314157420*t);
      mercury_x_0+=-pow(t,exp)*     0.03825746672*   52175.80628314840*sin( 1.16485604339 +    52175.80628314840*t);
      mercury_x_0+=-pow(t,exp)*     0.02625615963*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);

      return mercury_x_0;
   }

   static double mercury_y(double t){
      double exp=0.0;
      double mercury_y_0=0.0;
      exp=0;
      mercury_y_0+=-pow(t,exp)*     0.37953642888*   26087.90314157420*sin( 2.83780617820 +    26087.90314157420*t);
      mercury_y_0+=-pow(t,exp)*     0.11626131831*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      mercury_y_0+=-pow(t,exp)*     0.03854668215*   52175.80628314840*sin( 5.88780608966 +    52175.80628314840*t);

      return mercury_y_0;
   }

   static double mercury_z(double t){
      double exp=0.0;
      double mercury_z_0=0.0;
      exp=0;
      mercury_z_0+=-pow(t,exp)*     0.04607665326*   26087.90314157420*sin( 1.99295081967 +    26087.90314157420*t);

      return mercury_z_0;
   }

}
