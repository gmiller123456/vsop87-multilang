import static java.lang.Math.*;

public class vsop87b_pico_earth{
   static double earth_l(double t){
      double earth_l_0=0.0;
      earth_l_0+=     1.75347045673 * cos( 0.00000000000 +        0.00000000000*t);
      earth_l_0+=     0.03341656453 * cos( 4.66925680415 +     6283.07584999140*t);

      double earth_l_1=0.0;
      earth_l_1+=  6283.07584999140 * cos( 0.00000000000 +        0.00000000000*t);
      earth_l_1=earth_l_1 * t;

      return earth_l_0+earth_l_1;
   }

   static double earth_b(double t){
      return 0;
   }

   static double earth_r(double t){
      double earth_r_0=0.0;
      earth_r_0+=     1.00013988784 * cos( 0.00000000000 +        0.00000000000*t);
      earth_r_0+=     0.01670699632 * cos( 3.09846350258 +     6283.07584999140*t);

      return earth_r_0;
   }

}
