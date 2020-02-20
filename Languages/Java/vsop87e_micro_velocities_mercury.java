//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87e_micro_velocities_mercury{
   static double mercury_x_0_(double t){
      double mercury_x_0=0.0;
      double exp=0;
      mercury_x_0+=-pow(t,exp)*     0.37546285495*   26087.90314157420*sin( 4.39651506942 +    26087.90314157420*t);
      mercury_x_0+=-pow(t,exp)*     0.03825746037*   52175.80628314840*sin( 1.16485604343 +    52175.80628314840*t);
      mercury_x_0+=-pow(t,exp)*     0.02596241714*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      mercury_x_0+=-pow(t,exp)*     0.00584261236*   78263.70942472259*sin( 4.21599394757 +    78263.70942472259*t);
      mercury_x_0+=-pow(t,exp)*     0.00495586029*     529.69096509460*sin( 3.74115422358 +      529.69096509460*t);
      mercury_x_0+=-pow(t,exp)*     0.00271797490*     213.29909543800*sin( 4.01600769847 +      213.29909543800*t);
      mercury_x_0+=-pow(t,exp)*     0.00155435621*      38.13303563780*sin( 2.17052060921 +       38.13303563780*t);
      mercury_x_0+=-pow(t,exp)*     0.00105716677*  104351.61256629678*sin( 0.98379033182 +   104351.61256629678*t);
      mercury_x_0+=-pow(t,exp)*     0.00083792888*      74.78159856730*sin( 2.33967639910 +       74.78159856730*t);
      mercury_x_0+=-pow(t,exp)*     0.00021011726*  130439.51570787099*sin( 4.03469353923 +   130439.51570787099*t);
      mercury_x_0+=-pow(t,exp)*     0.00012216168*    1059.38193018920*sin( 4.05786119279 +     1059.38193018920*t);

      return mercury_x_0;
   }

   static double mercury_x_1_(double t){
      double mercury_x_1=0.0;
      double exp=1;
      mercury_x_1+=pow(t,exp-1)*exp*     0.00317551960*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00317551960*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      mercury_x_1+=pow(t,exp-1)*exp*     0.00105289001*cos( 5.91600475006 +    52175.80628314840*t)-pow(t,exp)*     0.00105289001*   52175.80628314840*sin( 5.91600475006 +    52175.80628314840*t);
      mercury_x_1+=pow(t,exp-1)*exp*     0.00032315996*cos( 2.68247273347 +    78263.70942472259*t)-pow(t,exp)*     0.00032315996*   78263.70942472259*sin( 2.68247273347 +    78263.70942472259*t);
      mercury_x_1+=pow(t,exp-1)*exp*     0.00011992887*cos( 5.81575112963 +    26087.90314157420*t)-pow(t,exp)*     0.00011992887*   26087.90314157420*sin( 5.81575112963 +    26087.90314157420*t);

      return mercury_x_1;
   }

   static double mercury_x(double t){
      return mercury_x_0_(t)+mercury_x_1_(t);
   }

   static double mercury_y_0_(double t){
      double mercury_y_0=0.0;
      double exp=0;
      mercury_y_0+=-pow(t,exp)*     0.37953636588*   26087.90314157420*sin( 2.83780617821 +    26087.90314157420*t);
      mercury_y_0+=-pow(t,exp)*     0.11592262295*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      mercury_y_0+=-pow(t,exp)*     0.03854667576*   52175.80628314840*sin( 5.88780608961 +    52175.80628314840*t);
      mercury_y_0+=-pow(t,exp)*     0.00587711171*   78263.70942472259*sin( 2.65498896201 +    78263.70942472259*t);
      mercury_y_0+=-pow(t,exp)*     0.00495452148*     529.69096509460*sin( 2.17050902176 +      529.69096509460*t);
      mercury_y_0+=-pow(t,exp)*     0.00272177927*     213.29909543800*sin( 2.44442843667 +      213.29909543800*t);
      mercury_y_0+=-pow(t,exp)*     0.00155444251*      38.13303563780*sin( 0.59927014783 +       38.13303563780*t);
      mercury_y_0+=-pow(t,exp)*     0.00106235475*  104351.61256629678*sin( 5.70550616735 +   104351.61256629678*t);
      mercury_y_0+=-pow(t,exp)*     0.00083755636*      74.78159856730*sin( 0.76879995697 +       74.78159856730*t);
      mercury_y_0+=-pow(t,exp)*     0.00021100825*  130439.51570787099*sin( 2.47291315849 +   130439.51570787099*t);
      mercury_y_0+=-pow(t,exp)*     0.00012216279*    1059.38193018920*sin( 2.48707059837 +     1059.38193018920*t);

      return mercury_y_0;
   }

   static double mercury_y_1_(double t){
      double mercury_y_1=0.0;
      double exp=1;
      mercury_y_1+=pow(t,exp-1)*exp*     0.00107803834*cos( 4.34964793883 +    52175.80628314840*t)-pow(t,exp)*     0.00107803834*   52175.80628314840*sin( 4.34964793883 +    52175.80628314840*t);
      mercury_y_1+=pow(t,exp-1)*exp*     0.00080645427*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00080645427*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      mercury_y_1+=pow(t,exp-1)*exp*     0.00032715349*cos( 1.11763734425 +    78263.70942472259*t)-pow(t,exp)*     0.00032715349*   78263.70942472259*sin( 1.11763734425 +    78263.70942472259*t);
      mercury_y_1+=pow(t,exp-1)*exp*     0.00011914707*cos( 1.22139986340 +    26087.90314157420*t)-pow(t,exp)*     0.00011914707*   26087.90314157420*sin( 1.22139986340 +    26087.90314157420*t);

      return mercury_y_1;
   }

   static double mercury_y(double t){
      return mercury_y_0_(t)+mercury_y_1_(t);
   }

   static double mercury_z_0_(double t){
      double mercury_z_0=0.0;
      double exp=0;
      mercury_z_0+=-pow(t,exp)*     0.04607664562*   26087.90314157420*sin( 1.99295081967 +    26087.90314157420*t);
      mercury_z_0+=-pow(t,exp)*     0.00709887021*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      mercury_z_0+=-pow(t,exp)*     0.00469171540*   52175.80628314840*sin( 5.04215742764 +    52175.80628314840*t);
      mercury_z_0+=-pow(t,exp)*     0.00071626383*   78263.70942472259*sin( 1.80894256071 +    78263.70942472259*t);
      mercury_z_0+=-pow(t,exp)*     0.00011810801*     213.29909543800*sin( 0.46073218799 +      213.29909543800*t);
      mercury_z_0+=-pow(t,exp)*     0.00012957444*  104351.61256629678*sin( 4.85922032010 +   104351.61256629678*t);
      mercury_z_0+=-pow(t,exp)*     0.00011268745*     529.69096509460*sin( 0.41669991860 +      529.69096509460*t);

      return mercury_z_0;
   }

   static double mercury_z_1_(double t){
      double mercury_z_1=0.0;
      double exp=1;
      mercury_z_1+=pow(t,exp-1)*exp*     0.00108722159*cos( 3.91134750825 +    26087.90314157420*t)-pow(t,exp)*     0.00108722159*   26087.90314157420*sin( 3.91134750825 +    26087.90314157420*t);
      mercury_z_1+=pow(t,exp-1)*exp*     0.00057693223*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00057693223*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);

      return mercury_z_1;
   }

   static double mercury_z(double t){
      return mercury_z_0_(t)+mercury_z_1_(t);
   }

}
