//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87d_nano_velocities_jupiter{
   static double jupiter_l_0_(double t){
      double jupiter_l_0=0.0;
      double exp=0;
      jupiter_l_0+=-pow(t,exp)*     0.59954691495*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_l_0+=-pow(t,exp)*     0.09695898711*     529.69096509460*sin( 5.06191793105 +      529.69096509460*t);
      jupiter_l_0+=-pow(t,exp)*     0.00573610145*       7.11354700080*sin( 1.44406205976 +        7.11354700080*t);
      jupiter_l_0+=-pow(t,exp)*     0.00306389180*    1059.38193018920*sin( 5.41734729976 +     1059.38193018920*t);

      return jupiter_l_0;
   }

   static double jupiter_l_1_(double t){
      double jupiter_l_1=0.0;
      double exp=1;
      jupiter_l_1+=pow(t,exp-1)*exp*   529.93480757497*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*   529.93480757497*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_l_1+=pow(t,exp-1)*exp*     0.00489741194*cos( 4.22066689928 +      529.69096509460*t)-pow(t,exp)*     0.00489741194*     529.69096509460*sin( 4.22066689928 +      529.69096509460*t);
      jupiter_l_1+=pow(t,exp-1)*exp*     0.00228918538*cos( 6.02647464016 +        7.11354700080*t)-pow(t,exp)*     0.00228918538*       7.11354700080*sin( 6.02647464016 +        7.11354700080*t);

      return jupiter_l_1;
   }

   static double jupiter_l(double t){
      return jupiter_l_0_(t)+jupiter_l_1_(t);
   }

   static double jupiter_b_0_(double t){
      double jupiter_b_0=0.0;
      double exp=0;
      jupiter_b_0+=-pow(t,exp)*     0.02268615703*     529.69096509460*sin( 3.55852606718 +      529.69096509460*t);
      jupiter_b_0+=-pow(t,exp)*     0.00109971634*    1059.38193018920*sin( 3.90809347389 +     1059.38193018920*t);
      jupiter_b_0+=-pow(t,exp)*     0.00110090358*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return jupiter_b_0;
   }

   static double jupiter_b_1_(double t){
      double jupiter_b_1=0.0;
      double exp=1;
      jupiter_b_1+=pow(t,exp-1)*exp*     0.00177351787*cos( 5.70166488486 +      529.69096509460*t)-pow(t,exp)*     0.00177351787*     529.69096509460*sin( 5.70166488486 +      529.69096509460*t);

      return jupiter_b_1;
   }

   static double jupiter_b(double t){
      return jupiter_b_0_(t)+jupiter_b_1_(t);
   }

   static double jupiter_r_0_(double t){
      double jupiter_r_0=0.0;
      double exp=0;
      jupiter_r_0+=-pow(t,exp)*     5.20887429471*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_r_0+=-pow(t,exp)*     0.25209327020*     529.69096509460*sin( 3.49108640015 +      529.69096509460*t);
      jupiter_r_0+=-pow(t,exp)*     0.00610599902*    1059.38193018920*sin( 3.84115365602 +     1059.38193018920*t);
      jupiter_r_0+=-pow(t,exp)*     0.00282029465*     632.78373931320*sin( 2.57419879933 +      632.78373931320*t);
      jupiter_r_0+=-pow(t,exp)*     0.00187647391*     522.57741809380*sin( 2.07590380082 +      522.57741809380*t);

      return jupiter_r_0;
   }

   static double jupiter_r_1_(double t){
      double jupiter_r_1=0.0;
      double exp=1;
      jupiter_r_1+=pow(t,exp-1)*exp*     0.01271801596*cos( 2.64937511122 +      529.69096509460*t)-pow(t,exp)*     0.01271801596*     529.69096509460*sin( 2.64937511122 +      529.69096509460*t);

      return jupiter_r_1;
   }

   static double jupiter_r(double t){
      return jupiter_r_0_(t)+jupiter_r_1_(t);
   }

}
