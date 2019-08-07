import static java.lang.Math.*;

public class vsop87a_pico_emb{
   static double emb_x(double t){
      double emb_x_0=0.0;
      emb_x_0+=     0.99982927460 * cos( 1.75348568475 +     6283.07584999140*t);

      return emb_x_0;
   }

   static double emb_y(double t){
      double emb_y_0=0.0;
      emb_y_0+=     0.99989209645 * cos( 0.18265890456 +     6283.07584999140*t);
      emb_y_0+=     0.02442698841 * cos( 3.14159265359 +        0.00000000000*t);

      return emb_y_0;
   }

   static double emb_z(double t){
      return 0;
   }

}
