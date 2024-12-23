--VSOP87-Multilang http://www.celestialprogramming.com/
--Greg Miller (gmiller@gregmiller.net) 2022.  Released as Public Domain

local vsop87d_pico = {}

function vsop87d_pico.getMercury(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87d_pico.mercury_l(t)
   temp[2]=vsop87d_pico.mercury_b(t)
   temp[3]=vsop87d_pico.mercury_r(t)

   return temp;
end

function vsop87d_pico.getVenus(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87d_pico.venus_l(t)
   temp[2]=vsop87d_pico.venus_b(t)
   temp[3]=vsop87d_pico.venus_r(t)

   return temp;
end

function vsop87d_pico.getEarth(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87d_pico.earth_l(t)
   temp[2]=vsop87d_pico.earth_b(t)
   temp[3]=vsop87d_pico.earth_r(t)

   return temp;
end

function vsop87d_pico.getMars(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87d_pico.mars_l(t)
   temp[2]=vsop87d_pico.mars_b(t)
   temp[3]=vsop87d_pico.mars_r(t)

   return temp;
end

function vsop87d_pico.getJupiter(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87d_pico.jupiter_l(t)
   temp[2]=vsop87d_pico.jupiter_b(t)
   temp[3]=vsop87d_pico.jupiter_r(t)

   return temp;
end

function vsop87d_pico.getSaturn(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87d_pico.saturn_l(t)
   temp[2]=vsop87d_pico.saturn_b(t)
   temp[3]=vsop87d_pico.saturn_r(t)

   return temp;
end

function vsop87d_pico.getUranus(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87d_pico.uranus_l(t)
   temp[2]=vsop87d_pico.uranus_b(t)
   temp[3]=vsop87d_pico.uranus_r(t)

   return temp;
end

function vsop87d_pico.getNeptune(t)
   local temp={0.0, 0.0, 0.0}
   temp[1]=vsop87d_pico.neptune_l(t)
   temp[2]=vsop87d_pico.neptune_b(t)
   temp[3]=vsop87d_pico.neptune_r(t)

   return temp;
end

function vsop87d_pico.earth_b(t)
   return 0
end

function vsop87d_pico.earth_l(t)
   local earth_l_0 = 0.0

   earth_l_0 = earth_l_0 + 0.03341656456 * math.cos(4.66925680417 + 6283.07584999140*t)
   earth_l_0 = earth_l_0 + 1.75347045673 * math.cos(0.00000000000 + 0.00000000000*t)
   local earth_l_1 = 0.0

   earth_l_1 = earth_l_1 + 6283.31966747491 * math.cos(0.00000000000 + 0.00000000000*t)
   earth_l_1=earth_l_1*t

   earth_l_1=earth_l_1*t*t

   earth_l_1=earth_l_1*t*t*t

   earth_l_1=earth_l_1*t*t*t*t

   earth_l_1=earth_l_1*t*t*t*t*t

   return earth_l_0+earth_l_1
end

function vsop87d_pico.earth_r(t)
   local earth_r_0 = 0.0

   earth_r_0 = earth_r_0 + 0.01670699626 * math.cos(3.09846350771 + 6283.07584999140*t)
   earth_r_0 = earth_r_0 + 1.00013988799 * math.cos(0.00000000000 + 0.00000000000*t)
   earth_r_0=earth_r_0*t

   earth_r_0=earth_r_0*t*t

   earth_r_0=earth_r_0*t*t*t

   earth_r_0=earth_r_0*t*t*t*t

   earth_r_0=earth_r_0*t*t*t*t*t

   return earth_r_0
end

function vsop87d_pico.jupiter_b(t)
   local jupiter_b_0 = 0.0

   jupiter_b_0 = jupiter_b_0 + 0.02268615703 * math.cos(3.55852606718 + 529.69096509460*t)
   jupiter_b_0=jupiter_b_0*t

   jupiter_b_0=jupiter_b_0*t*t

   jupiter_b_0=jupiter_b_0*t*t*t

   jupiter_b_0=jupiter_b_0*t*t*t*t

   jupiter_b_0=jupiter_b_0*t*t*t*t*t

   return jupiter_b_0
end

function vsop87d_pico.jupiter_l(t)
   local jupiter_l_0 = 0.0

   jupiter_l_0 = jupiter_l_0 + 0.09695898711 * math.cos(5.06191793105 + 529.69096509460*t)
   jupiter_l_0 = jupiter_l_0 + 0.59954691495 * math.cos(0.00000000000 + 0.00000000000*t)
   local jupiter_l_1 = 0.0

   jupiter_l_1 = jupiter_l_1 + 529.93480757497 * math.cos(0.00000000000 + 0.00000000000*t)
   jupiter_l_1=jupiter_l_1*t

   jupiter_l_1=jupiter_l_1*t*t

   jupiter_l_1=jupiter_l_1*t*t*t

   jupiter_l_1=jupiter_l_1*t*t*t*t

   jupiter_l_1=jupiter_l_1*t*t*t*t*t

   return jupiter_l_0+jupiter_l_1
end

function vsop87d_pico.jupiter_r(t)
   local jupiter_r_0 = 0.0

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

function vsop87d_pico.mars_b(t)
   local mars_b_0 = 0.0

   mars_b_0 = mars_b_0 + 0.03197134986 * math.cos(3.76832042432 + 3340.61242669980*t)
   mars_b_0=mars_b_0*t

   mars_b_0=mars_b_0*t*t

   mars_b_0=mars_b_0*t*t*t

   mars_b_0=mars_b_0*t*t*t*t

   mars_b_0=mars_b_0*t*t*t*t*t

   return mars_b_0
end

function vsop87d_pico.mars_l(t)
   local mars_l_0 = 0.0

   mars_l_0 = mars_l_0 + 0.01108216792 * math.cos(5.40099836958 + 6681.22485339960*t)
   mars_l_0 = mars_l_0 + 0.18656368100 * math.cos(5.05037100303 + 3340.61242669980*t)
   mars_l_0 = mars_l_0 + 6.20347711583 * math.cos(0.00000000000 + 0.00000000000*t)
   local mars_l_1 = 0.0

   mars_l_1 = mars_l_1 + 0.01458227051 * math.cos(3.60426053609 + 3340.61242669980*t)
   mars_l_1 = mars_l_1 + 3340.85627474342 * math.cos(0.00000000000 + 0.00000000000*t)
   mars_l_1=mars_l_1*t

   mars_l_1=mars_l_1*t*t

   mars_l_1=mars_l_1*t*t*t

   mars_l_1=mars_l_1*t*t*t*t

   mars_l_1=mars_l_1*t*t*t*t*t

   return mars_l_0+mars_l_1
end

function vsop87d_pico.mars_r(t)
   local mars_r_0 = 0.0

   mars_r_0 = mars_r_0 + 0.14184953153 * math.cos(3.47971283519 + 3340.61242669980*t)
   mars_r_0 = mars_r_0 + 1.53033488276 * math.cos(0.00000000000 + 0.00000000000*t)
   local mars_r_1 = 0.0

   mars_r_1 = mars_r_1 + 0.01107433340 * math.cos(2.03250524950 + 3340.61242669980*t)
   mars_r_1=mars_r_1*t

   mars_r_1=mars_r_1*t*t

   mars_r_1=mars_r_1*t*t*t

   mars_r_1=mars_r_1*t*t*t*t

   mars_r_1=mars_r_1*t*t*t*t*t

   return mars_r_0+mars_r_1
end

function vsop87d_pico.mercury_b(t)
   local mercury_b_0 = 0.0

   mercury_b_0 = mercury_b_0 + 0.01222839532 * math.cos(3.14159265359 + 0.00000000000*t)
   mercury_b_0 = mercury_b_0 + 0.02388076996 * math.cos(5.03738959685 + 52175.80628314840*t)
   mercury_b_0 = mercury_b_0 + 0.11737528962 * math.cos(1.98357498767 + 26087.90314157420*t)
   mercury_b_0=mercury_b_0*t

   mercury_b_0=mercury_b_0*t*t

   mercury_b_0=mercury_b_0*t*t*t

   mercury_b_0=mercury_b_0*t*t*t*t

   mercury_b_0=mercury_b_0*t*t*t*t*t

   return mercury_b_0
end

function vsop87d_pico.mercury_l(t)
   local mercury_l_0 = 0.0

   mercury_l_0 = mercury_l_0 + 0.05046294199 * math.cos(4.47785489540 + 52175.80628314840*t)
   mercury_l_0 = mercury_l_0 + 0.40989414976 * math.cos(1.48302034194 + 26087.90314157420*t)
   mercury_l_0 = mercury_l_0 + 4.40250710144 * math.cos(0.00000000000 + 0.00000000000*t)
   local mercury_l_1 = 0.0

   mercury_l_1 = mercury_l_1 + 0.01126007832 * math.cos(6.21703970996 + 26087.90314157420*t)
   mercury_l_1 = mercury_l_1 + 26088.14706222746 * math.cos(0.00000000000 + 0.00000000000*t)
   mercury_l_1=mercury_l_1*t

   mercury_l_1=mercury_l_1*t*t

   mercury_l_1=mercury_l_1*t*t*t

   mercury_l_1=mercury_l_1*t*t*t*t

   mercury_l_1=mercury_l_1*t*t*t*t*t

   return mercury_l_0+mercury_l_1
end

function vsop87d_pico.mercury_r(t)
   local mercury_r_0 = 0.0

   mercury_r_0 = mercury_r_0 + 0.07834131817 * math.cos(6.19233722599 + 26087.90314157420*t)
   mercury_r_0 = mercury_r_0 + 0.39528271652 * math.cos(0.00000000000 + 0.00000000000*t)
   mercury_r_0=mercury_r_0*t

   mercury_r_0=mercury_r_0*t*t

   mercury_r_0=mercury_r_0*t*t*t

   mercury_r_0=mercury_r_0*t*t*t*t

   mercury_r_0=mercury_r_0*t*t*t*t*t

   return mercury_r_0
end

function vsop87d_pico.neptune_b(t)
   local neptune_b_0 = 0.0

   neptune_b_0 = neptune_b_0 + 0.03088622933 * math.cos(1.44104372626 + 38.13303563780*t)
   neptune_b_0=neptune_b_0*t

   neptune_b_0=neptune_b_0*t*t

   neptune_b_0=neptune_b_0*t*t*t

   neptune_b_0=neptune_b_0*t*t*t*t

   neptune_b_0=neptune_b_0*t*t*t*t*t

   return neptune_b_0
end

function vsop87d_pico.neptune_l(t)
   local neptune_l_0 = 0.0

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

function vsop87d_pico.neptune_r(t)
   local neptune_r_0 = 0.0

   neptune_r_0 = neptune_r_0 + 0.01691764281 * math.cos(3.25186138896 + 36.64856292950*t)
   neptune_r_0 = neptune_r_0 + 0.27062259490 * math.cos(1.32999458930 + 38.13303563780*t)
   neptune_r_0 = neptune_r_0 + 30.07013206102 * math.cos(0.00000000000 + 0.00000000000*t)
   neptune_r_0=neptune_r_0*t

   neptune_r_0=neptune_r_0*t*t

   neptune_r_0=neptune_r_0*t*t*t

   neptune_r_0=neptune_r_0*t*t*t*t

   return neptune_r_0
end

function vsop87d_pico.saturn_b(t)
   local saturn_b_0 = 0.0

   saturn_b_0 = saturn_b_0 + 0.04330678040 * math.cos(3.60284428399 + 213.29909543800*t)
   saturn_b_0=saturn_b_0*t

   saturn_b_0=saturn_b_0*t*t

   saturn_b_0=saturn_b_0*t*t*t

   saturn_b_0=saturn_b_0*t*t*t*t

   saturn_b_0=saturn_b_0*t*t*t*t*t

   return saturn_b_0
end

function vsop87d_pico.saturn_l(t)
   local saturn_l_0 = 0.0

   saturn_l_0 = saturn_l_0 + 0.01414150958 * math.cos(4.58581515873 + 7.11354700080*t)
   saturn_l_0 = saturn_l_0 + 0.11107659780 * math.cos(3.96205090194 + 213.29909543800*t)
   saturn_l_0 = saturn_l_0 + 0.87401354029 * math.cos(0.00000000000 + 0.00000000000*t)
   local saturn_l_1 = 0.0

   saturn_l_1 = saturn_l_1 + 0.01296855005 * math.cos(1.82820544701 + 213.29909543800*t)
   saturn_l_1 = saturn_l_1 + 213.54295595986 * math.cos(0.00000000000 + 0.00000000000*t)
   saturn_l_1=saturn_l_1*t

   saturn_l_1=saturn_l_1*t*t

   saturn_l_1=saturn_l_1*t*t*t

   saturn_l_1=saturn_l_1*t*t*t*t

   saturn_l_1=saturn_l_1*t*t*t*t*t

   return saturn_l_0+saturn_l_1
end

function vsop87d_pico.saturn_r(t)
   local saturn_r_0 = 0.0

   saturn_r_0 = saturn_r_0 + 0.01464663959 * math.cos(1.64763045468 + 426.59819087600*t)
   saturn_r_0 = saturn_r_0 + 0.01873679934 * math.cos(5.23549605091 + 206.18554843720*t)
   saturn_r_0 = saturn_r_0 + 0.52921382465 * math.cos(2.39226219733 + 213.29909543800*t)
   saturn_r_0 = saturn_r_0 + 9.55758135801 * math.cos(0.00000000000 + 0.00000000000*t)
   local saturn_r_1 = 0.0

   saturn_r_1 = saturn_r_1 + 0.06182981282 * math.cos(0.25843515034 + 213.29909543800*t)
   saturn_r_1=saturn_r_1*t

   saturn_r_1=saturn_r_1*t*t

   saturn_r_1=saturn_r_1*t*t*t

   saturn_r_1=saturn_r_1*t*t*t*t

   saturn_r_1=saturn_r_1*t*t*t*t*t

   return saturn_r_0+saturn_r_1
end

function vsop87d_pico.uranus_b(t)
   local uranus_b_0 = 0.0

   uranus_b_0 = uranus_b_0 + 0.01346277639 * math.cos(2.61877810545 + 74.78159856730*t)
   uranus_b_0=uranus_b_0*t

   uranus_b_0=uranus_b_0*t*t

   uranus_b_0=uranus_b_0*t*t*t

   uranus_b_0=uranus_b_0*t*t*t*t

   return uranus_b_0
end

function vsop87d_pico.uranus_l(t)
   local uranus_l_0 = 0.0

   uranus_l_0 = uranus_l_0 + 0.01504247826 * math.cos(3.62719262195 + 1.48447270830*t)
   uranus_l_0 = uranus_l_0 + 0.09260408252 * math.cos(0.89106421530 + 74.78159856730*t)
   uranus_l_0 = uranus_l_0 + 5.48129294299 * math.cos(0.00000000000 + 0.00000000000*t)
   local uranus_l_1 = 0.0

   uranus_l_1 = uranus_l_1 + 75.02543121646 * math.cos(0.00000000000 + 0.00000000000*t)
   uranus_l_1=uranus_l_1*t

   uranus_l_1=uranus_l_1*t*t

   uranus_l_1=uranus_l_1*t*t*t

   uranus_l_1=uranus_l_1*t*t*t*t

   uranus_l_1=uranus_l_1*t*t*t*t*t

   return uranus_l_0+uranus_l_1
end

function vsop87d_pico.uranus_r(t)
   local uranus_r_0 = 0.0

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

function vsop87d_pico.venus_b(t)
   local venus_b_0 = 0.0

   venus_b_0 = venus_b_0 + 0.05923638472 * math.cos(0.26702775813 + 10213.28554621100*t)
   venus_b_0=venus_b_0*t

   venus_b_0=venus_b_0*t*t

   venus_b_0=venus_b_0*t*t*t

   venus_b_0=venus_b_0*t*t*t*t

   venus_b_0=venus_b_0*t*t*t*t*t

   return venus_b_0
end

function vsop87d_pico.venus_l(t)
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

function vsop87d_pico.venus_r(t)
   local venus_r_0 = 0.0

   venus_r_0 = venus_r_0 + 0.72334820905 * math.cos(0.00000000000 + 0.00000000000*t)
   venus_r_0=venus_r_0*t

   venus_r_0=venus_r_0*t*t

   venus_r_0=venus_r_0*t*t*t

   venus_r_0=venus_r_0*t*t*t*t

   return venus_r_0;
end

return vsop87d_pico
