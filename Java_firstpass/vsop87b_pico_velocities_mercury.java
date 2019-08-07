import static java.lang.Math.*;

public class vsop87b_pico_velocities_mercury{
   static double mercury_l(double t){
      double exp=0.0;
      double mercury_l_0=0.0;
      exp=0;
      mercury_l_0+=-pow(t,exp)*     4.40250710144*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mercury_l_0+=-pow(t,exp)*     0.40989414977*   26087.90314157420*sin( 1.48302034195 +    26087.90314157420*t);
      mercury_l_0+=-pow(t,exp)*     0.05046294200*   52175.80628314840*sin( 4.47785489551 +    52175.80628314840*t);

      double mercury_l_1=0.0;
      exp=1;
      mercury_l_1+=pow(t,exp-1)*exp* 26087.90313685529*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)* 26087.90313685529*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mercury_l_1+=pow(t,exp-1)*exp*     0.01131199811*cos( 6.21874197797 +    26087.90314157420*t)-pow(t,exp)*     0.01131199811*   26087.90314157420*sin( 6.21874197797 +    26087.90314157420*t);

      return mercury_l_0+mercury_l_1;
   }

   static double mercury_b(double t){
      double exp=0.0;
      double mercury_b_0=0.0;
      exp=0;
      mercury_b_0+=-pow(t,exp)*     0.11737528961*   26087.90314157420*sin( 1.98357498767 +    26087.90314157420*t);
      mercury_b_0+=-pow(t,exp)*     0.02388076996*   52175.80628314840*sin( 5.03738959686 +    52175.80628314840*t);
      mercury_b_0+=-pow(t,exp)*     0.01222839532*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);

      return mercury_b_0;
   }

   static double mercury_r(double t){
      double exp=0.0;
      double mercury_r_0=0.0;
      exp=0;
      mercury_r_0+=-pow(t,exp)*     0.39528271651*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mercury_r_0+=-pow(t,exp)*     0.07834131818*   26087.90314157420*sin( 6.19233722598 +    26087.90314157420*t);

      return mercury_r_0;
   }

}
