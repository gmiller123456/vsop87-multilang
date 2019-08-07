import static java.lang.Math.*;

public class vsop87e_nano_velocities_sun{
   static double sun_x(double t){
      double exp=0.0;
      double sun_x_0=0.0;
      exp=0;
      sun_x_0+=-pow(t,exp)*     0.00495672739*     529.69096509460*sin( 3.74107356792 +      529.69096509460*t);
      sun_x_0+=-pow(t,exp)*     0.00271802376*     213.29909543800*sin( 4.01601149775 +      213.29909543800*t);
      sun_x_0+=-pow(t,exp)*     0.00155435675*      38.13303563780*sin( 2.17052050061 +       38.13303563780*t);

      return sun_x_0;
   }

   static double sun_y(double t){
      double exp=0.0;
      double sun_y_0=0.0;
      exp=0;
      sun_y_0+=-pow(t,exp)*     0.00495536218*     529.69096509460*sin( 2.17046712634 +      529.69096509460*t);
      sun_y_0+=-pow(t,exp)*     0.00272185821*     213.29909543800*sin( 2.44443364925 +      213.29909543800*t);
      sun_y_0+=-pow(t,exp)*     0.00155444313*      38.13303563780*sin( 0.59927010840 +       38.13303563780*t);

      return sun_y_0;
   }

   static double sun_z(double t){
      double exp=0.0;
      return 0;
   }

}
