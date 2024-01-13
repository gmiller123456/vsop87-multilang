//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87d_micro_jupiter{
   static double jupiter_l_0_(double t){
      double jupiter_l_0=0.0;
      jupiter_l_0+=     0.59954691495 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_0+=     0.09695898711 * cos( 5.06191793105 +      529.69096509460*t);
      jupiter_l_0+=     0.00573610145 * cos( 1.44406205976 +        7.11354700080*t);
      jupiter_l_0+=     0.00306389180 * cos( 5.41734729976 +     1059.38193018920*t);
      jupiter_l_0+=     0.00097178280 * cos( 4.14264708819 +      632.78373931320*t);
      jupiter_l_0+=     0.00072903096 * cos( 3.64042909255 +      522.57741809380*t);
      jupiter_l_0+=     0.00064263986 * cos( 3.41145185203 +      103.09277421860*t);
      jupiter_l_0+=     0.00039806051 * cos( 2.29376744855 +      419.48464387520*t);
      jupiter_l_0+=     0.00038857780 * cos( 1.27231724860 +      316.39186965660*t);
      jupiter_l_0+=     0.00027964622 * cos( 1.78454589485 +      536.80451209540*t);
      jupiter_l_0+=     0.00013589738 * cos( 5.77481031590 +     1589.07289528380*t);

      return jupiter_l_0;
   }

   static double jupiter_l_1_(double t){
      double jupiter_l_1=0.0;
      jupiter_l_1+=   529.93480757497 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_1+=     0.00489741194 * cos( 4.22066689928 +      529.69096509460*t);
      jupiter_l_1+=     0.00228918538 * cos( 6.02647464016 +        7.11354700080*t);
      jupiter_l_1+=     0.00027655380 * cos( 4.57265956824 +     1059.38193018920*t);
      jupiter_l_1+=     0.00020720943 * cos( 5.45938936295 +      522.57741809380*t);
      jupiter_l_1+=     0.00012105732 * cos( 0.16985765041 +      536.80451209540*t);
      jupiter_l_1=jupiter_l_1 * t;

      return jupiter_l_1;
   }

   static double jupiter_l_2_(double t){
      double jupiter_l_2=0.0;
      jupiter_l_2+=     0.00047233598 * cos( 4.32148323554 +        7.11354700080*t);
      jupiter_l_2+=     0.00030629053 * cos( 2.93021440216 +      529.69096509460*t);
      jupiter_l_2+=     0.00038965550 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_2=jupiter_l_2 * t * t;

      return jupiter_l_2;
   }

   static double jupiter_l(double t){
      return jupiter_l_0_(t)+jupiter_l_1_(t)+jupiter_l_2_(t);
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
      jupiter_r_0+=     0.00086792941 * cos( 0.71001090609 +      419.48464387520*t);
      jupiter_r_0+=     0.00072062869 * cos( 0.21465694745 +      536.80451209540*t);
      jupiter_r_0+=     0.00065517227 * cos( 5.97995850843 +      316.39186965660*t);
      jupiter_r_0+=     0.00029134620 * cos( 1.67759243710 +      103.09277421860*t);
      jupiter_r_0+=     0.00030135275 * cos( 2.16132058449 +      949.17560896980*t);
      jupiter_r_0+=     0.00023453209 * cos( 3.54023147303 +      735.87651353180*t);
      jupiter_r_0+=     0.00022283710 * cos( 4.19362773546 +     1589.07289528380*t);
      jupiter_r_0+=     0.00023947340 * cos( 0.27457854894 +        7.11354700080*t);
      jupiter_r_0+=     0.00013032600 * cos( 2.96043055741 +     1162.47470440780*t);
      jupiter_r_0+=     0.00012749004 * cos( 2.71550102862 +     1052.26838318840*t);

      return jupiter_r_0;
   }

   static double jupiter_r_1_(double t){
      double jupiter_r_1=0.0;
      jupiter_r_1+=     0.01271801596 * cos( 2.64937511122 +      529.69096509460*t);
      jupiter_r_1+=     0.00061661771 * cos( 3.00076251018 +     1059.38193018920*t);
      jupiter_r_1+=     0.00053443592 * cos( 3.89717644226 +      522.57741809380*t);
      jupiter_r_1+=     0.00031185167 * cos( 4.88276663526 +      536.80451209540*t);
      jupiter_r_1+=     0.00041390257 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_r_1+=     0.00011847190 * cos( 2.41329588176 +      419.48464387520*t);
      jupiter_r_1=jupiter_r_1 * t;

      return jupiter_r_1;
   }

   static double jupiter_r_2_(double t){
      double jupiter_r_2=0.0;
      jupiter_r_2+=     0.00079644833 * cos( 1.35865896596 +      529.69096509460*t);
      jupiter_r_2=jupiter_r_2 * t * t;

      return jupiter_r_2;
   }

   static double jupiter_r(double t){
      return jupiter_r_0_(t)+jupiter_r_1_(t)+jupiter_r_2_(t);
   }

}
