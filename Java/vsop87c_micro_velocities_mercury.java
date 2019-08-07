import static java.lang.Math.*;

public class vsop87c_micro_velocities_mercury{
   static double mercury_x_0_(double t){
      double mercury_x_0=0.0;
      double exp=0;
      mercury_x_0+=-pow(t,exp)*     0.37749277893*   26088.14695905770*sin( 4.40259139579 +    26088.14695905770*t);
      mercury_x_0+=-pow(t,exp)*     0.11918926148*       0.24381748350*sin( 4.49027758439 +        0.24381748350*t);
      mercury_x_0+=-pow(t,exp)*     0.03840153904*   52176.05010063190*sin( 1.17015646101 +    52176.05010063190*t);
      mercury_x_0+=-pow(t,exp)*     0.00585979278*   78263.95324220609*sin( 4.22090402969 +    78263.95324220609*t);
      mercury_x_0+=-pow(t,exp)*     0.00305833424*   26087.65932409069*sin( 2.10298673336 +    26087.65932409069*t);
      mercury_x_0+=-pow(t,exp)*     0.00105974941*  104351.85638378029*sin( 0.98846517420 +   104351.85638378029*t);
      mercury_x_0+=-pow(t,exp)*     0.00024906132*   52175.56246566489*sin( 5.26305668971 +    52175.56246566489*t);
      mercury_x_0+=-pow(t,exp)*     0.00021056065*  130439.75952535449*sin( 4.03921104994 +   130439.75952535449*t);

      return mercury_x_0;
   }

   static double mercury_x_1_(double t){
      double mercury_x_1=0.0;
      double exp=1;
      mercury_x_1+=pow(t,exp-1)*exp*     0.00328639517*cos( 6.04028758995 +        0.24381748350*t)-pow(t,exp)*     0.00328639517*       0.24381748350*sin( 6.04028758995 +        0.24381748350*t);
      mercury_x_1+=pow(t,exp-1)*exp*     0.00106107047*cos( 5.91538469937 +    52176.05010063190*t)-pow(t,exp)*     0.00106107047*   52176.05010063190*sin( 5.91538469937 +    52176.05010063190*t);
      mercury_x_1+=pow(t,exp-1)*exp*     0.00032448440*cos( 2.68404164136 +    78263.95324220609*t)-pow(t,exp)*     0.00032448440*   78263.95324220609*sin( 2.68404164136 +    78263.95324220609*t);

      return mercury_x_1;
   }

   static double mercury_x_2_(double t){
      double mercury_x_2=0.0;
      double exp=2;
      mercury_x_2+=pow(t,exp-1)*exp*     0.00020000263*cos( 5.96893489541 +    26088.14695905770*t)-pow(t,exp)*     0.00020000263*   26088.14695905770*sin( 5.96893489541 +    26088.14695905770*t);

      return mercury_x_2;
   }

   static double mercury_x(double t){
      return mercury_x_0_(t)+mercury_x_1_(t)+mercury_x_2_(t);
   }

   static double mercury_y_0_(double t){
      double mercury_y_0=0.0;
      double exp=0;
      mercury_y_0+=-pow(t,exp)*     0.37749277893*   26088.14695905770*sin( 2.83179506899 +    26088.14695905770*t);
      mercury_y_0+=-pow(t,exp)*     0.11918926148*       0.24381748350*sin( 2.91948125760 +        0.24381748350*t);
      mercury_y_0+=-pow(t,exp)*     0.03840153904*   52176.05010063190*sin( 5.88254544140 +    52176.05010063190*t);
      mercury_y_0+=-pow(t,exp)*     0.00585979278*   78263.95324220609*sin( 2.65010770289 +    78263.95324220609*t);
      mercury_y_0+=-pow(t,exp)*     0.00305833424*   26087.65932409069*sin( 3.67378306016 +    26087.65932409069*t);
      mercury_y_0+=-pow(t,exp)*     0.00105974941*  104351.85638378029*sin( 5.70085415459 +   104351.85638378029*t);
      mercury_y_0+=-pow(t,exp)*     0.00024906132*   52175.56246566489*sin( 0.55066770933 +    52175.56246566489*t);
      mercury_y_0+=-pow(t,exp)*     0.00021056065*  130439.75952535449*sin( 2.46841472315 +   130439.75952535449*t);

      return mercury_y_0;
   }

   static double mercury_y_1_(double t){
      double mercury_y_1=0.0;
      double exp=1;
      mercury_y_1+=pow(t,exp-1)*exp*     0.00328639517*cos( 4.46949126315 +        0.24381748350*t)-pow(t,exp)*     0.00328639517*       0.24381748350*sin( 4.46949126315 +        0.24381748350*t);
      mercury_y_1+=pow(t,exp-1)*exp*     0.00106107047*cos( 4.34458837257 +    52176.05010063190*t)-pow(t,exp)*     0.00106107047*   52176.05010063190*sin( 4.34458837257 +    52176.05010063190*t);
      mercury_y_1+=pow(t,exp-1)*exp*     0.00032448440*cos( 1.11324531456 +    78263.95324220609*t)-pow(t,exp)*     0.00032448440*   78263.95324220609*sin( 1.11324531456 +    78263.95324220609*t);

      return mercury_y_1;
   }

   static double mercury_y_2_(double t){
      double mercury_y_2=0.0;
      double exp=2;
      mercury_y_2+=pow(t,exp-1)*exp*     0.00020000263*cos( 4.39813856862 +    26088.14695905770*t)-pow(t,exp)*     0.00020000263*   26088.14695905770*sin( 4.39813856862 +    26088.14695905770*t);

      return mercury_y_2;
   }

   static double mercury_y(double t){
      return mercury_y_0_(t)+mercury_y_1_(t)+mercury_y_2_(t);
   }

   static double mercury_z_0_(double t){
      double mercury_z_0=0.0;
      double exp=0;
      mercury_z_0+=-pow(t,exp)*     0.04607665326*   26087.90314157420*sin( 1.99295081967 +    26087.90314157420*t);
      mercury_z_0+=-pow(t,exp)*     0.00708734365*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      mercury_z_0+=-pow(t,exp)*     0.00469171617*   52175.80628314840*sin( 5.04215742764 +    52175.80628314840*t);
      mercury_z_0+=-pow(t,exp)*     0.00071626395*   78263.70942472259*sin( 1.80894256071 +    78263.70942472259*t);
      mercury_z_0+=-pow(t,exp)*     0.00012957446*  104351.61256629678*sin( 4.85922032010 +   104351.61256629678*t);

      return mercury_z_0;
   }

   static double mercury_z_1_(double t){
      double mercury_z_1=0.0;
      double exp=1;
      mercury_z_1+=pow(t,exp-1)*exp*     0.00172388569*cos( 3.47961470688 +    26087.90314157420*t)-pow(t,exp)*     0.00172388569*   26087.90314157420*sin( 3.47961470688 +    26087.90314157420*t);
      mercury_z_1+=pow(t,exp-1)*exp*     0.00084745328*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00084745328*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);

      return mercury_z_1;
   }

   static double mercury_z(double t){
      return mercury_z_0_(t)+mercury_z_1_(t);
   }

}
