//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

#ifndef VSOP87C_PICO
#define VSOP87C_PICO

   void vsop87c_pico_getEarth(double t,double temp[]);
   void vsop87c_pico_getJupiter(double t,double temp[]);
   void vsop87c_pico_getMars(double t,double temp[]);
   void vsop87c_pico_getMercury(double t,double temp[]);
   void vsop87c_pico_getNeptune(double t,double temp[]);
   void vsop87c_pico_getSaturn(double t,double temp[]);
   void vsop87c_pico_getUranus(double t,double temp[]);
   void vsop87c_pico_getVenus(double t,double temp[]);
#endif
