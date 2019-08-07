import static java.lang.Math.*;

public class vsop87e_pico {
   public static double[] getEarth(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_pico_earth.earth_x(t);
      temp[1]=vsop87e_pico_earth.earth_y(t);
      temp[2]=vsop87e_pico_earth.earth_z(t);
      return temp;
   }

   public static double[] getJupiter(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_pico_jupiter.jupiter_x(t);
      temp[1]=vsop87e_pico_jupiter.jupiter_y(t);
      temp[2]=vsop87e_pico_jupiter.jupiter_z(t);
      return temp;
   }

   public static double[] getMars(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_pico_mars.mars_x(t);
      temp[1]=vsop87e_pico_mars.mars_y(t);
      temp[2]=vsop87e_pico_mars.mars_z(t);
      return temp;
   }

   public static double[] getMercury(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_pico_mercury.mercury_x(t);
      temp[1]=vsop87e_pico_mercury.mercury_y(t);
      temp[2]=vsop87e_pico_mercury.mercury_z(t);
      return temp;
   }

   public static double[] getNeptune(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_pico_neptune.neptune_x(t);
      temp[1]=vsop87e_pico_neptune.neptune_y(t);
      temp[2]=vsop87e_pico_neptune.neptune_z(t);
      return temp;
   }

   public static double[] getSaturn(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_pico_saturn.saturn_x(t);
      temp[1]=vsop87e_pico_saturn.saturn_y(t);
      temp[2]=vsop87e_pico_saturn.saturn_z(t);
      return temp;
   }

   public static double[] getUranus(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_pico_uranus.uranus_x(t);
      temp[1]=vsop87e_pico_uranus.uranus_y(t);
      temp[2]=vsop87e_pico_uranus.uranus_z(t);
      return temp;
   }

   public static double[] getVenus(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_pico_venus.venus_x(t);
      temp[1]=vsop87e_pico_venus.venus_y(t);
      temp[2]=vsop87e_pico_venus.venus_z(t);
      return temp;
   }

   public static double[] getSun(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_pico_sun.sun_x(t);
      temp[1]=vsop87e_pico_sun.sun_y(t);
      temp[2]=vsop87e_pico_sun.sun_z(t);
      return temp;
   }

}
