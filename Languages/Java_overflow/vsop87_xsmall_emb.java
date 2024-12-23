//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_xsmall_emb{
   static double emb_a_0_(double t){
      double emb_a_0=0.0;
      emb_a_0+=     1.00000101778 * cos( 0.00000000000 +        0.00000000000*t);
      emb_a_0+=     0.00001120473 * cos( 2.30855131827 +    11506.76976979360*t);
      emb_a_0+=     0.00000760929 * cos( 1.42260407149 +     3930.20969621960*t);
      emb_a_0+=     0.00000408978 * cos( 5.98724345380 +     7860.41939243920*t);
      emb_a_0+=     0.00000249981 * cos( 1.12650483648 +    11790.62908865880*t);
      emb_a_0+=     0.00000200599 * cos( 1.88809198469 +    10977.07880469900*t);
      emb_a_0+=     0.00000178074 * cos( 3.44544104119 +    17260.15465469040*t);
      emb_a_0+=     0.00000159326 * cos( 2.54909632545 +    15720.83878487840*t);
      emb_a_0+=     0.00000147658 * cos( 5.82785456030 +     1577.34354244780*t);
      emb_a_0+=     0.00000109781 * cos( 1.17475009534 +     5753.38488489680*t);
      emb_a_0+=     0.00000104096 * cos( 3.97163623540 +    19651.04848109800*t);

      return emb_a_0;
   }

   static double emb_a(double t){
      return emb_a_0_(t);
   }

   static double emb_l_0_(double t){
      double emb_l_0=0.0;
      emb_l_0+=     1.75347045953 * cos( 0.00000000000 +        0.00000000000*t);
      emb_l_0+=     0.00003417568 * cos( 2.82887613695 +        3.52311834900*t);
      emb_l_0+=     0.00002056367 * cos( 3.87949142209 +    11506.76976979360*t);
      emb_l_0+=     0.00001664099 * cos( 6.13527980181 +     3930.20969621960*t);
      emb_l_0+=     0.00001263517 * cos( 2.03240137643 +      529.69096509460*t);
      emb_l_0+=     0.00001268612 * cos( 1.27476353113 +     7860.41939243920*t);
      emb_l_0+=     0.00000901845 * cos( 2.04505535578 +       26.29831979980*t);
      emb_l_0+=     0.00000853421 * cos( 3.50940633514 +      398.14900340820*t);
      emb_l_0+=     0.00001089612 * cos( 1.10654596593 +     1577.34354244780*t);
      emb_l_0+=     0.00000603627 * cos( 2.69740270021 +    11790.62908865880*t);
      emb_l_0+=     0.00000480499 * cos( 4.20673996315 +      775.52261132400*t);
      emb_l_0+=     0.00000514274 * cos( 2.73992482008 +     5753.38488489680*t);
      emb_l_0+=     0.00000356604 * cos( 2.91954116867 +        0.06731030280*t);
      emb_l_0+=     0.00000377300 * cos( 3.44491389994 +    10977.07880469900*t);
      emb_l_0+=     0.00000278206 * cos( 1.90026794482 +      796.29800681640*t);
      emb_l_0+=     0.00000237655 * cos( 1.15089696936 +     5223.69391980220*t);
      emb_l_0+=     0.00000329412 * cos( 4.12004912713 +    15720.83878487840*t);
      emb_l_0+=     0.00000277296 * cos( 5.02126378438 +    17260.15465469040*t);
      emb_l_0+=     0.00000166274 * cos( 4.80363171369 +     2544.31441988340*t);
      emb_l_0+=     0.00000193313 * cos( 5.54264947747 +    19651.04848109800*t);
      emb_l_0+=     0.00000126209 * cos( 1.08301258683 +       20.77539549240*t);
      emb_l_0+=     0.00000155515 * cos( 0.83287668374 +      213.29909543800*t);
      emb_l_0+=     0.00000144608 * cos( 2.52725393873 +     5507.55323866740*t);
      emb_l_0+=     0.00000115148 * cos( 0.64544911683 +        0.98032106820*t);
      emb_l_0+=     0.00000101743 * cos( 4.26677440004 +        7.11354700080*t);
      emb_l_0+=     0.00000118606 * cos( 0.68201823673 +    23581.25817731760*t);
      emb_l_0+=     0.00000105933 * cos( 5.24130347950 +     5884.92684658320*t);

      return emb_l_0;
   }

   static double emb_l_1_(double t){
      double emb_l_1=0.0;
      emb_l_1+=  6283.07584999140 * cos( 0.00000000000 +        0.00000000000*t);
      emb_l_1+=     0.00000425257 * cos( 1.59049255748 +        3.52311834900*t);
      emb_l_1+=     0.00000119300 * cos( 5.79559871816 +       26.29831979980*t);
      emb_l_1=emb_l_1 * t;

      return emb_l_1;
   }

   static double emb_l_2_(double t){
      double emb_l_2=0.0;
      emb_l_2+=     0.00000991013 * cos( 3.14159265359 +        0.00000000000*t);
      emb_l_2=emb_l_2 * t * t;

      return emb_l_2;
   }

   static double emb_l(double t){
      return emb_l_0_(t)+emb_l_1_(t)+emb_l_2_(t);
   }

   static double emb_k_0_(double t){
      double emb_k_0=0.0;
      emb_k_0+=     0.00374081650 * cos( 3.14159265359 +        0.00000000000*t);
      emb_k_0+=     0.00001988852 * cos( 4.23374621009 +     1577.34354244780*t);
      emb_k_0+=     0.00001859231 * cos( 0.55463591479 +     5223.69391980220*t);
      emb_k_0+=     0.00001497439 * cos( 3.72409379834 +      529.69096509460*t);
      emb_k_0+=     0.00000823038 * cos( 0.33112005725 +     2352.86615377180*t);
      emb_k_0+=     0.00000483421 * cos( 3.17751155482 +    10213.28554621100*t);
      emb_k_0+=     0.00000483174 * cos( 5.65660621901 +     5507.55323866740*t);
      emb_k_0+=     0.00000441134 * cos( 1.21138303352 +      398.14900340820*t);
      emb_k_0+=     0.00000354179 * cos( 0.13054037265 +     4694.00295470760*t);
      emb_k_0+=     0.00000278456 * cos( 5.27885763953 +     1059.38193018920*t);
      emb_k_0+=     0.00000294442 * cos( 3.92692187453 +      775.52261132400*t);
      emb_k_0+=     0.00000229665 * cos( 0.79626727662 +     9437.76293488700*t);
      emb_k_0+=     0.00000211663 * cos( 1.69085049749 +    10977.07880469900*t);
      emb_k_0+=     0.00000178132 * cos( 4.06312103648 +    17789.84561978500*t);
      emb_k_0+=     0.00000128829 * cos( 2.21903872695 +    13367.97263110660*t);

      return emb_k_0;
   }

   static double emb_k_1_(double t){
      double emb_k_1=0.0;
      emb_k_1+=     0.00082267418 * cos( 3.14159265359 +        0.00000000000*t);
      emb_k_1=emb_k_1 * t;

      return emb_k_1;
   }

   static double emb_k_2_(double t){
      double emb_k_2=0.0;
      emb_k_2+=     0.00002762465 * cos( 0.00000000000 +        0.00000000000*t);
      emb_k_2=emb_k_2 * t * t;

      return emb_k_2;
   }

   static double emb_k_3_(double t){
      double emb_k_3=0.0;
      emb_k_3+=     0.00000116955 * cos( 0.00000000000 +        0.00000000000*t);
      emb_k_3=emb_k_3 * t * t * t;

      return emb_k_3;
   }

   static double emb_k(double t){
      return emb_k_0_(t)+emb_k_1_(t)+emb_k_2_(t)+emb_k_3_(t);
   }

   static double emb_h_0_(double t){
      double emb_h_0=0.0;
      emb_h_0+=     0.01628447663 * cos( 0.00000000000 +        0.00000000000*t);
      emb_h_0+=     0.00001986929 * cos( 5.80464886318 +     1577.34354244780*t);
      emb_h_0+=     0.00001864029 * cos( 2.12650300196 +     5223.69391980220*t);
      emb_h_0+=     0.00001510978 * cos( 2.16070229051 +      529.69096509460*t);
      emb_h_0+=     0.00000819544 * cos( 5.04224333254 +     2352.86615377180*t);
      emb_h_0+=     0.00000483355 * cos( 0.94384676328 +     5507.55323866740*t);
      emb_h_0+=     0.00000480730 * cos( 1.60400966048 +    10213.28554621100*t);
      emb_h_0+=     0.00000448935 * cos( 5.94987750309 +      398.14900340820*t);
      emb_h_0+=     0.00000354605 * cos( 1.70188277221 +     4694.00295470760*t);
      emb_h_0+=     0.00000278987 * cos( 3.70742582004 +     1059.38193018920*t);
      emb_h_0+=     0.00000294243 * cos( 2.35624478692 +      775.52261132400*t);
      emb_h_0+=     0.00000230089 * cos( 2.36629249490 +     9437.76293488700*t);
      emb_h_0+=     0.00000210039 * cos( 3.28388935733 +    10977.07880469900*t);
      emb_h_0+=     0.00000178133 * cos( 2.49083562024 +    17789.84561978500*t);
      emb_h_0+=     0.00000129280 * cos( 3.78871222562 +    13367.97263110660*t);

      return emb_h_0;
   }

   static double emb_h_1_(double t){
      double emb_h_1=0.0;
      emb_h_1+=     0.00062029655 * cos( 3.14159265359 +        0.00000000000*t);
      emb_h_1=emb_h_1 * t;

      return emb_h_1;
   }

   static double emb_h_2_(double t){
      double emb_h_2=0.0;
      emb_h_2+=     0.00003382631 * cos( 3.14159265359 +        0.00000000000*t);
      emb_h_2=emb_h_2 * t * t;

      return emb_h_2;
   }

   static double emb_h(double t){
      return emb_h_0_(t)+emb_h_1_(t)+emb_h_2_(t);
   }

   static double emb_q_1_(double t){
      double emb_q_1=0.0;
      emb_q_1+=     0.00113468869 * cos( 3.14159265359 +        0.00000000000*t);
      emb_q_1=emb_q_1 * t;

      return emb_q_1;
   }

   static double emb_q_2_(double t){
      double emb_q_2=0.0;
      emb_q_2+=     0.00001237314 * cos( 0.00000000000 +        0.00000000000*t);
      emb_q_2=emb_q_2 * t * t;

      return emb_q_2;
   }

   static double emb_q_3_(double t){
      double emb_q_3=0.0;
      emb_q_3+=     0.00000126542 * cos( 0.00000000000 +        0.00000000000*t);
      emb_q_3=emb_q_3 * t * t * t;

      return emb_q_3;
   }

   static double emb_q(double t){
      return emb_q_1_(t)+emb_q_2_(t)+emb_q_3_(t);
   }

   static double emb_p_1_(double t){
      double emb_p_1=0.0;
      emb_p_1+=     0.00010180375 * cos( 0.00000000000 +        0.00000000000*t);
      emb_p_1=emb_p_1 * t;

      return emb_p_1;
   }

   static double emb_p_2_(double t){
      double emb_p_2=0.0;
      emb_p_2+=     0.00004701998 * cos( 0.00000000000 +        0.00000000000*t);
      emb_p_2=emb_p_2 * t * t;

      return emb_p_2;
   }

   static double emb_p(double t){
      return emb_p_1_(t)+emb_p_2_(t);
   }

}
