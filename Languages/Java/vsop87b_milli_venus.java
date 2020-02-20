//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_milli_venus{
   static double venus_l_0_(double t){
      double venus_l_0=0.0;
      venus_l_0+=     3.17614666774 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_0+=     0.01353968419 * cos( 5.59313319619 +    10213.28554621100*t);
      venus_l_0+=     0.00089891645 * cos( 5.30650047764 +    20426.57109242200*t);
      venus_l_0+=     0.00005477194 * cos( 4.41630661466 +     7860.41939243920*t);
      venus_l_0+=     0.00003455741 * cos( 2.69964447820 +    11790.62908865880*t);
      venus_l_0+=     0.00002372061 * cos( 2.99377542079 +     3930.20969621960*t);
      venus_l_0+=     0.00001317168 * cos( 5.18668228402 +       26.29831979980*t);
      venus_l_0+=     0.00001664146 * cos( 4.25018630147 +     1577.34354244780*t);
      venus_l_0+=     0.00001438387 * cos( 4.15745084182 +     9683.59458111640*t);
      venus_l_0+=     0.00001200521 * cos( 6.15357116043 +    30639.85663863300*t);

      return venus_l_0;
   }

   static double venus_l_1_(double t){
      double venus_l_1=0.0;
      venus_l_1+= 10213.28554621638 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_1+=     0.00095617813 * cos( 2.46406511110 +    10213.28554621100*t);
      venus_l_1+=     0.00007787201 * cos( 0.62478482220 +    20426.57109242200*t);
      venus_l_1=venus_l_1 * t;

      return venus_l_1;
   }

   static double venus_l_2_(double t){
      double venus_l_2=0.0;
      venus_l_2+=     0.00003894209 * cos( 0.34823650721 +    10213.28554621100*t);
      venus_l_2=venus_l_2 * t * t;

      return venus_l_2;
   }

   static double venus_l(double t){
      return venus_l_0_(t)+venus_l_1_(t)+venus_l_2_(t);
   }

   static double venus_b_0_(double t){
      double venus_b_0=0.0;
      venus_b_0+=     0.05923638472 * cos( 0.26702775812 +    10213.28554621100*t);
      venus_b_0+=     0.00040107978 * cos( 1.14737178112 +    20426.57109242200*t);
      venus_b_0+=     0.00032814918 * cos( 3.14159265359 +        0.00000000000*t);
      venus_b_0+=     0.00001011392 * cos( 1.08946119730 +    30639.85663863300*t);

      return venus_b_0;
   }

   static double venus_b_1_(double t){
      double venus_b_1=0.0;
      venus_b_1+=     0.00287821243 * cos( 1.88964962838 +    10213.28554621100*t);
      venus_b_1+=     0.00003499578 * cos( 3.71117560516 +    20426.57109242200*t);
      venus_b_1+=     0.00001257844 * cos( 0.00000000000 +        0.00000000000*t);
      venus_b_1=venus_b_1 * t;

      return venus_b_1;
   }

   static double venus_b_2_(double t){
      double venus_b_2=0.0;
      venus_b_2+=     0.00012657745 * cos( 3.34796457029 +    10213.28554621100*t);
      venus_b_2=venus_b_2 * t * t;

      return venus_b_2;
   }

   static double venus_b(double t){
      return venus_b_0_(t)+venus_b_1_(t)+venus_b_2_(t);
   }

   static double venus_r_0_(double t){
      double venus_r_0=0.0;
      venus_r_0+=     0.72334820891 * cos( 0.00000000000 +        0.00000000000*t);
      venus_r_0+=     0.00489824182 * cos( 4.02151831717 +    10213.28554621100*t);
      venus_r_0+=     0.00001658058 * cos( 4.90206728031 +    20426.57109242200*t);
      venus_r_0+=     0.00001632096 * cos( 2.84548795207 +     7860.41939243920*t);
      venus_r_0+=     0.00001378043 * cos( 1.12846591367 +    11790.62908865880*t);

      return venus_r_0;
   }

   static double venus_r_1_(double t){
      double venus_r_1=0.0;
      venus_r_1+=     0.00034551041 * cos( 0.89198706276 +    10213.28554621100*t);
      venus_r_1=venus_r_1 * t;

      return venus_r_1;
   }

   static double venus_r_2_(double t){
      double venus_r_2=0.0;
      venus_r_2+=     0.00001406587 * cos( 5.06366395112 +    10213.28554621100*t);
      venus_r_2=venus_r_2 * t * t;

      return venus_r_2;
   }

   static double venus_r(double t){
      return venus_r_0_(t)+venus_r_1_(t)+venus_r_2_(t);
   }

}
