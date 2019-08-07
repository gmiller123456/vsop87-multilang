import static java.lang.Math.*;

public class vsop87e_pico_velocities_mercury{
   static double mercury_x(double t){
      double exp=0.0;
      double mercury_x_0=0.0;
      exp=0;
      mercury_x_0+=-pow(t,exp)*     0.37546285495*   26087.90314157420*sin( 4.39651506942 +    26087.90314157420*t);
      mercury_x_0+=-pow(t,exp)*     0.03825746037*   52175.80628314840*sin( 1.16485604343 +    52175.80628314840*t);
      mercury_x_0+=-pow(t,exp)*     0.02596241714*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);

      return mercury_x_0;
   }

   static double mercury_y(double t){
      double exp=0.0;
      double mercury_y_0=0.0;
      exp=0;
      mercury_y_0+=-pow(t,exp)*     0.37953636588*   26087.90314157420*sin( 2.83780617821 +    26087.90314157420*t);
      mercury_y_0+=-pow(t,exp)*     0.11592262295*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      mercury_y_0+=-pow(t,exp)*     0.03854667576*   52175.80628314840*sin( 5.88780608961 +    52175.80628314840*t);

      return mercury_y_0;
   }

   static double mercury_z(double t){
      double exp=0.0;
      double mercury_z_0=0.0;
      exp=0;
      mercury_z_0+=-pow(t,exp)*     0.04607664562*   26087.90314157420*sin( 1.99295081967 +    26087.90314157420*t);

      return mercury_z_0;
   }

}
