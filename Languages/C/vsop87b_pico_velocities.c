//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

#include <math.h>
double vsop87b_pico_velocities_earth_l(double t);
double vsop87b_pico_velocities_earth_b(double t);
double vsop87b_pico_velocities_earth_r(double t);
double vsop87b_pico_velocities_jupiter_l(double t);
double vsop87b_pico_velocities_jupiter_b(double t);
double vsop87b_pico_velocities_jupiter_r(double t);
double vsop87b_pico_velocities_mars_l(double t);
double vsop87b_pico_velocities_mars_b(double t);
double vsop87b_pico_velocities_mars_r(double t);
double vsop87b_pico_velocities_mercury_l(double t);
double vsop87b_pico_velocities_mercury_b(double t);
double vsop87b_pico_velocities_mercury_r(double t);
double vsop87b_pico_velocities_neptune_l(double t);
double vsop87b_pico_velocities_neptune_b(double t);
double vsop87b_pico_velocities_neptune_r(double t);
double vsop87b_pico_velocities_saturn_l(double t);
double vsop87b_pico_velocities_saturn_b(double t);
double vsop87b_pico_velocities_saturn_r(double t);
double vsop87b_pico_velocities_uranus_l(double t);
double vsop87b_pico_velocities_uranus_b(double t);
double vsop87b_pico_velocities_uranus_r(double t);
double vsop87b_pico_velocities_venus_l(double t);
double vsop87b_pico_velocities_venus_b(double t);
double vsop87b_pico_velocities_venus_r(double t);


void vsop87b_pico_velocities_getEarth(double t,double temp[]){
   temp[0]=vsop87b_pico_velocities_earth_l(t) / 365250.0;
   temp[1]=vsop87b_pico_velocities_earth_b(t) / 365250.0;
   temp[2]=vsop87b_pico_velocities_earth_r(t) / 365250.0;
}

void vsop87b_pico_velocities_getJupiter(double t,double temp[]){
   temp[0]=vsop87b_pico_velocities_jupiter_l(t) / 365250.0;
   temp[1]=vsop87b_pico_velocities_jupiter_b(t) / 365250.0;
   temp[2]=vsop87b_pico_velocities_jupiter_r(t) / 365250.0;
}

void vsop87b_pico_velocities_getMars(double t,double temp[]){
   temp[0]=vsop87b_pico_velocities_mars_l(t) / 365250.0;
   temp[1]=vsop87b_pico_velocities_mars_b(t) / 365250.0;
   temp[2]=vsop87b_pico_velocities_mars_r(t) / 365250.0;
}

void vsop87b_pico_velocities_getMercury(double t,double temp[]){
   temp[0]=vsop87b_pico_velocities_mercury_l(t) / 365250.0;
   temp[1]=vsop87b_pico_velocities_mercury_b(t) / 365250.0;
   temp[2]=vsop87b_pico_velocities_mercury_r(t) / 365250.0;
}

void vsop87b_pico_velocities_getNeptune(double t,double temp[]){
   temp[0]=vsop87b_pico_velocities_neptune_l(t) / 365250.0;
   temp[1]=vsop87b_pico_velocities_neptune_b(t) / 365250.0;
   temp[2]=vsop87b_pico_velocities_neptune_r(t) / 365250.0;
}

void vsop87b_pico_velocities_getSaturn(double t,double temp[]){
   temp[0]=vsop87b_pico_velocities_saturn_l(t) / 365250.0;
   temp[1]=vsop87b_pico_velocities_saturn_b(t) / 365250.0;
   temp[2]=vsop87b_pico_velocities_saturn_r(t) / 365250.0;
}

void vsop87b_pico_velocities_getUranus(double t,double temp[]){
   temp[0]=vsop87b_pico_velocities_uranus_l(t) / 365250.0;
   temp[1]=vsop87b_pico_velocities_uranus_b(t) / 365250.0;
   temp[2]=vsop87b_pico_velocities_uranus_r(t) / 365250.0;
}

void vsop87b_pico_velocities_getVenus(double t,double temp[]){
   temp[0]=vsop87b_pico_velocities_venus_l(t) / 365250.0;
   temp[1]=vsop87b_pico_velocities_venus_b(t) / 365250.0;
   temp[2]=vsop87b_pico_velocities_venus_r(t) / 365250.0;
}

