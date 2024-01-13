//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_pico_uranus{
   static double uranus_l_0_(double t){
      double uranus_l_0=0.0;
      uranus_l_0+=     5.48129294297 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_0+=     0.09260408234 * cos( 0.89106421507 +       74.78159856730*t);
      uranus_l_0+=     0.01504247898 * cos( 3.62719260920 +        1.48447270830*t);

      return uranus_l_0;
   }

   static double uranus_l_1_(double t){
      double uranus_l_1=0.0;
      uranus_l_1+=    74.78159860910 * cos( 0.00000000000 +        0.00000000000*t);
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
