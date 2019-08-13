import static java.lang.Math.*;

public class vsop87e_nano_sun{
   static double sun_x_0_(double t){
      double sun_x_0=0.0;
      sun_x_0+=     0.00495672739 * cos( 3.74107356792 +      529.69096509460*t);
      sun_x_0+=     0.00271802376 * cos( 4.01601149775 +      213.29909543800*t);
      sun_x_0+=     0.00155435675 * cos( 2.17052050061 +       38.13303563780*t);

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

      return sun_y_0;
   }

   static double sun_y(double t){
      return sun_y_0_(t);
   }

   static double sun_z(double t){
      return 0;
   }

}
