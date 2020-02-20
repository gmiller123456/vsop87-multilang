//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87d_micro_venus{
   static double venus_l_0_(double t){
      double venus_l_0=0.0;
      venus_l_0+=     3.17614666774 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_0+=     0.01353968419 * cos( 5.59313319619 +    10213.28554621100*t);
      venus_l_0+=     0.00089891645 * cos( 5.30650048468 +    20426.57109242200*t);

      return venus_l_0;
   }

   static double venus_l_1_(double t){
      double venus_l_1=0.0;
      venus_l_1+= 10213.52943052898 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_1+=     0.00095707712 * cos( 2.46424448979 +    10213.28554621100*t);
      venus_l_1+=     0.00014444977 * cos( 0.51624564679 +    20426.57109242200*t);
      venus_l_1=venus_l_1 * t;

      return venus_l_1;
   }

   static double venus_l_2_(double t){
      double venus_l_2=0.0;
      venus_l_2+=     0.00054127076 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_2=venus_l_2 * t * t;

      return venus_l_2;
   }

   static double venus_l(double t){
      return venus_l_0_(t)+venus_l_1_(t)+venus_l_2_(t);
   }

   static double venus_b_0_(double t){
      double venus_b_0=0.0;
      venus_b_0+=     0.05923638472 * cos( 0.26702775813 +    10213.28554621100*t);
      venus_b_0+=     0.00040107978 * cos( 1.14737178106 +    20426.57109242200*t);
      venus_b_0+=     0.00032814918 * cos( 3.14159265359 +        0.00000000000*t);

      return venus_b_0;
   }

   static double venus_b_1_(double t){
      double venus_b_1=0.0;
      venus_b_1+=     0.00513347602 * cos( 1.80364310797 +    10213.28554621100*t);
      venus_b_1=venus_b_1 * t;

      return venus_b_1;
   }

   static double venus_b_2_(double t){
      double venus_b_2=0.0;
      venus_b_2+=     0.00022377665 * cos( 3.38509143877 +    10213.28554621100*t);
      venus_b_2=venus_b_2 * t * t;

      return venus_b_2;
   }

   static double venus_b(double t){
      return venus_b_0_(t)+venus_b_1_(t)+venus_b_2_(t);
   }

   static double venus_r_0_(double t){
      double venus_r_0=0.0;
      venus_r_0+=     0.72334820905 * cos( 0.00000000000 +        0.00000000000*t);
      venus_r_0+=     0.00489824185 * cos( 4.02151832268 +    10213.28554621100*t);

      return venus_r_0;
   }

   static double venus_r_1_(double t){
      double venus_r_1=0.0;
      venus_r_1+=     0.00034551039 * cos( 0.89198710598 +    10213.28554621100*t);
      venus_r_1=venus_r_1 * t;

      return venus_r_1;
   }

   static double venus_r(double t){
      return venus_r_0_(t)+venus_r_1_(t);
   }

}
