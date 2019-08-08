import static java.lang.Math.*;

public class vsop87b_micro_velocities_earth{
   static double earth_l_0_(double t){
      double earth_l_0=0.0;
      double exp=0;
      earth_l_0+=-pow(t,exp)*     1.75347045673*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      earth_l_0+=-pow(t,exp)*     0.03341656453*    6283.07584999140*sin( 4.66925680415 +     6283.07584999140*t);
      earth_l_0+=-pow(t,exp)*     0.00034894275*   12566.15169998280*sin( 4.62610242189 +    12566.15169998280*t);

      return earth_l_0;
   }

   static double earth_l_1_(double t){
      double earth_l_1=0.0;
      double exp=1;
      earth_l_1+=pow(t,exp-1)*exp*  6283.07584999140*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*  6283.07584999140*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      earth_l_1+=pow(t,exp-1)*exp*     0.00206058863*cos( 2.67823455808 +     6283.07584999140*t)-pow(t,exp)*     0.00206058863*    6283.07584999140*sin( 2.67823455808 +     6283.07584999140*t);

      return earth_l_1;
   }

   static double earth_l(double t){
      return earth_l_0_(t)+earth_l_1_(t);
   }

   static double earth_b_1_(double t){
      double earth_b_1=0.0;
      double exp=1;
      earth_b_1+=pow(t,exp-1)*exp*     0.00227777722*cos( 3.41376620530 +     6283.07584999140*t)-pow(t,exp)*     0.00227777722*    6283.07584999140*sin( 3.41376620530 +     6283.07584999140*t);

      return earth_b_1;
   }

   static double earth_b(double t){
      return earth_b_1_(t);
   }

   static double earth_r_0_(double t){
      double earth_r_0=0.0;
      double exp=0;
      earth_r_0+=-pow(t,exp)*     1.00013988784*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      earth_r_0+=-pow(t,exp)*     0.01670699632*    6283.07584999140*sin( 3.09846350258 +     6283.07584999140*t);
      earth_r_0+=-pow(t,exp)*     0.00013956024*   12566.15169998280*sin( 3.05524609456 +    12566.15169998280*t);

      return earth_r_0;
   }

   static double earth_r_1_(double t){
      double earth_r_1=0.0;
      double exp=1;
      earth_r_1+=pow(t,exp-1)*exp*     0.00103018607*cos( 1.10748968172 +     6283.07584999140*t)-pow(t,exp)*     0.00103018607*    6283.07584999140*sin( 1.10748968172 +     6283.07584999140*t);

      return earth_r_1;
   }

   static double earth_r(double t){
      return earth_r_0_(t)+earth_r_1_(t);
   }

}
