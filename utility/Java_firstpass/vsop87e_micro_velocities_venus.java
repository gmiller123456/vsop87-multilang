import static java.lang.Math.*;

public class vsop87e_micro_velocities_venus{
   static double venus_x(double t){
      double exp=0.0;
      double venus_x_0=0.0;
      exp=0;
      venus_x_0+=-pow(t,exp)*     0.72211104628*   10213.28554621100*sin( 3.17575836361 +    10213.28554621100*t);
      venus_x_0+=-pow(t,exp)*     0.00515822267*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      venus_x_0+=-pow(t,exp)*     0.00494908458*     529.69096509460*sin( 3.74108234732 +      529.69096509460*t);
      venus_x_0+=-pow(t,exp)*     0.00244499876*   20426.57109242200*sin( 4.05566613867 +    20426.57109242200*t);
      venus_x_0+=-pow(t,exp)*     0.00271754748*     213.29909543800*sin( 4.01601261142 +      213.29909543800*t);
      venus_x_0+=-pow(t,exp)*     0.00155435209*      38.13303563780*sin( 2.17052052050 +       38.13303563780*t);
      venus_x_0+=-pow(t,exp)*     0.00083791771*      74.78159856730*sin( 2.33967946884 +       74.78159856730*t);
      venus_x_0+=-pow(t,exp)*     0.00011914665*    1059.38193018920*sin( 4.08456666781 +     1059.38193018920*t);

      double venus_x_1=0.0;
      exp=1;
      venus_x_1+=pow(t,exp-1)*exp*     0.00035158710*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00035158710*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      venus_x_1+=pow(t,exp-1)*exp*     0.00017234950*cos( 0.92721124604 +    20426.57109242200*t)-pow(t,exp)*     0.00017234950*   20426.57109242200*sin( 0.92721124604 +    20426.57109242200*t);

      return venus_x_0+venus_x_1;
   }

   static double venus_y(double t){
      double exp=0.0;
      double venus_y_0=0.0;
      exp=0;
      venus_y_0+=-pow(t,exp)*     0.72324643689*   10213.28554621100*sin( 1.60573808356 +    10213.28554621100*t);
      venus_y_0+=-pow(t,exp)*     0.00515636737*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      venus_y_0+=-pow(t,exp)*     0.00494765697*     529.69096509460*sin( 2.17048019743 +      529.69096509460*t);
      venus_y_0+=-pow(t,exp)*     0.00244884190*   20426.57109242200*sin( 2.48564953999 +    20426.57109242200*t);
      venus_y_0+=-pow(t,exp)*     0.00272138024*     213.29909543800*sin( 2.44443638845 +      213.29909543800*t);
      venus_y_0+=-pow(t,exp)*     0.00155443844*      38.13303563780*sin( 0.59927014146 +       38.13303563780*t);
      venus_y_0+=-pow(t,exp)*     0.00083754576*      74.78159856730*sin( 0.76880143132 +       74.78159856730*t);
      venus_y_0+=-pow(t,exp)*     0.00011913202*    1059.38193018920*sin( 2.51387064934 +     1059.38193018920*t);

      double venus_y_1=0.0;
      exp=1;
      venus_y_1+=pow(t,exp-1)*exp*     0.00039237546*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00039237546*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      venus_y_1+=pow(t,exp-1)*exp*     0.00017282284*cos( 5.63824735900 +    20426.57109242200*t)-pow(t,exp)*     0.00017282284*   20426.57109242200*sin( 5.63824735900 +    20426.57109242200*t);

      return venus_y_0+venus_y_1;
   }

   static double venus_z(double t){
      double exp=0.0;
      double venus_z_0=0.0;
      exp=0;
      venus_z_0+=-pow(t,exp)*     0.04282979819*   10213.28554621100*sin( 0.26703856471 +    10213.28554621100*t);
      venus_z_0+=-pow(t,exp)*     0.00036740999*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      venus_z_0+=-pow(t,exp)*     0.00014501844*   20426.57109242200*sin( 1.14696911390 +    20426.57109242200*t);
      venus_z_0+=-pow(t,exp)*     0.00011808377*     213.29909543800*sin( 0.46064367724 +      213.29909543800*t);
      venus_z_0+=-pow(t,exp)*     0.00011238047*     529.69096509460*sin( 0.41541669438 +      529.69096509460*t);

      double venus_z_1=0.0;
      exp=1;
      venus_z_1+=pow(t,exp-1)*exp*     0.00208095894*cos( 1.88967278742 +    10213.28554621100*t)-pow(t,exp)*     0.00208095894*   10213.28554621100*sin( 1.88967278742 +    10213.28554621100*t);

      return venus_z_0+venus_z_1;
   }

}
