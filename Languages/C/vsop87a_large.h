//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

#ifndef VSOP87A_LARGE
#define VSOP87A_LARGE

   void vsop87a_large_getEarth(double t,double temp[]);
   void vsop87a_large_getEmb(double t,double temp[]);
   void vsop87a_large_getJupiter(double t,double temp[]);
   void vsop87a_large_getMars(double t,double temp[]);
   void vsop87a_large_getMercury(double t,double temp[]);
   void vsop87a_large_getNeptune(double t,double temp[]);
   void vsop87a_large_getSaturn(double t,double temp[]);
   void vsop87a_large_getUranus(double t,double temp[]);
   void vsop87a_large_getVenus(double t,double temp[]);
   void vsop87a_large_getMoon(double earth[], double emb[],double temp[]);
#endif
