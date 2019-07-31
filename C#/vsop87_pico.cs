using static System.Math;

public class vsop87_pico {
   public static double[] getEmb(double t){
      double[] temp=new double[6];
      temp[0]=emb_a(t);
      temp[1]=emb_l(t);
      temp[2]=emb_k(t);
      temp[3]=emb_h(t);
      temp[4]=emb_q(t);
      temp[5]=emb_p(t);
      return temp;
   }

   public static double[] getJupiter(double t){
      double[] temp=new double[6];
      temp[0]=jupiter_a(t);
      temp[1]=jupiter_l(t);
      temp[2]=jupiter_k(t);
      temp[3]=jupiter_h(t);
      temp[4]=jupiter_q(t);
      temp[5]=jupiter_p(t);
      return temp;
   }

   public static double[] getMars(double t){
      double[] temp=new double[6];
      temp[0]=mars_a(t);
      temp[1]=mars_l(t);
      temp[2]=mars_k(t);
      temp[3]=mars_h(t);
      temp[4]=mars_q(t);
      temp[5]=mars_p(t);
      return temp;
   }

   public static double[] getMercury(double t){
      double[] temp=new double[6];
      temp[0]=mercury_a(t);
      temp[1]=mercury_l(t);
      temp[2]=mercury_k(t);
      temp[3]=mercury_h(t);
      temp[4]=mercury_q(t);
      temp[5]=mercury_p(t);
      return temp;
   }

   public static double[] getNeptune(double t){
      double[] temp=new double[6];
      temp[0]=neptune_a(t);
      temp[1]=neptune_l(t);
      temp[2]=neptune_k(t);
      temp[3]=neptune_h(t);
      temp[4]=neptune_q(t);
      temp[5]=neptune_p(t);
      return temp;
   }

   public static double[] getSaturn(double t){
      double[] temp=new double[6];
      temp[0]=saturn_a(t);
      temp[1]=saturn_l(t);
      temp[2]=saturn_k(t);
      temp[3]=saturn_h(t);
      temp[4]=saturn_q(t);
      temp[5]=saturn_p(t);
      return temp;
   }

   public static double[] getUranus(double t){
      double[] temp=new double[6];
      temp[0]=uranus_a(t);
      temp[1]=uranus_l(t);
      temp[2]=uranus_k(t);
      temp[3]=uranus_h(t);
      temp[4]=uranus_q(t);
      temp[5]=uranus_p(t);
      return temp;
   }

   public static double[] getVenus(double t){
      double[] temp=new double[6];
      temp[0]=venus_a(t);
      temp[1]=venus_l(t);
      temp[2]=venus_k(t);
      temp[3]=venus_h(t);
      temp[4]=venus_q(t);
      temp[5]=venus_p(t);
      return temp;
   }

   static double emb_a(double t){
      double emb_a_0=0.0;
      emb_a_0+=     1.00000101778 * Cos( 0.00000000000 +        0.00000000000*t);

      return emb_a_0;
   }

   static double emb_l(double t){
      double emb_l_0=0.0;
      emb_l_0+=     1.75347045953 * Cos( 0.00000000000 +        0.00000000000*t);

      double emb_l_1=0.0;
      emb_l_1+=  6283.07584999140 * Cos( 0.00000000000 +        0.00000000000*t);
      emb_l_1=emb_l_1 * t;

      return emb_l_0+emb_l_1;
   }

   static double emb_k(double t){
      return 0;
   }

   static double emb_h(double t){
      double emb_h_0=0.0;
      emb_h_0+=     0.01628447663 * Cos( 0.00000000000 +        0.00000000000*t);

      return emb_h_0;
   }

   static double emb_q(double t){
      return 0;
   }

   static double emb_p(double t){
      return 0;
   }

   static double jupiter_a(double t){
      double jupiter_a_0=0.0;
      jupiter_a_0+=     5.20260319132 * Cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_a_0;
   }

   static double jupiter_l(double t){
      double jupiter_l_0=0.0;
      jupiter_l_0+=     0.59954649739 * Cos( 0.00000000000 +        0.00000000000*t);

      double jupiter_l_1=0.0;
      jupiter_l_1+=   529.69096509460 * Cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_1=jupiter_l_1 * t;

      return jupiter_l_0+jupiter_l_1;
   }

