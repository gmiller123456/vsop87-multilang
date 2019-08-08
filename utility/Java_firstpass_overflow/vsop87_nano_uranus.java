import static java.lang.Math.*;

public class vsop87_nano_uranus{
   static double uranus_a(double t){
      double uranus_a_0=0.0;
      uranus_a_0+=    19.21844606178 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_a_0+=     0.08030476240 * cos( 1.40140954803 +      454.90936652730*t);
      uranus_a_0+=     0.02068375131 * cos( 1.67626096637 +      138.51749687070*t);
      uranus_a_0+=     0.00406413575 * cos( 5.21303965129 +      380.12776796000*t);
      uranus_a_0+=     0.00365190162 * cos( 1.75064255586 +      984.60033162190*t);
      uranus_a_0+=     0.00391818405 * cos( 2.05935807638 +        1.48447270830*t);
      uranus_a_0+=     0.00313720406 * cos( 2.19852745462 +       74.78159856730*t);
      uranus_a_0+=     0.00148020073 * cos( 4.84763548983 +       63.73589830340*t);
      uranus_a_0+=     0.00124336026 * cos( 1.34101096123 +       11.04570026390*t);
      uranus_a_0+=     0.00120436873 * cos( 0.15931700196 +      277.03499374140*t);
      uranus_a_0+=     0.00102755162 * cos( 0.89451486294 +      351.81659230870*t);

      return uranus_a_0;
   }

   static double uranus_l(double t){
      double uranus_l_0=0.0;
      uranus_l_0+=     5.48129387159 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_0+=     0.01503941337 * cos( 3.62721239702 +        1.48447270830*t);
      uranus_l_0+=     0.00341045477 * cos( 6.11377091373 +      454.90936652730*t);

      double uranus_l_1=0.0;
      uranus_l_1+=    74.78159856730 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_1=uranus_l_1 * t;

      return uranus_l_0+uranus_l_1;
   }

   static double uranus_k(double t){
      double uranus_k_0=0.0;
      uranus_k_0+=     0.04595132376 * cos( 3.14159265359 +        0.00000000000*t);
      uranus_k_0+=     0.00274532742 * cos( 0.59960944961 +      529.69096509460*t);
      uranus_k_0+=     0.00209611522 * cos( 1.99913587697 +        1.48447270830*t);
      uranus_k_0+=     0.00136013862 * cos( 5.48189691557 +       74.78159856730*t);
      uranus_k_0+=     0.00116379910 * cos( 2.20321839185 +      380.12776796000*t);

      return uranus_k_0;
   }

   static double uranus_h(double t){
      double uranus_h_0=0.0;
      uranus_h_0+=     0.00563791307 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_h_0+=     0.00274676149 * cos( 5.31178834743 +      529.69096509460*t);
      uranus_h_0+=     0.00210407426 * cos( 0.42744224313 +        1.48447270830*t);
      uranus_h_0+=     0.00136132837 * cos( 3.91136489012 +       74.78159856730*t);
      uranus_h_0+=     0.00116288289 * cos( 3.77434233468 +      380.12776796000*t);

      return uranus_h_0;
   }

   static double uranus_q(double t){
      double uranus_q_0=0.0;
      uranus_q_0+=     0.00185915075 * cos( 0.00000000000 +        0.00000000000*t);

      return uranus_q_0;
   }

   static double uranus_p(double t){
      double uranus_p_0=0.0;
      uranus_p_0+=     0.00648617008 * cos( 0.00000000000 +        0.00000000000*t);

      return uranus_p_0;
   }

}
