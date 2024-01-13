//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_micro_uranus{
   static double uranus_a_0_(double t){
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
      uranus_a_0+=     0.00090078269 * cos( 0.33585778387 +       73.29712585900*t);
      uranus_a_0+=     0.00061920970 * cos( 3.45818087920 +      456.39383923560*t);
      uranus_a_0+=     0.00045935079 * cos( 4.64286711150 +      202.25339517410*t);
      uranus_a_0+=     0.00058841165 * cos( 2.48705383463 +      453.42489381900*t);
      uranus_a_0+=     0.00053293996 * cos( 0.50995644390 +      109.94568878850*t);
      uranus_a_0+=     0.00051844499 * cos( 2.55536031544 +     6208.29425142410*t);
      uranus_a_0+=     0.00050469671 * cos( 1.89418222433 +      415.55249061210*t);
      uranus_a_0+=     0.00048838076 * cos( 3.97801797335 +    10138.50394764370*t);
      uranus_a_0+=     0.00034892404 * cos( 5.75418250485 +      909.81873305460*t);
      uranus_a_0+=     0.00032917894 * cos( 0.70483800006 +        2.96894541660*t);
      uranus_a_0+=     0.00036972301 * cos( 0.17475135689 +       36.64856292950*t);
      uranus_a_0+=     0.00028704578 * cos( 1.39041828806 +       35.16409022120*t);
      uranus_a_0+=     0.00029696881 * cos( 0.67903436338 +      146.59425171800*t);
      uranus_a_0+=     0.00021391939 * cos( 0.02845030511 +      340.77089204480*t);
      uranus_a_0+=     0.00019478270 * cos( 2.10041390560 +     1514.29129671650*t);
      uranus_a_0+=     0.00022997542 * cos( 1.53103267798 +      447.79581952650*t);
      uranus_a_0+=     0.00023034340 * cos( 4.41961897942 +      462.02291352810*t);
      uranus_a_0+=     0.00020141604 * cos( 2.67711439002 +      305.34616939270*t);
      uranus_a_0+=     0.00018767795 * cos( 4.43338724151 +      149.56319713460*t);
      uranus_a_0+=     0.00021559916 * cos( 3.58530830565 +      554.06998748280*t);
      uranus_a_0+=     0.00012998808 * cos( 2.85105295526 +      127.47179660680*t);
      uranus_a_0+=     0.00016880093 * cos( 0.84798058480 +      183.24281464750*t);
      uranus_a_0+=     0.00014762015 * cos( 1.55212266318 +      145.63104387150*t);
      uranus_a_0+=     0.00015930221 * cos( 3.73134883667 +      140.00196957900*t);
      uranus_a_0+=     0.00014478423 * cos( 4.94983129790 +      131.40394986990*t);
      uranus_a_0+=     0.00015159970 * cos( 2.76239188887 +      137.03302416240*t);
      uranus_a_0+=     0.00010515353 * cos( 1.70301075392 +      479.28838891550*t);
      uranus_a_0+=     0.00012687891 * cos( 1.58735697797 +       71.81265315070*t);
      uranus_a_0+=     0.00013077660 * cos( 4.23675214362 +      381.61224066830*t);
      uranus_a_0+=     0.00011020208 * cos( 3.19000442755 +        3.93215326310*t);
      uranus_a_0+=     0.00011013560 * cos( 3.54307351200 +      835.03713448730*t);
      uranus_a_0+=     0.00011334332 * cos( 5.97963560630 +      316.39186965660*t);

      return uranus_a_0;
   }

   static double uranus_a_1_(double t){
      double uranus_a_1=0.0;
      uranus_a_1+=     0.00018892174 * cos( 5.14166599806 +       11.04570026390*t);
      uranus_a_1+=     0.00018428974 * cos( 0.90876002089 +      984.60033162190*t);
      uranus_a_1+=     0.00012155731 * cos( 5.07129450662 +      351.81659230870*t);
      uranus_a_1+=     0.00011411513 * cos( 0.08109503303 +       63.73589830340*t);
      uranus_a_1=uranus_a_1 * t;

      return uranus_a_1;
   }

   static double uranus_a(double t){
      return uranus_a_0_(t)+uranus_a_1_(t);
   }

   static double uranus_l_0_(double t){
      double uranus_l_0=0.0;
      uranus_l_0+=     5.48129387159 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_0+=     0.01503941337 * cos( 3.62721239702 +        1.48447270830*t);
      uranus_l_0+=     0.00341045477 * cos( 6.11377091373 +      454.90936652730*t);
      uranus_l_0+=     0.00075571550 * cos( 0.10254572902 +      138.51749687070*t);
      uranus_l_0+=     0.00061937506 * cos( 2.26973190883 +        2.96894541660*t);
      uranus_l_0+=     0.00059722283 * cos( 2.84455045894 +       11.04570026390*t);
      uranus_l_0+=     0.00018867012 * cos( 5.43708395337 +      529.69096509460*t);
      uranus_l_0+=     0.00017129222 * cos( 0.18104766503 +      984.60033162190*t);
      uranus_l_0+=     0.00016468518 * cos( 5.36717518314 +       63.73589830340*t);
      uranus_l_0+=     0.00014543819 * cos( 4.73644575760 +        3.93215326310*t);
      uranus_l_0+=     0.00014437567 * cos( 1.91368590597 +       73.29712585900*t);
      uranus_l_0+=     0.00013047912 * cos( 1.74402938964 +       36.64856292950*t);
      uranus_l_0+=     0.00012930477 * cos( 1.77673119432 +      277.03499374140*t);

      return uranus_l_0;
   }

   static double uranus_l_1_(double t){
      double uranus_l_1=0.0;
      uranus_l_1+=    74.78159856730 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_1+=     0.00024451511 * cos( 1.71261369505 +        1.48447270830*t);
      uranus_l_1=uranus_l_1 * t;

      return uranus_l_1;
   }

   static double uranus_l(double t){
      return uranus_l_0_(t)+uranus_l_1_(t);
   }

   static double uranus_k_0_(double t){
      double uranus_k_0=0.0;
      uranus_k_0+=     0.04595132376 * cos( 3.14159265359 +        0.00000000000*t);
      uranus_k_0+=     0.00274532742 * cos( 0.59960944961 +      529.69096509460*t);
      uranus_k_0+=     0.00209611522 * cos( 1.99913587697 +        1.48447270830*t);
      uranus_k_0+=     0.00136013862 * cos( 5.48189691557 +       74.78159856730*t);
      uranus_k_0+=     0.00116379910 * cos( 2.20321839185 +      380.12776796000*t);
      uranus_k_0+=     0.00061367654 * cos( 0.87377399008 +      213.29909543800*t);
      uranus_k_0+=     0.00025955084 * cos( 4.91660280043 +       11.04570026390*t);
      uranus_k_0+=     0.00028383762 * cos( 2.48454325825 +       63.73589830340*t);
      uranus_k_0+=     0.00015021315 * cos( 0.76594621932 +        2.96894541660*t);
      uranus_k_0+=     0.00013311384 * cos( 0.94943515364 +     1059.38193018920*t);

      return uranus_k_0;
   }

   static double uranus_k_1_(double t){
      double uranus_k_1=0.0;
      uranus_k_1+=     0.00018344115 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_k_1=uranus_k_1 * t;

      return uranus_k_1;
   }

   static double uranus_k(double t){
      return uranus_k_0_(t)+uranus_k_1_(t);
   }

   static double uranus_h_0_(double t){
      double uranus_h_0=0.0;
      uranus_h_0+=     0.00563791307 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_h_0+=     0.00274676149 * cos( 5.31178834743 +      529.69096509460*t);
      uranus_h_0+=     0.00210407426 * cos( 0.42744224313 +        1.48447270830*t);
      uranus_h_0+=     0.00136132837 * cos( 3.91136489012 +       74.78159856730*t);
      uranus_h_0+=     0.00116288289 * cos( 3.77434233468 +      380.12776796000*t);
      uranus_h_0+=     0.00061308823 * cos( 5.58629337039 +      213.29909543800*t);
      uranus_h_0+=     0.00025966791 * cos( 3.35174050484 +       11.04570026390*t);
      uranus_h_0+=     0.00028214307 * cos( 4.05785385739 +       63.73589830340*t);
      uranus_h_0+=     0.00014988819 * cos( 5.47840346834 +        2.96894541660*t);
      uranus_h_0+=     0.00013315732 * cos( 5.66170904346 +     1059.38193018920*t);

      return uranus_h_0;
   }

   static double uranus_h_1_(double t){
      double uranus_h_1=0.0;
      uranus_h_1+=     0.00074964350 * cos( 3.14159265359 +        0.00000000000*t);
      uranus_h_1=uranus_h_1 * t;

      return uranus_h_1;
   }

   static double uranus_h(double t){
      return uranus_h_0_(t)+uranus_h_1_(t);
   }

   static double uranus_q_0_(double t){
      double uranus_q_0=0.0;
      uranus_q_0+=     0.00185915075 * cos( 0.00000000000 +        0.00000000000*t);

      return uranus_q_0;
   }

   static double uranus_q_1_(double t){
      double uranus_q_1=0.0;
      uranus_q_1+=     0.00012449382 * cos( 3.14159265359 +        0.00000000000*t);
      uranus_q_1=uranus_q_1 * t;

      return uranus_q_1;
   }

   static double uranus_q(double t){
      return uranus_q_0_(t)+uranus_q_1_(t);
   }

   static double uranus_p_0_(double t){
      double uranus_p_0=0.0;
      uranus_p_0+=     0.00648617008 * cos( 0.00000000000 +        0.00000000000*t);

      return uranus_p_0;
   }

   static double uranus_p_1_(double t){
      double uranus_p_1=0.0;
      uranus_p_1+=     0.00011744733 * cos( 3.14159265359 +        0.00000000000*t);
      uranus_p_1=uranus_p_1 * t;

      return uranus_p_1;
   }

   static double uranus_p(double t){
      return uranus_p_0_(t)+uranus_p_1_(t);
   }

}
