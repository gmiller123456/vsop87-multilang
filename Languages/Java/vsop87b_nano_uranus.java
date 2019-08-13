import static java.lang.Math.*;

public class vsop87b_nano_uranus{
   static double uranus_l_0_(double t){
      double uranus_l_0=0.0;
      uranus_l_0+=     5.48129294297 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_0+=     0.09260408234 * cos( 0.89106421507 +       74.78159856730*t);
      uranus_l_0+=     0.01504247898 * cos( 3.62719260920 +        1.48447270830*t);
      uranus_l_0+=     0.00365981674 * cos( 1.89962179044 +       73.29712585900*t);
      uranus_l_0+=     0.00272328168 * cos( 3.35823706307 +      149.56319713460*t);

      return uranus_l_0;
   }

   static double uranus_l_1_(double t){
      double uranus_l_1=0.0;
      uranus_l_1+=    74.78159860910 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_1+=     0.00154332863 * cos( 5.24158770553 +       74.78159856730*t);
      uranus_l_1=uranus_l_1 * t;

      return uranus_l_1;
   }

   static double uranus_l(double t){
      return uranus_l_0_(t)+uranus_l_1_(t);
   }

   static double uranus_b_0_(double t){
      double uranus_b_0=0.0;
      uranus_b_0+=     0.01346277648 * cos( 2.61877810547 +       74.78159856730*t);

      return uranus_b_0;
   }

   static double uranus_b(double t){
      return uranus_b_0_(t);
   }

   static double uranus_r_0_(double t){
      double uranus_r_0=0.0;
      uranus_r_0+=    19.21264847206 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_r_0+=     0.88784984413 * cos( 5.60377527014 +       74.78159856730*t);
      uranus_r_0+=     0.03440836062 * cos( 0.32836099706 +       73.29712585900*t);
      uranus_r_0+=     0.02055653860 * cos( 1.78295159330 +      149.56319713460*t);
      uranus_r_0+=     0.00649322410 * cos( 4.52247285911 +       76.26607127560*t);
      uranus_r_0+=     0.00602247865 * cos( 3.86003823674 +       63.73589830340*t);
      uranus_r_0+=     0.00496404167 * cos( 1.40139935333 +      454.90936652730*t);
      uranus_r_0+=     0.00338525369 * cos( 1.58002770318 +      138.51749687070*t);
      uranus_r_0+=     0.00243509114 * cos( 1.57086606044 +       71.81265315070*t);
      uranus_r_0+=     0.00190522303 * cos( 1.99809394714 +        1.48447270830*t);
      uranus_r_0+=     0.00161858838 * cos( 2.79137786799 +      148.07872442630*t);
      uranus_r_0+=     0.00143706183 * cos( 1.38368544947 +       11.04570026390*t);

      return uranus_r_0;
   }

   static double uranus_r_1_(double t){
      double uranus_r_1=0.0;
      uranus_r_1+=     0.01479896629 * cos( 3.67205697578 +       74.78159856730*t);
      uranus_r_1=uranus_r_1 * t;

      return uranus_r_1;
   }

   static double uranus_r(double t){
      return uranus_r_0_(t)+uranus_r_1_(t);
   }

}
