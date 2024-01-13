//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87c_pico_saturn{
   static double saturn_x_0_(double t){
      double saturn_x_0=0.0;
      saturn_x_0+=     9.52312533591 * cos( 0.87401491487 +      213.54291292150*t);
      saturn_x_0+=     0.79501390398 * cos( 4.76580713096 +        0.24381748350*t);
      saturn_x_0+=     0.26427074351 * cos( 0.12339999915 +      426.84200835950*t);
      saturn_x_0+=     0.06836881382 * cos( 4.14537914189 +      206.42936592071*t);
      saturn_x_0+=     0.06628914946 * cos( 0.75057317755 +      220.65645992230*t);
      saturn_x_0+=     0.02340967916 * cos( 2.01979283929 +        7.35736448430*t);
      saturn_x_0+=     0.01250581159 * cos( 2.17392657526 +      110.45013870291*t);
      saturn_x_0+=     0.01141539711 * cos( 3.03345312296 +      419.72846135871*t);
      saturn_x_0+=     0.01098217124 * cos( 5.65720860592 +      640.14110379750*t);

      return saturn_x_0;
   }

   static double saturn_x_1_(double t){
      double saturn_x_1=0.0;
      saturn_x_1+=     0.09285877988 * cos( 0.61678993503 +        0.24381748350*t);
      saturn_x_1+=     0.03086501680 * cos( 4.27493632359 +      426.84200835950*t);
      saturn_x_1+=     0.02728479923 * cos( 5.84476389020 +      206.42936592071*t);
      saturn_x_1+=     0.02644990371 * cos( 5.33256382404 +      220.65645992230*t);
      saturn_x_1=saturn_x_1 * t;

      return saturn_x_1;
   }

   static double saturn_x(double t){
      return saturn_x_0_(t)+saturn_x_1_(t);
   }

   static double saturn_y_0_(double t){
      double saturn_y_0=0.0;
      saturn_y_0+=     9.52312533591 * cos( 5.58640389526 +      213.54291292150*t);
      saturn_y_0+=     0.79501390398 * cos( 3.19501080417 +        0.24381748350*t);
      saturn_y_0+=     0.26427074351 * cos( 4.83578897954 +      426.84200835950*t);
      saturn_y_0+=     0.06836881382 * cos( 2.57458281509 +      206.42936592071*t);
      saturn_y_0+=     0.06628914946 * cos( 5.46296215793 +      220.65645992230*t);
      saturn_y_0+=     0.02340967916 * cos( 0.44899651249 +        7.35736448430*t);
      saturn_y_0+=     0.01250581159 * cos( 0.60313024847 +      110.45013870291*t);
      saturn_y_0+=     0.01141539711 * cos( 1.46265679616 +      419.72846135871*t);
      saturn_y_0+=     0.01098217124 * cos( 4.08641227912 +      640.14110379750*t);

      return saturn_y_0;
   }

   static double saturn_y_1_(double t){
      double saturn_y_1=0.0;
      saturn_y_1+=     0.09285877988 * cos( 5.32917891541 +        0.24381748350*t);
      saturn_y_1+=     0.03086501680 * cos( 2.70413999679 +      426.84200835950*t);
      saturn_y_1+=     0.02728479923 * cos( 4.27396756341 +      206.42936592071*t);
      saturn_y_1+=     0.02644990371 * cos( 3.76176749725 +      220.65645992230*t);
      saturn_y_1=saturn_y_1 * t;

      return saturn_y_1;
   }

   static double saturn_y(double t){
      return saturn_y_0_(t)+saturn_y_1_(t);
   }

   static double saturn_z_0_(double t){
      double saturn_z_0=0.0;
      saturn_z_0+=     0.41356950940 * cos( 3.60234142982 +      213.29909543800*t);
      saturn_z_0+=     0.01148283576 * cos( 2.85128367469 +      426.59819087600*t);
      saturn_z_0+=     0.01214249867 * cos( 0.00000000000 +        0.00000000000*t);

      return saturn_z_0;
   }

   static double saturn_z_1_(double t){
      double saturn_z_1=0.0;
      saturn_z_1+=     0.03810308320 * cos( 5.33520316778 +      213.29909543800*t);
      saturn_z_1=saturn_z_1 * t;

      return saturn_z_1;
   }

   static double saturn_z(double t){
      return saturn_z_0_(t)+saturn_z_1_(t);
   }

}
