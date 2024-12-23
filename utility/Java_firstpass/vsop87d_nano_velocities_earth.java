import static java.lang.Math.*;

public class vsop87d_nano_velocities_earth{
   static double earth_l(double t){
      double exp=0.0;
      double earth_l_0=0.0;
      exp=0;
      earth_l_0+=-pow(t,exp)*     1.75347045673*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      earth_l_0+=-pow(t,exp)*     0.03341656456*    6283.07584999140*sin( 4.66925680417 +     6283.07584999140*t);

      double earth_l_1=0.0;
      exp=1;
      earth_l_1+=pow(t,exp-1)*exp*  6283.31966747491*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*  6283.31966747491*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      earth_l_1+=pow(t,exp-1)*exp*     0.00206058863*cos( 2.67823455584 +     6283.07584999140*t)-pow(t,exp)*     0.00206058863*    6283.07584999140*sin( 2.67823455584 +     6283.07584999140*t);

      return earth_l_0+earth_l_1;
   }

   static double earth_b(double t){
      double exp=0.0;
      return 0;
   }

   static double earth_r(double t){
      double exp=0.0;
      double earth_r_0=0.0;
      exp=0;
      earth_r_0+=-pow(t,exp)*     1.00013988799*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      earth_r_0+=-pow(t,exp)*     0.01670699626*    6283.07584999140*sin( 3.09846350771 +     6283.07584999140*t);

      double earth_r_1=0.0;
      exp=1;
      earth_r_1+=pow(t,exp-1)*exp*     0.00103018608*cos( 1.10748969588 +     6283.07584999140*t)-pow(t,exp)*     0.00103018608*    6283.07584999140*sin( 1.10748969588 +     6283.07584999140*t);

      return earth_r_0+earth_r_1;
   }

}
