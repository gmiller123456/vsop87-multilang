//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87a_milli_mars{
   static double mars_x_0_(double t){
      double mars_x_0=0.0;
      mars_x_0+=     1.51769936383 * cos( 6.20403346548 +     3340.61242669980*t);
      mars_x_0+=     0.19502945246 * cos( 3.14159265359 +        0.00000000000*t);
      mars_x_0+=     0.07070919655 * cos( 0.25870338558 +     6681.22485339960*t);
      mars_x_0+=     0.00494196914 * cos( 0.59669127768 +    10021.83728009940*t);
      mars_x_0+=     0.00040938237 * cos( 0.93473307419 +    13362.44970679920*t);
      mars_x_0+=     0.00021067199 * cos( 1.80435656154 +     3337.08930835080*t);
      mars_x_0+=     0.00021041626 * cos( 1.17895619474 +     3344.13554504880*t);
      mars_x_0+=     0.00011370375 * cos( 4.83265211109 +     1059.38193018920*t);
      mars_x_0+=     0.00013527976 * cos( 0.63010765169 +      529.69096509460*t);
      mars_x_0+=     0.00006774107 * cos( 3.61785048282 +     3340.59517304760*t);
      mars_x_0+=     0.00006774060 * cos( 5.64862211431 +     3340.62968035200*t);
      mars_x_0+=     0.00008226069 * cos( 1.86843519535 +     2281.23049651060*t);
      mars_x_0+=     0.00005469046 * cos( 1.13324429003 +     2942.46342329160*t);
      mars_x_0+=     0.00004817134 * cos( 1.85091045536 +     3738.76143010800*t);
      mars_x_0+=     0.00004937579 * cos( 4.43241440654 +     5621.84292321040*t);
      mars_x_0+=     0.00005276260 * cos( 2.33148083116 +     6151.53388830500*t);
      mars_x_0+=     0.00003636667 * cos( 6.11397592106 +      796.29800681640*t);
      mars_x_0+=     0.00003725823 * cos( 1.27280182943 +    16703.06213349900*t);
      mars_x_0+=     0.00003729746 * cos( 1.21398323637 +      398.14900340820*t);
      mars_x_0+=     0.00002368513 * cos( 2.96841895360 +     2544.31441988340*t);
      mars_x_0+=     0.00002397865 * cos( 0.63553674054 +     3149.16416058820*t);
      mars_x_0+=     0.00002274646 * cos( 2.35708328853 +     3532.06069281140*t);
      mars_x_0+=     0.00001977579 * cos( 2.14087826110 +     6677.70173505060*t);
      mars_x_0+=     0.00002229176 * cos( 1.69588962513 +     3340.54511639700*t);
      mars_x_0+=     0.00002229117 * cos( 1.28739323821 +     3340.67973700260*t);
      mars_x_0+=     0.00002182206 * cos( 1.69655112969 +     6283.07584999140*t);
      mars_x_0+=     0.00002241010 * cos( 4.82218655311 +     8962.45534991020*t);
      mars_x_0+=     0.00001677693 * cos( 3.14442612046 +     5884.92684658320*t);
      mars_x_0+=     0.00001630482 * cos( 0.24117974845 +     4136.91043351620*t);
      mars_x_0+=     0.00001958162 * cos( 1.51914544555 +     6684.74797174860*t);
      mars_x_0+=     0.00001378470 * cos( 2.18011900021 +     1751.53953141600*t);
      mars_x_0+=     0.00001289804 * cos( 4.70970778621 +     1194.44701022460*t);
      mars_x_0+=     0.00001468124 * cos( 1.87869730543 +     3870.30339179440*t);
      mars_x_0+=     0.00001290170 * cos( 0.43596325296 +     2810.92146160520*t);
      mars_x_0+=     0.00001572540 * cos( 4.84809921789 +     1589.07289528380*t);

      return mars_x_0;
   }

   static double mars_x_1_(double t){
      double mars_x_1=0.0;
      mars_x_1+=     0.00861441374 * cos( 3.14159265359 +        0.00000000000*t);
      mars_x_1+=     0.00552437949 * cos( 5.09565872891 +     6681.22485339960*t);
      mars_x_1+=     0.00077184977 * cos( 5.43315636209 +    10021.83728009940*t);
      mars_x_1+=     0.00020467294 * cos( 5.57051812369 +     3340.61242669980*t);
      mars_x_1+=     0.00009589581 * cos( 5.77107234791 +    13362.44970679920*t);
      mars_x_1+=     0.00002620610 * cos( 6.22441295122 +     3344.13554504880*t);
      mars_x_1+=     0.00002620537 * cos( 3.04172154436 +     3337.08930835080*t);
      mars_x_1+=     0.00001163612 * cos( 6.10909257097 +    16703.06213349900*t);
      mars_x_1=mars_x_1 * t;

      return mars_x_1;
   }

   static double mars_x_2_(double t){
      double mars_x_2=0.0;
      mars_x_2+=     0.00056323939 * cos( 0.00000000000 +        0.00000000000*t);
      mars_x_2+=     0.00022122528 * cos( 3.54372113272 +     6681.22485339960*t);
      mars_x_2+=     0.00006091409 * cos( 3.93272649649 +    10021.83728009940*t);
      mars_x_2+=     0.00001451998 * cos( 3.64655666460 +     3340.61242669980*t);
      mars_x_2+=     0.00001130613 * cos( 4.28827023222 +    13362.44970679920*t);
      mars_x_2=mars_x_2 * t * t;

      return mars_x_2;
   }

   static double mars_x(double t){
      return mars_x_0_(t)+mars_x_1_(t)+mars_x_2_(t);
   }

   static double mars_y_0_(double t){
      double mars_y_0=0.0;
      mars_y_0+=     1.51558976277 * cos( 4.63212206588 +     3340.61242669980*t);
      mars_y_0+=     0.07064550239 * cos( 4.97051892902 +     6681.22485339960*t);
      mars_y_0+=     0.08655481102 * cos( 0.00000000000 +        0.00000000000*t);
      mars_y_0+=     0.00493872848 * cos( 5.30877806694 +    10021.83728009940*t);
      mars_y_0+=     0.00040917422 * cos( 5.64698263703 +    13362.44970679920*t);
      mars_y_0+=     0.00021036784 * cos( 0.23240270955 +     3337.08930835080*t);
      mars_y_0+=     0.00021012921 * cos( 5.89022773653 +     3344.13554504880*t);
      mars_y_0+=     0.00011370034 * cos( 3.26131408801 +     1059.38193018920*t);
      mars_y_0+=     0.00013324177 * cos( 5.34259389724 +      529.69096509460*t);
      mars_y_0+=     0.00006764653 * cos( 4.07671230062 +     3340.62968035200*t);
      mars_y_0+=     0.00006764700 * cos( 2.04594066912 +     3340.59517304760*t);
      mars_y_0+=     0.00008346220 * cos( 3.42464704002 +     2281.23049651060*t);
      mars_y_0+=     0.00005400042 * cos( 5.81507793194 +     2942.46342329160*t);
      mars_y_0+=     0.00004809528 * cos( 0.27875310553 +     3738.76143010800*t);
      mars_y_0+=     0.00004849523 * cos( 2.85190987550 +     5621.84292321040*t);
      mars_y_0+=     0.00005263268 * cos( 0.75811089992 +     6151.53388830500*t);
      mars_y_0+=     0.00003609527 * cos( 4.53244488294 +      796.29800681640*t);
      mars_y_0+=     0.00003724293 * cos( 5.98516013322 +    16703.06213349900*t);
      mars_y_0+=     0.00003805073 * cos( 5.94234296399 +      398.14900340820*t);
      mars_y_0+=     0.00002394490 * cos( 5.34678816191 +     3149.16416058820*t);
      mars_y_0+=     0.00002251027 * cos( 0.76938193892 +     3532.06069281140*t);
      mars_y_0+=     0.00001975769 * cos( 0.56949816579 +     6677.70173505060*t);
      mars_y_0+=     0.00002226030 * cos( 5.99867316288 +     3340.67973700260*t);
      mars_y_0+=     0.00002226089 * cos( 0.12398424247 +     3340.54511639700*t);
      mars_y_0+=     0.00002177591 * cos( 0.12334436516 +     6283.07584999140*t);
      mars_y_0+=     0.00001690439 * cos( 1.58331163985 +     5884.92684658320*t);
      mars_y_0+=     0.00002234121 * cos( 3.24909113765 +     8962.45534991020*t);
      mars_y_0+=     0.00001628395 * cos( 4.95250906888 +     4136.91043351620*t);
      mars_y_0+=     0.00001956411 * cos( 6.23095843554 +     6684.74797174860*t);
      mars_y_0+=     0.00001697214 * cos( 0.81869636263 +     2544.31441988340*t);
      mars_y_0+=     0.00001385946 * cos( 3.73437191158 +     1751.53953141600*t);
      mars_y_0+=     0.00001439619 * cos( 5.19505958438 +     2810.92146160520*t);
      mars_y_0+=     0.00001281890 * cos( 3.13035275682 +     1194.44701022460*t);
      mars_y_0+=     0.00001469783 * cos( 0.30415060688 +     3870.30339179440*t);
      mars_y_0+=     0.00001571880 * cos( 3.27679498650 +     1589.07289528380*t);
      mars_y_0+=     0.00001575854 * cos( 2.78266835243 +     5092.15195811580*t);

      return mars_y_0;
   }

   static double mars_y_1_(double t){
      double mars_y_1=0.0;
      mars_y_1+=     0.01427324210 * cos( 3.14159265359 +        0.00000000000*t);
      mars_y_1+=     0.00551063753 * cos( 3.52128320402 +     6681.22485339960*t);
      mars_y_1+=     0.00077091913 * cos( 3.86082685753 +    10021.83728009940*t);
      mars_y_1+=     0.00037310491 * cos( 1.16016958445 +     3340.61242669980*t);
      mars_y_1+=     0.00009582122 * cos( 4.19942354479 +    13362.44970679920*t);
      mars_y_1+=     0.00002617695 * cos( 1.47284555520 +     3337.08930835080*t);
      mars_y_1+=     0.00002611572 * cos( 4.65030772498 +     3344.13554504880*t);
      mars_y_1+=     0.00001162955 * cos( 4.53778503576 +    16703.06213349900*t);
      mars_y_1=mars_y_1 * t;

      return mars_y_1;
   }

   static double mars_y_2_(double t){
      double mars_y_2=0.0;
      mars_y_2+=     0.00035396765 * cos( 3.14159265359 +        0.00000000000*t);
      mars_y_2+=     0.00021950759 * cos( 1.96291594946 +     6681.22485339960*t);
      mars_y_2+=     0.00006075990 * cos( 2.35864321001 +    10021.83728009940*t);
      mars_y_2+=     0.00002571425 * cos( 5.64795745327 +     3340.61242669980*t);
      mars_y_2+=     0.00001129099 * cos( 2.71576248963 +    13362.44970679920*t);
      mars_y_2=mars_y_2 * t * t;

      return mars_y_2;
   }

   static double mars_y_3_(double t){
      double mars_y_3=0.0;
      mars_y_3+=     0.00001448778 * cos( 0.00000000000 +        0.00000000000*t);
      mars_y_3=mars_y_3 * t * t * t;

      return mars_y_3;
   }

   static double mars_y(double t){
      return mars_y_0_(t)+mars_y_1_(t)+mars_y_2_(t)+mars_y_3_(t);
   }

   static double mars_z_0_(double t){
      double mars_z_0=0.0;
      mars_z_0+=     0.04901207220 * cos( 3.76712324286 +     3340.61242669980*t);
      mars_z_0+=     0.00660669541 * cos( 0.00000000000 +        0.00000000000*t);
      mars_z_0+=     0.00228333904 * cos( 4.10544022266 +     6681.22485339960*t);
      mars_z_0+=     0.00015958402 * cos( 4.44367058261 +    10021.83728009940*t);
      mars_z_0+=     0.00001321976 * cos( 4.78186604114 +    13362.44970679920*t);

      return mars_z_0;
   }

   static double mars_z_1_(double t){
      double mars_z_1=0.0;
      mars_z_1+=     0.00331842958 * cos( 6.05027773492 +     3340.61242669980*t);
      mars_z_1+=     0.00047930411 * cos( 3.14159265359 +        0.00000000000*t);
      mars_z_1+=     0.00009896501 * cos( 1.61155844715 +     6681.22485339960*t);
      mars_z_1+=     0.00001700147 * cos( 2.63703242065 +    10021.83728009940*t);
      mars_z_1=mars_z_1 * t;

      return mars_z_1;
   }

   static double mars_z_2_(double t){
      double mars_z_2=0.0;
      mars_z_2+=     0.00013705360 * cos( 1.04212852598 +     3340.61242669980*t);
      mars_z_2+=     0.00005931596 * cos( 3.14159265359 +        0.00000000000*t);
      mars_z_2=mars_z_2 * t * t;

      return mars_z_2;
   }

   static double mars_z(double t){
      return mars_z_0_(t)+mars_z_1_(t)+mars_z_2_(t);
   }

}
