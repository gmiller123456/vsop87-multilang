//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

#ifndef VSOP87C_MILLI_VELOCITIES
#define VSOP87C_MILLI_VELOCITIES

   void vsop87c_milli_velocities_getEarth(double t,double temp[]);
   void vsop87c_milli_velocities_getJupiter(double t,double temp[]);
   void vsop87c_milli_velocities_getMars(double t,double temp[]);
   void vsop87c_milli_velocities_getMercury(double t,double temp[]);
   void vsop87c_milli_velocities_getNeptune(double t,double temp[]);
   void vsop87c_milli_velocities_getSaturn(double t,double temp[]);
   void vsop87c_milli_velocities_getUranus(double t,double temp[]);
   void vsop87c_milli_velocities_getVenus(double t,double temp[]);
#endif
