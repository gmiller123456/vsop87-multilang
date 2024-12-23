//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

unit vsop87b_micro_velocities;

interface
uses Math;

procedure vsop87b_micro_velocities_getEarth(t: Double;var temp: array of Double);
procedure vsop87b_micro_velocities_getJupiter(t: Double;var temp: array of Double);
procedure vsop87b_micro_velocities_getMars(t: Double;var temp: array of Double);
procedure vsop87b_micro_velocities_getMercury(t: Double;var temp: array of Double);
procedure vsop87b_micro_velocities_getNeptune(t: Double;var temp: array of Double);
procedure vsop87b_micro_velocities_getSaturn(t: Double;var temp: array of Double);
procedure vsop87b_micro_velocities_getUranus(t: Double;var temp: array of Double);
procedure vsop87b_micro_velocities_getVenus(t: Double;var temp: array of Double);

implementation



function vsop87b_micro_velocities_earth_l(t: Double): Double;
   var exp: Double=0.0;
   var earth_l_0: Double=0.0;
   var earth_l_1: Double=0.0;
begin

   exp:=0;
   earth_l_0:=earth_l_0 + -Power(t,exp)*     1.75347045673*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   earth_l_0:=earth_l_0 + -Power(t,exp)*     0.03341656453*    6283.07584999140*Sin( 4.66925680415 +     6283.07584999140*t);
   earth_l_0:=earth_l_0 + -Power(t,exp)*     0.00034894275*   12566.15169998280*Sin( 4.62610242189 +    12566.15169998280*t);

   exp:=1;
   earth_l_1:=earth_l_1 + Power(t,exp-1)*exp*  6283.07584999140*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*  6283.07584999140*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   earth_l_1:=earth_l_1 + Power(t,exp-1)*exp*     0.00206058863*Cos( 2.67823455808 +     6283.07584999140*t)-Power(t,exp)*     0.00206058863*    6283.07584999140*Sin( 2.67823455808 +     6283.07584999140*t);

   vsop87b_micro_velocities_earth_l := earth_l_0+earth_l_1;
end;

function vsop87b_micro_velocities_earth_b(t: Double): Double;
   var exp: Double=0.0;
   var earth_b_1: Double=0.0;
begin

   exp:=1;
   earth_b_1:=earth_b_1 + Power(t,exp-1)*exp*     0.00227777722*Cos( 3.41376620530 +     6283.07584999140*t)-Power(t,exp)*     0.00227777722*    6283.07584999140*Sin( 3.41376620530 +     6283.07584999140*t);

   vsop87b_micro_velocities_earth_b := earth_b_1;
end;

function vsop87b_micro_velocities_earth_r(t: Double): Double;
   var exp: Double=0.0;
   var earth_r_0: Double=0.0;
   var earth_r_1: Double=0.0;
begin

   exp:=0;
   earth_r_0:=earth_r_0 + -Power(t,exp)*     1.00013988784*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   earth_r_0:=earth_r_0 + -Power(t,exp)*     0.01670699632*    6283.07584999140*Sin( 3.09846350258 +     6283.07584999140*t);
   earth_r_0:=earth_r_0 + -Power(t,exp)*     0.00013956024*   12566.15169998280*Sin( 3.05524609456 +    12566.15169998280*t);

   exp:=1;
   earth_r_1:=earth_r_1 + Power(t,exp-1)*exp*     0.00103018607*Cos( 1.10748968172 +     6283.07584999140*t)-Power(t,exp)*     0.00103018607*    6283.07584999140*Sin( 1.10748968172 +     6283.07584999140*t);

   vsop87b_micro_velocities_earth_r := earth_r_0+earth_r_1;
end;

function vsop87b_micro_velocities_jupiter_l(t: Double): Double;
   var exp: Double=0.0;
   var jupiter_l_0: Double=0.0;
   var jupiter_l_1: Double=0.0;
   var jupiter_l_2: Double=0.0;
begin

   exp:=0;
   jupiter_l_0:=jupiter_l_0 + -Power(t,exp)*     0.59954691494*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   jupiter_l_0:=jupiter_l_0 + -Power(t,exp)*     0.09695898719*     529.69096509460*Sin( 5.06191793158 +      529.69096509460*t);
   jupiter_l_0:=jupiter_l_0 + -Power(t,exp)*     0.00573610142*       7.11354700080*Sin( 1.44406205629 +        7.11354700080*t);
   jupiter_l_0:=jupiter_l_0 + -Power(t,exp)*     0.00306389205*    1059.38193018920*Sin( 5.41734730184 +     1059.38193018920*t);
   jupiter_l_0:=jupiter_l_0 + -Power(t,exp)*     0.00097178296*     632.78373931320*Sin( 4.14264726552 +      632.78373931320*t);
   jupiter_l_0:=jupiter_l_0 + -Power(t,exp)*     0.00072903078*     522.57741809380*Sin( 3.64042916389 +      522.57741809380*t);
   jupiter_l_0:=jupiter_l_0 + -Power(t,exp)*     0.00064263975*     103.09277421860*Sin( 3.41145165351 +      103.09277421860*t);
   jupiter_l_0:=jupiter_l_0 + -Power(t,exp)*     0.00039806064*     419.48464387520*Sin( 2.29376740788 +      419.48464387520*t);
   jupiter_l_0:=jupiter_l_0 + -Power(t,exp)*     0.00038857767*     316.39186965660*Sin( 1.27231755835 +      316.39186965660*t);
   jupiter_l_0:=jupiter_l_0 + -Power(t,exp)*     0.00027964629*     536.80451209540*Sin( 1.78454591820 +      536.80451209540*t);
   jupiter_l_0:=jupiter_l_0 + -Power(t,exp)*     0.00013589730*    1589.07289528380*Sin( 5.77481040790 +     1589.07289528380*t);

   exp:=1;
   jupiter_l_1:=jupiter_l_1 + Power(t,exp-1)*exp*   529.69096508814*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*   529.69096508814*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   jupiter_l_1:=jupiter_l_1 + Power(t,exp-1)*exp*     0.00489503243*Cos( 4.22082939470 +      529.69096509460*t)-Power(t,exp)*     0.00489503243*     529.69096509460*Sin( 4.22082939470 +      529.69096509460*t);
   jupiter_l_1:=jupiter_l_1 + Power(t,exp-1)*exp*     0.00228917222*Cos( 6.02646855621 +        7.11354700080*t)-Power(t,exp)*     0.00228917222*       7.11354700080*Sin( 6.02646855621 +        7.11354700080*t);
   jupiter_l_1:=jupiter_l_1 + Power(t,exp-1)*exp*     0.00030099479*Cos( 4.54540782858 +     1059.38193018920*t)-Power(t,exp)*     0.00030099479*    1059.38193018920*Sin( 4.54540782858 +     1059.38193018920*t);
   jupiter_l_1:=jupiter_l_1 + Power(t,exp-1)*exp*     0.00020720920*Cos( 5.45943156902 +      522.57741809380*t)-Power(t,exp)*     0.00020720920*     522.57741809380*Sin( 5.45943156902 +      522.57741809380*t);
   jupiter_l_1:=jupiter_l_1 + Power(t,exp-1)*exp*     0.00012103653*Cos( 0.16994816098 +      536.80451209540*t)-Power(t,exp)*     0.00012103653*     536.80451209540*Sin( 0.16994816098 +      536.80451209540*t);

   exp:=2;
   jupiter_l_2:=jupiter_l_2 + Power(t,exp-1)*exp*     0.00047233601*Cos( 4.32148536482 +        7.11354700080*t)-Power(t,exp)*     0.00047233601*       7.11354700080*Sin( 4.32148536482 +        7.11354700080*t);
   jupiter_l_2:=jupiter_l_2 + Power(t,exp-1)*exp*     0.00030649436*Cos( 2.92977788700 +      529.69096509460*t)-Power(t,exp)*     0.00030649436*     529.69096509460*Sin( 2.92977788700 +      529.69096509460*t);
   jupiter_l_2:=jupiter_l_2 + Power(t,exp-1)*exp*     0.00014837605*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00014837605*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);

   vsop87b_micro_velocities_jupiter_l := jupiter_l_0+jupiter_l_1+jupiter_l_2;
