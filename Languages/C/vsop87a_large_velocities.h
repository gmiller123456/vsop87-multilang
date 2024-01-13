//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

#ifndef VSOP87A_LARGE_VELOCITIES
#define VSOP87A_LARGE_VELOCITIES

   void vsop87a_large_velocities_getEarth(double t,double temp[]);
   void vsop87a_large_velocities_getEmb(double t,double temp[]);
   void vsop87a_large_velocities_getJupiter(double t,double temp[]);
   void vsop87a_large_velocities_getMars(double t,double temp[]);
   void vsop87a_large_velocities_getMercury(double t,double temp[]);
   void vsop87a_large_velocities_getNeptune(double t,double temp[]);
   void vsop87a_large_velocities_getSaturn(double t,double temp[]);
   void vsop87a_large_velocities_getUranus(double t,double temp[]);
   void vsop87a_large_velocities_getVenus(double t,double temp[]);
   void vsop87a_large_velocities_getMoon(double earth[], double emb[],double temp[]);
#endif
