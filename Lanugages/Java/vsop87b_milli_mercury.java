import static java.lang.Math.*;

public class vsop87b_milli_mercury{
   static double mercury_l_0_(double t){
      double mercury_l_0=0.0;
      mercury_l_0+=     4.40250710144 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_0+=     0.40989414977 * cos( 1.48302034195 +    26087.90314157420*t);
      mercury_l_0+=     0.05046294200 * cos( 4.47785489551 +    52175.80628314840*t);
      mercury_l_0+=     0.00855346844 * cos( 1.16520322459 +    78263.70942472259*t);
      mercury_l_0+=     0.00165590362 * cos( 4.11969163423 +   104351.61256629678*t);
      mercury_l_0+=     0.00034561897 * cos( 0.77930768443 +   130439.51570787099*t);
      mercury_l_0+=     0.00007583476 * cos( 3.71348404924 +   156527.41884944518*t);
      mercury_l_0+=     0.00003559745 * cos( 1.51202675145 +     1109.37855209340*t);
      mercury_l_0+=     0.00001726011 * cos( 0.35832267096 +   182615.32199101939*t);
      mercury_l_0+=     0.00001803464 * cos( 4.10333184211 +     5661.33204915220*t);
      mercury_l_0+=     0.00001364681 * cos( 4.59918328256 +    27197.28169366760*t);
      mercury_l_0+=     0.00001589923 * cos( 2.99510423560 +    25028.52121138500*t);
      mercury_l_0+=     0.00001017332 * cos( 0.88031393824 +    31749.23519072640*t);

      return mercury_l_0;
   }

   static double mercury_l_1_(double t){
      double mercury_l_1=0.0;
      mercury_l_1+= 26087.90313685529 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_1+=     0.01131199811 * cos( 6.21874197797 +    26087.90314157420*t);
      mercury_l_1+=     0.00292242298 * cos( 3.04449355541 +    52175.80628314840*t);
      mercury_l_1+=     0.00075775081 * cos( 6.08568821653 +    78263.70942472259*t);
      mercury_l_1+=     0.00019676525 * cos( 2.80965111777 +   104351.61256629678*t);
      mercury_l_1+=     0.00005119883 * cos( 5.79432353574 +   130439.51570787099*t);
      mercury_l_1+=     0.00001336324 * cos( 2.47909947012 +   156527.41884944518*t);
      mercury_l_1=mercury_l_1 * t;

      return mercury_l_1;
   }

   static double mercury_l_2_(double t){
      double mercury_l_2=0.0;
      mercury_l_2+=     0.00016395129 * cos( 4.67759555504 +    26087.90314157420*t);
      mercury_l_2+=     0.00008123865 * cos( 1.40305644134 +    52175.80628314840*t);
      mercury_l_2+=     0.00003208170 * cos( 4.49577853102 +    78263.70942472259*t);
      mercury_l_2+=     0.00001128209 * cos( 1.27901273779 +   104351.61256629678*t);
      mercury_l_2=mercury_l_2 * t * t;

      return mercury_l_2;
   }

   static double mercury_l(double t){
      return mercury_l_0_(t)+mercury_l_1_(t)+mercury_l_2_(t);
   }

   static double mercury_b_0_(double t){
      double mercury_b_0=0.0;
      mercury_b_0+=     0.11737528961 * cos( 1.98357498767 +    26087.90314157420*t);
      mercury_b_0+=     0.02388076996 * cos( 5.03738959686 +    52175.80628314840*t);
      mercury_b_0+=     0.01222839532 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_b_0+=     0.00543251810 * cos( 1.79644363964 +    78263.70942472259*t);
      mercury_b_0+=     0.00129778770 * cos( 4.83232503958 +   104351.61256629678*t);
      mercury_b_0+=     0.00031866927 * cos( 1.58088495658 +   130439.51570787099*t);
      mercury_b_0+=     0.00007963301 * cos( 4.60972126127 +   156527.41884944518*t);
      mercury_b_0+=     0.00002014189 * cos( 1.35324164377 +   182615.32199101939*t);

      return mercury_b_0;
   }

   static double mercury_b_1_(double t){
      double mercury_b_1=0.0;
      mercury_b_1+=     0.00274646065 * cos( 3.95008450011 +    26087.90314157420*t);
      mercury_b_1+=     0.00099737713 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_b_1+=     0.00018772047 * cos( 0.05141288887 +    78263.70942472259*t);
      mercury_b_1+=     0.00023970726 * cos( 2.53272082947 +    52175.80628314840*t);
      mercury_b_1+=     0.00008097508 * cos( 3.20946389315 +   104351.61256629678*t);
      mercury_b_1+=     0.00002890729 * cos( 0.00943621371 +   130439.51570787099*t);
      mercury_b_1=mercury_b_1 * t;

      return mercury_b_1;
   }

   static double mercury_b_2_(double t){
      double mercury_b_2=0.0;
      mercury_b_2+=     0.00002747165 * cos( 5.24567337999 +    26087.90314157420*t);
      mercury_b_2+=     0.00002047257 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_b_2=mercury_b_2 * t * t;

      return mercury_b_2;
   }

   static double mercury_b(double t){
      return mercury_b_0_(t)+mercury_b_1_(t)+mercury_b_2_(t);
   }

   static double mercury_r_0_(double t){
      double mercury_r_0=0.0;
      mercury_r_0+=     0.39528271651 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_r_0+=     0.07834131818 * cos( 6.19233722598 +    26087.90314157420*t);
      mercury_r_0+=     0.00795525558 * cos( 2.95989690104 +    52175.80628314840*t);
      mercury_r_0+=     0.00121281764 * cos( 6.01064153797 +    78263.70942472259*t);
      mercury_r_0+=     0.00021921969 * cos( 2.77820093972 +   104351.61256629678*t);
      mercury_r_0+=     0.00004354065 * cos( 5.82894543774 +   130439.51570787099*t);

      return mercury_r_0;
   }

   static double mercury_r_1_(double t){
      double mercury_r_1=0.0;
      mercury_r_1+=     0.00217347740 * cos( 4.65617158665 +    26087.90314157420*t);
      mercury_r_1+=     0.00044141826 * cos( 1.42385544001 +    52175.80628314840*t);
      mercury_r_1+=     0.00010094479 * cos( 4.47466326327 +    78263.70942472259*t);
      mercury_r_1+=     0.00002432805 * cos( 1.24226083323 +   104351.61256629678*t);
      mercury_r_1+=     0.00001624367 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_r_1=mercury_r_1 * t;

      return mercury_r_1;
   }

   static double mercury_r_2_(double t){
      double mercury_r_2=0.0;
      mercury_r_2+=     0.00003117867 * cos( 3.08231840294 +    26087.90314157420*t);
      mercury_r_2+=     0.00001245397 * cos( 6.15183316810 +    52175.80628314840*t);
      mercury_r_2=mercury_r_2 * t * t;

      return mercury_r_2;
   }

   static double mercury_r(double t){
      return mercury_r_0_(t)+mercury_r_1_(t)+mercury_r_2_(t);
   }

}