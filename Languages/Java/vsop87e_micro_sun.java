//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87e_micro_sun{
   static double sun_x_0_(double t){
      double sun_x_0=0.0;
      sun_x_0+=     0.00495672739 * cos( 3.74107356792 +      529.69096509460*t);
      sun_x_0+=     0.00271802376 * cos( 4.01601149775 +      213.29909543800*t);
      sun_x_0+=     0.00155435675 * cos( 2.17052050061 +       38.13303563780*t);
      sun_x_0+=     0.00083792997 * cos( 2.33967985523 +       74.78159856730*t);
      sun_x_0+=     0.00029374249 * cos( 0.00000000000 +        0.00000000000*t);
      sun_x_0+=     0.00012013079 * cos( 4.09073224903 +     1059.38193018920*t);

      return sun_x_0;
   }

   static double sun_x(double t){
      return sun_x_0_(t);
   }

   static double sun_y_0_(double t){
      double sun_y_0=0.0;
      sun_y_0+=     0.00495536218 * cos( 2.17046712634 +      529.69096509460*t);
      sun_y_0+=     0.00272185821 * cos( 2.44443364925 +      213.29909543800*t);
      sun_y_0+=     0.00155444313 * cos( 0.59927010840 +       38.13303563780*t);
      sun_y_0+=     0.00083755792 * cos( 0.76880164710 +       74.78159856730*t);
      sun_y_0+=     0.00033869535 * cos( 0.00000000000 +        0.00000000000*t);
      sun_y_0+=     0.00012011827 * cos( 2.52003147880 +     1059.38193018920*t);

      return sun_y_0;
   }

   static double sun_y(double t){
      return sun_y_0_(t);
   }

   static double sun_z_0_(double t){
      double sun_z_0=0.0;
      sun_z_0+=     0.00011810648 * cos( 0.46078690233 +      213.29909543800*t);
      sun_z_0+=     0.00011277700 * cos( 0.41689943638 +      529.69096509460*t);

      return sun_z_0;
   }

   static double sun_z(double t){
      return sun_z_0_(t);
   }

}
