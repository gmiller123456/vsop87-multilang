import static java.lang.Math.*;

public class vsop87_nano_mercury{
   static double mercury_a(double t){
      double mercury_a_0=0.0;
      mercury_a_0+=     0.38709830982 * cos( 0.00000000000 +        0.00000000000*t);

      return mercury_a_0;
   }

   static double mercury_l(double t){
      double mercury_l_0=0.0;
      mercury_l_0+=     4.40260884240 * cos( 0.00000000000 +        0.00000000000*t);

      double mercury_l_1=0.0;
      mercury_l_1+= 26087.90314157420 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_1=mercury_l_1 * t;

      return mercury_l_0+mercury_l_1;
   }

   static double mercury_k(double t){
      double mercury_k_0=0.0;
      mercury_k_0+=     0.04466059760 * cos( 0.00000000000 +        0.00000000000*t);

      double mercury_k_1=0.0;
      mercury_k_1+=     0.00552114624 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_k_1=mercury_k_1 * t;

      return mercury_k_0+mercury_k_1;
   }

   static double mercury_h(double t){
      double mercury_h_0=0.0;
      mercury_h_0+=     0.20072331368 * cos( 0.00000000000 +        0.00000000000*t);

      double mercury_h_1=0.0;
      mercury_h_1+=     0.00143750118 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_h_1=mercury_h_1 * t;

      return mercury_h_0+mercury_h_1;
   }

   static double mercury_q(double t){
      double mercury_q_0=0.0;
      mercury_q_0+=     0.04061563384 * cos( 0.00000000000 +        0.00000000000*t);

      return mercury_q_0;
   }

   static double mercury_p(double t){
      double mercury_p_0=0.0;
      mercury_p_0+=     0.04563550461 * cos( 0.00000000000 +        0.00000000000*t);

      double mercury_p_1=0.0;
      mercury_p_1+=     0.00127633657 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_p_1=mercury_p_1 * t;

      return mercury_p_0+mercury_p_1;
   }

}
