//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_nano_velocities_mercury{
   static double mercury_l_0_(double t){
      double mercury_l_0=0.0;
      double exp=0;
      mercury_l_0+=-pow(t,exp)*     4.40250710144*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mercury_l_0+=-pow(t,exp)*     0.40989414977*   26087.90314157420*sin( 1.48302034195 +    26087.90314157420*t);
      mercury_l_0+=-pow(t,exp)*     0.05046294200*   52175.80628314840*sin( 4.47785489551 +    52175.80628314840*t);
      mercury_l_0+=-pow(t,exp)*     0.00855346844*   78263.70942472259*sin( 1.16520322459 +    78263.70942472259*t);
      mercury_l_0+=-pow(t,exp)*     0.00165590362*  104351.61256629678*sin( 4.11969163423 +   104351.61256629678*t);

      return mercury_l_0;
   }

   static double mercury_l_1_(double t){
      double mercury_l_1=0.0;
      double exp=1;
      mercury_l_1+=pow(t,exp-1)*exp* 26087.90313685529*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)* 26087.90313685529*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mercury_l_1+=pow(t,exp-1)*exp*     0.01131199811*cos( 6.21874197797 +    26087.90314157420*t)-pow(t,exp)*     0.01131199811*   26087.90314157420*sin( 6.21874197797 +    26087.90314157420*t);
      mercury_l_1+=pow(t,exp-1)*exp*     0.00292242298*cos( 3.04449355541 +    52175.80628314840*t)-pow(t,exp)*     0.00292242298*   52175.80628314840*sin( 3.04449355541 +    52175.80628314840*t);

      return mercury_l_1;
   }

   static double mercury_l(double t){
      return mercury_l_0_(t)+mercury_l_1_(t);
   }

   static double mercury_b_0_(double t){
      double mercury_b_0=0.0;
      double exp=0;
      mercury_b_0+=-pow(t,exp)*     0.11737528961*   26087.90314157420*sin( 1.98357498767 +    26087.90314157420*t);
      mercury_b_0+=-pow(t,exp)*     0.02388076996*   52175.80628314840*sin( 5.03738959686 +    52175.80628314840*t);
      mercury_b_0+=-pow(t,exp)*     0.01222839532*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      mercury_b_0+=-pow(t,exp)*     0.00543251810*   78263.70942472259*sin( 1.79644363964 +    78263.70942472259*t);
      mercury_b_0+=-pow(t,exp)*     0.00129778770*  104351.61256629678*sin( 4.83232503958 +   104351.61256629678*t);

      return mercury_b_0;
   }

   static double mercury_b_1_(double t){
      double mercury_b_1=0.0;
      double exp=1;
      mercury_b_1+=pow(t,exp-1)*exp*     0.00274646065*cos( 3.95008450011 +    26087.90314157420*t)-pow(t,exp)*     0.00274646065*   26087.90314157420*sin( 3.95008450011 +    26087.90314157420*t);

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

      return mercury_r_0;
   }

   static double mercury_r_1_(double t){
      double mercury_r_1=0.0;
      double exp=1;
      mercury_r_1+=pow(t,exp-1)*exp*     0.00217347740*cos( 4.65617158665 +    26087.90314157420*t)-pow(t,exp)*     0.00217347740*   26087.90314157420*sin( 4.65617158665 +    26087.90314157420*t);

      return mercury_r_1;
   }

   static double mercury_r(double t){
      return mercury_r_0_(t)+mercury_r_1_(t);
   }

}
