//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_micro_saturn{
   static double saturn_a_0_(double t){
      double saturn_a_0=0.0;
      saturn_a_0+=     9.55490959574 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_a_0+=     0.03363448736 * cos( 6.00973673460 +      316.39186965660*t);
      saturn_a_0+=     0.00354492417 * cos( 5.81482665415 +      103.09277421860*t);
      saturn_a_0+=     0.00289062242 * cos( 3.01816520038 +        7.11354700080*t);
      saturn_a_0+=     0.00308461590 * cos( 2.55488166399 +      632.78373931320*t);
      saturn_a_0+=     0.00149912686 * cos( 3.86270340354 +      419.48464387520*t);
      saturn_a_0+=     0.00143605062 * cos( 4.85917505070 +      213.29909543800*t);
      saturn_a_0+=     0.00146816895 * cos( 0.07437685257 +      846.08283475120*t);
      saturn_a_0+=     0.00142075017 * cos( 2.32273369924 +      949.17560896980*t);
      saturn_a_0+=     0.00073412340 * cos( 3.55846055429 +      735.87651353180*t);
      saturn_a_0+=     0.00081821669 * cos( 3.45006412768 +      110.20632121940*t);
      saturn_a_0+=     0.00054284469 * cos( 5.12517048023 +      206.18554843720*t);
      saturn_a_0+=     0.00067160409 * cos( 2.06145646779 +     1265.56747862640*t);
      saturn_a_0+=     0.00038450594 * cos( 3.28109764968 +     1052.26838318840*t);
      saturn_a_0+=     0.00040372154 * cos( 6.12336876226 +      309.27832265580*t);
      saturn_a_0+=     0.00037861360 * cos( 2.71073622362 +      323.50541665740*t);
      saturn_a_0+=     0.00032196433 * cos( 1.80319862777 +     1581.95934828300*t);
      saturn_a_0+=     0.00024471393 * cos( 4.81178790264 +      522.57741809380*t);
      saturn_a_0+=     0.00020860007 * cos( 3.01028862668 +     1368.66025284500*t);
      saturn_a_0+=     0.00018549188 * cos( 0.87944999842 +     6069.77675455340*t);
      saturn_a_0+=     0.00013849443 * cos( 4.65107330724 +      838.96928775040*t);
      saturn_a_0+=     0.00017342295 * cos( 2.30290130287 +     9999.98645077300*t);
      saturn_a_0+=     0.00015605088 * cos( 1.55158323786 +     1898.35121793960*t);
      saturn_a_0+=     0.00011535604 * cos( 2.74021432418 +     1685.05212250160*t);
      saturn_a_0+=     0.00013277748 * cos( 3.34520712627 +      277.03499374140*t);

      return saturn_a_0;
   }

   static double saturn_a_1_(double t){
      double saturn_a_1=0.0;
      saturn_a_1+=     0.00115108584 * cos( 1.31913907888 +        7.11354700080*t);
      saturn_a_1+=     0.00020477409 * cos( 5.54887034001 +      419.48464387520*t);
      saturn_a_1+=     0.00019395929 * cos( 3.30487092881 +      213.29909543800*t);
      saturn_a_1+=     0.00017963494 * cos( 1.85653949491 +      110.20632121940*t);
      saturn_a_1+=     0.00016133051 * cos( 1.54311529056 +      309.27832265580*t);
      saturn_a_1+=     0.00014944585 * cos( 1.01717765228 +      323.50541665740*t);
      saturn_a_1+=     0.00014543221 * cos( 0.53828819496 +      206.18554843720*t);
      saturn_a_1=saturn_a_1 * t;

      return saturn_a_1;
   }

   static double saturn_a_2_(double t){
      double saturn_a_2=0.0;
      saturn_a_2+=     0.00023754277 * cos( 5.89931397638 +        7.11354700080*t);
      saturn_a_2=saturn_a_2 * t * t;

      return saturn_a_2;
   }

   static double saturn_a(double t){
      return saturn_a_0_(t)+saturn_a_1_(t)+saturn_a_2_(t);
   }

   static double saturn_l_0_(double t){
      double saturn_l_0=0.0;
      saturn_l_0+=     0.87401675650 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_0+=     0.01411655077 * cos( 4.58553469006 +        7.11354700080*t);
      saturn_l_0+=     0.00259784547 * cos( 4.43343036691 +      316.39186965660*t);
      saturn_l_0+=     0.00149861955 * cos( 0.26851062811 +      103.09277421860*t);
      saturn_l_0+=     0.00071179955 * cos( 4.15641496284 +      632.78373931320*t);
      saturn_l_0+=     0.00031452707 * cos( 5.46081855509 +      419.48464387520*t);
      saturn_l_0+=     0.00026548090 * cos( 3.88757160092 +      949.17560896980*t);
      saturn_l_0+=     0.00016678500 * cos( 0.46554866763 +      206.18554843720*t);
      saturn_l_0+=     0.00012478276 * cos( 4.43427037492 +      110.20632121940*t);
      saturn_l_0+=     0.00014648090 * cos( 0.80489143062 +      529.69096509460*t);
      saturn_l_0+=     0.00012249591 * cos( 5.17809413714 +      735.87651353180*t);
      saturn_l_0+=     0.00014601573 * cos( 1.56514416532 +        3.93215326310*t);
      saturn_l_0+=     0.00013067003 * cos( 4.44777987188 +       14.22709400160*t);
      saturn_l_0+=     0.00012172375 * cos( 2.85599565676 +      213.29909543800*t);
      saturn_l_0+=     0.00012994507 * cos( 5.98000018071 +       11.04570026390*t);
      saturn_l_0+=     0.00010143831 * cos( 4.81233412109 +      846.08283475120*t);
      saturn_l_0+=     0.00011053979 * cos( 3.62184165245 +     1265.56747862640*t);

      return saturn_l_0;
   }

   static double saturn_l_1_(double t){
      double saturn_l_1=0.0;
      saturn_l_1+=   213.29909543800 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_1+=     0.00563352798 * cos( 2.88478561660 +        7.11354700080*t);
      saturn_l_1+=     0.00014171331 * cos( 1.28319722079 +      103.09277421860*t);
      saturn_l_1+=     0.00010437362 * cos( 2.74781046876 +       14.22709400160*t);
      saturn_l_1=saturn_l_1 * t;

      return saturn_l_1;
   }

   static double saturn_l_2_(double t){
      double saturn_l_2=0.0;
      saturn_l_2+=     0.00116235667 * cos( 1.17971682406 +        7.11354700080*t);
      saturn_l_2+=     0.00036659741 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_2=saturn_l_2 * t * t;

      return saturn_l_2;
   }

   static double saturn_l_3_(double t){
      double saturn_l_3=0.0;
      saturn_l_3+=     0.00016010484 * cos( 5.73932776276 +        7.11354700080*t);
      saturn_l_3=saturn_l_3 * t * t * t;

      return saturn_l_3;
   }

   static double saturn_l(double t){
      return saturn_l_0_(t)+saturn_l_1_(t)+saturn_l_2_(t)+saturn_l_3_(t);
   }

   static double saturn_k_0_(double t){
      double saturn_k_0=0.0;
      saturn_k_0+=     0.00296003595 * cos( 3.14159265359 +        0.00000000000*t);
      saturn_k_0+=     0.00155326496 * cos( 5.16402515606 +        7.11354700080*t);
      saturn_k_0+=     0.00197268763 * cos( 0.59616692002 +      529.69096509460*t);
      saturn_k_0+=     0.00126322249 * cos( 0.86230560136 +      213.29909543800*t);
      saturn_k_0+=     0.00065050158 * cos( 5.14656256627 +      103.09277421860*t);
      saturn_k_0+=     0.00045181084 * cos( 1.69923556056 +      419.48464387520*t);
      saturn_k_0+=     0.00031292923 * cos( 5.75285406117 +      110.20632121940*t);
      saturn_k_0+=     0.00027272443 * cos( 3.00890883920 +      206.18554843720*t);
      saturn_k_0+=     0.00016225491 * cos( 1.42799166910 +      735.87651353180*t);
      saturn_k_0+=     0.00012474180 * cos( 1.09305375439 +      316.39186965660*t);

      return saturn_k_0;
   }

   static double saturn_k_1_(double t){
      double saturn_k_1=0.0;
      saturn_k_1+=     0.00529602626 * cos( 3.14159265359 +        0.00000000000*t);
      saturn_k_1+=     0.00041825363 * cos( 3.46891617076 +        7.11354700080*t);
      saturn_k_1=saturn_k_1 * t;

      return saturn_k_1;
   }

   static double saturn_k_2_(double t){
      double saturn_k_2=0.0;
      saturn_k_2+=     0.00030928405 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_k_2=saturn_k_2 * t * t;

      return saturn_k_2;
   }

   static double saturn_k(double t){
      return saturn_k_0_(t)+saturn_k_1_(t)+saturn_k_2_(t);
   }

   static double saturn_h_0_(double t){
      double saturn_h_0=0.0;
      saturn_h_0+=     0.05542964254 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_h_0+=     0.00154553684 * cos( 3.59447132230 +        7.11354700080*t);
      saturn_h_0+=     0.00196887619 * cos( 5.31528897782 +      529.69096509460*t);
      saturn_h_0+=     0.00124537423 * cos( 5.60295505720 +      213.29909543800*t);
      saturn_h_0+=     0.00068728896 * cos( 0.46796586407 +      103.09277421860*t);
      saturn_h_0+=     0.00044695611 * cos( 3.26423001884 +      419.48464387520*t);
      saturn_h_0+=     0.00032981260 * cos( 4.13131540179 +      110.20632121940*t);
      saturn_h_0+=     0.00026520042 * cos( 4.52478837442 +      206.18554843720*t);
      saturn_h_0+=     0.00016256954 * cos( 3.02503473426 +      735.87651353180*t);

      return saturn_h_0;
   }

   static double saturn_h_1_(double t){
      double saturn_h_1=0.0;
      saturn_h_1+=     0.00375593887 * cos( 3.14159265359 +        0.00000000000*t);
      saturn_h_1+=     0.00041501368 * cos( 1.90158625579 +        7.11354700080*t);
      saturn_h_1=saturn_h_1 * t;

      return saturn_h_1;
   }

   static double saturn_h_2_(double t){
      double saturn_h_2=0.0;
      saturn_h_2+=     0.00031990236 * cos( 3.14159265359 +        0.00000000000*t);
      saturn_h_2=saturn_h_2 * t * t;

      return saturn_h_2;
   }

   static double saturn_h(double t){
      return saturn_h_0_(t)+saturn_h_1_(t)+saturn_h_2_(t);
   }

   static double saturn_q_0_(double t){
      double saturn_q_0=0.0;
      saturn_q_0+=     0.00871747436 * cos( 3.14159265359 +        0.00000000000*t);

      return saturn_q_0;
   }

   static double saturn_q_1_(double t){
      double saturn_q_1=0.0;
      saturn_q_1+=     0.00080171499 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_q_1=saturn_q_1 * t;

      return saturn_q_1;
   }

   static double saturn_q(double t){
      return saturn_q_0_(t)+saturn_q_1_(t);
   }

   static double saturn_p_0_(double t){
      double saturn_p_0=0.0;
      saturn_p_0+=     0.01989147301 * cos( 0.00000000000 +        0.00000000000*t);

      return saturn_p_0;
   }

   static double saturn_p_1_(double t){
      double saturn_p_1=0.0;
      saturn_p_1+=     0.00059439766 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_p_1=saturn_p_1 * t;

      return saturn_p_1;
   }

   static double saturn_p(double t){
      return saturn_p_0_(t)+saturn_p_1_(t);
   }

}
