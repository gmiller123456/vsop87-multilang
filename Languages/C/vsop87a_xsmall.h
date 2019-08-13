#ifndef VSOP87A_XSMALL
#define VSOP87A_XSMALL

   void vsop87a_xsmall_getEarth(double t,double temp[]);
   void vsop87a_xsmall_getEmb(double t,double temp[]);
   void vsop87a_xsmall_getJupiter(double t,double temp[]);
   void vsop87a_xsmall_getMars(double t,double temp[]);
   void vsop87a_xsmall_getMercury(double t,double temp[]);
   void vsop87a_xsmall_getNeptune(double t,double temp[]);
   void vsop87a_xsmall_getSaturn(double t,double temp[]);
   void vsop87a_xsmall_getUranus(double t,double temp[]);
   void vsop87a_xsmall_getVenus(double t,double temp[]);
   void vsop87a_xsmall_getMoon(double earth[], double emb[],double temp[]);
#endif
