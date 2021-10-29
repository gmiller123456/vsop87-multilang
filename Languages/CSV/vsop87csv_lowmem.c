//VSOP87-Multilang https://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

int getVarIndex(char version,char var);
void getPlanet(char* filename, char* planet, double t, double out[]);

void vsop87csv_getSun(char* filename, double t,double out[]){
    getPlanet(filename,"sun",t,out);
}
void vsop87csv_getEarth(char* filename, double t,double out[]){
    getPlanet(filename,"earth",t,out);
}
void vsop87csv_getEmb(char* filename, double t,double out[]){
    getPlanet(filename,"emb",t,out);
}
void vsop87csv_getJupiter(char* filename, double t,double out[]){
    getPlanet(filename,"jupiter",t,out);
}
void vsop87csv_getMars(char* filename, double t,double out[]){
    getPlanet(filename,"mars",t,out);
}
void vsop87csv_getMercury(char* filename, double t,double out[]){
    getPlanet(filename,"mercury",t,out);
}
void vsop87csv_getNeptune(char* filename, double t,double out[]){
    getPlanet(filename,"neptune",t,out);
}
void vsop87csv_getSaturn(char* filename, double t,double out[]){
    getPlanet(filename,"saturn",t,out);
}
void vsop87csv_getUranus(char* filename, double t,double out[]){
    getPlanet(filename,"uranus",t,out);
}
void vsop87csv_getVenus(char* filename, double t,double out[]){
    getPlanet(filename,"venus",t,out);
}

void vsop87csv_getMoon(double earth[], double emb[],double out[]){
    out[0]=(emb[0]-earth[0])*(1 + 1 / 0.01230073677);
    out[1]=(emb[1]-earth[1])*(1 + 1 / 0.01230073677);
    out[2]=(emb[2]-earth[2])*(1 + 1 / 0.01230073677);
    out[0]=out[0]+earth[0];
    out[1]=out[1]+earth[1];
    out[2]=out[2]+earth[2];
}

void getPlanet(char* filename, char* planet, double t, double out[]){
    int planetLen=strlen(planet);
    FILE *f=fopen(filename,"r");
    char line[81];

    fgets(line,41,f); //skip header line

    char version;
    double psum[6][6]={0};
    double vsum[6]={0};
    while(fgets(line,80,f)!=NULL){
        if(memcmp(line+8,planet,planetLen)==0){

            version=line[6];
            int varIndex=getVarIndex(version,line[19]);
            int exponent=line[21]-48;
            line[41]=0;
            double a=atof(line+23);
            line[56]=0;
            double b=atof(line+42);
            double c=atof(line+57);

            //Position
            psum[varIndex][exponent]+=a*cos(b+c*t);

            //Velocity
            if(exponent==0){
                vsum[varIndex]+= - a * c * sin(b + c*t);
            }else{
                vsum[varIndex]+=pow(t,exponent-1) * exponent * a * cos(b + c * t) - pow(t,exponent) * a * c * sin(b + c*t);
            }
        }
    }

    fclose(f);

    if(version==' '){
        out[0]=psum[0][0]*pow(t,0)+psum[0][1]*pow(t,1)+psum[0][2]*pow(t,2)+psum[0][3]*pow(t,3)+psum[0][4]*pow(t,4)+psum[0][5]*pow(t,5);
        out[1]=psum[1][0]*pow(t,0)+psum[1][1]*pow(t,1)+psum[1][2]*pow(t,2)+psum[1][3]*pow(t,3)+psum[1][4]*pow(t,4)+psum[1][5]*pow(t,5);
        out[2]=psum[2][0]*pow(t,0)+psum[2][1]*pow(t,1)+psum[2][2]*pow(t,2)+psum[2][3]*pow(t,3)+psum[2][4]*pow(t,4)+psum[2][5]*pow(t,5);
        out[3]=psum[3][0]*pow(t,0)+psum[3][1]*pow(t,1)+psum[3][2]*pow(t,2)+psum[3][3]*pow(t,3)+psum[3][4]*pow(t,4)+psum[3][5]*pow(t,5);
        out[4]=psum[4][0]*pow(t,0)+psum[4][1]*pow(t,1)+psum[4][2]*pow(t,2)+psum[4][3]*pow(t,3)+psum[4][4]*pow(t,4)+psum[4][5]*pow(t,5);
        out[5]=psum[5][0]*pow(t,0)+psum[5][1]*pow(t,1)+psum[5][2]*pow(t,2)+psum[5][3]*pow(t,3)+psum[5][4]*pow(t,4)+psum[5][5]*pow(t,5);

        out[1]=fmod(out[1],2*3.14159265358979d);
        if(out[1]<0){
            out[1]+=2*3.14159265358979d;
        }

    } else {
        out[0]=psum[0][0]*pow(t,0)+psum[0][1]*pow(t,1)+psum[0][2]*pow(t,2)+psum[0][3]*pow(t,3)+psum[0][4]*pow(t,4)+psum[0][5]*pow(t,5);
        out[1]=psum[1][0]*pow(t,0)+psum[1][1]*pow(t,1)+psum[1][2]*pow(t,2)+psum[1][3]*pow(t,3)+psum[1][4]*pow(t,4)+psum[1][5]*pow(t,5);
        out[2]=psum[2][0]*pow(t,0)+psum[2][1]*pow(t,1)+psum[2][2]*pow(t,2)+psum[2][3]*pow(t,3)+psum[2][4]*pow(t,4)+psum[2][5]*pow(t,5);
        out[3]=vsum[0] / 365250.0;
        out[4]=vsum[1] / 365250.0;
        out[5]=vsum[2] / 365250.0;
    }
}

int getVarIndex(char version,char var){
    switch (version){
        case ' ':
            switch (var){
                case 'a': return 0; break;
                case 'l': return 1; break;
                case 'k': return 2; break;
                case 'h': return 3; break;
                case 'q': return 4; break;
                case 'p': return 5; break;
            }
            break;
        case 'a':
        case 'c':
        case 'e':
            return var-120;
            break;
        default:
            switch(var){
                case 'l': return 0; break;
                case 'b': return 1; break;
                case 'r': return 2; break;
            }
            break;
    }
    return -1;
}