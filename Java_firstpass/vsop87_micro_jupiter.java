import static java.lang.Math.*;

public class vsop87_micro_jupiter{
   static double jupiter_a(double t){
      double jupiter_a_0=0.0;
      jupiter_a_0+=     5.20260319132 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_a_0+=     0.00069070151 * cos( 5.72686174779 +      632.78373931320*t);
      jupiter_a_0+=     0.00032272046 * cos( 1.90381613358 +      103.09277421860*t);
      jupiter_a_0+=     0.00031138634 * cos( 5.46486196547 +      949.17560896980*t);
      jupiter_a_0+=     0.00021814330 * cos( 0.70025220178 +      419.48464387520*t);
      jupiter_a_0+=     0.00025558941 * cos( 6.15962426898 +        7.11354700080*t);
      jupiter_a_0+=     0.00020585372 * cos( 5.98131661466 +      316.39186965660*t);
      jupiter_a_0+=     0.00011836569 * cos( 0.41496888665 +      735.87651353180*t);
      jupiter_a_0+=     0.00014633106 * cos( 5.20240925402 +     1265.56747862640*t);

      double jupiter_a_1=0.0;
      jupiter_a_1+=     0.00010177614 * cos( 4.46063225487 +        7.11354700080*t);
      jupiter_a_1=jupiter_a_1 * t;

      return jupiter_a_0+jupiter_a_1;
   }

   static double jupiter_l(double t){
      double jupiter_l_0=0.0;
      jupiter_l_0+=     0.59954649739 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_0+=     0.00573506125 * cos( 1.44396306420 +        7.11354700080*t);
      jupiter_l_0+=     0.00062308554 * cos( 3.41857056095 +      103.09277421860*t);
      jupiter_l_0+=     0.00032251188 * cos( 1.01358443926 +      632.78373931320*t);
      jupiter_l_0+=     0.00023791184 * cos( 1.27622244841 +      316.39186965660*t);
      jupiter_l_0+=     0.00013391386 * cos( 2.32518571601 +      419.48464387520*t);
      jupiter_l_0+=     0.00011730590 * cos( 0.74641135653 +      949.17560896980*t);

      double jupiter_l_1=0.0;
      jupiter_l_1+=   529.69096509460 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_1+=     0.00228875491 * cos( 6.02639570653 +        7.11354700080*t);
      jupiter_l_1=jupiter_l_1 * t;

      double jupiter_l_2=0.0;
      jupiter_l_2+=     0.00047224495 * cos( 4.32142959829 +        7.11354700080*t);
      jupiter_l_2+=     0.00014837133 * cos( 3.14159265359 +        0.00000000000*t);
      jupiter_l_2=jupiter_l_2 * t * t;

      return jupiter_l_0+jupiter_l_1+jupiter_l_2;
   }

   static double jupiter_k(double t){
      double jupiter_k_0=0.0;
      jupiter_k_0+=     0.04698572124 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_k_0+=     0.00065287010 * cos( 5.14135675663 +      103.09277421860*t);
      jupiter_k_0+=     0.00038006128 * cos( 2.03714771852 +        7.11354700080*t);
      jupiter_k_0+=     0.00013518804 * cos( 2.94820975394 +      110.20632121940*t);
      jupiter_k_0+=     0.00010740857 * cos( 4.85106997988 +      419.48464387520*t);

      double jupiter_k_1=0.0;
      jupiter_k_1+=     0.00113010377 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_k_1+=     0.00010303903 * cos( 0.33250058601 +        7.11354700080*t);
      jupiter_k_1=jupiter_k_1 * t;

      double jupiter_k_2=0.0;
      jupiter_k_2+=     0.00010930126 * cos( 3.14159265359 +        0.00000000000*t);
      jupiter_k_2=jupiter_k_2 * t * t;

      return jupiter_k_0+jupiter_k_1+jupiter_k_2;
   }

   static double jupiter_h(double t){
      double jupiter_h_0=0.0;
      jupiter_h_0+=     0.01200385748 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_h_0+=     0.00064278139 * cos( 0.39928981461 +      103.09277421860*t);
      jupiter_h_0+=     0.00037689163 * cos( 0.46902799622 +        7.11354700080*t);
      jupiter_h_0+=     0.00012686502 * cos( 1.52173271472 +      110.20632121940*t);
      jupiter_h_0+=     0.00010468075 * cos( 0.14414631816 +      419.48464387520*t);

      double jupiter_h_1=0.0;
      jupiter_h_1+=     0.00217149360 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_h_1+=     0.00010164439 * cos( 5.05135857516 +        7.11354700080*t);
      jupiter_h_1=jupiter_h_1 * t;

      return jupiter_h_0+jupiter_h_1;
   }

   static double jupiter_q(double t){
      double jupiter_q_0=0.0;
      jupiter_q_0+=     0.00206561098 * cos( 3.14159265359 +        0.00000000000*t);

      double jupiter_q_1=0.0;
      jupiter_q_1+=     0.00031340156 * cos( 3.14159265359 +        0.00000000000*t);
      jupiter_q_1=jupiter_q_1 * t;

      return jupiter_q_0+jupiter_q_1;
   }

   static double jupiter_p(double t){
      double jupiter_p_0=0.0;
      jupiter_p_0+=     0.01118377157 * cos( 0.00000000000 +        0.00000000000*t);

      double jupiter_p_1=0.0;
      jupiter_p_1+=     0.00023427562 * cos( 3.14159265359 +        0.00000000000*t);
      jupiter_p_1=jupiter_p_1 * t;

      return jupiter_p_0+jupiter_p_1;
   }

}
