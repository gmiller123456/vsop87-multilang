import static java.lang.Math.*;

public class vsop87d_nano_uranus{
   static double uranus_l_0_(double t){
      double uranus_l_0=0.0;
      uranus_l_0+=     5.48129294299 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_0+=     0.09260408252 * cos( 0.89106421530 +       74.78159856730*t);
      uranus_l_0+=     0.01504247826 * cos( 3.62719262195 +        1.48447270830*t);
      uranus_l_0+=     0.00365981718 * cos( 1.89962189068 +       73.29712585900*t);
      uranus_l_0+=     0.00272328132 * cos( 3.35823710524 +      149.56319713460*t);

      return uranus_l_0;
   }

   static double uranus_l_1_(double t){
      double uranus_l_1=0.0;
      uranus_l_1+=    75.02543121646 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_1+=     0.00154458244 * cos( 5.24201658072 +       74.78159856730*t);
      uranus_l_1=uranus_l_1 * t;

      return uranus_l_1;
   }

   static double uranus_l(double t){
      return uranus_l_0_(t)+uranus_l_1_(t);
   }

   static double uranus_b_0_(double t){
      double uranus_b_0=0.0;
      uranus_b_0+=     0.01346277639 * cos( 2.61877810545 +       74.78159856730*t);

      return uranus_b_0;
   }

   static double uranus_b_1_(double t){
      double uranus_b_1=0.0;
      uranus_b_1+=     0.00206366162 * cos( 4.12394311407 +       74.78159856730*t);
      uranus_b_1=uranus_b_1 * t;

      return uranus_b_1;
   }

   static double uranus_b(double t){
      return uranus_b_0_(t)+uranus_b_1_(t);
   }

   static double uranus_r_0_(double t){
      double uranus_r_0=0.0;
      uranus_r_0+=    19.21264847881 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_r_0+=     0.88784984055 * cos( 5.60377526994 +       74.78159856730*t);
      uranus_r_0+=     0.03440835545 * cos( 0.32836098991 +       73.29712585900*t);
      uranus_r_0+=     0.02055653495 * cos( 1.78295170028 +      149.56319713460*t);
      uranus_r_0+=     0.00649321851 * cos( 4.52247298119 +       76.26607127560*t);
      uranus_r_0+=     0.00602248144 * cos( 3.86003820462 +       63.73589830340*t);
      uranus_r_0+=     0.00496404171 * cos( 1.40139934716 +      454.90936652730*t);
      uranus_r_0+=     0.00338525522 * cos( 1.58002682946 +      138.51749687070*t);
      uranus_r_0+=     0.00243508222 * cos( 1.57086595074 +       71.81265315070*t);
      uranus_r_0+=     0.00190521915 * cos( 1.99809364502 +        1.48447270830*t);
      uranus_r_0+=     0.00161858251 * cos( 2.79137863469 +      148.07872442630*t);
      uranus_r_0+=     0.00143705902 * cos( 1.38368574483 +       11.04570026390*t);

      return uranus_r_0;
   }

   static double uranus_r_1_(double t){
      double uranus_r_1=0.0;
      uranus_r_1+=     0.01479896370 * cos( 3.67205705317 +       74.78159856730*t);
      uranus_r_1=uranus_r_1 * t;

      return uranus_r_1;
   }

   static double uranus_r(double t){
      return uranus_r_0_(t)+uranus_r_1_(t);
   }

}
