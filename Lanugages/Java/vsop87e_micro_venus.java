import static java.lang.Math.*;

public class vsop87e_micro_venus{
   static double venus_x_0_(double t){
      double venus_x_0=0.0;
      venus_x_0+=     0.72211104628 * cos( 3.17575836361 +    10213.28554621100*t);
      venus_x_0+=     0.00515822267 * cos( 0.00000000000 +        0.00000000000*t);
      venus_x_0+=     0.00494908458 * cos( 3.74108234732 +      529.69096509460*t);
      venus_x_0+=     0.00244499876 * cos( 4.05566613867 +    20426.57109242200*t);
      venus_x_0+=     0.00271754748 * cos( 4.01601261142 +      213.29909543800*t);
      venus_x_0+=     0.00155435209 * cos( 2.17052052050 +       38.13303563780*t);
      venus_x_0+=     0.00083791771 * cos( 2.33967946884 +       74.78159856730*t);
      venus_x_0+=     0.00011914665 * cos( 4.08456666781 +     1059.38193018920*t);

      return venus_x_0;
   }

   static double venus_x_1_(double t){
      double venus_x_1=0.0;
      venus_x_1+=     0.00035158710 * cos( 3.14159265359 +        0.00000000000*t);
      venus_x_1+=     0.00017234950 * cos( 0.92721124604 +    20426.57109242200*t);
      venus_x_1=venus_x_1 * t;

      return venus_x_1;
   }

   static double venus_x(double t){
      return venus_x_0_(t)+venus_x_1_(t);
   }

   static double venus_y_0_(double t){
      double venus_y_0=0.0;
      venus_y_0+=     0.72324643689 * cos( 1.60573808356 +    10213.28554621100*t);
      venus_y_0+=     0.00515636737 * cos( 3.14159265359 +        0.00000000000*t);
      venus_y_0+=     0.00494765697 * cos( 2.17048019743 +      529.69096509460*t);
      venus_y_0+=     0.00244884190 * cos( 2.48564953999 +    20426.57109242200*t);
      venus_y_0+=     0.00272138024 * cos( 2.44443638845 +      213.29909543800*t);
      venus_y_0+=     0.00155443844 * cos( 0.59927014146 +       38.13303563780*t);
      venus_y_0+=     0.00083754576 * cos( 0.76880143132 +       74.78159856730*t);
      venus_y_0+=     0.00011913202 * cos( 2.51387064934 +     1059.38193018920*t);

      return venus_y_0;
   }

   static double venus_y_1_(double t){
      double venus_y_1=0.0;
      venus_y_1+=     0.00039237546 * cos( 0.00000000000 +        0.00000000000*t);
      venus_y_1+=     0.00017282284 * cos( 5.63824735900 +    20426.57109242200*t);
      venus_y_1=venus_y_1 * t;

      return venus_y_1;
   }

   static double venus_y(double t){
      return venus_y_0_(t)+venus_y_1_(t);
   }

   static double venus_z_0_(double t){
      double venus_z_0=0.0;
      venus_z_0+=     0.04282979819 * cos( 0.26703856471 +    10213.28554621100*t);
      venus_z_0+=     0.00036740999 * cos( 3.14159265359 +        0.00000000000*t);
      venus_z_0+=     0.00014501844 * cos( 1.14696911390 +    20426.57109242200*t);
      venus_z_0+=     0.00011808377 * cos( 0.46064367724 +      213.29909543800*t);
      venus_z_0+=     0.00011238047 * cos( 0.41541669438 +      529.69096509460*t);

      return venus_z_0;
   }

   static double venus_z_1_(double t){
      double venus_z_1=0.0;
      venus_z_1+=     0.00208095894 * cos( 1.88967278742 +    10213.28554621100*t);
      venus_z_1=venus_z_1 * t;

      return venus_z_1;
   }

   static double venus_z(double t){
      return venus_z_0_(t)+venus_z_1_(t);
   }

}