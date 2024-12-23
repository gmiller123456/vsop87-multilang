//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_micro_velocities_jupiter{
   static double jupiter_l_0_(double t){
      double jupiter_l_0=0.0;
      double exp=0;
      jupiter_l_0+=-pow(t,exp)*     0.59954691494*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_l_0+=-pow(t,exp)*     0.09695898719*     529.69096509460*sin( 5.06191793158 +      529.69096509460*t);
      jupiter_l_0+=-pow(t,exp)*     0.00573610142*       7.11354700080*sin( 1.44406205629 +        7.11354700080*t);
      jupiter_l_0+=-pow(t,exp)*     0.00306389205*    1059.38193018920*sin( 5.41734730184 +     1059.38193018920*t);
      jupiter_l_0+=-pow(t,exp)*     0.00097178296*     632.78373931320*sin( 4.14264726552 +      632.78373931320*t);
      jupiter_l_0+=-pow(t,exp)*     0.00072903078*     522.57741809380*sin( 3.64042916389 +      522.57741809380*t);
      jupiter_l_0+=-pow(t,exp)*     0.00064263975*     103.09277421860*sin( 3.41145165351 +      103.09277421860*t);
      jupiter_l_0+=-pow(t,exp)*     0.00039806064*     419.48464387520*sin( 2.29376740788 +      419.48464387520*t);
      jupiter_l_0+=-pow(t,exp)*     0.00038857767*     316.39186965660*sin( 1.27231755835 +      316.39186965660*t);
      jupiter_l_0+=-pow(t,exp)*     0.00027964629*     536.80451209540*sin( 1.78454591820 +      536.80451209540*t);
      jupiter_l_0+=-pow(t,exp)*     0.00013589730*    1589.07289528380*sin( 5.77481040790 +     1589.07289528380*t);

      return jupiter_l_0;
   }

   static double jupiter_l_1_(double t){
      double jupiter_l_1=0.0;
      double exp=1;
      jupiter_l_1+=pow(t,exp-1)*exp*   529.69096508814*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*   529.69096508814*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_l_1+=pow(t,exp-1)*exp*     0.00489503243*cos( 4.22082939470 +      529.69096509460*t)-pow(t,exp)*     0.00489503243*     529.69096509460*sin( 4.22082939470 +      529.69096509460*t);
      jupiter_l_1+=pow(t,exp-1)*exp*     0.00228917222*cos( 6.02646855621 +        7.11354700080*t)-pow(t,exp)*     0.00228917222*       7.11354700080*sin( 6.02646855621 +        7.11354700080*t);
      jupiter_l_1+=pow(t,exp-1)*exp*     0.00030099479*cos( 4.54540782858 +     1059.38193018920*t)-pow(t,exp)*     0.00030099479*    1059.38193018920*sin( 4.54540782858 +     1059.38193018920*t);
      jupiter_l_1+=pow(t,exp-1)*exp*     0.00020720920*cos( 5.45943156902 +      522.57741809380*t)-pow(t,exp)*     0.00020720920*     522.57741809380*sin( 5.45943156902 +      522.57741809380*t);
      jupiter_l_1+=pow(t,exp-1)*exp*     0.00012103653*cos( 0.16994816098 +      536.80451209540*t)-pow(t,exp)*     0.00012103653*     536.80451209540*sin( 0.16994816098 +      536.80451209540*t);

      return jupiter_l_1;
   }

   static double jupiter_l_2_(double t){
      double jupiter_l_2=0.0;
      double exp=2;
      jupiter_l_2+=pow(t,exp-1)*exp*     0.00047233601*cos( 4.32148536482 +        7.11354700080*t)-pow(t,exp)*     0.00047233601*       7.11354700080*sin( 4.32148536482 +        7.11354700080*t);
      jupiter_l_2+=pow(t,exp-1)*exp*     0.00030649436*cos( 2.92977788700 +      529.69096509460*t)-pow(t,exp)*     0.00030649436*     529.69096509460*sin( 2.92977788700 +      529.69096509460*t);
      jupiter_l_2+=pow(t,exp-1)*exp*     0.00014837605*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00014837605*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);

      return jupiter_l_2;
   }

   static double jupiter_l(double t){
      return jupiter_l_0_(t)+jupiter_l_1_(t)+jupiter_l_2_(t);
   }

   static double jupiter_b_0_(double t){
      double jupiter_b_0=0.0;
      double exp=0;
      jupiter_b_0+=-pow(t,exp)*     0.02268615702*     529.69096509460*sin( 3.55852606721 +      529.69096509460*t);
      jupiter_b_0+=-pow(t,exp)*     0.00109971634*    1059.38193018920*sin( 3.90809347197 +     1059.38193018920*t);
      jupiter_b_0+=-pow(t,exp)*     0.00110090358*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return jupiter_b_0;
   }

   static double jupiter_b_1_(double t){
      double jupiter_b_1=0.0;
      double exp=1;
      jupiter_b_1+=pow(t,exp-1)*exp*     0.00078203446*cos( 1.52377859742 +      529.69096509460*t)-pow(t,exp)*     0.00078203446*     529.69096509460*sin( 1.52377859742 +      529.69096509460*t);

      return jupiter_b_1;
   }

   static double jupiter_b(double t){
      return jupiter_b_0_(t)+jupiter_b_1_(t);
   }

   static double jupiter_r_0_(double t){
      double jupiter_r_0=0.0;
      double exp=0;
      jupiter_r_0+=-pow(t,exp)*     5.20887429326*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_r_0+=-pow(t,exp)*     0.25209327119*     529.69096509460*sin( 3.49108639871 +      529.69096509460*t);
      jupiter_r_0+=-pow(t,exp)*     0.00610599976*    1059.38193018920*sin( 3.84115365948 +     1059.38193018920*t);
      jupiter_r_0+=-pow(t,exp)*     0.00282029458*     632.78373931320*sin( 2.57419881293 +      632.78373931320*t);
      jupiter_r_0+=-pow(t,exp)*     0.00187647346*     522.57741809380*sin( 2.07590383214 +      522.57741809380*t);
      jupiter_r_0+=-pow(t,exp)*     0.00086792905*     419.48464387520*sin( 0.71001145545 +      419.48464387520*t);
      jupiter_r_0+=-pow(t,exp)*     0.00072062974*     536.80451209540*sin( 0.21465724607 +      536.80451209540*t);
      jupiter_r_0+=-pow(t,exp)*     0.00065517248*     316.39186965660*sin( 5.97995884790 +      316.39186965660*t);
      jupiter_r_0+=-pow(t,exp)*     0.00029134542*     103.09277421860*sin( 1.67759379655 +      103.09277421860*t);
      jupiter_r_0+=-pow(t,exp)*     0.00030135335*     949.17560896980*sin( 2.16132003734 +      949.17560896980*t);
      jupiter_r_0+=-pow(t,exp)*     0.00023453271*     735.87651353180*sin( 3.54023522184 +      735.87651353180*t);
      jupiter_r_0+=-pow(t,exp)*     0.00022283743*    1589.07289528380*sin( 4.19362594399 +     1589.07289528380*t);
      jupiter_r_0+=-pow(t,exp)*     0.00023947298*       7.11354700080*sin( 0.27458037480 +        7.11354700080*t);
      jupiter_r_0+=-pow(t,exp)*     0.00013032614*    1162.47470440780*sin( 2.96042965363 +     1162.47470440780*t);
      jupiter_r_0+=-pow(t,exp)*     0.00012749023*    1052.26838318840*sin( 2.71550286592 +     1052.26838318840*t);

      return jupiter_r_0;
   }

   static double jupiter_r_1_(double t){
      double jupiter_r_1=0.0;
      double exp=1;
      jupiter_r_1+=pow(t,exp-1)*exp*     0.01271801520*cos( 2.64937512894 +      529.69096509460*t)-pow(t,exp)*     0.01271801520*     529.69096509460*sin( 2.64937512894 +      529.69096509460*t);
      jupiter_r_1+=pow(t,exp-1)*exp*     0.00061661816*cos( 3.00076460387 +     1059.38193018920*t)-pow(t,exp)*     0.00061661816*    1059.38193018920*sin( 3.00076460387 +     1059.38193018920*t);
      jupiter_r_1+=pow(t,exp-1)*exp*     0.00053443713*cos( 3.89717383175 +      522.57741809380*t)-pow(t,exp)*     0.00053443713*     522.57741809380*sin( 3.89717383175 +      522.57741809380*t);
      jupiter_r_1+=pow(t,exp-1)*exp*     0.00031185171*cos( 4.88276958012 +      536.80451209540*t)-pow(t,exp)*     0.00031185171*     536.80451209540*sin( 4.88276958012 +      536.80451209540*t);
      jupiter_r_1+=pow(t,exp-1)*exp*     0.00041390269*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00041390269*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_r_1+=pow(t,exp-1)*exp*     0.00011847263*cos( 2.41328764459 +      419.48464387520*t)-pow(t,exp)*     0.00011847263*     419.48464387520*sin( 2.41328764459 +      419.48464387520*t);

      return jupiter_r_1;
   }

   static double jupiter_r_2_(double t){
      double jupiter_r_2=0.0;
      double exp=2;
      jupiter_r_2+=pow(t,exp-1)*exp*     0.00079644957*cos( 1.35865949884 +      529.69096509460*t)-pow(t,exp)*     0.00079644957*     529.69096509460*sin( 1.35865949884 +      529.69096509460*t);

      return jupiter_r_2;
   }

   static double jupiter_r(double t){
      return jupiter_r_0_(t)+jupiter_r_1_(t)+jupiter_r_2_(t);
   }

}
