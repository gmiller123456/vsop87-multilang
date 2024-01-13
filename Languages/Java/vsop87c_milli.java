//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87c_milli {
   public static double[] getEarth(double t){
      double[] temp=new double[3];
      temp[0]=vsop87c_milli_earth.earth_x(t);
      temp[1]=vsop87c_milli_earth.earth_y(t);
      temp[2]=vsop87c_milli_earth.earth_z(t);
      return temp;
   }

   public static double[] getJupiter(double t){
      double[] temp=new double[3];
      temp[0]=vsop87c_milli_jupiter.jupiter_x(t);
      temp[1]=vsop87c_milli_jupiter.jupiter_y(t);
      temp[2]=vsop87c_milli_jupiter.jupiter_z(t);
      return temp;
   }

   public static double[] getMars(double t){
      double[] temp=new double[3];
      temp[0]=vsop87c_milli_mars.mars_x(t);
      temp[1]=vsop87c_milli_mars.mars_y(t);
      temp[2]=vsop87c_milli_mars.mars_z(t);
      return temp;
   }

   public static double[] getMercury(double t){
      double[] temp=new double[3];
      temp[0]=vsop87c_milli_mercury.mercury_x(t);
      temp[1]=vsop87c_milli_mercury.mercury_y(t);
      temp[2]=vsop87c_milli_mercury.mercury_z(t);
      return temp;
   }

   public static double[] getNeptune(double t){
      double[] temp=new double[3];
      temp[0]=vsop87c_milli_neptune.neptune_x(t);
      temp[1]=vsop87c_milli_neptune.neptune_y(t);
      temp[2]=vsop87c_milli_neptune.neptune_z(t);
      return temp;
   }

   public static double[] getSaturn(double t){
      double[] temp=new double[3];
      temp[0]=vsop87c_milli_saturn.saturn_x(t);
      temp[1]=vsop87c_milli_saturn.saturn_y(t);
      temp[2]=vsop87c_milli_saturn.saturn_z(t);
      return temp;
   }

   public static double[] getUranus(double t){
      double[] temp=new double[3];
      temp[0]=vsop87c_milli_uranus.uranus_x(t);
      temp[1]=vsop87c_milli_uranus.uranus_y(t);
      temp[2]=vsop87c_milli_uranus.uranus_z(t);
      return temp;
   }

   public static double[] getVenus(double t){
      double[] temp=new double[3];
      temp[0]=vsop87c_milli_venus.venus_x(t);
      temp[1]=vsop87c_milli_venus.venus_y(t);
      temp[2]=vsop87c_milli_venus.venus_z(t);
      return temp;
   }

}
