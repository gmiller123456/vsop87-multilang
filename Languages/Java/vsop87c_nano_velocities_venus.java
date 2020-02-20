//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87c_nano_velocities_venus{
   static double venus_x_0_(double t){
      double venus_x_0=0.0;
      double exp=0;
      venus_x_0+=-pow(t,exp)*     0.72268045621*   10213.52936369450*sin( 3.17614669179 +    10213.52936369450*t);
      venus_x_0+=-pow(t,exp)*     0.00733886107*       0.24381748350*sin( 5.43699242686 +        0.24381748350*t);
      venus_x_0+=-pow(t,exp)*     0.00244692613*   20426.81490990550*sin( 4.05605630888 +    20426.81490990550*t);

      return venus_x_0;
   }

   static double venus_x(double t){
      return venus_x_0_(t);
   }

   static double venus_y_0_(double t){
      double venus_y_0=0.0;
      double exp=0;
      venus_y_0+=-pow(t,exp)*     0.72268045621*   10213.52936369450*sin( 1.60535036499 +    10213.52936369450*t);
      venus_y_0+=-pow(t,exp)*     0.00733886107*       0.24381748350*sin( 3.86619610007 +        0.24381748350*t);
      venus_y_0+=-pow(t,exp)*     0.00244692613*   20426.81490990550*sin( 2.48525998209 +    20426.81490990550*t);

      return venus_y_0;
   }

   static double venus_y(double t){
      return venus_y_0_(t);
   }

   static double venus_z_0_(double t){
      double venus_z_0=0.0;
      double exp=0;
      venus_z_0+=-pow(t,exp)*     0.04282990302*   10213.28554621100*sin( 0.26703856476 +    10213.28554621100*t);

      return venus_z_0;
   }

   static double venus_z_1_(double t){
      double venus_z_1=0.0;
      double exp=1;
      venus_z_1+=pow(t,exp-1)*exp*     0.00371157532*cos( 1.80370484107 +    10213.28554621100*t)-pow(t,exp)*     0.00371157532*   10213.28554621100*sin( 1.80370484107 +    10213.28554621100*t);

      return venus_z_1;
   }

   static double venus_z(double t){
      return venus_z_0_(t)+venus_z_1_(t);
   }

}
