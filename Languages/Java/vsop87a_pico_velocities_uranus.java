import static java.lang.Math.*;

public class vsop87a_pico_velocities_uranus{
   static double uranus_x_0_(double t){
      double uranus_x_0=0.0;
      double exp=0;
      uranus_x_0+=-pow(t,exp)*    19.17370730359*      74.78159856730*sin( 5.48133416489 +       74.78159856730*t);
      uranus_x_0+=-pow(t,exp)*     1.32272523872*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      uranus_x_0+=-pow(t,exp)*     0.44402496796*     149.56319713460*sin( 1.65967519586 +      149.56319713460*t);
      uranus_x_0+=-pow(t,exp)*     0.14668209481*      73.29712585900*sin( 3.42395862804 +       73.29712585900*t);
      uranus_x_0+=-pow(t,exp)*     0.14130269479*      76.26607127560*sin( 4.39572927934 +       76.26607127560*t);
      uranus_x_0+=-pow(t,exp)*     0.06201106178*       1.48447270830*sin( 5.14043574125 +        1.48447270830*t);
      uranus_x_0+=-pow(t,exp)*     0.01542951343*     224.34479570190*sin( 4.12121838072 +      224.34479570190*t);
      uranus_x_0+=-pow(t,exp)*     0.01444216660*     148.07872442630*sin( 2.65117115201 +      148.07872442630*t);

      return uranus_x_0;
   }

   static double uranus_x(double t){
      return uranus_x_0_(t);
   }

   static double uranus_y_0_(double t){
      double uranus_y_0=0.0;
      double exp=0;
      uranus_y_0+=-pow(t,exp)*    19.16518231584*      74.78159856730*sin( 3.91045677002 +       74.78159856730*t);
      uranus_y_0+=-pow(t,exp)*     0.44390465203*     149.56319713460*sin( 0.08884111329 +      149.56319713460*t);
      uranus_y_0+=-pow(t,exp)*     0.16256125476*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      uranus_y_0+=-pow(t,exp)*     0.14755940186*      73.29712585900*sin( 1.85423280679 +       73.29712585900*t);
      uranus_y_0+=-pow(t,exp)*     0.14123958128*      76.26607127560*sin( 2.82486076549 +       76.26607127560*t);
      uranus_y_0+=-pow(t,exp)*     0.06250078231*       1.48447270830*sin( 3.56960243857 +        1.48447270830*t);
      uranus_y_0+=-pow(t,exp)*     0.01542668264*     224.34479570190*sin( 2.55040539213 +      224.34479570190*t);
      uranus_y_0+=-pow(t,exp)*     0.01442356575*     148.07872442630*sin( 1.08004542712 +      148.07872442630*t);

      return uranus_y_0;
   }

   static double uranus_y_1_(double t){
      double uranus_y_1=0.0;
      double exp=1;
      uranus_y_1+=pow(t,exp-1)*exp*     0.02157896385*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.02157896385*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return uranus_y_1;
   }

   static double uranus_y(double t){
      return uranus_y_0_(t)+uranus_y_1_(t);
   }

   static double uranus_z_0_(double t){
      double uranus_z_0=0.0;
      double exp=0;
      uranus_z_0+=-pow(t,exp)*     0.25878127698*      74.78159856730*sin( 2.61861272578 +       74.78159856730*t);
      uranus_z_0+=-pow(t,exp)*     0.01774318778*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);

      return uranus_z_0;
   }

   static double uranus_z(double t){
      return uranus_z_0_(t);
   }

}