end;

function vsop87b_micro_velocities_jupiter_b(t: Double): Double;
   var exp: Double=0.0;
   var jupiter_b_0: Double=0.0;
   var jupiter_b_1: Double=0.0;
begin

   exp:=0;
   jupiter_b_0:=jupiter_b_0 + -Power(t,exp)*     0.02268615702*     529.69096509460*Sin( 3.55852606721 +      529.69096509460*t);
   jupiter_b_0:=jupiter_b_0 + -Power(t,exp)*     0.00109971634*    1059.38193018920*Sin( 3.90809347197 +     1059.38193018920*t);
   jupiter_b_0:=jupiter_b_0 + -Power(t,exp)*     0.00110090358*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);

   exp:=1;
   jupiter_b_1:=jupiter_b_1 + Power(t,exp-1)*exp*     0.00078203446*Cos( 1.52377859742 +      529.69096509460*t)-Power(t,exp)*     0.00078203446*     529.69096509460*Sin( 1.52377859742 +      529.69096509460*t);

   vsop87b_micro_velocities_jupiter_b := jupiter_b_0+jupiter_b_1;
end;

function vsop87b_micro_velocities_jupiter_r(t: Double): Double;
   var exp: Double=0.0;
   var jupiter_r_0: Double=0.0;
   var jupiter_r_1: Double=0.0;
   var jupiter_r_2: Double=0.0;
begin

   exp:=0;
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     5.20887429326*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     0.25209327119*     529.69096509460*Sin( 3.49108639871 +      529.69096509460*t);
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     0.00610599976*    1059.38193018920*Sin( 3.84115365948 +     1059.38193018920*t);
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     0.00282029458*     632.78373931320*Sin( 2.57419881293 +      632.78373931320*t);
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     0.00187647346*     522.57741809380*Sin( 2.07590383214 +      522.57741809380*t);
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     0.00086792905*     419.48464387520*Sin( 0.71001145545 +      419.48464387520*t);
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     0.00072062974*     536.80451209540*Sin( 0.21465724607 +      536.80451209540*t);
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     0.00065517248*     316.39186965660*Sin( 5.97995884790 +      316.39186965660*t);
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     0.00029134542*     103.09277421860*Sin( 1.67759379655 +      103.09277421860*t);
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     0.00030135335*     949.17560896980*Sin( 2.16132003734 +      949.17560896980*t);
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     0.00023453271*     735.87651353180*Sin( 3.54023522184 +      735.87651353180*t);
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     0.00022283743*    1589.07289528380*Sin( 4.19362594399 +     1589.07289528380*t);
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     0.00023947298*       7.11354700080*Sin( 0.27458037480 +        7.11354700080*t);
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     0.00013032614*    1162.47470440780*Sin( 2.96042965363 +     1162.47470440780*t);
   jupiter_r_0:=jupiter_r_0 + -Power(t,exp)*     0.00012749023*    1052.26838318840*Sin( 2.71550286592 +     1052.26838318840*t);

   exp:=1;
   jupiter_r_1:=jupiter_r_1 + Power(t,exp-1)*exp*     0.01271801520*Cos( 2.64937512894 +      529.69096509460*t)-Power(t,exp)*     0.01271801520*     529.69096509460*Sin( 2.64937512894 +      529.69096509460*t);
   jupiter_r_1:=jupiter_r_1 + Power(t,exp-1)*exp*     0.00061661816*Cos( 3.00076460387 +     1059.38193018920*t)-Power(t,exp)*     0.00061661816*    1059.38193018920*Sin( 3.00076460387 +     1059.38193018920*t);
   jupiter_r_1:=jupiter_r_1 + Power(t,exp-1)*exp*     0.00053443713*Cos( 3.89717383175 +      522.57741809380*t)-Power(t,exp)*     0.00053443713*     522.57741809380*Sin( 3.89717383175 +      522.57741809380*t);
   jupiter_r_1:=jupiter_r_1 + Power(t,exp-1)*exp*     0.00031185171*Cos( 4.88276958012 +      536.80451209540*t)-Power(t,exp)*     0.00031185171*     536.80451209540*Sin( 4.88276958012 +      536.80451209540*t);
   jupiter_r_1:=jupiter_r_1 + Power(t,exp-1)*exp*     0.00041390269*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.00041390269*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   jupiter_r_1:=jupiter_r_1 + Power(t,exp-1)*exp*     0.00011847263*Cos( 2.41328764459 +      419.48464387520*t)-Power(t,exp)*     0.00011847263*     419.48464387520*Sin( 2.41328764459 +      419.48464387520*t);

   exp:=2;
   jupiter_r_2:=jupiter_r_2 + Power(t,exp-1)*exp*     0.00079644957*Cos( 1.35865949884 +      529.69096509460*t)-Power(t,exp)*     0.00079644957*     529.69096509460*Sin( 1.35865949884 +      529.69096509460*t);

   vsop87b_micro_velocities_jupiter_r := jupiter_r_0+jupiter_r_1+jupiter_r_2;
end;

function vsop87b_micro_velocities_mars_l(t: Double): Double;
   var exp: Double=0.0;
   var mars_l_0: Double=0.0;
   var mars_l_1: Double=0.0;
   var mars_l_2: Double=0.0;
begin

   exp:=0;
   mars_l_0:=mars_l_0 + -Power(t,exp)*     6.20347711581*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mars_l_0:=mars_l_0 + -Power(t,exp)*     0.18656368093*    3340.61242669980*Sin( 5.05037100270 +     3340.61242669980*t);
   mars_l_0:=mars_l_0 + -Power(t,exp)*     0.01108216816*    6681.22485339960*Sin( 5.40099836344 +     6681.22485339960*t);
   mars_l_0:=mars_l_0 + -Power(t,exp)*     0.00091798406*   10021.83728009940*Sin( 5.75478744667 +    10021.83728009940*t);
   mars_l_0:=mars_l_0 + -Power(t,exp)*     0.00027744987*       3.52311834900*Sin( 5.97049513147 +        3.52311834900*t);
   mars_l_0:=mars_l_0 + -Power(t,exp)*     0.00010610235*    2281.23049651060*Sin( 2.93958560338 +     2281.23049651060*t);
   mars_l_0:=mars_l_0 + -Power(t,exp)*     0.00012315897*    2810.92146160520*Sin( 0.84956094002 +     2810.92146160520*t);

   exp:=1;
   mars_l_1:=mars_l_1 + Power(t,exp-1)*exp*  3340.61242700512*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*  3340.61242700512*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mars_l_1:=mars_l_1 + Power(t,exp-1)*exp*     0.01457554523*Cos( 3.60433733236 +     3340.61242669980*t)-Power(t,exp)*     0.01457554523*    3340.61242669980*Sin( 3.60433733236 +     3340.61242669980*t);
   mars_l_1:=mars_l_1 + Power(t,exp-1)*exp*     0.00168414711*Cos( 3.92318567804 +     6681.22485339960*t)-Power(t,exp)*     0.00168414711*    6681.22485339960*Sin( 3.92318567804 +     6681.22485339960*t);
   mars_l_1:=mars_l_1 + Power(t,exp-1)*exp*     0.00020622975*Cos( 4.26108844583 +    10021.83728009940*t)-Power(t,exp)*     0.00020622975*   10021.83728009940*Sin( 4.26108844583 +    10021.83728009940*t);

   exp:=2;
   mars_l_2:=mars_l_2 + Power(t,exp-1)*exp*     0.00058152577*Cos( 2.04961712429 +     3340.61242669980*t)-Power(t,exp)*     0.00058152577*    3340.61242669980*Sin( 2.04961712429 +     3340.61242669980*t);
   mars_l_2:=mars_l_2 + Power(t,exp-1)*exp*     0.00013459579*Cos( 2.45738706163 +     6681.22485339960*t)-Power(t,exp)*     0.00013459579*    6681.22485339960*Sin( 2.45738706163 +     6681.22485339960*t);

   vsop87b_micro_velocities_mars_l := mars_l_0+mars_l_1+mars_l_2;
