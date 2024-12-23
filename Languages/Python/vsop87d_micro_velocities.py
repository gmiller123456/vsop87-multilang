import math

#VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
#Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain


class vsop87d_micro_velocities :
   @staticmethod
   def getEarth(t):
      temp=[]
      temp.append(vsop87d_micro_velocities.earth_l(t) / 365250.0)
      temp.append(vsop87d_micro_velocities.earth_b(t) / 365250.0)
      temp.append(vsop87d_micro_velocities.earth_r(t) / 365250.0)
      return temp
   

   @staticmethod
   def getJupiter(t):
      temp=[]
      temp.append(vsop87d_micro_velocities.jupiter_l(t) / 365250.0)
      temp.append(vsop87d_micro_velocities.jupiter_b(t) / 365250.0)
      temp.append(vsop87d_micro_velocities.jupiter_r(t) / 365250.0)
      return temp
   

   @staticmethod
   def getMars(t):
      temp=[]
      temp.append(vsop87d_micro_velocities.mars_l(t) / 365250.0)
      temp.append(vsop87d_micro_velocities.mars_b(t) / 365250.0)
      temp.append(vsop87d_micro_velocities.mars_r(t) / 365250.0)
      return temp
   

   @staticmethod
   def getMercury(t):
      temp=[]
      temp.append(vsop87d_micro_velocities.mercury_l(t) / 365250.0)
      temp.append(vsop87d_micro_velocities.mercury_b(t) / 365250.0)
      temp.append(vsop87d_micro_velocities.mercury_r(t) / 365250.0)
      return temp
   

   @staticmethod
   def getNeptune(t):
      temp=[]
      temp.append(vsop87d_micro_velocities.neptune_l(t) / 365250.0)
      temp.append(vsop87d_micro_velocities.neptune_b(t) / 365250.0)
      temp.append(vsop87d_micro_velocities.neptune_r(t) / 365250.0)
      return temp
   

   @staticmethod
   def getSaturn(t):
      temp=[]
      temp.append(vsop87d_micro_velocities.saturn_l(t) / 365250.0)
      temp.append(vsop87d_micro_velocities.saturn_b(t) / 365250.0)
      temp.append(vsop87d_micro_velocities.saturn_r(t) / 365250.0)
      return temp
   

   @staticmethod
   def getUranus(t):
      temp=[]
      temp.append(vsop87d_micro_velocities.uranus_l(t) / 365250.0)
      temp.append(vsop87d_micro_velocities.uranus_b(t) / 365250.0)
      temp.append(vsop87d_micro_velocities.uranus_r(t) / 365250.0)
      return temp
   

   @staticmethod
   def getVenus(t):
      temp=[]
      temp.append(vsop87d_micro_velocities.venus_l(t) / 365250.0)
      temp.append(vsop87d_micro_velocities.venus_b(t) / 365250.0)
      temp.append(vsop87d_micro_velocities.venus_r(t) / 365250.0)
      return temp
   

   @staticmethod
   def earth_l(t):
      exp=0.0
      earth_l_0=0.0
      exp=0
      earth_l_0+=-math.pow(t,exp)*     1.75347045673*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      earth_l_0+=-math.pow(t,exp)*     0.03341656456*    6283.07584999140*math.sin( 4.66925680417 +     6283.07584999140*t)
      earth_l_0+=-math.pow(t,exp)*     0.00034894275*   12566.15169998280*math.sin( 4.62610241759 +    12566.15169998280*t)

      earth_l_1=0.0
      exp=1
      earth_l_1+=math.pow(t,exp-1)*exp*  6283.31966747491*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)*  6283.31966747491*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      earth_l_1+=math.pow(t,exp-1)*exp*     0.00206058863*math.cos( 2.67823455584 +     6283.07584999140*t)-math.pow(t,exp)*     0.00206058863*    6283.07584999140*math.sin( 2.67823455584 +     6283.07584999140*t)

      earth_l_2=0.0
      exp=2
      earth_l_2+=math.pow(t,exp-1)*exp*     0.00052918870*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)*     0.00052918870*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)

      return earth_l_0+earth_l_1+earth_l_2
   

   @staticmethod
   def earth_b(t):
      exp=0.0
      return 0
   

   @staticmethod
   def earth_r(t):
      exp=0.0
      earth_r_0=0.0
      exp=0
      earth_r_0+=-math.pow(t,exp)*     1.00013988799*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      earth_r_0+=-math.pow(t,exp)*     0.01670699626*    6283.07584999140*math.sin( 3.09846350771 +     6283.07584999140*t)
      earth_r_0+=-math.pow(t,exp)*     0.00013956023*   12566.15169998280*math.sin( 3.05524609620 +    12566.15169998280*t)

      earth_r_1=0.0
      exp=1
      earth_r_1+=math.pow(t,exp-1)*exp*     0.00103018608*math.cos( 1.10748969588 +     6283.07584999140*t)-math.pow(t,exp)*     0.00103018608*    6283.07584999140*math.sin( 1.10748969588 +     6283.07584999140*t)

      return earth_r_0+earth_r_1
   

   @staticmethod
   def jupiter_l(t):
      exp=0.0
      jupiter_l_0=0.0
      exp=0
      jupiter_l_0+=-math.pow(t,exp)*     0.59954691495*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      jupiter_l_0+=-math.pow(t,exp)*     0.09695898711*     529.69096509460*math.sin( 5.06191793105 +      529.69096509460*t)
      jupiter_l_0+=-math.pow(t,exp)*     0.00573610145*       7.11354700080*math.sin( 1.44406205976 +        7.11354700080*t)
      jupiter_l_0+=-math.pow(t,exp)*     0.00306389180*    1059.38193018920*math.sin( 5.41734729976 +     1059.38193018920*t)
      jupiter_l_0+=-math.pow(t,exp)*     0.00097178280*     632.78373931320*math.sin( 4.14264708819 +      632.78373931320*t)
      jupiter_l_0+=-math.pow(t,exp)*     0.00072903096*     522.57741809380*math.sin( 3.64042909255 +      522.57741809380*t)
      jupiter_l_0+=-math.pow(t,exp)*     0.00064263986*     103.09277421860*math.sin( 3.41145185203 +      103.09277421860*t)
      jupiter_l_0+=-math.pow(t,exp)*     0.00039806051*     419.48464387520*math.sin( 2.29376744855 +      419.48464387520*t)
      jupiter_l_0+=-math.pow(t,exp)*     0.00038857780*     316.39186965660*math.sin( 1.27231724860 +      316.39186965660*t)
      jupiter_l_0+=-math.pow(t,exp)*     0.00027964622*     536.80451209540*math.sin( 1.78454589485 +      536.80451209540*t)
      jupiter_l_0+=-math.pow(t,exp)*     0.00013589738*    1589.07289528380*math.sin( 5.77481031590 +     1589.07289528380*t)

      jupiter_l_1=0.0
      exp=1
      jupiter_l_1+=math.pow(t,exp-1)*exp*   529.93480757497*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)*   529.93480757497*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      jupiter_l_1+=math.pow(t,exp-1)*exp*     0.00489741194*math.cos( 4.22066689928 +      529.69096509460*t)-math.pow(t,exp)*     0.00489741194*     529.69096509460*math.sin( 4.22066689928 +      529.69096509460*t)
      jupiter_l_1+=math.pow(t,exp-1)*exp*     0.00228918538*math.cos( 6.02647464016 +        7.11354700080*t)-math.pow(t,exp)*     0.00228918538*       7.11354700080*math.sin( 6.02647464016 +        7.11354700080*t)
      jupiter_l_1+=math.pow(t,exp-1)*exp*     0.00027655380*math.cos( 4.57265956824 +     1059.38193018920*t)-math.pow(t,exp)*     0.00027655380*    1059.38193018920*math.sin( 4.57265956824 +     1059.38193018920*t)
      jupiter_l_1+=math.pow(t,exp-1)*exp*     0.00020720943*math.cos( 5.45938936295 +      522.57741809380*t)-math.pow(t,exp)*     0.00020720943*     522.57741809380*math.sin( 5.45938936295 +      522.57741809380*t)
      jupiter_l_1+=math.pow(t,exp-1)*exp*     0.00012105732*math.cos( 0.16985765041 +      536.80451209540*t)-math.pow(t,exp)*     0.00012105732*     536.80451209540*math.sin( 0.16985765041 +      536.80451209540*t)

      jupiter_l_2=0.0
      exp=2
      jupiter_l_2+=math.pow(t,exp-1)*exp*     0.00047233598*math.cos( 4.32148323554 +        7.11354700080*t)-math.pow(t,exp)*     0.00047233598*       7.11354700080*math.sin( 4.32148323554 +        7.11354700080*t)
      jupiter_l_2+=math.pow(t,exp-1)*exp*     0.00030629053*math.cos( 2.93021440216 +      529.69096509460*t)-math.pow(t,exp)*     0.00030629053*     529.69096509460*math.sin( 2.93021440216 +      529.69096509460*t)
      jupiter_l_2+=math.pow(t,exp-1)*exp*     0.00038965550*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)*     0.00038965550*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)

      return jupiter_l_0+jupiter_l_1+jupiter_l_2
   

   @staticmethod
   def jupiter_b(t):
      exp=0.0
      jupiter_b_0=0.0
      exp=0
      jupiter_b_0+=-math.pow(t,exp)*     0.02268615703*     529.69096509460*math.sin( 3.55852606718 +      529.69096509460*t)
      jupiter_b_0+=-math.pow(t,exp)*     0.00109971634*    1059.38193018920*math.sin( 3.90809347389 +     1059.38193018920*t)
      jupiter_b_0+=-math.pow(t,exp)*     0.00110090358*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)

      jupiter_b_1=0.0
      exp=1
      jupiter_b_1+=math.pow(t,exp-1)*exp*     0.00177351787*math.cos( 5.70166488486 +      529.69096509460*t)-math.pow(t,exp)*     0.00177351787*     529.69096509460*math.sin( 5.70166488486 +      529.69096509460*t)

      return jupiter_b_0+jupiter_b_1
   

   @staticmethod
   def jupiter_r(t):
      exp=0.0
      jupiter_r_0=0.0
      exp=0
      jupiter_r_0+=-math.pow(t,exp)*     5.20887429471*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      jupiter_r_0+=-math.pow(t,exp)*     0.25209327020*     529.69096509460*math.sin( 3.49108640015 +      529.69096509460*t)
      jupiter_r_0+=-math.pow(t,exp)*     0.00610599902*    1059.38193018920*math.sin( 3.84115365602 +     1059.38193018920*t)
      jupiter_r_0+=-math.pow(t,exp)*     0.00282029465*     632.78373931320*math.sin( 2.57419879933 +      632.78373931320*t)
      jupiter_r_0+=-math.pow(t,exp)*     0.00187647391*     522.57741809380*math.sin( 2.07590380082 +      522.57741809380*t)
      jupiter_r_0+=-math.pow(t,exp)*     0.00086792941*     419.48464387520*math.sin( 0.71001090609 +      419.48464387520*t)
      jupiter_r_0+=-math.pow(t,exp)*     0.00072062869*     536.80451209540*math.sin( 0.21465694745 +      536.80451209540*t)
      jupiter_r_0+=-math.pow(t,exp)*     0.00065517227*     316.39186965660*math.sin( 5.97995850843 +      316.39186965660*t)
      jupiter_r_0+=-math.pow(t,exp)*     0.00029134620*     103.09277421860*math.sin( 1.67759243710 +      103.09277421860*t)
      jupiter_r_0+=-math.pow(t,exp)*     0.00030135275*     949.17560896980*math.sin( 2.16132058449 +      949.17560896980*t)
      jupiter_r_0+=-math.pow(t,exp)*     0.00023453209*     735.87651353180*math.sin( 3.54023147303 +      735.87651353180*t)
      jupiter_r_0+=-math.pow(t,exp)*     0.00022283710*    1589.07289528380*math.sin( 4.19362773546 +     1589.07289528380*t)
      jupiter_r_0+=-math.pow(t,exp)*     0.00023947340*       7.11354700080*math.sin( 0.27457854894 +        7.11354700080*t)
      jupiter_r_0+=-math.pow(t,exp)*     0.00013032600*    1162.47470440780*math.sin( 2.96043055741 +     1162.47470440780*t)
      jupiter_r_0+=-math.pow(t,exp)*     0.00012749004*    1052.26838318840*math.sin( 2.71550102862 +     1052.26838318840*t)

      jupiter_r_1=0.0
      exp=1
      jupiter_r_1+=math.pow(t,exp-1)*exp*     0.01271801596*math.cos( 2.64937511122 +      529.69096509460*t)-math.pow(t,exp)*     0.01271801596*     529.69096509460*math.sin( 2.64937511122 +      529.69096509460*t)
      jupiter_r_1+=math.pow(t,exp-1)*exp*     0.00061661771*math.cos( 3.00076251018 +     1059.38193018920*t)-math.pow(t,exp)*     0.00061661771*    1059.38193018920*math.sin( 3.00076251018 +     1059.38193018920*t)
      jupiter_r_1+=math.pow(t,exp-1)*exp*     0.00053443592*math.cos( 3.89717644226 +      522.57741809380*t)-math.pow(t,exp)*     0.00053443592*     522.57741809380*math.sin( 3.89717644226 +      522.57741809380*t)
      jupiter_r_1+=math.pow(t,exp-1)*exp*     0.00031185167*math.cos( 4.88276663526 +      536.80451209540*t)-math.pow(t,exp)*     0.00031185167*     536.80451209540*math.sin( 4.88276663526 +      536.80451209540*t)
      jupiter_r_1+=math.pow(t,exp-1)*exp*     0.00041390257*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)*     0.00041390257*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      jupiter_r_1+=math.pow(t,exp-1)*exp*     0.00011847190*math.cos( 2.41329588176 +      419.48464387520*t)-math.pow(t,exp)*     0.00011847190*     419.48464387520*math.sin( 2.41329588176 +      419.48464387520*t)

      jupiter_r_2=0.0
      exp=2
      jupiter_r_2+=math.pow(t,exp-1)*exp*     0.00079644833*math.cos( 1.35865896596 +      529.69096509460*t)-math.pow(t,exp)*     0.00079644833*     529.69096509460*math.sin( 1.35865896596 +      529.69096509460*t)

      return jupiter_r_0+jupiter_r_1+jupiter_r_2
   

   @staticmethod
   def mars_l(t):
      exp=0.0
      mars_l_0=0.0
      exp=0
      mars_l_0+=-math.pow(t,exp)*     6.20347711583*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      mars_l_0+=-math.pow(t,exp)*     0.18656368100*    3340.61242669980*math.sin( 5.05037100303 +     3340.61242669980*t)
      mars_l_0+=-math.pow(t,exp)*     0.01108216792*    6681.22485339960*math.sin( 5.40099836958 +     6681.22485339960*t)
      mars_l_0+=-math.pow(t,exp)*     0.00091798394*   10021.83728009940*math.sin( 5.75478745111 +    10021.83728009940*t)
      mars_l_0+=-math.pow(t,exp)*     0.00027744987*       3.52311834900*math.sin( 5.97049512942 +        3.52311834900*t)
      mars_l_0+=-math.pow(t,exp)*     0.00010610230*    2281.23049651060*math.sin( 2.93958524973 +     2281.23049651060*t)
      mars_l_0+=-math.pow(t,exp)*     0.00012315897*    2810.92146160520*math.sin( 0.84956081238 +     2810.92146160520*t)

      mars_l_1=0.0
      exp=1
      mars_l_1+=math.pow(t,exp-1)*exp*  3340.85627474342*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)*  3340.85627474342*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      mars_l_1+=math.pow(t,exp-1)*exp*     0.01458227051*math.cos( 3.60426053609 +     3340.61242669980*t)-math.pow(t,exp)*     0.01458227051*    3340.61242669980*math.sin( 3.60426053609 +     3340.61242669980*t)
      mars_l_1+=math.pow(t,exp-1)*exp*     0.00164901343*math.cos( 3.92631250962 +     6681.22485339960*t)-math.pow(t,exp)*     0.00164901343*    6681.22485339960*math.sin( 3.92631250962 +     6681.22485339960*t)
      mars_l_1+=math.pow(t,exp-1)*exp*     0.00019963338*math.cos( 4.26594061030 +    10021.83728009940*t)-math.pow(t,exp)*     0.00019963338*   10021.83728009940*math.sin( 4.26594061030 +    10021.83728009940*t)

      mars_l_2=0.0
      exp=2
      mars_l_2+=math.pow(t,exp-1)*exp*     0.00058015791*math.cos( 2.04979463279 +     3340.61242669980*t)-math.pow(t,exp)*     0.00058015791*    3340.61242669980*math.sin( 2.04979463279 +     3340.61242669980*t)
      mars_l_2+=math.pow(t,exp-1)*exp*     0.00054187645*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)*     0.00054187645*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      mars_l_2+=math.pow(t,exp-1)*exp*     0.00013908426*math.cos( 2.45742359888 +     6681.22485339960*t)-math.pow(t,exp)*     0.00013908426*    6681.22485339960*math.sin( 2.45742359888 +     6681.22485339960*t)

      return mars_l_0+mars_l_1+mars_l_2
   

   @staticmethod
   def mars_b(t):
      exp=0.0
      mars_b_0=0.0
      exp=0
      mars_b_0+=-math.pow(t,exp)*     0.03197134986*    3340.61242669980*math.sin( 3.76832042432 +     3340.61242669980*t)
      mars_b_0+=-math.pow(t,exp)*     0.00298033234*    6681.22485339960*math.sin( 4.10616996243 +     6681.22485339960*t)
      mars_b_0+=-math.pow(t,exp)*     0.00289104742*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      mars_b_0+=-math.pow(t,exp)*     0.00031365538*   10021.83728009940*math.sin( 4.44651052853 +    10021.83728009940*t)

      mars_b_1=0.0
      exp=1
      mars_b_1+=math.pow(t,exp-1)*exp*     0.00350068845*math.cos( 5.36847836211 +     3340.61242669980*t)-math.pow(t,exp)*     0.00350068845*    3340.61242669980*math.sin( 5.36847836211 +     3340.61242669980*t)
      mars_b_1+=math.pow(t,exp-1)*exp*     0.00014116030*math.cos( 3.14159265359 +        0.00000000000*t)-math.pow(t,exp)*     0.00014116030*       0.00000000000*math.sin( 3.14159265359 +        0.00000000000*t)

      mars_b_2=0.0
      exp=2
      mars_b_2+=math.pow(t,exp-1)*exp*     0.00016726690*math.cos( 0.60221392419 +     3340.61242669980*t)-math.pow(t,exp)*     0.00016726690*    3340.61242669980*math.sin( 0.60221392419 +     3340.61242669980*t)

      return mars_b_0+mars_b_1+mars_b_2
   

   @staticmethod
   def mars_r(t):
      exp=0.0
      mars_r_0=0.0
      exp=0
      mars_r_0+=-math.pow(t,exp)*     1.53033488276*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      mars_r_0+=-math.pow(t,exp)*     0.14184953153*    3340.61242669980*math.sin( 3.47971283519 +     3340.61242669980*t)
      mars_r_0+=-math.pow(t,exp)*     0.00660776357*    6681.22485339960*math.sin( 3.81783442097 +     6681.22485339960*t)
      mars_r_0+=-math.pow(t,exp)*     0.00046179117*   10021.83728009940*math.sin( 4.15595316284 +    10021.83728009940*t)

      mars_r_1=0.0
      exp=1
      mars_r_1+=math.pow(t,exp-1)*exp*     0.01107433340*math.cos( 2.03250524950 +     3340.61242669980*t)-math.pow(t,exp)*     0.01107433340*    3340.61242669980*math.sin( 2.03250524950 +     3340.61242669980*t)
      mars_r_1+=math.pow(t,exp-1)*exp*     0.00103175886*math.cos( 2.37071845682 +     6681.22485339960*t)-math.pow(t,exp)*     0.00103175886*    6681.22485339960*math.sin( 2.37071845682 +     6681.22485339960*t)
      mars_r_1+=math.pow(t,exp-1)*exp*     0.00012877200*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)*     0.00012877200*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      mars_r_1+=math.pow(t,exp-1)*exp*     0.00010815880*math.cos( 2.70888093803 +    10021.83728009940*t)-math.pow(t,exp)*     0.00010815880*   10021.83728009940*math.sin( 2.70888093803 +    10021.83728009940*t)

      mars_r_2=0.0
      exp=2
      mars_r_2+=math.pow(t,exp-1)*exp*     0.00044242247*math.cos( 0.47930603943 +     3340.61242669980*t)-math.pow(t,exp)*     0.00044242247*    3340.61242669980*math.sin( 0.47930603943 +     3340.61242669980*t)

      return mars_r_0+mars_r_1+mars_r_2
   

   @staticmethod
   def mercury_l(t):
      exp=0.0
      mercury_l_0=0.0
      exp=0
      mercury_l_0+=-math.pow(t,exp)*     4.40250710144*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      mercury_l_0+=-math.pow(t,exp)*     0.40989414976*   26087.90314157420*math.sin( 1.48302034194 +    26087.90314157420*t)
      mercury_l_0+=-math.pow(t,exp)*     0.05046294199*   52175.80628314840*math.sin( 4.47785489540 +    52175.80628314840*t)
      mercury_l_0+=-math.pow(t,exp)*     0.00855346843*   78263.70942472259*math.sin( 1.16520322351 +    78263.70942472259*t)
      mercury_l_0+=-math.pow(t,exp)*     0.00165590362*  104351.61256629678*math.sin( 4.11969163181 +   104351.61256629678*t)
      mercury_l_0+=-math.pow(t,exp)*     0.00034561897*  130439.51570787099*math.sin( 0.77930765817 +   130439.51570787099*t)

      mercury_l_1=0.0
      exp=1
      mercury_l_1+=math.pow(t,exp-1)*exp* 26088.14706222746*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)* 26088.14706222746*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      mercury_l_1+=math.pow(t,exp-1)*exp*     0.01126007832*math.cos( 6.21703970996 +    26087.90314157420*t)-math.pow(t,exp)*     0.01126007832*   26087.90314157420*math.sin( 6.21703970996 +    26087.90314157420*t)
      mercury_l_1+=math.pow(t,exp-1)*exp*     0.00303471395*math.cos( 3.05565472363 +    52175.80628314840*t)-math.pow(t,exp)*     0.00303471395*   52175.80628314840*math.sin( 3.05565472363 +    52175.80628314840*t)
      mercury_l_1+=math.pow(t,exp-1)*exp*     0.00080538452*math.cos( 6.10454743366 +    78263.70942472259*t)-math.pow(t,exp)*     0.00080538452*   78263.70942472259*math.sin( 6.10454743366 +    78263.70942472259*t)
      mercury_l_1+=math.pow(t,exp-1)*exp*     0.00021245035*math.cos( 2.83531934452 +   104351.61256629678*t)-math.pow(t,exp)*     0.00021245035*  104351.61256629678*math.sin( 2.83531934452 +   104351.61256629678*t)

      mercury_l_2=0.0
      exp=2
      mercury_l_2+=math.pow(t,exp-1)*exp*     0.00053049845*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)*     0.00053049845*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      mercury_l_2+=math.pow(t,exp-1)*exp*     0.00016903658*math.cos( 4.69072300649 +    26087.90314157420*t)-math.pow(t,exp)*     0.00016903658*   26087.90314157420*math.sin( 4.69072300649 +    26087.90314157420*t)

      return mercury_l_0+mercury_l_1+mercury_l_2
   

   @staticmethod
   def mercury_b(t):
      exp=0.0
      mercury_b_0=0.0
      exp=0
      mercury_b_0+=-math.pow(t,exp)*     0.11737528962*   26087.90314157420*math.sin( 1.98357498767 +    26087.90314157420*t)
      mercury_b_0+=-math.pow(t,exp)*     0.02388076996*   52175.80628314840*math.sin( 5.03738959685 +    52175.80628314840*t)
      mercury_b_0+=-math.pow(t,exp)*     0.01222839532*       0.00000000000*math.sin( 3.14159265359 +        0.00000000000*t)
      mercury_b_0+=-math.pow(t,exp)*     0.00543251810*   78263.70942472259*math.sin( 1.79644363963 +    78263.70942472259*t)
      mercury_b_0+=-math.pow(t,exp)*     0.00129778770*  104351.61256629678*math.sin( 4.83232503961 +   104351.61256629678*t)
      mercury_b_0+=-math.pow(t,exp)*     0.00031866927*  130439.51570787099*math.sin( 1.58088495667 +   130439.51570787099*t)

      mercury_b_1=0.0
      exp=1
      mercury_b_1+=math.pow(t,exp-1)*exp*     0.00429151362*math.cos( 3.50169780393 +    26087.90314157420*t)-math.pow(t,exp)*     0.00429151362*   26087.90314157420*math.sin( 3.50169780393 +    26087.90314157420*t)
      mercury_b_1+=math.pow(t,exp-1)*exp*     0.00146233668*math.cos( 3.14159265359 +        0.00000000000*t)-math.pow(t,exp)*     0.00146233668*       0.00000000000*math.sin( 3.14159265359 +        0.00000000000*t)
      mercury_b_1+=math.pow(t,exp-1)*exp*     0.00022675295*math.cos( 0.01515366880 +    52175.80628314840*t)-math.pow(t,exp)*     0.00022675295*   52175.80628314840*math.sin( 0.01515366880 +    52175.80628314840*t)
      mercury_b_1+=math.pow(t,exp-1)*exp*     0.00010894981*math.cos( 0.48540174006 +    78263.70942472259*t)-math.pow(t,exp)*     0.00010894981*   78263.70942472259*math.sin( 0.48540174006 +    78263.70942472259*t)

      mercury_b_2=0.0
      exp=2
      mercury_b_2+=math.pow(t,exp-1)*exp*     0.00011830934*math.cos( 4.79065585784 +    26087.90314157420*t)-math.pow(t,exp)*     0.00011830934*   26087.90314157420*math.sin( 4.79065585784 +    26087.90314157420*t)

      return mercury_b_0+mercury_b_1+mercury_b_2
   

   @staticmethod
   def mercury_r(t):
      exp=0.0
      mercury_r_0=0.0
      exp=0
      mercury_r_0+=-math.pow(t,exp)*     0.39528271652*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      mercury_r_0+=-math.pow(t,exp)*     0.07834131817*   26087.90314157420*math.sin( 6.19233722599 +    26087.90314157420*t)
      mercury_r_0+=-math.pow(t,exp)*     0.00795525557*   52175.80628314840*math.sin( 2.95989690096 +    52175.80628314840*t)
      mercury_r_0+=-math.pow(t,exp)*     0.00121281763*   78263.70942472259*math.sin( 6.01064153805 +    78263.70942472259*t)
      mercury_r_0+=-math.pow(t,exp)*     0.00021921969*  104351.61256629678*math.sin( 2.77820093975 +   104351.61256629678*t)

      mercury_r_1=0.0
      exp=1
      mercury_r_1+=math.pow(t,exp-1)*exp*     0.00217347739*math.cos( 4.65617158663 +    26087.90314157420*t)-math.pow(t,exp)*     0.00217347739*   26087.90314157420*math.sin( 4.65617158663 +    26087.90314157420*t)
      mercury_r_1+=math.pow(t,exp-1)*exp*     0.00044141826*math.cos( 1.42385543975 +    52175.80628314840*t)-math.pow(t,exp)*     0.00044141826*   52175.80628314840*math.sin( 1.42385543975 +    52175.80628314840*t)
      mercury_r_1+=math.pow(t,exp-1)*exp*     0.00010094479*math.cos( 4.47466326316 +    78263.70942472259*t)-math.pow(t,exp)*     0.00010094479*   78263.70942472259*math.sin( 4.47466326316 +    78263.70942472259*t)

      return mercury_r_0+mercury_r_1
   

   @staticmethod
   def neptune_l(t):
      exp=0.0
      neptune_l_0=0.0
      exp=0
      neptune_l_0+=-math.pow(t,exp)*     5.31188633047*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      neptune_l_0+=-math.pow(t,exp)*     0.01798475509*      38.13303563780*math.sin( 2.90101273050 +       38.13303563780*t)
      neptune_l_0+=-math.pow(t,exp)*     0.01019727662*       1.48447270830*math.sin( 0.48580923660 +        1.48447270830*t)
      neptune_l_0+=-math.pow(t,exp)*     0.00124531845*      36.64856292950*math.sin( 4.83008090682 +       36.64856292950*t)
      neptune_l_0+=-math.pow(t,exp)*     0.00042064450*       2.96894541660*math.sin( 5.41054991607 +        2.96894541660*t)
      neptune_l_0+=-math.pow(t,exp)*     0.00037714589*      35.16409022120*math.sin( 6.09221834946 +       35.16409022120*t)
      neptune_l_0+=-math.pow(t,exp)*     0.00033784734*      76.26607127560*math.sin( 1.24488865578 +       76.26607127560*t)
      neptune_l_0+=-math.pow(t,exp)*     0.00016482741*     491.55792945680*math.sin( 0.00007729261 +      491.55792945680*t)

      neptune_l_1=0.0
      exp=1
      neptune_l_1+=math.pow(t,exp-1)*exp*    38.37687716731*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)*    38.37687716731*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      neptune_l_1+=math.pow(t,exp-1)*exp*     0.00016604187*math.cos( 4.86319129565 +        1.48447270830*t)-math.pow(t,exp)*     0.00016604187*       1.48447270830*math.sin( 4.86319129565 +        1.48447270830*t)
      neptune_l_1+=math.pow(t,exp-1)*exp*     0.00015807148*math.cos( 2.27923488532 +       38.13303563780*t)-math.pow(t,exp)*     0.00015807148*      38.13303563780*math.sin( 2.27923488532 +       38.13303563780*t)

      neptune_l_2=0.0
      exp=2
      neptune_l_2+=math.pow(t,exp-1)*exp*     0.00053892649*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)*     0.00053892649*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)

      return neptune_l_0+neptune_l_1+neptune_l_2
   

   @staticmethod
   def neptune_b(t):
      exp=0.0
      neptune_b_0=0.0
      exp=0
      neptune_b_0+=-math.pow(t,exp)*     0.03088622933*      38.13303563780*math.sin( 1.44104372626 +       38.13303563780*t)
      neptune_b_0+=-math.pow(t,exp)*     0.00027780087*      76.26607127560*math.sin( 5.91271882843 +       76.26607127560*t)
      neptune_b_0+=-math.pow(t,exp)*     0.00027623609*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      neptune_b_0+=-math.pow(t,exp)*     0.00015355490*      36.64856292950*math.sin( 2.52123799481 +       36.64856292950*t)
      neptune_b_0+=-math.pow(t,exp)*     0.00015448133*      39.61750834610*math.sin( 3.50877080888 +       39.61750834610*t)

      neptune_b_1=0.0
      exp=1
      neptune_b_1+=math.pow(t,exp-1)*exp*     0.00227279214*math.cos( 3.80793089870 +       38.13303563780*t)-math.pow(t,exp)*     0.00227279214*      38.13303563780*math.sin( 3.80793089870 +       38.13303563780*t)

      return neptune_b_0+neptune_b_1
   

   @staticmethod
   def neptune_r(t):
      exp=0.0
      neptune_r_0=0.0
      exp=0
      neptune_r_0+=-math.pow(t,exp)*    30.07013206102*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      neptune_r_0+=-math.pow(t,exp)*     0.27062259490*      38.13303563780*math.sin( 1.32999458930 +       38.13303563780*t)
      neptune_r_0+=-math.pow(t,exp)*     0.01691764281*      36.64856292950*math.sin( 3.25186138896 +       36.64856292950*t)
      neptune_r_0+=-math.pow(t,exp)*     0.00807830737*       1.48447270830*math.sin( 5.18592836167 +        1.48447270830*t)
      neptune_r_0+=-math.pow(t,exp)*     0.00537760613*      35.16409022120*math.sin( 4.52113902845 +       35.16409022120*t)
      neptune_r_0+=-math.pow(t,exp)*     0.00495725642*     491.55792945680*math.sin( 1.57105654815 +      491.55792945680*t)
      neptune_r_0+=-math.pow(t,exp)*     0.00274571970*     175.16605980020*math.sin( 1.84552256801 +      175.16605980020*t)
      neptune_r_0+=-math.pow(t,exp)*     0.00135134095*      39.61750834610*math.sin( 3.37220607384 +       39.61750834610*t)
      neptune_r_0+=-math.pow(t,exp)*     0.00121801825*      76.26607127560*math.sin( 5.79754444303 +       76.26607127560*t)
      neptune_r_0+=-math.pow(t,exp)*     0.00100895397*      73.29712585900*math.sin( 0.37702748681 +       73.29712585900*t)
      neptune_r_0+=-math.pow(t,exp)*     0.00069791722*       2.96894541660*math.sin( 3.79617226928 +        2.96894541660*t)
      neptune_r_0+=-math.pow(t,exp)*     0.00046687838*      33.67961751290*math.sin( 5.74937810094 +       33.67961751290*t)
      neptune_r_0+=-math.pow(t,exp)*     0.00024593778*     109.94568878850*math.sin( 0.50801728204 +      109.94568878850*t)
      neptune_r_0+=-math.pow(t,exp)*     0.00016939242*      71.81265315070*math.sin( 1.59422166991 +       71.81265315070*t)
      neptune_r_0+=-math.pow(t,exp)*     0.00014229686*      74.78159856730*math.sin( 1.07786112902 +       74.78159856730*t)
      neptune_r_0+=-math.pow(t,exp)*     0.00012011825*    1021.24889455140*math.sin( 1.92062131635 +     1021.24889455140*t)

      neptune_r_1=0.0
      exp=1
      neptune_r_1+=math.pow(t,exp-1)*exp*     0.00236338502*math.cos( 0.70498011235 +       38.13303563780*t)-math.pow(t,exp)*     0.00236338502*      38.13303563780*math.sin( 0.70498011235 +       38.13303563780*t)
      neptune_r_1+=math.pow(t,exp-1)*exp*     0.00013220279*math.cos( 3.32015499895 +        1.48447270830*t)-math.pow(t,exp)*     0.00013220279*       1.48447270830*math.sin( 3.32015499895 +        1.48447270830*t)

      return neptune_r_0+neptune_r_1
   

   @staticmethod
   def saturn_l(t):
      exp=0.0
      saturn_l_0=0.0
      exp=0
      saturn_l_0+=-math.pow(t,exp)*     0.87401354029*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      saturn_l_0+=-math.pow(t,exp)*     0.11107659780*     213.29909543800*math.sin( 3.96205090194 +      213.29909543800*t)
      saturn_l_0+=-math.pow(t,exp)*     0.01414150958*       7.11354700080*math.sin( 4.58581515873 +        7.11354700080*t)
      saturn_l_0+=-math.pow(t,exp)*     0.00398379386*     206.18554843720*math.sin( 0.52112025957 +      206.18554843720*t)
      saturn_l_0+=-math.pow(t,exp)*     0.00350769223*     426.59819087600*math.sin( 3.30329903015 +      426.59819087600*t)
      saturn_l_0+=-math.pow(t,exp)*     0.00206816296*     103.09277421860*math.sin( 0.24658366938 +      103.09277421860*t)
      saturn_l_0+=-math.pow(t,exp)*     0.00079271288*     220.41264243880*math.sin( 3.84007078530 +      220.41264243880*t)
      saturn_l_0+=-math.pow(t,exp)*     0.00023990338*     110.20632121940*math.sin( 4.66976934860 +      110.20632121940*t)
      saturn_l_0+=-math.pow(t,exp)*     0.00016573583*     419.48464387520*math.sin( 0.43719123541 +      419.48464387520*t)
      saturn_l_0+=-math.pow(t,exp)*     0.00014906995*     316.39186965660*math.sin( 5.76903283845 +      316.39186965660*t)
      saturn_l_0+=-math.pow(t,exp)*     0.00015820300*     632.78373931320*math.sin( 0.93808953760 +      632.78373931320*t)
      saturn_l_0+=-math.pow(t,exp)*     0.00014609562*       3.93215326310*math.sin( 1.56518573691 +        3.93215326310*t)
      saturn_l_0+=-math.pow(t,exp)*     0.00013160308*      14.22709400160*math.sin( 4.44891180176 +       14.22709400160*t)
      saturn_l_0+=-math.pow(t,exp)*     0.00015053509*     639.89728631400*math.sin( 2.71670027883 +      639.89728631400*t)
      saturn_l_0+=-math.pow(t,exp)*     0.00013005305*      11.04570026390*math.sin( 5.98119067061 +       11.04570026390*t)
      saturn_l_0+=-math.pow(t,exp)*     0.00010725066*     202.25339517410*math.sin( 3.12939596466 +      202.25339517410*t)

      saturn_l_1=0.0
      exp=1
      saturn_l_1+=math.pow(t,exp-1)*exp*   213.54295595986*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)*   213.54295595986*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      saturn_l_1+=math.pow(t,exp-1)*exp*     0.01296855005*math.cos( 1.82820544701 +      213.29909543800*t)-math.pow(t,exp)*     0.01296855005*     213.29909543800*math.sin( 1.82820544701 +      213.29909543800*t)
      saturn_l_1+=math.pow(t,exp-1)*exp*     0.00564347566*math.cos( 2.88500136429 +        7.11354700080*t)-math.pow(t,exp)*     0.00564347566*       7.11354700080*math.sin( 2.88500136429 +        7.11354700080*t)
      saturn_l_1+=math.pow(t,exp-1)*exp*     0.00098323030*math.cos( 1.08070061328 +      426.59819087600*t)-math.pow(t,exp)*     0.00098323030*     426.59819087600*math.sin( 1.08070061328 +      426.59819087600*t)
      saturn_l_1+=math.pow(t,exp-1)*exp*     0.00107678770*math.cos( 2.27769911872 +      206.18554843720*t)-math.pow(t,exp)*     0.00107678770*     206.18554843720*math.sin( 2.27769911872 +      206.18554843720*t)
      saturn_l_1+=math.pow(t,exp-1)*exp*     0.00040254586*math.cos( 2.04128257090 +      220.41264243880*t)-math.pow(t,exp)*     0.00040254586*     220.41264243880*math.sin( 2.04128257090 +      220.41264243880*t)
      saturn_l_1+=math.pow(t,exp-1)*exp*     0.00019941734*math.cos( 1.27954662736 +      103.09277421860*t)-math.pow(t,exp)*     0.00019941734*     103.09277421860*math.sin( 1.27954662736 +      103.09277421860*t)
      saturn_l_1+=math.pow(t,exp-1)*exp*     0.00010511706*math.cos( 2.74880392800 +       14.22709400160*t)-math.pow(t,exp)*     0.00010511706*      14.22709400160*math.sin( 2.74880392800 +       14.22709400160*t)

      saturn_l_2=0.0
      exp=2
      saturn_l_2+=math.pow(t,exp-1)*exp*     0.00116441181*math.cos( 1.17987850633 +        7.11354700080*t)-math.pow(t,exp)*     0.00116441181*       7.11354700080*math.sin( 1.17987850633 +        7.11354700080*t)
      saturn_l_2+=math.pow(t,exp-1)*exp*     0.00091920844*math.cos( 0.07425261094 +      213.29909543800*t)-math.pow(t,exp)*     0.00091920844*     213.29909543800*math.sin( 0.07425261094 +      213.29909543800*t)
      saturn_l_2+=math.pow(t,exp-1)*exp*     0.00090592251*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)*     0.00090592251*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      saturn_l_2+=math.pow(t,exp-1)*exp*     0.00015276909*math.cos( 4.06492007503 +      206.18554843720*t)-math.pow(t,exp)*     0.00015276909*     206.18554843720*math.sin( 4.06492007503 +      206.18554843720*t)
      saturn_l_2+=math.pow(t,exp-1)*exp*     0.00010631396*math.cos( 0.25778277414 +      220.41264243880*t)-math.pow(t,exp)*     0.00010631396*     220.41264243880*math.sin( 0.25778277414 +      220.41264243880*t)
      saturn_l_2+=math.pow(t,exp-1)*exp*     0.00010604979*math.cos( 5.40963595885 +      426.59819087600*t)-math.pow(t,exp)*     0.00010604979*     426.59819087600*math.sin( 5.40963595885 +      426.59819087600*t)

      saturn_l_3=0.0
      exp=3
      saturn_l_3+=math.pow(t,exp-1)*exp*     0.00016038734*math.cos( 5.73945377424 +        7.11354700080*t)-math.pow(t,exp)*     0.00016038734*       7.11354700080*math.sin( 5.73945377424 +        7.11354700080*t)

      return saturn_l_0+saturn_l_1+saturn_l_2+saturn_l_3
   

   @staticmethod
   def saturn_b(t):
      exp=0.0
      saturn_b_0=0.0
      exp=0
      saturn_b_0+=-math.pow(t,exp)*     0.04330678040*     213.29909543800*math.sin( 3.60284428399 +      213.29909543800*t)
      saturn_b_0+=-math.pow(t,exp)*     0.00240348303*     426.59819087600*math.sin( 2.85238489390 +      426.59819087600*t)
      saturn_b_0+=-math.pow(t,exp)*     0.00084745939*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      saturn_b_0+=-math.pow(t,exp)*     0.00030863357*     220.41264243880*math.sin( 3.48441504465 +      220.41264243880*t)
      saturn_b_0+=-math.pow(t,exp)*     0.00034116063*     206.18554843720*math.sin( 0.57297307844 +      206.18554843720*t)
      saturn_b_0+=-math.pow(t,exp)*     0.00014734070*     639.89728631400*math.sin( 2.11846597870 +      639.89728631400*t)

      saturn_b_1=0.0
      exp=1
      saturn_b_1+=math.pow(t,exp-1)*exp*     0.00397554998*math.cos( 5.33289992556 +      213.29909543800*t)-math.pow(t,exp)*     0.00397554998*     213.29909543800*math.sin( 5.33289992556 +      213.29909543800*t)
      saturn_b_1+=math.pow(t,exp-1)*exp*     0.00049478641*math.cos( 3.14159265359 +        0.00000000000*t)-math.pow(t,exp)*     0.00049478641*       0.00000000000*math.sin( 3.14159265359 +        0.00000000000*t)
      saturn_b_1+=math.pow(t,exp-1)*exp*     0.00018571607*math.cos( 6.09919206378 +      426.59819087600*t)-math.pow(t,exp)*     0.00018571607*     426.59819087600*math.sin( 6.09919206378 +      426.59819087600*t)
      saturn_b_1+=math.pow(t,exp-1)*exp*     0.00014800587*math.cos( 2.30586060520 +      206.18554843720*t)-math.pow(t,exp)*     0.00014800587*     206.18554843720*math.sin( 2.30586060520 +      206.18554843720*t)

      saturn_b_2=0.0
      exp=2
      saturn_b_2+=math.pow(t,exp-1)*exp*     0.00020629977*math.cos( 0.50482422817 +      213.29909543800*t)-math.pow(t,exp)*     0.00020629977*     213.29909543800*math.sin( 0.50482422817 +      213.29909543800*t)

      return saturn_b_0+saturn_b_1+saturn_b_2
   

   @staticmethod
   def saturn_r(t):
      exp=0.0
      saturn_r_0=0.0
      exp=0
      saturn_r_0+=-math.pow(t,exp)*     9.55758135801*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      saturn_r_0+=-math.pow(t,exp)*     0.52921382465*     213.29909543800*math.sin( 2.39226219733 +      213.29909543800*t)
      saturn_r_0+=-math.pow(t,exp)*     0.01873679934*     206.18554843720*math.sin( 5.23549605091 +      206.18554843720*t)
      saturn_r_0+=-math.pow(t,exp)*     0.01464663959*     426.59819087600*math.sin( 1.64763045468 +      426.59819087600*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00821891059*     316.39186965660*math.sin( 5.93520025371 +      316.39186965660*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00547506899*     103.09277421860*math.sin( 5.01532628454 +      103.09277421860*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00371684449*     220.41264243880*math.sin( 2.27114833428 +      220.41264243880*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00361778433*       7.11354700080*math.sin( 3.13904303264 +        7.11354700080*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00140617548*     632.78373931320*math.sin( 5.70406652991 +      632.78373931320*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00108974737*     110.20632121940*math.sin( 3.29313595577 +      110.20632121940*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00069007015*     419.48464387520*math.sin( 5.94099622447 +      419.48464387520*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00061053350*     639.89728631400*math.sin( 0.94037761156 +      639.89728631400*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00048913044*     202.25339517410*math.sin( 1.55733388472 +      202.25339517410*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00034143794*     277.03499374140*math.sin( 0.19518550682 +      277.03499374140*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00032401718*     949.17560896980*math.sin( 5.47084606947 +      949.17560896980*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00020936573*     735.87651353180*math.sin( 0.46349163993 +      735.87651353180*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00020839118*     433.71173787680*math.sin( 1.52102590640 +      433.71173787680*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00020746678*     199.07200143640*math.sin( 5.33255667599 +      199.07200143640*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00015298457*     529.69096509460*math.sin( 3.05943652881 +      529.69096509460*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00014296479*     323.50541665740*math.sin( 2.60433537909 +      323.50541665740*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00011993314*     846.08283475120*math.sin( 5.98051421881 +      846.08283475120*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00011380261*     522.57741809380*math.sin( 1.73105746566 +      522.57741809380*t)
      saturn_r_0+=-math.pow(t,exp)*     0.00012884128*     138.51749687070*math.sin( 1.64892310393 +      138.51749687070*t)

      saturn_r_1=0.0
      exp=1
      saturn_r_1+=math.pow(t,exp-1)*exp*     0.06182981282*math.cos( 0.25843515034 +      213.29909543800*t)-math.pow(t,exp)*     0.06182981282*     213.29909543800*math.sin( 0.25843515034 +      213.29909543800*t)
      saturn_r_1+=math.pow(t,exp-1)*exp*     0.00506577574*math.cos( 0.71114650941 +      206.18554843720*t)-math.pow(t,exp)*     0.00506577574*     206.18554843720*math.sin( 0.71114650941 +      206.18554843720*t)
      saturn_r_1+=math.pow(t,exp-1)*exp*     0.00341394136*math.cos( 5.79635773960 +      426.59819087600*t)-math.pow(t,exp)*     0.00341394136*     426.59819087600*math.sin( 5.79635773960 +      426.59819087600*t)
      saturn_r_1+=math.pow(t,exp-1)*exp*     0.00188491375*math.cos( 0.47215719444 +      220.41264243880*t)-math.pow(t,exp)*     0.00188491375*     220.41264243880*math.sin( 0.47215719444 +      220.41264243880*t)
      saturn_r_1+=math.pow(t,exp-1)*exp*     0.00186261540*math.cos( 3.14159265359 +        0.00000000000*t)-math.pow(t,exp)*     0.00186261540*       0.00000000000*math.sin( 3.14159265359 +        0.00000000000*t)
      saturn_r_1+=math.pow(t,exp-1)*exp*     0.00143891176*math.cos( 1.40744864239 +        7.11354700080*t)-math.pow(t,exp)*     0.00143891176*       7.11354700080*math.sin( 1.40744864239 +        7.11354700080*t)
      saturn_r_1+=math.pow(t,exp-1)*exp*     0.00049621111*math.cos( 6.01744469580 +      103.09277421860*t)-math.pow(t,exp)*     0.00049621111*     103.09277421860*math.sin( 6.01744469580 +      103.09277421860*t)
      saturn_r_1+=math.pow(t,exp-1)*exp*     0.00020928189*math.cos( 5.09245654470 +      639.89728631400*t)-math.pow(t,exp)*     0.00020928189*     639.89728631400*math.sin( 5.09245654470 +      639.89728631400*t)
      saturn_r_1+=math.pow(t,exp-1)*exp*     0.00019952612*math.cos( 1.17560125007 +      419.48464387520*t)-math.pow(t,exp)*     0.00019952612*     419.48464387520*math.sin( 1.17560125007 +      419.48464387520*t)
      saturn_r_1+=math.pow(t,exp-1)*exp*     0.00018839639*math.cos( 1.60819563173 +      110.20632121940*t)-math.pow(t,exp)*     0.00018839639*     110.20632121940*math.sin( 1.60819563173 +      110.20632121940*t)
      saturn_r_1+=math.pow(t,exp-1)*exp*     0.00012892827*math.cos( 5.94330258435 +      433.71173787680*t)-math.pow(t,exp)*     0.00012892827*     433.71173787680*math.sin( 5.94330258435 +      433.71173787680*t)
      saturn_r_1+=math.pow(t,exp-1)*exp*     0.00013876565*math.cos( 0.75886204364 +      199.07200143640*t)-math.pow(t,exp)*     0.00013876565*     199.07200143640*math.sin( 0.75886204364 +      199.07200143640*t)

      saturn_r_2=0.0
      exp=2
      saturn_r_2+=math.pow(t,exp-1)*exp*     0.00436902464*math.cos( 4.78671673044 +      213.29909543800*t)-math.pow(t,exp)*     0.00436902464*     213.29909543800*math.sin( 4.78671673044 +      213.29909543800*t)
      saturn_r_2+=math.pow(t,exp-1)*exp*     0.00071922760*math.cos( 2.50069994874 +      206.18554843720*t)-math.pow(t,exp)*     0.00071922760*     206.18554843720*math.sin( 2.50069994874 +      206.18554843720*t)
      saturn_r_2+=math.pow(t,exp-1)*exp*     0.00049766792*math.cos( 4.97168150870 +      220.41264243880*t)-math.pow(t,exp)*     0.00049766792*     220.41264243880*math.sin( 4.97168150870 +      220.41264243880*t)
      saturn_r_2+=math.pow(t,exp-1)*exp*     0.00043220894*math.cos( 3.86940443794 +      426.59819087600*t)-math.pow(t,exp)*     0.00043220894*     426.59819087600*math.sin( 3.86940443794 +      426.59819087600*t)
      saturn_r_2+=math.pow(t,exp-1)*exp*     0.00029645554*math.cos( 5.96310264282 +        7.11354700080*t)-math.pow(t,exp)*     0.00029645554*       7.11354700080*math.sin( 5.96310264282 +        7.11354700080*t)

      saturn_r_3=0.0
      exp=3
      saturn_r_3+=math.pow(t,exp-1)*exp*     0.00020315005*math.cos( 3.02186626038 +      213.29909543800*t)-math.pow(t,exp)*     0.00020315005*     213.29909543800*math.sin( 3.02186626038 +      213.29909543800*t)

      return saturn_r_0+saturn_r_1+saturn_r_2+saturn_r_3
   

   @staticmethod
   def uranus_l(t):
      exp=0.0
      uranus_l_0=0.0
      exp=0
      uranus_l_0+=-math.pow(t,exp)*     5.48129294299*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      uranus_l_0+=-math.pow(t,exp)*     0.09260408252*      74.78159856730*math.sin( 0.89106421530 +       74.78159856730*t)
      uranus_l_0+=-math.pow(t,exp)*     0.01504247826*       1.48447270830*math.sin( 3.62719262195 +        1.48447270830*t)
      uranus_l_0+=-math.pow(t,exp)*     0.00365981718*      73.29712585900*math.sin( 1.89962189068 +       73.29712585900*t)
      uranus_l_0+=-math.pow(t,exp)*     0.00272328132*     149.56319713460*math.sin( 3.35823710524 +      149.56319713460*t)
      uranus_l_0+=-math.pow(t,exp)*     0.00070328499*      63.73589830340*math.sin( 5.39254431993 +       63.73589830340*t)
      uranus_l_0+=-math.pow(t,exp)*     0.00068892609*      76.26607127560*math.sin( 6.09292489045 +       76.26607127560*t)
      uranus_l_0+=-math.pow(t,exp)*     0.00061998592*       2.96894541660*math.sin( 2.26952040469 +        2.96894541660*t)
      uranus_l_0+=-math.pow(t,exp)*     0.00061950714*      11.04570026390*math.sin( 2.85098907565 +       11.04570026390*t)
      uranus_l_0+=-math.pow(t,exp)*     0.00026468869*      71.81265315070*math.sin( 3.14152087888 +       71.81265315070*t)
      uranus_l_0+=-math.pow(t,exp)*     0.00025710505*     454.90936652730*math.sin( 6.11379842935 +      454.90936652730*t)
      uranus_l_0+=-math.pow(t,exp)*     0.00021078897*     148.07872442630*math.sin( 4.36059465144 +      148.07872442630*t)
      uranus_l_0+=-math.pow(t,exp)*     0.00017818665*      36.64856292950*math.sin( 1.74436982544 +       36.64856292950*t)
      uranus_l_0+=-math.pow(t,exp)*     0.00014613471*       3.93215326310*math.sin( 4.73732047977 +        3.93215326310*t)
      uranus_l_0+=-math.pow(t,exp)*     0.00011162535*     224.34479570190*math.sin( 5.82681993692 +      224.34479570190*t)
      uranus_l_0+=-math.pow(t,exp)*     0.00010997934*     138.51749687070*math.sin( 0.48865493179 +      138.51749687070*t)

      uranus_l_1=0.0
      exp=1
      uranus_l_1+=math.pow(t,exp-1)*exp*    75.02543121646*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)*    75.02543121646*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      uranus_l_1+=math.pow(t,exp-1)*exp*     0.00154458244*math.cos( 5.24201658072 +       74.78159856730*t)-math.pow(t,exp)*     0.00154458244*      74.78159856730*math.sin( 5.24201658072 +       74.78159856730*t)
      uranus_l_1+=math.pow(t,exp-1)*exp*     0.00024456413*math.cos( 1.71255705309 +        1.48447270830*t)-math.pow(t,exp)*     0.00024456413*       1.48447270830*math.sin( 1.71255705309 +        1.48447270830*t)

      uranus_l_2=0.0
      exp=2
      uranus_l_2+=math.pow(t,exp-1)*exp*     0.00053033277*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)*     0.00053033277*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)

      return uranus_l_0+uranus_l_1+uranus_l_2
   

   @staticmethod
   def uranus_b(t):
      exp=0.0
      uranus_b_0=0.0
      exp=0
      uranus_b_0+=-math.pow(t,exp)*     0.01346277639*      74.78159856730*math.sin( 2.61877810545 +       74.78159856730*t)
      uranus_b_0+=-math.pow(t,exp)*     0.00062341405*     149.56319713460*math.sin( 5.08111175856 +      149.56319713460*t)
      uranus_b_0+=-math.pow(t,exp)*     0.00061601203*       0.00000000000*math.sin( 3.14159265359 +        0.00000000000*t)

      uranus_b_1=0.0
      exp=1
      uranus_b_1+=math.pow(t,exp-1)*exp*     0.00206366162*math.cos( 4.12394311407 +       74.78159856730*t)-math.pow(t,exp)*     0.00206366162*      74.78159856730*math.sin( 4.12394311407 +       74.78159856730*t)

      return uranus_b_0+uranus_b_1
   

   @staticmethod
   def uranus_r(t):
      exp=0.0
      uranus_r_0=0.0
      exp=0
      uranus_r_0+=-math.pow(t,exp)*    19.21264847881*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      uranus_r_0+=-math.pow(t,exp)*     0.88784984055*      74.78159856730*math.sin( 5.60377526994 +       74.78159856730*t)
      uranus_r_0+=-math.pow(t,exp)*     0.03440835545*      73.29712585900*math.sin( 0.32836098991 +       73.29712585900*t)
      uranus_r_0+=-math.pow(t,exp)*     0.02055653495*     149.56319713460*math.sin( 1.78295170028 +      149.56319713460*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00649321851*      76.26607127560*math.sin( 4.52247298119 +       76.26607127560*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00602248144*      63.73589830340*math.sin( 3.86003820462 +       63.73589830340*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00496404171*     454.90936652730*math.sin( 1.40139934716 +      454.90936652730*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00338525522*     138.51749687070*math.sin( 1.58002682946 +      138.51749687070*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00243508222*      71.81265315070*math.sin( 1.57086595074 +       71.81265315070*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00190521915*       1.48447270830*math.sin( 1.99809364502 +        1.48447270830*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00161858251*     148.07872442630*math.sin( 2.79137863469 +      148.07872442630*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00143705902*      11.04570026390*math.sin( 1.38368574483 +       11.04570026390*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00093192359*      36.64856292950*math.sin( 0.17437193645 +       36.64856292950*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00071424265*     224.34479570190*math.sin( 4.24509327405 +      224.34479570190*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00089805842*     109.94568878850*math.sin( 3.66105366329 +      109.94568878850*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00039009624*      70.84944530420*math.sin( 1.66971128869 +       70.84944530420*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00046677322*      35.16409022120*math.sin( 1.39976563936 +       35.16409022120*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00039025681*     277.03499374140*math.sin( 3.36234710692 +      277.03499374140*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00036755160*     146.59425171800*math.sin( 3.88648934736 +      146.59425171800*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00030348875*     151.04766984290*math.sin( 0.70100446346 +      151.04766984290*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00029156264*      77.75054398390*math.sin( 3.18056174556 +       77.75054398390*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00020471584*     202.25339517410*math.sin( 1.55588961500 +      202.25339517410*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00025620360*     380.12776796000*math.sin( 5.25656292802 +      380.12776796000*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00025785805*      85.82729883120*math.sin( 3.78537741503 +       85.82729883120*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00022637152*     529.69096509460*math.sin( 0.72519137745 +      529.69096509460*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00020473163*      70.32818044240*math.sin( 2.79639811626 +       70.32818044240*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00017900561*       2.96894541660*math.sin( 0.55455488605 +        2.96894541660*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00012328151*     127.47179660680*math.sin( 5.96039150918 +      127.47179660680*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00014701566*     108.46121608020*math.sin( 4.90434406648 +      108.46121608020*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00011494701*      65.22037101170*math.sin( 0.43774027872 +       65.22037101170*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00015502809*      38.13303563780*math.sin( 5.35405037603 +       38.13303563780*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00010792699*     213.29909543800*math.sin( 1.42104858472 +      213.29909543800*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00011696085*       3.93215326310*math.sin( 3.29825599114 +        3.93215326310*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00011959355*     984.60033162190*math.sin( 1.75044072173 +      984.60033162190*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00012896507*     111.43016149680*math.sin( 2.62154018241 +      111.43016149680*t)
      uranus_r_0+=-math.pow(t,exp)*     0.00011852996*      52.69019803950*math.sin( 0.99342814582 +       52.69019803950*t)

      uranus_r_1=0.0
      exp=1
      uranus_r_1+=math.pow(t,exp-1)*exp*     0.01479896370*math.cos( 3.67205705317 +       74.78159856730*t)-math.pow(t,exp)*     0.01479896370*      74.78159856730*math.sin( 3.67205705317 +       74.78159856730*t)
      uranus_r_1+=math.pow(t,exp-1)*exp*     0.00071212085*math.cos( 6.22601006675 +       63.73589830340*t)-math.pow(t,exp)*     0.00071212085*      63.73589830340*math.sin( 6.22601006675 +       63.73589830340*t)
      uranus_r_1+=math.pow(t,exp-1)*exp*     0.00068626972*math.cos( 6.13411265052 +      149.56319713460*t)-math.pow(t,exp)*     0.00068626972*     149.56319713460*math.sin( 6.13411265052 +      149.56319713460*t)
      uranus_r_1+=math.pow(t,exp-1)*exp*     0.00020857262*math.cos( 5.24625494219 +       11.04570026390*t)-math.pow(t,exp)*     0.00020857262*      11.04570026390*math.sin( 5.24625494219 +       11.04570026390*t)
      uranus_r_1+=math.pow(t,exp-1)*exp*     0.00021468152*math.cos( 2.60176704270 +       76.26607127560*t)-math.pow(t,exp)*     0.00021468152*      76.26607127560*math.sin( 2.60176704270 +       76.26607127560*t)
      uranus_r_1+=math.pow(t,exp-1)*exp*     0.00024059649*math.cos( 3.14159265359 +        0.00000000000*t)-math.pow(t,exp)*     0.00024059649*       0.00000000000*math.sin( 3.14159265359 +        0.00000000000*t)
      uranus_r_1+=math.pow(t,exp-1)*exp*     0.00011405346*math.cos( 0.01848461561 +       70.84944530420*t)-math.pow(t,exp)*     0.00011405346*      70.84944530420*math.sin( 0.01848461561 +       70.84944530420*t)

      uranus_r_2=0.0
      exp=2
      uranus_r_2+=math.pow(t,exp-1)*exp*     0.00022439904*math.cos( 0.69953118760 +       74.78159856730*t)-math.pow(t,exp)*     0.00022439904*      74.78159856730*math.sin( 0.69953118760 +       74.78159856730*t)

      return uranus_r_0+uranus_r_1+uranus_r_2
   

   @staticmethod
   def venus_l(t):
      exp=0.0
      venus_l_0=0.0
      exp=0
      venus_l_0+=-math.pow(t,exp)*     3.17614666774*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      venus_l_0+=-math.pow(t,exp)*     0.01353968419*   10213.28554621100*math.sin( 5.59313319619 +    10213.28554621100*t)
      venus_l_0+=-math.pow(t,exp)*     0.00089891645*   20426.57109242200*math.sin( 5.30650048468 +    20426.57109242200*t)

      venus_l_1=0.0
      exp=1
      venus_l_1+=math.pow(t,exp-1)*exp* 10213.52943052898*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)* 10213.52943052898*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      venus_l_1+=math.pow(t,exp-1)*exp*     0.00095707712*math.cos( 2.46424448979 +    10213.28554621100*t)-math.pow(t,exp)*     0.00095707712*   10213.28554621100*math.sin( 2.46424448979 +    10213.28554621100*t)
      venus_l_1+=math.pow(t,exp-1)*exp*     0.00014444977*math.cos( 0.51624564679 +    20426.57109242200*t)-math.pow(t,exp)*     0.00014444977*   20426.57109242200*math.sin( 0.51624564679 +    20426.57109242200*t)

      venus_l_2=0.0
      exp=2
      venus_l_2+=math.pow(t,exp-1)*exp*     0.00054127076*math.cos( 0.00000000000 +        0.00000000000*t)-math.pow(t,exp)*     0.00054127076*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)

      return venus_l_0+venus_l_1+venus_l_2
   

   @staticmethod
   def venus_b(t):
      exp=0.0
      venus_b_0=0.0
      exp=0
      venus_b_0+=-math.pow(t,exp)*     0.05923638472*   10213.28554621100*math.sin( 0.26702775813 +    10213.28554621100*t)
      venus_b_0+=-math.pow(t,exp)*     0.00040107978*   20426.57109242200*math.sin( 1.14737178106 +    20426.57109242200*t)
      venus_b_0+=-math.pow(t,exp)*     0.00032814918*       0.00000000000*math.sin( 3.14159265359 +        0.00000000000*t)

      venus_b_1=0.0
      exp=1
      venus_b_1+=math.pow(t,exp-1)*exp*     0.00513347602*math.cos( 1.80364310797 +    10213.28554621100*t)-math.pow(t,exp)*     0.00513347602*   10213.28554621100*math.sin( 1.80364310797 +    10213.28554621100*t)

      venus_b_2=0.0
      exp=2
      venus_b_2+=math.pow(t,exp-1)*exp*     0.00022377665*math.cos( 3.38509143877 +    10213.28554621100*t)-math.pow(t,exp)*     0.00022377665*   10213.28554621100*math.sin( 3.38509143877 +    10213.28554621100*t)

      return venus_b_0+venus_b_1+venus_b_2
   

   @staticmethod
   def venus_r(t):
      exp=0.0
      venus_r_0=0.0
      exp=0
      venus_r_0+=-math.pow(t,exp)*     0.72334820905*       0.00000000000*math.sin( 0.00000000000 +        0.00000000000*t)
      venus_r_0+=-math.pow(t,exp)*     0.00489824185*   10213.28554621100*math.sin( 4.02151832268 +    10213.28554621100*t)

      venus_r_1=0.0
      exp=1
      venus_r_1+=math.pow(t,exp-1)*exp*     0.00034551039*math.cos( 0.89198710598 +    10213.28554621100*t)-math.pow(t,exp)*     0.00034551039*   10213.28554621100*math.sin( 0.89198710598 +    10213.28554621100*t)

      return venus_r_0+venus_r_1
   


