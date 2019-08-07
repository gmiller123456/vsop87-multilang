import static java.lang.Math.*;

public class vsop87c_nano_velocities_earth{
   static double earth_x(double t){
      double exp=0.0;
      double earth_x_0=0.0;
      exp=0;
      earth_x_0+=-pow(t,exp)*     0.99986069925*    6283.31966747490*sin( 1.75347045757 +     6283.31966747490*t);
      earth_x_0+=-pow(t,exp)*     0.02506324281*       0.24381748350*sin( 4.93819429098 +        0.24381748350*t);
      earth_x_0+=-pow(t,exp)*     0.00835274807*   12566.39551746630*sin( 1.71033525539 +    12566.39551746630*t);

      double earth_x_1=0.0;
      exp=1;
      earth_x_1+=pow(t,exp-1)*exp*     0.00154550744*cos( 0.64605836878 +        0.24381748350*t)-pow(t,exp)*     0.00154550744*       0.24381748350*sin( 0.64605836878 +        0.24381748350*t);

      return earth_x_0+earth_x_1;
   }

   static double earth_y(double t){
      double exp=0.0;
      double earth_y_0=0.0;
      exp=0;
      earth_y_0+=-pow(t,exp)*     0.99986069925*    6283.31966747490*sin( 0.18267413078 +     6283.31966747490*t);
      earth_y_0+=-pow(t,exp)*     0.02506324281*       0.24381748350*sin( 3.36739796418 +        0.24381748350*t);
      earth_y_0+=-pow(t,exp)*     0.00835274807*   12566.39551746630*sin( 0.13953892859 +    12566.39551746630*t);

      double earth_y_1=0.0;
      exp=1;
      earth_y_1+=pow(t,exp-1)*exp*     0.00154550744*cos( 5.35844734917 +        0.24381748350*t)-pow(t,exp)*     0.00154550744*       0.24381748350*sin( 5.35844734917 +        0.24381748350*t);

      return earth_y_0+earth_y_1;
   }

   static double earth_z(double t){
      double exp=0.0;
      return 0;
   }

}
