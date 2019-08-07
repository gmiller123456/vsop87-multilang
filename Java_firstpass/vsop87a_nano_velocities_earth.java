import static java.lang.Math.*;

public class vsop87a_nano_velocities_earth{
   static double earth_x(double t){
      double exp=0.0;
      double earth_x_0=0.0;
      exp=0;
      earth_x_0+=-pow(t,exp)*     0.99982928844*    6283.07584999140*sin( 1.75348568475 +     6283.07584999140*t);
      earth_x_0+=-pow(t,exp)*     0.00835257300*   12566.15169998280*sin( 1.71034539450 +    12566.15169998280*t);
      earth_x_0+=-pow(t,exp)*     0.00561144206*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      double earth_x_1=0.0;
      exp=1;
      earth_x_1+=pow(t,exp-1)*exp*     0.00123403056*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00123403056*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return earth_x_0+earth_x_1;
   }

   static double earth_y(double t){
      double exp=0.0;
      double earth_y_0=0.0;
      exp=0;
      earth_y_0+=-pow(t,exp)*     0.99989211030*    6283.07584999140*sin( 0.18265890456 +     6283.07584999140*t);
      earth_y_0+=-pow(t,exp)*     0.02442699036*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      earth_y_0+=-pow(t,exp)*     0.00835292314*   12566.15169998280*sin( 0.13952878991 +    12566.15169998280*t);

      return earth_y_0;
   }

   static double earth_z(double t){
      double exp=0.0;
      double earth_z_1=0.0;
      exp=1;
      earth_z_1+=pow(t,exp-1)*exp*     0.00227822442*cos( 3.41372504278 +     6283.07584999140*t)-pow(t,exp)*     0.00227822442*    6283.07584999140*sin( 3.41372504278 +     6283.07584999140*t);

      return earth_z_1;
   }

}
