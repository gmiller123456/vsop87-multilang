#ifndef VSOP87C_PICO_VELOCITIES
#define VSOP87C_PICO_VELOCITIES

   void vsop87c_pico_velocities_getEarth(double t,double temp[]);
   void vsop87c_pico_velocities_getJupiter(double t,double temp[]);
   void vsop87c_pico_velocities_getMars(double t,double temp[]);
   void vsop87c_pico_velocities_getMercury(double t,double temp[]);
   void vsop87c_pico_velocities_getNeptune(double t,double temp[]);
   void vsop87c_pico_velocities_getSaturn(double t,double temp[]);
   void vsop87c_pico_velocities_getUranus(double t,double temp[]);
   void vsop87c_pico_velocities_getVenus(double t,double temp[]);
#endif
