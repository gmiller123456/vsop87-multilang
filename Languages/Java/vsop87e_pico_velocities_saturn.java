//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87e_pico_velocities_saturn{
   static double saturn_x_0_(double t){
      double saturn_x_0=0.0;
      double exp=0;
      saturn_x_0+=-pow(t,exp)*     9.51366533422*     213.29909543800*sin( 0.87441380650 +      213.29909543800*t);
      saturn_x_0+=-pow(t,exp)*     0.26404799161*     426.59819087600*sin( 0.12391580771 +      426.59819087600*t);
      saturn_x_0+=-pow(t,exp)*     0.06758489145*     206.18554843720*sin( 4.16767544586 +      206.18554843720*t);
      saturn_x_0+=-pow(t,exp)*     0.06622371284*     220.41264243880*sin( 0.75094738122 +      220.41264243880*t);
      saturn_x_0+=-pow(t,exp)*     0.04274172066*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      saturn_x_0+=-pow(t,exp)*     0.02335961354*       7.11354700080*sin( 2.02227905783 +        7.11354700080*t);
      saturn_x_0+=-pow(t,exp)*     0.01255113414*     110.20632121940*sin( 2.17347170552 +      110.20632121940*t);
      saturn_x_0+=-pow(t,exp)*     0.01115372225*     419.48464387520*sin( 3.15690865182 +      419.48464387520*t);
      saturn_x_0+=-pow(t,exp)*     0.01097374519*     639.89728631400*sin( 5.65753938643 +      639.89728631400*t);

      return saturn_x_0;
   }

   static double saturn_x_1_(double t){
      double saturn_x_1=0.0;
      double exp=1;
      saturn_x_1+=pow(t,exp-1)*exp*     0.07573807889*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.07573807889*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      saturn_x_1+=pow(t,exp-1)*exp*     0.03084144308*cos( 4.27565898829 +      426.59819087600*t)-pow(t,exp)*     0.03084144308*     426.59819087600*sin( 4.27565898829 +      426.59819087600*t);
      saturn_x_1+=pow(t,exp-1)*exp*     0.02714141496*cos( 5.85229546861 +      206.18554843720*t)-pow(t,exp)*     0.02714141496*     206.18554843720*sin( 5.85229546861 +      206.18554843720*t);
      saturn_x_1+=pow(t,exp-1)*exp*     0.02642347272*cos( 5.33291950842 +      220.41264243880*t)-pow(t,exp)*     0.02642347272*     220.41264243880*sin( 5.33291950842 +      220.41264243880*t);

      return saturn_x_1;
   }

   static double saturn_x(double t){
      return saturn_x_0_(t)+saturn_x_1_(t);
   }

   static double saturn_y_0_(double t){
      double saturn_y_0=0.0;
      double exp=0;
      saturn_y_0+=-pow(t,exp)*     9.52714696877*     213.29909543800*sin( 5.58600556072 +      213.29909543800*t);
      saturn_y_0+=-pow(t,exp)*     0.79354119271*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      saturn_y_0+=-pow(t,exp)*     0.26434197609*     426.59819087600*sin( 4.83528742856 +      426.59819087600*t);
      saturn_y_0+=-pow(t,exp)*     0.06914690347*     206.18554843720*sin( 2.55279029588 +      206.18554843720*t);
      saturn_y_0+=-pow(t,exp)*     0.06631679200*     220.41264243880*sin( 5.46258849076 +      220.41264243880*t);
      saturn_y_0+=-pow(t,exp)*     0.02345226948*       7.11354700080*sin( 0.44652393276 +        7.11354700080*t);
      saturn_y_0+=-pow(t,exp)*     0.01183557497*     419.48464387520*sin( 1.34637027573 +      419.48464387520*t);
      saturn_y_0+=-pow(t,exp)*     0.01245523800*     110.20632121940*sin( 0.60375781288 +      110.20632121940*t);
      saturn_y_0+=-pow(t,exp)*     0.01098442011*     639.89728631400*sin( 4.08609387384 +      639.89728631400*t);

      return saturn_y_0;
   }

   static double saturn_y_1_(double t){
      double saturn_y_1=0.0;
      double exp=1;
      saturn_y_1+=pow(t,exp-1)*exp*     0.05373895252*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.05373895252*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      saturn_y_1+=pow(t,exp-1)*exp*     0.03089676414*cos( 2.70347020059 +      426.59819087600*t)-pow(t,exp)*     0.03089676414*     426.59819087600*sin( 2.70347020059 +      426.59819087600*t);
      saturn_y_1+=pow(t,exp-1)*exp*     0.02740812928*cos( 4.26667506460 +      206.18554843720*t)-pow(t,exp)*     0.02740812928*     206.18554843720*sin( 4.26667506460 +      206.18554843720*t);
      saturn_y_1+=pow(t,exp-1)*exp*     0.02646734779*cos( 3.76132299914 +      220.41264243880*t)-pow(t,exp)*     0.02646734779*     220.41264243880*sin( 3.76132299914 +      220.41264243880*t);

      return saturn_y_1;
   }

   static double saturn_y(double t){
      return saturn_y_0_(t)+saturn_y_1_(t);
   }

   static double saturn_z_0_(double t){
      double saturn_z_0=0.0;
      double exp=0;
      saturn_z_0+=-pow(t,exp)*     0.41345140292*     213.29909543800*sin( 3.60234141893 +      213.29909543800*t);
      saturn_z_0+=-pow(t,exp)*     0.01147953788*     426.59819087600*sin( 2.85128771957 +      426.59819087600*t);
      saturn_z_0+=-pow(t,exp)*     0.01213097211*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return saturn_z_0;
   }

   static double saturn_z_1_(double t){
      double saturn_z_1=0.0;
      double exp=1;
      saturn_z_1+=pow(t,exp-1)*exp*     0.01905958940*cos( 4.94544746619 +      213.29909543800*t)-pow(t,exp)*     0.01905958940*     213.29909543800*sin( 4.94544746619 +      213.29909543800*t);

      return saturn_z_1;
   }

   static double saturn_z(double t){
      return saturn_z_0_(t)+saturn_z_1_(t);
   }

}
