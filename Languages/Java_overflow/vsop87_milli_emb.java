//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_milli_emb{
   static double emb_a_0_(double t){
      double emb_a_0=0.0;
      emb_a_0+=     1.00000101778 * cos( 0.00000000000 +        0.00000000000*t);
      emb_a_0+=     0.00001120473 * cos( 2.30855131827 +    11506.76976979360*t);

      return emb_a_0;
   }

   static double emb_a(double t){
      return emb_a_0_(t);
   }

   static double emb_l_0_(double t){
      double emb_l_0=0.0;
      emb_l_0+=     1.75347045953 * cos( 0.00000000000 +        0.00000000000*t);
      emb_l_0+=     0.00003417568 * cos( 2.82887613695 +        3.52311834900*t);
      emb_l_0+=     0.00002056367 * cos( 3.87949142209 +    11506.76976979360*t);
      emb_l_0+=     0.00001664099 * cos( 6.13527980181 +     3930.20969621960*t);
      emb_l_0+=     0.00001263517 * cos( 2.03240137643 +      529.69096509460*t);
      emb_l_0+=     0.00001268612 * cos( 1.27476353113 +     7860.41939243920*t);
      emb_l_0+=     0.00001089612 * cos( 1.10654596593 +     1577.34354244780*t);

      return emb_l_0;
   }

   static double emb_l_1_(double t){
      double emb_l_1=0.0;
      emb_l_1+=  6283.07584999140 * cos( 0.00000000000 +        0.00000000000*t);
      emb_l_1=emb_l_1 * t;

      return emb_l_1;
   }

   static double emb_l(double t){
      return emb_l_0_(t)+emb_l_1_(t);
   }

   static double emb_k_0_(double t){
      double emb_k_0=0.0;
      emb_k_0+=     0.00374081650 * cos( 3.14159265359 +        0.00000000000*t);
      emb_k_0+=     0.00001988852 * cos( 4.23374621009 +     1577.34354244780*t);
      emb_k_0+=     0.00001859231 * cos( 0.55463591479 +     5223.69391980220*t);
      emb_k_0+=     0.00001497439 * cos( 3.72409379834 +      529.69096509460*t);

      return emb_k_0;
   }

   static double emb_k_1_(double t){
      double emb_k_1=0.0;
      emb_k_1+=     0.00082267418 * cos( 3.14159265359 +        0.00000000000*t);
      emb_k_1=emb_k_1 * t;

      return emb_k_1;
   }

   static double emb_k_2_(double t){
      double emb_k_2=0.0;
      emb_k_2+=     0.00002762465 * cos( 0.00000000000 +        0.00000000000*t);
      emb_k_2=emb_k_2 * t * t;

      return emb_k_2;
   }

   static double emb_k(double t){
      return emb_k_0_(t)+emb_k_1_(t)+emb_k_2_(t);
   }

   static double emb_h_0_(double t){
      double emb_h_0=0.0;
      emb_h_0+=     0.01628447663 * cos( 0.00000000000 +        0.00000000000*t);
      emb_h_0+=     0.00001986929 * cos( 5.80464886318 +     1577.34354244780*t);
      emb_h_0+=     0.00001864029 * cos( 2.12650300196 +     5223.69391980220*t);
      emb_h_0+=     0.00001510978 * cos( 2.16070229051 +      529.69096509460*t);

      return emb_h_0;
   }

   static double emb_h_1_(double t){
      double emb_h_1=0.0;
      emb_h_1+=     0.00062029655 * cos( 3.14159265359 +        0.00000000000*t);
      emb_h_1=emb_h_1 * t;

      return emb_h_1;
   }

   static double emb_h_2_(double t){
      double emb_h_2=0.0;
      emb_h_2+=     0.00003382631 * cos( 3.14159265359 +        0.00000000000*t);
      emb_h_2=emb_h_2 * t * t;

      return emb_h_2;
   }

   static double emb_h(double t){
      return emb_h_0_(t)+emb_h_1_(t)+emb_h_2_(t);
   }

   static double emb_q_1_(double t){
      double emb_q_1=0.0;
      emb_q_1+=     0.00113468869 * cos( 3.14159265359 +        0.00000000000*t);
      emb_q_1=emb_q_1 * t;

      return emb_q_1;
   }

   static double emb_q_2_(double t){
      double emb_q_2=0.0;
      emb_q_2+=     0.00001237314 * cos( 0.00000000000 +        0.00000000000*t);
      emb_q_2=emb_q_2 * t * t;

      return emb_q_2;
   }

   static double emb_q(double t){
      return emb_q_1_(t)+emb_q_2_(t);
   }

   static double emb_p_1_(double t){
      double emb_p_1=0.0;
      emb_p_1+=     0.00010180375 * cos( 0.00000000000 +        0.00000000000*t);
      emb_p_1=emb_p_1 * t;

      return emb_p_1;
   }

   static double emb_p_2_(double t){
      double emb_p_2=0.0;
      emb_p_2+=     0.00004701998 * cos( 0.00000000000 +        0.00000000000*t);
      emb_p_2=emb_p_2 * t * t;

      return emb_p_2;
   }

   static double emb_p(double t){
      return emb_p_1_(t)+emb_p_2_(t);
   }

}
