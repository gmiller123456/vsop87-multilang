import static java.lang.Math.*;

public class vsop87c_nano_mars{
   static double mars_x_0_(double t){
      double mars_x_0=0.0;
      mars_x_0+=     1.51664432758 * cos( 6.20347631684 +     3340.85624418330*t);
      mars_x_0+=     0.21337343470 * cos( 2.72390342700 +        0.24381748350*t);
      mars_x_0+=     0.07067734657 * cos( 0.25841679630 +     6681.46867088311*t);
      mars_x_0+=     0.00494034875 * cos( 0.59654023167 +    10022.08109758290*t);
      mars_x_0+=     0.00135189385 * cos( 0.59603904502 +     3340.36860921629*t);

      return mars_x_0;
   }

   static double mars_x_1_(double t){
      double mars_x_1=0.0;
      mars_x_1+=     0.01668487239 * cos( 4.16976892466 +        0.24381748350*t);
      mars_x_1+=     0.00551520815 * cos( 5.09364818449 +     6681.46867088311*t);
      mars_x_1=mars_x_1 * t;

      return mars_x_1;
   }

   static double mars_x(double t){
      return mars_x_0_(t)+mars_x_1_(t);
   }

   static double mars_y_0_(double t){
      double mars_y_0=0.0;
      mars_y_0+=     1.51664432758 * cos( 4.63267999004 +     3340.85624418330*t);
      mars_y_0+=     0.21337343470 * cos( 1.15310710021 +        0.24381748350*t);
      mars_y_0+=     0.07067734657 * cos( 4.97080577669 +     6681.46867088311*t);
      mars_y_0+=     0.00494034875 * cos( 5.30892921206 +    10022.08109758290*t);
      mars_y_0+=     0.00135189385 * cos( 2.16683537182 +     3340.36860921629*t);

      return mars_y_0;
   }

   static double mars_y_1_(double t){
      double mars_y_1=0.0;
      mars_y_1+=     0.01668487239 * cos( 2.59897259786 +        0.24381748350*t);
      mars_y_1+=     0.00551520815 * cos( 3.52285185770 +     6681.46867088311*t);
      mars_y_1=mars_y_1 * t;

      return mars_y_1;
   }

   static double mars_y(double t){
      return mars_y_0_(t)+mars_y_1_(t);
   }

   static double mars_z_0_(double t){
      double mars_z_0=0.0;
      mars_z_0+=     0.04901207220 * cos( 3.76712324286 +     3340.61242669980*t);
      mars_z_0+=     0.00660669541 * cos( 0.00000000000 +        0.00000000000*t);
      mars_z_0+=     0.00228333904 * cos( 4.10544022266 +     6681.22485339960*t);

      return mars_z_0;
   }

   static double mars_z_1_(double t){
      double mars_z_1=0.0;
      mars_z_1+=     0.00533220761 * cos( 5.37045188878 +     3340.61242669980*t);
      mars_z_1=mars_z_1 * t;

      return mars_z_1;
   }

   static double mars_z(double t){
      return mars_z_0_(t)+mars_z_1_(t);
   }

}
