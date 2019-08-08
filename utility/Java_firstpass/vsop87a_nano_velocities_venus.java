import static java.lang.Math.*;

public class vsop87a_nano_velocities_venus{
   static double venus_x(double t){
      double exp=0.0;
      double venus_x_0=0.0;
      exp=0;
      venus_x_0+=-pow(t,exp)*     0.72211281391*   10213.28554621100*sin( 3.17575836361 +    10213.28554621100*t);
      venus_x_0+=-pow(t,exp)*     0.00486448018*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      venus_x_0+=-pow(t,exp)*     0.00244500474*   20426.57109242200*sin( 4.05566613861 +    20426.57109242200*t);

      return venus_x_0;
   }

   static double venus_y(double t){
      double exp=0.0;
      double venus_y_0=0.0;
      exp=0;
      venus_y_0+=-pow(t,exp)*     0.72324820731*   10213.28554621100*sin( 1.60573808356 +    10213.28554621100*t);
      venus_y_0+=-pow(t,exp)*     0.00549506273*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      venus_y_0+=-pow(t,exp)*     0.00244884790*   20426.57109242200*sin( 2.48564954004 +    20426.57109242200*t);

      return venus_y_0;
   }

   static double venus_z(double t){
      double exp=0.0;
      double venus_z_0=0.0;
      exp=0;
      venus_z_0+=-pow(t,exp)*     0.04282990302*   10213.28554621100*sin( 0.26703856476 +    10213.28554621100*t);

      double venus_z_1=0.0;
      exp=1;
      venus_z_1+=pow(t,exp-1)*exp*     0.00208096402*cos( 1.88967278742 +    10213.28554621100*t)-pow(t,exp)*     0.00208096402*   10213.28554621100*sin( 1.88967278742 +    10213.28554621100*t);

      return venus_z_0+venus_z_1;
   }

}