end;

function vsop87b_micro_velocities_mars_b(t: Double): Double;
   var exp: Double=0.0;
   var mars_b_0: Double=0.0;
   var mars_b_1: Double=0.0;
begin

   exp:=0;
   mars_b_0:=mars_b_0 + -Power(t,exp)*     0.03197134986*    3340.61242669980*Sin( 3.76832042431 +     3340.61242669980*t);
   mars_b_0:=mars_b_0 + -Power(t,exp)*     0.00298033234*    6681.22485339960*Sin( 4.10616996305 +     6681.22485339960*t);
   mars_b_0:=mars_b_0 + -Power(t,exp)*     0.00289104742*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mars_b_0:=mars_b_0 + -Power(t,exp)*     0.00031365539*   10021.83728009940*Sin( 4.44651053090 +    10021.83728009940*t);

   exp:=1;
   mars_b_1:=mars_b_1 + Power(t,exp-1)*exp*     0.00217310991*Cos( 6.04472194776 +     3340.61242669980*t)-Power(t,exp)*     0.00217310991*    3340.61242669980*Sin( 6.04472194776 +     3340.61242669980*t);
   mars_b_1:=mars_b_1 + Power(t,exp-1)*exp*     0.00020976948*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00020976948*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   mars_b_1:=mars_b_1 + Power(t,exp-1)*exp*     0.00012834709*Cos( 1.60810667915 +     6681.22485339960*t)-Power(t,exp)*     0.00012834709*    6681.22485339960*Sin( 1.60810667915 +     6681.22485339960*t);

   vsop87b_micro_velocities_mars_b := mars_b_0+mars_b_1;
end;

function vsop87b_micro_velocities_mars_r(t: Double): Double;
   var exp: Double=0.0;
   var mars_r_0: Double=0.0;
   var mars_r_1: Double=0.0;
   var mars_r_2: Double=0.0;
begin

   exp:=0;
   mars_r_0:=mars_r_0 + -Power(t,exp)*     1.53033488271*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mars_r_0:=mars_r_0 + -Power(t,exp)*     0.14184953160*    3340.61242669980*Sin( 3.47971283528 +     3340.61242669980*t);
   mars_r_0:=mars_r_0 + -Power(t,exp)*     0.00660776362*    6681.22485339960*Sin( 3.81783443019 +     6681.22485339960*t);
   mars_r_0:=mars_r_0 + -Power(t,exp)*     0.00046179117*   10021.83728009940*Sin( 4.15595316782 +    10021.83728009940*t);

   exp:=1;
   mars_r_1:=mars_r_1 + Power(t,exp-1)*exp*     0.01107433345*Cos( 2.03250524857 +     3340.61242669980*t)-Power(t,exp)*     0.01107433345*    3340.61242669980*Sin( 2.03250524857 +     3340.61242669980*t);
   mars_r_1:=mars_r_1 + Power(t,exp-1)*exp*     0.00103175887*Cos( 2.37071847807 +     6681.22485339960*t)-Power(t,exp)*     0.00103175887*    6681.22485339960*Sin( 2.37071847807 +     6681.22485339960*t);
   mars_r_1:=mars_r_1 + Power(t,exp-1)*exp*     0.00012877200*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.00012877200*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mars_r_1:=mars_r_1 + Power(t,exp-1)*exp*     0.00010815880*Cos( 2.70888095665 +    10021.83728009940*t)-Power(t,exp)*     0.00010815880*   10021.83728009940*Sin( 2.70888095665 +    10021.83728009940*t);

   exp:=2;
   mars_r_2:=mars_r_2 + Power(t,exp-1)*exp*     0.00044242249*Cos( 0.47930604954 +     3340.61242669980*t)-Power(t,exp)*     0.00044242249*    3340.61242669980*Sin( 0.47930604954 +     3340.61242669980*t);

   vsop87b_micro_velocities_mars_r := mars_r_0+mars_r_1+mars_r_2;
end;

function vsop87b_micro_velocities_mercury_l(t: Double): Double;
   var exp: Double=0.0;
   var mercury_l_0: Double=0.0;
   var mercury_l_1: Double=0.0;
   var mercury_l_2: Double=0.0;
begin

   exp:=0;
   mercury_l_0:=mercury_l_0 + -Power(t,exp)*     4.40250710144*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mercury_l_0:=mercury_l_0 + -Power(t,exp)*     0.40989414977*   26087.90314157420*Sin( 1.48302034195 +    26087.90314157420*t);
   mercury_l_0:=mercury_l_0 + -Power(t,exp)*     0.05046294200*   52175.80628314840*Sin( 4.47785489551 +    52175.80628314840*t);
   mercury_l_0:=mercury_l_0 + -Power(t,exp)*     0.00855346844*   78263.70942472259*Sin( 1.16520322459 +    78263.70942472259*t);
   mercury_l_0:=mercury_l_0 + -Power(t,exp)*     0.00165590362*  104351.61256629678*Sin( 4.11969163423 +   104351.61256629678*t);
   mercury_l_0:=mercury_l_0 + -Power(t,exp)*     0.00034561897*  130439.51570787099*Sin( 0.77930768443 +   130439.51570787099*t);

   exp:=1;
   mercury_l_1:=mercury_l_1 + Power(t,exp-1)*exp* 26087.90313685529*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)* 26087.90313685529*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mercury_l_1:=mercury_l_1 + Power(t,exp-1)*exp*     0.01131199811*Cos( 6.21874197797 +    26087.90314157420*t)-Power(t,exp)*     0.01131199811*   26087.90314157420*Sin( 6.21874197797 +    26087.90314157420*t);
   mercury_l_1:=mercury_l_1 + Power(t,exp-1)*exp*     0.00292242298*Cos( 3.04449355541 +    52175.80628314840*t)-Power(t,exp)*     0.00292242298*   52175.80628314840*Sin( 3.04449355541 +    52175.80628314840*t);
   mercury_l_1:=mercury_l_1 + Power(t,exp-1)*exp*     0.00075775081*Cos( 6.08568821653 +    78263.70942472259*t)-Power(t,exp)*     0.00075775081*   78263.70942472259*Sin( 6.08568821653 +    78263.70942472259*t);
   mercury_l_1:=mercury_l_1 + Power(t,exp-1)*exp*     0.00019676525*Cos( 2.80965111777 +   104351.61256629678*t)-Power(t,exp)*     0.00019676525*  104351.61256629678*Sin( 2.80965111777 +   104351.61256629678*t);

   exp:=2;
   mercury_l_2:=mercury_l_2 + Power(t,exp-1)*exp*     0.00016395129*Cos( 4.67759555504 +    26087.90314157420*t)-Power(t,exp)*     0.00016395129*   26087.90314157420*Sin( 4.67759555504 +    26087.90314157420*t);

   vsop87b_micro_velocities_mercury_l := mercury_l_0+mercury_l_1+mercury_l_2;
end;

function vsop87b_micro_velocities_mercury_b(t: Double): Double;
   var exp: Double=0.0;
   var mercury_b_0: Double=0.0;
   var mercury_b_1: Double=0.0;
