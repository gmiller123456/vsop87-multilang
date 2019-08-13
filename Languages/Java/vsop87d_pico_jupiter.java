import static java.lang.Math.*;

public class vsop87d_pico_jupiter{
   static double jupiter_l_0_(double t){
      double jupiter_l_0=0.0;
      jupiter_l_0+=     0.59954691495 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_0+=     0.09695898711 * cos( 5.06191793105 +      529.69096509460*t);

      return jupiter_l_0;
   }

   static double jupiter_l_1_(double t){
      double jupiter_l_1=0.0;
      jupiter_l_1+=   529.93480757497 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_1=jupiter_l_1 * t;

      return jupiter_l_1;
   }

   static double jupiter_l(double t){
      return jupiter_l_0_(t)+jupiter_l_1_(t);
   }

   static double jupiter_b_0_(double t){
      double jupiter_b_0=0.0;
      jupiter_b_0+=     0.02268615703 * cos( 3.55852606718 +      529.69096509460*t);

      return jupiter_b_0;
   }

   static double jupiter_b(double t){
      return jupiter_b_0_(t);
   }

   static double jupiter_r_0_(double t){
      double jupiter_r_0=0.0;
      jupiter_r_0+=     5.20887429471 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_r_0+=     0.25209327020 * cos( 3.49108640015 +      529.69096509460*t);

      return jupiter_r_0;
   }

   static double jupiter_r_1_(double t){
      double jupiter_r_1=0.0;
      jupiter_r_1+=     0.01271801596 * cos( 2.64937511122 +      529.69096509460*t);
      jupiter_r_1=jupiter_r_1 * t;

      return jupiter_r_1;
   }

   static double jupiter_r(double t){
      return jupiter_r_0_(t)+jupiter_r_1_(t);
   }

}
