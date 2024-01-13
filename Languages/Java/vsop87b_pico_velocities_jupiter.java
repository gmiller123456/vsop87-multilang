//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_pico_velocities_jupiter{
   static double jupiter_l_0_(double t){
      double jupiter_l_0=0.0;
      double exp=0;
      jupiter_l_0+=-pow(t,exp)*     0.59954691494*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_l_0+=-pow(t,exp)*     0.09695898719*     529.69096509460*sin( 5.06191793158 +      529.69096509460*t);

      return jupiter_l_0;
   }

   static double jupiter_l_1_(double t){
      double jupiter_l_1=0.0;
      double exp=1;
      jupiter_l_1+=pow(t,exp-1)*exp*   529.69096508814*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*   529.69096508814*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return jupiter_l_1;
   }

   static double jupiter_l(double t){
      return jupiter_l_0_(t)+jupiter_l_1_(t);
   }

   static double jupiter_b_0_(double t){
      double jupiter_b_0=0.0;
      double exp=0;
      jupiter_b_0+=-pow(t,exp)*     0.02268615702*     529.69096509460*sin( 3.55852606721 +      529.69096509460*t);

      return jupiter_b_0;
   }

   static double jupiter_b(double t){
      return jupiter_b_0_(t);
   }

   static double jupiter_r_0_(double t){
      double jupiter_r_0=0.0;
      double exp=0;
      jupiter_r_0+=-pow(t,exp)*     5.20887429326*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_r_0+=-pow(t,exp)*     0.25209327119*     529.69096509460*sin( 3.49108639871 +      529.69096509460*t);

      return jupiter_r_0;
   }

   static double jupiter_r_1_(double t){
      double jupiter_r_1=0.0;
      double exp=1;
      jupiter_r_1+=pow(t,exp-1)*exp*     0.01271801520*cos( 2.64937512894 +      529.69096509460*t)-pow(t,exp)*     0.01271801520*     529.69096509460*sin( 2.64937512894 +      529.69096509460*t);

      return jupiter_r_1;
   }

   static double jupiter_r(double t){
      return jupiter_r_0_(t)+jupiter_r_1_(t);
   }

}
