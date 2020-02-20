//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87e_nano_velocities_earth{
   static double earth_x_0_(double t){
      double earth_x_0=0.0;
      double exp=0;
      earth_x_0+=-pow(t,exp)*     0.99982624851*    6283.07584999140*sin( 1.75348568475 +     6283.07584999140*t);
      earth_x_0+=-pow(t,exp)*     0.00835254761*   12566.15169998280*sin( 1.71034539458 +    12566.15169998280*t);
      earth_x_0+=-pow(t,exp)*     0.00590518455*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      earth_x_0+=-pow(t,exp)*     0.00493120585*     529.69096509460*sin( 3.74115834452 +      529.69096509460*t);
      earth_x_0+=-pow(t,exp)*     0.00271650686*     213.29909543800*sin( 4.01601440281 +      213.29909543800*t);
      earth_x_0+=-pow(t,exp)*     0.00155434220*      38.13303563780*sin( 2.17052065758 +       38.13303563780*t);

      return earth_x_0;
   }

   static double earth_x_1_(double t){
      double earth_x_1=0.0;
      double exp=1;
      earth_x_1+=pow(t,exp-1)*exp*     0.00122106982*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00122106982*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return earth_x_1;
   }

   static double earth_x(double t){
      return earth_x_0_(t)+earth_x_1_(t);
   }

   static double earth_y_0_(double t){
      double earth_y_0=0.0;
      double exp=0;
      earth_y_0+=-pow(t,exp)*     0.99988907017*    6283.07584999140*sin( 0.18265890456 +     6283.07584999140*t);
      earth_y_0+=-pow(t,exp)*     0.02408829501*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      earth_y_0+=-pow(t,exp)*     0.00835289774*   12566.15169998280*sin( 0.13952879005 +    12566.15169998280*t);
      earth_y_0+=-pow(t,exp)*     0.00492966037*     529.69096509460*sin( 2.17052458400 +      529.69096509460*t);
      earth_y_0+=-pow(t,exp)*     0.00272033033*     213.29909543800*sin( 2.44443635549 +      213.29909543800*t);
      earth_y_0+=-pow(t,exp)*     0.00155442849*      38.13303563780*sin( 0.59927021065 +       38.13303563780*t);

      return earth_y_0;
   }

   static double earth_y(double t){
      return earth_y_0_(t);
   }

   static double earth_z_1_(double t){
      double earth_z_1=0.0;
      double exp=1;
      earth_z_1+=pow(t,exp-1)*exp*     0.00227821750*cos( 3.41372504278 +     6283.07584999140*t)-pow(t,exp)*     0.00227821750*    6283.07584999140*sin( 3.41372504278 +     6283.07584999140*t);

      return earth_z_1;
   }

   static double earth_z(double t){
      return earth_z_1_(t);
   }

}
