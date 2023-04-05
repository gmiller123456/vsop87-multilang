rem VSOP87-Multilang http://www.celestialprogramming.com/
rem Greg Miller (gmiller@gregmiller.net) 2023.  Released as Public Domain

function vsop87d_pico_getMercury(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87d_pico_mercury_l(t)
   temp(2)=vsop87d_pico_mercury_b(t)
   temp(3)=vsop87d_pico_mercury_r(t)

   vsop87d_pico_getMercury = temp
end function

function vsop87d_pico_getVenus(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87d_pico_venus_l(t)
   temp(2)=vsop87d_pico_venus_b(t)
   temp(3)=vsop87d_pico_venus_r(t)

   vsop87d_pico_getVenus = temp
end function

function vsop87d_pico_getEarth(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87d_pico_earth_l(t)
   temp(2)=vsop87d_pico_earth_b(t)
   temp(3)=vsop87d_pico_earth_r(t)

   vsop87d_pico_getEarth = temp
end function

function vsop87d_pico_getMars(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87d_pico_mars_l(t)
   temp(2)=vsop87d_pico_mars_b(t)
   temp(3)=vsop87d_pico_mars_r(t)

   vsop87d_pico_getMars = temp
end function

function vsop87d_pico_getJupiter(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87d_pico_jupiter_l(t)
   temp(2)=vsop87d_pico_jupiter_b(t)
   temp(3)=vsop87d_pico_jupiter_r(t)

   vsop87d_pico_getJupiter = temp
end function

function vsop87d_pico_getSaturn(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87d_pico_saturn_l(t)
   temp(2)=vsop87d_pico_saturn_b(t)
   temp(3)=vsop87d_pico_saturn_r(t)

   vsop87d_pico_getSaturn = temp
end function

function vsop87d_pico_getUranus(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87d_pico_uranus_l(t)
   temp(2)=vsop87d_pico_uranus_b(t)
   temp(3)=vsop87d_pico_uranus_r(t)

   vsop87d_pico_getUranus = temp
end function

function vsop87d_pico_getNeptune(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87d_pico_neptune_l(t)
   temp(2)=vsop87d_pico_neptune_b(t)
   temp(3)=vsop87d_pico_neptune_r(t)

   vsop87d_pico_getNeptune = temp
end function

function vsop87d_pico_venus_r(t as Double)
   dim venus_r_0 as Double
   venus_r_0 = 0.0

   venus_r_0 = venus_r_0 +      0.72334820905 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87d_pico_venus_r = venus_r_0
end function

function vsop87d_pico_venus_b(t as Double)
   dim venus_b_0 as Double
   venus_b_0 = 0.0

   venus_b_0 = venus_b_0 +      0.05923638472 * cos( 0.26702775813 +    10213.28554621100*t)

   vsop87d_pico_venus_b = venus_b_0
end function

function vsop87d_pico_venus_l(t as Double)
   dim venus_l_1 as Double
   venus_l_1 = 0.0

   venus_l_1 = venus_l_1 +  10213.52943052898 * cos( 0.00000000000 +        0.00000000000*t)
   venus_l_1=venus_l_1*t

   dim venus_l_0 as Double
   venus_l_0 = 0.0

   venus_l_0 = venus_l_0 +      0.01353968419 * cos( 5.59313319619 +    10213.28554621100*t)
   venus_l_0 = venus_l_0 +      3.17614666774 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87d_pico_venus_l = venus_l_1+venus_l_0
end function

function vsop87d_pico_uranus_r(t as Double)
   dim uranus_r_1 as Double
   uranus_r_1 = 0.0

   uranus_r_1 = uranus_r_1 +      0.01479896370 * cos( 3.67205705317 +       74.78159856730*t)
   uranus_r_1=uranus_r_1*t

   dim uranus_r_0 as Double
   uranus_r_0 = 0.0

   uranus_r_0 = uranus_r_0 +      0.02055653495 * cos( 1.78295170028 +      149.56319713460*t)
   uranus_r_0 = uranus_r_0 +      0.03440835545 * cos( 0.32836098991 +       73.29712585900*t)
   uranus_r_0 = uranus_r_0 +      0.88784984055 * cos( 5.60377526994 +       74.78159856730*t)
   uranus_r_0 = uranus_r_0 +     19.21264847881 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87d_pico_uranus_r = uranus_r_1+uranus_r_0
end function

function vsop87d_pico_uranus_b(t as Double)
   dim uranus_b_0 as Double
   uranus_b_0 = 0.0

   uranus_b_0 = uranus_b_0 +      0.01346277639 * cos( 2.61877810545 +       74.78159856730*t)

   vsop87d_pico_uranus_b = uranus_b_0
end function

function vsop87d_pico_uranus_l(t as Double)
   dim uranus_l_1 as Double
   uranus_l_1 = 0.0

   uranus_l_1 = uranus_l_1 +     75.02543121646 * cos( 0.00000000000 +        0.00000000000*t)
   uranus_l_1=uranus_l_1*t

   dim uranus_l_0 as Double
   uranus_l_0 = 0.0

   uranus_l_0 = uranus_l_0 +      0.01504247826 * cos( 3.62719262195 +        1.48447270830*t)
   uranus_l_0 = uranus_l_0 +      0.09260408252 * cos( 0.89106421530 +       74.78159856730*t)
   uranus_l_0 = uranus_l_0 +      5.48129294299 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87d_pico_uranus_l = uranus_l_1+uranus_l_0
end function

function vsop87d_pico_saturn_r(t as Double)
   dim saturn_r_1 as Double
   saturn_r_1 = 0.0

   saturn_r_1 = saturn_r_1 +      0.06182981282 * cos( 0.25843515034 +      213.29909543800*t)
   saturn_r_1=saturn_r_1*t

   dim saturn_r_0 as Double
   saturn_r_0 = 0.0

   saturn_r_0 = saturn_r_0 +      0.01464663959 * cos( 1.64763045468 +      426.59819087600*t)
   saturn_r_0 = saturn_r_0 +      0.01873679934 * cos( 5.23549605091 +      206.18554843720*t)
   saturn_r_0 = saturn_r_0 +      0.52921382465 * cos( 2.39226219733 +      213.29909543800*t)
   saturn_r_0 = saturn_r_0 +      9.55758135801 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87d_pico_saturn_r = saturn_r_1+saturn_r_0
end function

function vsop87d_pico_saturn_b(t as Double)
   dim saturn_b_0 as Double
   saturn_b_0 = 0.0

   saturn_b_0 = saturn_b_0 +      0.04330678040 * cos( 3.60284428399 +      213.29909543800*t)

   vsop87d_pico_saturn_b = saturn_b_0
end function

function vsop87d_pico_saturn_l(t as Double)
   dim saturn_l_1 as Double
   saturn_l_1 = 0.0

   saturn_l_1 = saturn_l_1 +      0.01296855005 * cos( 1.82820544701 +      213.29909543800*t)
   saturn_l_1 = saturn_l_1 +    213.54295595986 * cos( 0.00000000000 +        0.00000000000*t)
   saturn_l_1=saturn_l_1*t

   dim saturn_l_0 as Double
   saturn_l_0 = 0.0

   saturn_l_0 = saturn_l_0 +      0.01414150958 * cos( 4.58581515873 +        7.11354700080*t)
   saturn_l_0 = saturn_l_0 +      0.11107659780 * cos( 3.96205090194 +      213.29909543800*t)
   saturn_l_0 = saturn_l_0 +      0.87401354029 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87d_pico_saturn_l = saturn_l_1+saturn_l_0
end function

function vsop87d_pico_neptune_r(t as Double)
   dim neptune_r_0 as Double
   neptune_r_0 = 0.0

   neptune_r_0 = neptune_r_0 +      0.01691764281 * cos( 3.25186138896 +       36.64856292950*t)
   neptune_r_0 = neptune_r_0 +      0.27062259490 * cos( 1.32999458930 +       38.13303563780*t)
   neptune_r_0 = neptune_r_0 +     30.07013206102 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87d_pico_neptune_r = neptune_r_0
end function

function vsop87d_pico_neptune_b(t as Double)
   dim neptune_b_0 as Double
   neptune_b_0 = 0.0

   neptune_b_0 = neptune_b_0 +      0.03088622933 * cos( 1.44104372626 +       38.13303563780*t)

   vsop87d_pico_neptune_b = neptune_b_0
end function

function vsop87d_pico_neptune_l(t as Double)
   dim neptune_l_1 as Double
   neptune_l_1 = 0.0

   neptune_l_1 = neptune_l_1 +     38.37687716731 * cos( 0.00000000000 +        0.00000000000*t)
   neptune_l_1=neptune_l_1*t

   dim neptune_l_0 as Double
   neptune_l_0 = 0.0

   neptune_l_0 = neptune_l_0 +      0.01019727662 * cos( 0.48580923660 +        1.48447270830*t)
   neptune_l_0 = neptune_l_0 +      0.01798475509 * cos( 2.90101273050 +       38.13303563780*t)
   neptune_l_0 = neptune_l_0 +      5.31188633047 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87d_pico_neptune_l = neptune_l_1+neptune_l_0
end function

function vsop87d_pico_mercury_r(t as Double)
   dim mercury_r_0 as Double
   mercury_r_0 = 0.0

   mercury_r_0 = mercury_r_0 +      0.07834131817 * cos( 6.19233722599 +    26087.90314157420*t)
   mercury_r_0 = mercury_r_0 +      0.39528271652 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87d_pico_mercury_r = mercury_r_0
end function

function vsop87d_pico_mercury_b(t as Double)
   dim mercury_b_0 as Double
   mercury_b_0 = 0.0

   mercury_b_0 = mercury_b_0 +      0.01222839532 * cos( 3.14159265359 +        0.00000000000*t)
   mercury_b_0 = mercury_b_0 +      0.02388076996 * cos( 5.03738959685 +    52175.80628314840*t)
   mercury_b_0 = mercury_b_0 +      0.11737528962 * cos( 1.98357498767 +    26087.90314157420*t)

   vsop87d_pico_mercury_b = mercury_b_0
end function

function vsop87d_pico_mercury_l(t as Double)
   dim mercury_l_1 as Double
   mercury_l_1 = 0.0

   mercury_l_1 = mercury_l_1 +      0.01126007832 * cos( 6.21703970996 +    26087.90314157420*t)
   mercury_l_1 = mercury_l_1 +  26088.14706222746 * cos( 0.00000000000 +        0.00000000000*t)
   mercury_l_1=mercury_l_1*t

   dim mercury_l_0 as Double
   mercury_l_0 = 0.0

   mercury_l_0 = mercury_l_0 +      0.05046294199 * cos( 4.47785489540 +    52175.80628314840*t)
   mercury_l_0 = mercury_l_0 +      0.40989414976 * cos( 1.48302034194 +    26087.90314157420*t)
   mercury_l_0 = mercury_l_0 +      4.40250710144 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87d_pico_mercury_l = mercury_l_1+mercury_l_0
end function

function vsop87d_pico_mars_r(t as Double)
   dim mars_r_1 as Double
   mars_r_1 = 0.0

   mars_r_1 = mars_r_1 +      0.01107433340 * cos( 2.03250524950 +     3340.61242669980*t)
   mars_r_1=mars_r_1*t

   dim mars_r_0 as Double
   mars_r_0 = 0.0

   mars_r_0 = mars_r_0 +      0.14184953153 * cos( 3.47971283519 +     3340.61242669980*t)
   mars_r_0 = mars_r_0 +      1.53033488276 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87d_pico_mars_r = mars_r_1+mars_r_0
end function

function vsop87d_pico_mars_b(t as Double)
   dim mars_b_0 as Double
   mars_b_0 = 0.0

   mars_b_0 = mars_b_0 +      0.03197134986 * cos( 3.76832042432 +     3340.61242669980*t)

   vsop87d_pico_mars_b = mars_b_0
end function

function vsop87d_pico_mars_l(t as Double)
   dim mars_l_1 as Double
   mars_l_1 = 0.0

   mars_l_1 = mars_l_1 +      0.01458227051 * cos( 3.60426053609 +     3340.61242669980*t)
   mars_l_1 = mars_l_1 +   3340.85627474342 * cos( 0.00000000000 +        0.00000000000*t)
   mars_l_1=mars_l_1*t

   dim mars_l_0 as Double
   mars_l_0 = 0.0

   mars_l_0 = mars_l_0 +      0.01108216792 * cos( 5.40099836958 +     6681.22485339960*t)
   mars_l_0 = mars_l_0 +      0.18656368100 * cos( 5.05037100303 +     3340.61242669980*t)
   mars_l_0 = mars_l_0 +      6.20347711583 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87d_pico_mars_l = mars_l_1+mars_l_0
end function

function vsop87d_pico_jupiter_r(t as Double)
   dim jupiter_r_1 as Double
   jupiter_r_1 = 0.0

   jupiter_r_1 = jupiter_r_1 +      0.01271801596 * cos( 2.64937511122 +      529.69096509460*t)
   jupiter_r_1=jupiter_r_1*t

   dim jupiter_r_0 as Double
   jupiter_r_0 = 0.0

   jupiter_r_0 = jupiter_r_0 +      0.25209327020 * cos( 3.49108640015 +      529.69096509460*t)
   jupiter_r_0 = jupiter_r_0 +      5.20887429471 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87d_pico_jupiter_r = jupiter_r_1+jupiter_r_0
end function

function vsop87d_pico_jupiter_b(t as Double)
   dim jupiter_b_0 as Double
   jupiter_b_0 = 0.0

   jupiter_b_0 = jupiter_b_0 +      0.02268615703 * cos( 3.55852606718 +      529.69096509460*t)

   vsop87d_pico_jupiter_b = jupiter_b_0
end function

function vsop87d_pico_jupiter_l(t as Double)
   dim jupiter_l_1 as Double
   jupiter_l_1 = 0.0

   jupiter_l_1 = jupiter_l_1 +    529.93480757497 * cos( 0.00000000000 +        0.00000000000*t)
   jupiter_l_1=jupiter_l_1*t

   dim jupiter_l_0 as Double
   jupiter_l_0 = 0.0

   jupiter_l_0 = jupiter_l_0 +      0.09695898711 * cos( 5.06191793105 +      529.69096509460*t)
   jupiter_l_0 = jupiter_l_0 +      0.59954691495 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87d_pico_jupiter_l = jupiter_l_1+jupiter_l_0
end function

function vsop87d_pico_earth_r(t as Double)
   dim earth_r_0 as Double
   earth_r_0 = 0.0

   earth_r_0 = earth_r_0 +      0.01670699626 * cos( 3.09846350771 +     6283.07584999140*t)
   earth_r_0 = earth_r_0 +      1.00013988799 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87d_pico_earth_r = earth_r_0
end function

function vsop87d_pico_earth_b(t as Double)

   vsop87d_pico_earth_b = 0
end function

function vsop87d_pico_earth_l(t as Double)
   dim earth_l_1 as Double
   earth_l_1 = 0.0

   earth_l_1 = earth_l_1 +   6283.31966747491 * cos( 0.00000000000 +        0.00000000000*t)
   earth_l_1=earth_l_1*t

   dim earth_l_0 as Double
   earth_l_0 = 0.0

   earth_l_0 = earth_l_0 +      0.03341656456 * cos( 4.66925680417 +     6283.07584999140*t)
   earth_l_0 = earth_l_0 +      1.75347045673 * cos( 0.00000000000 +        0.00000000000*t)
   vsop87d_pico_earth_l = earth_l_1+earth_l_0
end function

