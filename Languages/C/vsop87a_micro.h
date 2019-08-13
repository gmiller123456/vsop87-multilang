#ifndef VSOP87A_MICRO
#define VSOP87A_MICRO

   void vsop87a_micro_getEarth(double t,double temp[]);
   void vsop87a_micro_getEmb(double t,double temp[]);
   void vsop87a_micro_getJupiter(double t,double temp[]);
   void vsop87a_micro_getMars(double t,double temp[]);
   void vsop87a_micro_getMercury(double t,double temp[]);
   void vsop87a_micro_getNeptune(double t,double temp[]);
   void vsop87a_micro_getSaturn(double t,double temp[]);
   void vsop87a_micro_getUranus(double t,double temp[]);
   void vsop87a_micro_getVenus(double t,double temp[]);
   void vsop87a_micro_getMoon(double earth[], double emb[],double temp[]);
#endif
