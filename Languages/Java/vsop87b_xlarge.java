//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_xlarge {
   public static double[] getEarth(double t){
      double[] temp=new double[3];
      temp[0]=vsop87b_xlarge_earth.earth_l(t);
      temp[1]=vsop87b_xlarge_earth.earth_b(t);
      temp[2]=vsop87b_xlarge_earth.earth_r(t);
      return temp;
   }

   public static double[] getJupiter(double t){
      double[] temp=new double[3];
      temp[0]=vsop87b_xlarge_jupiter.jupiter_l(t);
      temp[1]=vsop87b_xlarge_jupiter.jupiter_b(t);
      temp[2]=vsop87b_xlarge_jupiter.jupiter_r(t);
      return temp;
   }

   public static double[] getMars(double t){
      double[] temp=new double[3];
      temp[0]=vsop87b_xlarge_mars.mars_l(t);
      temp[1]=vsop87b_xlarge_mars.mars_b(t);
      temp[2]=vsop87b_xlarge_mars.mars_r(t);
      return temp;
   }

   public static double[] getMercury(double t){
      double[] temp=new double[3];
      temp[0]=vsop87b_xlarge_mercury.mercury_l(t);
      temp[1]=vsop87b_xlarge_mercury.mercury_b(t);
      temp[2]=vsop87b_xlarge_mercury.mercury_r(t);
      return temp;
   }

   public static double[] getNeptune(double t){
      double[] temp=new double[3];
      temp[0]=vsop87b_xlarge_neptune.neptune_l(t);
      temp[1]=vsop87b_xlarge_neptune.neptune_b(t);
      temp[2]=vsop87b_xlarge_neptune.neptune_r(t);
      return temp;
   }

   public static double[] getSaturn(double t){
      double[] temp=new double[3];
      temp[0]=vsop87b_xlarge_saturn.saturn_l(t);
      temp[1]=vsop87b_xlarge_saturn.saturn_b(t);
      temp[2]=vsop87b_xlarge_saturn.saturn_r(t);
      return temp;
   }

   public static double[] getUranus(double t){
      double[] temp=new double[3];
      temp[0]=vsop87b_xlarge_uranus.uranus_l(t);
      temp[1]=vsop87b_xlarge_uranus.uranus_b(t);
      temp[2]=vsop87b_xlarge_uranus.uranus_r(t);
      return temp;
   }

   public static double[] getVenus(double t){
      double[] temp=new double[3];
      temp[0]=vsop87b_xlarge_venus.venus_l(t);
      temp[1]=vsop87b_xlarge_venus.venus_b(t);
      temp[2]=vsop87b_xlarge_venus.venus_r(t);
      return temp;
   }

}
