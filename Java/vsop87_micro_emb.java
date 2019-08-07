import static java.lang.Math.*;

public class vsop87_micro_emb{
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

   static double emb_k_0_(double t){
      double emb_k_0=0.0;
      emb_k_0+=     0.00374081650 * cos( 3.14159265359 +        0.00000000000*t);

      return emb_k_0;
   }

   static double emb_k_1_(double t){
      double emb_k_1=0.0;
      emb_k_1+=     0.00082267418 * cos( 3.14159265359 +        0.00000000000*t);
      emb_k_1=emb_k_1 * t;

      return emb_k_1;
   }

   static double emb_k(double t){
      return emb_k_0_(t)+emb_k_1_(t);
   }

   static double emb_h_0_(double t){
      double emb_h_0=0.0;
      emb_h_0+=     0.01628447663 * cos( 0.00000000000 +        0.00000000000*t);

      return emb_h_0;
   }

   static double emb_h_1_(double t){
      double emb_h_1=0.0;
      emb_h_1+=     0.00062029655 * cos( 3.14159265359 +        0.00000000000*t);
      emb_h_1=emb_h_1 * t;

      return emb_h_1;
   }

   static double emb_h(double t){
      return emb_h_0_(t)+emb_h_1_(t);
   }

   static double emb_q_1_(double t){
      double emb_q_1=0.0;
      emb_q_1+=     0.00113468869 * cos( 3.14159265359 +        0.00000000000*t);
      emb_q_1=emb_q_1 * t;

      return emb_q_1;
   }

   static double emb_q(double t){
      return emb_q_1_(t);
   }

   static double emb_p_1_(double t){
      double emb_p_1=0.0;
      emb_p_1+=     0.00010180375 * cos( 0.00000000000 +        0.00000000000*t);
      emb_p_1=emb_p_1 * t;

      return emb_p_1;
   }

   static double emb_p(double t){
      return emb_p_1_(t);
   }

}
