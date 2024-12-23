import static java.lang.Math.*;

public class vsop87b_nano_velocities_neptune{
   static double neptune_l(double t){
      double exp=0.0;
      double neptune_l_0=0.0;
      exp=0;
      neptune_l_0+=-pow(t,exp)*     5.31188633046*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      neptune_l_0+=-pow(t,exp)*     0.01798475530*      38.13303563780*sin( 2.90101273890 +       38.13303563780*t);
      neptune_l_0+=-pow(t,exp)*     0.01019727652*       1.48447270830*sin( 0.48580922867 +        1.48447270830*t);
      neptune_l_0+=-pow(t,exp)*     0.00124531845*      36.64856292950*sin( 4.83008090676 +       36.64856292950*t);

      double neptune_l_1=0.0;
      exp=1;
      neptune_l_1+=pow(t,exp-1)*exp*    38.13303563957*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*    38.13303563957*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return neptune_l_0+neptune_l_1;
   }

   static double neptune_b(double t){
      double exp=0.0;
      double neptune_b_0=0.0;
      exp=0;
      neptune_b_0+=-pow(t,exp)*     0.03088622933*      38.13303563780*sin( 1.44104372644 +       38.13303563780*t);

      return neptune_b_0;
   }

   static double neptune_r(double t){
      double exp=0.0;
      double neptune_r_0=0.0;
      exp=0;
      neptune_r_0+=-pow(t,exp)*    30.07013205828*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      neptune_r_0+=-pow(t,exp)*     0.27062259632*      38.13303563780*sin( 1.32999459377 +       38.13303563780*t);
      neptune_r_0+=-pow(t,exp)*     0.01691764014*      36.64856292950*sin( 3.25186135653 +       36.64856292950*t);
      neptune_r_0+=-pow(t,exp)*     0.00807830553*       1.48447270830*sin( 5.18592878704 +        1.48447270830*t);
      neptune_r_0+=-pow(t,exp)*     0.00537760510*      35.16409022120*sin( 4.52113935896 +       35.16409022120*t);
      neptune_r_0+=-pow(t,exp)*     0.00495725141*     491.55792945680*sin( 1.57105641650 +      491.55792945680*t);
      neptune_r_0+=-pow(t,exp)*     0.00274571975*     175.16605980020*sin( 1.84552258866 +      175.16605980020*t);
      neptune_r_0+=-pow(t,exp)*     0.00135134092*      39.61750834610*sin( 3.37220609835 +       39.61750834610*t);
      neptune_r_0+=-pow(t,exp)*     0.00121801746*      76.26607127560*sin( 5.79754470298 +       76.26607127560*t);
      neptune_r_0+=-pow(t,exp)*     0.00100896068*      73.29712585900*sin( 0.37702724930 +       73.29712585900*t);

      double neptune_r_1=0.0;
      exp=1;
      neptune_r_1+=pow(t,exp-1)*exp*     0.00236338618*cos( 0.70497954792 +       38.13303563780*t)-pow(t,exp)*     0.00236338618*      38.13303563780*sin( 0.70497954792 +       38.13303563780*t);

      return neptune_r_0+neptune_r_1;
   }

}
