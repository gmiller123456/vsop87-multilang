import static java.lang.Math.*;

public class vsop87d_nano_venus{
   static double venus_l_0_(double t){
      double venus_l_0=0.0;
      venus_l_0+=     3.17614666774 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_0+=     0.01353968419 * cos( 5.59313319619 +    10213.28554621100*t);

      return venus_l_0;
   }

   static double venus_l_1_(double t){
      double venus_l_1=0.0;
      venus_l_1+= 10213.52943052898 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_1=venus_l_1 * t;

      return venus_l_1;
   }

   static double venus_l(double t){
      return venus_l_0_(t)+venus_l_1_(t);
   }

   static double venus_b_0_(double t){
      double venus_b_0=0.0;
      venus_b_0+=     0.05923638472 * cos( 0.26702775813 +    10213.28554621100*t);

      return venus_b_0;
   }

   static double venus_b_1_(double t){
      double venus_b_1=0.0;
      venus_b_1+=     0.00513347602 * cos( 1.80364310797 +    10213.28554621100*t);
      venus_b_1=venus_b_1 * t;

      return venus_b_1;
   }

   static double venus_b(double t){
      return venus_b_0_(t)+venus_b_1_(t);
   }

   static double venus_r_0_(double t){
      double venus_r_0=0.0;
      venus_r_0+=     0.72334820905 * cos( 0.00000000000 +        0.00000000000*t);
      venus_r_0+=     0.00489824185 * cos( 4.02151832268 +    10213.28554621100*t);

      return venus_r_0;
   }

   static double venus_r(double t){
      return venus_r_0_(t);
   }

}
