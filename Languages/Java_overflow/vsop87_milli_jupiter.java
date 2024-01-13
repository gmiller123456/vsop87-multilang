//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_milli_jupiter{
   static double jupiter_a_0_(double t){
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
      jupiter_a_0+=     0.00006702248 * cos( 0.13787303369 +     1052.26838318840*t);
      jupiter_a_0+=     0.00006545032 * cos( 1.97539564312 +      206.18554843720*t);
      jupiter_a_0+=     0.00007808378 * cos( 1.15392185250 +     5753.38488489680*t);
      jupiter_a_0+=     0.00005492322 * cos( 6.22811858833 +      110.20632121940*t);
      jupiter_a_0+=     0.00007016965 * cos( 4.94542752265 +     1581.95934828300*t);
      jupiter_a_0+=     0.00007170006 * cos( 2.57687162897 +     9683.59458111640*t);
      jupiter_a_0+=     0.00003812238 * cos( 6.14889511650 +     1368.66025284500*t);
      jupiter_a_0+=     0.00003161638 * cos( 1.66903371591 +      522.57741809380*t);
      jupiter_a_0+=     0.00003403855 * cos( 4.69439311157 +     1898.35121793960*t);
      jupiter_a_0+=     0.00002159445 * cos( 5.88093480007 +     1685.05212250160*t);
      jupiter_a_0+=     0.00002137176 * cos( 4.12641996837 +      529.69096509460*t);
      jupiter_a_0+=     0.00001907151 * cos( 1.38573177860 +      838.96928775040*t);
      jupiter_a_0+=     0.00002098973 * cos( 0.26695969427 +     1162.47470440780*t);
      jupiter_a_0+=     0.00001629945 * cos( 0.03571048023 +     1478.86657406440*t);
      jupiter_a_0+=     0.00001661953 * cos( 4.44977785904 +     2214.74308759620*t);
      jupiter_a_0+=     0.00001186903 * cos( 2.64995167523 +      846.08283475120*t);
      jupiter_a_0+=     0.00001214418 * cos( 5.61722097881 +     2001.44399215820*t);
      jupiter_a_0+=     0.00001269999 * cos( 3.71806964818 +      426.59819087600*t);
      jupiter_a_0+=     0.00001213593 * cos( 1.06750572685 +     1155.36115740700*t);
      jupiter_a_0+=     0.00001312912 * cos( 2.44966148532 +      639.89728631400*t);
      jupiter_a_0+=     0.00001103727 * cos( 6.06678431400 +     1795.25844372100*t);

      return jupiter_a_0;
   }

   static double jupiter_a_1_(double t){
      double jupiter_a_1=0.0;
      jupiter_a_1+=     0.00010177614 * cos( 4.46063225487 +        7.11354700080*t);
      jupiter_a_1+=     0.00002974577 * cos( 2.40984161552 +      419.48464387520*t);
      jupiter_a_1+=     0.00002846542 * cos( 2.88143856615 +      103.09277421860*t);
      jupiter_a_1+=     0.00001611596 * cos( 2.13915074201 +      735.87651353180*t);
      jupiter_a_1+=     0.00001760156 * cos( 3.67637229071 +      206.18554843720*t);
      jupiter_a_1=jupiter_a_1 * t;

      return jupiter_a_1;
   }

   static double jupiter_a_2_(double t){
      double jupiter_a_2=0.0;
      jupiter_a_2+=     0.00002100381 * cos( 2.75770207184 +        7.11354700080*t);
      jupiter_a_2=jupiter_a_2 * t * t;

      return jupiter_a_2;
   }

   static double jupiter_a(double t){
      return jupiter_a_0_(t)+jupiter_a_1_(t)+jupiter_a_2_(t);
   }

   static double jupiter_l_0_(double t){
      double jupiter_l_0=0.0;
      jupiter_l_0+=     0.59954649739 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_0+=     0.00573506125 * cos( 1.44396306420 +        7.11354700080*t);
      jupiter_l_0+=     0.00062308554 * cos( 3.41857056095 +      103.09277421860*t);
      jupiter_l_0+=     0.00032251188 * cos( 1.01358443926 +      632.78373931320*t);
      jupiter_l_0+=     0.00023791184 * cos( 1.27622244841 +      316.39186965660*t);
      jupiter_l_0+=     0.00013391386 * cos( 2.32518571601 +      419.48464387520*t);
      jupiter_l_0+=     0.00011730590 * cos( 0.74641135653 +      949.17560896980*t);
      jupiter_l_0+=     0.00006812004 * cos( 3.60956583595 +      206.18554843720*t);
      jupiter_l_0+=     0.00005167226 * cos( 2.03396982022 +      735.87651353180*t);
      jupiter_l_0+=     0.00005028480 * cos( 1.30119547663 +      110.20632121940*t);
      jupiter_l_0+=     0.00004874926 * cos( 0.14125173816 +      213.29909543800*t);
      jupiter_l_0+=     0.00005301368 * cos( 1.30630311058 +       14.22709400160*t);
      jupiter_l_0+=     0.00004646804 * cos( 4.69958744435 +        3.93215326310*t);
      jupiter_l_0+=     0.00004844502 * cos( 0.48003774299 +     1265.56747862640*t);
      jupiter_l_0+=     0.00002441576 * cos( 1.74974982970 +     1052.26838318840*t);
      jupiter_l_0+=     0.00002028225 * cos( 1.06374295158 +        3.18139373770*t);
      jupiter_l_0+=     0.00001824700 * cos( 5.72883078185 +      529.69096509460*t);
      jupiter_l_0+=     0.00001712597 * cos( 3.32169437274 +      522.57741809380*t);
      jupiter_l_0+=     0.00002129932 * cos( 0.21867743210 +     1581.95934828300*t);
      jupiter_l_0+=     0.00001238477 * cos( 1.47069491582 +     1368.66025284500*t);
      jupiter_l_0+=     0.00001327642 * cos( 5.86632120612 +     5753.38488489680*t);
      jupiter_l_0+=     0.00001277074 * cos( 1.00600288328 +     9683.59458111640*t);

      return jupiter_l_0;
   }

   static double jupiter_l_1_(double t){
      double jupiter_l_1=0.0;
      jupiter_l_1+=   529.69096509460 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_1+=     0.00228875491 * cos( 6.02639570653 +        7.11354700080*t);
      jupiter_l_1+=     0.00005840251 * cos( 4.42734755250 +      103.09277421860*t);
      jupiter_l_1+=     0.00004234649 * cos( 5.88973718187 +       14.22709400160*t);
      jupiter_l_1+=     0.00001827425 * cos( 3.98800487338 +      419.48464387520*t);
      jupiter_l_1+=     0.00001825678 * cos( 5.28404506455 +      206.18554843720*t);
      jupiter_l_1+=     0.00001295763 * cos( 5.55131472287 +        3.18139373770*t);
      jupiter_l_1+=     0.00001163261 * cos( 0.51449095629 +        3.93215326310*t);
      jupiter_l_1=jupiter_l_1 * t;

      return jupiter_l_1;
   }

   static double jupiter_l_2_(double t){
      double jupiter_l_2=0.0;
      jupiter_l_2+=     0.00047224495 * cos( 4.32142959829 +        7.11354700080*t);
      jupiter_l_2+=     0.00014837133 * cos( 3.14159265359 +        0.00000000000*t);
      jupiter_l_2+=     0.00001719760 * cos( 4.18704068143 +       14.22709400160*t);
      jupiter_l_2=jupiter_l_2 * t * t;

      return jupiter_l_2;
   }

   static double jupiter_l_3_(double t){
      double jupiter_l_3=0.0;
      jupiter_l_3+=     0.00006500387 * cos( 2.59858880160 +        7.11354700080*t);
      jupiter_l_3=jupiter_l_3 * t * t * t;

      return jupiter_l_3;
   }

   static double jupiter_l(double t){
      return jupiter_l_0_(t)+jupiter_l_1_(t)+jupiter_l_2_(t)+jupiter_l_3_(t);
   }

   static double jupiter_k_0_(double t){
      double jupiter_k_0=0.0;
      jupiter_k_0+=     0.04698572124 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_k_0+=     0.00065287010 * cos( 5.14135675663 +      103.09277421860*t);
      jupiter_k_0+=     0.00038006128 * cos( 2.03714771852 +        7.11354700080*t);
      jupiter_k_0+=     0.00013518804 * cos( 2.94820975394 +      110.20632121940*t);
      jupiter_k_0+=     0.00010740857 * cos( 4.85106997988 +      419.48464387520*t);
      jupiter_k_0+=     0.00006494479 * cos( 6.11501213894 +      206.18554843720*t);
      jupiter_k_0+=     0.00008220806 * cos( 3.97331004047 +      213.29909543800*t);
      jupiter_k_0+=     0.00003765858 * cos( 4.56504910618 +      735.87651353180*t);
      jupiter_k_0+=     0.00002959813 * cos( 3.68441778896 +      529.69096509460*t);
      jupiter_k_0+=     0.00002035004 * cos( 5.81350208632 +      522.57741809380*t);
      jupiter_k_0+=     0.00001747828 * cos( 1.94483888566 +      426.59819087600*t);
      jupiter_k_0+=     0.00001558179 * cos( 4.27725789559 +     1052.26838318840*t);
      jupiter_k_0+=     0.00001472174 * cos( 0.07389019650 +     1162.47470440780*t);
      jupiter_k_0+=     0.00001038475 * cos( 1.75340907792 +     6283.07584999140*t);

      return jupiter_k_0;
   }

   static double jupiter_k_1_(double t){
      double jupiter_k_1=0.0;
      jupiter_k_1+=     0.00113010377 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_k_1+=     0.00010303903 * cos( 0.33250058601 +        7.11354700080*t);
      jupiter_k_1+=     0.00001978042 * cos( 1.13748818129 +      110.20632121940*t);
      jupiter_k_1=jupiter_k_1 * t;

      return jupiter_k_1;
   }

   static double jupiter_k_2_(double t){
      double jupiter_k_2=0.0;
      jupiter_k_2+=     0.00010930126 * cos( 3.14159265359 +        0.00000000000*t);
      jupiter_k_2+=     0.00001442597 * cos( 4.88233039271 +        7.11354700080*t);
      jupiter_k_2=jupiter_k_2 * t * t;

      return jupiter_k_2;
   }

   static double jupiter_k(double t){
      return jupiter_k_0_(t)+jupiter_k_1_(t)+jupiter_k_2_(t);
   }

   static double jupiter_h_0_(double t){
      double jupiter_h_0=0.0;
      jupiter_h_0+=     0.01200385748 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_h_0+=     0.00064278139 * cos( 0.39928981461 +      103.09277421860*t);
      jupiter_h_0+=     0.00037689163 * cos( 0.46902799622 +        7.11354700080*t);
      jupiter_h_0+=     0.00012686502 * cos( 1.52173271472 +      110.20632121940*t);
      jupiter_h_0+=     0.00010468075 * cos( 0.14414631816 +      419.48464387520*t);
      jupiter_h_0+=     0.00006402161 * cos( 1.39213151486 +      206.18554843720*t);
      jupiter_h_0+=     0.00007914390 * cos( 2.52216677357 +      213.29909543800*t);
      jupiter_h_0+=     0.00003749183 * cos( 6.17601797762 +      735.87651353180*t);
      jupiter_h_0+=     0.00002842733 * cos( 2.22519565559 +      529.69096509460*t);
      jupiter_h_0+=     0.00002032835 * cos( 1.12581931301 +      522.57741809380*t);
      jupiter_h_0+=     0.00001205591 * cos( 3.58200423326 +      316.39186965660*t);
      jupiter_h_0+=     0.00001580155 * cos( 5.93627628914 +     1052.26838318840*t);
      jupiter_h_0+=     0.00001251514 * cos( 0.53303247088 +      426.59819087600*t);
      jupiter_h_0+=     0.00001501758 * cos( 4.71935111593 +     1162.47470440780*t);
      jupiter_h_0+=     0.00001038160 * cos( 0.18273665816 +     6283.07584999140*t);

      return jupiter_h_0;
   }

   static double jupiter_h_1_(double t){
      double jupiter_h_1=0.0;
      jupiter_h_1+=     0.00217149360 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_h_1+=     0.00010164439 * cos( 5.05135857516 +        7.11354700080*t);
      jupiter_h_1+=     0.00001666197 * cos( 6.26691415094 +      110.20632121940*t);
      jupiter_h_1=jupiter_h_1 * t;

      return jupiter_h_1;
   }

   static double jupiter_h_2_(double t){
      double jupiter_h_2=0.0;
      jupiter_h_2+=     0.00009858539 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_h_2+=     0.00001409659 * cos( 3.32663555725 +        7.11354700080*t);
      jupiter_h_2=jupiter_h_2 * t * t;

      return jupiter_h_2;
   }

   static double jupiter_h(double t){
      return jupiter_h_0_(t)+jupiter_h_1_(t)+jupiter_h_2_(t);
   }

   static double jupiter_q_0_(double t){
      double jupiter_q_0=0.0;
      jupiter_q_0+=     0.00206561098 * cos( 3.14159265359 +        0.00000000000*t);

      return jupiter_q_0;
   }

   static double jupiter_q_1_(double t){
      double jupiter_q_1=0.0;
      jupiter_q_1+=     0.00031340156 * cos( 3.14159265359 +        0.00000000000*t);
      jupiter_q_1=jupiter_q_1 * t;

      return jupiter_q_1;
   }

   static double jupiter_q_2_(double t){
      double jupiter_q_2=0.0;
      jupiter_q_2+=     0.00001667392 * cos( 3.14159265359 +        0.00000000000*t);
      jupiter_q_2=jupiter_q_2 * t * t;

      return jupiter_q_2;
   }

   static double jupiter_q(double t){
      return jupiter_q_0_(t)+jupiter_q_1_(t)+jupiter_q_2_(t);
   }

   static double jupiter_p_0_(double t){
      double jupiter_p_0=0.0;
      jupiter_p_0+=     0.01118377157 * cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_p_0;
   }

   static double jupiter_p_1_(double t){
      double jupiter_p_1=0.0;
      jupiter_p_1+=     0.00023427562 * cos( 3.14159265359 +        0.00000000000*t);
      jupiter_p_1=jupiter_p_1 * t;

      return jupiter_p_1;
   }

   static double jupiter_p_2_(double t){
      double jupiter_p_2=0.0;
      jupiter_p_2+=     0.00002086760 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_p_2=jupiter_p_2 * t * t;

      return jupiter_p_2;
   }

   static double jupiter_p(double t){
      return jupiter_p_0_(t)+jupiter_p_1_(t)+jupiter_p_2_(t);
   }

}
