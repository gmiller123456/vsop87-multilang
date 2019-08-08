import static java.lang.Math.*;

public class vsop87b_micro_earth{
   static double earth_l(double t){
      double earth_l_0=0.0;
      earth_l_0+=     1.75347045673 * cos( 0.00000000000 +        0.00000000000*t);
      earth_l_0+=     0.03341656453 * cos( 4.66925680415 +     6283.07584999140*t);
      earth_l_0+=     0.00034894275 * cos( 4.62610242189 +    12566.15169998280*t);

      double earth_l_1=0.0;
      earth_l_1+=  6283.07584999140 * cos( 0.00000000000 +        0.00000000000*t);
      earth_l_1+=     0.00206058863 * cos( 2.67823455808 +     6283.07584999140*t);
      earth_l_1=earth_l_1 * t;

      return earth_l_0+earth_l_1;
   }

   static double earth_b(double t){
      double earth_b_1=0.0;
      earth_b_1+=     0.00227777722 * cos( 3.41376620530 +     6283.07584999140*t);
      earth_b_1=earth_b_1 * t;

      return earth_b_1;
   }

   static double earth_r(double t){
      double earth_r_0=0.0;
      earth_r_0+=     1.00013988784 * cos( 0.00000000000 +        0.00000000000*t);
      earth_r_0+=     0.01670699632 * cos( 3.09846350258 +     6283.07584999140*t);
      earth_r_0+=     0.00013956024 * cos( 3.05524609456 +    12566.15169998280*t);

      double earth_r_1=0.0;
      earth_r_1+=     0.00103018607 * cos( 1.10748968172 +     6283.07584999140*t);
      earth_r_1=earth_r_1 * t;

      return earth_r_0+earth_r_1;
   }

}
