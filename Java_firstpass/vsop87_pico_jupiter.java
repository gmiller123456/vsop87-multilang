import static java.lang.Math.*;

public class vsop87_pico_jupiter{
   static double jupiter_a(double t){
      double jupiter_a_0=0.0;
      jupiter_a_0+=     5.20260319132 * cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_a_0;
   }

   static double jupiter_l(double t){
      double jupiter_l_0=0.0;
      jupiter_l_0+=     0.59954649739 * cos( 0.00000000000 +        0.00000000000*t);

      double jupiter_l_1=0.0;
      jupiter_l_1+=   529.69096509460 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_1=jupiter_l_1 * t;

      return jupiter_l_0+jupiter_l_1;
   }

   static double jupiter_k(double t){
      double jupiter_k_0=0.0;
      jupiter_k_0+=     0.04698572124 * cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_k_0;
   }

   static double jupiter_h(double t){
      double jupiter_h_0=0.0;
      jupiter_h_0+=     0.01200385748 * cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_h_0;
   }

   static double jupiter_q(double t){
      return 0;
   }

   static double jupiter_p(double t){
      double jupiter_p_0=0.0;
      jupiter_p_0+=     0.01118377157 * cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_p_0;
   }

}
