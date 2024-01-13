//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87c_nano_velocities_jupiter{
   static double jupiter_x_0_(double t){
      double jupiter_x_0=0.0;
      double exp=0;
      jupiter_x_0+=-pow(t,exp)*     5.19591755961*     529.93478257810*sin( 0.59954672200 +      529.93478257810*t);
      jupiter_x_0+=-pow(t,exp)*     0.37839498798*       0.24381748350*sin( 3.39164799011 +        0.24381748350*t);
      jupiter_x_0+=-pow(t,exp)*     0.12593400247*    1059.62574767270*sin( 0.94916456487 +     1059.62574767270*t);
      jupiter_x_0+=-pow(t,exp)*     0.01504469362*     522.82123557730*sin( 0.72934997067 +      522.82123557730*t);
      jupiter_x_0+=-pow(t,exp)*     0.01476016965*     537.04832957890*sin( 3.61748058581 +      537.04832957890*t);
      jupiter_x_0+=-pow(t,exp)*     0.00457751771*    1589.31671276730*sin( 1.29886948102 +     1589.31671276730*t);
      jupiter_x_0+=-pow(t,exp)*     0.00301186623*       7.35736448430*sin( 5.17699571796 +        7.35736448430*t);
      jupiter_x_0+=-pow(t,exp)*     0.00381996183*     102.84895673509*sin( 1.98605213956 +      102.84895673509*t);
      jupiter_x_0+=-pow(t,exp)*     0.00193179179*     426.84200835950*sin( 5.02674864982 +      426.84200835950*t);
      jupiter_x_0+=-pow(t,exp)*     0.00148291722*     110.45013870291*sin( 6.15618324076 +      110.45013870291*t);
      jupiter_x_0+=-pow(t,exp)*     0.00142171400*     633.02755679670*sin( 5.56556633177 +      633.02755679670*t);
      jupiter_x_0+=-pow(t,exp)*     0.00133443745*     213.54291292150*sin( 0.89287673636 +      213.54291292150*t);
      jupiter_x_0+=-pow(t,exp)*     0.00102719450*    1052.51220067191*sin( 6.17016418155 +     1052.51220067191*t);
      jupiter_x_0+=-pow(t,exp)*     0.00114122292*    1162.71852189130*sin( 0.01655163411 +     1162.71852189130*t);

      return jupiter_x_0;
   }

   static double jupiter_x_1_(double t){
      double jupiter_x_1=0.0;
      double exp=1;
      jupiter_x_1+=pow(t,exp-1)*exp*     0.01912556490*cos( 4.23275123829 +        0.24381748350*t)-pow(t,exp)*     0.01912556490*       0.24381748350*sin( 4.23275123829 +        0.24381748350*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00634902259*cos( 0.10706507632 +     1059.62574767270*t)-pow(t,exp)*     0.00634902259*    1059.62574767270*sin( 0.10706507632 +     1059.62574767270*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00600483021*cos( 2.42939944495 +      522.82123557730*t)-pow(t,exp)*     0.00600483021*     522.82123557730*sin( 2.42939944495 +      522.82123557730*t);
      jupiter_x_1+=pow(t,exp-1)*exp*     0.00589005176*cos( 1.91564604125 +      537.04832957890*t)-pow(t,exp)*     0.00589005176*     537.04832957890*sin( 1.91564604125 +      537.04832957890*t);

      return jupiter_x_1;
   }

   static double jupiter_x_2_(double t){
      double jupiter_x_2=0.0;
      double exp=2;
      jupiter_x_2+=pow(t,exp-1)*exp*     0.00202462055*cos( 2.16872090770 +      529.93478257810*t)-pow(t,exp)*     0.00202462055*     529.93478257810*sin( 2.16872090770 +      529.93478257810*t);
      jupiter_x_2+=pow(t,exp-1)*exp*     0.00132313738*cos( 5.46375601476 +        0.24381748350*t)-pow(t,exp)*     0.00132313738*       0.24381748350*sin( 5.46375601476 +        0.24381748350*t);
      jupiter_x_2+=pow(t,exp-1)*exp*     0.00123752958*cos( 4.12933545743 +      522.82123557730*t)-pow(t,exp)*     0.00123752958*     522.82123557730*sin( 4.12933545743 +      522.82123557730*t);
      jupiter_x_2+=pow(t,exp-1)*exp*     0.00121682952*cos( 0.20529040863 +      537.04832957890*t)-pow(t,exp)*     0.00121682952*     537.04832957890*sin( 0.20529040863 +      537.04832957890*t);

      return jupiter_x_2;
   }

   static double jupiter_x(double t){
      return jupiter_x_0_(t)+jupiter_x_1_(t)+jupiter_x_2_(t);
   }

   static double jupiter_y_0_(double t){
      double jupiter_y_0=0.0;
      double exp=0;
      jupiter_y_0+=-pow(t,exp)*     5.19591755961*     529.93478257810*sin( 5.31193570238 +      529.93478257810*t);
      jupiter_y_0+=-pow(t,exp)*     0.37839498798*       0.24381748350*sin( 1.82085166331 +        0.24381748350*t);
      jupiter_y_0+=-pow(t,exp)*     0.12593400247*    1059.62574767270*sin( 5.66155354525 +     1059.62574767270*t);
      jupiter_y_0+=-pow(t,exp)*     0.01504469362*     522.82123557730*sin( 5.44173895105 +      522.82123557730*t);
      jupiter_y_0+=-pow(t,exp)*     0.01476016965*     537.04832957890*sin( 2.04668425902 +      537.04832957890*t);
      jupiter_y_0+=-pow(t,exp)*     0.00457751771*    1589.31671276730*sin( 6.01125846140 +     1589.31671276730*t);
      jupiter_y_0+=-pow(t,exp)*     0.00301186623*       7.35736448430*sin( 3.60619939116 +        7.35736448430*t);
      jupiter_y_0+=-pow(t,exp)*     0.00381996183*     102.84895673509*sin( 3.55684846636 +      102.84895673509*t);
      jupiter_y_0+=-pow(t,exp)*     0.00193179179*     426.84200835950*sin( 3.45595232302 +      426.84200835950*t);
      jupiter_y_0+=-pow(t,exp)*     0.00148291722*     110.45013870291*sin( 4.58538691397 +      110.45013870291*t);
      jupiter_y_0+=-pow(t,exp)*     0.00142171400*     633.02755679670*sin( 3.99477000498 +      633.02755679670*t);
      jupiter_y_0+=-pow(t,exp)*     0.00133443745*     213.54291292150*sin( 5.60526571675 +      213.54291292150*t);
      jupiter_y_0+=-pow(t,exp)*     0.00102719450*    1052.51220067191*sin( 4.59936785476 +     1052.51220067191*t);
      jupiter_y_0+=-pow(t,exp)*     0.00114122292*    1162.71852189130*sin( 4.72894061449 +     1162.71852189130*t);

      return jupiter_y_0;
   }

   static double jupiter_y_1_(double t){
      double jupiter_y_1=0.0;
      double exp=1;
      jupiter_y_1+=pow(t,exp-1)*exp*     0.01912556490*cos( 2.66195491149 +        0.24381748350*t)-pow(t,exp)*     0.01912556490*       0.24381748350*sin( 2.66195491149 +        0.24381748350*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00634902259*cos( 4.81945405671 +     1059.62574767270*t)-pow(t,exp)*     0.00634902259*    1059.62574767270*sin( 4.81945405671 +     1059.62574767270*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00600483021*cos( 0.85860311815 +      522.82123557730*t)-pow(t,exp)*     0.00600483021*     522.82123557730*sin( 0.85860311815 +      522.82123557730*t);
      jupiter_y_1+=pow(t,exp-1)*exp*     0.00589005176*cos( 0.34484971445 +      537.04832957890*t)-pow(t,exp)*     0.00589005176*     537.04832957890*sin( 0.34484971445 +      537.04832957890*t);

      return jupiter_y_1;
   }

   static double jupiter_y_2_(double t){
      double jupiter_y_2=0.0;
      double exp=2;
      jupiter_y_2+=pow(t,exp-1)*exp*     0.00202462055*cos( 0.59792458091 +      529.93478257810*t)-pow(t,exp)*     0.00202462055*     529.93478257810*sin( 0.59792458091 +      529.93478257810*t);
      jupiter_y_2+=pow(t,exp-1)*exp*     0.00132313738*cos( 3.89295968796 +        0.24381748350*t)-pow(t,exp)*     0.00132313738*       0.24381748350*sin( 3.89295968796 +        0.24381748350*t);
      jupiter_y_2+=pow(t,exp-1)*exp*     0.00123752958*cos( 2.55853913064 +      522.82123557730*t)-pow(t,exp)*     0.00123752958*     522.82123557730*sin( 2.55853913064 +      522.82123557730*t);
      jupiter_y_2+=pow(t,exp-1)*exp*     0.00121682952*cos( 4.91767938901 +      537.04832957890*t)-pow(t,exp)*     0.00121682952*     537.04832957890*sin( 4.91767938901 +      537.04832957890*t);

      return jupiter_y_2;
   }

   static double jupiter_y(double t){
      return jupiter_y_0_(t)+jupiter_y_1_(t)+jupiter_y_2_(t);
   }

   static double jupiter_z_0_(double t){
      double jupiter_z_0=0.0;
      double exp=0;
      jupiter_z_0+=-pow(t,exp)*     0.11823100489*     529.69096509460*sin( 3.55844646343 +      529.69096509460*t);
      jupiter_z_0+=-pow(t,exp)*     0.00859031952*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      jupiter_z_0+=-pow(t,exp)*     0.00286562094*    1059.38193018920*sin( 3.90812238338 +     1059.38193018920*t);

      return jupiter_z_0;
   }

   static double jupiter_z_1_(double t){
      double jupiter_z_1=0.0;
      double exp=1;
      jupiter_z_1+=pow(t,exp-1)*exp*     0.00922338114*cos( 5.70129376981 +      529.69096509460*t)-pow(t,exp)*     0.00922338114*     529.69096509460*sin( 5.70129376981 +      529.69096509460*t);

      return jupiter_z_1;
   }

   static double jupiter_z(double t){
      return jupiter_z_0_(t)+jupiter_z_1_(t);
   }

}
