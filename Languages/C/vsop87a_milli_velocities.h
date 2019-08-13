#ifndef VSOP87A_MILLI_VELOCITIES
#define VSOP87A_MILLI_VELOCITIES

   void vsop87a_milli_velocities_getEarth(double t,double temp[]);
   void vsop87a_milli_velocities_getEmb(double t,double temp[]);
   void vsop87a_milli_velocities_getJupiter(double t,double temp[]);
   void vsop87a_milli_velocities_getMars(double t,double temp[]);
   void vsop87a_milli_velocities_getMercury(double t,double temp[]);
   void vsop87a_milli_velocities_getNeptune(double t,double temp[]);
   void vsop87a_milli_velocities_getSaturn(double t,double temp[]);
   void vsop87a_milli_velocities_getUranus(double t,double temp[]);
   void vsop87a_milli_velocities_getVenus(double t,double temp[]);
   void vsop87a_milli_velocities_getMoon(double earth[], double emb[],double temp[]);
#endif
