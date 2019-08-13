import static java.lang.Math.*;

public class vsop87b_nano_neptune{
   static double neptune_l_0_(double t){
      double neptune_l_0=0.0;
      neptune_l_0+=     5.31188633046 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_0+=     0.01798475530 * cos( 2.90101273890 +       38.13303563780*t);
      neptune_l_0+=     0.01019727652 * cos( 0.48580922867 +        1.48447270830*t);
      neptune_l_0+=     0.00124531845 * cos( 4.83008090676 +       36.64856292950*t);

      return neptune_l_0;
   }

   static double neptune_l_1_(double t){
      double neptune_l_1=0.0;
      neptune_l_1+=    38.13303563957 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_1=neptune_l_1 * t;

      return neptune_l_1;
   }

   static double neptune_l(double t){
      return neptune_l_0_(t)+neptune_l_1_(t);
   }

   static double neptune_b_0_(double t){
      double neptune_b_0=0.0;
      neptune_b_0+=     0.03088622933 * cos( 1.44104372644 +       38.13303563780*t);

      return neptune_b_0;
   }

   static double neptune_b(double t){
      return neptune_b_0_(t);
   }

   static double neptune_r_0_(double t){
      double neptune_r_0=0.0;
      neptune_r_0+=    30.07013205828 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_r_0+=     0.27062259632 * cos( 1.32999459377 +       38.13303563780*t);
      neptune_r_0+=     0.01691764014 * cos( 3.25186135653 +       36.64856292950*t);
      neptune_r_0+=     0.00807830553 * cos( 5.18592878704 +        1.48447270830*t);
      neptune_r_0+=     0.00537760510 * cos( 4.52113935896 +       35.16409022120*t);
      neptune_r_0+=     0.00495725141 * cos( 1.57105641650 +      491.55792945680*t);
      neptune_r_0+=     0.00274571975 * cos( 1.84552258866 +      175.16605980020*t);
      neptune_r_0+=     0.00135134092 * cos( 3.37220609835 +       39.61750834610*t);
      neptune_r_0+=     0.00121801746 * cos( 5.79754470298 +       76.26607127560*t);
      neptune_r_0+=     0.00100896068 * cos( 0.37702724930 +       73.29712585900*t);

      return neptune_r_0;
   }

   static double neptune_r_1_(double t){
      double neptune_r_1=0.0;
      neptune_r_1+=     0.00236338618 * cos( 0.70497954792 +       38.13303563780*t);
      neptune_r_1=neptune_r_1 * t;

      return neptune_r_1;
   }

   static double neptune_r(double t){
      return neptune_r_0_(t)+neptune_r_1_(t);
   }

}
