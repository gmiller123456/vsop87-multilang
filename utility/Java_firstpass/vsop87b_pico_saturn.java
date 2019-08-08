import static java.lang.Math.*;

public class vsop87b_pico_saturn{
   static double saturn_l(double t){
      double saturn_l_0=0.0;
      saturn_l_0+=     0.87401354025 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_0+=     0.11107659762 * cos( 3.96205090159 +      213.29909543800*t);
      saturn_l_0+=     0.01414150957 * cos( 4.58581516874 +        7.11354700080*t);

      double saturn_l_1=0.0;
      saturn_l_1+=   213.29909521690 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_1+=     0.01297370862 * cos( 1.82834923978 +      213.29909543800*t);
      saturn_l_1=saturn_l_1 * t;

      return saturn_l_0+saturn_l_1;
   }

   static double saturn_b(double t){
      double saturn_b_0=0.0;
      saturn_b_0+=     0.04330678039 * cos( 3.60284428399 +      213.29909543800*t);

      return saturn_b_0;
   }

   static double saturn_r(double t){
      double saturn_r_0=0.0;
      saturn_r_0+=     9.55758135486 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_r_0+=     0.52921382865 * cos( 2.39226219573 +      213.29909543800*t);
      saturn_r_0+=     0.01873679867 * cos( 5.23549604660 +      206.18554843720*t);
      saturn_r_0+=     0.01464663929 * cos( 1.64763042902 +      426.59819087600*t);

      double saturn_r_1=0.0;
      saturn_r_1+=     0.06182981340 * cos( 0.25843511480 +      213.29909543800*t);
      saturn_r_1=saturn_r_1 * t;

      return saturn_r_0+saturn_r_1;
   }

}
