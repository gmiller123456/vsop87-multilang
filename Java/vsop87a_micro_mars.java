import static java.lang.Math.*;

public class vsop87a_micro_mars{
   static double mars_x_0_(double t){
      double mars_x_0=0.0;
      mars_x_0+=     1.51769936383 * cos( 6.20403346548 +     3340.61242669980*t);
      mars_x_0+=     0.19502945246 * cos( 3.14159265359 +        0.00000000000*t);
      mars_x_0+=     0.07070919655 * cos( 0.25870338558 +     6681.22485339960*t);
      mars_x_0+=     0.00494196914 * cos( 0.59669127768 +    10021.83728009940*t);
      mars_x_0+=     0.00040938237 * cos( 0.93473307419 +    13362.44970679920*t);
      mars_x_0+=     0.00021067199 * cos( 1.80435656154 +     3337.08930835080*t);
      mars_x_0+=     0.00021041626 * cos( 1.17895619474 +     3344.13554504880*t);
      mars_x_0+=     0.00011370375 * cos( 4.83265211109 +     1059.38193018920*t);
      mars_x_0+=     0.00013527976 * cos( 0.63010765169 +      529.69096509460*t);

      return mars_x_0;
   }

   static double mars_x_1_(double t){
      double mars_x_1=0.0;
      mars_x_1+=     0.00861441374 * cos( 3.14159265359 +        0.00000000000*t);
      mars_x_1+=     0.00552437949 * cos( 5.09565872891 +     6681.22485339960*t);
      mars_x_1+=     0.00077184977 * cos( 5.43315636209 +    10021.83728009940*t);
      mars_x_1+=     0.00020467294 * cos( 5.57051812369 +     3340.61242669980*t);
      mars_x_1=mars_x_1 * t;

      return mars_x_1;
   }

   static double mars_x_2_(double t){
      double mars_x_2=0.0;
      mars_x_2+=     0.00056323939 * cos( 0.00000000000 +        0.00000000000*t);
      mars_x_2+=     0.00022122528 * cos( 3.54372113272 +     6681.22485339960*t);
      mars_x_2=mars_x_2 * t * t;

      return mars_x_2;
   }

   static double mars_x(double t){
      return mars_x_0_(t)+mars_x_1_(t)+mars_x_2_(t);
   }

   static double mars_y_0_(double t){
      double mars_y_0=0.0;
      mars_y_0+=     1.51558976277 * cos( 4.63212206588 +     3340.61242669980*t);
      mars_y_0+=     0.07064550239 * cos( 4.97051892902 +     6681.22485339960*t);
      mars_y_0+=     0.08655481102 * cos( 0.00000000000 +        0.00000000000*t);
      mars_y_0+=     0.00493872848 * cos( 5.30877806694 +    10021.83728009940*t);
      mars_y_0+=     0.00040917422 * cos( 5.64698263703 +    13362.44970679920*t);
      mars_y_0+=     0.00021036784 * cos( 0.23240270955 +     3337.08930835080*t);
      mars_y_0+=     0.00021012921 * cos( 5.89022773653 +     3344.13554504880*t);
      mars_y_0+=     0.00011370034 * cos( 3.26131408801 +     1059.38193018920*t);
      mars_y_0+=     0.00013324177 * cos( 5.34259389724 +      529.69096509460*t);

      return mars_y_0;
   }

   static double mars_y_1_(double t){
      double mars_y_1=0.0;
      mars_y_1+=     0.01427324210 * cos( 3.14159265359 +        0.00000000000*t);
      mars_y_1+=     0.00551063753 * cos( 3.52128320402 +     6681.22485339960*t);
      mars_y_1+=     0.00077091913 * cos( 3.86082685753 +    10021.83728009940*t);
      mars_y_1+=     0.00037310491 * cos( 1.16016958445 +     3340.61242669980*t);
      mars_y_1=mars_y_1 * t;

      return mars_y_1;
   }

   static double mars_y_2_(double t){
      double mars_y_2=0.0;
      mars_y_2+=     0.00035396765 * cos( 3.14159265359 +        0.00000000000*t);
      mars_y_2+=     0.00021950759 * cos( 1.96291594946 +     6681.22485339960*t);
      mars_y_2=mars_y_2 * t * t;

      return mars_y_2;
   }

   static double mars_y(double t){
      return mars_y_0_(t)+mars_y_1_(t)+mars_y_2_(t);
   }

   static double mars_z_0_(double t){
      double mars_z_0=0.0;
      mars_z_0+=     0.04901207220 * cos( 3.76712324286 +     3340.61242669980*t);
      mars_z_0+=     0.00660669541 * cos( 0.00000000000 +        0.00000000000*t);
      mars_z_0+=     0.00228333904 * cos( 4.10544022266 +     6681.22485339960*t);
      mars_z_0+=     0.00015958402 * cos( 4.44367058261 +    10021.83728009940*t);

      return mars_z_0;
   }

   static double mars_z_1_(double t){
      double mars_z_1=0.0;
      mars_z_1+=     0.00331842958 * cos( 6.05027773492 +     3340.61242669980*t);
      mars_z_1+=     0.00047930411 * cos( 3.14159265359 +        0.00000000000*t);
      mars_z_1=mars_z_1 * t;

      return mars_z_1;
   }

   static double mars_z_2_(double t){
      double mars_z_2=0.0;
      mars_z_2+=     0.00013705360 * cos( 1.04212852598 +     3340.61242669980*t);
      mars_z_2=mars_z_2 * t * t;

      return mars_z_2;
   }

   static double mars_z(double t){
      return mars_z_0_(t)+mars_z_1_(t)+mars_z_2_(t);
   }

}
