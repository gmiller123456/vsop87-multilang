import static java.lang.Math.*;

public class vsop87_micro_mars{
   static double mars_a(double t){
      double mars_a_0=0.0;
      mars_a_0+=     1.52367934191 * cos( 0.00000000000 +        0.00000000000*t);

      return mars_a_0;
   }

   static double mars_l(double t){
      double mars_l_0=0.0;
      mars_l_0+=     6.20347611291 * cos( 0.00000000000 +        0.00000000000*t);
      mars_l_0+=     0.00027745033 * cos( 5.97049541372 +        3.52311834900*t);

      double mars_l_1=0.0;
      mars_l_1+=  3340.61242669981 * cos( 0.00000000000 +        0.00000000000*t);
      mars_l_1=mars_l_1 * t;

      return mars_l_0+mars_l_1;
   }

   static double mars_k(double t){
      double mars_k_0=0.0;
      mars_k_0+=     0.08536560252 * cos( 0.00000000000 +        0.00000000000*t);

      double mars_k_1=0.0;
      mars_k_1+=     0.00376330152 * cos( 0.00000000000 +        0.00000000000*t);
      mars_k_1=mars_k_1 * t;

      double mars_k_2=0.0;
      mars_k_2+=     0.00024657776 * cos( 3.14159265359 +        0.00000000000*t);
      mars_k_2=mars_k_2 * t * t;

      return mars_k_0+mars_k_1+mars_k_2;
   }

   static double mars_h(double t){
      double mars_h_0=0.0;
      mars_h_0+=     0.03789973236 * cos( 3.14159265359 +        0.00000000000*t);

      double mars_h_1=0.0;
      mars_h_1+=     0.00624657465 * cos( 0.00000000000 +        0.00000000000*t);
      mars_h_1=mars_h_1 * t;

      double mars_h_2=0.0;
      mars_h_2+=     0.00015529482 * cos( 0.00000000000 +        0.00000000000*t);
      mars_h_2=mars_h_2 * t * t;

      return mars_h_0+mars_h_1+mars_h_2;
   }

   static double mars_q(double t){
      double mars_q_0=0.0;
      mars_q_0+=     0.01047042574 * cos( 0.00000000000 +        0.00000000000*t);

      double mars_q_1=0.0;
      mars_q_1+=     0.00017138526 * cos( 0.00000000000 +        0.00000000000*t);
      mars_q_1=mars_q_1 * t;

      return mars_q_0+mars_q_1;
   }

   static double mars_p(double t){
      double mars_p_0=0.0;
      mars_p_0+=     0.01228449307 * cos( 0.00000000000 +        0.00000000000*t);

      double mars_p_1=0.0;
      mars_p_1+=     0.00108020083 * cos( 3.14159265359 +        0.00000000000*t);
      mars_p_1=mars_p_1 * t;

      return mars_p_0+mars_p_1;
   }

}