begin

   exp:=0;
   mercury_b_0:=mercury_b_0 + -Power(t,exp)*     0.11737528961*   26087.90314157420*Sin( 1.98357498767 +    26087.90314157420*t);
   mercury_b_0:=mercury_b_0 + -Power(t,exp)*     0.02388076996*   52175.80628314840*Sin( 5.03738959686 +    52175.80628314840*t);
   mercury_b_0:=mercury_b_0 + -Power(t,exp)*     0.01222839532*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   mercury_b_0:=mercury_b_0 + -Power(t,exp)*     0.00543251810*   78263.70942472259*Sin( 1.79644363964 +    78263.70942472259*t);
   mercury_b_0:=mercury_b_0 + -Power(t,exp)*     0.00129778770*  104351.61256629678*Sin( 4.83232503958 +   104351.61256629678*t);
   mercury_b_0:=mercury_b_0 + -Power(t,exp)*     0.00031866927*  130439.51570787099*Sin( 1.58088495658 +   130439.51570787099*t);

   exp:=1;
   mercury_b_1:=mercury_b_1 + Power(t,exp-1)*exp*     0.00274646065*Cos( 3.95008450011 +    26087.90314157420*t)-Power(t,exp)*     0.00274646065*   26087.90314157420*Sin( 3.95008450011 +    26087.90314157420*t);
   mercury_b_1:=mercury_b_1 + Power(t,exp-1)*exp*     0.00099737713*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00099737713*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   mercury_b_1:=mercury_b_1 + Power(t,exp-1)*exp*     0.00018772047*Cos( 0.05141288887 +    78263.70942472259*t)-Power(t,exp)*     0.00018772047*   78263.70942472259*Sin( 0.05141288887 +    78263.70942472259*t);
   mercury_b_1:=mercury_b_1 + Power(t,exp-1)*exp*     0.00023970726*Cos( 2.53272082947 +    52175.80628314840*t)-Power(t,exp)*     0.00023970726*   52175.80628314840*Sin( 2.53272082947 +    52175.80628314840*t);

   vsop87b_micro_velocities_mercury_b := mercury_b_0+mercury_b_1;
end;

function vsop87b_micro_velocities_mercury_r(t: Double): Double;
   var exp: Double=0.0;
   var mercury_r_0: Double=0.0;
   var mercury_r_1: Double=0.0;
begin

   exp:=0;
   mercury_r_0:=mercury_r_0 + -Power(t,exp)*     0.39528271651*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   mercury_r_0:=mercury_r_0 + -Power(t,exp)*     0.07834131818*   26087.90314157420*Sin( 6.19233722598 +    26087.90314157420*t);
   mercury_r_0:=mercury_r_0 + -Power(t,exp)*     0.00795525558*   52175.80628314840*Sin( 2.95989690104 +    52175.80628314840*t);
   mercury_r_0:=mercury_r_0 + -Power(t,exp)*     0.00121281764*   78263.70942472259*Sin( 6.01064153797 +    78263.70942472259*t);
   mercury_r_0:=mercury_r_0 + -Power(t,exp)*     0.00021921969*  104351.61256629678*Sin( 2.77820093972 +   104351.61256629678*t);

   exp:=1;
   mercury_r_1:=mercury_r_1 + Power(t,exp-1)*exp*     0.00217347740*Cos( 4.65617158665 +    26087.90314157420*t)-Power(t,exp)*     0.00217347740*   26087.90314157420*Sin( 4.65617158665 +    26087.90314157420*t);
   mercury_r_1:=mercury_r_1 + Power(t,exp-1)*exp*     0.00044141826*Cos( 1.42385544001 +    52175.80628314840*t)-Power(t,exp)*     0.00044141826*   52175.80628314840*Sin( 1.42385544001 +    52175.80628314840*t);
   mercury_r_1:=mercury_r_1 + Power(t,exp-1)*exp*     0.00010094479*Cos( 4.47466326327 +    78263.70942472259*t)-Power(t,exp)*     0.00010094479*   78263.70942472259*Sin( 4.47466326327 +    78263.70942472259*t);

   vsop87b_micro_velocities_mercury_r := mercury_r_0+mercury_r_1;
end;

function vsop87b_micro_velocities_neptune_l(t: Double): Double;
   var exp: Double=0.0;
   var neptune_l_0: Double=0.0;
   var neptune_l_1: Double=0.0;
begin

   exp:=0;
   neptune_l_0:=neptune_l_0 + -Power(t,exp)*     5.31188633046*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   neptune_l_0:=neptune_l_0 + -Power(t,exp)*     0.01798475530*      38.13303563780*Sin( 2.90101273890 +       38.13303563780*t);
   neptune_l_0:=neptune_l_0 + -Power(t,exp)*     0.01019727652*       1.48447270830*Sin( 0.48580922867 +        1.48447270830*t);
   neptune_l_0:=neptune_l_0 + -Power(t,exp)*     0.00124531845*      36.64856292950*Sin( 4.83008090676 +       36.64856292950*t);
   neptune_l_0:=neptune_l_0 + -Power(t,exp)*     0.00042064466*       2.96894541660*Sin( 5.41054993053 +        2.96894541660*t);
   neptune_l_0:=neptune_l_0 + -Power(t,exp)*     0.00037714584*      35.16409022120*Sin( 6.09221808686 +       35.16409022120*t);
   neptune_l_0:=neptune_l_0 + -Power(t,exp)*     0.00033784738*      76.26607127560*Sin( 1.24488874087 +       76.26607127560*t);
   neptune_l_0:=neptune_l_0 + -Power(t,exp)*     0.00016482741*     491.55792945680*Sin( 0.00007727998 +      491.55792945680*t);

   exp:=1;
   neptune_l_1:=neptune_l_1 + Power(t,exp-1)*exp*    38.13303563957*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*    38.13303563957*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   neptune_l_1:=neptune_l_1 + Power(t,exp-1)*exp*     0.00016604172*Cos( 4.86323329249 +        1.48447270830*t)-Power(t,exp)*     0.00016604172*       1.48447270830*Sin( 4.86323329249 +        1.48447270830*t);
   neptune_l_1:=neptune_l_1 + Power(t,exp-1)*exp*     0.00015744045*Cos( 2.27887427527 +       38.13303563780*t)-Power(t,exp)*     0.00015744045*      38.13303563780*Sin( 2.27887427527 +       38.13303563780*t);

   vsop87b_micro_velocities_neptune_l := neptune_l_0+neptune_l_1;
end;

function vsop87b_micro_velocities_neptune_b(t: Double): Double;
   var exp: Double=0.0;
   var neptune_b_0: Double=0.0;
begin

   exp:=0;
   neptune_b_0:=neptune_b_0 + -Power(t,exp)*     0.03088622933*      38.13303563780*Sin( 1.44104372644 +       38.13303563780*t);
   neptune_b_0:=neptune_b_0 + -Power(t,exp)*     0.00027780087*      76.26607127560*Sin( 5.91271884599 +       76.26607127560*t);
   neptune_b_0:=neptune_b_0 + -Power(t,exp)*     0.00027623609*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   neptune_b_0:=neptune_b_0 + -Power(t,exp)*     0.00015355489*      36.64856292950*Sin( 2.52123799551 +       36.64856292950*t);
   neptune_b_0:=neptune_b_0 + -Power(t,exp)*     0.00015448133*      39.61750834610*Sin( 3.50877079215 +       39.61750834610*t);

   vsop87b_micro_velocities_neptune_b := neptune_b_0;
end;

function vsop87b_micro_velocities_neptune_r(t: Double): Double;
   var exp: Double=0.0;
   var neptune_r_0: Double=0.0;
   var neptune_r_1: Double=0.0;
