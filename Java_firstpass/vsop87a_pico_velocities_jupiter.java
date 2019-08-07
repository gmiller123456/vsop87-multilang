import static java.lang.Math.*;

public class vsop87a_pico_velocities_jupiter{
   static double jupiter_x(double t){
      double exp=0.0;
      double jupiter_x_0=0.0;
      exp=0;
      jupiter_x_0+=-pow(t,exp)*     5.19663470114*     529.69096509460*sin( 0.59945082355 +      529.69096509460*t);
      jupiter_x_0+=-pow(t,exp)*     0.36662642320*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      jupiter_x_0+=-pow(t,exp)*     0.12593937922*    1059.38193018920*sin( 0.94911583701 +     1059.38193018920*t);
      jupiter_x_0+=-pow(t,exp)*     0.01500672056*     522.57741809380*sin( 0.73175134610 +      522.57741809380*t);
      jupiter_x_0+=-pow(t,exp)*     0.01476224578*     536.80451209540*sin( 3.61736921122 +      536.80451209540*t);

      return jupiter_x_0;
   }

   static double jupiter_y(double t){
      double exp=0.0;
      double jupiter_y_0=0.0;
      exp=0;
      jupiter_y_0+=-pow(t,exp)*     5.19520046589*     529.69096509460*sin( 5.31203162731 +      529.69096509460*t);
      jupiter_y_0+=-pow(t,exp)*     0.12592862602*    1059.38193018920*sin( 5.66160227728 +     1059.38193018920*t);
      jupiter_y_0+=-pow(t,exp)*     0.09363670616*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      jupiter_y_0+=-pow(t,exp)*     0.01508275299*     522.57741809380*sin( 5.43934968102 +      522.57741809380*t);
      jupiter_y_0+=-pow(t,exp)*     0.01475809370*     536.80451209540*sin( 2.04679566495 +      536.80451209540*t);

      double jupiter_y_1=0.0;
      exp=1;
      jupiter_y_1+=pow(t,exp-1)*exp*     0.01694798253*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.01694798253*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);

      return jupiter_y_0+jupiter_y_1;
   }

   static double jupiter_z(double t){
      double exp=0.0;
      double jupiter_z_0=0.0;
      exp=0;
      jupiter_z_0+=-pow(t,exp)*     0.11823100489*     529.69096509460*sin( 3.55844646343 +      529.69096509460*t);

      return jupiter_z_0;
   }

}
