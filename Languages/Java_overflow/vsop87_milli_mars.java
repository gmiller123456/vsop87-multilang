//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_milli_mars{
   static double mars_a_0_(double t){
      double mars_a_0=0.0;
      mars_a_0+=     1.52367934191 * cos( 0.00000000000 +        0.00000000000*t);
      mars_a_0+=     0.00006601698 * cos( 4.92149777465 +     5621.84292321040*t);
      mars_a_0+=     0.00002201786 * cos( 1.39247552912 +     2281.23049651060*t);
      mars_a_0+=     0.00001214966 * cos( 5.01404770046 +      398.14900340820*t);
      mars_a_0+=     0.00001639879 * cos( 4.27793460842 +     8432.76438481560*t);
      mars_a_0+=     0.00001580816 * cos( 1.83232786200 +     2942.46342329160*t);
      mars_a_0+=     0.00001412662 * cos( 3.25538771720 +     6872.67311951120*t);
      mars_a_0+=     0.00001039285 * cos( 5.55848890740 +     2810.92146160520*t);

      return mars_a_0;
   }

   static double mars_a(double t){
      return mars_a_0_(t);
   }

   static double mars_l_0_(double t){
      double mars_l_0=0.0;
      mars_l_0+=     6.20347611291 * cos( 0.00000000000 +        0.00000000000*t);
      mars_l_0+=     0.00027745033 * cos( 5.97049541372 +        3.52311834900*t);
      mars_l_0+=     0.00008926849 * cos( 4.15697846934 +        0.01725365220*t);
      mars_l_0+=     0.00006592291 * cos( 0.36792271340 +      398.14900340820*t);
      mars_l_0+=     0.00008395541 * cos( 0.20835197721 +     5621.84292321040*t);
      mars_l_0+=     0.00005745457 * cos( 2.94479034922 +     2281.23049651060*t);
      mars_l_0+=     0.00003054393 * cos( 0.85670458531 +      191.44826611160*t);
      mars_l_0+=     0.00002937590 * cos( 6.07893711376 +        0.06731030280*t);
      mars_l_0+=     0.00003321877 * cos( 0.85790353464 +     2810.92146160520*t);
      mars_l_0+=     0.00002124413 * cos( 5.04195951157 +      796.29800681640*t);
      mars_l_0+=     0.00001686484 * cos( 0.77141234937 +      529.69096509460*t);
      mars_l_0+=     0.00001733875 * cos( 5.83752078998 +     8432.76438481560*t);
      mars_l_0+=     0.00001238027 * cos( 1.66209647251 +     2544.31441988340*t);
      mars_l_0+=     0.00001044992 * cos( 0.65472060539 +     5092.15195811580*t);
      mars_l_0+=     0.00001262899 * cos( 0.26625922905 +     2942.46342329160*t);
      mars_l_0+=     0.00001124144 * cos( 2.94366443964 +     1751.53953141600*t);

      return mars_l_0;
   }

   static double mars_l_1_(double t){
      double mars_l_1=0.0;
      mars_l_1+=  3340.61242669981 * cos( 0.00000000000 +        0.00000000000*t);
      mars_l_1+=     0.00003452439 * cos( 4.73210379431 +        3.52311834900*t);
      mars_l_1=mars_l_1 * t;

      return mars_l_1;
   }

   static double mars_l(double t){
      return mars_l_0_(t)+mars_l_1_(t);
   }

   static double mars_k_0_(double t){
      double mars_k_0=0.0;
      mars_k_0+=     0.08536560252 * cos( 0.00000000000 +        0.00000000000*t);
      mars_k_0+=     0.00008228685 * cos( 4.99515670335 +     2281.23049651060*t);
      mars_k_0+=     0.00004631835 * cos( 3.76981942051 +      529.69096509460*t);
      mars_k_0+=     0.00002590017 * cos( 1.69837709855 +     1059.38193018920*t);
      mars_k_0+=     0.00001710954 * cos( 4.34158755371 +      398.14900340820*t);
      mars_k_0+=     0.00001174163 * cos( 5.31228741951 +     1751.53953141600*t);
      mars_k_0+=     0.00001023098 * cos( 2.96623191194 +      796.29800681640*t);
      mars_k_0+=     0.00001300580 * cos( 4.32747267803 +     5092.15195811580*t);

      return mars_k_0;
   }

   static double mars_k_1_(double t){
      double mars_k_1=0.0;
      mars_k_1+=     0.00376330152 * cos( 0.00000000000 +        0.00000000000*t);
      mars_k_1=mars_k_1 * t;

      return mars_k_1;
   }

   static double mars_k_2_(double t){
      double mars_k_2=0.0;
      mars_k_2+=     0.00024657776 * cos( 3.14159265359 +        0.00000000000*t);
      mars_k_2=mars_k_2 * t * t;

      return mars_k_2;
   }

   static double mars_k(double t){
      return mars_k_0_(t)+mars_k_1_(t)+mars_k_2_(t);
   }

   static double mars_h_0_(double t){
      double mars_h_0=0.0;
      mars_h_0+=     0.03789973236 * cos( 3.14159265359 +        0.00000000000*t);
      mars_h_0+=     0.00008158391 * cos( 0.29399378947 +     2281.23049651060*t);
      mars_h_0+=     0.00004516507 * cos( 2.19998239682 +      529.69096509460*t);
      mars_h_0+=     0.00002592276 * cos( 0.12646371989 +     1059.38193018920*t);
      mars_h_0+=     0.00001767646 * cos( 2.80798995472 +      398.14900340820*t);
      mars_h_0+=     0.00001168491 * cos( 0.61541102304 +     1751.53953141600*t);
      mars_h_0+=     0.00001376104 * cos( 5.91426857264 +     5092.15195811580*t);
      mars_h_0+=     0.00001024786 * cos( 1.39271679546 +      796.29800681640*t);

      return mars_h_0;
   }

   static double mars_h_1_(double t){
      double mars_h_1=0.0;
      mars_h_1+=     0.00624657465 * cos( 0.00000000000 +        0.00000000000*t);
      mars_h_1=mars_h_1 * t;

      return mars_h_1;
   }

   static double mars_h_2_(double t){
      double mars_h_2=0.0;
      mars_h_2+=     0.00015529482 * cos( 0.00000000000 +        0.00000000000*t);
      mars_h_2=mars_h_2 * t * t;

      return mars_h_2;
   }

   static double mars_h(double t){
      return mars_h_0_(t)+mars_h_1_(t)+mars_h_2_(t);
   }

   static double mars_q_0_(double t){
      double mars_q_0=0.0;
      mars_q_0+=     0.01047042574 * cos( 0.00000000000 +        0.00000000000*t);

      return mars_q_0;
   }

   static double mars_q_1_(double t){
      double mars_q_1=0.0;
      mars_q_1+=     0.00017138526 * cos( 0.00000000000 +        0.00000000000*t);
      mars_q_1=mars_q_1 * t;

      return mars_q_1;
   }

   static double mars_q_2_(double t){
      double mars_q_2=0.0;
      mars_q_2+=     0.00004077491 * cos( 3.14159265359 +        0.00000000000*t);
      mars_q_2=mars_q_2 * t * t;

      return mars_q_2;
   }

   static double mars_q(double t){
      return mars_q_0_(t)+mars_q_1_(t)+mars_q_2_(t);
   }

   static double mars_p_0_(double t){
      double mars_p_0=0.0;
      mars_p_0+=     0.01228449307 * cos( 0.00000000000 +        0.00000000000*t);

      return mars_p_0;
   }

   static double mars_p_1_(double t){
      double mars_p_1=0.0;
      mars_p_1+=     0.00108020083 * cos( 3.14159265359 +        0.00000000000*t);
      mars_p_1=mars_p_1 * t;

      return mars_p_1;
   }

   static double mars_p_2_(double t){
      double mars_p_2=0.0;
      mars_p_2+=     0.00001922224 * cos( 3.14159265359 +        0.00000000000*t);
      mars_p_2=mars_p_2 * t * t;

      return mars_p_2;
   }

   static double mars_p(double t){
      return mars_p_0_(t)+mars_p_1_(t)+mars_p_2_(t);
   }

}
