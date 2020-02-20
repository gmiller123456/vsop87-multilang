//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

#ifndef VSOP87A_NANO
#define VSOP87A_NANO

   void vsop87a_nano_getEarth(double t,double temp[]);
   void vsop87a_nano_getEmb(double t,double temp[]);
   void vsop87a_nano_getJupiter(double t,double temp[]);
   void vsop87a_nano_getMars(double t,double temp[]);
   void vsop87a_nano_getMercury(double t,double temp[]);
   void vsop87a_nano_getNeptune(double t,double temp[]);
   void vsop87a_nano_getSaturn(double t,double temp[]);
   void vsop87a_nano_getUranus(double t,double temp[]);
   void vsop87a_nano_getVenus(double t,double temp[]);
   void vsop87a_nano_getMoon(double earth[], double emb[],double temp[]);
#endif