   static double jupiter_k(double t){
      double jupiter_k_0=0.0;
      jupiter_k_0+=     0.04698572124 * Cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_k_0;
   }

   static double jupiter_h(double t){
      double jupiter_h_0=0.0;
      jupiter_h_0+=     0.01200385748 * Cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_h_0;
   }

   static double jupiter_q(double t){
      return 0;
   }

   static double jupiter_p(double t){
      double jupiter_p_0=0.0;
      jupiter_p_0+=     0.01118377157 * Cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_p_0;
   }

   static double mars_a(double t){
      double mars_a_0=0.0;
      mars_a_0+=     1.52367934191 * Cos( 0.00000000000 +        0.00000000000*t);

      return mars_a_0;
   }

   static double mars_l(double t){
      double mars_l_0=0.0;
      mars_l_0+=     6.20347611291 * Cos( 0.00000000000 +        0.00000000000*t);

      double mars_l_1=0.0;
      mars_l_1+=  3340.61242669981 * Cos( 0.00000000000 +        0.00000000000*t);
      mars_l_1=mars_l_1 * t;

      return mars_l_0+mars_l_1;
   }

   static double mars_k(double t){
      double mars_k_0=0.0;
      mars_k_0+=     0.08536560252 * Cos( 0.00000000000 +        0.00000000000*t);

      return mars_k_0;
   }

   static double mars_h(double t){
      double mars_h_0=0.0;
      mars_h_0+=     0.03789973236 * Cos( 3.14159265359 +        0.00000000000*t);

      return mars_h_0;
   }

   static double mars_q(double t){
      double mars_q_0=0.0;
      mars_q_0+=     0.01047042574 * Cos( 0.00000000000 +        0.00000000000*t);

      return mars_q_0;
   }

   static double mars_p(double t){
      double mars_p_0=0.0;
      mars_p_0+=     0.01228449307 * Cos( 0.00000000000 +        0.00000000000*t);

      return mars_p_0;
   }

   static double mercury_a(double t){
      double mercury_a_0=0.0;
      mercury_a_0+=     0.38709830982 * Cos( 0.00000000000 +        0.00000000000*t);

      return mercury_a_0;
   }

   static double mercury_l(double t){
      double mercury_l_0=0.0;
      mercury_l_0+=     4.40260884240 * Cos( 0.00000000000 +        0.00000000000*t);

      double mercury_l_1=0.0;
      mercury_l_1+= 26087.90314157420 * Cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_1=mercury_l_1 * t;

      return mercury_l_0+mercury_l_1;
   }

   static double mercury_k(double t){
      double mercury_k_0=0.0;
      mercury_k_0+=     0.04466059760 * Cos( 0.00000000000 +        0.00000000000*t);

      return mercury_k_0;
   }

   static double mercury_h(double t){
      double mercury_h_0=0.0;
      mercury_h_0+=     0.20072331368 * Cos( 0.00000000000 +        0.00000000000*t);

      return mercury_h_0;
   }

   static double mercury_q(double t){
      double mercury_q_0=0.0;
      mercury_q_0+=     0.04061563384 * Cos( 0.00000000000 +        0.00000000000*t);

      return mercury_q_0;
   }

   static double mercury_p(double t){
      double mercury_p_0=0.0;
      mercury_p_0+=     0.04563550461 * Cos( 0.00000000000 +        0.00000000000*t);

      return mercury_p_0;
   }

   static double neptune_a(double t){
      double neptune_a_0=0.0;
      neptune_a_0+=    30.11038686942 * Cos( 0.00000000000 +        0.00000000000*t);
      neptune_a_0+=     0.14818172119 * Cos( 1.57105922541 +      491.55792945680*t);
      neptune_a_0+=     0.03597274341 * Cos( 1.84552690821 +      175.16605980020*t);

      return neptune_a_0;
   }

   static double neptune_l(double t){
      double neptune_l_0=0.0;
      neptune_l_0+=     5.31188628676 * Cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_0+=     0.01017628072 * Cos( 0.48586478491 +        1.48447270830*t);

      double neptune_l_1=0.0;
      neptune_l_1+=    38.13303563780 * Cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_1=neptune_l_1 * t;

      return neptune_l_0+neptune_l_1;
   }

