import static java.lang.Math.*;

public class vsop87b_micro_mercury{
   static double mercury_l_0_(double t){
      double mercury_l_0=0.0;
      mercury_l_0+=     4.40250710144 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_0+=     0.40989414977 * cos( 1.48302034195 +    26087.90314157420*t);
      mercury_l_0+=     0.05046294200 * cos( 4.47785489551 +    52175.80628314840*t);
      mercury_l_0+=     0.00855346844 * cos( 1.16520322459 +    78263.70942472259*t);
      mercury_l_0+=     0.00165590362 * cos( 4.11969163423 +   104351.61256629678*t);
      mercury_l_0+=     0.00034561897 * cos( 0.77930768443 +   130439.51570787099*t);

      return mercury_l_0;
   }

   static double mercury_l_1_(double t){
      double mercury_l_1=0.0;
      mercury_l_1+= 26087.90313685529 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_1+=     0.01131199811 * cos( 6.21874197797 +    26087.90314157420*t);
      mercury_l_1+=     0.00292242298 * cos( 3.04449355541 +    52175.80628314840*t);
      mercury_l_1+=     0.00075775081 * cos( 6.08568821653 +    78263.70942472259*t);
      mercury_l_1+=     0.00019676525 * cos( 2.80965111777 +   104351.61256629678*t);
      mercury_l_1=mercury_l_1 * t;

      return mercury_l_1;
   }

   static double mercury_l_2_(double t){
      double mercury_l_2=0.0;
      mercury_l_2+=     0.00016395129 * cos( 4.67759555504 +    26087.90314157420*t);
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

      return mercury_b_0;
   }

   static double mercury_b_1_(double t){
      double mercury_b_1=0.0;
      mercury_b_1+=     0.00274646065 * cos( 3.95008450011 +    26087.90314157420*t);
      mercury_b_1+=     0.00099737713 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_b_1+=     0.00018772047 * cos( 0.05141288887 +    78263.70942472259*t);
      mercury_b_1+=     0.00023970726 * cos( 2.53272082947 +    52175.80628314840*t);
      mercury_b_1=mercury_b_1 * t;

      return mercury_b_1;
   }

   static double mercury_b(double t){
      return mercury_b_0_(t)+mercury_b_1_(t);
   }

   static double mercury_r_0_(double t){
      double mercury_r_0=0.0;
      mercury_r_0+=     0.39528271651 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_r_0+=     0.07834131818 * cos( 6.19233722598 +    26087.90314157420*t);
      mercury_r_0+=     0.00795525558 * cos( 2.95989690104 +    52175.80628314840*t);
      mercury_r_0+=     0.00121281764 * cos( 6.01064153797 +    78263.70942472259*t);
      mercury_r_0+=     0.00021921969 * cos( 2.77820093972 +   104351.61256629678*t);

      return mercury_r_0;
   }

   static double mercury_r_1_(double t){
      double mercury_r_1=0.0;
      mercury_r_1+=     0.00217347740 * cos( 4.65617158665 +    26087.90314157420*t);
      mercury_r_1+=     0.00044141826 * cos( 1.42385544001 +    52175.80628314840*t);
      mercury_r_1+=     0.00010094479 * cos( 4.47466326327 +    78263.70942472259*t);
      mercury_r_1=mercury_r_1 * t;

      return mercury_r_1;
   }

   static double mercury_r(double t){
      return mercury_r_0_(t)+mercury_r_1_(t);
   }

}
