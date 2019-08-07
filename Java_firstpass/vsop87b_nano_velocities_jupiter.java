import static java.lang.Math.*;

public class vsop87b_nano_velocities_jupiter{
   static double jupiter_l(double t){
      double exp=0.0;
      double jupiter_l_0=0.0;
      exp=0;
      jupiter_l_0+=-pow(t,exp)*     0.59954691494*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_l_0+=-pow(t,exp)*     0.09695898719*     529.69096509460*sin( 5.06191793158 +      529.69096509460*t);
      jupiter_l_0+=-pow(t,exp)*     0.00573610142*       7.11354700080*sin( 1.44406205629 +        7.11354700080*t);
      jupiter_l_0+=-pow(t,exp)*     0.00306389205*    1059.38193018920*sin( 5.41734730184 +     1059.38193018920*t);

      double jupiter_l_1=0.0;
      exp=1;
      jupiter_l_1+=pow(t,exp-1)*exp*   529.69096508814*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*   529.69096508814*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_l_1+=pow(t,exp-1)*exp*     0.00489503243*cos( 4.22082939470 +      529.69096509460*t)-pow(t,exp)*     0.00489503243*     529.69096509460*sin( 4.22082939470 +      529.69096509460*t);
      jupiter_l_1+=pow(t,exp-1)*exp*     0.00228917222*cos( 6.02646855621 +        7.11354700080*t)-pow(t,exp)*     0.00228917222*       7.11354700080*sin( 6.02646855621 +        7.11354700080*t);

      return jupiter_l_0+jupiter_l_1;
   }

   static double jupiter_b(double t){
      double exp=0.0;
      double jupiter_b_0=0.0;
      exp=0;
      jupiter_b_0+=-pow(t,exp)*     0.02268615702*     529.69096509460*sin( 3.55852606721 +      529.69096509460*t);
      jupiter_b_0+=-pow(t,exp)*     0.00109971634*    1059.38193018920*sin( 3.90809347197 +     1059.38193018920*t);
      jupiter_b_0+=-pow(t,exp)*     0.00110090358*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return jupiter_b_0;
   }

   static double jupiter_r(double t){
      double exp=0.0;
      double jupiter_r_0=0.0;
      exp=0;
      jupiter_r_0+=-pow(t,exp)*     5.20887429326*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_r_0+=-pow(t,exp)*     0.25209327119*     529.69096509460*sin( 3.49108639871 +      529.69096509460*t);
      jupiter_r_0+=-pow(t,exp)*     0.00610599976*    1059.38193018920*sin( 3.84115365948 +     1059.38193018920*t);
      jupiter_r_0+=-pow(t,exp)*     0.00282029458*     632.78373931320*sin( 2.57419881293 +      632.78373931320*t);
      jupiter_r_0+=-pow(t,exp)*     0.00187647346*     522.57741809380*sin( 2.07590383214 +      522.57741809380*t);

      double jupiter_r_1=0.0;
      exp=1;
      jupiter_r_1+=pow(t,exp-1)*exp*     0.01271801520*cos( 2.64937512894 +      529.69096509460*t)-pow(t,exp)*     0.01271801520*     529.69096509460*sin( 2.64937512894 +      529.69096509460*t);

      return jupiter_r_0+jupiter_r_1;
   }

}
