--VSOP87-Multilang http://www.celestialprogramming.com/
--Greg Miller (gmiller@gregmiller.net) 2022.  Released as Public Domain

local vsop87_pico_velocities = {}

function vsop87_pico_velocities.getMercury(t)
   local temp={0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
   temp[1]=vsop87_pico_velocities.mercury_a(t) / 365250.0
   temp[2]=vsop87_pico_velocities.mercury_l(t) / 365250.0
   temp[3]=vsop87_pico_velocities.mercury_k(t) / 365250.0
   temp[4]=vsop87_pico_velocities.mercury_h(t) / 365250.0
   temp[5]=vsop87_pico_velocities.mercury_q(t) / 365250.0
   temp[6]=vsop87_pico_velocities.mercury_p(t) / 365250.0

   return temp;
end

function vsop87_pico_velocities.getVenus(t)
   local temp={0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
   temp[1]=vsop87_pico_velocities.venus_a(t) / 365250.0
   temp[2]=vsop87_pico_velocities.venus_l(t) / 365250.0
   temp[3]=vsop87_pico_velocities.venus_k(t) / 365250.0
   temp[4]=vsop87_pico_velocities.venus_h(t) / 365250.0
   temp[5]=vsop87_pico_velocities.venus_q(t) / 365250.0
   temp[6]=vsop87_pico_velocities.venus_p(t) / 365250.0

   return temp;
end

function vsop87_pico_velocities.getEmb(t)
   local temp={0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
   temp[1]=vsop87_pico_velocities.emb_a(t) / 365250.0
   temp[2]=vsop87_pico_velocities.emb_l(t) / 365250.0
   temp[3]=vsop87_pico_velocities.emb_k(t) / 365250.0
   temp[4]=vsop87_pico_velocities.emb_h(t) / 365250.0
   temp[5]=vsop87_pico_velocities.emb_q(t) / 365250.0
   temp[6]=vsop87_pico_velocities.emb_p(t) / 365250.0

   return temp;
end

function vsop87_pico_velocities.getMars(t)
   local temp={0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
   temp[1]=vsop87_pico_velocities.mars_a(t) / 365250.0
   temp[2]=vsop87_pico_velocities.mars_l(t) / 365250.0
   temp[3]=vsop87_pico_velocities.mars_k(t) / 365250.0
   temp[4]=vsop87_pico_velocities.mars_h(t) / 365250.0
   temp[5]=vsop87_pico_velocities.mars_q(t) / 365250.0
   temp[6]=vsop87_pico_velocities.mars_p(t) / 365250.0

   return temp;
end

function vsop87_pico_velocities.getJupiter(t)
   local temp={0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
   temp[1]=vsop87_pico_velocities.jupiter_a(t) / 365250.0
   temp[2]=vsop87_pico_velocities.jupiter_l(t) / 365250.0
   temp[3]=vsop87_pico_velocities.jupiter_k(t) / 365250.0
   temp[4]=vsop87_pico_velocities.jupiter_h(t) / 365250.0
   temp[5]=vsop87_pico_velocities.jupiter_q(t) / 365250.0
   temp[6]=vsop87_pico_velocities.jupiter_p(t) / 365250.0

   return temp;
end

function vsop87_pico_velocities.getSaturn(t)
   local temp={0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
   temp[1]=vsop87_pico_velocities.saturn_a(t) / 365250.0
   temp[2]=vsop87_pico_velocities.saturn_l(t) / 365250.0
   temp[3]=vsop87_pico_velocities.saturn_k(t) / 365250.0
   temp[4]=vsop87_pico_velocities.saturn_h(t) / 365250.0
   temp[5]=vsop87_pico_velocities.saturn_q(t) / 365250.0
   temp[6]=vsop87_pico_velocities.saturn_p(t) / 365250.0

   return temp;
end

function vsop87_pico_velocities.getUranus(t)
   local temp={0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
   temp[1]=vsop87_pico_velocities.uranus_a(t) / 365250.0
   temp[2]=vsop87_pico_velocities.uranus_l(t) / 365250.0
   temp[3]=vsop87_pico_velocities.uranus_k(t) / 365250.0
   temp[4]=vsop87_pico_velocities.uranus_h(t) / 365250.0
   temp[5]=vsop87_pico_velocities.uranus_q(t) / 365250.0
   temp[6]=vsop87_pico_velocities.uranus_p(t) / 365250.0

   return temp;
end

function vsop87_pico_velocities.getNeptune(t)
   local temp={0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
   temp[1]=vsop87_pico_velocities.neptune_a(t) / 365250.0
   temp[2]=vsop87_pico_velocities.neptune_l(t) / 365250.0
   temp[3]=vsop87_pico_velocities.neptune_k(t) / 365250.0
   temp[4]=vsop87_pico_velocities.neptune_h(t) / 365250.0
   temp[5]=vsop87_pico_velocities.neptune_q(t) / 365250.0
   temp[6]=vsop87_pico_velocities.neptune_p(t) / 365250.0

   return temp;
end

function vsop87_pico_velocities.emb_a(t)
   local emb_a_0 = 0.0

   emb_a_0 = emb_a_0 + -1 * 1.00000101778 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)


   return emb_a_0
end

function vsop87_pico_velocities.emb_h(t)
   local emb_h_0 = 0.0

   emb_h_0 = emb_h_0 + -1 * 0.01628447663 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return emb_h_0
end

function vsop87_pico_velocities.emb_k(t)
   return 0
end

function vsop87_pico_velocities.emb_l(t)
   local emb_l_0 = 0.0

   emb_l_0 = emb_l_0 + -1 * 1.75347045953 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)
   local emb_l_1 = 0.0

   emb_l_1 = emb_l_1 + math.pow(t,0) * 1 * 6283.07584999140 * math.cos(0.00000000000 + 0.00000000000*t) - math.pow(t,1) * 6283.07584999140 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return emb_l_0+emb_l_1
end

function vsop87_pico_velocities.emb_p(t)
   return 0
end

function vsop87_pico_velocities.emb_q(t)
   return 0
end

function vsop87_pico_velocities.jupiter_a(t)
   local jupiter_a_0 = 0.0

   jupiter_a_0 = jupiter_a_0 + -1 * 5.20260319132 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return jupiter_a_0
end

function vsop87_pico_velocities.jupiter_h(t)
   local jupiter_h_0 = 0.0

   jupiter_h_0 = jupiter_h_0 + -1 * 0.01200385748 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)




   return jupiter_h_0
end

function vsop87_pico_velocities.jupiter_k(t)
   local jupiter_k_0 = 0.0

   jupiter_k_0 = jupiter_k_0 + -1 * 0.04698572124 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)




   return jupiter_k_0
end

function vsop87_pico_velocities.jupiter_l(t)
   local jupiter_l_0 = 0.0

   jupiter_l_0 = jupiter_l_0 + -1 * 0.59954649739 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)
   local jupiter_l_1 = 0.0

   jupiter_l_1 = jupiter_l_1 + math.pow(t,0) * 1 * 529.69096509460 * math.cos(0.00000000000 + 0.00000000000*t) - math.pow(t,1) * 529.69096509460 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return jupiter_l_0+jupiter_l_1
end

function vsop87_pico_velocities.jupiter_p(t)
   local jupiter_p_0 = 0.0

   jupiter_p_0 = jupiter_p_0 + -1 * 0.01118377157 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)



   return jupiter_p_0
end

function vsop87_pico_velocities.jupiter_q(t)
   return 0
end

function vsop87_pico_velocities.mars_a(t)
   local mars_a_0 = 0.0

   mars_a_0 = mars_a_0 + -1 * 1.52367934191 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)


   return mars_a_0
end

function vsop87_pico_velocities.mars_h(t)
   local mars_h_0 = 0.0

   mars_h_0 = mars_h_0 + -1 * 0.03789973236 * 0.00000000000 * math.sin(3.14159265359 + 0.00000000000*t)





   return mars_h_0
end

function vsop87_pico_velocities.mars_k(t)
   local mars_k_0 = 0.0

   mars_k_0 = mars_k_0 + -1 * 0.08536560252 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return mars_k_0
end

function vsop87_pico_velocities.mars_l(t)
   local mars_l_0 = 0.0

   mars_l_0 = mars_l_0 + -1 * 6.20347611291 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)
   local mars_l_1 = 0.0

   mars_l_1 = mars_l_1 + math.pow(t,0) * 1 * 3340.61242669981 * math.cos(0.00000000000 + 0.00000000000*t) - math.pow(t,1) * 3340.61242669981 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return mars_l_0+mars_l_1
