//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87e_nano_earth{
   static double earth_x_0_(double t){
      double earth_x_0=0.0;
      earth_x_0+=     0.99982624851 * cos( 1.75348568475 +     6283.07584999140*t);
      earth_x_0+=     0.00835254761 * cos( 1.71034539458 +    12566.15169998280*t);
      earth_x_0+=     0.00590518455 * cos( 0.00000000000 +        0.00000000000*t);
      earth_x_0+=     0.00493120585 * cos( 3.74115834452 +      529.69096509460*t);
      earth_x_0+=     0.00271650686 * cos( 4.01601440281 +      213.29909543800*t);
      earth_x_0+=     0.00155434220 * cos( 2.17052065758 +       38.13303563780*t);

      return earth_x_0;
   }

   static double earth_x_1_(double t){
      double earth_x_1=0.0;
      earth_x_1+=     0.00122106982 * cos( 0.00000000000 +        0.00000000000*t);
      earth_x_1=earth_x_1 * t;

      return earth_x_1;
   }

   static double earth_x(double t){
      return earth_x_0_(t)+earth_x_1_(t);
   }

   static double earth_y_0_(double t){
      double earth_y_0=0.0;
      earth_y_0+=     0.99988907017 * cos( 0.18265890456 +     6283.07584999140*t);
      earth_y_0+=     0.02408829501 * cos( 3.14159265359 +        0.00000000000*t);
      earth_y_0+=     0.00835289774 * cos( 0.13952879005 +    12566.15169998280*t);
      earth_y_0+=     0.00492966037 * cos( 2.17052458400 +      529.69096509460*t);
      earth_y_0+=     0.00272033033 * cos( 2.44443635549 +      213.29909543800*t);
      earth_y_0+=     0.00155442849 * cos( 0.59927021065 +       38.13303563780*t);

      return earth_y_0;
   }

   static double earth_y(double t){
      return earth_y_0_(t);
   }

   static double earth_z_1_(double t){
      double earth_z_1=0.0;
      earth_z_1+=     0.00227821750 * cos( 3.41372504278 +     6283.07584999140*t);
      earth_z_1=earth_z_1 * t;

      return earth_z_1;
   }

   static double earth_z(double t){
      return earth_z_1_(t);
   }

}
