//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87c_micro_mars{
   static double mars_x_0_(double t){
      double mars_x_0=0.0;
      mars_x_0+=     1.51664432758 * cos( 6.20347631684 +     3340.85624418330*t);
      mars_x_0+=     0.21337343470 * cos( 2.72390342700 +        0.24381748350*t);
      mars_x_0+=     0.07067734657 * cos( 0.25841679630 +     6681.46867088311*t);
      mars_x_0+=     0.00494034875 * cos( 0.59654023167 +    10022.08109758290*t);
      mars_x_0+=     0.00135189385 * cos( 0.59603904502 +     3340.36860921629*t);
      mars_x_0+=     0.00040927830 * cos( 0.93466338314 +    13362.69352428270*t);
      mars_x_0+=     0.00021051988 * cos( 1.80377821704 +     3337.33312583431*t);
      mars_x_0+=     0.00021027270 * cos( 1.17839785680 +     3344.37936253230*t);
      mars_x_0+=     0.00011370204 * cos( 4.83238126700 +     1059.62574767270*t);
      mars_x_0+=     0.00013426076 * cos( 0.63015591517 +      529.93478257810*t);

      return mars_x_0;
   }

   static double mars_x_1_(double t){
      double mars_x_1=0.0;
      mars_x_1+=     0.01668487239 * cos( 4.16976892466 +        0.24381748350*t);
      mars_x_1+=     0.00551520815 * cos( 5.09364818449 +     6681.46867088311*t);
      mars_x_1+=     0.00077122404 * cos( 5.43227875215 +    10022.08109758290*t);
      mars_x_1+=     0.00033905789 * cos( 5.71116244693 +     3340.36860921629*t);
      mars_x_1+=     0.00013417687 * cos( 2.71465693005 +     3340.85624418330*t);
      mars_x_1=mars_x_1 * t;

      return mars_x_1;
   }

   static double mars_x_2_(double t){
      double mars_x_2=0.0;
      mars_x_2+=     0.00068999338 * cos( 5.55726456394 +        0.24381748350*t);
      mars_x_2+=     0.00082190105 * cos( 1.49108837587 +     3340.85624418330*t);
      mars_x_2+=     0.00021826465 * cos( 3.36498183687 +     6681.46867088311*t);
      mars_x_2=mars_x_2 * t * t;

      return mars_x_2;
   }

   static double mars_x(double t){
      return mars_x_0_(t)+mars_x_1_(t)+mars_x_2_(t);
   }

   static double mars_y_0_(double t){
      double mars_y_0=0.0;
      mars_y_0+=     1.51664432758 * cos( 4.63267999004 +     3340.85624418330*t);
      mars_y_0+=     0.21337343470 * cos( 1.15310710021 +        0.24381748350*t);
      mars_y_0+=     0.07067734657 * cos( 4.97080577669 +     6681.46867088311*t);
      mars_y_0+=     0.00494034875 * cos( 5.30892921206 +    10022.08109758290*t);
      mars_y_0+=     0.00135189385 * cos( 2.16683537182 +     3340.36860921629*t);
      mars_y_0+=     0.00040927830 * cos( 5.64705236353 +    13362.69352428270*t);
      mars_y_0+=     0.00021051988 * cos( 0.23298189024 +     3337.33312583431*t);
      mars_y_0+=     0.00021027270 * cos( 5.89078683719 +     3344.37936253230*t);
      mars_y_0+=     0.00011370204 * cos( 3.26158494021 +     1059.62574767270*t);
      mars_y_0+=     0.00013426076 * cos( 5.34254489555 +      529.93478257810*t);

      return mars_y_0;
   }

   static double mars_y_1_(double t){
      double mars_y_1=0.0;
      mars_y_1+=     0.01668487239 * cos( 2.59897259786 +        0.24381748350*t);
      mars_y_1+=     0.00551520815 * cos( 3.52285185770 +     6681.46867088311*t);
      mars_y_1+=     0.00077122404 * cos( 3.86148242536 +    10022.08109758290*t);
      mars_y_1+=     0.00033905789 * cos( 0.99877346654 +     3340.36860921629*t);
      mars_y_1+=     0.00013417687 * cos( 1.14386060325 +     3340.85624418330*t);
      mars_y_1=mars_y_1 * t;

      return mars_y_1;
   }

   static double mars_y_2_(double t){
      double mars_y_2=0.0;
      mars_y_2+=     0.00068999338 * cos( 3.98646823714 +        0.24381748350*t);
      mars_y_2+=     0.00082190105 * cos( 6.20347735626 +     3340.85624418330*t);
      mars_y_2+=     0.00021826465 * cos( 1.79418551007 +     6681.46867088311*t);
      mars_y_2=mars_y_2 * t * t;

      return mars_y_2;
   }

   static double mars_y(double t){
      return mars_y_0_(t)+mars_y_1_(t)+mars_y_2_(t);
   }

   static double mars_z_0_(double t){
      double mars_z_0=0.0;
      mars_z_0+=     0.04901207220 * cos( 3.76712324286 +     3340.61242669980*t);
      mars_z_0+=     0.00660669541 * cos( 0.00000000000 +        0.00000000000*t);
      mars_z_0+=     0.00228333904 * cos( 4.10544022266 +     6681.22485339960*t);
      mars_z_0+=     0.00015958402 * cos( 4.44367058261 +    10021.83728009940*t);

      return mars_z_0;
   }

   static double mars_z_1_(double t){
      double mars_z_1=0.0;
      mars_z_1+=     0.00533220761 * cos( 5.37045188878 +     3340.61242669980*t);
      mars_z_1+=     0.00032258788 * cos( 3.14159265359 +        0.00000000000*t);
      mars_z_1=mars_z_1 * t;

      return mars_z_1;
   }

   static double mars_z_2_(double t){
      double mars_z_2=0.0;
      mars_z_2+=     0.00025937973 * cos( 0.59444055009 +     3340.61242669980*t);
      mars_z_2+=     0.00011396105 * cos( 3.14159265359 +        0.00000000000*t);
      mars_z_2=mars_z_2 * t * t;

      return mars_z_2;
   }

   static double mars_z(double t){
      return mars_z_0_(t)+mars_z_1_(t)+mars_z_2_(t);
   }

}
