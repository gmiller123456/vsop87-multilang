//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

#ifndef VSOP87_XSMALL
#define VSOP87_XSMALL

class vsop87_xsmall{
   public:
   static void getEmb(double t,double temp[]);
   static void getJupiter(double t,double temp[]);
   static void getMars(double t,double temp[]);
   static void getMercury(double t,double temp[]);
   static void getNeptune(double t,double temp[]);
   static void getSaturn(double t,double temp[]);
   static void getUranus(double t,double temp[]);
   static void getVenus(double t,double temp[]);

   private:
   static double emb_a(double t);
   static double emb_l(double t);
   static double emb_k(double t);
   static double emb_h(double t);
   static double emb_q(double t);
   static double emb_p(double t);
   static double jupiter_a(double t);
   static double jupiter_l(double t);
   static double jupiter_k(double t);
   static double jupiter_h(double t);
   static double jupiter_q(double t);
   static double jupiter_p(double t);
   static double mars_a(double t);
   static double mars_l(double t);
   static double mars_k(double t);
   static double mars_h(double t);
   static double mars_q(double t);
   static double mars_p(double t);
   static double mercury_a(double t);
   static double mercury_l(double t);
   static double mercury_k(double t);
   static double mercury_h(double t);
   static double mercury_q(double t);
   static double mercury_p(double t);
   static double neptune_a(double t);
   static double neptune_l(double t);
   static double neptune_k(double t);
   static double neptune_h(double t);
   static double neptune_q(double t);
   static double neptune_p(double t);
   static double saturn_a(double t);
   static double saturn_l(double t);
   static double saturn_k(double t);
   static double saturn_h(double t);
   static double saturn_q(double t);
   static double saturn_p(double t);
   static double uranus_a(double t);
   static double uranus_l(double t);
   static double uranus_k(double t);
   static double uranus_h(double t);
   static double uranus_q(double t);
   static double uranus_p(double t);
   static double venus_a(double t);
   static double venus_l(double t);
   static double venus_k(double t);
   static double venus_h(double t);
   static double venus_q(double t);
   static double venus_p(double t);
};
#endif
