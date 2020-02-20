//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

#ifndef VSOP87_PICO
#define VSOP87_PICO

   void vsop87_pico_getEmb(double t,double temp[]);
   void vsop87_pico_getJupiter(double t,double temp[]);
   void vsop87_pico_getMars(double t,double temp[]);
   void vsop87_pico_getMercury(double t,double temp[]);
   void vsop87_pico_getNeptune(double t,double temp[]);
   void vsop87_pico_getSaturn(double t,double temp[]);
   void vsop87_pico_getUranus(double t,double temp[]);
   void vsop87_pico_getVenus(double t,double temp[]);
#endif
