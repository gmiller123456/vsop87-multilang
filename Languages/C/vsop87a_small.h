#ifndef VSOP87A_SMALL
#define VSOP87A_SMALL

   void vsop87a_small_getEarth(double t,double temp[]);
   void vsop87a_small_getEmb(double t,double temp[]);
   void vsop87a_small_getJupiter(double t,double temp[]);
   void vsop87a_small_getMars(double t,double temp[]);
   void vsop87a_small_getMercury(double t,double temp[]);
   void vsop87a_small_getNeptune(double t,double temp[]);
   void vsop87a_small_getSaturn(double t,double temp[]);
   void vsop87a_small_getUranus(double t,double temp[]);
   void vsop87a_small_getVenus(double t,double temp[]);
   void vsop87a_small_getMoon(double earth[], double emb[],double temp[]);
#endif
