//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87d_nano_jupiter{
   static double jupiter_l_0_(double t){
      double jupiter_l_0=0.0;
      jupiter_l_0+=     0.59954691495 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_0+=     0.09695898711 * cos( 5.06191793105 +      529.69096509460*t);
      jupiter_l_0+=     0.00573610145 * cos( 1.44406205976 +        7.11354700080*t);
      jupiter_l_0+=     0.00306389180 * cos( 5.41734729976 +     1059.38193018920*t);

      return jupiter_l_0;
   }

   static double jupiter_l_1_(double t){
      double jupiter_l_1=0.0;
      jupiter_l_1+=   529.93480757497 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_1+=     0.00489741194 * cos( 4.22066689928 +      529.69096509460*t);
      jupiter_l_1+=     0.00228918538 * cos( 6.02647464016 +        7.11354700080*t);
      jupiter_l_1=jupiter_l_1 * t;

      return jupiter_l_1;
   }

   static double jupiter_l(double t){
      return jupiter_l_0_(t)+jupiter_l_1_(t);
   }

   static double jupiter_b_0_(double t){
      double jupiter_b_0=0.0;
      jupiter_b_0+=     0.02268615703 * cos( 3.55852606718 +      529.69096509460*t);
      jupiter_b_0+=     0.00109971634 * cos( 3.90809347389 +     1059.38193018920*t);
      jupiter_b_0+=     0.00110090358 * cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_b_0;
   }

   static double jupiter_b_1_(double t){
      double jupiter_b_1=0.0;
      jupiter_b_1+=     0.00177351787 * cos( 5.70166488486 +      529.69096509460*t);
      jupiter_b_1=jupiter_b_1 * t;

      return jupiter_b_1;
   }

   static double jupiter_b(double t){
      return jupiter_b_0_(t)+jupiter_b_1_(t);
   }

   static double jupiter_r_0_(double t){
      double jupiter_r_0=0.0;
      jupiter_r_0+=     5.20887429471 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_r_0+=     0.25209327020 * cos( 3.49108640015 +      529.69096509460*t);
      jupiter_r_0+=     0.00610599902 * cos( 3.84115365602 +     1059.38193018920*t);
      jupiter_r_0+=     0.00282029465 * cos( 2.57419879933 +      632.78373931320*t);
      jupiter_r_0+=     0.00187647391 * cos( 2.07590380082 +      522.57741809380*t);

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
