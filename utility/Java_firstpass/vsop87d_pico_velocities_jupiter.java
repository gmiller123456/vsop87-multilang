import static java.lang.Math.*;

public class vsop87d_pico_velocities_jupiter{
   static double jupiter_l(double t){
      double exp=0.0;
      double jupiter_l_0=0.0;
      exp=0;
      jupiter_l_0+=-pow(t,exp)*     0.59954691495*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_l_0+=-pow(t,exp)*     0.09695898711*     529.69096509460*sin( 5.06191793105 +      529.69096509460*t);

      double jupiter_l_1=0.0;
      exp=1;
      jupiter_l_1+=pow(t,exp-1)*exp*   529.93480757497*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*   529.93480757497*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return jupiter_l_0+jupiter_l_1;
   }

   static double jupiter_b(double t){
      double exp=0.0;
      double jupiter_b_0=0.0;
      exp=0;
      jupiter_b_0+=-pow(t,exp)*     0.02268615703*     529.69096509460*sin( 3.55852606718 +      529.69096509460*t);

      return jupiter_b_0;
   }

   static double jupiter_r(double t){
      double exp=0.0;
      double jupiter_r_0=0.0;
      exp=0;
      jupiter_r_0+=-pow(t,exp)*     5.20887429471*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_r_0+=-pow(t,exp)*     0.25209327020*     529.69096509460*sin( 3.49108640015 +      529.69096509460*t);

      double jupiter_r_1=0.0;
      exp=1;
      jupiter_r_1+=pow(t,exp-1)*exp*     0.01271801596*cos( 2.64937511122 +      529.69096509460*t)-pow(t,exp)*     0.01271801596*     529.69096509460*sin( 2.64937511122 +      529.69096509460*t);

      return jupiter_r_0+jupiter_r_1;
   }

}
