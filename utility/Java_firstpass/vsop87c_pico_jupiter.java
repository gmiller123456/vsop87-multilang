import static java.lang.Math.*;

public class vsop87c_pico_jupiter{
   static double jupiter_x(double t){
      double jupiter_x_0=0.0;
      jupiter_x_0+=     5.19591755961 * cos( 0.59954672200 +      529.93478257810*t);
      jupiter_x_0+=     0.37839498798 * cos( 3.39164799011 +        0.24381748350*t);
      jupiter_x_0+=     0.12593400247 * cos( 0.94916456487 +     1059.62574767270*t);
      jupiter_x_0+=     0.01504469362 * cos( 0.72934997067 +      522.82123557730*t);
      jupiter_x_0+=     0.01476016965 * cos( 3.61748058581 +      537.04832957890*t);

      double jupiter_x_1=0.0;
      jupiter_x_1+=     0.01912556490 * cos( 4.23275123829 +        0.24381748350*t);
      jupiter_x_1=jupiter_x_1 * t;

      return jupiter_x_0+jupiter_x_1;
   }

   static double jupiter_y(double t){
      double jupiter_y_0=0.0;
      jupiter_y_0+=     5.19591755961 * cos( 5.31193570238 +      529.93478257810*t);
      jupiter_y_0+=     0.37839498798 * cos( 1.82085166331 +        0.24381748350*t);
      jupiter_y_0+=     0.12593400247 * cos( 5.66155354525 +     1059.62574767270*t);
      jupiter_y_0+=     0.01504469362 * cos( 5.44173895105 +      522.82123557730*t);
      jupiter_y_0+=     0.01476016965 * cos( 2.04668425902 +      537.04832957890*t);

      double jupiter_y_1=0.0;
      jupiter_y_1+=     0.01912556490 * cos( 2.66195491149 +        0.24381748350*t);
      jupiter_y_1=jupiter_y_1 * t;

      return jupiter_y_0+jupiter_y_1;
   }

   static double jupiter_z(double t){
      double jupiter_z_0=0.0;
      jupiter_z_0+=     0.11823100489 * cos( 3.55844646343 +      529.69096509460*t);

      return jupiter_z_0;
   }

}
