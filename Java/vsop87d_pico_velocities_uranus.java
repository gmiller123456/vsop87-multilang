import static java.lang.Math.*;

public class vsop87d_pico_velocities_uranus{
   static double uranus_l_0_(double t){
      double uranus_l_0=0.0;
      double exp=0;
      uranus_l_0+=-pow(t,exp)*     5.48129294299*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      uranus_l_0+=-pow(t,exp)*     0.09260408252*      74.78159856730*sin( 0.89106421530 +       74.78159856730*t);
      uranus_l_0+=-pow(t,exp)*     0.01504247826*       1.48447270830*sin( 3.62719262195 +        1.48447270830*t);

      return uranus_l_0;
   }

   static double uranus_l_1_(double t){
      double uranus_l_1=0.0;
      double exp=1;
      uranus_l_1+=pow(t,exp-1)*exp*    75.02543121646*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*    75.02543121646*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return uranus_l_1;
   }

   static double uranus_l(double t){
      return uranus_l_0_(t)+uranus_l_1_(t);
   }

   static double uranus_b_0_(double t){
      double uranus_b_0=0.0;
      double exp=0;
      uranus_b_0+=-pow(t,exp)*     0.01346277639*      74.78159856730*sin( 2.61877810545 +       74.78159856730*t);

      return uranus_b_0;
   }

   static double uranus_b(double t){
      return uranus_b_0_(t);
   }

   static double uranus_r_0_(double t){
      double uranus_r_0=0.0;
      double exp=0;
      uranus_r_0+=-pow(t,exp)*    19.21264847881*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      uranus_r_0+=-pow(t,exp)*     0.88784984055*      74.78159856730*sin( 5.60377526994 +       74.78159856730*t);
      uranus_r_0+=-pow(t,exp)*     0.03440835545*      73.29712585900*sin( 0.32836098991 +       73.29712585900*t);
      uranus_r_0+=-pow(t,exp)*     0.02055653495*     149.56319713460*sin( 1.78295170028 +      149.56319713460*t);

      return uranus_r_0;
   }

   static double uranus_r_1_(double t){
      double uranus_r_1=0.0;
      double exp=1;
      uranus_r_1+=pow(t,exp-1)*exp*     0.01479896370*cos( 3.67205705317 +       74.78159856730*t)-pow(t,exp)*     0.01479896370*      74.78159856730*sin( 3.67205705317 +       74.78159856730*t);

      return uranus_r_1;
   }

   static double uranus_r(double t){
      return uranus_r_0_(t)+uranus_r_1_(t);
   }

}
