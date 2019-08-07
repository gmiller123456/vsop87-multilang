import static java.lang.Math.*;

public class vsop87a_micro_emb{
   static double emb_x_0_(double t){
      double emb_x_0=0.0;
      emb_x_0+=     0.99982927460 * cos( 1.75348568475 +     6283.07584999140*t);
      emb_x_0+=     0.00835257300 * cos( 1.71034539450 +    12566.15169998280*t);
      emb_x_0+=     0.00561144161 * cos( 0.00000000000 +        0.00000000000*t);
      emb_x_0+=     0.00010466628 * cos( 1.66722645223 +    18849.22754997420*t);

      return emb_x_0;
   }

   static double emb_x_1_(double t){
      double emb_x_1=0.0;
      emb_x_1+=     0.00123403046 * cos( 0.00000000000 +        0.00000000000*t);
      emb_x_1+=     0.00051500156 * cos( 6.00266267204 +    12566.15169998280*t);
      emb_x_1=emb_x_1 * t;

      return emb_x_1;
   }

   static double emb_x(double t){
      return emb_x_0_(t)+emb_x_1_(t);
   }

   static double emb_y_0_(double t){
      double emb_y_0=0.0;
      emb_y_0+=     0.99989209645 * cos( 0.18265890456 +     6283.07584999140*t);
      emb_y_0+=     0.02442698841 * cos( 3.14159265359 +        0.00000000000*t);
      emb_y_0+=     0.00835292314 * cos( 0.13952878991 +    12566.15169998280*t);
      emb_y_0+=     0.00010466965 * cos( 0.09641690558 +    18849.22754997420*t);

      return emb_y_0;
   }

   static double emb_y_1_(double t){
      double emb_y_1=0.0;
      emb_y_1+=     0.00093046317 * cos( 0.00000000000 +        0.00000000000*t);
      emb_y_1+=     0.00051506609 * cos( 4.43180499286 +    12566.15169998280*t);
      emb_y_1=emb_y_1 * t;

      return emb_y_1;
   }

   static double emb_y(double t){
      return emb_y_0_(t)+emb_y_1_(t);
   }

   static double emb_z_1_(double t){
      double emb_z_1=0.0;
      emb_z_1+=     0.00227822442 * cos( 3.41372504278 +     6283.07584999140*t);
      emb_z_1=emb_z_1 * t;

      return emb_z_1;
   }

   static double emb_z(double t){
      return emb_z_1_(t);
   }

}
