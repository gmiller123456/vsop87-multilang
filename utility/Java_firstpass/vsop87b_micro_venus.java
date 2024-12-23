import static java.lang.Math.*;

public class vsop87b_micro_venus{
   static double venus_l(double t){
      double venus_l_0=0.0;
      venus_l_0+=     3.17614666774 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_0+=     0.01353968419 * cos( 5.59313319619 +    10213.28554621100*t);
      venus_l_0+=     0.00089891645 * cos( 5.30650047764 +    20426.57109242200*t);

      double venus_l_1=0.0;
      venus_l_1+= 10213.28554621638 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_1+=     0.00095617813 * cos( 2.46406511110 +    10213.28554621100*t);
      venus_l_1=venus_l_1 * t;

      return venus_l_0+venus_l_1;
   }

   static double venus_b(double t){
      double venus_b_0=0.0;
      venus_b_0+=     0.05923638472 * cos( 0.26702775812 +    10213.28554621100*t);
      venus_b_0+=     0.00040107978 * cos( 1.14737178112 +    20426.57109242200*t);
      venus_b_0+=     0.00032814918 * cos( 3.14159265359 +        0.00000000000*t);

      double venus_b_1=0.0;
      venus_b_1+=     0.00287821243 * cos( 1.88964962838 +    10213.28554621100*t);
      venus_b_1=venus_b_1 * t;

      double venus_b_2=0.0;
      venus_b_2+=     0.00012657745 * cos( 3.34796457029 +    10213.28554621100*t);
      venus_b_2=venus_b_2 * t * t;

      return venus_b_0+venus_b_1+venus_b_2;
   }

   static double venus_r(double t){
      double venus_r_0=0.0;
      venus_r_0+=     0.72334820891 * cos( 0.00000000000 +        0.00000000000*t);
      venus_r_0+=     0.00489824182 * cos( 4.02151831717 +    10213.28554621100*t);

      double venus_r_1=0.0;
      venus_r_1+=     0.00034551041 * cos( 0.89198706276 +    10213.28554621100*t);
      venus_r_1=venus_r_1 * t;

      return venus_r_0+venus_r_1;
   }

}
