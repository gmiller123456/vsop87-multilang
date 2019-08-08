import static java.lang.Math.*;

public class vsop87a_pico_jupiter{
   static double jupiter_x(double t){
      double jupiter_x_0=0.0;
      jupiter_x_0+=     5.19663470114 * cos( 0.59945082355 +      529.69096509460*t);
      jupiter_x_0+=     0.36662642320 * cos( 3.14159265359 +        0.00000000000*t);
      jupiter_x_0+=     0.12593937922 * cos( 0.94911583701 +     1059.38193018920*t);
      jupiter_x_0+=     0.01500672056 * cos( 0.73175134610 +      522.57741809380*t);
      jupiter_x_0+=     0.01476224578 * cos( 3.61736921122 +      536.80451209540*t);

      return jupiter_x_0;
   }

   static double jupiter_y(double t){
      double jupiter_y_0=0.0;
      jupiter_y_0+=     5.19520046589 * cos( 5.31203162731 +      529.69096509460*t);
      jupiter_y_0+=     0.12592862602 * cos( 5.66160227728 +     1059.38193018920*t);
      jupiter_y_0+=     0.09363670616 * cos( 3.14159265359 +        0.00000000000*t);
      jupiter_y_0+=     0.01508275299 * cos( 5.43934968102 +      522.57741809380*t);
      jupiter_y_0+=     0.01475809370 * cos( 2.04679566495 +      536.80451209540*t);

      double jupiter_y_1=0.0;
      jupiter_y_1+=     0.01694798253 * cos( 3.14159265359 +        0.00000000000*t);
      jupiter_y_1=jupiter_y_1 * t;

      return jupiter_y_0+jupiter_y_1;
   }

   static double jupiter_z(double t){
      double jupiter_z_0=0.0;
      jupiter_z_0+=     0.11823100489 * cos( 3.55844646343 +      529.69096509460*t);

      return jupiter_z_0;
   }

}
