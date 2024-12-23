import static java.lang.Math.*;

public class vsop87c_nano_velocities_mercury{
   static double mercury_x(double t){
      double exp=0.0;
      double mercury_x_0=0.0;
      exp=0;
      mercury_x_0+=-pow(t,exp)*     0.37749277893*   26088.14695905770*sin( 4.40259139579 +    26088.14695905770*t);
      mercury_x_0+=-pow(t,exp)*     0.11918926148*       0.24381748350*sin( 4.49027758439 +        0.24381748350*t);
      mercury_x_0+=-pow(t,exp)*     0.03840153904*   52176.05010063190*sin( 1.17015646101 +    52176.05010063190*t);
      mercury_x_0+=-pow(t,exp)*     0.00585979278*   78263.95324220609*sin( 4.22090402969 +    78263.95324220609*t);
      mercury_x_0+=-pow(t,exp)*     0.00305833424*   26087.65932409069*sin( 2.10298673336 +    26087.65932409069*t);
      mercury_x_0+=-pow(t,exp)*     0.00105974941*  104351.85638378029*sin( 0.98846517420 +   104351.85638378029*t);

      double mercury_x_1=0.0;
      exp=1;
      mercury_x_1+=pow(t,exp-1)*exp*     0.00328639517*cos( 6.04028758995 +        0.24381748350*t)-pow(t,exp)*     0.00328639517*       0.24381748350*sin( 6.04028758995 +        0.24381748350*t);
      mercury_x_1+=pow(t,exp-1)*exp*     0.00106107047*cos( 5.91538469937 +    52176.05010063190*t)-pow(t,exp)*     0.00106107047*   52176.05010063190*sin( 5.91538469937 +    52176.05010063190*t);

      return mercury_x_0+mercury_x_1;
   }

   static double mercury_y(double t){
      double exp=0.0;
      double mercury_y_0=0.0;
      exp=0;
      mercury_y_0+=-pow(t,exp)*     0.37749277893*   26088.14695905770*sin( 2.83179506899 +    26088.14695905770*t);
      mercury_y_0+=-pow(t,exp)*     0.11918926148*       0.24381748350*sin( 2.91948125760 +        0.24381748350*t);
      mercury_y_0+=-pow(t,exp)*     0.03840153904*   52176.05010063190*sin( 5.88254544140 +    52176.05010063190*t);
      mercury_y_0+=-pow(t,exp)*     0.00585979278*   78263.95324220609*sin( 2.65010770289 +    78263.95324220609*t);
      mercury_y_0+=-pow(t,exp)*     0.00305833424*   26087.65932409069*sin( 3.67378306016 +    26087.65932409069*t);
      mercury_y_0+=-pow(t,exp)*     0.00105974941*  104351.85638378029*sin( 5.70085415459 +   104351.85638378029*t);

      double mercury_y_1=0.0;
      exp=1;
      mercury_y_1+=pow(t,exp-1)*exp*     0.00328639517*cos( 4.46949126315 +        0.24381748350*t)-pow(t,exp)*     0.00328639517*       0.24381748350*sin( 4.46949126315 +        0.24381748350*t);
      mercury_y_1+=pow(t,exp-1)*exp*     0.00106107047*cos( 4.34458837257 +    52176.05010063190*t)-pow(t,exp)*     0.00106107047*   52176.05010063190*sin( 4.34458837257 +    52176.05010063190*t);

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
      mercury_z_1+=pow(t,exp-1)*exp*     0.00172388569*cos( 3.47961470688 +    26087.90314157420*t)-pow(t,exp)*     0.00172388569*   26087.90314157420*sin( 3.47961470688 +    26087.90314157420*t);

      return mercury_z_0+mercury_z_1;
   }

}
