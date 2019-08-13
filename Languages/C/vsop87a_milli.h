#ifndef VSOP87A_MILLI
#define VSOP87A_MILLI

   void vsop87a_milli_getEarth(double t,double temp[]);
   void vsop87a_milli_getEmb(double t,double temp[]);
   void vsop87a_milli_getJupiter(double t,double temp[]);
   void vsop87a_milli_getMars(double t,double temp[]);
   void vsop87a_milli_getMercury(double t,double temp[]);
   void vsop87a_milli_getNeptune(double t,double temp[]);
   void vsop87a_milli_getSaturn(double t,double temp[]);
   void vsop87a_milli_getUranus(double t,double temp[]);
   void vsop87a_milli_getVenus(double t,double temp[]);
   void vsop87a_milli_getMoon(double earth[], double emb[],double temp[]);
#endif
