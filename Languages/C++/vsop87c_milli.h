#ifndef VSOP87C_MILLI
#define VSOP87C_MILLI

class vsop87c_milli{
   public:
   static void getEarth(double t,double temp[]);
   static void getJupiter(double t,double temp[]);
   static void getMars(double t,double temp[]);
   static void getMercury(double t,double temp[]);
   static void getNeptune(double t,double temp[]);
   static void getSaturn(double t,double temp[]);
   static void getUranus(double t,double temp[]);
   static void getVenus(double t,double temp[]);

   private:
   static double earth_x(double t);
   static double earth_y(double t);
   static double earth_z(double t);
   static double jupiter_x(double t);
   static double jupiter_y(double t);
   static double jupiter_z(double t);
   static double mars_x(double t);
   static double mars_y(double t);
   static double mars_z(double t);
   static double mercury_x(double t);
   static double mercury_y(double t);
   static double mercury_z(double t);
   static double neptune_x(double t);
   static double neptune_y(double t);
   static double neptune_z(double t);
   static double saturn_x(double t);
   static double saturn_y(double t);
   static double saturn_z(double t);
   static double uranus_x(double t);
   static double uranus_y(double t);
   static double uranus_z(double t);
   static double venus_x(double t);
   static double venus_y(double t);
   static double venus_z(double t);
};
#endif
