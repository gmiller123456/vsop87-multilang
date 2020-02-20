//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

#ifndef VSOP87D_XXLARGE
#define VSOP87D_XXLARGE

class vsop87d_xxlarge{
   public:
   static void getEarth(double t,double temp[]);
   static void getJupiter(double t,double temp[]);
   static void getMars(double t,double temp[]);
   static void getMercury(double t,double temp[]);
   static void getNeptune(double t,double temp[]);
   static void getSaturn(double t,double temp[]);
   static void getUranus(double t,double temp[]);
   static void getVenus(double t,double temp[]);

   private:
   static double earth_l(double t);
   static double earth_b(double t);
   static double earth_r(double t);
   static double jupiter_l(double t);
   static double jupiter_b(double t);
   static double jupiter_r(double t);
   static double mars_l(double t);
   static double mars_b(double t);
   static double mars_r(double t);
   static double mercury_l(double t);
   static double mercury_b(double t);
   static double mercury_r(double t);
   static double neptune_l(double t);
   static double neptune_b(double t);
   static double neptune_r(double t);
   static double saturn_l(double t);
   static double saturn_b(double t);
   static double saturn_r(double t);
   static double uranus_l(double t);
   static double uranus_b(double t);
   static double uranus_r(double t);
   static double venus_l(double t);
   static double venus_b(double t);
   static double venus_r(double t);
};
#endif
