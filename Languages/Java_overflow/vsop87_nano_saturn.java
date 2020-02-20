//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_nano_saturn{
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

      return saturn_a_0;
   }

   static double saturn_a_1_(double t){
      double saturn_a_1=0.0;
      saturn_a_1+=     0.00115108584 * cos( 1.31913907888 +        7.11354700080*t);
      saturn_a_1=saturn_a_1 * t;

      return saturn_a_1;
   }

   static double saturn_a(double t){
      return saturn_a_0_(t)+saturn_a_1_(t);
   }

   static double saturn_l_0_(double t){
      double saturn_l_0=0.0;
      saturn_l_0+=     0.87401675650 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_0+=     0.01411655077 * cos( 4.58553469006 +        7.11354700080*t);
      saturn_l_0+=     0.00259784547 * cos( 4.43343036691 +      316.39186965660*t);
      saturn_l_0+=     0.00149861955 * cos( 0.26851062811 +      103.09277421860*t);

      return saturn_l_0;
   }

   static double saturn_l_1_(double t){
      double saturn_l_1=0.0;
      saturn_l_1+=   213.29909543800 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_1+=     0.00563352798 * cos( 2.88478561660 +        7.11354700080*t);
      saturn_l_1=saturn_l_1 * t;

      return saturn_l_1;
   }

   static double saturn_l_2_(double t){
      double saturn_l_2=0.0;
      saturn_l_2+=     0.00116235667 * cos( 1.17971682406 +        7.11354700080*t);
      saturn_l_2=saturn_l_2 * t * t;

      return saturn_l_2;
   }

   static double saturn_l(double t){
      return saturn_l_0_(t)+saturn_l_1_(t)+saturn_l_2_(t);
   }

   static double saturn_k_0_(double t){
      double saturn_k_0=0.0;
      saturn_k_0+=     0.00296003595 * cos( 3.14159265359 +        0.00000000000*t);
      saturn_k_0+=     0.00155326496 * cos( 5.16402515606 +        7.11354700080*t);
      saturn_k_0+=     0.00197268763 * cos( 0.59616692002 +      529.69096509460*t);
      saturn_k_0+=     0.00126322249 * cos( 0.86230560136 +      213.29909543800*t);

      return saturn_k_0;
   }

   static double saturn_k_1_(double t){
      double saturn_k_1=0.0;
      saturn_k_1+=     0.00529602626 * cos( 3.14159265359 +        0.00000000000*t);
      saturn_k_1=saturn_k_1 * t;

      return saturn_k_1;
   }

   static double saturn_k(double t){
      return saturn_k_0_(t)+saturn_k_1_(t);
   }

   static double saturn_h_0_(double t){
      double saturn_h_0=0.0;
      saturn_h_0+=     0.05542964254 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_h_0+=     0.00154553684 * cos( 3.59447132230 +        7.11354700080*t);
      saturn_h_0+=     0.00196887619 * cos( 5.31528897782 +      529.69096509460*t);
      saturn_h_0+=     0.00124537423 * cos( 5.60295505720 +      213.29909543800*t);

      return saturn_h_0;
   }

   static double saturn_h_1_(double t){
      double saturn_h_1=0.0;
      saturn_h_1+=     0.00375593887 * cos( 3.14159265359 +        0.00000000000*t);
      saturn_h_1=saturn_h_1 * t;

      return saturn_h_1;
   }

   static double saturn_h(double t){
      return saturn_h_0_(t)+saturn_h_1_(t);
   }

   static double saturn_q_0_(double t){
      double saturn_q_0=0.0;
      saturn_q_0+=     0.00871747436 * cos( 3.14159265359 +        0.00000000000*t);

      return saturn_q_0;
   }

   static double saturn_q(double t){
      return saturn_q_0_(t);
   }

   static double saturn_p_0_(double t){
      double saturn_p_0=0.0;
      saturn_p_0+=     0.01989147301 * cos( 0.00000000000 +        0.00000000000*t);

      return saturn_p_0;
   }

   static double saturn_p(double t){
      return saturn_p_0_(t);
   }

}
