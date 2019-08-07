import static java.lang.Math.*;

public class vsop87e_pico_uranus{
   static double uranus_x_0_(double t){
      double uranus_x_0=0.0;
      uranus_x_0+=    19.17286937362 * cos( 5.48133416758 +       74.78159856730*t);
      uranus_x_0+=     1.32301898121 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_x_0+=     0.44400556159 * cos( 1.65967535182 +      149.56319713460*t);
      uranus_x_0+=     0.14667584671 * cos( 3.42395875589 +       73.29712585900*t);
      uranus_x_0+=     0.14129215712 * cos( 4.39576776954 +       76.26607127560*t);
      uranus_x_0+=     0.06200970387 * cos( 5.14043568284 +        1.48447270830*t);
      uranus_x_0+=     0.01542890129 * cos( 4.12122840701 +      224.34479570190*t);
      uranus_x_0+=     0.01444153470 * cos( 2.65117108186 +      148.07872442630*t);

      return uranus_x_0;
   }

   static double uranus_x(double t){
      return uranus_x_0_(t);
   }

   static double uranus_y_0_(double t){
      double uranus_y_0=0.0;
      uranus_y_0+=    19.16434475791 * cos( 3.91045677275 +       74.78159856730*t);
      uranus_y_0+=     0.44388525091 * cos( 0.08884126943 +      149.56319713460*t);
      uranus_y_0+=     0.16222255941 * cos( 3.14159265359 +        0.00000000000*t);
      uranus_y_0+=     0.14755311401 * cos( 1.85423292905 +       73.29712585900*t);
      uranus_y_0+=     0.14122904825 * cos( 2.82489928705 +       76.26607127560*t);
      uranus_y_0+=     0.06249939655 * cos( 3.56960238469 +        1.48447270830*t);
      uranus_y_0+=     0.01542607086 * cos( 2.55041543170 +      224.34479570190*t);
      uranus_y_0+=     0.01442293466 * cos( 1.08004535633 +      148.07872442630*t);

      return uranus_y_0;
   }

   static double uranus_y_1_(double t){
      double uranus_y_1=0.0;
      uranus_y_1+=     0.02157902502 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_y_1=uranus_y_1 * t;

      return uranus_y_1;
   }

   static double uranus_y(double t){
      return uranus_y_0_(t)+uranus_y_1_(t);
   }

   static double uranus_z_0_(double t){
      double uranus_z_0=0.0;
      uranus_z_0+=     0.25876996652 * cos( 2.61861278845 +       74.78159856730*t);
      uranus_z_0+=     0.01775471434 * cos( 3.14159265359 +        0.00000000000*t);

      return uranus_z_0;
   }

   static double uranus_z(double t){
      return uranus_z_0_(t);
   }

}
