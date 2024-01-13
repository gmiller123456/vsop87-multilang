//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87e_micro_mercury{
   static double mercury_x_0_(double t){
      double mercury_x_0=0.0;
      mercury_x_0+=     0.37546285495 * cos( 4.39651506942 +    26087.90314157420*t);
      mercury_x_0+=     0.03825746037 * cos( 1.16485604343 +    52175.80628314840*t);
      mercury_x_0+=     0.02596241714 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_x_0+=     0.00584261236 * cos( 4.21599394757 +    78263.70942472259*t);
      mercury_x_0+=     0.00495586029 * cos( 3.74115422358 +      529.69096509460*t);
      mercury_x_0+=     0.00271797490 * cos( 4.01600769847 +      213.29909543800*t);
      mercury_x_0+=     0.00155435621 * cos( 2.17052060921 +       38.13303563780*t);
      mercury_x_0+=     0.00105716677 * cos( 0.98379033182 +   104351.61256629678*t);
      mercury_x_0+=     0.00083792888 * cos( 2.33967639910 +       74.78159856730*t);
      mercury_x_0+=     0.00021011726 * cos( 4.03469353923 +   130439.51570787099*t);
      mercury_x_0+=     0.00012216168 * cos( 4.05786119279 +     1059.38193018920*t);

      return mercury_x_0;
   }

   static double mercury_x_1_(double t){
      double mercury_x_1=0.0;
      mercury_x_1+=     0.00317551960 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_x_1+=     0.00105289001 * cos( 5.91600475006 +    52175.80628314840*t);
      mercury_x_1+=     0.00032315996 * cos( 2.68247273347 +    78263.70942472259*t);
      mercury_x_1+=     0.00011992887 * cos( 5.81575112963 +    26087.90314157420*t);
      mercury_x_1=mercury_x_1 * t;

      return mercury_x_1;
   }

   static double mercury_x(double t){
      return mercury_x_0_(t)+mercury_x_1_(t);
   }

   static double mercury_y_0_(double t){
      double mercury_y_0=0.0;
      mercury_y_0+=     0.37953636588 * cos( 2.83780617821 +    26087.90314157420*t);
      mercury_y_0+=     0.11592262295 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_y_0+=     0.03854667576 * cos( 5.88780608961 +    52175.80628314840*t);
      mercury_y_0+=     0.00587711171 * cos( 2.65498896201 +    78263.70942472259*t);
      mercury_y_0+=     0.00495452148 * cos( 2.17050902176 +      529.69096509460*t);
      mercury_y_0+=     0.00272177927 * cos( 2.44442843667 +      213.29909543800*t);
      mercury_y_0+=     0.00155444251 * cos( 0.59927014783 +       38.13303563780*t);
      mercury_y_0+=     0.00106235475 * cos( 5.70550616735 +   104351.61256629678*t);
      mercury_y_0+=     0.00083755636 * cos( 0.76879995697 +       74.78159856730*t);
      mercury_y_0+=     0.00021100825 * cos( 2.47291315849 +   130439.51570787099*t);
      mercury_y_0+=     0.00012216279 * cos( 2.48707059837 +     1059.38193018920*t);

      return mercury_y_0;
   }

   static double mercury_y_1_(double t){
      double mercury_y_1=0.0;
      mercury_y_1+=     0.00107803834 * cos( 4.34964793883 +    52175.80628314840*t);
      mercury_y_1+=     0.00080645427 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_y_1+=     0.00032715349 * cos( 1.11763734425 +    78263.70942472259*t);
      mercury_y_1+=     0.00011914707 * cos( 1.22139986340 +    26087.90314157420*t);
      mercury_y_1=mercury_y_1 * t;

      return mercury_y_1;
   }

   static double mercury_y(double t){
      return mercury_y_0_(t)+mercury_y_1_(t);
   }

   static double mercury_z_0_(double t){
      double mercury_z_0=0.0;
      mercury_z_0+=     0.04607664562 * cos( 1.99295081967 +    26087.90314157420*t);
      mercury_z_0+=     0.00709887021 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_z_0+=     0.00469171540 * cos( 5.04215742764 +    52175.80628314840*t);
      mercury_z_0+=     0.00071626383 * cos( 1.80894256071 +    78263.70942472259*t);
      mercury_z_0+=     0.00011810801 * cos( 0.46073218799 +      213.29909543800*t);
      mercury_z_0+=     0.00012957444 * cos( 4.85922032010 +   104351.61256629678*t);
      mercury_z_0+=     0.00011268745 * cos( 0.41669991860 +      529.69096509460*t);

      return mercury_z_0;
   }

   static double mercury_z_1_(double t){
      double mercury_z_1=0.0;
      mercury_z_1+=     0.00108722159 * cos( 3.91134750825 +    26087.90314157420*t);
      mercury_z_1+=     0.00057693223 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_z_1=mercury_z_1 * t;

      return mercury_z_1;
   }

   static double mercury_z(double t){
      return mercury_z_0_(t)+mercury_z_1_(t);
   }

}