double vsop87b_pico_velocities_earth_l(double t){
   double exp=0.0;
   double earth_l_0=0.0;
   exp=0;
   earth_l_0+=-pow(t,exp)*     1.75347045673*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   earth_l_0+=-pow(t,exp)*     0.03341656453*    6283.07584999140*sin( 4.66925680415 +     6283.07584999140*t);

   double earth_l_1=0.0;
   exp=1;
   earth_l_1+=pow(t,exp-1)*exp*  6283.07584999140*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*  6283.07584999140*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

   return earth_l_0+earth_l_1;
}

double vsop87b_pico_velocities_earth_b(double t){
   double exp=0.0;
   return 0;
}

double vsop87b_pico_velocities_earth_r(double t){
   double exp=0.0;
   double earth_r_0=0.0;
   exp=0;
   earth_r_0+=-pow(t,exp)*     1.00013988784*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   earth_r_0+=-pow(t,exp)*     0.01670699632*    6283.07584999140*sin( 3.09846350258 +     6283.07584999140*t);

   return earth_r_0;
}

double vsop87b_pico_velocities_jupiter_l(double t){
   double exp=0.0;
   double jupiter_l_0=0.0;
   exp=0;
   jupiter_l_0+=-pow(t,exp)*     0.59954691494*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   jupiter_l_0+=-pow(t,exp)*     0.09695898719*     529.69096509460*sin( 5.06191793158 +      529.69096509460*t);

   double jupiter_l_1=0.0;
   exp=1;
   jupiter_l_1+=pow(t,exp-1)*exp*   529.69096508814*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*   529.69096508814*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

   return jupiter_l_0+jupiter_l_1;
}

double vsop87b_pico_velocities_jupiter_b(double t){
   double exp=0.0;
   double jupiter_b_0=0.0;
   exp=0;
   jupiter_b_0+=-pow(t,exp)*     0.02268615702*     529.69096509460*sin( 3.55852606721 +      529.69096509460*t);

   return jupiter_b_0;
}

double vsop87b_pico_velocities_jupiter_r(double t){
   double exp=0.0;
   double jupiter_r_0=0.0;
   exp=0;
   jupiter_r_0+=-pow(t,exp)*     5.20887429326*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   jupiter_r_0+=-pow(t,exp)*     0.25209327119*     529.69096509460*sin( 3.49108639871 +      529.69096509460*t);

   double jupiter_r_1=0.0;
   exp=1;
   jupiter_r_1+=pow(t,exp-1)*exp*     0.01271801520*cos( 2.64937512894 +      529.69096509460*t)-pow(t,exp)*     0.01271801520*     529.69096509460*sin( 2.64937512894 +      529.69096509460*t);

   return jupiter_r_0+jupiter_r_1;
}

double vsop87b_pico_velocities_mars_l(double t){
   double exp=0.0;
   double mars_l_0=0.0;
   exp=0;
   mars_l_0+=-pow(t,exp)*     6.20347711581*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   mars_l_0+=-pow(t,exp)*     0.18656368093*    3340.61242669980*sin( 5.05037100270 +     3340.61242669980*t);
   mars_l_0+=-pow(t,exp)*     0.01108216816*    6681.22485339960*sin( 5.40099836344 +     6681.22485339960*t);

   double mars_l_1=0.0;
   exp=1;
   mars_l_1+=pow(t,exp-1)*exp*  3340.61242700512*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*  3340.61242700512*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   mars_l_1+=pow(t,exp-1)*exp*     0.01457554523*cos( 3.60433733236 +     3340.61242669980*t)-pow(t,exp)*     0.01457554523*    3340.61242669980*sin( 3.60433733236 +     3340.61242669980*t);

   return mars_l_0+mars_l_1;
}

double vsop87b_pico_velocities_mars_b(double t){
   double exp=0.0;
   double mars_b_0=0.0;
   exp=0;
   mars_b_0+=-pow(t,exp)*     0.03197134986*    3340.61242669980*sin( 3.76832042431 +     3340.61242669980*t);

   return mars_b_0;
}

double vsop87b_pico_velocities_mars_r(double t){
   double exp=0.0;
   double mars_r_0=0.0;
   exp=0;
   mars_r_0+=-pow(t,exp)*     1.53033488271*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   mars_r_0+=-pow(t,exp)*     0.14184953160*    3340.61242669980*sin( 3.47971283528 +     3340.61242669980*t);

   double mars_r_1=0.0;
   exp=1;
   mars_r_1+=pow(t,exp-1)*exp*     0.01107433345*cos( 2.03250524857 +     3340.61242669980*t)-pow(t,exp)*     0.01107433345*    3340.61242669980*sin( 2.03250524857 +     3340.61242669980*t);

   return mars_r_0+mars_r_1;
}

