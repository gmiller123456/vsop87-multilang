import static java.lang.Math.*;

public class vsop87e_xsmall {
   public static double[] getEarth(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_xsmall_earth.earth_x(t);
      temp[1]=vsop87e_xsmall_earth.earth_y(t);
      temp[2]=vsop87e_xsmall_earth.earth_z(t);
      return temp;
   }

   public static double[] getJupiter(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_xsmall_jupiter.jupiter_x(t);
      temp[1]=vsop87e_xsmall_jupiter.jupiter_y(t);
      temp[2]=vsop87e_xsmall_jupiter.jupiter_z(t);
      return temp;
   }

   public static double[] getMars(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_xsmall_mars.mars_x(t);
      temp[1]=vsop87e_xsmall_mars.mars_y(t);
      temp[2]=vsop87e_xsmall_mars.mars_z(t);
      return temp;
   }

   public static double[] getMercury(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_xsmall_mercury.mercury_x(t);
      temp[1]=vsop87e_xsmall_mercury.mercury_y(t);
      temp[2]=vsop87e_xsmall_mercury.mercury_z(t);
      return temp;
   }

   public static double[] getNeptune(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_xsmall_neptune.neptune_x(t);
      temp[1]=vsop87e_xsmall_neptune.neptune_y(t);
      temp[2]=vsop87e_xsmall_neptune.neptune_z(t);
      return temp;
   }

   public static double[] getSaturn(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_xsmall_saturn.saturn_x(t);
      temp[1]=vsop87e_xsmall_saturn.saturn_y(t);
      temp[2]=vsop87e_xsmall_saturn.saturn_z(t);
      return temp;
   }

   public static double[] getUranus(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_xsmall_uranus.uranus_x(t);
      temp[1]=vsop87e_xsmall_uranus.uranus_y(t);
      temp[2]=vsop87e_xsmall_uranus.uranus_z(t);
      return temp;
   }

   public static double[] getVenus(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_xsmall_venus.venus_x(t);
      temp[1]=vsop87e_xsmall_venus.venus_y(t);
      temp[2]=vsop87e_xsmall_venus.venus_z(t);
      return temp;
   }

   public static double[] getSun(double t){
      double[] temp=new double[3];
      temp[0]=vsop87e_xsmall_sun.sun_x(t);
      temp[1]=vsop87e_xsmall_sun.sun_y(t);
      temp[2]=vsop87e_xsmall_sun.sun_z(t);
      return temp;
   }

}
