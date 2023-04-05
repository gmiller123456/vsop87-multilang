rem VSOP87-Multilang http://www.celestialprogramming.com/
rem Greg Miller (gmiller@gregmiller.net) 2023.  Released as Public Domain

function vsop87_pico_getMercury(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_pico_mercury_a_velocity(t) / 365250.0
   temp(2)=vsop87_pico_mercury_l_velocity(t) / 365250.0
   temp(3)=vsop87_pico_mercury_k_velocity(t) / 365250.0
   temp(4)=vsop87_pico_mercury_h_velocity(t) / 365250.0
   temp(5)=vsop87_pico_mercury_q_velocity(t) / 365250.0
   temp(6)=vsop87_pico_mercury_p_velocity(t) / 365250.0

   vsop87_pico_getMercury = temp
end function

function vsop87_pico_getVenus(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_pico_venus_a_velocity(t) / 365250.0
   temp(2)=vsop87_pico_venus_l_velocity(t) / 365250.0
   temp(3)=vsop87_pico_venus_k_velocity(t) / 365250.0
   temp(4)=vsop87_pico_venus_h_velocity(t) / 365250.0
   temp(5)=vsop87_pico_venus_q_velocity(t) / 365250.0
   temp(6)=vsop87_pico_venus_p_velocity(t) / 365250.0

   vsop87_pico_getVenus = temp
end function

function vsop87_pico_getEmb(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_pico_emb_a_velocity(t) / 365250.0
   temp(2)=vsop87_pico_emb_l_velocity(t) / 365250.0
   temp(3)=vsop87_pico_emb_k_velocity(t) / 365250.0
   temp(4)=vsop87_pico_emb_h_velocity(t) / 365250.0
   temp(5)=vsop87_pico_emb_q_velocity(t) / 365250.0
   temp(6)=vsop87_pico_emb_p_velocity(t) / 365250.0

   vsop87_pico_getEmb = temp
end function

function vsop87_pico_getMars(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_pico_mars_a_velocity(t) / 365250.0
   temp(2)=vsop87_pico_mars_l_velocity(t) / 365250.0
   temp(3)=vsop87_pico_mars_k_velocity(t) / 365250.0
   temp(4)=vsop87_pico_mars_h_velocity(t) / 365250.0
   temp(5)=vsop87_pico_mars_q_velocity(t) / 365250.0
   temp(6)=vsop87_pico_mars_p_velocity(t) / 365250.0

   vsop87_pico_getMars = temp
end function

function vsop87_pico_getJupiter(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_pico_jupiter_a_velocity(t) / 365250.0
   temp(2)=vsop87_pico_jupiter_l_velocity(t) / 365250.0
   temp(3)=vsop87_pico_jupiter_k_velocity(t) / 365250.0
   temp(4)=vsop87_pico_jupiter_h_velocity(t) / 365250.0
   temp(5)=vsop87_pico_jupiter_q_velocity(t) / 365250.0
   temp(6)=vsop87_pico_jupiter_p_velocity(t) / 365250.0

   vsop87_pico_getJupiter = temp
end function

function vsop87_pico_getSaturn(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_pico_saturn_a_velocity(t) / 365250.0
   temp(2)=vsop87_pico_saturn_l_velocity(t) / 365250.0
   temp(3)=vsop87_pico_saturn_k_velocity(t) / 365250.0
   temp(4)=vsop87_pico_saturn_h_velocity(t) / 365250.0
   temp(5)=vsop87_pico_saturn_q_velocity(t) / 365250.0
   temp(6)=vsop87_pico_saturn_p_velocity(t) / 365250.0

   vsop87_pico_getSaturn = temp
end function

function vsop87_pico_getUranus(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_pico_uranus_a_velocity(t) / 365250.0
   temp(2)=vsop87_pico_uranus_l_velocity(t) / 365250.0
   temp(3)=vsop87_pico_uranus_k_velocity(t) / 365250.0
   temp(4)=vsop87_pico_uranus_h_velocity(t) / 365250.0
   temp(5)=vsop87_pico_uranus_q_velocity(t) / 365250.0
   temp(6)=vsop87_pico_uranus_p_velocity(t) / 365250.0

   vsop87_pico_getUranus = temp
end function

function vsop87_pico_getNeptune(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_pico_neptune_a_velocity(t) / 365250.0
   temp(2)=vsop87_pico_neptune_l_velocity(t) / 365250.0
   temp(3)=vsop87_pico_neptune_k_velocity(t) / 365250.0
   temp(4)=vsop87_pico_neptune_h_velocity(t) / 365250.0
   temp(5)=vsop87_pico_neptune_q_velocity(t) / 365250.0
   temp(6)=vsop87_pico_neptune_p_velocity(t) / 365250.0

   vsop87_pico_getNeptune = temp
end function

function vsop87_pico_venus_p_velocity(t as Double)
   dim venus_p_0 as Double
   venus_p_0 = 0.0

   venus_p_0 = venus_p_0 -1 *      0.02882285775 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_venus_p_velocity = venus_p_0
end function

function vsop87_pico_venus_q_velocity(t as Double)

   vsop87_pico_venus_q_velocity = 0
end function

function vsop87_pico_venus_h_velocity(t as Double)

   vsop87_pico_venus_h_velocity = 0
end function

function vsop87_pico_venus_k_velocity(t as Double)

   vsop87_pico_venus_k_velocity = 0
end function

function vsop87_pico_venus_l_velocity(t as Double)
   dim venus_l_1 as Double
   venus_l_1 = 0.0

   venus_l_1 = venus_l_1 + pow(t,0) * 1 *  10213.28554621100 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *  10213.28554621100 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim venus_l_0 as Double
   venus_l_0 = 0.0

   venus_l_0 = venus_l_0 -1 *      3.17614669689 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_venus_l_velocity = venus_l_1+venus_l_0
end function

function vsop87_pico_venus_a_velocity(t as Double)
   dim venus_a_0 as Double
   venus_a_0 = 0.0

   venus_a_0 = venus_a_0 -1 *      0.72332981996 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_venus_a_velocity = venus_a_0
end function

function vsop87_pico_uranus_p_velocity(t as Double)

   vsop87_pico_uranus_p_velocity = 0
end function

function vsop87_pico_uranus_q_velocity(t as Double)

   vsop87_pico_uranus_q_velocity = 0
end function

function vsop87_pico_uranus_h_velocity(t as Double)

   vsop87_pico_uranus_h_velocity = 0
end function

function vsop87_pico_uranus_k_velocity(t as Double)
   dim uranus_k_0 as Double
   uranus_k_0 = 0.0

   uranus_k_0 = uranus_k_0 -1 *      0.04595132376 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   vsop87_pico_uranus_k_velocity = uranus_k_0
end function

function vsop87_pico_uranus_l_velocity(t as Double)
   dim uranus_l_1 as Double
   uranus_l_1 = 0.0

   uranus_l_1 = uranus_l_1 + pow(t,0) * 1 *     74.78159856730 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *     74.78159856730 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim uranus_l_0 as Double
   uranus_l_0 = 0.0

   uranus_l_0 = uranus_l_0 -1 *      0.01503941337 *        1.48447270830 * sin( 3.62721239702 +        1.48447270830*t)
   uranus_l_0 = uranus_l_0 -1 *      5.48129387159 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_uranus_l_velocity = uranus_l_1+uranus_l_0
end function

function vsop87_pico_uranus_a_velocity(t as Double)
   dim uranus_a_0 as Double
   uranus_a_0 = 0.0

   uranus_a_0 = uranus_a_0 -1 *      0.02068375131 *      138.51749687070 * sin( 1.67626096637 +      138.51749687070*t)
   uranus_a_0 = uranus_a_0 -1 *      0.08030476240 *      454.90936652730 * sin( 1.40140954803 +      454.90936652730*t)
   uranus_a_0 = uranus_a_0 -1 *     19.21844606178 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_uranus_a_velocity = uranus_a_0
end function

function vsop87_pico_saturn_p_velocity(t as Double)
   dim saturn_p_0 as Double
   saturn_p_0 = 0.0

   saturn_p_0 = saturn_p_0 -1 *      0.01989147301 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_saturn_p_velocity = saturn_p_0
end function

function vsop87_pico_saturn_q_velocity(t as Double)

   vsop87_pico_saturn_q_velocity = 0
end function

function vsop87_pico_saturn_h_velocity(t as Double)
   dim saturn_h_0 as Double
   saturn_h_0 = 0.0

   saturn_h_0 = saturn_h_0 -1 *      0.05542964254 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_saturn_h_velocity = saturn_h_0
end function

function vsop87_pico_saturn_k_velocity(t as Double)

   vsop87_pico_saturn_k_velocity = 0
end function

function vsop87_pico_saturn_l_velocity(t as Double)
   dim saturn_l_1 as Double
   saturn_l_1 = 0.0

   saturn_l_1 = saturn_l_1 + pow(t,0) * 1 *    213.29909543800 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *    213.29909543800 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim saturn_l_0 as Double
   saturn_l_0 = 0.0

   saturn_l_0 = saturn_l_0 -1 *      0.01411655077 *        7.11354700080 * sin( 4.58553469006 +        7.11354700080*t)
   saturn_l_0 = saturn_l_0 -1 *      0.87401675650 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_saturn_l_velocity = saturn_l_1+saturn_l_0
end function

function vsop87_pico_saturn_a_velocity(t as Double)
   dim saturn_a_0 as Double
   saturn_a_0 = 0.0

   saturn_a_0 = saturn_a_0 -1 *      0.03363448736 *      316.39186965660 * sin( 6.00973673460 +      316.39186965660*t)
   saturn_a_0 = saturn_a_0 -1 *      9.55490959574 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_saturn_a_velocity = saturn_a_0
end function

function vsop87_pico_neptune_p_velocity(t as Double)
   dim neptune_p_0 as Double
   neptune_p_0 = 0.0

   neptune_p_0 = neptune_p_0 -1 *      0.01151683985 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_neptune_p_velocity = neptune_p_0
end function

function vsop87_pico_neptune_q_velocity(t as Double)
   dim neptune_q_0 as Double
   neptune_q_0 = 0.0

   neptune_q_0 = neptune_q_0 -1 *      0.01029147819 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   vsop87_pico_neptune_q_velocity = neptune_q_0
end function

function vsop87_pico_neptune_h_velocity(t as Double)

   vsop87_pico_neptune_h_velocity = 0
end function

function vsop87_pico_neptune_k_velocity(t as Double)

   vsop87_pico_neptune_k_velocity = 0
end function

function vsop87_pico_neptune_l_velocity(t as Double)
   dim neptune_l_1 as Double
   neptune_l_1 = 0.0

   neptune_l_1 = neptune_l_1 + pow(t,0) * 1 *     38.13303563780 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *     38.13303563780 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim neptune_l_0 as Double
   neptune_l_0 = 0.0

   neptune_l_0 = neptune_l_0 -1 *      0.01017628072 *        1.48447270830 * sin( 0.48586478491 +        1.48447270830*t)
   neptune_l_0 = neptune_l_0 -1 *      5.31188628676 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_neptune_l_velocity = neptune_l_1+neptune_l_0
end function

function vsop87_pico_neptune_a_velocity(t as Double)
   dim neptune_a_0 as Double
   neptune_a_0 = 0.0

   neptune_a_0 = neptune_a_0 -1 *      0.03597274341 *      175.16605980020 * sin( 1.84552690821 +      175.16605980020*t)
   neptune_a_0 = neptune_a_0 -1 *      0.14818172119 *      491.55792945680 * sin( 1.57105922541 +      491.55792945680*t)
   neptune_a_0 = neptune_a_0 -1 *     30.11038686942 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_neptune_a_velocity = neptune_a_0
end function

function vsop87_pico_mercury_p_velocity(t as Double)
   dim mercury_p_0 as Double
   mercury_p_0 = 0.0

   mercury_p_0 = mercury_p_0 -1 *      0.04563550461 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mercury_p_velocity = mercury_p_0
end function

function vsop87_pico_mercury_q_velocity(t as Double)
   dim mercury_q_0 as Double
   mercury_q_0 = 0.0

   mercury_q_0 = mercury_q_0 -1 *      0.04061563384 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mercury_q_velocity = mercury_q_0
end function

function vsop87_pico_mercury_h_velocity(t as Double)
   dim mercury_h_0 as Double
   mercury_h_0 = 0.0

   mercury_h_0 = mercury_h_0 -1 *      0.20072331368 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mercury_h_velocity = mercury_h_0
end function

function vsop87_pico_mercury_k_velocity(t as Double)
   dim mercury_k_0 as Double
   mercury_k_0 = 0.0

   mercury_k_0 = mercury_k_0 -1 *      0.04466059760 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mercury_k_velocity = mercury_k_0
end function

function vsop87_pico_mercury_l_velocity(t as Double)
   dim mercury_l_1 as Double
   mercury_l_1 = 0.0

   mercury_l_1 = mercury_l_1 + pow(t,0) * 1 *  26087.90314157420 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *  26087.90314157420 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim mercury_l_0 as Double
   mercury_l_0 = 0.0

   mercury_l_0 = mercury_l_0 -1 *      4.40260884240 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mercury_l_velocity = mercury_l_1+mercury_l_0
end function

function vsop87_pico_mercury_a_velocity(t as Double)
   dim mercury_a_0 as Double
   mercury_a_0 = 0.0

   mercury_a_0 = mercury_a_0 -1 *      0.38709830982 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mercury_a_velocity = mercury_a_0
end function

function vsop87_pico_mars_p_velocity(t as Double)
   dim mars_p_0 as Double
   mars_p_0 = 0.0

   mars_p_0 = mars_p_0 -1 *      0.01228449307 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mars_p_velocity = mars_p_0
end function

function vsop87_pico_mars_q_velocity(t as Double)
   dim mars_q_0 as Double
   mars_q_0 = 0.0

   mars_q_0 = mars_q_0 -1 *      0.01047042574 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mars_q_velocity = mars_q_0
end function

function vsop87_pico_mars_h_velocity(t as Double)
   dim mars_h_0 as Double
   mars_h_0 = 0.0

   mars_h_0 = mars_h_0 -1 *      0.03789973236 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   vsop87_pico_mars_h_velocity = mars_h_0
end function

function vsop87_pico_mars_k_velocity(t as Double)
   dim mars_k_0 as Double
   mars_k_0 = 0.0

   mars_k_0 = mars_k_0 -1 *      0.08536560252 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mars_k_velocity = mars_k_0
end function

function vsop87_pico_mars_l_velocity(t as Double)
   dim mars_l_1 as Double
   mars_l_1 = 0.0

   mars_l_1 = mars_l_1 + pow(t,0) * 1 *   3340.61242669981 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *   3340.61242669981 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim mars_l_0 as Double
   mars_l_0 = 0.0

   mars_l_0 = mars_l_0 -1 *      6.20347611291 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mars_l_velocity = mars_l_1+mars_l_0
end function

function vsop87_pico_mars_a_velocity(t as Double)
   dim mars_a_0 as Double
   mars_a_0 = 0.0

   mars_a_0 = mars_a_0 -1 *      1.52367934191 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mars_a_velocity = mars_a_0
end function

function vsop87_pico_jupiter_p_velocity(t as Double)
   dim jupiter_p_0 as Double
   jupiter_p_0 = 0.0

   jupiter_p_0 = jupiter_p_0 -1 *      0.01118377157 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_jupiter_p_velocity = jupiter_p_0
end function

function vsop87_pico_jupiter_q_velocity(t as Double)

   vsop87_pico_jupiter_q_velocity = 0
end function

function vsop87_pico_jupiter_h_velocity(t as Double)
   dim jupiter_h_0 as Double
   jupiter_h_0 = 0.0

   jupiter_h_0 = jupiter_h_0 -1 *      0.01200385748 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_jupiter_h_velocity = jupiter_h_0
end function

function vsop87_pico_jupiter_k_velocity(t as Double)
   dim jupiter_k_0 as Double
   jupiter_k_0 = 0.0

   jupiter_k_0 = jupiter_k_0 -1 *      0.04698572124 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_jupiter_k_velocity = jupiter_k_0
end function

function vsop87_pico_jupiter_l_velocity(t as Double)
   dim jupiter_l_1 as Double
   jupiter_l_1 = 0.0

   jupiter_l_1 = jupiter_l_1 + pow(t,0) * 1 *    529.69096509460 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *    529.69096509460 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim jupiter_l_0 as Double
   jupiter_l_0 = 0.0

   jupiter_l_0 = jupiter_l_0 -1 *      0.59954649739 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_jupiter_l_velocity = jupiter_l_1+jupiter_l_0
end function

function vsop87_pico_jupiter_a_velocity(t as Double)
   dim jupiter_a_0 as Double
   jupiter_a_0 = 0.0

   jupiter_a_0 = jupiter_a_0 -1 *      5.20260319132 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_jupiter_a_velocity = jupiter_a_0
end function

function vsop87_pico_emb_p_velocity(t as Double)

   vsop87_pico_emb_p_velocity = 0
end function

function vsop87_pico_emb_q_velocity(t as Double)

   vsop87_pico_emb_q_velocity = 0
end function

function vsop87_pico_emb_h_velocity(t as Double)
   dim emb_h_0 as Double
   emb_h_0 = 0.0

   emb_h_0 = emb_h_0 -1 *      0.01628447663 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_emb_h_velocity = emb_h_0
end function

function vsop87_pico_emb_k_velocity(t as Double)

   vsop87_pico_emb_k_velocity = 0
end function

function vsop87_pico_emb_l_velocity(t as Double)
   dim emb_l_1 as Double
   emb_l_1 = 0.0

   emb_l_1 = emb_l_1 + pow(t,0) * 1 *   6283.07584999140 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *   6283.07584999140 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim emb_l_0 as Double
   emb_l_0 = 0.0

   emb_l_0 = emb_l_0 -1 *      1.75347045953 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_emb_l_velocity = emb_l_1+emb_l_0
end function

function vsop87_pico_emb_a_velocity(t as Double)
   dim emb_a_0 as Double
   emb_a_0 = 0.0

   emb_a_0 = emb_a_0 -1 *      1.00000101778 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)
   vsop87_pico_emb_a_velocity = emb_a_0
end function