double vsop87b_pico_velocities_mercury_l(double t){
   double exp=0.0;
   double mercury_l_0=0.0;
   exp=0;
   mercury_l_0+=-pow(t,exp)*     4.40250710144*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   mercury_l_0+=-pow(t,exp)*     0.40989414977*   26087.90314157420*sin( 1.48302034195 +    26087.90314157420*t);
   mercury_l_0+=-pow(t,exp)*     0.05046294200*   52175.80628314840*sin( 4.47785489551 +    52175.80628314840*t);

   double mercury_l_1=0.0;
   exp=1;
   mercury_l_1+=pow(t,exp-1)*exp* 26087.90313685529*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)* 26087.90313685529*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   mercury_l_1+=pow(t,exp-1)*exp*     0.01131199811*cos( 6.21874197797 +    26087.90314157420*t)-pow(t,exp)*     0.01131199811*   26087.90314157420*sin( 6.21874197797 +    26087.90314157420*t);

   return mercury_l_0+mercury_l_1;
}

double vsop87b_pico_velocities_mercury_b(double t){
   double exp=0.0;
   double mercury_b_0=0.0;
   exp=0;
   mercury_b_0+=-pow(t,exp)*     0.11737528961*   26087.90314157420*sin( 1.98357498767 +    26087.90314157420*t);
   mercury_b_0+=-pow(t,exp)*     0.02388076996*   52175.80628314840*sin( 5.03738959686 +    52175.80628314840*t);
   mercury_b_0+=-pow(t,exp)*     0.01222839532*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);

   return mercury_b_0;
}

double vsop87b_pico_velocities_mercury_r(double t){
   double exp=0.0;
   double mercury_r_0=0.0;
   exp=0;
   mercury_r_0+=-pow(t,exp)*     0.39528271651*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   mercury_r_0+=-pow(t,exp)*     0.07834131818*   26087.90314157420*sin( 6.19233722598 +    26087.90314157420*t);

   return mercury_r_0;
}

double vsop87b_pico_velocities_neptune_l(double t){
   double exp=0.0;
   double neptune_l_0=0.0;
   exp=0;
   neptune_l_0+=-pow(t,exp)*     5.31188633046*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   neptune_l_0+=-pow(t,exp)*     0.01798475530*      38.13303563780*sin( 2.90101273890 +       38.13303563780*t);
   neptune_l_0+=-pow(t,exp)*     0.01019727652*       1.48447270830*sin( 0.48580922867 +        1.48447270830*t);

   double neptune_l_1=0.0;
   exp=1;
   neptune_l_1+=pow(t,exp-1)*exp*    38.13303563957*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*    38.13303563957*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

   return neptune_l_0+neptune_l_1;
}

double vsop87b_pico_velocities_neptune_b(double t){
   double exp=0.0;
   double neptune_b_0=0.0;
   exp=0;
   neptune_b_0+=-pow(t,exp)*     0.03088622933*      38.13303563780*sin( 1.44104372644 +       38.13303563780*t);

   return neptune_b_0;
}

double vsop87b_pico_velocities_neptune_r(double t){
   double exp=0.0;
   double neptune_r_0=0.0;
   exp=0;
   neptune_r_0+=-pow(t,exp)*    30.07013205828*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   neptune_r_0+=-pow(t,exp)*     0.27062259632*      38.13303563780*sin( 1.32999459377 +       38.13303563780*t);
   neptune_r_0+=-pow(t,exp)*     0.01691764014*      36.64856292950*sin( 3.25186135653 +       36.64856292950*t);

   return neptune_r_0;
}

double vsop87b_pico_velocities_saturn_l(double t){
   double exp=0.0;
   double saturn_l_0=0.0;
   exp=0;
   saturn_l_0+=-pow(t,exp)*     0.87401354025*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   saturn_l_0+=-pow(t,exp)*     0.11107659762*     213.29909543800*sin( 3.96205090159 +      213.29909543800*t);
   saturn_l_0+=-pow(t,exp)*     0.01414150957*       7.11354700080*sin( 4.58581516874 +        7.11354700080*t);

   double saturn_l_1=0.0;
   exp=1;
   saturn_l_1+=pow(t,exp-1)*exp*   213.29909521690*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*   213.29909521690*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   saturn_l_1+=pow(t,exp-1)*exp*     0.01297370862*cos( 1.82834923978 +      213.29909543800*t)-pow(t,exp)*     0.01297370862*     213.29909543800*sin( 1.82834923978 +      213.29909543800*t);

   return saturn_l_0+saturn_l_1;
}

