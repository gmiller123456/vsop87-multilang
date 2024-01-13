//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_micro_velocities_venus{
   static double venus_l_0_(double t){
      double venus_l_0=0.0;
      double exp=0;
      venus_l_0+=-pow(t,exp)*     3.17614666774*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      venus_l_0+=-pow(t,exp)*     0.01353968419*   10213.28554621100*sin( 5.59313319619 +    10213.28554621100*t);
      venus_l_0+=-pow(t,exp)*     0.00089891645*   20426.57109242200*sin( 5.30650047764 +    20426.57109242200*t);

      return venus_l_0;
   }

   static double venus_l_1_(double t){
      double venus_l_1=0.0;
      double exp=1;
      venus_l_1+=pow(t,exp-1)*exp* 10213.28554621638*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)* 10213.28554621638*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      venus_l_1+=pow(t,exp-1)*exp*     0.00095617813*cos( 2.46406511110 +    10213.28554621100*t)-pow(t,exp)*     0.00095617813*   10213.28554621100*sin( 2.46406511110 +    10213.28554621100*t);

      return venus_l_1;
   }

   static double venus_l(double t){
      return venus_l_0_(t)+venus_l_1_(t);
   }

   static double venus_b_0_(double t){
      double venus_b_0=0.0;
      double exp=0;
      venus_b_0+=-pow(t,exp)*     0.05923638472*   10213.28554621100*sin( 0.26702775812 +    10213.28554621100*t);
      venus_b_0+=-pow(t,exp)*     0.00040107978*   20426.57109242200*sin( 1.14737178112 +    20426.57109242200*t);
      venus_b_0+=-pow(t,exp)*     0.00032814918*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);

      return venus_b_0;
   }

   static double venus_b_1_(double t){
      double venus_b_1=0.0;
      double exp=1;
      venus_b_1+=pow(t,exp-1)*exp*     0.00287821243*cos( 1.88964962838 +    10213.28554621100*t)-pow(t,exp)*     0.00287821243*   10213.28554621100*sin( 1.88964962838 +    10213.28554621100*t);

      return venus_b_1;
   }

   static double venus_b_2_(double t){
      double venus_b_2=0.0;
      double exp=2;
      venus_b_2+=pow(t,exp-1)*exp*     0.00012657745*cos( 3.34796457029 +    10213.28554621100*t)-pow(t,exp)*     0.00012657745*   10213.28554621100*sin( 3.34796457029 +    10213.28554621100*t);

      return venus_b_2;
   }

   static double venus_b(double t){
      return venus_b_0_(t)+venus_b_1_(t)+venus_b_2_(t);
   }

   static double venus_r_0_(double t){
      double venus_r_0=0.0;
      double exp=0;
      venus_r_0+=-pow(t,exp)*     0.72334820891*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      venus_r_0+=-pow(t,exp)*     0.00489824182*   10213.28554621100*sin( 4.02151831717 +    10213.28554621100*t);

      return venus_r_0;
   }

   static double venus_r_1_(double t){
      double venus_r_1=0.0;
      double exp=1;
      venus_r_1+=pow(t,exp-1)*exp*     0.00034551041*cos( 0.89198706276 +    10213.28554621100*t)-pow(t,exp)*     0.00034551041*   10213.28554621100*sin( 0.89198706276 +    10213.28554621100*t);

      return venus_r_1;
   }

   static double venus_r(double t){
      return venus_r_0_(t)+venus_r_1_(t);
   }

}
