import static java.lang.Math.*;

public class vsop87a_nano_velocities_mercury{
   static double mercury_x(double t){
      double exp=0.0;
      double mercury_x_0=0.0;
      exp=0;
      mercury_x_0+=-pow(t,exp)*     0.37546291728*   26087.90314157420*sin( 4.39651506942 +    26087.90314157420*t);
      mercury_x_0+=-pow(t,exp)*     0.03825746672*   52175.80628314840*sin( 1.16485604339 +    52175.80628314840*t);
      mercury_x_0+=-pow(t,exp)*     0.02625615963*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      mercury_x_0+=-pow(t,exp)*     0.00584261333*   78263.70942472259*sin( 4.21599394757 +    78263.70942472259*t);
      mercury_x_0+=-pow(t,exp)*     0.00105716695*  104351.61256629678*sin( 0.98379033182 +   104351.61256629678*t);

      double mercury_x_1=0.0;
      exp=1;
      mercury_x_1+=pow(t,exp-1)*exp*     0.00318848034*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00318848034*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mercury_x_1+=pow(t,exp-1)*exp*     0.00105289019*cos( 5.91600475006 +    52175.80628314840*t)-pow(t,exp)*     0.00105289019*   52175.80628314840*sin( 5.91600475006 +    52175.80628314840*t);

      return mercury_x_0+mercury_x_1;
   }

   static double mercury_y(double t){
      double exp=0.0;
      double mercury_y_0=0.0;
      exp=0;
      mercury_y_0+=-pow(t,exp)*     0.37953642888*   26087.90314157420*sin( 2.83780617820 +    26087.90314157420*t);
      mercury_y_0+=-pow(t,exp)*     0.11626131831*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      mercury_y_0+=-pow(t,exp)*     0.03854668215*   52175.80628314840*sin( 5.88780608966 +    52175.80628314840*t);
      mercury_y_0+=-pow(t,exp)*     0.00587711268*   78263.70942472259*sin( 2.65498896201 +    78263.70942472259*t);
      mercury_y_0+=-pow(t,exp)*     0.00106235493*  104351.61256629678*sin( 5.70550616735 +   104351.61256629678*t);

      double mercury_y_1=0.0;
      exp=1;
      mercury_y_1+=pow(t,exp-1)*exp*     0.00107803852*cos( 4.34964793883 +    52175.80628314840*t)-pow(t,exp)*     0.00107803852*   52175.80628314840*sin( 4.34964793883 +    52175.80628314840*t);

      return mercury_y_0+mercury_y_1;
   }

   static double mercury_z(double t){
      double exp=0.0;
      double mercury_z_0=0.0;
      exp=0;
      mercury_z_0+=-pow(t,exp)*     0.04607665326*   26087.90314157420*sin( 1.99295081967 +    26087.90314157420*t);
      mercury_z_0+=-pow(t,exp)*     0.00708734365*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      mercury_z_0+=-pow(t,exp)*     0.00469171617*   52175.80628314840*sin( 5.04215742764 +    52175.80628314840*t);

      double mercury_z_1=0.0;
      exp=1;
      mercury_z_1+=pow(t,exp-1)*exp*     0.00108722177*cos( 3.91134750825 +    26087.90314157420*t)-pow(t,exp)*     0.00108722177*   26087.90314157420*sin( 3.91134750825 +    26087.90314157420*t);

      return mercury_z_0+mercury_z_1;
   }

}
