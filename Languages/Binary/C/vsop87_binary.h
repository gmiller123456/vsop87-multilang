//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

#ifndef VSOP87_BINARY
#define VSOP87_BINARY

int vsop87_binary_init(char* filename);
void vsop87_binary_free();
void vsop87_binary_getEarth(double t,double out[]);
void vsop87_binary_getEmb(double t,double out[]);
void vsop87_binary_getJupiter(double t,double out[]);
void vsop87_binary_getMars(double t,double out[]);
void vsop87_binary_getMercury(double t,double out[]);
void vsop87_binary_getNeptune(double t,double out[]);
void vsop87_binary_getSaturn(double t,double out[]);
void vsop87_binary_getUranus(double t,double out[]);
void vsop87_binary_getVenus(double t,double out[]);
void vsop87_binary_getSun(double t,double out[]);
void vsop87_binary_getMoon(double earth[], double emb[],double out[]);

#endif