   static double neptune_k(double t){
      return 0;
   }

   static double neptune_h(double t){
      return 0;
   }

   static double neptune_q(double t){
      double neptune_q_0=0.0;
      neptune_q_0+=     0.01029147819 * Cos( 3.14159265359 +        0.00000000000*t);

      return neptune_q_0;
   }

   static double neptune_p(double t){
      double neptune_p_0=0.0;
      neptune_p_0+=     0.01151683985 * Cos( 0.00000000000 +        0.00000000000*t);

      return neptune_p_0;
   }

   static double saturn_a(double t){
      double saturn_a_0=0.0;
      saturn_a_0+=     9.55490959574 * Cos( 0.00000000000 +        0.00000000000*t);
      saturn_a_0+=     0.03363448736 * Cos( 6.00973673460 +      316.39186965660*t);

      return saturn_a_0;
   }

   static double saturn_l(double t){
      double saturn_l_0=0.0;
      saturn_l_0+=     0.87401675650 * Cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_0+=     0.01411655077 * Cos( 4.58553469006 +        7.11354700080*t);

      double saturn_l_1=0.0;
      saturn_l_1+=   213.29909543800 * Cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_1=saturn_l_1 * t;

      return saturn_l_0+saturn_l_1;
   }

   static double saturn_k(double t){
      return 0;
   }

   static double saturn_h(double t){
      double saturn_h_0=0.0;
      saturn_h_0+=     0.05542964254 * Cos( 0.00000000000 +        0.00000000000*t);

      return saturn_h_0;
   }

   static double saturn_q(double t){
      return 0;
   }

   static double saturn_p(double t){
      double saturn_p_0=0.0;
      saturn_p_0+=     0.01989147301 * Cos( 0.00000000000 +        0.00000000000*t);

      return saturn_p_0;
   }

   static double uranus_a(double t){
      double uranus_a_0=0.0;
      uranus_a_0+=    19.21844606178 * Cos( 0.00000000000 +        0.00000000000*t);
      uranus_a_0+=     0.08030476240 * Cos( 1.40140954803 +      454.90936652730*t);
      uranus_a_0+=     0.02068375131 * Cos( 1.67626096637 +      138.51749687070*t);

      return uranus_a_0;
   }

   static double uranus_l(double t){
      double uranus_l_0=0.0;
      uranus_l_0+=     5.48129387159 * Cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_0+=     0.01503941337 * Cos( 3.62721239702 +        1.48447270830*t);

      double uranus_l_1=0.0;
      uranus_l_1+=    74.78159856730 * Cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_1=uranus_l_1 * t;

      return uranus_l_0+uranus_l_1;
   }

   static double uranus_k(double t){
      double uranus_k_0=0.0;
      uranus_k_0+=     0.04595132376 * Cos( 3.14159265359 +        0.00000000000*t);

      return uranus_k_0;
   }

   static double uranus_h(double t){
      return 0;
   }

   static double uranus_q(double t){
      return 0;
   }

   static double uranus_p(double t){
      return 0;
   }

   static double venus_a(double t){
      double venus_a_0=0.0;
      venus_a_0+=     0.72332981996 * Cos( 0.00000000000 +        0.00000000000*t);

      return venus_a_0;
   }

   static double venus_l(double t){
      double venus_l_0=0.0;
      venus_l_0+=     3.17614669689 * Cos( 0.00000000000 +        0.00000000000*t);

      double venus_l_1=0.0;
      venus_l_1+= 10213.28554621100 * Cos( 0.00000000000 +        0.00000000000*t);
      venus_l_1=venus_l_1 * t;

      return venus_l_0+venus_l_1;
   }

   static double venus_k(double t){
      return 0;
   }

   static double venus_h(double t){
      return 0;
   }

   static double venus_q(double t){
      return 0;
   }

   static double venus_p(double t){
      double venus_p_0=0.0;
      venus_p_0+=     0.02882285775 * Cos( 0.00000000000 +        0.00000000000*t);

      return venus_p_0;
   }

}