begin

   exp:=0;
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*    30.07013205828*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.27062259632*      38.13303563780*Sin( 1.32999459377 +       38.13303563780*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.01691764014*      36.64856292950*Sin( 3.25186135653 +       36.64856292950*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.00807830553*       1.48447270830*Sin( 5.18592878704 +        1.48447270830*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.00537760510*      35.16409022120*Sin( 4.52113935896 +       35.16409022120*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.00495725141*     491.55792945680*Sin( 1.57105641650 +      491.55792945680*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.00274571975*     175.16605980020*Sin( 1.84552258866 +      175.16605980020*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.00135134092*      39.61750834610*Sin( 3.37220609835 +       39.61750834610*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.00121801746*      76.26607127560*Sin( 5.79754470298 +       76.26607127560*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.00100896068*      73.29712585900*Sin( 0.37702724930 +       73.29712585900*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.00069791331*       2.96894541660*Sin( 3.79616637768 +        2.96894541660*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.00046687836*      33.67961751290*Sin( 5.74938034313 +       33.67961751290*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.00024594531*     109.94568878850*Sin( 0.50801745878 +      109.94568878850*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.00016939478*      71.81265315070*Sin( 1.59422512526 +       71.81265315070*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.00014229808*      74.78159856730*Sin( 1.07785898723 +       74.78159856730*t);
   neptune_r_0:=neptune_r_0 + -Power(t,exp)*     0.00012012320*    1021.24889455140*Sin( 1.92059384991 +     1021.24889455140*t);

   exp:=1;
   neptune_r_1:=neptune_r_1 + Power(t,exp-1)*exp*     0.00236338618*Cos( 0.70497954792 +       38.13303563780*t)-Power(t,exp)*     0.00236338618*      38.13303563780*Sin( 0.70497954792 +       38.13303563780*t);
   neptune_r_1:=neptune_r_1 + Power(t,exp-1)*exp*     0.00013220034*Cos( 3.32014387930 +        1.48447270830*t)-Power(t,exp)*     0.00013220034*       1.48447270830*Sin( 3.32014387930 +        1.48447270830*t);

   vsop87b_micro_velocities_neptune_r := neptune_r_0+neptune_r_1;
end;

function vsop87b_micro_velocities_saturn_l(t: Double): Double;
   var exp: Double=0.0;
   var saturn_l_0: Double=0.0;
   var saturn_l_1: Double=0.0;
   var saturn_l_2: Double=0.0;
   var saturn_l_3: Double=0.0;
begin

   exp:=0;
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.87401354025*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.11107659762*     213.29909543800*Sin( 3.96205090159 +      213.29909543800*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.01414150957*       7.11354700080*Sin( 4.58581516874 +        7.11354700080*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.00398379389*     206.18554843720*Sin( 0.52112032699 +      206.18554843720*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.00350769243*     426.59819087600*Sin( 3.30329907896 +      426.59819087600*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.00206816305*     103.09277421860*Sin( 0.24658372002 +      103.09277421860*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.00079271300*     220.41264243880*Sin( 3.84007056878 +      220.41264243880*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.00023990355*     110.20632121940*Sin( 4.66976924553 +      110.20632121940*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.00016573588*     419.48464387520*Sin( 0.43719228296 +      419.48464387520*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.00014906995*     316.39186965660*Sin( 5.76903183869 +      316.39186965660*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.00015820290*     632.78373931320*Sin( 0.93809155235 +      632.78373931320*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.00014609559*       3.93215326310*Sin( 1.56518472000 +        3.93215326310*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.00013160301*      14.22709400160*Sin( 4.44891291899 +       14.22709400160*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.00015053543*     639.89728631400*Sin( 2.71669915667 +      639.89728631400*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.00013005299*      11.04570026390*Sin( 5.98119023644 +       11.04570026390*t);
   saturn_l_0:=saturn_l_0 + -Power(t,exp)*     0.00010725067*     202.25339517410*Sin( 3.12939523827 +      202.25339517410*t);

   exp:=1;
   saturn_l_1:=saturn_l_1 + Power(t,exp-1)*exp*   213.29909521690*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*   213.29909521690*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   saturn_l_1:=saturn_l_1 + Power(t,exp-1)*exp*     0.01297370862*Cos( 1.82834923978 +      213.29909543800*t)-Power(t,exp)*     0.01297370862*     213.29909543800*Sin( 1.82834923978 +      213.29909543800*t);
   saturn_l_1:=saturn_l_1 + Power(t,exp-1)*exp*     0.00564345393*Cos( 2.88499717272 +        7.11354700080*t)-Power(t,exp)*     0.00564345393*       7.11354700080*Sin( 2.88499717272 +        7.11354700080*t);
   saturn_l_1:=saturn_l_1 + Power(t,exp-1)*exp*     0.00093734369*Cos( 1.06311793502 +      426.59819087600*t)-Power(t,exp)*     0.00093734369*     426.59819087600*Sin( 1.06311793502 +      426.59819087600*t);
   saturn_l_1:=saturn_l_1 + Power(t,exp-1)*exp*     0.00107674962*Cos( 2.27769131009 +      206.18554843720*t)-Power(t,exp)*     0.00107674962*     206.18554843720*Sin( 2.27769131009 +      206.18554843720*t);
   saturn_l_1:=saturn_l_1 + Power(t,exp-1)*exp*     0.00040244455*Cos( 2.04108104671 +      220.41264243880*t)-Power(t,exp)*     0.00040244455*     220.41264243880*Sin( 2.04108104671 +      220.41264243880*t);
   saturn_l_1:=saturn_l_1 + Power(t,exp-1)*exp*     0.00019941774*Cos( 1.27954390470 +      103.09277421860*t)-Power(t,exp)*     0.00019941774*     103.09277421860*Sin( 1.27954390470 +      103.09277421860*t);
   saturn_l_1:=saturn_l_1 + Power(t,exp-1)*exp*     0.00010511678*Cos( 2.74880342130 +       14.22709400160*t)-Power(t,exp)*     0.00010511678*      14.22709400160*Sin( 2.74880342130 +       14.22709400160*t);

   exp:=2;
   saturn_l_2:=saturn_l_2 + Power(t,exp-1)*exp*     0.00116441330*Cos( 1.17988132879 +        7.11354700080*t)-Power(t,exp)*     0.00116441330*       7.11354700080*Sin( 1.17988132879 +        7.11354700080*t);
   saturn_l_2:=saturn_l_2 + Power(t,exp-1)*exp*     0.00091841837*Cos( 0.07325195840 +      213.29909543800*t)-Power(t,exp)*     0.00091841837*     213.29909543800*Sin( 0.07325195840 +      213.29909543800*t);
   saturn_l_2:=saturn_l_2 + Power(t,exp-1)*exp*     0.00036661728*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*     0.00036661728*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   saturn_l_2:=saturn_l_2 + Power(t,exp-1)*exp*     0.00015274496*Cos( 4.06493179167 +      206.18554843720*t)-Power(t,exp)*     0.00015274496*     206.18554843720*Sin( 4.06493179167 +      206.18554843720*t);
   saturn_l_2:=saturn_l_2 + Power(t,exp-1)*exp*     0.00010987259*Cos( 5.44479188310 +      426.59819087600*t)-Power(t,exp)*     0.00010987259*     426.59819087600*Sin( 5.44479188310 +      426.59819087600*t);
   saturn_l_2:=saturn_l_2 + Power(t,exp-1)*exp*     0.00010629830*Cos( 0.25764306189 +      220.41264243880*t)-Power(t,exp)*     0.00010629830*     220.41264243880*Sin( 0.25764306189 +      220.41264243880*t);

   exp:=3;
   saturn_l_3:=saturn_l_3 + Power(t,exp-1)*exp*     0.00016038732*Cos( 5.73945573267 +        7.11354700080*t)-Power(t,exp)*     0.00016038732*       7.11354700080*Sin( 5.73945573267 +        7.11354700080*t);

   vsop87b_micro_velocities_saturn_l := saturn_l_0+saturn_l_1+saturn_l_2+saturn_l_3;
end;

function vsop87b_micro_velocities_saturn_b(t: Double): Double;
   var exp: Double=0.0;
   var saturn_b_0: Double=0.0;
   var saturn_b_1: Double=0.0;
   var saturn_b_2: Double=0.0;
begin

   exp:=0;
   saturn_b_0:=saturn_b_0 + -Power(t,exp)*     0.04330678039*     213.29909543800*Sin( 3.60284428399 +      213.29909543800*t);
   saturn_b_0:=saturn_b_0 + -Power(t,exp)*     0.00240348302*     426.59819087600*Sin( 2.85238489373 +      426.59819087600*t);
   saturn_b_0:=saturn_b_0 + -Power(t,exp)*     0.00084745939*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   saturn_b_0:=saturn_b_0 + -Power(t,exp)*     0.00030863357*     220.41264243880*Sin( 3.48441504555 +      220.41264243880*t);
   saturn_b_0:=saturn_b_0 + -Power(t,exp)*     0.00034116062*     206.18554843720*Sin( 0.57297307557 +      206.18554843720*t);
   saturn_b_0:=saturn_b_0 + -Power(t,exp)*     0.00014734070*     639.89728631400*Sin( 2.11846596715 +      639.89728631400*t);

   exp:=1;
   saturn_b_1:=saturn_b_1 + Power(t,exp-1)*exp*     0.00198927992*Cos( 4.93901017903 +      213.29909543800*t)-Power(t,exp)*     0.00198927992*     213.29909543800*Sin( 4.93901017903 +      213.29909543800*t);
   saturn_b_1:=saturn_b_1 + Power(t,exp-1)*exp*     0.00036947916*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00036947916*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   saturn_b_1:=saturn_b_1 + Power(t,exp-1)*exp*     0.00017966989*Cos( 0.51979431110 +      426.59819087600*t)-Power(t,exp)*     0.00017966989*     426.59819087600*Sin( 0.51979431110 +      426.59819087600*t);
   saturn_b_1:=saturn_b_1 + Power(t,exp-1)*exp*     0.00010919721*Cos( 1.79463271368 +      220.41264243880*t)-Power(t,exp)*     0.00010919721*     220.41264243880*Sin( 1.79463271368 +      220.41264243880*t);
   saturn_b_1:=saturn_b_1 + Power(t,exp-1)*exp*     0.00013320265*Cos( 2.26481519893 +      206.18554843720*t)-Power(t,exp)*     0.00013320265*     206.18554843720*Sin( 2.26481519893 +      206.18554843720*t);

   exp:=2;
   saturn_b_2:=saturn_b_2 + Power(t,exp-1)*exp*     0.00013884264*Cos( 0.08994998691 +      213.29909543800*t)-Power(t,exp)*     0.00013884264*     213.29909543800*Sin( 0.08994998691 +      213.29909543800*t);

   vsop87b_micro_velocities_saturn_b := saturn_b_0+saturn_b_1+saturn_b_2;
end;

function vsop87b_micro_velocities_saturn_r(t: Double): Double;
   var exp: Double=0.0;
   var saturn_r_0: Double=0.0;
   var saturn_r_1: Double=0.0;
   var saturn_r_2: Double=0.0;
   var saturn_r_3: Double=0.0;
begin

   exp:=0;
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     9.55758135486*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.52921382865*     213.29909543800*Sin( 2.39226219573 +      213.29909543800*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.01873679867*     206.18554843720*Sin( 5.23549604660 +      206.18554843720*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.01464663929*     426.59819087600*Sin( 1.64763042902 +      426.59819087600*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00821891141*     316.39186965660*Sin( 5.93520042303 +      316.39186965660*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00547506923*     103.09277421860*Sin( 5.01532618980 +      103.09277421860*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00371684650*     220.41264243880*Sin( 2.27114821115 +      220.41264243880*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00361778765*       7.11354700080*Sin( 3.13904301847 +        7.11354700080*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00140617506*     632.78373931320*Sin( 5.70406606781 +      632.78373931320*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00108974848*     110.20632121940*Sin( 3.29313390175 +      110.20632121940*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00069006962*     419.48464387520*Sin( 5.94099540992 +      419.48464387520*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00061053367*     639.89728631400*Sin( 0.94037691801 +      639.89728631400*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00048913294*     202.25339517410*Sin( 1.55733638681 +      202.25339517410*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00034143772*     277.03499374140*Sin( 0.19519102597 +      277.03499374140*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00032401773*     949.17560896980*Sin( 5.47084567016 +      949.17560896980*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00020936596*     735.87651353180*Sin( 0.46349251129 +      735.87651353180*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00020839300*     433.71173787680*Sin( 1.52102476129 +      433.71173787680*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00020746751*     199.07200143640*Sin( 5.33255457763 +      199.07200143640*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00015298404*     529.69096509460*Sin( 3.05943814940 +      529.69096509460*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00014296484*     323.50541665740*Sin( 2.60433479142 +      323.50541665740*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00011993338*     846.08283475120*Sin( 5.98050967385 +      846.08283475120*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00011380257*     522.57741809380*Sin( 1.73105427040 +      522.57741809380*t);
   saturn_r_0:=saturn_r_0 + -Power(t,exp)*     0.00012884624*     138.51749687070*Sin( 1.64890652873 +      138.51749687070*t);

   exp:=1;
   saturn_r_1:=saturn_r_1 + Power(t,exp-1)*exp*     0.06182981340*Cos( 0.25843511480 +      213.29909543800*t)-Power(t,exp)*     0.06182981340*     213.29909543800*Sin( 0.25843511480 +      213.29909543800*t);
   saturn_r_1:=saturn_r_1 + Power(t,exp-1)*exp*     0.00506577242*Cos( 0.71114625261 +      206.18554843720*t)-Power(t,exp)*     0.00506577242*     206.18554843720*Sin( 0.71114625261 +      206.18554843720*t);
   saturn_r_1:=saturn_r_1 + Power(t,exp-1)*exp*     0.00341394029*Cos( 5.79635741658 +      426.59819087600*t)-Power(t,exp)*     0.00341394029*     426.59819087600*Sin( 5.79635741658 +      426.59819087600*t);
   saturn_r_1:=saturn_r_1 + Power(t,exp-1)*exp*     0.00188491195*Cos( 0.47215589652 +      220.41264243880*t)-Power(t,exp)*     0.00188491195*     220.41264243880*Sin( 0.47215589652 +      220.41264243880*t);
   saturn_r_1:=saturn_r_1 + Power(t,exp-1)*exp*     0.00186261486*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00186261486*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   saturn_r_1:=saturn_r_1 + Power(t,exp-1)*exp*     0.00143891146*Cos( 1.40744822888 +        7.11354700080*t)-Power(t,exp)*     0.00143891146*       7.11354700080*Sin( 1.40744822888 +        7.11354700080*t);
   saturn_r_1:=saturn_r_1 + Power(t,exp-1)*exp*     0.00049621208*Cos( 6.01744279820 +      103.09277421860*t)-Power(t,exp)*     0.00049621208*     103.09277421860*Sin( 6.01744279820 +      103.09277421860*t);
   saturn_r_1:=saturn_r_1 + Power(t,exp-1)*exp*     0.00020928426*Cos( 5.09244947411 +      639.89728631400*t)-Power(t,exp)*     0.00020928426*     639.89728631400*Sin( 5.09244947411 +      639.89728631400*t);
   saturn_r_1:=saturn_r_1 + Power(t,exp-1)*exp*     0.00019952564*Cos( 1.17560606130 +      419.48464387520*t)-Power(t,exp)*     0.00019952564*     419.48464387520*Sin( 1.17560606130 +      419.48464387520*t);
   saturn_r_1:=saturn_r_1 + Power(t,exp-1)*exp*     0.00018839544*Cos( 1.60818334043 +      110.20632121940*t)-Power(t,exp)*     0.00018839544*     110.20632121940*Sin( 1.60818334043 +      110.20632121940*t);
   saturn_r_1:=saturn_r_1 + Power(t,exp-1)*exp*     0.00012892843*Cos( 5.94329433020 +      433.71173787680*t)-Power(t,exp)*     0.00012892843*     433.71173787680*Sin( 5.94329433020 +      433.71173787680*t);
   saturn_r_1:=saturn_r_1 + Power(t,exp-1)*exp*     0.00013876849*Cos( 0.75884928866 +      199.07200143640*t)-Power(t,exp)*     0.00013876849*     199.07200143640*Sin( 0.75884928866 +      199.07200143640*t);

   exp:=2;
   saturn_r_2:=saturn_r_2 + Power(t,exp-1)*exp*     0.00436902572*Cos( 4.78671677509 +      213.29909543800*t)-Power(t,exp)*     0.00436902572*     213.29909543800*Sin( 4.78671677509 +      213.29909543800*t);
   saturn_r_2:=saturn_r_2 + Power(t,exp-1)*exp*     0.00071922498*Cos( 2.50070069930 +      206.18554843720*t)-Power(t,exp)*     0.00071922498*     206.18554843720*Sin( 2.50070069930 +      206.18554843720*t);
   saturn_r_2:=saturn_r_2 + Power(t,exp-1)*exp*     0.00049766872*Cos( 4.97167777235 +      220.41264243880*t)-Power(t,exp)*     0.00049766872*     220.41264243880*Sin( 4.97167777235 +      220.41264243880*t);
   saturn_r_2:=saturn_r_2 + Power(t,exp-1)*exp*     0.00043220783*Cos( 3.86941044212 +      426.59819087600*t)-Power(t,exp)*     0.00043220783*     426.59819087600*Sin( 3.86941044212 +      426.59819087600*t);
   saturn_r_2:=saturn_r_2 + Power(t,exp-1)*exp*     0.00029645766*Cos( 5.96309886479 +        7.11354700080*t)-Power(t,exp)*     0.00029645766*       7.11354700080*Sin( 5.96309886479 +        7.11354700080*t);

   exp:=3;
   saturn_r_3:=saturn_r_3 + Power(t,exp-1)*exp*     0.00020315239*Cos( 3.02186068237 +      213.29909543800*t)-Power(t,exp)*     0.00020315239*     213.29909543800*Sin( 3.02186068237 +      213.29909543800*t);

   vsop87b_micro_velocities_saturn_r := saturn_r_0+saturn_r_1+saturn_r_2+saturn_r_3;
end;

function vsop87b_micro_velocities_uranus_l(t: Double): Double;
   var exp: Double=0.0;
   var uranus_l_0: Double=0.0;
   var uranus_l_1: Double=0.0;
begin

   exp:=0;
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     5.48129294297*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.09260408234*      74.78159856730*Sin( 0.89106421507 +       74.78159856730*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.01504247898*       1.48447270830*Sin( 3.62719260920 +        1.48447270830*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.00365981674*      73.29712585900*Sin( 1.89962179044 +       73.29712585900*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.00272328168*     149.56319713460*Sin( 3.35823706307 +      149.56319713460*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.00070328461*      63.73589830340*Sin( 5.39254450063 +       63.73589830340*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.00068892678*      76.26607127560*Sin( 6.09292483287 +       76.26607127560*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.00061998615*       2.96894541660*Sin( 2.26952066061 +        2.96894541660*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.00061950719*      11.04570026390*Sin( 2.85098872691 +       11.04570026390*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.00026468770*      71.81265315070*Sin( 3.14152083966 +       71.81265315070*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.00025710476*     454.90936652730*Sin( 6.11379840493 +      454.90936652730*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.00021078850*     148.07872442630*Sin( 4.36059339067 +      148.07872442630*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.00017818647*      36.64856292950*Sin( 1.74436930289 +       36.64856292950*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.00014613507*       3.93215326310*Sin( 4.73732166022 +        3.93215326310*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.00011162509*     224.34479570190*Sin( 5.82681796350 +      224.34479570190*t);
   uranus_l_0:=uranus_l_0 + -Power(t,exp)*     0.00010997910*     138.51749687070*Sin( 0.48865004018 +      138.51749687070*t);

   exp:=1;
   uranus_l_1:=uranus_l_1 + Power(t,exp-1)*exp*    74.78159860910*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)*    74.78159860910*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   uranus_l_1:=uranus_l_1 + Power(t,exp-1)*exp*     0.00154332863*Cos( 5.24158770553 +       74.78159856730*t)-Power(t,exp)*     0.00154332863*      74.78159856730*Sin( 5.24158770553 +       74.78159856730*t);
   uranus_l_1:=uranus_l_1 + Power(t,exp-1)*exp*     0.00024456474*Cos( 1.71260334156 +        1.48447270830*t)-Power(t,exp)*     0.00024456474*       1.48447270830*Sin( 1.71260334156 +        1.48447270830*t);

   vsop87b_micro_velocities_uranus_l := uranus_l_0+uranus_l_1;
end;

function vsop87b_micro_velocities_uranus_b(t: Double): Double;
   var exp: Double=0.0;
   var uranus_b_0: Double=0.0;
   var uranus_b_1: Double=0.0;
begin

   exp:=0;
   uranus_b_0:=uranus_b_0 + -Power(t,exp)*     0.01346277648*      74.78159856730*Sin( 2.61877810547 +       74.78159856730*t);
   uranus_b_0:=uranus_b_0 + -Power(t,exp)*     0.00062341400*     149.56319713460*Sin( 5.08111189648 +      149.56319713460*t);
   uranus_b_0:=uranus_b_0 + -Power(t,exp)*     0.00061601196*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);

   exp:=1;
   uranus_b_1:=uranus_b_1 + Power(t,exp-1)*exp*     0.00034101978*Cos( 0.01321929936 +       74.78159856730*t)-Power(t,exp)*     0.00034101978*      74.78159856730*Sin( 0.01321929936 +       74.78159856730*t);

   vsop87b_micro_velocities_uranus_b := uranus_b_0+uranus_b_1;
end;

function vsop87b_micro_velocities_uranus_r(t: Double): Double;
   var exp: Double=0.0;
   var uranus_r_0: Double=0.0;
   var uranus_r_1: Double=0.0;
   var uranus_r_2: Double=0.0;
begin

   exp:=0;
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*    19.21264847206*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.88784984413*      74.78159856730*Sin( 5.60377527014 +       74.78159856730*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.03440836062*      73.29712585900*Sin( 0.32836099706 +       73.29712585900*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.02055653860*     149.56319713460*Sin( 1.78295159330 +      149.56319713460*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00649322410*      76.26607127560*Sin( 4.52247285911 +       76.26607127560*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00602247865*      63.73589830340*Sin( 3.86003823674 +       63.73589830340*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00496404167*     454.90936652730*Sin( 1.40139935333 +      454.90936652730*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00338525369*     138.51749687070*Sin( 1.58002770318 +      138.51749687070*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00243509114*      71.81265315070*Sin( 1.57086606044 +       71.81265315070*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00190522303*       1.48447270830*Sin( 1.99809394714 +        1.48447270830*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00161858838*     148.07872442630*Sin( 2.79137786799 +      148.07872442630*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00143706183*      11.04570026390*Sin( 1.38368544947 +       11.04570026390*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00093192405*      36.64856292950*Sin( 0.17437220467 +       36.64856292950*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00071424548*     224.34479570190*Sin( 4.24509236074 +      224.34479570190*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00089806014*     109.94568878850*Sin( 3.66105364565 +      109.94568878850*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00039009723*      70.84944530420*Sin( 1.66971401684 +       70.84944530420*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00046677296*      35.16409022120*Sin( 1.39976401694 +       35.16409022120*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00039025624*     277.03499374140*Sin( 3.36234773834 +      277.03499374140*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00036755274*     146.59425171800*Sin( 3.88649278513 +      146.59425171800*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00030348723*     151.04766984290*Sin( 0.70100838798 +      151.04766984290*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00029156413*      77.75054398390*Sin( 3.18056336700 +       77.75054398390*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00020471591*     202.25339517410*Sin( 1.55587964879 +      202.25339517410*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00025620756*     380.12776796000*Sin( 5.25656086672 +      380.12776796000*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00025785880*      85.82729883120*Sin( 3.78537709870 +       85.82729883120*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00022637073*     529.69096509460*Sin( 0.72518687029 +      529.69096509460*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00020473534*      70.32818044240*Sin( 2.79640244248 +       70.32818044240*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00017901300*       2.96894541660*Sin( 0.55455066863 +        2.96894541660*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00012328114*     127.47179660680*Sin( 5.96037276805 +      127.47179660680*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00014701666*     108.46121608020*Sin( 4.90434516516 +      108.46121608020*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00011494680*      65.22037101170*Sin( 0.43772043395 +       65.22037101170*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00015502375*      38.13303563780*Sin( 5.35405396163 +       38.13303563780*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00010792498*     213.29909543800*Sin( 1.42106296264 +      213.29909543800*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00011695693*       3.93215326310*Sin( 3.29824190199 +        3.93215326310*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00011959076*     984.60033162190*Sin( 1.75043392140 +      984.60033162190*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00012896452*     111.43016149680*Sin( 2.62154084288 +      111.43016149680*t);
   uranus_r_0:=uranus_r_0 + -Power(t,exp)*     0.00011852959*      52.69019803950*Sin( 0.99344161196 +       52.69019803950*t);

   exp:=1;
   uranus_r_1:=uranus_r_1 + Power(t,exp-1)*exp*     0.01479896629*Cos( 3.67205697578 +       74.78159856730*t)-Power(t,exp)*     0.01479896629*      74.78159856730*Sin( 3.67205697578 +       74.78159856730*t);
   uranus_r_1:=uranus_r_1 + Power(t,exp-1)*exp*     0.00071212143*Cos( 6.22600975161 +       63.73589830340*t)-Power(t,exp)*     0.00071212143*      63.73589830340*Sin( 6.22600975161 +       63.73589830340*t);
   uranus_r_1:=uranus_r_1 + Power(t,exp-1)*exp*     0.00068627160*Cos( 6.13411179902 +      149.56319713460*t)-Power(t,exp)*     0.00068627160*     149.56319713460*Sin( 6.13411179902 +      149.56319713460*t);
   uranus_r_1:=uranus_r_1 + Power(t,exp-1)*exp*     0.00020857554*Cos( 5.24625848960 +       11.04570026390*t)-Power(t,exp)*     0.00020857554*      11.04570026390*Sin( 5.24625848960 +       11.04570026390*t);
   uranus_r_1:=uranus_r_1 + Power(t,exp-1)*exp*     0.00021468362*Cos( 2.60175716374 +       76.26607127560*t)-Power(t,exp)*     0.00021468362*      76.26607127560*Sin( 2.60175716374 +       76.26607127560*t);
   uranus_r_1:=uranus_r_1 + Power(t,exp-1)*exp*     0.00024059369*Cos( 3.14159265359 +        0.00000000000*t)-Power(t,exp)*     0.00024059369*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
   uranus_r_1:=uranus_r_1 + Power(t,exp-1)*exp*     0.00011405056*Cos( 0.01849738017 +       70.84944530420*t)-Power(t,exp)*     0.00011405056*      70.84944530420*Sin( 0.01849738017 +       70.84944530420*t);

   exp:=2;
   uranus_r_2:=uranus_r_2 + Power(t,exp-1)*exp*     0.00022439899*Cos( 0.69953310903 +       74.78159856730*t)-Power(t,exp)*     0.00022439899*      74.78159856730*Sin( 0.69953310903 +       74.78159856730*t);

   vsop87b_micro_velocities_uranus_r := uranus_r_0+uranus_r_1+uranus_r_2;
end;

function vsop87b_micro_velocities_venus_l(t: Double): Double;
   var exp: Double=0.0;
   var venus_l_0: Double=0.0;
   var venus_l_1: Double=0.0;
begin

   exp:=0;
   venus_l_0:=venus_l_0 + -Power(t,exp)*     3.17614666774*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   venus_l_0:=venus_l_0 + -Power(t,exp)*     0.01353968419*   10213.28554621100*Sin( 5.59313319619 +    10213.28554621100*t);
   venus_l_0:=venus_l_0 + -Power(t,exp)*     0.00089891645*   20426.57109242200*Sin( 5.30650047764 +    20426.57109242200*t);

   exp:=1;
   venus_l_1:=venus_l_1 + Power(t,exp-1)*exp* 10213.28554621638*Cos( 0.00000000000 +        0.00000000000*t)-Power(t,exp)* 10213.28554621638*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   venus_l_1:=venus_l_1 + Power(t,exp-1)*exp*     0.00095617813*Cos( 2.46406511110 +    10213.28554621100*t)-Power(t,exp)*     0.00095617813*   10213.28554621100*Sin( 2.46406511110 +    10213.28554621100*t);

   vsop87b_micro_velocities_venus_l := venus_l_0+venus_l_1;
end;

function vsop87b_micro_velocities_venus_b(t: Double): Double;
   var exp: Double=0.0;
   var venus_b_0: Double=0.0;
   var venus_b_1: Double=0.0;
   var venus_b_2: Double=0.0;
begin

   exp:=0;
   venus_b_0:=venus_b_0 + -Power(t,exp)*     0.05923638472*   10213.28554621100*Sin( 0.26702775812 +    10213.28554621100*t);
   venus_b_0:=venus_b_0 + -Power(t,exp)*     0.00040107978*   20426.57109242200*Sin( 1.14737178112 +    20426.57109242200*t);
   venus_b_0:=venus_b_0 + -Power(t,exp)*     0.00032814918*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);

   exp:=1;
   venus_b_1:=venus_b_1 + Power(t,exp-1)*exp*     0.00287821243*Cos( 1.88964962838 +    10213.28554621100*t)-Power(t,exp)*     0.00287821243*   10213.28554621100*Sin( 1.88964962838 +    10213.28554621100*t);

   exp:=2;
   venus_b_2:=venus_b_2 + Power(t,exp-1)*exp*     0.00012657745*Cos( 3.34796457029 +    10213.28554621100*t)-Power(t,exp)*     0.00012657745*   10213.28554621100*Sin( 3.34796457029 +    10213.28554621100*t);

   vsop87b_micro_velocities_venus_b := venus_b_0+venus_b_1+venus_b_2;
end;

function vsop87b_micro_velocities_venus_r(t: Double): Double;
   var exp: Double=0.0;
   var venus_r_0: Double=0.0;
   var venus_r_1: Double=0.0;
begin

   exp:=0;
   venus_r_0:=venus_r_0 + -Power(t,exp)*     0.72334820891*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
   venus_r_0:=venus_r_0 + -Power(t,exp)*     0.00489824182*   10213.28554621100*Sin( 4.02151831717 +    10213.28554621100*t);

   exp:=1;
   venus_r_1:=venus_r_1 + Power(t,exp-1)*exp*     0.00034551041*Cos( 0.89198706276 +    10213.28554621100*t)-Power(t,exp)*     0.00034551041*   10213.28554621100*Sin( 0.89198706276 +    10213.28554621100*t);

   vsop87b_micro_velocities_venus_r := venus_r_0+venus_r_1;
end;

procedure vsop87b_micro_velocities_getEarth(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87b_micro_velocities_earth_l(t) / 365250.0;
   temp[1]:=vsop87b_micro_velocities_earth_b(t) / 365250.0;
   temp[2]:=vsop87b_micro_velocities_earth_r(t) / 365250.0;
end;

procedure vsop87b_micro_velocities_getJupiter(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87b_micro_velocities_jupiter_l(t) / 365250.0;
   temp[1]:=vsop87b_micro_velocities_jupiter_b(t) / 365250.0;
   temp[2]:=vsop87b_micro_velocities_jupiter_r(t) / 365250.0;
end;

procedure vsop87b_micro_velocities_getMars(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87b_micro_velocities_mars_l(t) / 365250.0;
   temp[1]:=vsop87b_micro_velocities_mars_b(t) / 365250.0;
   temp[2]:=vsop87b_micro_velocities_mars_r(t) / 365250.0;
end;

procedure vsop87b_micro_velocities_getMercury(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87b_micro_velocities_mercury_l(t) / 365250.0;
   temp[1]:=vsop87b_micro_velocities_mercury_b(t) / 365250.0;
   temp[2]:=vsop87b_micro_velocities_mercury_r(t) / 365250.0;
end;

procedure vsop87b_micro_velocities_getNeptune(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87b_micro_velocities_neptune_l(t) / 365250.0;
   temp[1]:=vsop87b_micro_velocities_neptune_b(t) / 365250.0;
   temp[2]:=vsop87b_micro_velocities_neptune_r(t) / 365250.0;
end;

procedure vsop87b_micro_velocities_getSaturn(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87b_micro_velocities_saturn_l(t) / 365250.0;
   temp[1]:=vsop87b_micro_velocities_saturn_b(t) / 365250.0;
   temp[2]:=vsop87b_micro_velocities_saturn_r(t) / 365250.0;
end;

procedure vsop87b_micro_velocities_getUranus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87b_micro_velocities_uranus_l(t) / 365250.0;
   temp[1]:=vsop87b_micro_velocities_uranus_b(t) / 365250.0;
   temp[2]:=vsop87b_micro_velocities_uranus_r(t) / 365250.0;
end;

procedure vsop87b_micro_velocities_getVenus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87b_micro_velocities_venus_l(t) / 365250.0;
   temp[1]:=vsop87b_micro_velocities_venus_b(t) / 365250.0;
   temp[2]:=vsop87b_micro_velocities_venus_r(t) / 365250.0;
end;
end.