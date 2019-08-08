import static java.lang.Math.*;

public class vsop87d_pico_velocities_neptune{
   static double neptune_l(double t){
      double exp=0.0;
      double neptune_l_0=0.0;
      exp=0;
      neptune_l_0+=-pow(t,exp)*     5.31188633047*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      neptune_l_0+=-pow(t,exp)*     0.01798475509*      38.13303563780*sin( 2.90101273050 +       38.13303563780*t);
      neptune_l_0+=-pow(t,exp)*     0.01019727662*       1.48447270830*sin( 0.48580923660 +        1.48447270830*t);

      double neptune_l_1=0.0;
      exp=1;
      neptune_l_1+=pow(t,exp-1)*exp*    38.37687716731*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*    38.37687716731*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return neptune_l_0+neptune_l_1;
   }

   static double neptune_b(double t){
      double exp=0.0;
      double neptune_b_0=0.0;
      exp=0;
      neptune_b_0+=-pow(t,exp)*     0.03088622933*      38.13303563780*sin( 1.44104372626 +       38.13303563780*t);

      return neptune_b_0;
   }

   static double neptune_r(double t){
      double exp=0.0;
      double neptune_r_0=0.0;
      exp=0;
      neptune_r_0+=-pow(t,exp)*    30.07013206102*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      neptune_r_0+=-pow(t,exp)*     0.27062259490*      38.13303563780*sin( 1.32999458930 +       38.13303563780*t);
      neptune_r_0+=-pow(t,exp)*     0.01691764281*      36.64856292950*sin( 3.25186138896 +       36.64856292950*t);

      return neptune_r_0;
   }

}
