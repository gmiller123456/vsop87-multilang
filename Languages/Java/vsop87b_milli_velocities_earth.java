//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_milli_velocities_earth{
   static double earth_l_0_(double t){
      double earth_l_0=0.0;
      double exp=0;
      earth_l_0+=-pow(t,exp)*     1.75347045673*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      earth_l_0+=-pow(t,exp)*     0.03341656453*    6283.07584999140*sin( 4.66925680415 +     6283.07584999140*t);
      earth_l_0+=-pow(t,exp)*     0.00034894275*   12566.15169998280*sin( 4.62610242189 +    12566.15169998280*t);
      earth_l_0+=-pow(t,exp)*     0.00003417572*       3.52311834900*sin( 2.82886579754 +        3.52311834900*t);
      earth_l_0+=-pow(t,exp)*     0.00003497056*    5753.38488489680*sin( 2.74411783405 +     5753.38488489680*t);
      earth_l_0+=-pow(t,exp)*     0.00003135899*   77713.77146812050*sin( 3.62767041756 +    77713.77146812050*t);
      earth_l_0+=-pow(t,exp)*     0.00002676218*    7860.41939243920*sin( 4.41808345438 +     7860.41939243920*t);
      earth_l_0+=-pow(t,exp)*     0.00002342691*    3930.20969621960*sin( 6.13516214446 +     3930.20969621960*t);
      earth_l_0+=-pow(t,exp)*     0.00001273165*     529.69096509460*sin( 2.03709657878 +      529.69096509460*t);
      earth_l_0+=-pow(t,exp)*     0.00001324294*   11506.76976979360*sin( 0.74246341673 +    11506.76976979360*t);
      earth_l_0+=-pow(t,exp)*     0.00001199167*    1577.34354244780*sin( 1.10962946234 +     1577.34354244780*t);

      return earth_l_0;
   }

   static double earth_l_1_(double t){
      double earth_l_1=0.0;
      double exp=1;
      earth_l_1+=pow(t,exp-1)*exp*  6283.07584999140*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*  6283.07584999140*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      earth_l_1+=pow(t,exp-1)*exp*     0.00206058863*cos( 2.67823455808 +     6283.07584999140*t)-pow(t,exp)*     0.00206058863*    6283.07584999140*sin( 2.67823455808 +     6283.07584999140*t);
      earth_l_1+=pow(t,exp-1)*exp*     0.00004303419*cos( 2.63512233481 +    12566.15169998280*t)-pow(t,exp)*     0.00004303419*   12566.15169998280*sin( 2.63512233481 +    12566.15169998280*t);

      return earth_l_1;
   }

   static double earth_l_2_(double t){
      double earth_l_2=0.0;
      double exp=2;
      earth_l_2+=pow(t,exp-1)*exp*     0.00008721859*cos( 1.07253635559 +     6283.07584999140*t)-pow(t,exp)*     0.00008721859*    6283.07584999140*sin( 1.07253635559 +     6283.07584999140*t);

      return earth_l_2;
   }

   static double earth_l(double t){
      return earth_l_0_(t)+earth_l_1_(t)+earth_l_2_(t);
   }

   static double earth_b_1_(double t){
      double earth_b_1=0.0;
      double exp=1;
      earth_b_1+=pow(t,exp-1)*exp*     0.00227777722*cos( 3.41376620530 +     6283.07584999140*t)-pow(t,exp)*     0.00227777722*    6283.07584999140*sin( 3.41376620530 +     6283.07584999140*t);
      earth_b_1+=pow(t,exp-1)*exp*     0.00003805678*cos( 3.37063423795 +    12566.15169998280*t)-pow(t,exp)*     0.00003805678*   12566.15169998280*sin( 3.37063423795 +    12566.15169998280*t);
      earth_b_1+=pow(t,exp-1)*exp*     0.00003619589*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00003619589*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return earth_b_1;
   }

   static double earth_b_2_(double t){
      double earth_b_2=0.0;
      double exp=2;
      earth_b_2+=pow(t,exp-1)*exp*     0.00009721424*cos( 5.15192809920 +     6283.07584999140*t)-pow(t,exp)*     0.00009721424*    6283.07584999140*sin( 5.15192809920 +     6283.07584999140*t);

      return earth_b_2;
   }

   static double earth_b(double t){
      return earth_b_1_(t)+earth_b_2_(t);
   }

   static double earth_r_0_(double t){
      double earth_r_0=0.0;
      double exp=0;
      earth_r_0+=-pow(t,exp)*     1.00013988784*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      earth_r_0+=-pow(t,exp)*     0.01670699632*    6283.07584999140*sin( 3.09846350258 +     6283.07584999140*t);
      earth_r_0+=-pow(t,exp)*     0.00013956024*   12566.15169998280*sin( 3.05524609456 +    12566.15169998280*t);
      earth_r_0+=-pow(t,exp)*     0.00003083720*   77713.77146812050*sin( 5.19846674381 +    77713.77146812050*t);
      earth_r_0+=-pow(t,exp)*     0.00001628463*    5753.38488489680*sin( 1.17387558054 +     5753.38488489680*t);
      earth_r_0+=-pow(t,exp)*     0.00001575572*    7860.41939243920*sin( 2.84685214877 +     7860.41939243920*t);

      return earth_r_0;
   }

   static double earth_r_1_(double t){
      double earth_r_1=0.0;
      double exp=1;
      earth_r_1+=pow(t,exp-1)*exp*     0.00103018607*cos( 1.10748968172 +     6283.07584999140*t)-pow(t,exp)*     0.00103018607*    6283.07584999140*sin( 1.10748968172 +     6283.07584999140*t);
      earth_r_1+=pow(t,exp-1)*exp*     0.00001721238*cos( 1.06442300386 +    12566.15169998280*t)-pow(t,exp)*     0.00001721238*   12566.15169998280*sin( 1.06442300386 +    12566.15169998280*t);

      return earth_r_1;
   }

   static double earth_r_2_(double t){
      double earth_r_2=0.0;
      double exp=2;
      earth_r_2+=pow(t,exp-1)*exp*     0.00004359385*cos( 5.78455133808 +     6283.07584999140*t)-pow(t,exp)*     0.00004359385*    6283.07584999140*sin( 5.78455133808 +     6283.07584999140*t);

      return earth_r_2;
   }

   static double earth_r(double t){
      return earth_r_0_(t)+earth_r_1_(t)+earth_r_2_(t);
   }

}
