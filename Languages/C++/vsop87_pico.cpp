//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

#include "vsop87_pico.h"
#include <math.h>


void vsop87_pico::getEmb(double t,double temp[]){
   temp[0]=vsop87_pico::emb_a(t);
   temp[1]=vsop87_pico::emb_l(t);
   temp[2]=vsop87_pico::emb_k(t);
   temp[3]=vsop87_pico::emb_h(t);
   temp[4]=vsop87_pico::emb_q(t);
   temp[5]=vsop87_pico::emb_p(t);
}

void vsop87_pico::getJupiter(double t,double temp[]){
   temp[0]=vsop87_pico::jupiter_a(t);
   temp[1]=vsop87_pico::jupiter_l(t);
   temp[2]=vsop87_pico::jupiter_k(t);
   temp[3]=vsop87_pico::jupiter_h(t);
   temp[4]=vsop87_pico::jupiter_q(t);
   temp[5]=vsop87_pico::jupiter_p(t);
}

void vsop87_pico::getMars(double t,double temp[]){
   temp[0]=vsop87_pico::mars_a(t);
   temp[1]=vsop87_pico::mars_l(t);
   temp[2]=vsop87_pico::mars_k(t);
   temp[3]=vsop87_pico::mars_h(t);
   temp[4]=vsop87_pico::mars_q(t);
   temp[5]=vsop87_pico::mars_p(t);
}

void vsop87_pico::getMercury(double t,double temp[]){
   temp[0]=vsop87_pico::mercury_a(t);
   temp[1]=vsop87_pico::mercury_l(t);
   temp[2]=vsop87_pico::mercury_k(t);
   temp[3]=vsop87_pico::mercury_h(t);
   temp[4]=vsop87_pico::mercury_q(t);
   temp[5]=vsop87_pico::mercury_p(t);
}

void vsop87_pico::getNeptune(double t,double temp[]){
   temp[0]=vsop87_pico::neptune_a(t);
   temp[1]=vsop87_pico::neptune_l(t);
   temp[2]=vsop87_pico::neptune_k(t);
   temp[3]=vsop87_pico::neptune_h(t);
   temp[4]=vsop87_pico::neptune_q(t);
   temp[5]=vsop87_pico::neptune_p(t);
}

void vsop87_pico::getSaturn(double t,double temp[]){
   temp[0]=vsop87_pico::saturn_a(t);
   temp[1]=vsop87_pico::saturn_l(t);
   temp[2]=vsop87_pico::saturn_k(t);
   temp[3]=vsop87_pico::saturn_h(t);
   temp[4]=vsop87_pico::saturn_q(t);
   temp[5]=vsop87_pico::saturn_p(t);
}

void vsop87_pico::getUranus(double t,double temp[]){
   temp[0]=vsop87_pico::uranus_a(t);
   temp[1]=vsop87_pico::uranus_l(t);
   temp[2]=vsop87_pico::uranus_k(t);
   temp[3]=vsop87_pico::uranus_h(t);
   temp[4]=vsop87_pico::uranus_q(t);
   temp[5]=vsop87_pico::uranus_p(t);
}

void vsop87_pico::getVenus(double t,double temp[]){
   temp[0]=vsop87_pico::venus_a(t);
   temp[1]=vsop87_pico::venus_l(t);
   temp[2]=vsop87_pico::venus_k(t);
   temp[3]=vsop87_pico::venus_h(t);
   temp[4]=vsop87_pico::venus_q(t);
   temp[5]=vsop87_pico::venus_p(t);
}

double vsop87_pico::emb_a(double t){
   double emb_a_0=0.0;
   emb_a_0+=     1.00000101778 * cos( 0.00000000000 +        0.00000000000*t);

   return emb_a_0;
}

double vsop87_pico::emb_l(double t){
   double emb_l_0=0.0;
   emb_l_0+=     1.75347045953 * cos( 0.00000000000 +        0.00000000000*t);

   double emb_l_1=0.0;
   emb_l_1+=  6283.07584999140 * cos( 0.00000000000 +        0.00000000000*t);
   emb_l_1=emb_l_1 * t;

   return emb_l_0+emb_l_1;
}

double vsop87_pico::emb_k(double t){
   return 0;
}

double vsop87_pico::emb_h(double t){
   double emb_h_0=0.0;
   emb_h_0+=     0.01628447663 * cos( 0.00000000000 +        0.00000000000*t);

   return emb_h_0;
}

double vsop87_pico::emb_q(double t){
   return 0;
}

double vsop87_pico::emb_p(double t){
   return 0;
}

double vsop87_pico::jupiter_a(double t){
   double jupiter_a_0=0.0;
   jupiter_a_0+=     5.20260319132 * cos( 0.00000000000 +        0.00000000000*t);

   return jupiter_a_0;
}

