//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87c_pico_velocities_uranus{
   static double uranus_x_0_(double t){
      double uranus_x_0=0.0;
      double exp=0;
      uranus_x_0+=-pow(t,exp)*    19.16944479396*      75.02541605080*sin( 5.48129363987 +       75.02541605080*t);
      uranus_x_0+=-pow(t,exp)*     1.33267708718*       0.24381748350*sin( 6.16089978558 +        0.24381748350*t);
      uranus_x_0+=-pow(t,exp)*     0.44396480992*     149.80701461810*sin( 1.65965632053 +      149.80701461810*t);
      uranus_x_0+=-pow(t,exp)*     0.14712072726*      73.54094334250*sin( 3.42449547672 +       73.54094334250*t);
      uranus_x_0+=-pow(t,exp)*     0.14127113794*      76.50988875911*sin( 4.39569319388 +       76.50988875911*t);
      uranus_x_0+=-pow(t,exp)*     0.06225592204*       1.72829019180*sin( 5.14041718059 +        1.72829019180*t);
      uranus_x_0+=-pow(t,exp)*     0.01542809804*     224.58861318540*sin( 4.12121005059 +      224.58861318540*t);
      uranus_x_0+=-pow(t,exp)*     0.01443286598*     148.32254190981*sin( 2.65100655909 +      148.32254190981*t);

      return uranus_x_0;
   }

   static double uranus_x_1_(double t){
      double uranus_x_1=0.0;
      double exp=1;
      uranus_x_1+=pow(t,exp-1)*exp*     0.02225113750*cos( 1.80968682072 +        0.24381748350*t)-pow(t,exp)*     0.02225113750*       0.24381748350*sin( 1.80968682072 +        0.24381748350*t);

      return uranus_x_1;
   }

   static double uranus_x_2_(double t){
      double uranus_x_2=0.0;
      double exp=2;
      uranus_x_2+=pow(t,exp-1)*exp*     0.01016618950*cos( 0.77056492682 +       75.02541605080*t)-pow(t,exp)*     0.01016618950*      75.02541605080*sin( 0.77056492682 +       75.02541605080*t);

      return uranus_x_2;
   }

   static double uranus_x(double t){
      return uranus_x_0_(t)+uranus_x_1_(t)+uranus_x_2_(t);
   }

   static double uranus_y_0_(double t){
      double uranus_y_0=0.0;
      double exp=0;
      uranus_y_0+=-pow(t,exp)*    19.16944479396*      75.02541605080*sin( 3.91049731307 +       75.02541605080*t);
      uranus_y_0+=-pow(t,exp)*     1.33267708718*       0.24381748350*sin( 4.59010345878 +        0.24381748350*t);
      uranus_y_0+=-pow(t,exp)*     0.44396480992*     149.80701461810*sin( 0.08885999374 +      149.80701461810*t);
      uranus_y_0+=-pow(t,exp)*     0.14712072726*      73.54094334250*sin( 1.85369914992 +       73.54094334250*t);
      uranus_y_0+=-pow(t,exp)*     0.14127113794*      76.50988875911*sin( 2.82489686708 +       76.50988875911*t);
      uranus_y_0+=-pow(t,exp)*     0.06225592204*       1.72829019180*sin( 3.56962085379 +        1.72829019180*t);
      uranus_y_0+=-pow(t,exp)*     0.01542809804*     224.58861318540*sin( 2.55041372379 +      224.58861318540*t);
      uranus_y_0+=-pow(t,exp)*     0.01443286598*     148.32254190981*sin( 1.08021023229 +      148.32254190981*t);

      return uranus_y_0;
   }

   static double uranus_y_1_(double t){
      double uranus_y_1=0.0;
      double exp=1;
      uranus_y_1+=pow(t,exp-1)*exp*     0.02225113750*cos( 0.23889049392 +        0.24381748350*t)-pow(t,exp)*     0.02225113750*       0.24381748350*sin( 0.23889049392 +        0.24381748350*t);

      return uranus_y_1;
   }

   static double uranus_y_2_(double t){
      double uranus_y_2=0.0;
      double exp=2;
      uranus_y_2+=pow(t,exp-1)*exp*     0.01016618950*cos( 5.48295390720 +       75.02541605080*t)-pow(t,exp)*     0.01016618950*      75.02541605080*sin( 5.48295390720 +       75.02541605080*t);

      return uranus_y_2;
   }

   static double uranus_y(double t){
      return uranus_y_0_(t)+uranus_y_1_(t)+uranus_y_2_(t);
   }

   static double uranus_z_0_(double t){
      double uranus_z_0=0.0;
      double exp=0;
      uranus_z_0+=-pow(t,exp)*     0.25878127698*      74.78159856730*sin( 2.61861272578 +       74.78159856730*t);
      uranus_z_0+=-pow(t,exp)*     0.01774318778*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);

      return uranus_z_0;
   }

   static double uranus_z_1_(double t){
      double uranus_z_1=0.0;
      double exp=1;
      uranus_z_1+=pow(t,exp-1)*exp*     0.03962262983*cos( 4.12418900865 +       74.78159856730*t)-pow(t,exp)*     0.03962262983*      74.78159856730*sin( 4.12418900865 +       74.78159856730*t);

      return uranus_z_1;
   }

   static double uranus_z(double t){
      return uranus_z_0_(t)+uranus_z_1_(t);
   }

}
