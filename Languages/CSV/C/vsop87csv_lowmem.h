//VSOP87-Multilang https://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

#ifndef VSOP87CSV
#define VSOP87CSV

void vsop87csv_getSun(char *filename, double t, double out[]);
void vsop87csv_getEarth(char *filename, double t, double out[]);
void vsop87csv_getEmb(char *filename, double t, double out[]);
void vsop87csv_getJupiter(char *filename, double t, double out[]);
void vsop87csv_getMars(char *filename, double t, double out[]);
void vsop87csv_getMercury(char *filename, double t, double out[]);
void vsop87csv_getNeptune(char *filename, double t, double out[]);
void vsop87csv_getSaturn(char *filename, double t, double out[]);
void vsop87csv_getUranus(char *filename, double t, double out[]);
void vsop87csv_getVenus(char *filename, double t, double out[]);
void vsop87csv_getMoon(char *filename, double earth[], double emb[], double out[]);
#endif
