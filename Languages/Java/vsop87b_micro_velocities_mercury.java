//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_micro_velocities_mercury{
   static double mercury_l_0_(double t){
      double mercury_l_0=0.0;
      double exp=0;
      mercury_l_0+=-pow(t,exp)*     4.40250710144*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mercury_l_0+=-pow(t,exp)*     0.40989414977*   26087.90314157420*sin( 1.48302034195 +    26087.90314157420*t);
      mercury_l_0+=-pow(t,exp)*     0.05046294200*   52175.80628314840*sin( 4.47785489551 +    52175.80628314840*t);
      mercury_l_0+=-pow(t,exp)*     0.00855346844*   78263.70942472259*sin( 1.16520322459 +    78263.70942472259*t);
      mercury_l_0+=-pow(t,exp)*     0.00165590362*  104351.61256629678*sin( 4.11969163423 +   104351.61256629678*t);
      mercury_l_0+=-pow(t,exp)*     0.00034561897*  130439.51570787099*sin( 0.77930768443 +   130439.51570787099*t);

      return mercury_l_0;
   }

   static double mercury_l_1_(double t){
      double mercury_l_1=0.0;
      double exp=1;
      mercury_l_1+=pow(t,exp-1)*exp* 26087.90313685529*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)* 26087.90313685529*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mercury_l_1+=pow(t,exp-1)*exp*     0.01131199811*cos( 6.21874197797 +    26087.90314157420*t)-pow(t,exp)*     0.01131199811*   26087.90314157420*sin( 6.21874197797 +    26087.90314157420*t);
      mercury_l_1+=pow(t,exp-1)*exp*     0.00292242298*cos( 3.04449355541 +    52175.80628314840*t)-pow(t,exp)*     0.00292242298*   52175.80628314840*sin( 3.04449355541 +    52175.80628314840*t);
      mercury_l_1+=pow(t,exp-1)*exp*     0.00075775081*cos( 6.08568821653 +    78263.70942472259*t)-pow(t,exp)*     0.00075775081*   78263.70942472259*sin( 6.08568821653 +    78263.70942472259*t);
      mercury_l_1+=pow(t,exp-1)*exp*     0.00019676525*cos( 2.80965111777 +   104351.61256629678*t)-pow(t,exp)*     0.00019676525*  104351.61256629678*sin( 2.80965111777 +   104351.61256629678*t);

      return mercury_l_1;
   }

   static double mercury_l_2_(double t){
      double mercury_l_2=0.0;
      double exp=2;
      mercury_l_2+=pow(t,exp-1)*exp*     0.00016395129*cos( 4.67759555504 +    26087.90314157420*t)-pow(t,exp)*     0.00016395129*   26087.90314157420*sin( 4.67759555504 +    26087.90314157420*t);

      return mercury_l_2;
   }

   static double mercury_l(double t){
      return mercury_l_0_(t)+mercury_l_1_(t)+mercury_l_2_(t);
   }

   static double mercury_b_0_(double t){
      double mercury_b_0=0.0;
      double exp=0;
      mercury_b_0+=-pow(t,exp)*     0.11737528961*   26087.90314157420*sin( 1.98357498767 +    26087.90314157420*t);
      mercury_b_0+=-pow(t,exp)*     0.02388076996*   52175.80628314840*sin( 5.03738959686 +    52175.80628314840*t);
      mercury_b_0+=-pow(t,exp)*     0.01222839532*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      mercury_b_0+=-pow(t,exp)*     0.00543251810*   78263.70942472259*sin( 1.79644363964 +    78263.70942472259*t);
      mercury_b_0+=-pow(t,exp)*     0.00129778770*  104351.61256629678*sin( 4.83232503958 +   104351.61256629678*t);
      mercury_b_0+=-pow(t,exp)*     0.00031866927*  130439.51570787099*sin( 1.58088495658 +   130439.51570787099*t);

      return mercury_b_0;
   }

   static double mercury_b_1_(double t){
      double mercury_b_1=0.0;
      double exp=1;
      mercury_b_1+=pow(t,exp-1)*exp*     0.00274646065*cos( 3.95008450011 +    26087.90314157420*t)-pow(t,exp)*     0.00274646065*   26087.90314157420*sin( 3.95008450011 +    26087.90314157420*t);
      mercury_b_1+=pow(t,exp-1)*exp*     0.00099737713*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00099737713*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      mercury_b_1+=pow(t,exp-1)*exp*     0.00018772047*cos( 0.05141288887 +    78263.70942472259*t)-pow(t,exp)*     0.00018772047*   78263.70942472259*sin( 0.05141288887 +    78263.70942472259*t);
      mercury_b_1+=pow(t,exp-1)*exp*     0.00023970726*cos( 2.53272082947 +    52175.80628314840*t)-pow(t,exp)*     0.00023970726*   52175.80628314840*sin( 2.53272082947 +    52175.80628314840*t);

      return mercury_b_1;
   }

   static double mercury_b(double t){
      return mercury_b_0_(t)+mercury_b_1_(t);
   }

   static double mercury_r_0_(double t){
      double mercury_r_0=0.0;
      double exp=0;
      mercury_r_0+=-pow(t,exp)*     0.39528271651*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mercury_r_0+=-pow(t,exp)*     0.07834131818*   26087.90314157420*sin( 6.19233722598 +    26087.90314157420*t);
      mercury_r_0+=-pow(t,exp)*     0.00795525558*   52175.80628314840*sin( 2.95989690104 +    52175.80628314840*t);
      mercury_r_0+=-pow(t,exp)*     0.00121281764*   78263.70942472259*sin( 6.01064153797 +    78263.70942472259*t);
      mercury_r_0+=-pow(t,exp)*     0.00021921969*  104351.61256629678*sin( 2.77820093972 +   104351.61256629678*t);

      return mercury_r_0;
   }

   static double mercury_r_1_(double t){
      double mercury_r_1=0.0;
      double exp=1;
      mercury_r_1+=pow(t,exp-1)*exp*     0.00217347740*cos( 4.65617158665 +    26087.90314157420*t)-pow(t,exp)*     0.00217347740*   26087.90314157420*sin( 4.65617158665 +    26087.90314157420*t);
      mercury_r_1+=pow(t,exp-1)*exp*     0.00044141826*cos( 1.42385544001 +    52175.80628314840*t)-pow(t,exp)*     0.00044141826*   52175.80628314840*sin( 1.42385544001 +    52175.80628314840*t);
      mercury_r_1+=pow(t,exp-1)*exp*     0.00010094479*cos( 4.47466326327 +    78263.70942472259*t)-pow(t,exp)*     0.00010094479*   78263.70942472259*sin( 4.47466326327 +    78263.70942472259*t);

      return mercury_r_1;
   }

   static double mercury_r(double t){
      return mercury_r_0_(t)+mercury_r_1_(t);
   }

}
