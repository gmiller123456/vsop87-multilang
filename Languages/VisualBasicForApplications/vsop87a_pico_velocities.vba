rem VSOP87-Multilang http://www.celestialprogramming.com/
rem Greg Miller (gmiller@gregmiller.net) 2023.  Released as Public Domain

function vsop87a_pico_getMercury(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87a_pico_mercury_x_velocity(t) / 365250.0
   temp(2)=vsop87a_pico_mercury_y_velocity(t) / 365250.0
   temp(3)=vsop87a_pico_mercury_z_velocity(t) / 365250.0

   vsop87a_pico_getMercury = temp
end function

function vsop87a_pico_getVenus(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87a_pico_venus_x_velocity(t) / 365250.0
   temp(2)=vsop87a_pico_venus_y_velocity(t) / 365250.0
   temp(3)=vsop87a_pico_venus_z_velocity(t) / 365250.0

   vsop87a_pico_getVenus = temp
end function

function vsop87a_pico_getEarth(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87a_pico_earth_x_velocity(t) / 365250.0
   temp(2)=vsop87a_pico_earth_y_velocity(t) / 365250.0
   temp(3)=vsop87a_pico_earth_z_velocity(t) / 365250.0

   vsop87a_pico_getEarth = temp
end function

function vsop87a_pico_getMars(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87a_pico_mars_x_velocity(t) / 365250.0
   temp(2)=vsop87a_pico_mars_y_velocity(t) / 365250.0
   temp(3)=vsop87a_pico_mars_z_velocity(t) / 365250.0

   vsop87a_pico_getMars = temp
end function

function vsop87a_pico_getJupiter(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87a_pico_jupiter_x_velocity(t) / 365250.0
   temp(2)=vsop87a_pico_jupiter_y_velocity(t) / 365250.0
   temp(3)=vsop87a_pico_jupiter_z_velocity(t) / 365250.0

   vsop87a_pico_getJupiter = temp
end function

function vsop87a_pico_getSaturn(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87a_pico_saturn_x_velocity(t) / 365250.0
   temp(2)=vsop87a_pico_saturn_y_velocity(t) / 365250.0
   temp(3)=vsop87a_pico_saturn_z_velocity(t) / 365250.0

   vsop87a_pico_getSaturn = temp
end function

function vsop87a_pico_getUranus(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87a_pico_uranus_x_velocity(t) / 365250.0
   temp(2)=vsop87a_pico_uranus_y_velocity(t) / 365250.0
   temp(3)=vsop87a_pico_uranus_z_velocity(t) / 365250.0

   vsop87a_pico_getUranus = temp
end function

function vsop87a_pico_getNeptune(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87a_pico_neptune_x_velocity(t) / 365250.0
   temp(2)=vsop87a_pico_neptune_y_velocity(t) / 365250.0
   temp(3)=vsop87a_pico_neptune_z_velocity(t) / 365250.0

   vsop87a_pico_getNeptune = temp
end function

function vsop87a_pico_getEmb(t as Double) as Variant
   dim temp(3)
   temp(1)=vsop87a_pico_emb_x_velocity(t) / 365250.0
   temp(2)=vsop87a_pico_emb_y_velocity(t) / 365250.0
   temp(3)=vsop87a_pico_emb_z_velocity(t) / 365250.0

   vsop87a_pico_getEmb = temp
end function

function vsop87a_pico_getMoon(earth as Variant, emb as Variant) as Variant
   dim temp(3)

   temp(1)=(emb(1)-earth(1))*(1 + 1 / 0.01230073677)
   temp(2)=(emb(2)-earth(2))*(1 + 1 / 0.01230073677)
   temp(3)=(emb(3)-earth(3))*(1 + 1 / 0.01230073677)
   temp(1)=temp(1)+earth(1)
   temp(2)=temp(2)+earth(2)
   temp(3)=temp(3)+earth(3)

   vsop87a_pico_getMoon = temp
end function

function vsop87a_pico_venus_z_velocity(t as Double)
   dim venus_z_0 as Double
   venus_z_0 = 0.0

   venus_z_0 = venus_z_0 -1 *      0.04282990302 *    10213.28554621100 * sin( 0.26703856476 +    10213.28554621100*t)

   vsop87a_pico_venus_z_velocity = venus_z_0
end function

function vsop87a_pico_venus_y_velocity(t as Double)
   dim venus_y_0 as Double
   venus_y_0 = 0.0

   venus_y_0 = venus_y_0 -1 *      0.72324820731 *    10213.28554621100 * sin( 1.60573808356 +    10213.28554621100*t)

   vsop87a_pico_venus_y_velocity = venus_y_0
end function

function vsop87a_pico_venus_x_velocity(t as Double)
   dim venus_x_0 as Double
   venus_x_0 = 0.0

   venus_x_0 = venus_x_0 -1 *      0.72211281391 *    10213.28554621100 * sin( 3.17575836361 +    10213.28554621100*t)

   vsop87a_pico_venus_x_velocity = venus_x_0
end function

function vsop87a_pico_uranus_z_velocity(t as Double)
   dim uranus_z_0 as Double
   uranus_z_0 = 0.0

   uranus_z_0 = uranus_z_0 -1 *      0.01774318778 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)
   uranus_z_0 = uranus_z_0 -1 *      0.25878127698 *       74.78159856730 * sin( 2.61861272578 +       74.78159856730*t)

   vsop87a_pico_uranus_z_velocity = uranus_z_0
end function

function vsop87a_pico_uranus_y_velocity(t as Double)
   dim uranus_y_1 as Double
   uranus_y_1 = 0.0

   uranus_y_1 = uranus_y_1 + pow(t,0) * 1 *      0.02157896385 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *      0.02157896385 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim uranus_y_0 as Double
   uranus_y_0 = 0.0

   uranus_y_0 = uranus_y_0 -1 *      0.01442356575 *      148.07872442630 * sin( 1.08004542712 +      148.07872442630*t)
   uranus_y_0 = uranus_y_0 -1 *      0.01542668264 *      224.34479570190 * sin( 2.55040539213 +      224.34479570190*t)
   uranus_y_0 = uranus_y_0 -1 *      0.06250078231 *        1.48447270830 * sin( 3.56960243857 +        1.48447270830*t)
   uranus_y_0 = uranus_y_0 -1 *      0.14123958128 *       76.26607127560 * sin( 2.82486076549 +       76.26607127560*t)
   uranus_y_0 = uranus_y_0 -1 *      0.14755940186 *       73.29712585900 * sin( 1.85423280679 +       73.29712585900*t)
   uranus_y_0 = uranus_y_0 -1 *      0.16256125476 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)
   uranus_y_0 = uranus_y_0 -1 *      0.44390465203 *      149.56319713460 * sin( 0.08884111329 +      149.56319713460*t)
   uranus_y_0 = uranus_y_0 -1 *     19.16518231584 *       74.78159856730 * sin( 3.91045677002 +       74.78159856730*t)

   vsop87a_pico_uranus_y_velocity = uranus_y_1+uranus_y_0
end function

function vsop87a_pico_uranus_x_velocity(t as Double)
   dim uranus_x_0 as Double
   uranus_x_0 = 0.0

   uranus_x_0 = uranus_x_0 -1 *      0.01444216660 *      148.07872442630 * sin( 2.65117115201 +      148.07872442630*t)
   uranus_x_0 = uranus_x_0 -1 *      0.01542951343 *      224.34479570190 * sin( 4.12121838072 +      224.34479570190*t)
   uranus_x_0 = uranus_x_0 -1 *      0.06201106178 *        1.48447270830 * sin( 5.14043574125 +        1.48447270830*t)
   uranus_x_0 = uranus_x_0 -1 *      0.14130269479 *       76.26607127560 * sin( 4.39572927934 +       76.26607127560*t)
   uranus_x_0 = uranus_x_0 -1 *      0.14668209481 *       73.29712585900 * sin( 3.42395862804 +       73.29712585900*t)
   uranus_x_0 = uranus_x_0 -1 *      0.44402496796 *      149.56319713460 * sin( 1.65967519586 +      149.56319713460*t)
   uranus_x_0 = uranus_x_0 -1 *      1.32272523872 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)
   uranus_x_0 = uranus_x_0 -1 *     19.17370730359 *       74.78159856730 * sin( 5.48133416489 +       74.78159856730*t)

   vsop87a_pico_uranus_x_velocity = uranus_x_0
end function

function vsop87a_pico_saturn_z_velocity(t as Double)
   dim saturn_z_1 as Double
   saturn_z_1 = 0.0

   saturn_z_1 = saturn_z_1 + pow(t,0) * 1 *      0.01906503283 * cos( 4.94544746116 +      213.29909543800*t) - pow(t,1) *      0.01906503283 *      213.29909543800 * sin( 4.94544746116 +      213.29909543800*t)

   dim saturn_z_0 as Double
   saturn_z_0 = 0.0

   saturn_z_0 = saturn_z_0 -1 *      0.01214249867 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)
   saturn_z_0 = saturn_z_0 -1 *      0.01148283576 *      426.59819087600 * sin( 2.85128367469 +      426.59819087600*t)
   saturn_z_0 = saturn_z_0 -1 *      0.41356950940 *      213.29909543800 * sin( 3.60234142982 +      213.29909543800*t)

   vsop87a_pico_saturn_z_velocity = saturn_z_1+saturn_z_0
end function

function vsop87a_pico_saturn_y_velocity(t as Double)
   dim saturn_y_1 as Double
   saturn_y_1 = 0.0

   saturn_y_1 = saturn_y_1 + pow(t,0) * 1 *      0.02647489677 * cos( 3.76132298889 +      220.41264243880*t) - pow(t,1) *      0.02647489677 *      220.41264243880 * sin( 3.76132298889 +      220.41264243880*t)
   saturn_y_1 = saturn_y_1 + pow(t,0) * 1 *      0.02741594312 * cos( 4.26667636015 +      206.18554843720*t) - pow(t,1) *      0.02741594312 *      206.18554843720 * sin( 4.26667636015 +      206.18554843720*t)
   saturn_y_1 = saturn_y_1 + pow(t,0) * 1 *      0.03090575152 * cos( 2.70346890906 +      426.59819087600*t) - pow(t,1) *      0.03090575152 *      426.59819087600 * sin( 2.70346890906 +      426.59819087600*t)
   saturn_y_1 = saturn_y_1 + pow(t,0) * 1 *      0.05373889135 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *      0.05373889135 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim saturn_y_0 as Double
   saturn_y_0 = 0.0

   saturn_y_0 = saturn_y_0 -1 *      0.01098751131 *      639.89728631400 * sin( 4.08608782813 +      639.89728631400*t)
   saturn_y_0 = saturn_y_0 -1 *      0.01245790434 *      110.20632121940 * sin( 0.60367177975 +      110.20632121940*t)
   saturn_y_0 = saturn_y_0 -1 *      0.01183874652 *      419.48464387520 * sin( 1.34638298371 +      419.48464387520*t)
   saturn_y_0 = saturn_y_0 -1 *      0.02345609742 *        7.11354700080 * sin( 0.44652132519 +        7.11354700080*t)
   saturn_y_0 = saturn_y_0 -1 *      0.06633570703 *      220.41264243880 * sin( 5.46258848288 +      220.41264243880*t)
   saturn_y_0 = saturn_y_0 -1 *      0.06916653915 *      206.18554843720 * sin( 2.55279408706 +      206.18554843720*t)
   saturn_y_0 = saturn_y_0 -1 *      0.26441781302 *      426.59819087600 * sin( 4.83528061849 +      426.59819087600*t)
   saturn_y_0 = saturn_y_0 -1 *      0.79387988806 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)
   saturn_y_0 = saturn_y_0 -1 *      9.52986882699 *      213.29909543800 * sin( 5.58600556665 +      213.29909543800*t)

   vsop87a_pico_saturn_y_velocity = saturn_y_1+saturn_y_0
end function

function vsop87a_pico_saturn_x_velocity(t as Double)
   dim saturn_x_1 as Double
   saturn_x_1 = 0.0

   saturn_x_1 = saturn_x_1 + pow(t,0) * 1 *      0.02643100909 * cos( 5.33291950584 +      220.41264243880*t) - pow(t,1) *      0.02643100909 *      220.41264243880 * sin( 5.33291950584 +      220.41264243880*t)
   saturn_x_1 = saturn_x_1 + pow(t,0) * 1 *      0.02714918399 * cos( 5.85229412397 +      206.18554843720*t) - pow(t,1) *      0.02714918399 *      206.18554843720 * sin( 5.85229412397 +      206.18554843720*t)
   saturn_x_1 = saturn_x_1 + pow(t,0) * 1 *      0.03085041716 * cos( 4.27565749128 +      426.59819087600*t) - pow(t,1) *      0.03085041716 *      426.59819087600 * sin( 4.27565749128 +      426.59819087600*t)
   saturn_x_1 = saturn_x_1 + pow(t,0) * 1 *      0.07575103962 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *      0.07575103962 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim saturn_x_0 as Double
   saturn_x_0 = 0.0

   saturn_x_0 = saturn_x_0 -1 *      0.01097683232 *      639.89728631400 * sin( 5.65753337256 +      639.89728631400*t)
   saturn_x_0 = saturn_x_0 -1 *      0.01115684467 *      419.48464387520 * sin( 3.15686878377 +      419.48464387520*t)
   saturn_x_0 = saturn_x_0 -1 *      0.01255372247 *      110.20632121940 * sin( 2.17338917731 +      110.20632121940*t)
   saturn_x_0 = saturn_x_0 -1 *      0.02336340488 *        7.11354700080 * sin( 2.02227784673 +        7.11354700080*t)
   saturn_x_0 = saturn_x_0 -1 *      0.04244797817 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)
   saturn_x_0 = saturn_x_0 -1 *      0.06624260115 *      220.41264243880 * sin( 0.75094737780 +      220.41264243880*t)
   saturn_x_0 = saturn_x_0 -1 *      0.06760430339 *      206.18554843720 * sin( 4.16767145778 +      206.18554843720*t)
   saturn_x_0 = saturn_x_0 -1 *      0.26412374238 *      426.59819087600 * sin( 0.12390892620 +      426.59819087600*t)
   saturn_x_0 = saturn_x_0 -1 *      9.51638335797 *      213.29909543800 * sin( 0.87441380794 +      213.29909543800*t)

   vsop87a_pico_saturn_x_velocity = saturn_x_1+saturn_x_0
end function

function vsop87a_pico_neptune_z_velocity(t as Double)
   dim neptune_z_0 as Double
   neptune_z_0 = 0.0

   neptune_z_0 = neptune_z_0 -1 *      0.01245978462 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)
   neptune_z_0 = neptune_z_0 -1 *      0.92866054405 *       38.13303563780 * sin( 1.44103930278 +       38.13303563780*t)

   vsop87a_pico_neptune_z_velocity = neptune_z_0
end function

function vsop87a_pico_neptune_y_velocity(t as Double)
   dim neptune_y_0 as Double
   neptune_y_0 = 0.0

   neptune_y_0 = neptune_y_0 -1 *      0.01073739772 *       74.78159856730 * sin( 3.81371728533 +       74.78159856730*t)
   neptune_y_0 = neptune_y_0 -1 *      0.02584250749 *        1.48447270830 * sin( 0.42549700754 +        1.48447270830*t)
   neptune_y_0 = neptune_y_0 -1 *      0.14936165806 *       39.61750834610 * sin( 5.79694900665 +       39.61750834610*t)
   neptune_y_0 = neptune_y_0 -1 *      0.15706589373 *       36.64856292950 * sin( 4.82539970129 +       36.64856292950*t)
   neptune_y_0 = neptune_y_0 -1 *      0.13506391797 *       76.26607127560 * sin( 1.92953034883 +       76.26607127560*t)
   neptune_y_0 = neptune_y_0 -1 *      0.30205857683 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)
   neptune_y_0 = neptune_y_0 -1 *     30.06056351665 *       38.13303563780 * sin( 3.74086294714 +       38.13303563780*t)

   vsop87a_pico_neptune_y_velocity = neptune_y_0
