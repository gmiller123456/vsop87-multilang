import static java.lang.Math.*;

public class vsop87b_micro_mars{
   static double mars_l_0_(double t){
      double mars_l_0=0.0;
      mars_l_0+=     6.20347711581 * cos( 0.00000000000 +        0.00000000000*t);
      mars_l_0+=     0.18656368093 * cos( 5.05037100270 +     3340.61242669980*t);
      mars_l_0+=     0.01108216816 * cos( 5.40099836344 +     6681.22485339960*t);
      mars_l_0+=     0.00091798406 * cos( 5.75478744667 +    10021.83728009940*t);
      mars_l_0+=     0.00027744987 * cos( 5.97049513147 +        3.52311834900*t);
      mars_l_0+=     0.00010610235 * cos( 2.93958560338 +     2281.23049651060*t);
      mars_l_0+=     0.00012315897 * cos( 0.84956094002 +     2810.92146160520*t);

      return mars_l_0;
   }

   static double mars_l_1_(double t){
      double mars_l_1=0.0;
      mars_l_1+=  3340.61242700512 * cos( 0.00000000000 +        0.00000000000*t);
      mars_l_1+=     0.01457554523 * cos( 3.60433733236 +     3340.61242669980*t);
      mars_l_1+=     0.00168414711 * cos( 3.92318567804 +     6681.22485339960*t);
      mars_l_1+=     0.00020622975 * cos( 4.26108844583 +    10021.83728009940*t);
      mars_l_1=mars_l_1 * t;

      return mars_l_1;
   }

   static double mars_l_2_(double t){
      double mars_l_2=0.0;
      mars_l_2+=     0.00058152577 * cos( 2.04961712429 +     3340.61242669980*t);
      mars_l_2+=     0.00013459579 * cos( 2.45738706163 +     6681.22485339960*t);
      mars_l_2=mars_l_2 * t * t;

      return mars_l_2;
   }

   static double mars_l(double t){
      return mars_l_0_(t)+mars_l_1_(t)+mars_l_2_(t);
   }

   static double mars_b_0_(double t){
      double mars_b_0=0.0;
      mars_b_0+=     0.03197134986 * cos( 3.76832042431 +     3340.61242669980*t);
      mars_b_0+=     0.00298033234 * cos( 4.10616996305 +     6681.22485339960*t);
      mars_b_0+=     0.00289104742 * cos( 0.00000000000 +        0.00000000000*t);
      mars_b_0+=     0.00031365539 * cos( 4.44651053090 +    10021.83728009940*t);

      return mars_b_0;
   }

   static double mars_b_1_(double t){
      double mars_b_1=0.0;
      mars_b_1+=     0.00217310991 * cos( 6.04472194776 +     3340.61242669980*t);
      mars_b_1+=     0.00020976948 * cos( 3.14159265359 +        0.00000000000*t);
      mars_b_1+=     0.00012834709 * cos( 1.60810667915 +     6681.22485339960*t);
      mars_b_1=mars_b_1 * t;

      return mars_b_1;
   }

   static double mars_b(double t){
      return mars_b_0_(t)+mars_b_1_(t);
   }

   static double mars_r_0_(double t){
      double mars_r_0=0.0;
      mars_r_0+=     1.53033488271 * cos( 0.00000000000 +        0.00000000000*t);
      mars_r_0+=     0.14184953160 * cos( 3.47971283528 +     3340.61242669980*t);
      mars_r_0+=     0.00660776362 * cos( 3.81783443019 +     6681.22485339960*t);
      mars_r_0+=     0.00046179117 * cos( 4.15595316782 +    10021.83728009940*t);

      return mars_r_0;
   }

   static double mars_r_1_(double t){
      double mars_r_1=0.0;
      mars_r_1+=     0.01107433345 * cos( 2.03250524857 +     3340.61242669980*t);
      mars_r_1+=     0.00103175887 * cos( 2.37071847807 +     6681.22485339960*t);
      mars_r_1+=     0.00012877200 * cos( 0.00000000000 +        0.00000000000*t);
      mars_r_1+=     0.00010815880 * cos( 2.70888095665 +    10021.83728009940*t);
      mars_r_1=mars_r_1 * t;

      return mars_r_1;
   }

   static double mars_r_2_(double t){
      double mars_r_2=0.0;
      mars_r_2+=     0.00044242249 * cos( 0.47930604954 +     3340.61242669980*t);
      mars_r_2=mars_r_2 * t * t;

      return mars_r_2;
   }

   static double mars_r(double t){
      return mars_r_0_(t)+mars_r_1_(t)+mars_r_2_(t);
   }

}
