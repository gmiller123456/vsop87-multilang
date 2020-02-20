//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_pico_emb{
   static double emb_a_0_(double t){
      double emb_a_0=0.0;
      emb_a_0+=     1.00000101778 * cos( 0.00000000000 +        0.00000000000*t);

      return emb_a_0;
   }

   static double emb_a(double t){
      return emb_a_0_(t);
   }

   static double emb_l_0_(double t){
      double emb_l_0=0.0;
      emb_l_0+=     1.75347045953 * cos( 0.00000000000 +        0.00000000000*t);

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

   static double emb_k(double t){
      return 0;
   }

   static double emb_h_0_(double t){
      double emb_h_0=0.0;
      emb_h_0+=     0.01628447663 * cos( 0.00000000000 +        0.00000000000*t);

      return emb_h_0;
   }

   static double emb_h(double t){
      return emb_h_0_(t);
   }

   static double emb_q(double t){
      return 0;
   }

   static double emb_p(double t){
      return 0;
   }

}
