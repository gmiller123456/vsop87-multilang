import static java.lang.Math.*;

public class vsop87d_pico_velocities_venus{
   static double venus_l(double t){
      double exp=0.0;
      double venus_l_0=0.0;
      exp=0;
      venus_l_0+=-pow(t,exp)*     3.17614666774*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      venus_l_0+=-pow(t,exp)*     0.01353968419*   10213.28554621100*sin( 5.59313319619 +    10213.28554621100*t);

      double venus_l_1=0.0;
      exp=1;
      venus_l_1+=pow(t,exp-1)*exp* 10213.52943052898*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)* 10213.52943052898*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return venus_l_0+venus_l_1;
   }

   static double venus_b(double t){
      double exp=0.0;
      double venus_b_0=0.0;
      exp=0;
      venus_b_0+=-pow(t,exp)*     0.05923638472*   10213.28554621100*sin( 0.26702775813 +    10213.28554621100*t);

      return venus_b_0;
   }

   static double venus_r(double t){
      double exp=0.0;
      double venus_r_0=0.0;
      exp=0;
      venus_r_0+=-pow(t,exp)*     0.72334820905*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return venus_r_0;
   }

}
