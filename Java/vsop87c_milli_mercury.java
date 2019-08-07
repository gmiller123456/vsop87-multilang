import static java.lang.Math.*;

public class vsop87c_milli_mercury{
   static double mercury_x_0_(double t){
      double mercury_x_0=0.0;
      mercury_x_0+=     0.37749277893 * cos( 4.40259139579 +    26088.14695905770*t);
      mercury_x_0+=     0.11918926148 * cos( 4.49027758439 +        0.24381748350*t);
      mercury_x_0+=     0.03840153904 * cos( 1.17015646101 +    52176.05010063190*t);
      mercury_x_0+=     0.00585979278 * cos( 4.22090402969 +    78263.95324220609*t);
      mercury_x_0+=     0.00305833424 * cos( 2.10298673336 +    26087.65932409069*t);
      mercury_x_0+=     0.00105974941 * cos( 0.98846517420 +   104351.85638378029*t);
      mercury_x_0+=     0.00024906132 * cos( 5.26305668971 +    52175.56246566489*t);
      mercury_x_0+=     0.00021056065 * cos( 4.03921104994 +   130439.75952535449*t);
      mercury_x_0+=     0.00004441671 * cos( 0.80677167456 +   156527.66266692868*t);
      mercury_x_0+=     0.00003347442 * cos( 2.10873209401 +    78263.46560723908*t);

      return mercury_x_0;
   }

   static double mercury_x_1_(double t){
      double mercury_x_1=0.0;
      mercury_x_1+=     0.00328639517 * cos( 6.04028758995 +        0.24381748350*t);
      mercury_x_1+=     0.00106107047 * cos( 5.91538469937 +    52176.05010063190*t);
      mercury_x_1+=     0.00032448440 * cos( 2.68404164136 +    78263.95324220609*t);
      mercury_x_1+=     0.00009699418 * cos( 5.42935843059 +    26087.65932409069*t);
      mercury_x_1+=     0.00008808490 * cos( 5.73515025839 +   104351.85638378029*t);
      mercury_x_1+=     0.00004833058 * cos( 0.21935428474 +    26088.14695905770*t);
      mercury_x_1+=     0.00002334329 * cos( 2.50289115433 +   130439.75952535449*t);
      mercury_x_1=mercury_x_1 * t;

      return mercury_x_1;
   }

   static double mercury_x_2_(double t){
      double mercury_x_2=0.0;
      mercury_x_2+=     0.00020000263 * cos( 5.96893489541 +    26088.14695905770*t);
      mercury_x_2+=     0.00008268782 * cos( 0.41593027178 +        0.24381748350*t);
      mercury_x_2+=     0.00002498175 * cos( 3.38864668295 +    52176.05010063190*t);
      mercury_x_2=mercury_x_2 * t * t;

      return mercury_x_2;
   }

   static double mercury_x(double t){
      return mercury_x_0_(t)+mercury_x_1_(t)+mercury_x_2_(t);
   }

   static double mercury_y_0_(double t){
      double mercury_y_0=0.0;
      mercury_y_0+=     0.37749277893 * cos( 2.83179506899 +    26088.14695905770*t);
      mercury_y_0+=     0.11918926148 * cos( 2.91948125760 +        0.24381748350*t);
      mercury_y_0+=     0.03840153904 * cos( 5.88254544140 +    52176.05010063190*t);
      mercury_y_0+=     0.00585979278 * cos( 2.65010770289 +    78263.95324220609*t);
      mercury_y_0+=     0.00305833424 * cos( 3.67378306016 +    26087.65932409069*t);
      mercury_y_0+=     0.00105974941 * cos( 5.70085415459 +   104351.85638378029*t);
      mercury_y_0+=     0.00024906132 * cos( 0.55066770933 +    52175.56246566489*t);
      mercury_y_0+=     0.00021056065 * cos( 2.46841472315 +   130439.75952535449*t);
      mercury_y_0+=     0.00004441671 * cos( 5.51916065495 +   156527.66266692868*t);
      mercury_y_0+=     0.00003347442 * cos( 3.67952842081 +    78263.46560723908*t);

      return mercury_y_0;
   }

   static double mercury_y_1_(double t){
      double mercury_y_1=0.0;
      mercury_y_1+=     0.00328639517 * cos( 4.46949126315 +        0.24381748350*t);
      mercury_y_1+=     0.00106107047 * cos( 4.34458837257 +    52176.05010063190*t);
      mercury_y_1+=     0.00032448440 * cos( 1.11324531456 +    78263.95324220609*t);
      mercury_y_1+=     0.00009699418 * cos( 0.71696945020 +    26087.65932409069*t);
      mercury_y_1+=     0.00008808490 * cos( 4.16435393159 +   104351.85638378029*t);
      mercury_y_1+=     0.00004833058 * cos( 4.93174326512 +    26088.14695905770*t);
      mercury_y_1+=     0.00002334329 * cos( 0.93209482754 +   130439.75952535449*t);
      mercury_y_1=mercury_y_1 * t;

      return mercury_y_1;
   }

   static double mercury_y_2_(double t){
      double mercury_y_2=0.0;
      mercury_y_2+=     0.00020000263 * cos( 4.39813856862 +    26088.14695905770*t);
      mercury_y_2+=     0.00008268782 * cos( 5.12831925217 +        0.24381748350*t);
      mercury_y_2+=     0.00002498175 * cos( 1.81785035615 +    52176.05010063190*t);
      mercury_y_2=mercury_y_2 * t * t;

      return mercury_y_2;
   }

   static double mercury_y(double t){
      return mercury_y_0_(t)+mercury_y_1_(t)+mercury_y_2_(t);
   }

   static double mercury_z_0_(double t){
      double mercury_z_0=0.0;
      mercury_z_0+=     0.04607665326 * cos( 1.99295081967 +    26087.90314157420*t);
      mercury_z_0+=     0.00708734365 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_z_0+=     0.00469171617 * cos( 5.04215742764 +    52175.80628314840*t);
      mercury_z_0+=     0.00071626395 * cos( 1.80894256071 +    78263.70942472259*t);
      mercury_z_0+=     0.00012957446 * cos( 4.85922032010 +   104351.61256629678*t);
      mercury_z_0+=     0.00002575002 * cos( 1.62646731545 +   130439.51570787099*t);

      return mercury_z_0;
   }

   static double mercury_z_1_(double t){
      double mercury_z_1=0.0;
      mercury_z_1+=     0.00172388569 * cos( 3.47961470688 +    26087.90314157420*t);
      mercury_z_1+=     0.00084745328 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_z_1+=     0.00004790619 * cos( 6.21921644635 +    52175.80628314840*t);
      mercury_z_1+=     0.00001359100 * cos( 0.49329143004 +    78263.70942472259*t);
      mercury_z_1=mercury_z_1 * t;

      return mercury_z_1;
   }

   static double mercury_z_2_(double t){
      double mercury_z_2=0.0;
      mercury_z_2+=     0.00004475377 * cos( 4.81703460547 +    26087.90314157420*t);
      mercury_z_2+=     0.00001109532 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_z_2=mercury_z_2 * t * t;

      return mercury_z_2;
   }

   static double mercury_z(double t){
      return mercury_z_0_(t)+mercury_z_1_(t)+mercury_z_2_(t);
   }

}