end

function vsop87_pico_velocities.mars_p(t)
   local mars_p_0 = 0.0

   mars_p_0 = mars_p_0 + -1 * 0.01228449307 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)




   return mars_p_0
end

function vsop87_pico_velocities.mars_q(t)
   local mars_q_0 = 0.0

   mars_q_0 = mars_q_0 + -1 * 0.01047042574 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return mars_q_0
end

function vsop87_pico_velocities.mercury_a(t)
   local mercury_a_0 = 0.0

   mercury_a_0 = mercury_a_0 + -1 * 0.38709830982 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)


   return mercury_a_0
end

function vsop87_pico_velocities.mercury_h(t)
   local mercury_h_0 = 0.0

   mercury_h_0 = mercury_h_0 + -1 * 0.20072331368 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return mercury_h_0
end

function vsop87_pico_velocities.mercury_k(t)
   local mercury_k_0 = 0.0

   mercury_k_0 = mercury_k_0 + -1 * 0.04466059760 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return mercury_k_0
end

function vsop87_pico_velocities.mercury_l(t)
   local mercury_l_0 = 0.0

   mercury_l_0 = mercury_l_0 + -1 * 4.40260884240 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)
   local mercury_l_1 = 0.0

   mercury_l_1 = mercury_l_1 + math.pow(t,0) * 1 * 26087.90314157420 * math.cos(0.00000000000 + 0.00000000000*t) - math.pow(t,1) * 26087.90314157420 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)



   return mercury_l_0+mercury_l_1
