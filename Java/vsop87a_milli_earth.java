import static java.lang.Math.*;

public class vsop87a_milli_earth{
   static double earth_x_0_(double t){
      double earth_x_0=0.0;
      earth_x_0+=     0.99982928844 * cos( 1.75348568475 +     6283.07584999140*t);
      earth_x_0+=     0.00835257300 * cos( 1.71034539450 +    12566.15169998280*t);
      earth_x_0+=     0.00561144206 * cos( 0.00000000000 +        0.00000000000*t);
      earth_x_0+=     0.00010466628 * cos( 1.66722645223 +    18849.22754997420*t);
      earth_x_0+=     0.00003110838 * cos( 0.66875185215 +    83996.84731811189*t);
      earth_x_0+=     0.00002552498 * cos( 0.58310207301 +      529.69096509460*t);
      earth_x_0+=     0.00002137256 * cos( 1.09235189672 +     1577.34354244780*t);
      earth_x_0+=     0.00001709103 * cos( 0.49540223397 +     6279.55273164240*t);
      earth_x_0+=     0.00001707882 * cos( 6.15315547484 +     6286.59896834040*t);
      earth_x_0+=     0.00001445242 * cos( 3.47272783760 +     2352.86615377180*t);
      earth_x_0+=     0.00001091006 * cos( 3.68984782465 +     5223.69391980220*t);

      return earth_x_0;
   }

   static double earth_x_1_(double t){
      double earth_x_1=0.0;
      earth_x_1+=     0.00123403056 * cos( 0.00000000000 +        0.00000000000*t);
      earth_x_1+=     0.00051500156 * cos( 6.00266267204 +    12566.15169998280*t);
      earth_x_1+=     0.00001290726 * cos( 5.95943124583 +    18849.22754997420*t);
      earth_x_1+=     0.00001068627 * cos( 2.01554176551 +     6283.07584999140*t);
      earth_x_1=earth_x_1 * t;

      return earth_x_1;
   }

   static double earth_x_2_(double t){
      double earth_x_2=0.0;
      earth_x_2+=     0.00004143217 * cos( 3.14159265359 +        0.00000000000*t);
      earth_x_2+=     0.00002175695 * cos( 4.39999849572 +    12566.15169998280*t);
      earth_x_2=earth_x_2 * t * t;

      return earth_x_2;
   }

   static double earth_x(double t){
      return earth_x_0_(t)+earth_x_1_(t)+earth_x_2_(t);
   }

   static double earth_y_0_(double t){
      double earth_y_0=0.0;
      earth_y_0+=     0.99989211030 * cos( 0.18265890456 +     6283.07584999140*t);
      earth_y_0+=     0.02442699036 * cos( 3.14159265359 +        0.00000000000*t);
      earth_y_0+=     0.00835292314 * cos( 0.13952878991 +    12566.15169998280*t);
      earth_y_0+=     0.00010466965 * cos( 0.09641690558 +    18849.22754997420*t);
      earth_y_0+=     0.00003110838 * cos( 5.38114091484 +    83996.84731811189*t);
      earth_y_0+=     0.00002570338 * cos( 5.30103973360 +      529.69096509460*t);
      earth_y_0+=     0.00002147473 * cos( 2.66253538905 +     1577.34354244780*t);
      earth_y_0+=     0.00001709219 * cos( 5.20780401071 +     6279.55273164240*t);
      earth_y_0+=     0.00001707987 * cos( 4.58232858766 +     6286.59896834040*t);
      earth_y_0+=     0.00001440265 * cos( 1.90068164664 +     2352.86615377180*t);
      earth_y_0+=     0.00001135092 * cos( 5.27313415220 +     5223.69391980220*t);

      return earth_y_0;
   }

   static double earth_y_1_(double t){
      double earth_y_1=0.0;
      earth_y_1+=     0.00093046324 * cos( 0.00000000000 +        0.00000000000*t);
      earth_y_1+=     0.00051506609 * cos( 4.43180499286 +    12566.15169998280*t);
      earth_y_1+=     0.00001290800 * cos( 4.38860548540 +    18849.22754997420*t);
      earth_y_1=earth_y_1 * t;

      return earth_y_1;
   }

   static double earth_y_2_(double t){
      double earth_y_2=0.0;
      earth_y_2+=     0.00005080208 * cos( 0.00000000000 +        0.00000000000*t);
      earth_y_2+=     0.00002178016 * cos( 2.82957544235 +    12566.15169998280*t);
      earth_y_2+=     0.00001020487 * cos( 4.63746718598 +     6283.07584999140*t);
      earth_y_2=earth_y_2 * t * t;

      return earth_y_2;
   }

   static double earth_y(double t){
      return earth_y_0_(t)+earth_y_1_(t)+earth_y_2_(t);
   }

   static double earth_z_1_(double t){
      double earth_z_1=0.0;
      earth_z_1+=     0.00227822442 * cos( 3.41372504278 +     6283.07584999140*t);
      earth_z_1+=     0.00005429282 * cos( 0.00000000000 +        0.00000000000*t);
      earth_z_1+=     0.00001903183 * cos( 3.37061270964 +    12566.15169998280*t);
      earth_z_1=earth_z_1 * t;

      return earth_z_1;
   }

   static double earth_z_2_(double t){
      double earth_z_2=0.0;
      earth_z_2+=     0.00009721989 * cos( 5.15233725915 +     6283.07584999140*t);
      earth_z_2=earth_z_2 * t * t;

      return earth_z_2;
   }

   static double earth_z(double t){
      return earth_z_1_(t)+earth_z_2_(t);
   }

}