end function

function vsop87a_pico_neptune_x_velocity(t as Double)
   dim neptune_x_0 as Double
   neptune_x_0 = 0.0

   neptune_x_0 = neptune_x_0 -1 *      0.01074040708 *       74.78159856730 * sin( 5.38502938672 +       74.78159856730*t)
   neptune_x_0 = neptune_x_0 -1 *      0.02597313814 *        1.48447270830 * sin( 1.99590301412 +        1.48447270830*t)
   neptune_x_0 = neptune_x_0 -1 *      0.14935120126 *       39.61750834610 * sin( 1.08499403018 +       39.61750834610*t)
   neptune_x_0 = neptune_x_0 -1 *      0.15726094556 *       36.64856292950 * sin( 0.11319072675 +       36.64856292950*t)
   neptune_x_0 = neptune_x_0 -1 *      0.13505661755 *       76.26607127560 * sin( 3.50078975634 +       76.26607127560*t)
   neptune_x_0 = neptune_x_0 -1 *      0.27080164222 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)
   neptune_x_0 = neptune_x_0 -1 *     30.05890004476 *       38.13303563780 * sin( 5.31211340029 +       38.13303563780*t)

   vsop87a_pico_neptune_x_velocity = neptune_x_0
end function

function vsop87a_pico_mercury_z_velocity(t as Double)
   dim mercury_z_0 as Double
   mercury_z_0 = 0.0

   mercury_z_0 = mercury_z_0 -1 *      0.04607665326 *    26087.90314157420 * sin( 1.99295081967 +    26087.90314157420*t)

   vsop87a_pico_mercury_z_velocity = mercury_z_0
