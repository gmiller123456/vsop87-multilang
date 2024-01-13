//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87a_micro_velocities_emb{
   static double emb_x_0_(double t){
      double emb_x_0=0.0;
      double exp=0;
      emb_x_0+=-pow(t,exp)*     0.99982927460*    6283.07584999140*sin( 1.75348568475 +     6283.07584999140*t);
      emb_x_0+=-pow(t,exp)*     0.00835257300*   12566.15169998280*sin( 1.71034539450 +    12566.15169998280*t);
      emb_x_0+=-pow(t,exp)*     0.00561144161*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      emb_x_0+=-pow(t,exp)*     0.00010466628*   18849.22754997420*sin( 1.66722645223 +    18849.22754997420*t);

      return emb_x_0;
   }

   static double emb_x_1_(double t){
      double emb_x_1=0.0;
      double exp=1;
      emb_x_1+=pow(t,exp-1)*exp*     0.00123403046*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00123403046*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      emb_x_1+=pow(t,exp-1)*exp*     0.00051500156*cos( 6.00266267204 +    12566.15169998280*t)-pow(t,exp)*     0.00051500156*   12566.15169998280*sin( 6.00266267204 +    12566.15169998280*t);

      return emb_x_1;
   }

   static double emb_x(double t){
      return emb_x_0_(t)+emb_x_1_(t);
   }

   static double emb_y_0_(double t){
      double emb_y_0=0.0;
      double exp=0;
      emb_y_0+=-pow(t,exp)*     0.99989209645*    6283.07584999140*sin( 0.18265890456 +     6283.07584999140*t);
      emb_y_0+=-pow(t,exp)*     0.02442698841*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      emb_y_0+=-pow(t,exp)*     0.00835292314*   12566.15169998280*sin( 0.13952878991 +    12566.15169998280*t);
      emb_y_0+=-pow(t,exp)*     0.00010466965*   18849.22754997420*sin( 0.09641690558 +    18849.22754997420*t);

      return emb_y_0;
   }

   static double emb_y_1_(double t){
      double emb_y_1=0.0;
      double exp=1;
      emb_y_1+=pow(t,exp-1)*exp*     0.00093046317*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00093046317*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      emb_y_1+=pow(t,exp-1)*exp*     0.00051506609*cos( 4.43180499286 +    12566.15169998280*t)-pow(t,exp)*     0.00051506609*   12566.15169998280*sin( 4.43180499286 +    12566.15169998280*t);

      return emb_y_1;
   }

   static double emb_y(double t){
      return emb_y_0_(t)+emb_y_1_(t);
   }

   static double emb_z_1_(double t){
      double emb_z_1=0.0;
      double exp=1;
      emb_z_1+=pow(t,exp-1)*exp*     0.00227822442*cos( 3.41372504278 +     6283.07584999140*t)-pow(t,exp)*     0.00227822442*    6283.07584999140*sin( 3.41372504278 +     6283.07584999140*t);

      return emb_z_1;
   }

   static double emb_z(double t){
      return emb_z_1_(t);
   }

}
