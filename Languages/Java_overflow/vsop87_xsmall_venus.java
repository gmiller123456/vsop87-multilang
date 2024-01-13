//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_xsmall_venus{
   static double venus_a_0_(double t){
      double venus_a_0=0.0;
      venus_a_0+=     0.72332981996 * cos( 0.00000000000 +        0.00000000000*t);
      venus_a_0+=     0.00000432219 * cos( 2.84552760786 +     7860.41939243920*t);
      venus_a_0+=     0.00000293981 * cos( 5.15392250791 +    19367.18916223280*t);
      venus_a_0+=     0.00000264045 * cos( 4.26809747017 +    11790.62908865880*t);
      venus_a_0+=     0.00000177364 * cos( 1.42300334637 +     3930.20969621960*t);
      venus_a_0+=     0.00000168309 * cos( 5.69068897882 +    15720.83878487840*t);
      venus_a_0+=     0.00000109965 * cos( 0.83004358220 +    19651.04848109800*t);
      venus_a_0+=     0.00000104002 * cos( 2.68625826502 +     1577.34354244780*t);

      return venus_a_0;
   }

   static double venus_a(double t){
      return venus_a_0_(t);
   }

   static double venus_l_0_(double t){
      double venus_l_0=0.0;
      venus_l_0+=     3.17614669689 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_0+=     0.00002003673 * cos( 4.41634412285 +     7860.41939243920*t);
      venus_l_0+=     0.00001974219 * cos( 2.99373531667 +     3930.20969621960*t);
      venus_l_0+=     0.00001317126 * cos( 5.18666796835 +       26.29831979980*t);
      venus_l_0+=     0.00001609772 * cos( 4.24819541738 +     1577.34354244780*t);
      venus_l_0+=     0.00000943109 * cos( 5.83898452412 +    11790.62908865880*t);
      venus_l_0+=     0.00000759073 * cos( 1.94944592333 +      529.69096509460*t);
      venus_l_0+=     0.00000701576 * cos( 1.06509133263 +      775.52261132400*t);
      venus_l_0+=     0.00000584635 * cos( 3.99837954303 +      191.44826611160*t);
      venus_l_0+=     0.00000731373 * cos( 0.44153385028 +    19367.18916223280*t);
      venus_l_0+=     0.00000510584 * cos( 0.97844846212 +    15720.83878487840*t);
      venus_l_0+=     0.00000297815 * cos( 2.40105326112 +    19651.04848109800*t);
      venus_l_0+=     0.00000176993 * cos( 4.65387062499 +     1109.37855209340*t);
      venus_l_0+=     0.00000215728 * cos( 5.66909869478 +     5507.55323866740*t);
      venus_l_0+=     0.00000181822 * cos( 3.82361289262 +    23581.25817731760*t);
      venus_l_0+=     0.00000128263 * cos( 4.22605329070 +       20.77539549240*t);
      venus_l_0+=     0.00000131296 * cos( 0.07005540742 +    18837.49819713819*t);
      venus_l_0+=     0.00000131651 * cos( 4.15523917159 +     9683.59458111640*t);
      venus_l_0+=     0.00000104644 * cos( 1.53687847258 +      801.82093112380*t);
      venus_l_0+=     0.00000114451 * cos( 5.24612716253 +    27511.46787353720*t);

      return venus_l_0;
   }

   static double venus_l_1_(double t){
      double venus_l_1=0.0;
      venus_l_1+= 10213.28554621100 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_1+=     0.00000147221 * cos( 6.10436974053 +     1577.34354244780*t);
      venus_l_1+=     0.00000173922 * cos( 2.65539758046 +       26.29831979980*t);
      venus_l_1=venus_l_1 * t;

      return venus_l_1;
   }

   static double venus_l_2_(double t){
      double venus_l_2=0.0;
      venus_l_2+=     0.00000287889 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_2=venus_l_2 * t * t;

      return venus_l_2;
   }

   static double venus_l(double t){
      return venus_l_0_(t)+venus_l_1_(t)+venus_l_2_(t);
   }

   static double venus_k_0_(double t){
      double venus_k_0=0.0;
      venus_k_0+=     0.00449282133 * cos( 3.14159265359 +        0.00000000000*t);
      venus_k_0+=     0.00002247401 * cos( 1.09074471887 +     1577.34354244780*t);
      venus_k_0+=     0.00001705727 * cos( 3.47431815156 +     2352.86615377180*t);
      venus_k_0+=     0.00000653102 * cos( 3.73601615190 +      529.69096509460*t);
      venus_k_0+=     0.00000646057 * cos( 1.97697362222 +     9153.90361602180*t);
      venus_k_0+=     0.00000535429 * cos( 2.51380251594 +     5507.55323866740*t);
      venus_k_0+=     0.00000333443 * cos( 0.78531885212 +      775.52261132400*t);
      venus_k_0+=     0.00000252413 * cos( 0.04155262942 +    10213.28554621100*t);
      venus_k_0+=     0.00000251699 * cos( 3.93683715476 +     9437.76293488700*t);
      venus_k_0+=     0.00000239041 * cos( 4.90218844722 +     6283.07584999140*t);
      venus_k_0+=     0.00000166418 * cos( 2.98478080988 +      191.44826611160*t);
      venus_k_0+=     0.00000118122 * cos( 1.60851542401 +     8624.21265092720*t);
      venus_k_0+=     0.00000140152 * cos( 5.35977741501 +    13367.97263110660*t);

      return venus_k_0;
   }

   static double venus_k_1_(double t){
      double venus_k_1=0.0;
      venus_k_1+=     0.00031259019 * cos( 0.00000000000 +        0.00000000000*t);
      venus_k_1=venus_k_1 * t;

      return venus_k_1;
   }

   static double venus_k_2_(double t){
      double venus_k_2=0.0;
      venus_k_2+=     0.00000604065 * cos( 0.00000000000 +        0.00000000000*t);
      venus_k_2=venus_k_2 * t * t;

      return venus_k_2;
   }

   static double venus_k(double t){
      return venus_k_0_(t)+venus_k_1_(t)+venus_k_2_(t);
   }

   static double venus_h_0_(double t){
      double venus_h_0=0.0;
      venus_h_0+=     0.00506684726 * cos( 0.00000000000 +        0.00000000000*t);
      venus_h_0+=     0.00002230653 * cos( 2.66432207509 +     1577.34354244780*t);
      venus_h_0+=     0.00001690127 * cos( 1.89924451370 +     2352.86615377180*t);
      venus_h_0+=     0.00000658268 * cos( 2.16160277823 +      529.69096509460*t);
      venus_h_0+=     0.00000647290 * cos( 3.54941668195 +     9153.90361602180*t);
      venus_h_0+=     0.00000532791 * cos( 4.08663302424 +     5507.55323866740*t);
      venus_h_0+=     0.00000330805 * cos( 5.49447777930 +      775.52261132400*t);
      venus_h_0+=     0.00000251069 * cos( 5.50886761484 +     9437.76293488700*t);
      venus_h_0+=     0.00000246156 * cos( 4.73968260977 +    10213.28554621100*t);
      venus_h_0+=     0.00000231842 * cos( 3.31650363256 +     6283.07584999140*t);
      venus_h_0+=     0.00000167068 * cos( 4.54956488358 +      191.44826611160*t);
      venus_h_0+=     0.00000118194 * cos( 3.18031514290 +     8624.21265092720*t);
      venus_h_0+=     0.00000140191 * cos( 0.64791358847 +    13367.97263110660*t);

      return venus_h_0;
   }

   static double venus_h_1_(double t){
      double venus_h_1=0.0;
      venus_h_1+=     0.00036121239 * cos( 3.14159265359 +        0.00000000000*t);
      venus_h_1=venus_h_1 * t;

      return venus_h_1;
   }

   static double venus_h_2_(double t){
      double venus_h_2=0.0;
      venus_h_2+=     0.00001846764 * cos( 0.00000000000 +        0.00000000000*t);
      venus_h_2=venus_h_2 * t * t;

      return venus_h_2;
   }

   static double venus_h(double t){
      return venus_h_0_(t)+venus_h_1_(t)+venus_h_2_(t);
   }

   static double venus_q_0_(double t){
      double venus_q_0=0.0;
      venus_q_0+=     0.00682410142 * cos( 0.00000000000 +        0.00000000000*t);

      return venus_q_0;
   }

   static double venus_q_1_(double t){
      double venus_q_1=0.0;
      venus_q_1+=     0.00138133826 * cos( 0.00000000000 +        0.00000000000*t);
      venus_q_1=venus_q_1 * t;

      return venus_q_1;
   }

   static double venus_q_2_(double t){
      double venus_q_2=0.0;
      venus_q_2+=     0.00001090942 * cos( 3.14159265359 +        0.00000000000*t);
      venus_q_2=venus_q_2 * t * t;

      return venus_q_2;
   }

   static double venus_q_3_(double t){
      double venus_q_3=0.0;
      venus_q_3+=     0.00000186418 * cos( 3.14159265359 +        0.00000000000*t);
      venus_q_3=venus_q_3 * t * t * t;

      return venus_q_3;
   }

   static double venus_q(double t){
      return venus_q_0_(t)+venus_q_1_(t)+venus_q_2_(t)+venus_q_3_(t);
   }

   static double venus_p_0_(double t){
      double venus_p_0=0.0;
      venus_p_0+=     0.02882285775 * cos( 0.00000000000 +        0.00000000000*t);

      return venus_p_0;
   }

   static double venus_p_1_(double t){
      double venus_p_1=0.0;
      venus_p_1+=     0.00040384791 * cos( 3.14159265359 +        0.00000000000*t);
      venus_p_1=venus_p_1 * t;

      return venus_p_1;
   }

   static double venus_p_2_(double t){
      double venus_p_2=0.0;
      venus_p_2+=     0.00006232891 * cos( 3.14159265359 +        0.00000000000*t);
      venus_p_2=venus_p_2 * t * t;

      return venus_p_2;
   }

   static double venus_p(double t){
      return venus_p_0_(t)+venus_p_1_(t)+venus_p_2_(t);
   }

}