end function

function vsop87a_pico_mercury_y_velocity(t as Double)
   dim mercury_y_0 as Double
   mercury_y_0 = 0.0

   mercury_y_0 = mercury_y_0 -1 *      0.03854668215 *    52175.80628314840 * sin( 5.88780608966 +    52175.80628314840*t)
   mercury_y_0 = mercury_y_0 -1 *      0.11626131831 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)
   mercury_y_0 = mercury_y_0 -1 *      0.37953642888 *    26087.90314157420 * sin( 2.83780617820 +    26087.90314157420*t)

   vsop87a_pico_mercury_y_velocity = mercury_y_0
end function

function vsop87a_pico_mercury_x_velocity(t as Double)
   dim mercury_x_0 as Double
   mercury_x_0 = 0.0

   mercury_x_0 = mercury_x_0 -1 *      0.02625615963 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)
   mercury_x_0 = mercury_x_0 -1 *      0.03825746672 *    52175.80628314840 * sin( 1.16485604339 +    52175.80628314840*t)
   mercury_x_0 = mercury_x_0 -1 *      0.37546291728 *    26087.90314157420 * sin( 4.39651506942 +    26087.90314157420*t)

   vsop87a_pico_mercury_x_velocity = mercury_x_0
end function

function vsop87a_pico_mars_z_velocity(t as Double)
   dim mars_z_0 as Double
   mars_z_0 = 0.0

   mars_z_0 = mars_z_0 -1 *      0.04901207220 *     3340.61242669980 * sin( 3.76712324286 +     3340.61242669980*t)

   vsop87a_pico_mars_z_velocity = mars_z_0
