import static java.lang.Math.*;

public class vsop87b_nano_velocities_venus{
   static double venus_l_0_(double t){
      double venus_l_0=0.0;
      double exp=0;
      venus_l_0+=-pow(t,exp)*     3.17614666774*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      venus_l_0+=-pow(t,exp)*     0.01353968419*   10213.28554621100*sin( 5.59313319619 +    10213.28554621100*t);

      return venus_l_0;
   }

   static double venus_l_1_(double t){
      double venus_l_1=0.0;
      double exp=1;
      venus_l_1+=pow(t,exp-1)*exp* 10213.28554621638*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)* 10213.28554621638*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return venus_l_1;
   }

   static double venus_l(double t){
      return venus_l_0_(t)+venus_l_1_(t);
   }

   static double venus_b_0_(double t){
      double venus_b_0=0.0;
      double exp=0;
      venus_b_0+=-pow(t,exp)*     0.05923638472*   10213.28554621100*sin( 0.26702775812 +    10213.28554621100*t);

      return venus_b_0;
   }

   static double venus_b_1_(double t){
      double venus_b_1=0.0;
      double exp=1;
      venus_b_1+=pow(t,exp-1)*exp*     0.00287821243*cos( 1.88964962838 +    10213.28554621100*t)-pow(t,exp)*     0.00287821243*   10213.28554621100*sin( 1.88964962838 +    10213.28554621100*t);

      return venus_b_1;
   }

   static double venus_b(double t){
      return venus_b_0_(t)+venus_b_1_(t);
   }

   static double venus_r_0_(double t){
      double venus_r_0=0.0;
      double exp=0;
      venus_r_0+=-pow(t,exp)*     0.72334820891*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      venus_r_0+=-pow(t,exp)*     0.00489824182*   10213.28554621100*sin( 4.02151831717 +    10213.28554621100*t);

      return venus_r_0;
   }

   static double venus_r(double t){
      return venus_r_0_(t);
   }

}
