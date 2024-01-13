//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87d_pico_velocities_earth{
   static double earth_l_0_(double t){
      double earth_l_0=0.0;
      double exp=0;
      earth_l_0+=-pow(t,exp)*     1.75347045673*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      earth_l_0+=-pow(t,exp)*     0.03341656456*    6283.07584999140*sin( 4.66925680417 +     6283.07584999140*t);

      return earth_l_0;
   }

   static double earth_l_1_(double t){
      double earth_l_1=0.0;
      double exp=1;
      earth_l_1+=pow(t,exp-1)*exp*  6283.31966747491*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*  6283.31966747491*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return earth_l_1;
   }

   static double earth_l(double t){
      return earth_l_0_(t)+earth_l_1_(t);
   }

   static double earth_b(double t){
      return 0;
   }

   static double earth_r_0_(double t){
      double earth_r_0=0.0;
      double exp=0;
      earth_r_0+=-pow(t,exp)*     1.00013988799*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      earth_r_0+=-pow(t,exp)*     0.01670699626*    6283.07584999140*sin( 3.09846350771 +     6283.07584999140*t);

      return earth_r_0;
   }

   static double earth_r(double t){
      return earth_r_0_(t);
   }

}