end function

function vsop87a_pico_mars_y_velocity(t as Double)
   dim mars_y_1 as Double
   mars_y_1 = 0.0

   mars_y_1 = mars_y_1 + pow(t,0) * 1 *      0.01427324210 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.01427324210 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim mars_y_0 as Double
   mars_y_0 = 0.0

   mars_y_0 = mars_y_0 -1 *      0.08655481102 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)
   mars_y_0 = mars_y_0 -1 *      0.07064550239 *     6681.22485339960 * sin( 4.97051892902 +     6681.22485339960*t)
   mars_y_0 = mars_y_0 -1 *      1.51558976277 *     3340.61242669980 * sin( 4.63212206588 +     3340.61242669980*t)

   vsop87a_pico_mars_y_velocity = mars_y_1+mars_y_0
end function

function vsop87a_pico_mars_x_velocity(t as Double)
   dim mars_x_0 as Double
   mars_x_0 = 0.0

   mars_x_0 = mars_x_0 -1 *      0.07070919655 *     6681.22485339960 * sin( 0.25870338558 +     6681.22485339960*t)
   mars_x_0 = mars_x_0 -1 *      0.19502945246 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)
   mars_x_0 = mars_x_0 -1 *      1.51769936383 *     3340.61242669980 * sin( 6.20403346548 +     3340.61242669980*t)

   vsop87a_pico_mars_x_velocity = mars_x_0
