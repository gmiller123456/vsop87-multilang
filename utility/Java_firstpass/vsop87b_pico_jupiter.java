import static java.lang.Math.*;

public class vsop87b_pico_jupiter{
   static double jupiter_l(double t){
      double jupiter_l_0=0.0;
      jupiter_l_0+=     0.59954691494 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_0+=     0.09695898719 * cos( 5.06191793158 +      529.69096509460*t);

      double jupiter_l_1=0.0;
      jupiter_l_1+=   529.69096508814 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_1=jupiter_l_1 * t;

      return jupiter_l_0+jupiter_l_1;
   }

   static double jupiter_b(double t){
      double jupiter_b_0=0.0;
      jupiter_b_0+=     0.02268615702 * cos( 3.55852606721 +      529.69096509460*t);

      return jupiter_b_0;
   }

   static double jupiter_r(double t){
      double jupiter_r_0=0.0;
      jupiter_r_0+=     5.20887429326 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_r_0+=     0.25209327119 * cos( 3.49108639871 +      529.69096509460*t);

      double jupiter_r_1=0.0;
      jupiter_r_1+=     0.01271801520 * cos( 2.64937512894 +      529.69096509460*t);
      jupiter_r_1=jupiter_r_1 * t;

      return jupiter_r_0+jupiter_r_1;
   }

}