double vsop87b_pico_velocities_saturn_b(double t){
   double exp=0.0;
   double saturn_b_0=0.0;
   exp=0;
   saturn_b_0+=-pow(t,exp)*     0.04330678039*     213.29909543800*sin( 3.60284428399 +      213.29909543800*t);

   return saturn_b_0;
}

double vsop87b_pico_velocities_saturn_r(double t){
   double exp=0.0;
   double saturn_r_0=0.0;
   exp=0;
   saturn_r_0+=-pow(t,exp)*     9.55758135486*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   saturn_r_0+=-pow(t,exp)*     0.52921382865*     213.29909543800*sin( 2.39226219573 +      213.29909543800*t);
   saturn_r_0+=-pow(t,exp)*     0.01873679867*     206.18554843720*sin( 5.23549604660 +      206.18554843720*t);
   saturn_r_0+=-pow(t,exp)*     0.01464663929*     426.59819087600*sin( 1.64763042902 +      426.59819087600*t);

   double saturn_r_1=0.0;
   exp=1;
   saturn_r_1+=pow(t,exp-1)*exp*     0.06182981340*cos( 0.25843511480 +      213.29909543800*t)-pow(t,exp)*     0.06182981340*     213.29909543800*sin( 0.25843511480 +      213.29909543800*t);

   return saturn_r_0+saturn_r_1;
}

double vsop87b_pico_velocities_uranus_l(double t){
   double exp=0.0;
   double uranus_l_0=0.0;
   exp=0;
   uranus_l_0+=-pow(t,exp)*     5.48129294297*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   uranus_l_0+=-pow(t,exp)*     0.09260408234*      74.78159856730*sin( 0.89106421507 +       74.78159856730*t);
   uranus_l_0+=-pow(t,exp)*     0.01504247898*       1.48447270830*sin( 3.62719260920 +        1.48447270830*t);

   double uranus_l_1=0.0;
   exp=1;
   uranus_l_1+=pow(t,exp-1)*exp*    74.78159860910*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*    74.78159860910*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

   return uranus_l_0+uranus_l_1;
}

double vsop87b_pico_velocities_uranus_b(double t){
   double exp=0.0;
   double uranus_b_0=0.0;
   exp=0;
   uranus_b_0+=-pow(t,exp)*     0.01346277648*      74.78159856730*sin( 2.61877810547 +       74.78159856730*t);

   return uranus_b_0;
}

double vsop87b_pico_velocities_uranus_r(double t){
   double exp=0.0;
   double uranus_r_0=0.0;
   exp=0;
   uranus_r_0+=-pow(t,exp)*    19.21264847206*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   uranus_r_0+=-pow(t,exp)*     0.88784984413*      74.78159856730*sin( 5.60377527014 +       74.78159856730*t);
   uranus_r_0+=-pow(t,exp)*     0.03440836062*      73.29712585900*sin( 0.32836099706 +       73.29712585900*t);
   uranus_r_0+=-pow(t,exp)*     0.02055653860*     149.56319713460*sin( 1.78295159330 +      149.56319713460*t);

   double uranus_r_1=0.0;
   exp=1;
   uranus_r_1+=pow(t,exp-1)*exp*     0.01479896629*cos( 3.67205697578 +       74.78159856730*t)-pow(t,exp)*     0.01479896629*      74.78159856730*sin( 3.67205697578 +       74.78159856730*t);

   return uranus_r_0+uranus_r_1;
}

double vsop87b_pico_velocities_venus_l(double t){
   double exp=0.0;
   double venus_l_0=0.0;
   exp=0;
   venus_l_0+=-pow(t,exp)*     3.17614666774*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
   venus_l_0+=-pow(t,exp)*     0.01353968419*   10213.28554621100*sin( 5.59313319619 +    10213.28554621100*t);

   double venus_l_1=0.0;
   exp=1;
   venus_l_1+=pow(t,exp-1)*exp* 10213.28554621638*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)* 10213.28554621638*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

   return venus_l_0+venus_l_1;
}

double vsop87b_pico_velocities_venus_b(double t){
   double exp=0.0;
   double venus_b_0=0.0;
   exp=0;
   venus_b_0+=-pow(t,exp)*     0.05923638472*   10213.28554621100*sin( 0.26702775812 +    10213.28554621100*t);

   return venus_b_0;
}

double vsop87b_pico_velocities_venus_r(double t){
   double exp=0.0;
   double venus_r_0=0.0;
   exp=0;
   venus_r_0+=-pow(t,exp)*     0.72334820891*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

   return venus_r_0;
}

