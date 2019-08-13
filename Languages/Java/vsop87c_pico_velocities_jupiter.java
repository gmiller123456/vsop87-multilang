import static java.lang.Math.*;

public class vsop87c_pico_velocities_jupiter{
   static double jupiter_x_0_(double t){
      double jupiter_x_0=0.0;
      double exp=0;
      jupiter_x_0+=-pow(t,exp)*     5.19591755961*     529.93478257810*sin( 0.59954672200 +      529.93478257810*t);
      jupiter_x_0+=-pow(t,exp)*     0.37839498798*       0.24381748350*sin( 3.39164799011 +        0.24381748350*t);
      jupiter_x_0+=-pow(t,exp)*     0.12593400247*    1059.62574767270*sin( 0.94916456487 +     1059.62574767270*t);
      jupiter_x_0+=-pow(t,exp)*     0.01504469362*     522.82123557730*sin( 0.72934997067 +      522.82123557730*t);
      jupiter_x_0+=-pow(t,exp)*     0.01476016965*     537.04832957890*sin( 3.61748058581 +      537.04832957890*t);

      return jupiter_x_0;
   }

   static double jupiter_x_1_(double t){
      double jupiter_x_1=0.0;
      double exp=1;
      jupiter_x_1+=pow(t,exp-1)*exp*     0.01912556490*cos( 4.23275123829 +        0.24381748350*t)-pow(t,exp)*     0.01912556490*       0.24381748350*sin( 4.23275123829 +        0.24381748350*t);

      return jupiter_x_1;
   }

   static double jupiter_x(double t){
      return jupiter_x_0_(t)+jupiter_x_1_(t);
   }

   static double jupiter_y_0_(double t){
      double jupiter_y_0=0.0;
      double exp=0;
      jupiter_y_0+=-pow(t,exp)*     5.19591755961*     529.93478257810*sin( 5.31193570238 +      529.93478257810*t);
      jupiter_y_0+=-pow(t,exp)*     0.37839498798*       0.24381748350*sin( 1.82085166331 +        0.24381748350*t);
      jupiter_y_0+=-pow(t,exp)*     0.12593400247*    1059.62574767270*sin( 5.66155354525 +     1059.62574767270*t);
      jupiter_y_0+=-pow(t,exp)*     0.01504469362*     522.82123557730*sin( 5.44173895105 +      522.82123557730*t);
      jupiter_y_0+=-pow(t,exp)*     0.01476016965*     537.04832957890*sin( 2.04668425902 +      537.04832957890*t);

      return jupiter_y_0;
   }

   static double jupiter_y_1_(double t){
      double jupiter_y_1=0.0;
      double exp=1;
      jupiter_y_1+=pow(t,exp-1)*exp*     0.01912556490*cos( 2.66195491149 +        0.24381748350*t)-pow(t,exp)*     0.01912556490*       0.24381748350*sin( 2.66195491149 +        0.24381748350*t);

      return jupiter_y_1;
   }

   static double jupiter_y(double t){
      return jupiter_y_0_(t)+jupiter_y_1_(t);
   }

   static double jupiter_z_0_(double t){
      double jupiter_z_0=0.0;
      double exp=0;
      jupiter_z_0+=-pow(t,exp)*     0.11823100489*     529.69096509460*sin( 3.55844646343 +      529.69096509460*t);

      return jupiter_z_0;
   }

   static double jupiter_z(double t){
      return jupiter_z_0_(t);
   }

}
