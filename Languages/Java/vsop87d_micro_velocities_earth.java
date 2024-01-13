//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87d_micro_velocities_earth{
   static double earth_l_0_(double t){
      double earth_l_0=0.0;
      double exp=0;
      earth_l_0+=-pow(t,exp)*     1.75347045673*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      earth_l_0+=-pow(t,exp)*     0.03341656456*    6283.07584999140*sin( 4.66925680417 +     6283.07584999140*t);
      earth_l_0+=-pow(t,exp)*     0.00034894275*   12566.15169998280*sin( 4.62610241759 +    12566.15169998280*t);

      return earth_l_0;
   }

   static double earth_l_1_(double t){
      double earth_l_1=0.0;
      double exp=1;
      earth_l_1+=pow(t,exp-1)*exp*  6283.31966747491*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*  6283.31966747491*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      earth_l_1+=pow(t,exp-1)*exp*     0.00206058863*cos( 2.67823455584 +     6283.07584999140*t)-pow(t,exp)*     0.00206058863*    6283.07584999140*sin( 2.67823455584 +     6283.07584999140*t);

      return earth_l_1;
   }

   static double earth_l_2_(double t){
      double earth_l_2=0.0;
      double exp=2;
      earth_l_2+=pow(t,exp-1)*exp*     0.00052918870*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00052918870*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return earth_l_2;
   }

   static double earth_l(double t){
      return earth_l_0_(t)+earth_l_1_(t)+earth_l_2_(t);
   }

   static double earth_b(double t){
      return 0;
   }

   static double earth_r_0_(double t){
      double earth_r_0=0.0;
      double exp=0;
      earth_r_0+=-pow(t,exp)*     1.00013988799*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      earth_r_0+=-pow(t,exp)*     0.01670699626*    6283.07584999140*sin( 3.09846350771 +     6283.07584999140*t);
      earth_r_0+=-pow(t,exp)*     0.00013956023*   12566.15169998280*sin( 3.05524609620 +    12566.15169998280*t);

      return earth_r_0;
   }

   static double earth_r_1_(double t){
      double earth_r_1=0.0;
      double exp=1;
      earth_r_1+=pow(t,exp-1)*exp*     0.00103018608*cos( 1.10748969588 +     6283.07584999140*t)-pow(t,exp)*     0.00103018608*    6283.07584999140*sin( 1.10748969588 +     6283.07584999140*t);

      return earth_r_1;
   }

   static double earth_r(double t){
      return earth_r_0_(t)+earth_r_1_(t);
   }

}
