//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_nano_saturn{
   static double saturn_l_0_(double t){
      double saturn_l_0=0.0;
      saturn_l_0+=     0.87401354025 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_0+=     0.11107659762 * cos( 3.96205090159 +      213.29909543800*t);
      saturn_l_0+=     0.01414150957 * cos( 4.58581516874 +        7.11354700080*t);
      saturn_l_0+=     0.00398379389 * cos( 0.52112032699 +      206.18554843720*t);
      saturn_l_0+=     0.00350769243 * cos( 3.30329907896 +      426.59819087600*t);
      saturn_l_0+=     0.00206816305 * cos( 0.24658372002 +      103.09277421860*t);

      return saturn_l_0;
   }

   static double saturn_l_1_(double t){
      double saturn_l_1=0.0;
      saturn_l_1+=   213.29909521690 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_1+=     0.01297370862 * cos( 1.82834923978 +      213.29909543800*t);
      saturn_l_1+=     0.00564345393 * cos( 2.88499717272 +        7.11354700080*t);
      saturn_l_1+=     0.00107674962 * cos( 2.27769131009 +      206.18554843720*t);
      saturn_l_1=saturn_l_1 * t;

      return saturn_l_1;
   }

   static double saturn_l_2_(double t){
      double saturn_l_2=0.0;
      saturn_l_2+=     0.00116441330 * cos( 1.17988132879 +        7.11354700080*t);
      saturn_l_2=saturn_l_2 * t * t;

      return saturn_l_2;
   }

   static double saturn_l(double t){
      return saturn_l_0_(t)+saturn_l_1_(t)+saturn_l_2_(t);
   }

   static double saturn_b_0_(double t){
      double saturn_b_0=0.0;
      saturn_b_0+=     0.04330678039 * cos( 3.60284428399 +      213.29909543800*t);
      saturn_b_0+=     0.00240348302 * cos( 2.85238489373 +      426.59819087600*t);

      return saturn_b_0;
   }

   static double saturn_b_1_(double t){
      double saturn_b_1=0.0;
      saturn_b_1+=     0.00198927992 * cos( 4.93901017903 +      213.29909543800*t);
      saturn_b_1=saturn_b_1 * t;

      return saturn_b_1;
   }

   static double saturn_b(double t){
      return saturn_b_0_(t)+saturn_b_1_(t);
   }

   static double saturn_r_0_(double t){
      double saturn_r_0=0.0;
      saturn_r_0+=     9.55758135486 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_r_0+=     0.52921382865 * cos( 2.39226219573 +      213.29909543800*t);
      saturn_r_0+=     0.01873679867 * cos( 5.23549604660 +      206.18554843720*t);
      saturn_r_0+=     0.01464663929 * cos( 1.64763042902 +      426.59819087600*t);
      saturn_r_0+=     0.00821891141 * cos( 5.93520042303 +      316.39186965660*t);
      saturn_r_0+=     0.00547506923 * cos( 5.01532618980 +      103.09277421860*t);
      saturn_r_0+=     0.00371684650 * cos( 2.27114821115 +      220.41264243880*t);
      saturn_r_0+=     0.00361778765 * cos( 3.13904301847 +        7.11354700080*t);
      saturn_r_0+=     0.00140617506 * cos( 5.70406606781 +      632.78373931320*t);
      saturn_r_0+=     0.00108974848 * cos( 3.29313390175 +      110.20632121940*t);

      return saturn_r_0;
   }

   static double saturn_r_1_(double t){
      double saturn_r_1=0.0;
      saturn_r_1+=     0.06182981340 * cos( 0.25843511480 +      213.29909543800*t);
      saturn_r_1+=     0.00506577242 * cos( 0.71114625261 +      206.18554843720*t);
      saturn_r_1+=     0.00341394029 * cos( 5.79635741658 +      426.59819087600*t);
      saturn_r_1+=     0.00188491195 * cos( 0.47215589652 +      220.41264243880*t);
      saturn_r_1+=     0.00186261486 * cos( 3.14159265359 +        0.00000000000*t);
      saturn_r_1+=     0.00143891146 * cos( 1.40744822888 +        7.11354700080*t);
      saturn_r_1=saturn_r_1 * t;

      return saturn_r_1;
   }

   static double saturn_r_2_(double t){
      double saturn_r_2=0.0;
      saturn_r_2+=     0.00436902572 * cos( 4.78671677509 +      213.29909543800*t);
      saturn_r_2=saturn_r_2 * t * t;

      return saturn_r_2;
   }

   static double saturn_r(double t){
      return saturn_r_0_(t)+saturn_r_1_(t)+saturn_r_2_(t);
   }

}