end

function vsop87_pico_velocities.mercury_p(t)
   local mercury_p_0 = 0.0

   mercury_p_0 = mercury_p_0 + -1 * 0.04563550461 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return mercury_p_0
end

function vsop87_pico_velocities.mercury_q(t)
   local mercury_q_0 = 0.0

   mercury_q_0 = mercury_q_0 + -1 * 0.04061563384 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return mercury_q_0
end

function vsop87_pico_velocities.neptune_a(t)
   local neptune_a_0 = 0.0

   neptune_a_0 = neptune_a_0 + -1 * 0.03597274341 * 175.16605980020 * math.sin(1.84552690821 + 175.16605980020*t)
   neptune_a_0 = neptune_a_0 + -1 * 0.14818172119 * 491.55792945680 * math.sin(1.57105922541 + 491.55792945680*t)
   neptune_a_0 = neptune_a_0 + -1 * 30.11038686942 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return neptune_a_0
end

function vsop87_pico_velocities.neptune_h(t)
   return 0
end

function vsop87_pico_velocities.neptune_k(t)
   return 0
end

function vsop87_pico_velocities.neptune_l(t)
   local neptune_l_0 = 0.0

   neptune_l_0 = neptune_l_0 + -1 * 0.01017628072 * 1.48447270830 * math.sin(0.48586478491 + 1.48447270830*t)
   neptune_l_0 = neptune_l_0 + -1 * 5.31188628676 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)
   local neptune_l_1 = 0.0

   neptune_l_1 = neptune_l_1 + math.pow(t,0) * 1 * 38.13303563780 * math.cos(0.00000000000 + 0.00000000000*t) - math.pow(t,1) * 38.13303563780 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return neptune_l_0+neptune_l_1
end

function vsop87_pico_velocities.neptune_p(t)
   local neptune_p_0 = 0.0

   neptune_p_0 = neptune_p_0 + -1 * 0.01151683985 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)



   return neptune_p_0
end

function vsop87_pico_velocities.neptune_q(t)
   local neptune_q_0 = 0.0

   neptune_q_0 = neptune_q_0 + -1 * 0.01029147819 * 0.00000000000 * math.sin(3.14159265359 + 0.00000000000*t)



   return neptune_q_0
end

function vsop87_pico_velocities.saturn_a(t)
   local saturn_a_0 = 0.0

   saturn_a_0 = saturn_a_0 + -1 * 0.03363448736 * 316.39186965660 * math.sin(6.00973673460 + 316.39186965660*t)
   saturn_a_0 = saturn_a_0 + -1 * 9.55490959574 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return saturn_a_0
