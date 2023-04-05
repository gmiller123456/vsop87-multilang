rem VSOP87-Multilang http://www.celestialprogramming.com/
rem Greg Miller (gmiller@gregmiller.net) 2023.  Released as Public Domain

function vsop87_pico_getMercury(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_pico_mercury_a(t)
   temp(2)=vsop87_pico_mercury_l(t)
   temp(3)=vsop87_pico_mercury_k(t)
   temp(4)=vsop87_pico_mercury_h(t)
   temp(5)=vsop87_pico_mercury_q(t)
   temp(6)=vsop87_pico_mercury_p(t)

   vsop87_pico_getMercury = temp
end function

function vsop87_pico_getVenus(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_pico_venus_a(t)
   temp(2)=vsop87_pico_venus_l(t)
   temp(3)=vsop87_pico_venus_k(t)
   temp(4)=vsop87_pico_venus_h(t)
   temp(5)=vsop87_pico_venus_q(t)
   temp(6)=vsop87_pico_venus_p(t)

   vsop87_pico_getVenus = temp
end function

function vsop87_pico_getEmb(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_pico_emb_a(t)
   temp(2)=vsop87_pico_emb_l(t)
   temp(3)=vsop87_pico_emb_k(t)
   temp(4)=vsop87_pico_emb_h(t)
   temp(5)=vsop87_pico_emb_q(t)
   temp(6)=vsop87_pico_emb_p(t)

   vsop87_pico_getEmb = temp
end function

function vsop87_pico_getMars(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_pico_mars_a(t)
   temp(2)=vsop87_pico_mars_l(t)
   temp(3)=vsop87_pico_mars_k(t)
   temp(4)=vsop87_pico_mars_h(t)
   temp(5)=vsop87_pico_mars_q(t)
   temp(6)=vsop87_pico_mars_p(t)

   vsop87_pico_getMars = temp
end function

function vsop87_pico_getJupiter(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_pico_jupiter_a(t)
   temp(2)=vsop87_pico_jupiter_l(t)
   temp(3)=vsop87_pico_jupiter_k(t)
   temp(4)=vsop87_pico_jupiter_h(t)
   temp(5)=vsop87_pico_jupiter_q(t)
   temp(6)=vsop87_pico_jupiter_p(t)

   vsop87_pico_getJupiter = temp
end function

function vsop87_pico_getSaturn(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_pico_saturn_a(t)
   temp(2)=vsop87_pico_saturn_l(t)
   temp(3)=vsop87_pico_saturn_k(t)
   temp(4)=vsop87_pico_saturn_h(t)
   temp(5)=vsop87_pico_saturn_q(t)
   temp(6)=vsop87_pico_saturn_p(t)

   vsop87_pico_getSaturn = temp
end function

function vsop87_pico_getUranus(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_pico_uranus_a(t)
   temp(2)=vsop87_pico_uranus_l(t)
   temp(3)=vsop87_pico_uranus_k(t)
   temp(4)=vsop87_pico_uranus_h(t)
   temp(5)=vsop87_pico_uranus_q(t)
   temp(6)=vsop87_pico_uranus_p(t)

   vsop87_pico_getUranus = temp
end function

function vsop87_pico_getNeptune(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_pico_neptune_a(t)
   temp(2)=vsop87_pico_neptune_l(t)
   temp(3)=vsop87_pico_neptune_k(t)
   temp(4)=vsop87_pico_neptune_h(t)
   temp(5)=vsop87_pico_neptune_q(t)
   temp(6)=vsop87_pico_neptune_p(t)

   vsop87_pico_getNeptune = temp
end function

function vsop87_pico_venus_p(t as Double)
   dim venus_p_0 as Double
   venus_p_0 = 0.0

   venus_p_0 = venus_p_0 +      0.02882285775 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_venus_p = venus_p_0
end function

function vsop87_pico_venus_q(t as Double)

   vsop87_pico_venus_q = 0
end function

function vsop87_pico_venus_h(t as Double)

   vsop87_pico_venus_h = 0
end function

function vsop87_pico_venus_k(t as Double)

   vsop87_pico_venus_k = 0
end function

function vsop87_pico_venus_l(t as Double)
   dim venus_l_1 as Double
   venus_l_1 = 0.0

   venus_l_1 = venus_l_1 +  10213.28554621100 * cos( 0.00000000000 +        0.00000000000*t)
   venus_l_1=venus_l_1*t

   dim venus_l_0 as Double
   venus_l_0 = 0.0

   venus_l_0 = venus_l_0 +      3.17614669689 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_venus_l = venus_l_1+venus_l_0
end function

function vsop87_pico_venus_a(t as Double)
   dim venus_a_0 as Double
   venus_a_0 = 0.0

   venus_a_0 = venus_a_0 +      0.72332981996 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_venus_a = venus_a_0
end function

function vsop87_pico_uranus_p(t as Double)

   vsop87_pico_uranus_p = 0
end function

function vsop87_pico_uranus_q(t as Double)

   vsop87_pico_uranus_q = 0
end function

function vsop87_pico_uranus_h(t as Double)

   vsop87_pico_uranus_h = 0
end function

function vsop87_pico_uranus_k(t as Double)
   dim uranus_k_0 as Double
   uranus_k_0 = 0.0

   uranus_k_0 = uranus_k_0 +      0.04595132376 * cos( 3.14159265359 +        0.00000000000*t)

   vsop87_pico_uranus_k = uranus_k_0
end function

function vsop87_pico_uranus_l(t as Double)
   dim uranus_l_1 as Double
   uranus_l_1 = 0.0

   uranus_l_1 = uranus_l_1 +     74.78159856730 * cos( 0.00000000000 +        0.00000000000*t)
   uranus_l_1=uranus_l_1*t

   dim uranus_l_0 as Double
   uranus_l_0 = 0.0

   uranus_l_0 = uranus_l_0 +      0.01503941337 * cos( 3.62721239702 +        1.48447270830*t)
   uranus_l_0 = uranus_l_0 +      5.48129387159 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_uranus_l = uranus_l_1+uranus_l_0
end function

function vsop87_pico_uranus_a(t as Double)
   dim uranus_a_0 as Double
   uranus_a_0 = 0.0

   uranus_a_0 = uranus_a_0 +      0.02068375131 * cos( 1.67626096637 +      138.51749687070*t)
   uranus_a_0 = uranus_a_0 +      0.08030476240 * cos( 1.40140954803 +      454.90936652730*t)
   uranus_a_0 = uranus_a_0 +     19.21844606178 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_uranus_a = uranus_a_0
end function

function vsop87_pico_saturn_p(t as Double)
   dim saturn_p_0 as Double
   saturn_p_0 = 0.0

   saturn_p_0 = saturn_p_0 +      0.01989147301 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_saturn_p = saturn_p_0
end function

function vsop87_pico_saturn_q(t as Double)

   vsop87_pico_saturn_q = 0
end function

function vsop87_pico_saturn_h(t as Double)
   dim saturn_h_0 as Double
   saturn_h_0 = 0.0

   saturn_h_0 = saturn_h_0 +      0.05542964254 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_saturn_h = saturn_h_0
end function

function vsop87_pico_saturn_k(t as Double)

   vsop87_pico_saturn_k = 0
end function

function vsop87_pico_saturn_l(t as Double)
   dim saturn_l_1 as Double
   saturn_l_1 = 0.0

   saturn_l_1 = saturn_l_1 +    213.29909543800 * cos( 0.00000000000 +        0.00000000000*t)
   saturn_l_1=saturn_l_1*t

   dim saturn_l_0 as Double
   saturn_l_0 = 0.0

   saturn_l_0 = saturn_l_0 +      0.01411655077 * cos( 4.58553469006 +        7.11354700080*t)
   saturn_l_0 = saturn_l_0 +      0.87401675650 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_saturn_l = saturn_l_1+saturn_l_0
end function

function vsop87_pico_saturn_a(t as Double)
   dim saturn_a_0 as Double
   saturn_a_0 = 0.0

   saturn_a_0 = saturn_a_0 +      0.03363448736 * cos( 6.00973673460 +      316.39186965660*t)
   saturn_a_0 = saturn_a_0 +      9.55490959574 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_saturn_a = saturn_a_0
end function

function vsop87_pico_neptune_p(t as Double)
   dim neptune_p_0 as Double
   neptune_p_0 = 0.0

   neptune_p_0 = neptune_p_0 +      0.01151683985 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_neptune_p = neptune_p_0
end function

function vsop87_pico_neptune_q(t as Double)
   dim neptune_q_0 as Double
   neptune_q_0 = 0.0

   neptune_q_0 = neptune_q_0 +      0.01029147819 * cos( 3.14159265359 +        0.00000000000*t)

   vsop87_pico_neptune_q = neptune_q_0
end function

function vsop87_pico_neptune_h(t as Double)

   vsop87_pico_neptune_h = 0
end function

function vsop87_pico_neptune_k(t as Double)

   vsop87_pico_neptune_k = 0
end function

function vsop87_pico_neptune_l(t as Double)
   dim neptune_l_1 as Double
   neptune_l_1 = 0.0

   neptune_l_1 = neptune_l_1 +     38.13303563780 * cos( 0.00000000000 +        0.00000000000*t)
   neptune_l_1=neptune_l_1*t

   dim neptune_l_0 as Double
   neptune_l_0 = 0.0

   neptune_l_0 = neptune_l_0 +      0.01017628072 * cos( 0.48586478491 +        1.48447270830*t)
   neptune_l_0 = neptune_l_0 +      5.31188628676 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_neptune_l = neptune_l_1+neptune_l_0
end function

function vsop87_pico_neptune_a(t as Double)
   dim neptune_a_0 as Double
   neptune_a_0 = 0.0

   neptune_a_0 = neptune_a_0 +      0.03597274341 * cos( 1.84552690821 +      175.16605980020*t)
   neptune_a_0 = neptune_a_0 +      0.14818172119 * cos( 1.57105922541 +      491.55792945680*t)
   neptune_a_0 = neptune_a_0 +     30.11038686942 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_neptune_a = neptune_a_0
end function

function vsop87_pico_mercury_p(t as Double)
   dim mercury_p_0 as Double
   mercury_p_0 = 0.0

   mercury_p_0 = mercury_p_0 +      0.04563550461 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mercury_p = mercury_p_0
end function

function vsop87_pico_mercury_q(t as Double)
   dim mercury_q_0 as Double
   mercury_q_0 = 0.0

   mercury_q_0 = mercury_q_0 +      0.04061563384 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mercury_q = mercury_q_0
end function

function vsop87_pico_mercury_h(t as Double)
   dim mercury_h_0 as Double
   mercury_h_0 = 0.0

   mercury_h_0 = mercury_h_0 +      0.20072331368 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mercury_h = mercury_h_0
end function

function vsop87_pico_mercury_k(t as Double)
   dim mercury_k_0 as Double
   mercury_k_0 = 0.0

   mercury_k_0 = mercury_k_0 +      0.04466059760 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mercury_k = mercury_k_0
end function

function vsop87_pico_mercury_l(t as Double)
   dim mercury_l_1 as Double
   mercury_l_1 = 0.0

   mercury_l_1 = mercury_l_1 +  26087.90314157420 * cos( 0.00000000000 +        0.00000000000*t)
   mercury_l_1=mercury_l_1*t

   dim mercury_l_0 as Double
   mercury_l_0 = 0.0

   mercury_l_0 = mercury_l_0 +      4.40260884240 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mercury_l = mercury_l_1+mercury_l_0
end function

function vsop87_pico_mercury_a(t as Double)
   dim mercury_a_0 as Double
   mercury_a_0 = 0.0

   mercury_a_0 = mercury_a_0 +      0.38709830982 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mercury_a = mercury_a_0
end function

function vsop87_pico_mars_p(t as Double)
   dim mars_p_0 as Double
   mars_p_0 = 0.0

   mars_p_0 = mars_p_0 +      0.01228449307 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mars_p = mars_p_0
end function

function vsop87_pico_mars_q(t as Double)
   dim mars_q_0 as Double
   mars_q_0 = 0.0

   mars_q_0 = mars_q_0 +      0.01047042574 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mars_q = mars_q_0
end function

function vsop87_pico_mars_h(t as Double)
   dim mars_h_0 as Double
   mars_h_0 = 0.0

   mars_h_0 = mars_h_0 +      0.03789973236 * cos( 3.14159265359 +        0.00000000000*t)

   vsop87_pico_mars_h = mars_h_0
end function

function vsop87_pico_mars_k(t as Double)
   dim mars_k_0 as Double
   mars_k_0 = 0.0

   mars_k_0 = mars_k_0 +      0.08536560252 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mars_k = mars_k_0
end function

function vsop87_pico_mars_l(t as Double)
   dim mars_l_1 as Double
   mars_l_1 = 0.0

   mars_l_1 = mars_l_1 +   3340.61242669981 * cos( 0.00000000000 +        0.00000000000*t)
   mars_l_1=mars_l_1*t

   dim mars_l_0 as Double
   mars_l_0 = 0.0

   mars_l_0 = mars_l_0 +      6.20347611291 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mars_l = mars_l_1+mars_l_0
end function

function vsop87_pico_mars_a(t as Double)
   dim mars_a_0 as Double
   mars_a_0 = 0.0

   mars_a_0 = mars_a_0 +      1.52367934191 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_mars_a = mars_a_0
end function

function vsop87_pico_jupiter_p(t as Double)
   dim jupiter_p_0 as Double
   jupiter_p_0 = 0.0

   jupiter_p_0 = jupiter_p_0 +      0.01118377157 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_jupiter_p = jupiter_p_0
end function

function vsop87_pico_jupiter_q(t as Double)

   vsop87_pico_jupiter_q = 0
end function

function vsop87_pico_jupiter_h(t as Double)
   dim jupiter_h_0 as Double
   jupiter_h_0 = 0.0

   jupiter_h_0 = jupiter_h_0 +      0.01200385748 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_jupiter_h = jupiter_h_0
end function

function vsop87_pico_jupiter_k(t as Double)
   dim jupiter_k_0 as Double
   jupiter_k_0 = 0.0

   jupiter_k_0 = jupiter_k_0 +      0.04698572124 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_jupiter_k = jupiter_k_0
end function

function vsop87_pico_jupiter_l(t as Double)
   dim jupiter_l_1 as Double
   jupiter_l_1 = 0.0

   jupiter_l_1 = jupiter_l_1 +    529.69096509460 * cos( 0.00000000000 +        0.00000000000*t)
   jupiter_l_1=jupiter_l_1*t

   dim jupiter_l_0 as Double
   jupiter_l_0 = 0.0

   jupiter_l_0 = jupiter_l_0 +      0.59954649739 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_jupiter_l = jupiter_l_1+jupiter_l_0
end function

function vsop87_pico_jupiter_a(t as Double)
   dim jupiter_a_0 as Double
   jupiter_a_0 = 0.0

   jupiter_a_0 = jupiter_a_0 +      5.20260319132 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_jupiter_a = jupiter_a_0
end function

function vsop87_pico_emb_p(t as Double)

   vsop87_pico_emb_p = 0
end function

function vsop87_pico_emb_q(t as Double)

   vsop87_pico_emb_q = 0
end function

function vsop87_pico_emb_h(t as Double)
   dim emb_h_0 as Double
   emb_h_0 = 0.0

   emb_h_0 = emb_h_0 +      0.01628447663 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_emb_h = emb_h_0
end function

function vsop87_pico_emb_k(t as Double)

   vsop87_pico_emb_k = 0
end function

function vsop87_pico_emb_l(t as Double)
   dim emb_l_1 as Double
   emb_l_1 = 0.0

   emb_l_1 = emb_l_1 +   6283.07584999140 * cos( 0.00000000000 +        0.00000000000*t)
   emb_l_1=emb_l_1*t

   dim emb_l_0 as Double
   emb_l_0 = 0.0

   emb_l_0 = emb_l_0 +      1.75347045953 * cos( 0.00000000000 +        0.00000000000*t)

   vsop87_pico_emb_l = emb_l_1+emb_l_0
end function

function vsop87_pico_emb_a(t as Double)
   dim emb_a_0 as Double
   emb_a_0 = 0.0

   emb_a_0 = emb_a_0 +      1.00000101778 * cos( 0.00000000000 +        0.00000000000*t)
   vsop87_pico_emb_a = emb_a_0
end function