double vsop87_pico::jupiter_l(double t){
   double jupiter_l_0=0.0;
   jupiter_l_0+=     0.59954649739 * cos( 0.00000000000 +        0.00000000000*t);

   double jupiter_l_1=0.0;
   jupiter_l_1+=   529.69096509460 * cos( 0.00000000000 +        0.00000000000*t);
   jupiter_l_1=jupiter_l_1 * t;

   return jupiter_l_0+jupiter_l_1;
}

double vsop87_pico::jupiter_k(double t){
   double jupiter_k_0=0.0;
   jupiter_k_0+=     0.04698572124 * cos( 0.00000000000 +        0.00000000000*t);

   return jupiter_k_0;
}

double vsop87_pico::jupiter_h(double t){
   double jupiter_h_0=0.0;
   jupiter_h_0+=     0.01200385748 * cos( 0.00000000000 +        0.00000000000*t);

   return jupiter_h_0;
}

double vsop87_pico::jupiter_q(double t){
   return 0;
}

double vsop87_pico::jupiter_p(double t){
   double jupiter_p_0=0.0;
   jupiter_p_0+=     0.01118377157 * cos( 0.00000000000 +        0.00000000000*t);

   return jupiter_p_0;
}

double vsop87_pico::mars_a(double t){
   double mars_a_0=0.0;
   mars_a_0+=     1.52367934191 * cos( 0.00000000000 +        0.00000000000*t);

   return mars_a_0;
}

double vsop87_pico::mars_l(double t){
   double mars_l_0=0.0;
   mars_l_0+=     6.20347611291 * cos( 0.00000000000 +        0.00000000000*t);

   double mars_l_1=0.0;
   mars_l_1+=  3340.61242669981 * cos( 0.00000000000 +        0.00000000000*t);
   mars_l_1=mars_l_1 * t;

   return mars_l_0+mars_l_1;
}

double vsop87_pico::mars_k(double t){
   double mars_k_0=0.0;
   mars_k_0+=     0.08536560252 * cos( 0.00000000000 +        0.00000000000*t);

   return mars_k_0;
}

double vsop87_pico::mars_h(double t){
   double mars_h_0=0.0;
   mars_h_0+=     0.03789973236 * cos( 3.14159265359 +        0.00000000000*t);

   return mars_h_0;
}

double vsop87_pico::mars_q(double t){
   double mars_q_0=0.0;
   mars_q_0+=     0.01047042574 * cos( 0.00000000000 +        0.00000000000*t);

   return mars_q_0;
}

double vsop87_pico::mars_p(double t){
   double mars_p_0=0.0;
   mars_p_0+=     0.01228449307 * cos( 0.00000000000 +        0.00000000000*t);

   return mars_p_0;
}

double vsop87_pico::mercury_a(double t){
   double mercury_a_0=0.0;
   mercury_a_0+=     0.38709830982 * cos( 0.00000000000 +        0.00000000000*t);

   return mercury_a_0;
}

double vsop87_pico::mercury_l(double t){
   double mercury_l_0=0.0;
   mercury_l_0+=     4.40260884240 * cos( 0.00000000000 +        0.00000000000*t);

   double mercury_l_1=0.0;
   mercury_l_1+= 26087.90314157420 * cos( 0.00000000000 +        0.00000000000*t);
   mercury_l_1=mercury_l_1 * t;

   return mercury_l_0+mercury_l_1;
}

double vsop87_pico::mercury_k(double t){
   double mercury_k_0=0.0;
   mercury_k_0+=     0.04466059760 * cos( 0.00000000000 +        0.00000000000*t);

   return mercury_k_0;
}

double vsop87_pico::mercury_h(double t){
   double mercury_h_0=0.0;
   mercury_h_0+=     0.20072331368 * cos( 0.00000000000 +        0.00000000000*t);

   return mercury_h_0;
}

double vsop87_pico::mercury_q(double t){
   double mercury_q_0=0.0;
   mercury_q_0+=     0.04061563384 * cos( 0.00000000000 +        0.00000000000*t);

   return mercury_q_0;
}

double vsop87_pico::mercury_p(double t){
   double mercury_p_0=0.0;
   mercury_p_0+=     0.04563550461 * cos( 0.00000000000 +        0.00000000000*t);

   return mercury_p_0;
}

double vsop87_pico::neptune_a(double t){
   double neptune_a_0=0.0;
   neptune_a_0+=    30.11038686942 * cos( 0.00000000000 +        0.00000000000*t);
   neptune_a_0+=     0.14818172119 * cos( 1.57105922541 +      491.55792945680*t);
   neptune_a_0+=     0.03597274341 * cos( 1.84552690821 +      175.16605980020*t);

   return neptune_a_0;
}

