--VSOP87-Multilang http://www.celestialprogramming.com/
--Greg Miller (gmiller@gregmiller.net) 2022.  Released as Public Domain

local vsop87d_nano = {}

function vsop87d_nano.getMercury(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87d_nano.mercury_l(t)
   temp[2]=vsop87d_nano.mercury_b(t)
   temp[3]=vsop87d_nano.mercury_r(t)

   return temp;
end

function vsop87d_nano.getVenus(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87d_nano.venus_l(t)
   temp[2]=vsop87d_nano.venus_b(t)
   temp[3]=vsop87d_nano.venus_r(t)

   return temp;
end

function vsop87d_nano.getEarth(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87d_nano.earth_l(t)
   temp[2]=vsop87d_nano.earth_b(t)
   temp[3]=vsop87d_nano.earth_r(t)

   return temp;
end

function vsop87d_nano.getMars(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87d_nano.mars_l(t)
   temp[2]=vsop87d_nano.mars_b(t)
   temp[3]=vsop87d_nano.mars_r(t)

   return temp;
end

function vsop87d_nano.getJupiter(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87d_nano.jupiter_l(t)
   temp[2]=vsop87d_nano.jupiter_b(t)
   temp[3]=vsop87d_nano.jupiter_r(t)

   return temp;
end

function vsop87d_nano.getSaturn(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87d_nano.saturn_l(t)
   temp[2]=vsop87d_nano.saturn_b(t)
   temp[3]=vsop87d_nano.saturn_r(t)

   return temp;
end

function vsop87d_nano.getUranus(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87d_nano.uranus_l(t)
   temp[2]=vsop87d_nano.uranus_b(t)
   temp[3]=vsop87d_nano.uranus_r(t)

   return temp;
end

function vsop87d_nano.getNeptune(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87d_nano.neptune_l(t)
   temp[2]=vsop87d_nano.neptune_b(t)
   temp[3]=vsop87d_nano.neptune_r(t)

   return temp;
end

function vsop87d_nano.earth_b(t)
   return 0
end

function vsop87d_nano.earth_l(t)
   local earth_l_0 = 0.0

   earth_l_0 = earth_l_0 + 0.03341656456 * math.cos(4.66925680417 + 6283.07584999140*t)
   earth_l_0 = earth_l_0 + 1.75347045673 * math.cos(0.00000000000 + 0.00000000000*t)
   local earth_l_1 = 0.0

   earth_l_1 = earth_l_1 + 0.00206058863 * math.cos(2.67823455584 + 6283.07584999140*t)
   earth_l_1 = earth_l_1 + 6283.31966747491 * math.cos(0.00000000000 + 0.00000000000*t)
   earth_l_1=earth_l_1*t

   earth_l_1=earth_l_1*t*t

   earth_l_1=earth_l_1*t*t*t

   earth_l_1=earth_l_1*t*t*t*t

   earth_l_1=earth_l_1*t*t*t*t*t

   return earth_l_0+earth_l_1
end

function vsop87d_nano.earth_r(t)
   local earth_r_0 = 0.0

   earth_r_0 = earth_r_0 + 0.01670699626 * math.cos(3.09846350771 + 6283.07584999140*t)
   earth_r_0 = earth_r_0 + 1.00013988799 * math.cos(0.00000000000 + 0.00000000000*t)
   local earth_r_1 = 0.0

   earth_r_1 = earth_r_1 + 0.00103018608 * math.cos(1.10748969588 + 6283.07584999140*t)
   earth_r_1=earth_r_1*t

   earth_r_1=earth_r_1*t*t

   earth_r_1=earth_r_1*t*t*t

   earth_r_1=earth_r_1*t*t*t*t

   earth_r_1=earth_r_1*t*t*t*t*t

   return earth_r_0+earth_r_1
end

function vsop87d_nano.jupiter_b(t)
   local jupiter_b_0 = 0.0

   jupiter_b_0 = jupiter_b_0 + 0.00109971634 * math.cos(3.90809347389 + 1059.38193018920*t)
   jupiter_b_0 = jupiter_b_0 + 0.00110090358 * math.cos(0.00000000000 + 0.00000000000*t)
   jupiter_b_0 = jupiter_b_0 + 0.02268615703 * math.cos(3.55852606718 + 529.69096509460*t)
   local jupiter_b_1 = 0.0

   jupiter_b_1 = jupiter_b_1 + 0.00177351787 * math.cos(5.70166488486 + 529.69096509460*t)
   jupiter_b_1=jupiter_b_1*t

   jupiter_b_1=jupiter_b_1*t*t

   jupiter_b_1=jupiter_b_1*t*t*t

   jupiter_b_1=jupiter_b_1*t*t*t*t

   jupiter_b_1=jupiter_b_1*t*t*t*t*t

   return jupiter_b_0+jupiter_b_1
end

function vsop87d_nano.jupiter_l(t)
   local jupiter_l_0 = 0.0

   jupiter_l_0 = jupiter_l_0 + 0.00306389180 * math.cos(5.41734729976 + 1059.38193018920*t)
   jupiter_l_0 = jupiter_l_0 + 0.00573610145 * math.cos(1.44406205976 + 7.11354700080*t)
   jupiter_l_0 = jupiter_l_0 + 0.09695898711 * math.cos(5.06191793105 + 529.69096509460*t)
   jupiter_l_0 = jupiter_l_0 + 0.59954691495 * math.cos(0.00000000000 + 0.00000000000*t)
   local jupiter_l_1 = 0.0

   jupiter_l_1 = jupiter_l_1 + 0.00228918538 * math.cos(6.02647464016 + 7.11354700080*t)
   jupiter_l_1 = jupiter_l_1 + 0.00489741194 * math.cos(4.22066689928 + 529.69096509460*t)
   jupiter_l_1 = jupiter_l_1 + 529.93480757497 * math.cos(0.00000000000 + 0.00000000000*t)
   jupiter_l_1=jupiter_l_1*t

   jupiter_l_1=jupiter_l_1*t*t

   jupiter_l_1=jupiter_l_1*t*t*t

   jupiter_l_1=jupiter_l_1*t*t*t*t

   jupiter_l_1=jupiter_l_1*t*t*t*t*t

   return jupiter_l_0+jupiter_l_1
end

function vsop87d_nano.jupiter_r(t)
   local jupiter_r_0 = 0.0

   jupiter_r_0 = jupiter_r_0 + 0.00187647391 * math.cos(2.07590380082 + 522.57741809380*t)
   jupiter_r_0 = jupiter_r_0 + 0.00282029465 * math.cos(2.57419879933 + 632.78373931320*t)
   jupiter_r_0 = jupiter_r_0 + 0.00610599902 * math.cos(3.84115365602 + 1059.38193018920*t)
   jupiter_r_0 = jupiter_r_0 + 0.25209327020 * math.cos(3.49108640015 + 529.69096509460*t)
   jupiter_r_0 = jupiter_r_0 + 5.20887429471 * math.cos(0.00000000000 + 0.00000000000*t)
   local jupiter_r_1 = 0.0

   jupiter_r_1 = jupiter_r_1 + 0.01271801596 * math.cos(2.64937511122 + 529.69096509460*t)
   jupiter_r_1=jupiter_r_1*t

   jupiter_r_1=jupiter_r_1*t*t

   jupiter_r_1=jupiter_r_1*t*t*t

   jupiter_r_1=jupiter_r_1*t*t*t*t

   jupiter_r_1=jupiter_r_1*t*t*t*t*t

   return jupiter_r_0+jupiter_r_1
end

function vsop87d_nano.mars_b(t)
   local mars_b_0 = 0.0

   mars_b_0 = mars_b_0 + 0.00289104742 * math.cos(0.00000000000 + 0.00000000000*t)
   mars_b_0 = mars_b_0 + 0.00298033234 * math.cos(4.10616996243 + 6681.22485339960*t)
   mars_b_0 = mars_b_0 + 0.03197134986 * math.cos(3.76832042432 + 3340.61242669980*t)
   local mars_b_1 = 0.0

   mars_b_1 = mars_b_1 + 0.00350068845 * math.cos(5.36847836211 + 3340.61242669980*t)
   mars_b_1=mars_b_1*t

   mars_b_1=mars_b_1*t*t

   mars_b_1=mars_b_1*t*t*t

   mars_b_1=mars_b_1*t*t*t*t

   mars_b_1=mars_b_1*t*t*t*t*t

   return mars_b_0+mars_b_1
end

function vsop87d_nano.mars_l(t)
   local mars_l_0 = 0.0

   mars_l_0 = mars_l_0 + 0.01108216792 * math.cos(5.40099836958 + 6681.22485339960*t)
   mars_l_0 = mars_l_0 + 0.18656368100 * math.cos(5.05037100303 + 3340.61242669980*t)
   mars_l_0 = mars_l_0 + 6.20347711583 * math.cos(0.00000000000 + 0.00000000000*t)
   local mars_l_1 = 0.0

   mars_l_1 = mars_l_1 + 0.00164901343 * math.cos(3.92631250962 + 6681.22485339960*t)
   mars_l_1 = mars_l_1 + 0.01458227051 * math.cos(3.60426053609 + 3340.61242669980*t)
   mars_l_1 = mars_l_1 + 3340.85627474342 * math.cos(0.00000000000 + 0.00000000000*t)
   mars_l_1=mars_l_1*t

   mars_l_1=mars_l_1*t*t

   mars_l_1=mars_l_1*t*t*t

   mars_l_1=mars_l_1*t*t*t*t

   mars_l_1=mars_l_1*t*t*t*t*t

   return mars_l_0+mars_l_1
end

function vsop87d_nano.mars_r(t)
   local mars_r_0 = 0.0

   mars_r_0 = mars_r_0 + 0.00660776357 * math.cos(3.81783442097 + 6681.22485339960*t)
   mars_r_0 = mars_r_0 + 0.14184953153 * math.cos(3.47971283519 + 3340.61242669980*t)
   mars_r_0 = mars_r_0 + 1.53033488276 * math.cos(0.00000000000 + 0.00000000000*t)
   local mars_r_1 = 0.0

   mars_r_1 = mars_r_1 + 0.00103175886 * math.cos(2.37071845682 + 6681.22485339960*t)
   mars_r_1 = mars_r_1 + 0.01107433340 * math.cos(2.03250524950 + 3340.61242669980*t)
   mars_r_1=mars_r_1*t

   mars_r_1=mars_r_1*t*t

   mars_r_1=mars_r_1*t*t*t

   mars_r_1=mars_r_1*t*t*t*t

   mars_r_1=mars_r_1*t*t*t*t*t

   return mars_r_0+mars_r_1
end

function vsop87d_nano.mercury_b(t)
   local mercury_b_0 = 0.0

   mercury_b_0 = mercury_b_0 + 0.00129778770 * math.cos(4.83232503961 + 104351.61256629678*t)
   mercury_b_0 = mercury_b_0 + 0.00543251810 * math.cos(1.79644363963 + 78263.70942472259*t)
   mercury_b_0 = mercury_b_0 + 0.01222839532 * math.cos(3.14159265359 + 0.00000000000*t)
   mercury_b_0 = mercury_b_0 + 0.02388076996 * math.cos(5.03738959685 + 52175.80628314840*t)
   mercury_b_0 = mercury_b_0 + 0.11737528962 * math.cos(1.98357498767 + 26087.90314157420*t)
   local mercury_b_1 = 0.0

   mercury_b_1 = mercury_b_1 + 0.00146233668 * math.cos(3.14159265359 + 0.00000000000*t)
   mercury_b_1 = mercury_b_1 + 0.00429151362 * math.cos(3.50169780393 + 26087.90314157420*t)
   mercury_b_1=mercury_b_1*t

   mercury_b_1=mercury_b_1*t*t

   mercury_b_1=mercury_b_1*t*t*t

   mercury_b_1=mercury_b_1*t*t*t*t

   mercury_b_1=mercury_b_1*t*t*t*t*t

   return mercury_b_0+mercury_b_1
end

function vsop87d_nano.mercury_l(t)
   local mercury_l_0 = 0.0

   mercury_l_0 = mercury_l_0 + 0.00165590362 * math.cos(4.11969163181 + 104351.61256629678*t)
   mercury_l_0 = mercury_l_0 + 0.00855346843 * math.cos(1.16520322351 + 78263.70942472259*t)
   mercury_l_0 = mercury_l_0 + 0.05046294199 * math.cos(4.47785489540 + 52175.80628314840*t)
   mercury_l_0 = mercury_l_0 + 0.40989414976 * math.cos(1.48302034194 + 26087.90314157420*t)
   mercury_l_0 = mercury_l_0 + 4.40250710144 * math.cos(0.00000000000 + 0.00000000000*t)
   local mercury_l_1 = 0.0

   mercury_l_1 = mercury_l_1 + 0.00303471395 * math.cos(3.05565472363 + 52175.80628314840*t)
   mercury_l_1 = mercury_l_1 + 0.01126007832 * math.cos(6.21703970996 + 26087.90314157420*t)
   mercury_l_1 = mercury_l_1 + 26088.14706222746 * math.cos(0.00000000000 + 0.00000000000*t)
   mercury_l_1=mercury_l_1*t

   mercury_l_1=mercury_l_1*t*t

   mercury_l_1=mercury_l_1*t*t*t

   mercury_l_1=mercury_l_1*t*t*t*t

   mercury_l_1=mercury_l_1*t*t*t*t*t

   return mercury_l_0+mercury_l_1
end

function vsop87d_nano.mercury_r(t)
   local mercury_r_0 = 0.0

   mercury_r_0 = mercury_r_0 + 0.00121281763 * math.cos(6.01064153805 + 78263.70942472259*t)
   mercury_r_0 = mercury_r_0 + 0.00795525557 * math.cos(2.95989690096 + 52175.80628314840*t)
   mercury_r_0 = mercury_r_0 + 0.07834131817 * math.cos(6.19233722599 + 26087.90314157420*t)
   mercury_r_0 = mercury_r_0 + 0.39528271652 * math.cos(0.00000000000 + 0.00000000000*t)
   local mercury_r_1 = 0.0

   mercury_r_1 = mercury_r_1 + 0.00217347739 * math.cos(4.65617158663 + 26087.90314157420*t)
   mercury_r_1=mercury_r_1*t

   mercury_r_1=mercury_r_1*t*t

   mercury_r_1=mercury_r_1*t*t*t

   mercury_r_1=mercury_r_1*t*t*t*t

   mercury_r_1=mercury_r_1*t*t*t*t*t

   return mercury_r_0+mercury_r_1
end

function vsop87d_nano.neptune_b(t)
   local neptune_b_0 = 0.0

   neptune_b_0 = neptune_b_0 + 0.03088622933 * math.cos(1.44104372626 + 38.13303563780*t)
   local neptune_b_1 = 0.0

   neptune_b_1 = neptune_b_1 + 0.00227279214 * math.cos(3.80793089870 + 38.13303563780*t)
   neptune_b_1=neptune_b_1*t

   neptune_b_1=neptune_b_1*t*t

   neptune_b_1=neptune_b_1*t*t*t

   neptune_b_1=neptune_b_1*t*t*t*t

   neptune_b_1=neptune_b_1*t*t*t*t*t

   return neptune_b_0+neptune_b_1
end

function vsop87d_nano.neptune_l(t)
   local neptune_l_0 = 0.0

   neptune_l_0 = neptune_l_0 + 0.00124531845 * math.cos(4.83008090682 + 36.64856292950*t)
   neptune_l_0 = neptune_l_0 + 0.01019727662 * math.cos(0.48580923660 + 1.48447270830*t)
   neptune_l_0 = neptune_l_0 + 0.01798475509 * math.cos(2.90101273050 + 38.13303563780*t)
   neptune_l_0 = neptune_l_0 + 5.31188633047 * math.cos(0.00000000000 + 0.00000000000*t)
   local neptune_l_1 = 0.0

   neptune_l_1 = neptune_l_1 + 38.37687716731 * math.cos(0.00000000000 + 0.00000000000*t)
   neptune_l_1=neptune_l_1*t

   neptune_l_1=neptune_l_1*t*t

   neptune_l_1=neptune_l_1*t*t*t

   neptune_l_1=neptune_l_1*t*t*t*t

   neptune_l_1=neptune_l_1*t*t*t*t*t

   return neptune_l_0+neptune_l_1
end

function vsop87d_nano.neptune_r(t)
   local neptune_r_0 = 0.0

   neptune_r_0 = neptune_r_0 + 0.00100895397 * math.cos(0.37702748681 + 73.29712585900*t)
   neptune_r_0 = neptune_r_0 + 0.00121801825 * math.cos(5.79754444303 + 76.26607127560*t)
   neptune_r_0 = neptune_r_0 + 0.00135134095 * math.cos(3.37220607384 + 39.61750834610*t)
   neptune_r_0 = neptune_r_0 + 0.00274571970 * math.cos(1.84552256801 + 175.16605980020*t)
   neptune_r_0 = neptune_r_0 + 0.00495725642 * math.cos(1.57105654815 + 491.55792945680*t)
   neptune_r_0 = neptune_r_0 + 0.00537760613 * math.cos(4.52113902845 + 35.16409022120*t)
   neptune_r_0 = neptune_r_0 + 0.00807830737 * math.cos(5.18592836167 + 1.48447270830*t)
   neptune_r_0 = neptune_r_0 + 0.01691764281 * math.cos(3.25186138896 + 36.64856292950*t)
   neptune_r_0 = neptune_r_0 + 0.27062259490 * math.cos(1.32999458930 + 38.13303563780*t)
   neptune_r_0 = neptune_r_0 + 30.07013206102 * math.cos(0.00000000000 + 0.00000000000*t)
   local neptune_r_1 = 0.0

   neptune_r_1 = neptune_r_1 + 0.00236338502 * math.cos(0.70498011235 + 38.13303563780*t)
   neptune_r_1=neptune_r_1*t

   neptune_r_1=neptune_r_1*t*t

   neptune_r_1=neptune_r_1*t*t*t

   neptune_r_1=neptune_r_1*t*t*t*t

   return neptune_r_0+neptune_r_1
end

function vsop87d_nano.saturn_b(t)
   local saturn_b_0 = 0.0

   saturn_b_0 = saturn_b_0 + 0.00240348303 * math.cos(2.85238489390 + 426.59819087600*t)
   saturn_b_0 = saturn_b_0 + 0.04330678040 * math.cos(3.60284428399 + 213.29909543800*t)
   local saturn_b_1 = 0.0

   saturn_b_1 = saturn_b_1 + 0.00397554998 * math.cos(5.33289992556 + 213.29909543800*t)
   saturn_b_1=saturn_b_1*t

   saturn_b_1=saturn_b_1*t*t

   saturn_b_1=saturn_b_1*t*t*t

   saturn_b_1=saturn_b_1*t*t*t*t

   saturn_b_1=saturn_b_1*t*t*t*t*t

   return saturn_b_0+saturn_b_1
end

function vsop87d_nano.saturn_l(t)
   local saturn_l_0 = 0.0

   saturn_l_0 = saturn_l_0 + 0.00206816296 * math.cos(0.24658366938 + 103.09277421860*t)
   saturn_l_0 = saturn_l_0 + 0.00350769223 * math.cos(3.30329903015 + 426.59819087600*t)
   saturn_l_0 = saturn_l_0 + 0.00398379386 * math.cos(0.52112025957 + 206.18554843720*t)
   saturn_l_0 = saturn_l_0 + 0.01414150958 * math.cos(4.58581515873 + 7.11354700080*t)
   saturn_l_0 = saturn_l_0 + 0.11107659780 * math.cos(3.96205090194 + 213.29909543800*t)
   saturn_l_0 = saturn_l_0 + 0.87401354029 * math.cos(0.00000000000 + 0.00000000000*t)
   local saturn_l_1 = 0.0

   saturn_l_1 = saturn_l_1 + 0.00107678770 * math.cos(2.27769911872 + 206.18554843720*t)
   saturn_l_1 = saturn_l_1 + 0.00564347566 * math.cos(2.88500136429 + 7.11354700080*t)
   saturn_l_1 = saturn_l_1 + 0.01296855005 * math.cos(1.82820544701 + 213.29909543800*t)
   saturn_l_1 = saturn_l_1 + 213.54295595986 * math.cos(0.00000000000 + 0.00000000000*t)
   saturn_l_1=saturn_l_1*t

   local saturn_l_2 = 0.0

   saturn_l_2 = saturn_l_2 + 0.00116441181 * math.cos(1.17987850633 + 7.11354700080*t)
   saturn_l_2=saturn_l_2*t*t

   saturn_l_2=saturn_l_2*t*t*t

   saturn_l_2=saturn_l_2*t*t*t*t

   saturn_l_2=saturn_l_2*t*t*t*t*t

   return saturn_l_0+saturn_l_1+saturn_l_2
end

function vsop87d_nano.saturn_r(t)
   local saturn_r_0 = 0.0

   saturn_r_0 = saturn_r_0 + 0.00108974737 * math.cos(3.29313595577 + 110.20632121940*t)
   saturn_r_0 = saturn_r_0 + 0.00140617548 * math.cos(5.70406652991 + 632.78373931320*t)
   saturn_r_0 = saturn_r_0 + 0.00361778433 * math.cos(3.13904303264 + 7.11354700080*t)
   saturn_r_0 = saturn_r_0 + 0.00371684449 * math.cos(2.27114833428 + 220.41264243880*t)
   saturn_r_0 = saturn_r_0 + 0.00547506899 * math.cos(5.01532628454 + 103.09277421860*t)
   saturn_r_0 = saturn_r_0 + 0.00821891059 * math.cos(5.93520025371 + 316.39186965660*t)
   saturn_r_0 = saturn_r_0 + 0.01464663959 * math.cos(1.64763045468 + 426.59819087600*t)
   saturn_r_0 = saturn_r_0 + 0.01873679934 * math.cos(5.23549605091 + 206.18554843720*t)
   saturn_r_0 = saturn_r_0 + 0.52921382465 * math.cos(2.39226219733 + 213.29909543800*t)
   saturn_r_0 = saturn_r_0 + 9.55758135801 * math.cos(0.00000000000 + 0.00000000000*t)
   local saturn_r_1 = 0.0

   saturn_r_1 = saturn_r_1 + 0.00143891176 * math.cos(1.40744864239 + 7.11354700080*t)
   saturn_r_1 = saturn_r_1 + 0.00186261540 * math.cos(3.14159265359 + 0.00000000000*t)
   saturn_r_1 = saturn_r_1 + 0.00188491375 * math.cos(0.47215719444 + 220.41264243880*t)
   saturn_r_1 = saturn_r_1 + 0.00341394136 * math.cos(5.79635773960 + 426.59819087600*t)
   saturn_r_1 = saturn_r_1 + 0.00506577574 * math.cos(0.71114650941 + 206.18554843720*t)
   saturn_r_1 = saturn_r_1 + 0.06182981282 * math.cos(0.25843515034 + 213.29909543800*t)
   saturn_r_1=saturn_r_1*t

   local saturn_r_2 = 0.0

   saturn_r_2 = saturn_r_2 + 0.00436902464 * math.cos(4.78671673044 + 213.29909543800*t)
   saturn_r_2=saturn_r_2*t*t

   saturn_r_2=saturn_r_2*t*t*t

   saturn_r_2=saturn_r_2*t*t*t*t

   saturn_r_2=saturn_r_2*t*t*t*t*t

   return saturn_r_0+saturn_r_1+saturn_r_2
end

function vsop87d_nano.uranus_b(t)
   local uranus_b_0 = 0.0

   uranus_b_0 = uranus_b_0 + 0.01346277639 * math.cos(2.61877810545 + 74.78159856730*t)
   local uranus_b_1 = 0.0

   uranus_b_1 = uranus_b_1 + 0.00206366162 * math.cos(4.12394311407 + 74.78159856730*t)
   uranus_b_1=uranus_b_1*t

   uranus_b_1=uranus_b_1*t*t

   uranus_b_1=uranus_b_1*t*t*t

   uranus_b_1=uranus_b_1*t*t*t*t

   return uranus_b_0+uranus_b_1
end

function vsop87d_nano.uranus_l(t)
   local uranus_l_0 = 0.0

   uranus_l_0 = uranus_l_0 + 0.00272328132 * math.cos(3.35823710524 + 149.56319713460*t)
   uranus_l_0 = uranus_l_0 + 0.00365981718 * math.cos(1.89962189068 + 73.29712585900*t)
   uranus_l_0 = uranus_l_0 + 0.01504247826 * math.cos(3.62719262195 + 1.48447270830*t)
   uranus_l_0 = uranus_l_0 + 0.09260408252 * math.cos(0.89106421530 + 74.78159856730*t)
   uranus_l_0 = uranus_l_0 + 5.48129294299 * math.cos(0.00000000000 + 0.00000000000*t)
   local uranus_l_1 = 0.0

   uranus_l_1 = uranus_l_1 + 0.00154458244 * math.cos(5.24201658072 + 74.78159856730*t)
   uranus_l_1 = uranus_l_1 + 75.02543121646 * math.cos(0.00000000000 + 0.00000000000*t)
   uranus_l_1=uranus_l_1*t

   uranus_l_1=uranus_l_1*t*t

   uranus_l_1=uranus_l_1*t*t*t

   uranus_l_1=uranus_l_1*t*t*t*t

   uranus_l_1=uranus_l_1*t*t*t*t*t

   return uranus_l_0+uranus_l_1
end

function vsop87d_nano.uranus_r(t)
   local uranus_r_0 = 0.0

   uranus_r_0 = uranus_r_0 + 0.00143705902 * math.cos(1.38368574483 + 11.04570026390*t)
   uranus_r_0 = uranus_r_0 + 0.00161858251 * math.cos(2.79137863469 + 148.07872442630*t)
   uranus_r_0 = uranus_r_0 + 0.00190521915 * math.cos(1.99809364502 + 1.48447270830*t)
   uranus_r_0 = uranus_r_0 + 0.00243508222 * math.cos(1.57086595074 + 71.81265315070*t)
   uranus_r_0 = uranus_r_0 + 0.00338525522 * math.cos(1.58002682946 + 138.51749687070*t)
   uranus_r_0 = uranus_r_0 + 0.00496404171 * math.cos(1.40139934716 + 454.90936652730*t)
   uranus_r_0 = uranus_r_0 + 0.00602248144 * math.cos(3.86003820462 + 63.73589830340*t)
   uranus_r_0 = uranus_r_0 + 0.00649321851 * math.cos(4.52247298119 + 76.26607127560*t)
   uranus_r_0 = uranus_r_0 + 0.02055653495 * math.cos(1.78295170028 + 149.56319713460*t)
   uranus_r_0 = uranus_r_0 + 0.03440835545 * math.cos(0.32836098991 + 73.29712585900*t)
   uranus_r_0 = uranus_r_0 + 0.88784984055 * math.cos(5.60377526994 + 74.78159856730*t)
   uranus_r_0 = uranus_r_0 + 19.21264847881 * math.cos(0.00000000000 + 0.00000000000*t)
   local uranus_r_1 = 0.0

   uranus_r_1 = uranus_r_1 + 0.01479896370 * math.cos(3.67205705317 + 74.78159856730*t)
   uranus_r_1=uranus_r_1*t

   uranus_r_1=uranus_r_1*t*t

   uranus_r_1=uranus_r_1*t*t*t

   uranus_r_1=uranus_r_1*t*t*t*t

   return uranus_r_0+uranus_r_1
end

function vsop87d_nano.venus_b(t)
   local venus_b_0 = 0.0

   venus_b_0 = venus_b_0 + 0.05923638472 * math.cos(0.26702775813 + 10213.28554621100*t)
   local venus_b_1 = 0.0

   venus_b_1 = venus_b_1 + 0.00513347602 * math.cos(1.80364310797 + 10213.28554621100*t)
   venus_b_1=venus_b_1*t

   venus_b_1=venus_b_1*t*t

   venus_b_1=venus_b_1*t*t*t

   venus_b_1=venus_b_1*t*t*t*t

   venus_b_1=venus_b_1*t*t*t*t*t

   return venus_b_0+venus_b_1
end

function vsop87d_nano.venus_l(t)
   local venus_l_0 = 0.0

   venus_l_0 = venus_l_0 + 0.01353968419 * math.cos(5.59313319619 + 10213.28554621100*t)
   venus_l_0 = venus_l_0 + 3.17614666774 * math.cos(0.00000000000 + 0.00000000000*t)
   local venus_l_1 = 0.0

   venus_l_1 = venus_l_1 + 10213.52943052898 * math.cos(0.00000000000 + 0.00000000000*t)
   venus_l_1=venus_l_1*t

   venus_l_1=venus_l_1*t*t

   venus_l_1=venus_l_1*t*t*t

   venus_l_1=venus_l_1*t*t*t*t

   venus_l_1=venus_l_1*t*t*t*t*t

   return venus_l_0+venus_l_1
end

function vsop87d_nano.venus_r(t)
   local venus_r_0 = 0.0

   venus_r_0 = venus_r_0 + 0.00489824185 * math.cos(4.02151832268 + 10213.28554621100*t)
   venus_r_0 = venus_r_0 + 0.72334820905 * math.cos(0.00000000000 + 0.00000000000*t)
   venus_r_0=venus_r_0*t

   venus_r_0=venus_r_0*t*t

   venus_r_0=venus_r_0*t*t*t

   venus_r_0=venus_r_0*t*t*t*t

   return venus_r_0;
end

return vsop87d_nano
