#ifndef VSOP87A_FULL_VELOCITIES
#define VSOP87A_FULL_VELOCITIES

   void vsop87a_full_velocities_getEarth(double t,double temp[]);
   void vsop87a_full_velocities_getEmb(double t,double temp[]);
   void vsop87a_full_velocities_getJupiter(double t,double temp[]);
   void vsop87a_full_velocities_getMars(double t,double temp[]);
   void vsop87a_full_velocities_getMercury(double t,double temp[]);
   void vsop87a_full_velocities_getNeptune(double t,double temp[]);
   void vsop87a_full_velocities_getSaturn(double t,double temp[]);
   void vsop87a_full_velocities_getUranus(double t,double temp[]);
   void vsop87a_full_velocities_getVenus(double t,double temp[]);
   void vsop87a_full_velocities_getMoon(double earth[], double emb[],double temp[]);
#endif
