//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87c_nano_velocities_neptune{
   static double neptune_x_0_(double t){
      double neptune_x_0=0.0;
      double exp=0;
      neptune_x_0+=-pow(t,exp)*    30.05973100580*      38.37685312130*sin( 5.31188633083 +       38.37685312130*t);
      neptune_x_0+=-pow(t,exp)*     0.40567587218*       0.24381748350*sin( 3.98149970131 +        0.24381748350*t);
      neptune_x_0+=-pow(t,exp)*     0.13506026414*      76.50988875911*sin( 3.50055820972 +       76.50988875911*t);
      neptune_x_0+=-pow(t,exp)*     0.15716341901*      36.89238041300*sin( 0.11310077968 +       36.89238041300*t);
      neptune_x_0+=-pow(t,exp)*     0.14935642614*      39.86132582961*sin( 1.08477702063 +       39.86132582961*t);
      neptune_x_0+=-pow(t,exp)*     0.02590782232*       1.72829019180*sin( 1.99609768221 +        1.72829019180*t);
      neptune_x_0+=-pow(t,exp)*     0.01073890204*      75.02541605080*sin( 5.38477153556 +       75.02541605080*t);
      neptune_x_0+=-pow(t,exp)*     0.00816388197*       3.21276290011*sin( 0.78185518038 +        3.21276290011*t);
      neptune_x_0+=-pow(t,exp)*     0.00702768075*      35.40790770471*sin( 1.45363642119 +       35.40790770471*t);
      neptune_x_0+=-pow(t,exp)*     0.00687594822*      37.88921815429*sin( 0.72075739344 +       37.88921815429*t);
      neptune_x_0+=-pow(t,exp)*     0.00565555652*      41.34579853790*sin( 5.98943773879 +       41.34579853790*t);
      neptune_x_0+=-pow(t,exp)*     0.00495650075*     529.93478257810*sin( 0.59957534348 +      529.93478257810*t);
      neptune_x_0+=-pow(t,exp)*     0.00306025380*      73.54094334250*sin( 0.39916788140 +       73.54094334250*t);
      neptune_x_0+=-pow(t,exp)*     0.00272446904*     213.54291292150*sin( 0.87404115637 +      213.54291292150*t);
      neptune_x_0+=-pow(t,exp)*     0.00135892298*      77.99436146740*sin( 5.54654979922 +       77.99436146740*t);
      neptune_x_0+=-pow(t,exp)*     0.00122117697*      34.92027273770*sin( 1.30863876781 +       34.92027273770*t);

      return neptune_x_0;
   }

   static double neptune_x_1_(double t){
      double neptune_x_1=0.0;
      double exp=1;
      neptune_x_1+=pow(t,exp-1)*exp*     0.00357822049*cos( 4.60537437341 +        0.24381748350*t)-pow(t,exp)*     0.00357822049*       0.24381748350*sin( 4.60537437341 +        0.24381748350*t);
      neptune_x_1+=pow(t,exp-1)*exp*     0.00256200629*cos( 2.01693264233 +       36.89238041300*t)-pow(t,exp)*     0.00256200629*      36.89238041300*sin( 2.01693264233 +       36.89238041300*t);
      neptune_x_1+=pow(t,exp-1)*exp*     0.00242677799*cos( 5.46293481092 +       39.86132582961*t)-pow(t,exp)*     0.00242677799*      39.86132582961*sin( 5.46293481092 +       39.86132582961*t);
      neptune_x_1+=pow(t,exp-1)*exp*     0.00106073143*cos( 3.07856435709 +       37.88921815429*t)-pow(t,exp)*     0.00106073143*      37.88921815429*sin( 3.07856435709 +       37.88921815429*t);
      neptune_x_1+=pow(t,exp-1)*exp*     0.00103735195*cos( 6.08270773807 +       38.37685312130*t)-pow(t,exp)*     0.00103735195*      38.37685312130*sin( 6.08270773807 +       38.37685312130*t);
      neptune_x_1+=pow(t,exp-1)*exp*     0.00118508231*cos( 2.88623136735 +       76.50988875911*t)-pow(t,exp)*     0.00118508231*      76.50988875911*sin( 2.88623136735 +       76.50988875911*t);

      return neptune_x_1;
   }

   static double neptune_x_2_(double t){
      double neptune_x_2=0.0;
      double exp=2;
      neptune_x_2+=pow(t,exp-1)*exp*     0.01620002167*cos( 0.60038473142 +       38.37685312130*t)-pow(t,exp)*     0.01620002167*      38.37685312130*sin( 0.60038473142 +       38.37685312130*t);

      return neptune_x_2;
   }

   static double neptune_x(double t){
      return neptune_x_0_(t)+neptune_x_1_(t)+neptune_x_2_(t);
   }

   static double neptune_y_0_(double t){
      double neptune_y_0=0.0;
      double exp=0;
      neptune_y_0+=-pow(t,exp)*    30.05973100580*      38.37685312130*sin( 3.74109000403 +       38.37685312130*t);
      neptune_y_0+=-pow(t,exp)*     0.40567587218*       0.24381748350*sin( 2.41070337452 +        0.24381748350*t);
      neptune_y_0+=-pow(t,exp)*     0.13506026414*      76.50988875911*sin( 1.92976188293 +       76.50988875911*t);
      neptune_y_0+=-pow(t,exp)*     0.15716341901*      36.89238041300*sin( 4.82548976006 +       36.89238041300*t);
      neptune_y_0+=-pow(t,exp)*     0.14935642614*      39.86132582961*sin( 5.79716600101 +       39.86132582961*t);
      neptune_y_0+=-pow(t,exp)*     0.02590782232*       1.72829019180*sin( 0.42530135542 +        1.72829019180*t);
      neptune_y_0+=-pow(t,exp)*     0.01073890204*      75.02541605080*sin( 3.81397520876 +       75.02541605080*t);
      neptune_y_0+=-pow(t,exp)*     0.00816388197*       3.21276290011*sin( 5.49424416077 +        3.21276290011*t);
      neptune_y_0+=-pow(t,exp)*     0.00702768075*      35.40790770471*sin( 6.16602540157 +       35.40790770471*t);
      neptune_y_0+=-pow(t,exp)*     0.00687594822*      37.88921815429*sin( 2.29155372023 +       37.88921815429*t);
      neptune_y_0+=-pow(t,exp)*     0.00565555652*      41.34579853790*sin( 4.41864141199 +       41.34579853790*t);
      neptune_y_0+=-pow(t,exp)*     0.00495650075*     529.93478257810*sin( 5.31196432386 +      529.93478257810*t);
      neptune_y_0+=-pow(t,exp)*     0.00306025380*      73.54094334250*sin( 5.11155686178 +       73.54094334250*t);
      neptune_y_0+=-pow(t,exp)*     0.00272446904*     213.54291292150*sin( 5.58643013675 +      213.54291292150*t);
      neptune_y_0+=-pow(t,exp)*     0.00135892298*      77.99436146740*sin( 3.97575347243 +       77.99436146740*t);
      neptune_y_0+=-pow(t,exp)*     0.00122117697*      34.92027273770*sin( 2.87943509460 +       34.92027273770*t);

      return neptune_y_0;
   }

   static double neptune_y_1_(double t){
      double neptune_y_1=0.0;
      double exp=1;
      neptune_y_1+=pow(t,exp-1)*exp*     0.00357822049*cos( 3.03457804662 +        0.24381748350*t)-pow(t,exp)*     0.00357822049*       0.24381748350*sin( 3.03457804662 +        0.24381748350*t);
      neptune_y_1+=pow(t,exp-1)*exp*     0.00256200629*cos( 0.44613631554 +       36.89238041300*t)-pow(t,exp)*     0.00256200629*      36.89238041300*sin( 0.44613631554 +       36.89238041300*t);
      neptune_y_1+=pow(t,exp-1)*exp*     0.00242677799*cos( 3.89213848413 +       39.86132582961*t)-pow(t,exp)*     0.00242677799*      39.86132582961*sin( 3.89213848413 +       39.86132582961*t);
      neptune_y_1+=pow(t,exp-1)*exp*     0.00106073143*cos( 4.64936068389 +       37.88921815429*t)-pow(t,exp)*     0.00106073143*      37.88921815429*sin( 4.64936068389 +       37.88921815429*t);
      neptune_y_1+=pow(t,exp-1)*exp*     0.00103735195*cos( 4.51191141127 +       38.37685312130*t)-pow(t,exp)*     0.00103735195*      38.37685312130*sin( 4.51191141127 +       38.37685312130*t);
      neptune_y_1+=pow(t,exp-1)*exp*     0.00118508231*cos( 1.31543504055 +       76.50988875911*t)-pow(t,exp)*     0.00118508231*      76.50988875911*sin( 1.31543504055 +       76.50988875911*t);

      return neptune_y_1;
   }

   static double neptune_y_2_(double t){
      double neptune_y_2=0.0;
      double exp=2;
      neptune_y_2+=pow(t,exp-1)*exp*     0.01620002167*cos( 5.31277371181 +       38.37685312130*t)-pow(t,exp)*     0.01620002167*      38.37685312130*sin( 5.31277371181 +       38.37685312130*t);

      return neptune_y_2;
   }

   static double neptune_y(double t){
      return neptune_y_0_(t)+neptune_y_1_(t)+neptune_y_2_(t);
   }

   static double neptune_z_0_(double t){
      double neptune_z_0=0.0;
      double exp=0;
      neptune_z_0+=-pow(t,exp)*     0.92866054405*      38.13303563780*sin( 1.44103930278 +       38.13303563780*t);
      neptune_z_0+=-pow(t,exp)*     0.01245978462*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      neptune_z_0+=-pow(t,exp)*     0.00474333567*      36.64856292950*sin( 2.52218774238 +       36.64856292950*t);
      neptune_z_0+=-pow(t,exp)*     0.00451987936*      39.61750834610*sin( 3.50949720541 +       39.61750834610*t);
      neptune_z_0+=-pow(t,exp)*     0.00417558068*      76.26607127560*sin( 5.91310695421 +       76.26607127560*t);

      return neptune_z_0;
   }

   static double neptune_z_1_(double t){
      double neptune_z_1=0.0;
      double exp=1;
      neptune_z_1+=pow(t,exp-1)*exp*     0.06832633707*cos( 3.80782656293 +       38.13303563780*t)-pow(t,exp)*     0.06832633707*      38.13303563780*sin( 3.80782656293 +       38.13303563780*t);

      return neptune_z_1;
   }

   static double neptune_z_2_(double t){
      double neptune_z_2=0.0;
      double exp=2;
      neptune_z_2+=pow(t,exp-1)*exp*     0.00291361164*cos( 5.57085222635 +       38.13303563780*t)-pow(t,exp)*     0.00291361164*      38.13303563780*sin( 5.57085222635 +       38.13303563780*t);

      return neptune_z_2;
   }

   static double neptune_z(double t){
      return neptune_z_0_(t)+neptune_z_1_(t)+neptune_z_2_(t);
   }

}