end function

function vsop87a_pico_jupiter_z_velocity(t as Double)
   dim jupiter_z_0 as Double
   jupiter_z_0 = 0.0

   jupiter_z_0 = jupiter_z_0 -1 *      0.11823100489 *      529.69096509460 * sin( 3.55844646343 +      529.69096509460*t)

   vsop87a_pico_jupiter_z_velocity = jupiter_z_0
end function

function vsop87a_pico_jupiter_y_velocity(t as Double)
   dim jupiter_y_1 as Double
   jupiter_y_1 = 0.0

   jupiter_y_1 = jupiter_y_1 + pow(t,0) * 1 *      0.01694798253 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.01694798253 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim jupiter_y_0 as Double
   jupiter_y_0 = 0.0

   jupiter_y_0 = jupiter_y_0 -1 *      0.01475809370 *      536.80451209540 * sin( 2.04679566495 +      536.80451209540*t)
   jupiter_y_0 = jupiter_y_0 -1 *      0.01508275299 *      522.57741809380 * sin( 5.43934968102 +      522.57741809380*t)
   jupiter_y_0 = jupiter_y_0 -1 *      0.09363670616 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)
   jupiter_y_0 = jupiter_y_0 -1 *      0.12592862602 *     1059.38193018920 * sin( 5.66160227728 +     1059.38193018920*t)
   jupiter_y_0 = jupiter_y_0 -1 *      5.19520046589 *      529.69096509460 * sin( 5.31203162731 +      529.69096509460*t)

   vsop87a_pico_jupiter_y_velocity = jupiter_y_1+jupiter_y_0