end

function vsop87_pico_velocities.saturn_h(t)
   local saturn_h_0 = 0.0

   saturn_h_0 = saturn_h_0 + -1 * 0.05542964254 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return saturn_h_0
end

function vsop87_pico_velocities.saturn_k(t)
   return 0
end

function vsop87_pico_velocities.saturn_l(t)
   local saturn_l_0 = 0.0

   saturn_l_0 = saturn_l_0 + -1 * 0.01411655077 * 7.11354700080 * math.sin(4.58553469006 + 7.11354700080*t)
   saturn_l_0 = saturn_l_0 + -1 * 0.87401675650 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)
   local saturn_l_1 = 0.0

   saturn_l_1 = saturn_l_1 + math.pow(t,0) * 1 * 213.29909543800 * math.cos(0.00000000000 + 0.00000000000*t) - math.pow(t,1) * 213.29909543800 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return saturn_l_0+saturn_l_1
end

function vsop87_pico_velocities.saturn_p(t)
   local saturn_p_0 = 0.0

   saturn_p_0 = saturn_p_0 + -1 * 0.01989147301 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)




   return saturn_p_0
end

function vsop87_pico_velocities.saturn_q(t)
   return 0
end

function vsop87_pico_velocities.uranus_a(t)
   local uranus_a_0 = 0.0

   uranus_a_0 = uranus_a_0 + -1 * 0.02068375131 * 138.51749687070 * math.sin(1.67626096637 + 138.51749687070*t)
   uranus_a_0 = uranus_a_0 + -1 * 0.08030476240 * 454.90936652730 * math.sin(1.40140954803 + 454.90936652730*t)
   uranus_a_0 = uranus_a_0 + -1 * 19.21844606178 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return uranus_a_0
end

function vsop87_pico_velocities.uranus_h(t)
   return 0
end

function vsop87_pico_velocities.uranus_k(t)
   local uranus_k_0 = 0.0

   uranus_k_0 = uranus_k_0 + -1 * 0.04595132376 * 0.00000000000 * math.sin(3.14159265359 + 0.00000000000*t)




   return uranus_k_0
end

function vsop87_pico_velocities.uranus_l(t)
   local uranus_l_0 = 0.0

   uranus_l_0 = uranus_l_0 + -1 * 0.01503941337 * 1.48447270830 * math.sin(3.62721239702 + 1.48447270830*t)
   uranus_l_0 = uranus_l_0 + -1 * 5.48129387159 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)
   local uranus_l_1 = 0.0

   uranus_l_1 = uranus_l_1 + math.pow(t,0) * 1 * 74.78159856730 * math.cos(0.00000000000 + 0.00000000000*t) - math.pow(t,1) * 74.78159856730 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return uranus_l_0+uranus_l_1
end

function vsop87_pico_velocities.uranus_p(t)
   return 0
end

function vsop87_pico_velocities.uranus_q(t)
   return 0
end

function vsop87_pico_velocities.venus_a(t)
   local venus_a_0 = 0.0

   venus_a_0 = venus_a_0 + -1 * 0.72332981996 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)


   return venus_a_0
end

function vsop87_pico_velocities.venus_h(t)
   return 0
end

function vsop87_pico_velocities.venus_k(t)
   return 0
end

function vsop87_pico_velocities.venus_l(t)
   local venus_l_0 = 0.0

   venus_l_0 = venus_l_0 + -1 * 3.17614669689 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)
   local venus_l_1 = 0.0

   venus_l_1 = venus_l_1 + math.pow(t,0) * 1 * 10213.28554621100 * math.cos(0.00000000000 + 0.00000000000*t) - math.pow(t,1) * 10213.28554621100 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)



   return venus_l_0+venus_l_1
end

function vsop87_pico_velocities.venus_p(t)
   local venus_p_0 = 0.0

   venus_p_0 = venus_p_0 + -1 * 0.02882285775 * 0.00000000000 * math.sin(0.00000000000 + 0.00000000000*t)





   return venus_p_0
end

function vsop87_pico_velocities.venus_q(t)
   return ;
end

return vsop87_pico_velocities
