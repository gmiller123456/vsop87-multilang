--VSOP87-Multilang http://www.celestialprogramming.com/
--Greg Miller (gmiller@gregmiller.net) 2022.  Released as Public Domain

local vsop87b_micro = {}

function vsop87b_micro.getMercury(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87b_micro.mercury_l(t)
   temp[2]=vsop87b_micro.mercury_b(t)
   temp[3]=vsop87b_micro.mercury_r(t)

   return temp;
end

function vsop87b_micro.getVenus(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87b_micro.venus_l(t)
   temp[2]=vsop87b_micro.venus_b(t)
   temp[3]=vsop87b_micro.venus_r(t)

   return temp;
end

function vsop87b_micro.getEarth(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87b_micro.earth_l(t)
   temp[2]=vsop87b_micro.earth_b(t)
   temp[3]=vsop87b_micro.earth_r(t)

   return temp;
end

function vsop87b_micro.getMars(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87b_micro.mars_l(t)
   temp[2]=vsop87b_micro.mars_b(t)
   temp[3]=vsop87b_micro.mars_r(t)

   return temp;
end

function vsop87b_micro.getJupiter(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87b_micro.jupiter_l(t)
   temp[2]=vsop87b_micro.jupiter_b(t)
   temp[3]=vsop87b_micro.jupiter_r(t)

   return temp;
end

function vsop87b_micro.getSaturn(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87b_micro.saturn_l(t)
   temp[2]=vsop87b_micro.saturn_b(t)
   temp[3]=vsop87b_micro.saturn_r(t)

   return temp;
end

function vsop87b_micro.getUranus(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87b_micro.uranus_l(t)
   temp[2]=vsop87b_micro.uranus_b(t)
   temp[3]=vsop87b_micro.uranus_r(t)

   return temp;
end

function vsop87b_micro.getNeptune(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87b_micro.neptune_l(t)
   temp[2]=vsop87b_micro.neptune_b(t)
   temp[3]=vsop87b_micro.neptune_r(t)

   return temp;
end

function vsop87b_micro.earth_b(t)
   local earth_b_1 = 0.0

   earth_b_1 = earth_b_1 + 0.00227777722 * math.cos(3.41376620530 + 6283.07584999140*t)
   earth_b_1=earth_b_1*t

   earth_b_1=earth_b_1*t*t

   earth_b_1=earth_b_1*t*t*t

   earth_b_1=earth_b_1*t*t*t*t

   earth_b_1=earth_b_1*t*t*t*t*t

   return earth_b_1
end

function vsop87b_micro.earth_l(t)
   local earth_l_0 = 0.0

   earth_l_0 = earth_l_0 + 0.00034894275 * math.cos(4.62610242189 + 12566.15169998280*t)
   earth_l_0 = earth_l_0 + 0.03341656453 * math.cos(4.66925680415 + 6283.07584999140*t)
   earth_l_0 = earth_l_0 + 1.75347045673 * math.cos(0.00000000000 + 0.00000000000*t)
   local earth_l_1 = 0.0

   earth_l_1 = earth_l_1 + 0.00206058863 * math.cos(2.67823455808 + 6283.07584999140*t)
   earth_l_1 = earth_l_1 + 6283.07584999140 * math.cos(0.00000000000 + 0.00000000000*t)
   earth_l_1=earth_l_1*t

   earth_l_1=earth_l_1*t*t

   earth_l_1=earth_l_1*t*t*t

   earth_l_1=earth_l_1*t*t*t*t

   earth_l_1=earth_l_1*t*t*t*t*t

   return earth_l_0+earth_l_1
end

function vsop87b_micro.earth_r(t)
   local earth_r_0 = 0.0

   earth_r_0 = earth_r_0 + 0.00013956024 * math.cos(3.05524609456 + 12566.15169998280*t)
   earth_r_0 = earth_r_0 + 0.01670699632 * math.cos(3.09846350258 + 6283.07584999140*t)
   earth_r_0 = earth_r_0 + 1.00013988784 * math.cos(0.00000000000 + 0.00000000000*t)
   local earth_r_1 = 0.0

   earth_r_1 = earth_r_1 + 0.00103018607 * math.cos(1.10748968172 + 6283.07584999140*t)
   earth_r_1=earth_r_1*t

   earth_r_1=earth_r_1*t*t

   earth_r_1=earth_r_1*t*t*t

   earth_r_1=earth_r_1*t*t*t*t

   earth_r_1=earth_r_1*t*t*t*t*t

   return earth_r_0+earth_r_1
end

function vsop87b_micro.jupiter_b(t)
   local jupiter_b_0 = 0.0

   jupiter_b_0 = jupiter_b_0 + 0.00109971634 * math.cos(3.90809347197 + 1059.38193018920*t)
   jupiter_b_0 = jupiter_b_0 + 0.00110090358 * math.cos(0.00000000000 + 0.00000000000*t)
   jupiter_b_0 = jupiter_b_0 + 0.02268615702 * math.cos(3.55852606721 + 529.69096509460*t)
   local jupiter_b_1 = 0.0

   jupiter_b_1 = jupiter_b_1 + 0.00078203446 * math.cos(1.52377859742 + 529.69096509460*t)
   jupiter_b_1=jupiter_b_1*t

   jupiter_b_1=jupiter_b_1*t*t

   jupiter_b_1=jupiter_b_1*t*t*t

   jupiter_b_1=jupiter_b_1*t*t*t*t

   jupiter_b_1=jupiter_b_1*t*t*t*t*t

   return jupiter_b_0+jupiter_b_1
end

function vsop87b_micro.jupiter_l(t)
   local jupiter_l_0 = 0.0

   jupiter_l_0 = jupiter_l_0 + 0.00013589730 * math.cos(5.77481040790 + 1589.07289528380*t)
   jupiter_l_0 = jupiter_l_0 + 0.00027964629 * math.cos(1.78454591820 + 536.80451209540*t)
   jupiter_l_0 = jupiter_l_0 + 0.00038857767 * math.cos(1.27231755835 + 316.39186965660*t)
   jupiter_l_0 = jupiter_l_0 + 0.00039806064 * math.cos(2.29376740788 + 419.48464387520*t)
   jupiter_l_0 = jupiter_l_0 + 0.00064263975 * math.cos(3.41145165351 + 103.09277421860*t)
   jupiter_l_0 = jupiter_l_0 + 0.00072903078 * math.cos(3.64042916389 + 522.57741809380*t)
   jupiter_l_0 = jupiter_l_0 + 0.00097178296 * math.cos(4.14264726552 + 632.78373931320*t)
   jupiter_l_0 = jupiter_l_0 + 0.00306389205 * math.cos(5.41734730184 + 1059.38193018920*t)
   jupiter_l_0 = jupiter_l_0 + 0.00573610142 * math.cos(1.44406205629 + 7.11354700080*t)
   jupiter_l_0 = jupiter_l_0 + 0.09695898719 * math.cos(5.06191793158 + 529.69096509460*t)
   jupiter_l_0 = jupiter_l_0 + 0.59954691494 * math.cos(0.00000000000 + 0.00000000000*t)
   local jupiter_l_1 = 0.0

   jupiter_l_1 = jupiter_l_1 + 0.00012103653 * math.cos(0.16994816098 + 536.80451209540*t)
   jupiter_l_1 = jupiter_l_1 + 0.00020720920 * math.cos(5.45943156902 + 522.57741809380*t)
   jupiter_l_1 = jupiter_l_1 + 0.00030099479 * math.cos(4.54540782858 + 1059.38193018920*t)
   jupiter_l_1 = jupiter_l_1 + 0.00228917222 * math.cos(6.02646855621 + 7.11354700080*t)
   jupiter_l_1 = jupiter_l_1 + 0.00489503243 * math.cos(4.22082939470 + 529.69096509460*t)
   jupiter_l_1 = jupiter_l_1 + 529.69096508814 * math.cos(0.00000000000 + 0.00000000000*t)
   jupiter_l_1=jupiter_l_1*t

   local jupiter_l_2 = 0.0

   jupiter_l_2 = jupiter_l_2 + 0.00014837605 * math.cos(3.14159265359 + 0.00000000000*t)
   jupiter_l_2 = jupiter_l_2 + 0.00030649436 * math.cos(2.92977788700 + 529.69096509460*t)
   jupiter_l_2 = jupiter_l_2 + 0.00047233601 * math.cos(4.32148536482 + 7.11354700080*t)
   jupiter_l_2=jupiter_l_2*t*t

   jupiter_l_2=jupiter_l_2*t*t*t

   jupiter_l_2=jupiter_l_2*t*t*t*t

   jupiter_l_2=jupiter_l_2*t*t*t*t*t

   return jupiter_l_0+jupiter_l_1+jupiter_l_2
end

function vsop87b_micro.jupiter_r(t)
   local jupiter_r_0 = 0.0

   jupiter_r_0 = jupiter_r_0 + 0.00012749023 * math.cos(2.71550286592 + 1052.26838318840*t)
   jupiter_r_0 = jupiter_r_0 + 0.00013032614 * math.cos(2.96042965363 + 1162.47470440780*t)
   jupiter_r_0 = jupiter_r_0 + 0.00022283743 * math.cos(4.19362594399 + 1589.07289528380*t)
   jupiter_r_0 = jupiter_r_0 + 0.00023453271 * math.cos(3.54023522184 + 735.87651353180*t)
   jupiter_r_0 = jupiter_r_0 + 0.00023947298 * math.cos(0.27458037480 + 7.11354700080*t)
   jupiter_r_0 = jupiter_r_0 + 0.00029134542 * math.cos(1.67759379655 + 103.09277421860*t)
   jupiter_r_0 = jupiter_r_0 + 0.00030135335 * math.cos(2.16132003734 + 949.17560896980*t)
   jupiter_r_0 = jupiter_r_0 + 0.00065517248 * math.cos(5.97995884790 + 316.39186965660*t)
   jupiter_r_0 = jupiter_r_0 + 0.00072062974 * math.cos(0.21465724607 + 536.80451209540*t)
   jupiter_r_0 = jupiter_r_0 + 0.00086792905 * math.cos(0.71001145545 + 419.48464387520*t)
   jupiter_r_0 = jupiter_r_0 + 0.00187647346 * math.cos(2.07590383214 + 522.57741809380*t)
   jupiter_r_0 = jupiter_r_0 + 0.00282029458 * math.cos(2.57419881293 + 632.78373931320*t)
   jupiter_r_0 = jupiter_r_0 + 0.00610599976 * math.cos(3.84115365948 + 1059.38193018920*t)
   jupiter_r_0 = jupiter_r_0 + 0.25209327119 * math.cos(3.49108639871 + 529.69096509460*t)
   jupiter_r_0 = jupiter_r_0 + 5.20887429326 * math.cos(0.00000000000 + 0.00000000000*t)
   local jupiter_r_1 = 0.0

   jupiter_r_1 = jupiter_r_1 + 0.00011847263 * math.cos(2.41328764459 + 419.48464387520*t)
   jupiter_r_1 = jupiter_r_1 + 0.00031185171 * math.cos(4.88276958012 + 536.80451209540*t)
   jupiter_r_1 = jupiter_r_1 + 0.00041390269 * math.cos(0.00000000000 + 0.00000000000*t)
   jupiter_r_1 = jupiter_r_1 + 0.00053443713 * math.cos(3.89717383175 + 522.57741809380*t)
   jupiter_r_1 = jupiter_r_1 + 0.00061661816 * math.cos(3.00076460387 + 1059.38193018920*t)
   jupiter_r_1 = jupiter_r_1 + 0.01271801520 * math.cos(2.64937512894 + 529.69096509460*t)
   jupiter_r_1=jupiter_r_1*t

   local jupiter_r_2 = 0.0

   jupiter_r_2 = jupiter_r_2 + 0.00079644957 * math.cos(1.35865949884 + 529.69096509460*t)
   jupiter_r_2=jupiter_r_2*t*t

   jupiter_r_2=jupiter_r_2*t*t*t

   jupiter_r_2=jupiter_r_2*t*t*t*t

   jupiter_r_2=jupiter_r_2*t*t*t*t*t

   return jupiter_r_0+jupiter_r_1+jupiter_r_2
end

function vsop87b_micro.mars_b(t)
   local mars_b_0 = 0.0

   mars_b_0 = mars_b_0 + 0.00031365539 * math.cos(4.44651053090 + 10021.83728009940*t)
   mars_b_0 = mars_b_0 + 0.00289104742 * math.cos(0.00000000000 + 0.00000000000*t)
   mars_b_0 = mars_b_0 + 0.00298033234 * math.cos(4.10616996305 + 6681.22485339960*t)
   mars_b_0 = mars_b_0 + 0.03197134986 * math.cos(3.76832042431 + 3340.61242669980*t)
   local mars_b_1 = 0.0

   mars_b_1 = mars_b_1 + 0.00012834709 * math.cos(1.60810667915 + 6681.22485339960*t)
   mars_b_1 = mars_b_1 + 0.00020976948 * math.cos(3.14159265359 + 0.00000000000*t)
   mars_b_1 = mars_b_1 + 0.00217310991 * math.cos(6.04472194776 + 3340.61242669980*t)
   mars_b_1=mars_b_1*t

   mars_b_1=mars_b_1*t*t

   mars_b_1=mars_b_1*t*t*t

   mars_b_1=mars_b_1*t*t*t*t

   mars_b_1=mars_b_1*t*t*t*t*t

   return mars_b_0+mars_b_1
end

function vsop87b_micro.mars_l(t)
   local mars_l_0 = 0.0

   mars_l_0 = mars_l_0 + 0.00010610235 * math.cos(2.93958560338 + 2281.23049651060*t)
   mars_l_0 = mars_l_0 + 0.00012315897 * math.cos(0.84956094002 + 2810.92146160520*t)
   mars_l_0 = mars_l_0 + 0.00027744987 * math.cos(5.97049513147 + 3.52311834900*t)
   mars_l_0 = mars_l_0 + 0.00091798406 * math.cos(5.75478744667 + 10021.83728009940*t)
   mars_l_0 = mars_l_0 + 0.01108216816 * math.cos(5.40099836344 + 6681.22485339960*t)
   mars_l_0 = mars_l_0 + 0.18656368093 * math.cos(5.05037100270 + 3340.61242669980*t)
   mars_l_0 = mars_l_0 + 6.20347711581 * math.cos(0.00000000000 + 0.00000000000*t)
   local mars_l_1 = 0.0

   mars_l_1 = mars_l_1 + 0.00020622975 * math.cos(4.26108844583 + 10021.83728009940*t)
   mars_l_1 = mars_l_1 + 0.00168414711 * math.cos(3.92318567804 + 6681.22485339960*t)
   mars_l_1 = mars_l_1 + 0.01457554523 * math.cos(3.60433733236 + 3340.61242669980*t)
   mars_l_1 = mars_l_1 + 3340.61242700512 * math.cos(0.00000000000 + 0.00000000000*t)
   mars_l_1=mars_l_1*t

   local mars_l_2 = 0.0

   mars_l_2 = mars_l_2 + 0.00013459579 * math.cos(2.45738706163 + 6681.22485339960*t)
   mars_l_2 = mars_l_2 + 0.00058152577 * math.cos(2.04961712429 + 3340.61242669980*t)
   mars_l_2=mars_l_2*t*t

   mars_l_2=mars_l_2*t*t*t

   mars_l_2=mars_l_2*t*t*t*t

   mars_l_2=mars_l_2*t*t*t*t*t

   return mars_l_0+mars_l_1+mars_l_2
end

function vsop87b_micro.mars_r(t)
   local mars_r_0 = 0.0

   mars_r_0 = mars_r_0 + 0.00046179117 * math.cos(4.15595316782 + 10021.83728009940*t)
   mars_r_0 = mars_r_0 + 0.00660776362 * math.cos(3.81783443019 + 6681.22485339960*t)
   mars_r_0 = mars_r_0 + 0.14184953160 * math.cos(3.47971283528 + 3340.61242669980*t)
   mars_r_0 = mars_r_0 + 1.53033488271 * math.cos(0.00000000000 + 0.00000000000*t)
   local mars_r_1 = 0.0

   mars_r_1 = mars_r_1 + 0.00010815880 * math.cos(2.70888095665 + 10021.83728009940*t)
   mars_r_1 = mars_r_1 + 0.00012877200 * math.cos(0.00000000000 + 0.00000000000*t)
   mars_r_1 = mars_r_1 + 0.00103175887 * math.cos(2.37071847807 + 6681.22485339960*t)
   mars_r_1 = mars_r_1 + 0.01107433345 * math.cos(2.03250524857 + 3340.61242669980*t)
   mars_r_1=mars_r_1*t

   local mars_r_2 = 0.0

   mars_r_2 = mars_r_2 + 0.00044242249 * math.cos(0.47930604954 + 3340.61242669980*t)
   mars_r_2=mars_r_2*t*t

   mars_r_2=mars_r_2*t*t*t

   mars_r_2=mars_r_2*t*t*t*t

   mars_r_2=mars_r_2*t*t*t*t*t

   return mars_r_0+mars_r_1+mars_r_2
end

function vsop87b_micro.mercury_b(t)
   local mercury_b_0 = 0.0

   mercury_b_0 = mercury_b_0 + 0.00031866927 * math.cos(1.58088495658 + 130439.51570787099*t)
   mercury_b_0 = mercury_b_0 + 0.00129778770 * math.cos(4.83232503958 + 104351.61256629678*t)
   mercury_b_0 = mercury_b_0 + 0.00543251810 * math.cos(1.79644363964 + 78263.70942472259*t)
   mercury_b_0 = mercury_b_0 + 0.01222839532 * math.cos(3.14159265359 + 0.00000000000*t)
   mercury_b_0 = mercury_b_0 + 0.02388076996 * math.cos(5.03738959686 + 52175.80628314840*t)
   mercury_b_0 = mercury_b_0 + 0.11737528961 * math.cos(1.98357498767 + 26087.90314157420*t)
   local mercury_b_1 = 0.0

   mercury_b_1 = mercury_b_1 + 0.00018772047 * math.cos(0.05141288887 + 78263.70942472259*t)
   mercury_b_1 = mercury_b_1 + 0.00023970726 * math.cos(2.53272082947 + 52175.80628314840*t)
   mercury_b_1 = mercury_b_1 + 0.00099737713 * math.cos(3.14159265359 + 0.00000000000*t)
   mercury_b_1 = mercury_b_1 + 0.00274646065 * math.cos(3.95008450011 + 26087.90314157420*t)
   mercury_b_1=mercury_b_1*t

   mercury_b_1=mercury_b_1*t*t

   mercury_b_1=mercury_b_1*t*t*t

   mercury_b_1=mercury_b_1*t*t*t*t

   mercury_b_1=mercury_b_1*t*t*t*t*t

   return mercury_b_0+mercury_b_1
end

function vsop87b_micro.mercury_l(t)
   local mercury_l_0 = 0.0

   mercury_l_0 = mercury_l_0 + 0.00034561897 * math.cos(0.77930768443 + 130439.51570787099*t)
   mercury_l_0 = mercury_l_0 + 0.00165590362 * math.cos(4.11969163423 + 104351.61256629678*t)
   mercury_l_0 = mercury_l_0 + 0.00855346844 * math.cos(1.16520322459 + 78263.70942472259*t)
   mercury_l_0 = mercury_l_0 + 0.05046294200 * math.cos(4.47785489551 + 52175.80628314840*t)
   mercury_l_0 = mercury_l_0 + 0.40989414977 * math.cos(1.48302034195 + 26087.90314157420*t)
   mercury_l_0 = mercury_l_0 + 4.40250710144 * math.cos(0.00000000000 + 0.00000000000*t)
   local mercury_l_1 = 0.0

   mercury_l_1 = mercury_l_1 + 0.00019676525 * math.cos(2.80965111777 + 104351.61256629678*t)
   mercury_l_1 = mercury_l_1 + 0.00075775081 * math.cos(6.08568821653 + 78263.70942472259*t)
   mercury_l_1 = mercury_l_1 + 0.00292242298 * math.cos(3.04449355541 + 52175.80628314840*t)
   mercury_l_1 = mercury_l_1 + 0.01131199811 * math.cos(6.21874197797 + 26087.90314157420*t)
   mercury_l_1 = mercury_l_1 + 26087.90313685529 * math.cos(0.00000000000 + 0.00000000000*t)
   mercury_l_1=mercury_l_1*t

   local mercury_l_2 = 0.0

   mercury_l_2 = mercury_l_2 + 0.00016395129 * math.cos(4.67759555504 + 26087.90314157420*t)
   mercury_l_2=mercury_l_2*t*t

   mercury_l_2=mercury_l_2*t*t*t

   mercury_l_2=mercury_l_2*t*t*t*t

   mercury_l_2=mercury_l_2*t*t*t*t*t

   return mercury_l_0+mercury_l_1+mercury_l_2
end

function vsop87b_micro.mercury_r(t)
   local mercury_r_0 = 0.0

   mercury_r_0 = mercury_r_0 + 0.00021921969 * math.cos(2.77820093972 + 104351.61256629678*t)
   mercury_r_0 = mercury_r_0 + 0.00121281764 * math.cos(6.01064153797 + 78263.70942472259*t)
   mercury_r_0 = mercury_r_0 + 0.00795525558 * math.cos(2.95989690104 + 52175.80628314840*t)
   mercury_r_0 = mercury_r_0 + 0.07834131818 * math.cos(6.19233722598 + 26087.90314157420*t)
   mercury_r_0 = mercury_r_0 + 0.39528271651 * math.cos(0.00000000000 + 0.00000000000*t)
   local mercury_r_1 = 0.0

   mercury_r_1 = mercury_r_1 + 0.00010094479 * math.cos(4.47466326327 + 78263.70942472259*t)
   mercury_r_1 = mercury_r_1 + 0.00044141826 * math.cos(1.42385544001 + 52175.80628314840*t)
   mercury_r_1 = mercury_r_1 + 0.00217347740 * math.cos(4.65617158665 + 26087.90314157420*t)
   mercury_r_1=mercury_r_1*t

   mercury_r_1=mercury_r_1*t*t

   mercury_r_1=mercury_r_1*t*t*t

   mercury_r_1=mercury_r_1*t*t*t*t

   mercury_r_1=mercury_r_1*t*t*t*t*t

   return mercury_r_0+mercury_r_1
end

function vsop87b_micro.neptune_b(t)
   local neptune_b_0 = 0.0

   neptune_b_0 = neptune_b_0 + 0.00015355489 * math.cos(2.52123799551 + 36.64856292950*t)
   neptune_b_0 = neptune_b_0 + 0.00015448133 * math.cos(3.50877079215 + 39.61750834610*t)
   neptune_b_0 = neptune_b_0 + 0.00027623609 * math.cos(0.00000000000 + 0.00000000000*t)
   neptune_b_0 = neptune_b_0 + 0.00027780087 * math.cos(5.91271884599 + 76.26607127560*t)
   neptune_b_0 = neptune_b_0 + 0.03088622933 * math.cos(1.44104372644 + 38.13303563780*t)
   neptune_b_0=neptune_b_0*t

   neptune_b_0=neptune_b_0*t*t

   neptune_b_0=neptune_b_0*t*t*t

   return neptune_b_0
end

function vsop87b_micro.neptune_l(t)
   local neptune_l_0 = 0.0

   neptune_l_0 = neptune_l_0 + 0.00016482741 * math.cos(0.00007727998 + 491.55792945680*t)
   neptune_l_0 = neptune_l_0 + 0.00033784738 * math.cos(1.24488874087 + 76.26607127560*t)
   neptune_l_0 = neptune_l_0 + 0.00037714584 * math.cos(6.09221808686 + 35.16409022120*t)
   neptune_l_0 = neptune_l_0 + 0.00042064466 * math.cos(5.41054993053 + 2.96894541660*t)
   neptune_l_0 = neptune_l_0 + 0.00124531845 * math.cos(4.83008090676 + 36.64856292950*t)
   neptune_l_0 = neptune_l_0 + 0.01019727652 * math.cos(0.48580922867 + 1.48447270830*t)
   neptune_l_0 = neptune_l_0 + 0.01798475530 * math.cos(2.90101273890 + 38.13303563780*t)
   neptune_l_0 = neptune_l_0 + 5.31188633046 * math.cos(0.00000000000 + 0.00000000000*t)
   local neptune_l_1 = 0.0

   neptune_l_1 = neptune_l_1 + 0.00015744045 * math.cos(2.27887427527 + 38.13303563780*t)
   neptune_l_1 = neptune_l_1 + 0.00016604172 * math.cos(4.86323329249 + 1.48447270830*t)
   neptune_l_1 = neptune_l_1 + 38.13303563957 * math.cos(0.00000000000 + 0.00000000000*t)
   neptune_l_1=neptune_l_1*t

   neptune_l_1=neptune_l_1*t*t

   neptune_l_1=neptune_l_1*t*t*t

   return neptune_l_0+neptune_l_1
end

function vsop87b_micro.neptune_r(t)
   local neptune_r_0 = 0.0

   neptune_r_0 = neptune_r_0 + 0.00012012320 * math.cos(1.92059384991 + 1021.24889455140*t)
   neptune_r_0 = neptune_r_0 + 0.00014229808 * math.cos(1.07785898723 + 74.78159856730*t)
   neptune_r_0 = neptune_r_0 + 0.00016939478 * math.cos(1.59422512526 + 71.81265315070*t)
   neptune_r_0 = neptune_r_0 + 0.00024594531 * math.cos(0.50801745878 + 109.94568878850*t)
   neptune_r_0 = neptune_r_0 + 0.00046687836 * math.cos(5.74938034313 + 33.67961751290*t)
   neptune_r_0 = neptune_r_0 + 0.00069791331 * math.cos(3.79616637768 + 2.96894541660*t)
   neptune_r_0 = neptune_r_0 + 0.00100896068 * math.cos(0.37702724930 + 73.29712585900*t)
   neptune_r_0 = neptune_r_0 + 0.00121801746 * math.cos(5.79754470298 + 76.26607127560*t)
   neptune_r_0 = neptune_r_0 + 0.00135134092 * math.cos(3.37220609835 + 39.61750834610*t)
   neptune_r_0 = neptune_r_0 + 0.00274571975 * math.cos(1.84552258866 + 175.16605980020*t)
   neptune_r_0 = neptune_r_0 + 0.00495725141 * math.cos(1.57105641650 + 491.55792945680*t)
   neptune_r_0 = neptune_r_0 + 0.00537760510 * math.cos(4.52113935896 + 35.16409022120*t)
   neptune_r_0 = neptune_r_0 + 0.00807830553 * math.cos(5.18592878704 + 1.48447270830*t)
   neptune_r_0 = neptune_r_0 + 0.01691764014 * math.cos(3.25186135653 + 36.64856292950*t)
   neptune_r_0 = neptune_r_0 + 0.27062259632 * math.cos(1.32999459377 + 38.13303563780*t)
   neptune_r_0 = neptune_r_0 + 30.07013205828 * math.cos(0.00000000000 + 0.00000000000*t)
   local neptune_r_1 = 0.0

   neptune_r_1 = neptune_r_1 + 0.00013220034 * math.cos(3.32014387930 + 1.48447270830*t)
   neptune_r_1 = neptune_r_1 + 0.00236338618 * math.cos(0.70497954792 + 38.13303563780*t)
   neptune_r_1=neptune_r_1*t

   neptune_r_1=neptune_r_1*t*t

   neptune_r_1=neptune_r_1*t*t*t

   neptune_r_1=neptune_r_1*t*t*t*t

   return neptune_r_0+neptune_r_1
end

function vsop87b_micro.saturn_b(t)
   local saturn_b_0 = 0.0

   saturn_b_0 = saturn_b_0 + 0.00014734070 * math.cos(2.11846596715 + 639.89728631400*t)
   saturn_b_0 = saturn_b_0 + 0.00030863357 * math.cos(3.48441504555 + 220.41264243880*t)
   saturn_b_0 = saturn_b_0 + 0.00034116062 * math.cos(0.57297307557 + 206.18554843720*t)
   saturn_b_0 = saturn_b_0 + 0.00084745939 * math.cos(0.00000000000 + 0.00000000000*t)
   saturn_b_0 = saturn_b_0 + 0.00240348302 * math.cos(2.85238489373 + 426.59819087600*t)
   saturn_b_0 = saturn_b_0 + 0.04330678039 * math.cos(3.60284428399 + 213.29909543800*t)
   local saturn_b_1 = 0.0

   saturn_b_1 = saturn_b_1 + 0.00010919721 * math.cos(1.79463271368 + 220.41264243880*t)
   saturn_b_1 = saturn_b_1 + 0.00013320265 * math.cos(2.26481519893 + 206.18554843720*t)
   saturn_b_1 = saturn_b_1 + 0.00017966989 * math.cos(0.51979431110 + 426.59819087600*t)
   saturn_b_1 = saturn_b_1 + 0.00036947916 * math.cos(3.14159265359 + 0.00000000000*t)
   saturn_b_1 = saturn_b_1 + 0.00198927992 * math.cos(4.93901017903 + 213.29909543800*t)
   saturn_b_1=saturn_b_1*t

   local saturn_b_2 = 0.0

   saturn_b_2 = saturn_b_2 + 0.00013884264 * math.cos(0.08994998691 + 213.29909543800*t)
   saturn_b_2=saturn_b_2*t*t

   saturn_b_2=saturn_b_2*t*t*t

   saturn_b_2=saturn_b_2*t*t*t*t

   saturn_b_2=saturn_b_2*t*t*t*t*t

   return saturn_b_0+saturn_b_1+saturn_b_2
end

function vsop87b_micro.saturn_l(t)
   local saturn_l_0 = 0.0

   saturn_l_0 = saturn_l_0 + 0.00010725067 * math.cos(3.12939523827 + 202.25339517410*t)
   saturn_l_0 = saturn_l_0 + 0.00013005299 * math.cos(5.98119023644 + 11.04570026390*t)
   saturn_l_0 = saturn_l_0 + 0.00013160301 * math.cos(4.44891291899 + 14.22709400160*t)
   saturn_l_0 = saturn_l_0 + 0.00014609559 * math.cos(1.56518472000 + 3.93215326310*t)
   saturn_l_0 = saturn_l_0 + 0.00014906995 * math.cos(5.76903183869 + 316.39186965660*t)
   saturn_l_0 = saturn_l_0 + 0.00015053543 * math.cos(2.71669915667 + 639.89728631400*t)
   saturn_l_0 = saturn_l_0 + 0.00015820290 * math.cos(0.93809155235 + 632.78373931320*t)
   saturn_l_0 = saturn_l_0 + 0.00016573588 * math.cos(0.43719228296 + 419.48464387520*t)
   saturn_l_0 = saturn_l_0 + 0.00023990355 * math.cos(4.66976924553 + 110.20632121940*t)
   saturn_l_0 = saturn_l_0 + 0.00079271300 * math.cos(3.84007056878 + 220.41264243880*t)
   saturn_l_0 = saturn_l_0 + 0.00206816305 * math.cos(0.24658372002 + 103.09277421860*t)
   saturn_l_0 = saturn_l_0 + 0.00350769243 * math.cos(3.30329907896 + 426.59819087600*t)
   saturn_l_0 = saturn_l_0 + 0.00398379389 * math.cos(0.52112032699 + 206.18554843720*t)
   saturn_l_0 = saturn_l_0 + 0.01414150957 * math.cos(4.58581516874 + 7.11354700080*t)
   saturn_l_0 = saturn_l_0 + 0.11107659762 * math.cos(3.96205090159 + 213.29909543800*t)
   saturn_l_0 = saturn_l_0 + 0.87401354025 * math.cos(0.00000000000 + 0.00000000000*t)
   local saturn_l_1 = 0.0

   saturn_l_1 = saturn_l_1 + 0.00010511678 * math.cos(2.74880342130 + 14.22709400160*t)
   saturn_l_1 = saturn_l_1 + 0.00019941774 * math.cos(1.27954390470 + 103.09277421860*t)
   saturn_l_1 = saturn_l_1 + 0.00040244455 * math.cos(2.04108104671 + 220.41264243880*t)
   saturn_l_1 = saturn_l_1 + 0.00093734369 * math.cos(1.06311793502 + 426.59819087600*t)
   saturn_l_1 = saturn_l_1 + 0.00107674962 * math.cos(2.27769131009 + 206.18554843720*t)
   saturn_l_1 = saturn_l_1 + 0.00564345393 * math.cos(2.88499717272 + 7.11354700080*t)
   saturn_l_1 = saturn_l_1 + 0.01297370862 * math.cos(1.82834923978 + 213.29909543800*t)
   saturn_l_1 = saturn_l_1 + 213.29909521690 * math.cos(0.00000000000 + 0.00000000000*t)
   saturn_l_1=saturn_l_1*t

   local saturn_l_2 = 0.0

   saturn_l_2 = saturn_l_2 + 0.00010629830 * math.cos(0.25764306189 + 220.41264243880*t)
   saturn_l_2 = saturn_l_2 + 0.00010987259 * math.cos(5.44479188310 + 426.59819087600*t)
   saturn_l_2 = saturn_l_2 + 0.00015274496 * math.cos(4.06493179167 + 206.18554843720*t)
   saturn_l_2 = saturn_l_2 + 0.00036661728 * math.cos(0.00000000000 + 0.00000000000*t)
   saturn_l_2 = saturn_l_2 + 0.00091841837 * math.cos(0.07325195840 + 213.29909543800*t)
   saturn_l_2 = saturn_l_2 + 0.00116441330 * math.cos(1.17988132879 + 7.11354700080*t)
   saturn_l_2=saturn_l_2*t*t

   local saturn_l_3 = 0.0

   saturn_l_3 = saturn_l_3 + 0.00016038732 * math.cos(5.73945573267 + 7.11354700080*t)
   saturn_l_3=saturn_l_3*t*t*t

   saturn_l_3=saturn_l_3*t*t*t*t

   saturn_l_3=saturn_l_3*t*t*t*t*t

   return saturn_l_0+saturn_l_1+saturn_l_2+saturn_l_3
end

function vsop87b_micro.saturn_r(t)
   local saturn_r_0 = 0.0

   saturn_r_0 = saturn_r_0 + 0.00011380257 * math.cos(1.73105427040 + 522.57741809380*t)
   saturn_r_0 = saturn_r_0 + 0.00011993338 * math.cos(5.98050967385 + 846.08283475120*t)
   saturn_r_0 = saturn_r_0 + 0.00012884624 * math.cos(1.64890652873 + 138.51749687070*t)
   saturn_r_0 = saturn_r_0 + 0.00014296484 * math.cos(2.60433479142 + 323.50541665740*t)
   saturn_r_0 = saturn_r_0 + 0.00015298404 * math.cos(3.05943814940 + 529.69096509460*t)
   saturn_r_0 = saturn_r_0 + 0.00020746751 * math.cos(5.33255457763 + 199.07200143640*t)
   saturn_r_0 = saturn_r_0 + 0.00020839300 * math.cos(1.52102476129 + 433.71173787680*t)
   saturn_r_0 = saturn_r_0 + 0.00020936596 * math.cos(0.46349251129 + 735.87651353180*t)
   saturn_r_0 = saturn_r_0 + 0.00032401773 * math.cos(5.47084567016 + 949.17560896980*t)
   saturn_r_0 = saturn_r_0 + 0.00034143772 * math.cos(0.19519102597 + 277.03499374140*t)
   saturn_r_0 = saturn_r_0 + 0.00048913294 * math.cos(1.55733638681 + 202.25339517410*t)
   saturn_r_0 = saturn_r_0 + 0.00061053367 * math.cos(0.94037691801 + 639.89728631400*t)
   saturn_r_0 = saturn_r_0 + 0.00069006962 * math.cos(5.94099540992 + 419.48464387520*t)
   saturn_r_0 = saturn_r_0 + 0.00108974848 * math.cos(3.29313390175 + 110.20632121940*t)
   saturn_r_0 = saturn_r_0 + 0.00140617506 * math.cos(5.70406606781 + 632.78373931320*t)
   saturn_r_0 = saturn_r_0 + 0.00361778765 * math.cos(3.13904301847 + 7.11354700080*t)
   saturn_r_0 = saturn_r_0 + 0.00371684650 * math.cos(2.27114821115 + 220.41264243880*t)
   saturn_r_0 = saturn_r_0 + 0.00547506923 * math.cos(5.01532618980 + 103.09277421860*t)
   saturn_r_0 = saturn_r_0 + 0.00821891141 * math.cos(5.93520042303 + 316.39186965660*t)
   saturn_r_0 = saturn_r_0 + 0.01464663929 * math.cos(1.64763042902 + 426.59819087600*t)
   saturn_r_0 = saturn_r_0 + 0.01873679867 * math.cos(5.23549604660 + 206.18554843720*t)
   saturn_r_0 = saturn_r_0 + 0.52921382865 * math.cos(2.39226219573 + 213.29909543800*t)
   saturn_r_0 = saturn_r_0 + 9.55758135486 * math.cos(0.00000000000 + 0.00000000000*t)
   local saturn_r_1 = 0.0

   saturn_r_1 = saturn_r_1 + 0.00012892843 * math.cos(5.94329433020 + 433.71173787680*t)
   saturn_r_1 = saturn_r_1 + 0.00013876849 * math.cos(0.75884928866 + 199.07200143640*t)
   saturn_r_1 = saturn_r_1 + 0.00018839544 * math.cos(1.60818334043 + 110.20632121940*t)
   saturn_r_1 = saturn_r_1 + 0.00019952564 * math.cos(1.17560606130 + 419.48464387520*t)
   saturn_r_1 = saturn_r_1 + 0.00020928426 * math.cos(5.09244947411 + 639.89728631400*t)
   saturn_r_1 = saturn_r_1 + 0.00049621208 * math.cos(6.01744279820 + 103.09277421860*t)
   saturn_r_1 = saturn_r_1 + 0.00143891146 * math.cos(1.40744822888 + 7.11354700080*t)
   saturn_r_1 = saturn_r_1 + 0.00186261486 * math.cos(3.14159265359 + 0.00000000000*t)
   saturn_r_1 = saturn_r_1 + 0.00188491195 * math.cos(0.47215589652 + 220.41264243880*t)
   saturn_r_1 = saturn_r_1 + 0.00341394029 * math.cos(5.79635741658 + 426.59819087600*t)
   saturn_r_1 = saturn_r_1 + 0.00506577242 * math.cos(0.71114625261 + 206.18554843720*t)
   saturn_r_1 = saturn_r_1 + 0.06182981340 * math.cos(0.25843511480 + 213.29909543800*t)
   saturn_r_1=saturn_r_1*t

   local saturn_r_2 = 0.0

   saturn_r_2 = saturn_r_2 + 0.00029645766 * math.cos(5.96309886479 + 7.11354700080*t)
   saturn_r_2 = saturn_r_2 + 0.00043220783 * math.cos(3.86941044212 + 426.59819087600*t)
   saturn_r_2 = saturn_r_2 + 0.00049766872 * math.cos(4.97167777235 + 220.41264243880*t)
   saturn_r_2 = saturn_r_2 + 0.00071922498 * math.cos(2.50070069930 + 206.18554843720*t)
   saturn_r_2 = saturn_r_2 + 0.00436902572 * math.cos(4.78671677509 + 213.29909543800*t)
   saturn_r_2=saturn_r_2*t*t

   local saturn_r_3 = 0.0

   saturn_r_3 = saturn_r_3 + 0.00020315239 * math.cos(3.02186068237 + 213.29909543800*t)
   saturn_r_3=saturn_r_3*t*t*t

   saturn_r_3=saturn_r_3*t*t*t*t

   saturn_r_3=saturn_r_3*t*t*t*t*t

   return saturn_r_0+saturn_r_1+saturn_r_2+saturn_r_3
end

function vsop87b_micro.uranus_b(t)
   local uranus_b_0 = 0.0

   uranus_b_0 = uranus_b_0 + 0.00061601196 * math.cos(3.14159265359 + 0.00000000000*t)
   uranus_b_0 = uranus_b_0 + 0.00062341400 * math.cos(5.08111189648 + 149.56319713460*t)
   uranus_b_0 = uranus_b_0 + 0.01346277648 * math.cos(2.61877810547 + 74.78159856730*t)
   local uranus_b_1 = 0.0

   uranus_b_1 = uranus_b_1 + 0.00034101978 * math.cos(0.01321929936 + 74.78159856730*t)
   uranus_b_1=uranus_b_1*t

   uranus_b_1=uranus_b_1*t*t

   uranus_b_1=uranus_b_1*t*t*t

   return uranus_b_0+uranus_b_1
end

function vsop87b_micro.uranus_l(t)
   local uranus_l_0 = 0.0

   uranus_l_0 = uranus_l_0 + 0.00010997910 * math.cos(0.48865004018 + 138.51749687070*t)
   uranus_l_0 = uranus_l_0 + 0.00011162509 * math.cos(5.82681796350 + 224.34479570190*t)
   uranus_l_0 = uranus_l_0 + 0.00014613507 * math.cos(4.73732166022 + 3.93215326310*t)
   uranus_l_0 = uranus_l_0 + 0.00017818647 * math.cos(1.74436930289 + 36.64856292950*t)
   uranus_l_0 = uranus_l_0 + 0.00021078850 * math.cos(4.36059339067 + 148.07872442630*t)
   uranus_l_0 = uranus_l_0 + 0.00025710476 * math.cos(6.11379840493 + 454.90936652730*t)
   uranus_l_0 = uranus_l_0 + 0.00026468770 * math.cos(3.14152083966 + 71.81265315070*t)
   uranus_l_0 = uranus_l_0 + 0.00061950719 * math.cos(2.85098872691 + 11.04570026390*t)
   uranus_l_0 = uranus_l_0 + 0.00061998615 * math.cos(2.26952066061 + 2.96894541660*t)
   uranus_l_0 = uranus_l_0 + 0.00068892678 * math.cos(6.09292483287 + 76.26607127560*t)
   uranus_l_0 = uranus_l_0 + 0.00070328461 * math.cos(5.39254450063 + 63.73589830340*t)
   uranus_l_0 = uranus_l_0 + 0.00272328168 * math.cos(3.35823706307 + 149.56319713460*t)
   uranus_l_0 = uranus_l_0 + 0.00365981674 * math.cos(1.89962179044 + 73.29712585900*t)
   uranus_l_0 = uranus_l_0 + 0.01504247898 * math.cos(3.62719260920 + 1.48447270830*t)
   uranus_l_0 = uranus_l_0 + 0.09260408234 * math.cos(0.89106421507 + 74.78159856730*t)
   uranus_l_0 = uranus_l_0 + 5.48129294297 * math.cos(0.00000000000 + 0.00000000000*t)
   local uranus_l_1 = 0.0

   uranus_l_1 = uranus_l_1 + 0.00024456474 * math.cos(1.71260334156 + 1.48447270830*t)
   uranus_l_1 = uranus_l_1 + 0.00154332863 * math.cos(5.24158770553 + 74.78159856730*t)
   uranus_l_1 = uranus_l_1 + 74.78159860910 * math.cos(0.00000000000 + 0.00000000000*t)
   uranus_l_1=uranus_l_1*t

   uranus_l_1=uranus_l_1*t*t

   uranus_l_1=uranus_l_1*t*t*t

   uranus_l_1=uranus_l_1*t*t*t*t

   return uranus_l_0+uranus_l_1
end

function vsop87b_micro.uranus_r(t)
   local uranus_r_0 = 0.0

   uranus_r_0 = uranus_r_0 + 0.00010792498 * math.cos(1.42106296264 + 213.29909543800*t)
   uranus_r_0 = uranus_r_0 + 0.00011494680 * math.cos(0.43772043395 + 65.22037101170*t)
   uranus_r_0 = uranus_r_0 + 0.00011695693 * math.cos(3.29824190199 + 3.93215326310*t)
   uranus_r_0 = uranus_r_0 + 0.00011852959 * math.cos(0.99344161196 + 52.69019803950*t)
   uranus_r_0 = uranus_r_0 + 0.00011959076 * math.cos(1.75043392140 + 984.60033162190*t)
   uranus_r_0 = uranus_r_0 + 0.00012328114 * math.cos(5.96037276805 + 127.47179660680*t)
   uranus_r_0 = uranus_r_0 + 0.00012896452 * math.cos(2.62154084288 + 111.43016149680*t)
   uranus_r_0 = uranus_r_0 + 0.00014701666 * math.cos(4.90434516516 + 108.46121608020*t)
   uranus_r_0 = uranus_r_0 + 0.00015502375 * math.cos(5.35405396163 + 38.13303563780*t)
   uranus_r_0 = uranus_r_0 + 0.00017901300 * math.cos(0.55455066863 + 2.96894541660*t)
   uranus_r_0 = uranus_r_0 + 0.00020471591 * math.cos(1.55587964879 + 202.25339517410*t)
   uranus_r_0 = uranus_r_0 + 0.00020473534 * math.cos(2.79640244248 + 70.32818044240*t)
   uranus_r_0 = uranus_r_0 + 0.00022637073 * math.cos(0.72518687029 + 529.69096509460*t)
   uranus_r_0 = uranus_r_0 + 0.00025620756 * math.cos(5.25656086672 + 380.12776796000*t)
   uranus_r_0 = uranus_r_0 + 0.00025785880 * math.cos(3.78537709870 + 85.82729883120*t)
   uranus_r_0 = uranus_r_0 + 0.00029156413 * math.cos(3.18056336700 + 77.75054398390*t)
   uranus_r_0 = uranus_r_0 + 0.00030348723 * math.cos(0.70100838798 + 151.04766984290*t)
   uranus_r_0 = uranus_r_0 + 0.00036755274 * math.cos(3.88649278513 + 146.59425171800*t)
   uranus_r_0 = uranus_r_0 + 0.00039009723 * math.cos(1.66971401684 + 70.84944530420*t)
   uranus_r_0 = uranus_r_0 + 0.00039025624 * math.cos(3.36234773834 + 277.03499374140*t)
   uranus_r_0 = uranus_r_0 + 0.00046677296 * math.cos(1.39976401694 + 35.16409022120*t)
   uranus_r_0 = uranus_r_0 + 0.00071424548 * math.cos(4.24509236074 + 224.34479570190*t)
   uranus_r_0 = uranus_r_0 + 0.00089806014 * math.cos(3.66105364565 + 109.94568878850*t)
   uranus_r_0 = uranus_r_0 + 0.00093192405 * math.cos(0.17437220467 + 36.64856292950*t)
   uranus_r_0 = uranus_r_0 + 0.00143706183 * math.cos(1.38368544947 + 11.04570026390*t)
   uranus_r_0 = uranus_r_0 + 0.00161858838 * math.cos(2.79137786799 + 148.07872442630*t)
   uranus_r_0 = uranus_r_0 + 0.00190522303 * math.cos(1.99809394714 + 1.48447270830*t)
   uranus_r_0 = uranus_r_0 + 0.00243509114 * math.cos(1.57086606044 + 71.81265315070*t)
   uranus_r_0 = uranus_r_0 + 0.00338525369 * math.cos(1.58002770318 + 138.51749687070*t)
   uranus_r_0 = uranus_r_0 + 0.00496404167 * math.cos(1.40139935333 + 454.90936652730*t)
   uranus_r_0 = uranus_r_0 + 0.00602247865 * math.cos(3.86003823674 + 63.73589830340*t)
   uranus_r_0 = uranus_r_0 + 0.00649322410 * math.cos(4.52247285911 + 76.26607127560*t)
   uranus_r_0 = uranus_r_0 + 0.02055653860 * math.cos(1.78295159330 + 149.56319713460*t)
   uranus_r_0 = uranus_r_0 + 0.03440836062 * math.cos(0.32836099706 + 73.29712585900*t)
   uranus_r_0 = uranus_r_0 + 0.88784984413 * math.cos(5.60377527014 + 74.78159856730*t)
   uranus_r_0 = uranus_r_0 + 19.21264847206 * math.cos(0.00000000000 + 0.00000000000*t)
   local uranus_r_1 = 0.0

   uranus_r_1 = uranus_r_1 + 0.00011405056 * math.cos(0.01849738017 + 70.84944530420*t)
   uranus_r_1 = uranus_r_1 + 0.00020857554 * math.cos(5.24625848960 + 11.04570026390*t)
   uranus_r_1 = uranus_r_1 + 0.00021468362 * math.cos(2.60175716374 + 76.26607127560*t)
   uranus_r_1 = uranus_r_1 + 0.00024059369 * math.cos(3.14159265359 + 0.00000000000*t)
   uranus_r_1 = uranus_r_1 + 0.00068627160 * math.cos(6.13411179902 + 149.56319713460*t)
   uranus_r_1 = uranus_r_1 + 0.00071212143 * math.cos(6.22600975161 + 63.73589830340*t)
   uranus_r_1 = uranus_r_1 + 0.01479896629 * math.cos(3.67205697578 + 74.78159856730*t)
   uranus_r_1=uranus_r_1*t

   local uranus_r_2 = 0.0

   uranus_r_2 = uranus_r_2 + 0.00022439899 * math.cos(0.69953310903 + 74.78159856730*t)
   uranus_r_2=uranus_r_2*t*t

   uranus_r_2=uranus_r_2*t*t*t

   uranus_r_2=uranus_r_2*t*t*t*t

   return uranus_r_0+uranus_r_1+uranus_r_2
end

function vsop87b_micro.venus_b(t)
   local venus_b_0 = 0.0

   venus_b_0 = venus_b_0 + 0.00032814918 * math.cos(3.14159265359 + 0.00000000000*t)
   venus_b_0 = venus_b_0 + 0.00040107978 * math.cos(1.14737178112 + 20426.57109242200*t)
   venus_b_0 = venus_b_0 + 0.05923638472 * math.cos(0.26702775812 + 10213.28554621100*t)
   local venus_b_1 = 0.0

   venus_b_1 = venus_b_1 + 0.00287821243 * math.cos(1.88964962838 + 10213.28554621100*t)
   venus_b_1=venus_b_1*t

   local venus_b_2 = 0.0

   venus_b_2 = venus_b_2 + 0.00012657745 * math.cos(3.34796457029 + 10213.28554621100*t)
   venus_b_2=venus_b_2*t*t

   venus_b_2=venus_b_2*t*t*t

   venus_b_2=venus_b_2*t*t*t*t

   venus_b_2=venus_b_2*t*t*t*t*t

   return venus_b_0+venus_b_1+venus_b_2
end

function vsop87b_micro.venus_l(t)
   local venus_l_0 = 0.0

   venus_l_0 = venus_l_0 + 0.00089891645 * math.cos(5.30650047764 + 20426.57109242200*t)
   venus_l_0 = venus_l_0 + 0.01353968419 * math.cos(5.59313319619 + 10213.28554621100*t)
   venus_l_0 = venus_l_0 + 3.17614666774 * math.cos(0.00000000000 + 0.00000000000*t)
   local venus_l_1 = 0.0

   venus_l_1 = venus_l_1 + 0.00095617813 * math.cos(2.46406511110 + 10213.28554621100*t)
   venus_l_1 = venus_l_1 + 10213.28554621638 * math.cos(0.00000000000 + 0.00000000000*t)
   venus_l_1=venus_l_1*t

   venus_l_1=venus_l_1*t*t

   venus_l_1=venus_l_1*t*t*t

   venus_l_1=venus_l_1*t*t*t*t

   venus_l_1=venus_l_1*t*t*t*t*t

   return venus_l_0+venus_l_1
end

function vsop87b_micro.venus_r(t)
   local venus_r_0 = 0.0

   venus_r_0 = venus_r_0 + 0.00489824182 * math.cos(4.02151831717 + 10213.28554621100*t)
   venus_r_0 = venus_r_0 + 0.72334820891 * math.cos(0.00000000000 + 0.00000000000*t)
   local venus_r_1 = 0.0

   venus_r_1 = venus_r_1 + 0.00034551041 * math.cos(0.89198706276 + 10213.28554621100*t)
   venus_r_1=venus_r_1*t

   venus_r_1=venus_r_1*t*t

   venus_r_1=venus_r_1*t*t*t

   venus_r_1=venus_r_1*t*t*t*t

   return venus_r_0+venus_r_1;
end

return vsop87b_micro