end function

function vsop87a_pico_jupiter_x_velocity(t as Double)
   dim jupiter_x_0 as Double
   jupiter_x_0 = 0.0

   jupiter_x_0 = jupiter_x_0 -1 *      0.01476224578 *      536.80451209540 * sin( 3.61736921122 +      536.80451209540*t)
   jupiter_x_0 = jupiter_x_0 -1 *      0.01500672056 *      522.57741809380 * sin( 0.73175134610 +      522.57741809380*t)
   jupiter_x_0 = jupiter_x_0 -1 *      0.12593937922 *     1059.38193018920 * sin( 0.94911583701 +     1059.38193018920*t)
   jupiter_x_0 = jupiter_x_0 -1 *      0.36662642320 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)
   jupiter_x_0 = jupiter_x_0 -1 *      5.19663470114 *      529.69096509460 * sin( 0.59945082355 +      529.69096509460*t)

   vsop87a_pico_jupiter_x_velocity = jupiter_x_0
end function

function vsop87a_pico_emb_z_velocity(t as Double)

   vsop87a_pico_emb_z_velocity = 0
end function

function vsop87a_pico_emb_y_velocity(t as Double)
   dim emb_y_0 as Double
   emb_y_0 = 0.0

   emb_y_0 = emb_y_0 -1 *      0.02442698841 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)
   emb_y_0 = emb_y_0 -1 *      0.99989209645 *     6283.07584999140 * sin( 0.18265890456 +     6283.07584999140*t)

   vsop87a_pico_emb_y_velocity = emb_y_0
end function

function vsop87a_pico_emb_x_velocity(t as Double)
   dim emb_x_0 as Double
   emb_x_0 = 0.0

   emb_x_0 = emb_x_0 -1 *      0.99982927460 *     6283.07584999140 * sin( 1.75348568475 +     6283.07584999140*t)

   vsop87a_pico_emb_x_velocity = emb_x_0
end function

function vsop87a_pico_earth_z_velocity(t as Double)

   vsop87a_pico_earth_z_velocity = 0
end function

function vsop87a_pico_earth_y_velocity(t as Double)
   dim earth_y_0 as Double
   earth_y_0 = 0.0

   earth_y_0 = earth_y_0 -1 *      0.02442699036 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)
   earth_y_0 = earth_y_0 -1 *      0.99989211030 *     6283.07584999140 * sin( 0.18265890456 +     6283.07584999140*t)

   vsop87a_pico_earth_y_velocity = earth_y_0
end function

function vsop87a_pico_earth_x_velocity(t as Double)
   dim earth_x_0 as Double
   earth_x_0 = 0.0

   earth_x_0 = earth_x_0 -1 *      0.99982928844 *     6283.07584999140 * sin( 1.75348568475 +     6283.07584999140*t)
   vsop87a_pico_earth_x_velocity = earth_x_0
end function

