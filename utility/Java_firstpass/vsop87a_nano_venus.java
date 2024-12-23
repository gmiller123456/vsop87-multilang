import static java.lang.Math.*;

public class vsop87a_nano_venus{
   static double venus_x(double t){
      double venus_x_0=0.0;
      venus_x_0+=     0.72211281391 * cos( 3.17575836361 +    10213.28554621100*t);
      venus_x_0+=     0.00486448018 * cos( 0.00000000000 +        0.00000000000*t);
      venus_x_0+=     0.00244500474 * cos( 4.05566613861 +    20426.57109242200*t);

      return venus_x_0;
   }

   static double venus_y(double t){
      double venus_y_0=0.0;
      venus_y_0+=     0.72324820731 * cos( 1.60573808356 +    10213.28554621100*t);
      venus_y_0+=     0.00549506273 * cos( 3.14159265359 +        0.00000000000*t);
      venus_y_0+=     0.00244884790 * cos( 2.48564954004 +    20426.57109242200*t);

      return venus_y_0;
   }

   static double venus_z(double t){
      double venus_z_0=0.0;
      venus_z_0+=     0.04282990302 * cos( 0.26703856476 +    10213.28554621100*t);

      double venus_z_1=0.0;
      venus_z_1+=     0.00208096402 * cos( 1.88967278742 +    10213.28554621100*t);
      venus_z_1=venus_z_1 * t;

      return venus_z_0+venus_z_1;
   }

}
