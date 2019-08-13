#ifndef VSOP87A_FULL
#define VSOP87A_FULL

   void vsop87a_full_getEarth(double t,double temp[]);
   void vsop87a_full_getEmb(double t,double temp[]);
   void vsop87a_full_getJupiter(double t,double temp[]);
   void vsop87a_full_getMars(double t,double temp[]);
   void vsop87a_full_getMercury(double t,double temp[]);
   void vsop87a_full_getNeptune(double t,double temp[]);
   void vsop87a_full_getSaturn(double t,double temp[]);
   void vsop87a_full_getUranus(double t,double temp[]);
   void vsop87a_full_getVenus(double t,double temp[]);
   void vsop87a_full_getMoon(double earth[], double emb[],double temp[]);
#endif
