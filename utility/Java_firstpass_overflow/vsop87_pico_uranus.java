import static java.lang.Math.*;

public class vsop87_pico_uranus{
   static double uranus_a(double t){
      double uranus_a_0=0.0;
      uranus_a_0+=    19.21844606178 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_a_0+=     0.08030476240 * cos( 1.40140954803 +      454.90936652730*t);
      uranus_a_0+=     0.02068375131 * cos( 1.67626096637 +      138.51749687070*t);

      return uranus_a_0;
   }

   static double uranus_l(double t){
      double uranus_l_0=0.0;
      uranus_l_0+=     5.48129387159 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_0+=     0.01503941337 * cos( 3.62721239702 +        1.48447270830*t);

      double uranus_l_1=0.0;
      uranus_l_1+=    74.78159856730 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_1=uranus_l_1 * t;

      return uranus_l_0+uranus_l_1;
   }

   static double uranus_k(double t){
      double uranus_k_0=0.0;
      uranus_k_0+=     0.04595132376 * cos( 3.14159265359 +        0.00000000000*t);

      return uranus_k_0;
   }

   static double uranus_h(double t){
      return 0;
   }

   static double uranus_q(double t){
      return 0;
   }

   static double uranus_p(double t){
      return 0;
   }

}
