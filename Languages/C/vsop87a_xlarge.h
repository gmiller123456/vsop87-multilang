#ifndef VSOP87A_XLARGE
#define VSOP87A_XLARGE

   void vsop87a_xlarge_getEarth(double t,double temp[]);
   void vsop87a_xlarge_getEmb(double t,double temp[]);
   void vsop87a_xlarge_getJupiter(double t,double temp[]);
   void vsop87a_xlarge_getMars(double t,double temp[]);
   void vsop87a_xlarge_getMercury(double t,double temp[]);
   void vsop87a_xlarge_getNeptune(double t,double temp[]);
   void vsop87a_xlarge_getSaturn(double t,double temp[]);
   void vsop87a_xlarge_getUranus(double t,double temp[]);
   void vsop87a_xlarge_getVenus(double t,double temp[]);
   void vsop87a_xlarge_getMoon(double earth[], double emb[],double temp[]);
#endif
