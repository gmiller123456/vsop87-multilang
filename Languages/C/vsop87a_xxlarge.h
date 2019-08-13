#ifndef VSOP87A_XXLARGE
#define VSOP87A_XXLARGE

   void vsop87a_xxlarge_getEarth(double t,double temp[]);
   void vsop87a_xxlarge_getEmb(double t,double temp[]);
   void vsop87a_xxlarge_getJupiter(double t,double temp[]);
   void vsop87a_xxlarge_getMars(double t,double temp[]);
   void vsop87a_xxlarge_getMercury(double t,double temp[]);
   void vsop87a_xxlarge_getNeptune(double t,double temp[]);
   void vsop87a_xxlarge_getSaturn(double t,double temp[]);
   void vsop87a_xxlarge_getUranus(double t,double temp[]);
   void vsop87a_xxlarge_getVenus(double t,double temp[]);
   void vsop87a_xxlarge_getMoon(double earth[], double emb[],double temp[]);
#endif
