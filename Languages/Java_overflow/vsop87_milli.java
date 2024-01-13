//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87_milli {
   public static double[] getEmb(double t){
      double[] temp=new double[6];
      temp[0]=vsop87_milli_emb.emb_a(t);
      temp[1]=vsop87_milli_emb.emb_l(t);
      temp[2]=vsop87_milli_emb.emb_k(t);
      temp[3]=vsop87_milli_emb.emb_h(t);
      temp[4]=vsop87_milli_emb.emb_q(t);
      temp[5]=vsop87_milli_emb.emb_p(t);
      return temp;
   }

   public static double[] getJupiter(double t){
      double[] temp=new double[6];
      temp[0]=vsop87_milli_jupiter.jupiter_a(t);
      temp[1]=vsop87_milli_jupiter.jupiter_l(t);
      temp[2]=vsop87_milli_jupiter.jupiter_k(t);
      temp[3]=vsop87_milli_jupiter.jupiter_h(t);
      temp[4]=vsop87_milli_jupiter.jupiter_q(t);
      temp[5]=vsop87_milli_jupiter.jupiter_p(t);
      return temp;
   }

   public static double[] getMars(double t){
      double[] temp=new double[6];
      temp[0]=vsop87_milli_mars.mars_a(t);
      temp[1]=vsop87_milli_mars.mars_l(t);
      temp[2]=vsop87_milli_mars.mars_k(t);
      temp[3]=vsop87_milli_mars.mars_h(t);
      temp[4]=vsop87_milli_mars.mars_q(t);
      temp[5]=vsop87_milli_mars.mars_p(t);
      return temp;
   }

   public static double[] getMercury(double t){
      double[] temp=new double[6];
      temp[0]=vsop87_milli_mercury.mercury_a(t);
      temp[1]=vsop87_milli_mercury.mercury_l(t);
      temp[2]=vsop87_milli_mercury.mercury_k(t);
      temp[3]=vsop87_milli_mercury.mercury_h(t);
      temp[4]=vsop87_milli_mercury.mercury_q(t);
      temp[5]=vsop87_milli_mercury.mercury_p(t);
      return temp;
   }

   public static double[] getNeptune(double t){
      double[] temp=new double[6];
      temp[0]=vsop87_milli_neptune.neptune_a(t);
      temp[1]=vsop87_milli_neptune.neptune_l(t);
      temp[2]=vsop87_milli_neptune.neptune_k(t);
      temp[3]=vsop87_milli_neptune.neptune_h(t);
      temp[4]=vsop87_milli_neptune.neptune_q(t);
      temp[5]=vsop87_milli_neptune.neptune_p(t);
      return temp;
   }

   public static double[] getSaturn(double t){
      double[] temp=new double[6];
      temp[0]=vsop87_milli_saturn.saturn_a(t);
      temp[1]=vsop87_milli_saturn.saturn_l(t);
      temp[2]=vsop87_milli_saturn.saturn_k(t);
      temp[3]=vsop87_milli_saturn.saturn_h(t);
      temp[4]=vsop87_milli_saturn.saturn_q(t);
      temp[5]=vsop87_milli_saturn.saturn_p(t);
      return temp;
   }

   public static double[] getUranus(double t){
      double[] temp=new double[6];
      temp[0]=vsop87_milli_uranus.uranus_a(t);
      temp[1]=vsop87_milli_uranus.uranus_l(t);
      temp[2]=vsop87_milli_uranus.uranus_k(t);
      temp[3]=vsop87_milli_uranus.uranus_h(t);
      temp[4]=vsop87_milli_uranus.uranus_q(t);
      temp[5]=vsop87_milli_uranus.uranus_p(t);
      return temp;
   }

   public static double[] getVenus(double t){
      double[] temp=new double[6];
      temp[0]=vsop87_milli_venus.venus_a(t);
      temp[1]=vsop87_milli_venus.venus_l(t);
      temp[2]=vsop87_milli_venus.venus_k(t);
      temp[3]=vsop87_milli_venus.venus_h(t);
      temp[4]=vsop87_milli_venus.venus_q(t);
      temp[5]=vsop87_milli_venus.venus_p(t);
      return temp;
   }

}