double vsop87_pico::neptune_l(double t){
   double neptune_l_0=0.0;
   neptune_l_0+=     5.31188628676 * cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_0+=     0.01017628072 * cos( 0.48586478491 +        1.48447270830*t);

   double neptune_l_1=0.0;
   neptune_l_1+=    38.13303563780 * cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_1=neptune_l_1 * t;

   return neptune_l_0+neptune_l_1;
}

double vsop87_pico::neptune_k(double t){
   return 0;
}

double vsop87_pico::neptune_h(double t){
   return 0;
}

double vsop87_pico::neptune_q(double t){
   double neptune_q_0=0.0;
   neptune_q_0+=     0.01029147819 * cos( 3.14159265359 +        0.00000000000*t);

   return neptune_q_0;
}

double vsop87_pico::neptune_p(double t){
   double neptune_p_0=0.0;
   neptune_p_0+=     0.01151683985 * cos( 0.00000000000 +        0.00000000000*t);

   return neptune_p_0;
}

double vsop87_pico::saturn_a(double t){
   double saturn_a_0=0.0;
   saturn_a_0+=     9.55490959574 * cos( 0.00000000000 +        0.00000000000*t);
   saturn_a_0+=     0.03363448736 * cos( 6.00973673460 +      316.39186965660*t);

   return saturn_a_0;
}

double vsop87_pico::saturn_l(double t){
   double saturn_l_0=0.0;
   saturn_l_0+=     0.87401675650 * cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_0+=     0.01411655077 * cos( 4.58553469006 +        7.11354700080*t);

   double saturn_l_1=0.0;
   saturn_l_1+=   213.29909543800 * cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_1=saturn_l_1 * t;

   return saturn_l_0+saturn_l_1;
}

double vsop87_pico::saturn_k(double t){
   return 0;
}

double vsop87_pico::saturn_h(double t){
   double saturn_h_0=0.0;
   saturn_h_0+=     0.05542964254 * cos( 0.00000000000 +        0.00000000000*t);

   return saturn_h_0;
}

double vsop87_pico::saturn_q(double t){
   return 0;
}

double vsop87_pico::saturn_p(double t){
   double saturn_p_0=0.0;
   saturn_p_0+=     0.01989147301 * cos( 0.00000000000 +        0.00000000000*t);

   return saturn_p_0;
}

double vsop87_pico::uranus_a(double t){
   double uranus_a_0=0.0;
   uranus_a_0+=    19.21844606178 * cos( 0.00000000000 +        0.00000000000*t);
   uranus_a_0+=     0.08030476240 * cos( 1.40140954803 +      454.90936652730*t);
   uranus_a_0+=     0.02068375131 * cos( 1.67626096637 +      138.51749687070*t);

   return uranus_a_0;
}

double vsop87_pico::uranus_l(double t){
   double uranus_l_0=0.0;
   uranus_l_0+=     5.48129387159 * cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_0+=     0.01503941337 * cos( 3.62721239702 +        1.48447270830*t);

   double uranus_l_1=0.0;
   uranus_l_1+=    74.78159856730 * cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_1=uranus_l_1 * t;

   return uranus_l_0+uranus_l_1;
}

double vsop87_pico::uranus_k(double t){
   double uranus_k_0=0.0;
   uranus_k_0+=     0.04595132376 * cos( 3.14159265359 +        0.00000000000*t);

   return uranus_k_0;
}

double vsop87_pico::uranus_h(double t){
   return 0;
}

double vsop87_pico::uranus_q(double t){
   return 0;
}

double vsop87_pico::uranus_p(double t){
   return 0;
}

double vsop87_pico::venus_a(double t){
   double venus_a_0=0.0;
   venus_a_0+=     0.72332981996 * cos( 0.00000000000 +        0.00000000000*t);

   return venus_a_0;
}

double vsop87_pico::venus_l(double t){
   double venus_l_0=0.0;
   venus_l_0+=     3.17614669689 * cos( 0.00000000000 +        0.00000000000*t);

   double venus_l_1=0.0;
   venus_l_1+= 10213.28554621100 * cos( 0.00000000000 +        0.00000000000*t);
   venus_l_1=venus_l_1 * t;

   return venus_l_0+venus_l_1;
}

double vsop87_pico::venus_k(double t){
   return 0;
}

double vsop87_pico::venus_h(double t){
   return 0;
}

double vsop87_pico::venus_q(double t){
   return 0;
}

double vsop87_pico::venus_p(double t){
   double venus_p_0=0.0;
   venus_p_0+=     0.02882285775 * cos( 0.00000000000 +        0.00000000000*t);

   return venus_p_0;
}

