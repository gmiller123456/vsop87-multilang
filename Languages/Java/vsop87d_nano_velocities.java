//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87d_nano_velocities {
   public static double[] getEarth(double t){
      double[] temp=new double[3];
      temp[0]=vsop87d_nano_velocities_earth.earth_l(t) / 365250.0;
      temp[1]=vsop87d_nano_velocities_earth.earth_b(t) / 365250.0;
      temp[2]=vsop87d_nano_velocities_earth.earth_r(t) / 365250.0;
      return temp;
   }

   public static double[] getJupiter(double t){
      double[] temp=new double[3];
      temp[0]=vsop87d_nano_velocities_jupiter.jupiter_l(t) / 365250.0;
      temp[1]=vsop87d_nano_velocities_jupiter.jupiter_b(t) / 365250.0;
      temp[2]=vsop87d_nano_velocities_jupiter.jupiter_r(t) / 365250.0;
      return temp;
   }

   public static double[] getMars(double t){
      double[] temp=new double[3];
      temp[0]=vsop87d_nano_velocities_mars.mars_l(t) / 365250.0;
      temp[1]=vsop87d_nano_velocities_mars.mars_b(t) / 365250.0;
      temp[2]=vsop87d_nano_velocities_mars.mars_r(t) / 365250.0;
      return temp;
   }

   public static double[] getMercury(double t){
      double[] temp=new double[3];
      temp[0]=vsop87d_nano_velocities_mercury.mercury_l(t) / 365250.0;
      temp[1]=vsop87d_nano_velocities_mercury.mercury_b(t) / 365250.0;
      temp[2]=vsop87d_nano_velocities_mercury.mercury_r(t) / 365250.0;
      return temp;
   }

   public static double[] getNeptune(double t){
      double[] temp=new double[3];
      temp[0]=vsop87d_nano_velocities_neptune.neptune_l(t) / 365250.0;
      temp[1]=vsop87d_nano_velocities_neptune.neptune_b(t) / 365250.0;
      temp[2]=vsop87d_nano_velocities_neptune.neptune_r(t) / 365250.0;
      return temp;
   }

   public static double[] getSaturn(double t){
      double[] temp=new double[3];
      temp[0]=vsop87d_nano_velocities_saturn.saturn_l(t) / 365250.0;
      temp[1]=vsop87d_nano_velocities_saturn.saturn_b(t) / 365250.0;
      temp[2]=vsop87d_nano_velocities_saturn.saturn_r(t) / 365250.0;
      return temp;
   }

   public static double[] getUranus(double t){
      double[] temp=new double[3];
      temp[0]=vsop87d_nano_velocities_uranus.uranus_l(t) / 365250.0;
      temp[1]=vsop87d_nano_velocities_uranus.uranus_b(t) / 365250.0;
      temp[2]=vsop87d_nano_velocities_uranus.uranus_r(t) / 365250.0;
      return temp;
   }

   public static double[] getVenus(double t){
      double[] temp=new double[3];
      temp[0]=vsop87d_nano_velocities_venus.venus_l(t) / 365250.0;
      temp[1]=vsop87d_nano_velocities_venus.venus_b(t) / 365250.0;
      temp[2]=vsop87d_nano_velocities_venus.venus_r(t) / 365250.0;
      return temp;
   }

}
