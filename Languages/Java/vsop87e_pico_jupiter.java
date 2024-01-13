//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87e_pico_jupiter{
   static double jupiter_x_0_(double t){
      double jupiter_x_0=0.0;
      jupiter_x_0+=     5.19167797375 * cos( 0.59945079482 +      529.69096509460*t);
      jupiter_x_0+=     0.36633268070 * cos( 3.14159265359 +        0.00000000000*t);
      jupiter_x_0+=     0.12581924842 * cos( 0.94911581432 +     1059.38193018920*t);
      jupiter_x_0+=     0.01499237862 * cos( 0.73175554601 +      522.57741809380*t);
      jupiter_x_0+=     0.01474818211 * cos( 3.61736901402 +      536.80451209540*t);

      return jupiter_x_0;
   }

   static double jupiter_x(double t){
      return jupiter_x_0_(t);
   }

   static double jupiter_y_0_(double t){
      double jupiter_y_0=0.0;
      jupiter_y_0+=     5.19024510371 * cos( 5.31203160043 +      529.69096509460*t);
      jupiter_y_0+=     0.12580850775 * cos( 5.66160225641 +     1059.38193018920*t);
      jupiter_y_0+=     0.09329801081 * cos( 3.14159265359 +        0.00000000000*t);
      jupiter_y_0+=     0.01506838468 * cos( 5.43934599781 +      522.57741809380*t);
      jupiter_y_0+=     0.01474403395 * cos( 2.04679547637 +      536.80451209540*t);

      return jupiter_y_0;
   }

   static double jupiter_y_1_(double t){
      double jupiter_y_1=0.0;
      jupiter_y_1+=     0.01694792137 * cos( 3.14159265359 +        0.00000000000*t);
      jupiter_y_1=jupiter_y_1 * t;

      return jupiter_y_1;
   }

   static double jupiter_y(double t){
      return jupiter_y_0_(t)+jupiter_y_1_(t);
   }

   static double jupiter_z_0_(double t){
      double jupiter_z_0=0.0;
      jupiter_z_0+=     0.11811822789 * cos( 3.55844641987 +      529.69096509460*t);

      return jupiter_z_0;
   }

   static double jupiter_z(double t){
      return jupiter_z_0_(t);
   }

}
