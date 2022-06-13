--VSOP87-Multilang http://www.celestialprogramming.com/
--Greg Miller (gmiller@gregmiller.net) 2022.  Released as Public Domain

local vsop87_micro = {}

function vsop87_micro.getMercury(t)
   local temp={0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
   temp[1]=vsop87_micro.mercury_a(t)
   temp[2]=vsop87_micro.mercury_l(t)
   temp[3]=vsop87_micro.mercury_k(t)
   temp[4]=vsop87_micro.mercury_h(t)
   temp[5]=vsop87_micro.mercury_q(t)
   temp[6]=vsop87_micro.mercury_p(t)

   return temp;
end

function vsop87_micro.getVenus(t)
   local temp={0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
   temp[1]=vsop87_micro.venus_a(t)
   temp[2]=vsop87_micro.venus_l(t)
   temp[3]=vsop87_micro.venus_k(t)
   temp[4]=vsop87_micro.venus_h(t)
   temp[5]=vsop87_micro.venus_q(t)
   temp[6]=vsop87_micro.venus_p(t)

   return temp;
end

function vsop87_micro.getEmb(t)
   local temp={0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
   temp[1]=vsop87_micro.emb_a(t)
   temp[2]=vsop87_micro.emb_l(t)
   temp[3]=vsop87_micro.emb_k(t)
   temp[4]=vsop87_micro.emb_h(t)
   temp[5]=vsop87_micro.emb_q(t)
   temp[6]=vsop87_micro.emb_p(t)

   return temp;
end

function vsop87_micro.getMars(t)
   local temp={0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
   temp[1]=vsop87_micro.mars_a(t)
   temp[2]=vsop87_micro.mars_l(t)
   temp[3]=vsop87_micro.mars_k(t)
   temp[4]=vsop87_micro.mars_h(t)
   temp[5]=vsop87_micro.mars_q(t)
   temp[6]=vsop87_micro.mars_p(t)

   return temp;
end

function vsop87_micro.getJupiter(t)
   local temp={0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
   temp[1]=vsop87_micro.jupiter_a(t)
   temp[2]=vsop87_micro.jupiter_l(t)
   temp[3]=vsop87_micro.jupiter_k(t)
   temp[4]=vsop87_micro.jupiter_h(t)
   temp[5]=vsop87_micro.jupiter_q(t)
   temp[6]=vsop87_micro.jupiter_p(t)

   return temp;
end

function vsop87_micro.getSaturn(t)
   local temp={0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
   temp[1]=vsop87_micro.saturn_a(t)
   temp[2]=vsop87_micro.saturn_l(t)
   temp[3]=vsop87_micro.saturn_k(t)
   temp[4]=vsop87_micro.saturn_h(t)
   temp[5]=vsop87_micro.saturn_q(t)
   temp[6]=vsop87_micro.saturn_p(t)

   return temp;
end

function vsop87_micro.getUranus(t)
   local temp={0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
   temp[1]=vsop87_micro.uranus_a(t)
   temp[2]=vsop87_micro.uranus_l(t)
   temp[3]=vsop87_micro.uranus_k(t)
   temp[4]=vsop87_micro.uranus_h(t)
   temp[5]=vsop87_micro.uranus_q(t)
   temp[6]=vsop87_micro.uranus_p(t)

   return temp;
end

function vsop87_micro.getNeptune(t)
   local temp={0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
   temp[1]=vsop87_micro.neptune_a(t)
   temp[2]=vsop87_micro.neptune_l(t)
   temp[3]=vsop87_micro.neptune_k(t)
   temp[4]=vsop87_micro.neptune_h(t)
   temp[5]=vsop87_micro.neptune_q(t)
   temp[6]=vsop87_micro.neptune_p(t)

   return temp;
end

function vsop87_micro.emb_a(t)
   local emb_a_0 = 0.0

   emb_a_0 = emb_a_0 + 1.00000101778 * math.cos(0.00000000000 + 0.00000000000*t)
   emb_a_0=emb_a_0*t

   emb_a_0=emb_a_0*t*t

   return emb_a_0
end

function vsop87_micro.emb_h(t)
   local emb_h_0 = 0.0

   emb_h_0 = emb_h_0 + 0.01628447663 * math.cos(0.00000000000 + 0.00000000000*t)
   local emb_h_1 = 0.0

   emb_h_1 = emb_h_1 + 0.00062029655 * math.cos(3.14159265359 + 0.00000000000*t)
   emb_h_1=emb_h_1*t

   emb_h_1=emb_h_1*t*t

   emb_h_1=emb_h_1*t*t*t

   emb_h_1=emb_h_1*t*t*t*t

   emb_h_1=emb_h_1*t*t*t*t*t

   return emb_h_0+emb_h_1
end

function vsop87_micro.emb_k(t)
   local emb_k_0 = 0.0

   emb_k_0 = emb_k_0 + 0.00374081650 * math.cos(3.14159265359 + 0.00000000000*t)
   local emb_k_1 = 0.0

   emb_k_1 = emb_k_1 + 0.00082267418 * math.cos(3.14159265359 + 0.00000000000*t)
   emb_k_1=emb_k_1*t

   emb_k_1=emb_k_1*t*t

   emb_k_1=emb_k_1*t*t*t

   emb_k_1=emb_k_1*t*t*t*t

   emb_k_1=emb_k_1*t*t*t*t*t

   return emb_k_0+emb_k_1
end

function vsop87_micro.emb_l(t)
   local emb_l_0 = 0.0

   emb_l_0 = emb_l_0 + 1.75347045953 * math.cos(0.00000000000 + 0.00000000000*t)
   local emb_l_1 = 0.0

   emb_l_1 = emb_l_1 + 6283.07584999140 * math.cos(0.00000000000 + 0.00000000000*t)
   emb_l_1=emb_l_1*t

   emb_l_1=emb_l_1*t*t

   emb_l_1=emb_l_1*t*t*t

   emb_l_1=emb_l_1*t*t*t*t

   emb_l_1=emb_l_1*t*t*t*t*t

   return emb_l_0+emb_l_1
end

function vsop87_micro.emb_p(t)
   local emb_p_1 = 0.0

   emb_p_1 = emb_p_1 + 0.00010180375 * math.cos(0.00000000000 + 0.00000000000*t)
   emb_p_1=emb_p_1*t

   emb_p_1=emb_p_1*t*t

   emb_p_1=emb_p_1*t*t*t

   emb_p_1=emb_p_1*t*t*t*t

   emb_p_1=emb_p_1*t*t*t*t*t

   return emb_p_1
end

function vsop87_micro.emb_q(t)
   local emb_q_1 = 0.0

   emb_q_1 = emb_q_1 + 0.00113468869 * math.cos(3.14159265359 + 0.00000000000*t)
   emb_q_1=emb_q_1*t

   emb_q_1=emb_q_1*t*t

   emb_q_1=emb_q_1*t*t*t

   emb_q_1=emb_q_1*t*t*t*t

   emb_q_1=emb_q_1*t*t*t*t*t

   return emb_q_1
end

function vsop87_micro.jupiter_a(t)
   local jupiter_a_0 = 0.0

   jupiter_a_0 = jupiter_a_0 + 0.00011836569 * math.cos(0.41496888665 + 735.87651353180*t)
   jupiter_a_0 = jupiter_a_0 + 0.00014633106 * math.cos(5.20240925402 + 1265.56747862640*t)
   jupiter_a_0 = jupiter_a_0 + 0.00020585372 * math.cos(5.98131661466 + 316.39186965660*t)
   jupiter_a_0 = jupiter_a_0 + 0.00021814330 * math.cos(0.70025220178 + 419.48464387520*t)
   jupiter_a_0 = jupiter_a_0 + 0.00025558941 * math.cos(6.15962426898 + 7.11354700080*t)
   jupiter_a_0 = jupiter_a_0 + 0.00031138634 * math.cos(5.46486196547 + 949.17560896980*t)
   jupiter_a_0 = jupiter_a_0 + 0.00032272046 * math.cos(1.90381613358 + 103.09277421860*t)
   jupiter_a_0 = jupiter_a_0 + 0.00069070151 * math.cos(5.72686174779 + 632.78373931320*t)
   jupiter_a_0 = jupiter_a_0 + 5.20260319132 * math.cos(0.00000000000 + 0.00000000000*t)
   local jupiter_a_1 = 0.0

   jupiter_a_1 = jupiter_a_1 + 0.00010177614 * math.cos(4.46063225487 + 7.11354700080*t)
   jupiter_a_1=jupiter_a_1*t

   jupiter_a_1=jupiter_a_1*t*t

   jupiter_a_1=jupiter_a_1*t*t*t

   jupiter_a_1=jupiter_a_1*t*t*t*t

   jupiter_a_1=jupiter_a_1*t*t*t*t*t

   return jupiter_a_0+jupiter_a_1
end

function vsop87_micro.jupiter_h(t)
   local jupiter_h_0 = 0.0

   jupiter_h_0 = jupiter_h_0 + 0.00010468075 * math.cos(0.14414631816 + 419.48464387520*t)
   jupiter_h_0 = jupiter_h_0 + 0.00012686502 * math.cos(1.52173271472 + 110.20632121940*t)
   jupiter_h_0 = jupiter_h_0 + 0.00037689163 * math.cos(0.46902799622 + 7.11354700080*t)
   jupiter_h_0 = jupiter_h_0 + 0.00064278139 * math.cos(0.39928981461 + 103.09277421860*t)
   jupiter_h_0 = jupiter_h_0 + 0.01200385748 * math.cos(0.00000000000 + 0.00000000000*t)
   local jupiter_h_1 = 0.0

   jupiter_h_1 = jupiter_h_1 + 0.00010164439 * math.cos(5.05135857516 + 7.11354700080*t)
   jupiter_h_1 = jupiter_h_1 + 0.00217149360 * math.cos(0.00000000000 + 0.00000000000*t)
   jupiter_h_1=jupiter_h_1*t

   jupiter_h_1=jupiter_h_1*t*t

   jupiter_h_1=jupiter_h_1*t*t*t

   jupiter_h_1=jupiter_h_1*t*t*t*t

   return jupiter_h_0+jupiter_h_1
end

function vsop87_micro.jupiter_k(t)
   local jupiter_k_0 = 0.0

   jupiter_k_0 = jupiter_k_0 + 0.00010740857 * math.cos(4.85106997988 + 419.48464387520*t)
   jupiter_k_0 = jupiter_k_0 + 0.00013518804 * math.cos(2.94820975394 + 110.20632121940*t)
   jupiter_k_0 = jupiter_k_0 + 0.00038006128 * math.cos(2.03714771852 + 7.11354700080*t)
   jupiter_k_0 = jupiter_k_0 + 0.00065287010 * math.cos(5.14135675663 + 103.09277421860*t)
   jupiter_k_0 = jupiter_k_0 + 0.04698572124 * math.cos(0.00000000000 + 0.00000000000*t)
   local jupiter_k_1 = 0.0

   jupiter_k_1 = jupiter_k_1 + 0.00010303903 * math.cos(0.33250058601 + 7.11354700080*t)
   jupiter_k_1 = jupiter_k_1 + 0.00113010377 * math.cos(0.00000000000 + 0.00000000000*t)
   jupiter_k_1=jupiter_k_1*t

   local jupiter_k_2 = 0.0

   jupiter_k_2 = jupiter_k_2 + 0.00010930126 * math.cos(3.14159265359 + 0.00000000000*t)
   jupiter_k_2=jupiter_k_2*t*t

   jupiter_k_2=jupiter_k_2*t*t*t

   jupiter_k_2=jupiter_k_2*t*t*t*t

   return jupiter_k_0+jupiter_k_1+jupiter_k_2
end

function vsop87_micro.jupiter_l(t)
   local jupiter_l_0 = 0.0

   jupiter_l_0 = jupiter_l_0 + 0.00011730590 * math.cos(0.74641135653 + 949.17560896980*t)
   jupiter_l_0 = jupiter_l_0 + 0.00013391386 * math.cos(2.32518571601 + 419.48464387520*t)
   jupiter_l_0 = jupiter_l_0 + 0.00023791184 * math.cos(1.27622244841 + 316.39186965660*t)
   jupiter_l_0 = jupiter_l_0 + 0.00032251188 * math.cos(1.01358443926 + 632.78373931320*t)
   jupiter_l_0 = jupiter_l_0 + 0.00062308554 * math.cos(3.41857056095 + 103.09277421860*t)
   jupiter_l_0 = jupiter_l_0 + 0.00573506125 * math.cos(1.44396306420 + 7.11354700080*t)
   jupiter_l_0 = jupiter_l_0 + 0.59954649739 * math.cos(0.00000000000 + 0.00000000000*t)
   local jupiter_l_1 = 0.0

   jupiter_l_1 = jupiter_l_1 + 0.00228875491 * math.cos(6.02639570653 + 7.11354700080*t)
   jupiter_l_1 = jupiter_l_1 + 529.69096509460 * math.cos(0.00000000000 + 0.00000000000*t)
   jupiter_l_1=jupiter_l_1*t

   local jupiter_l_2 = 0.0

   jupiter_l_2 = jupiter_l_2 + 0.00014837133 * math.cos(3.14159265359 + 0.00000000000*t)
   jupiter_l_2 = jupiter_l_2 + 0.00047224495 * math.cos(4.32142959829 + 7.11354700080*t)
   jupiter_l_2=jupiter_l_2*t*t

   jupiter_l_2=jupiter_l_2*t*t*t

   jupiter_l_2=jupiter_l_2*t*t*t*t

   jupiter_l_2=jupiter_l_2*t*t*t*t*t

   return jupiter_l_0+jupiter_l_1+jupiter_l_2
end

function vsop87_micro.jupiter_p(t)
   local jupiter_p_0 = 0.0

   jupiter_p_0 = jupiter_p_0 + 0.01118377157 * math.cos(0.00000000000 + 0.00000000000*t)
   local jupiter_p_1 = 0.0

   jupiter_p_1 = jupiter_p_1 + 0.00023427562 * math.cos(3.14159265359 + 0.00000000000*t)
   jupiter_p_1=jupiter_p_1*t

   jupiter_p_1=jupiter_p_1*t*t

   jupiter_p_1=jupiter_p_1*t*t*t

   return jupiter_p_0+jupiter_p_1
end

function vsop87_micro.jupiter_q(t)
   local jupiter_q_0 = 0.0

   jupiter_q_0 = jupiter_q_0 + 0.00206561098 * math.cos(3.14159265359 + 0.00000000000*t)
   local jupiter_q_1 = 0.0

   jupiter_q_1 = jupiter_q_1 + 0.00031340156 * math.cos(3.14159265359 + 0.00000000000*t)
   jupiter_q_1=jupiter_q_1*t

   jupiter_q_1=jupiter_q_1*t*t

   jupiter_q_1=jupiter_q_1*t*t*t

   return jupiter_q_0+jupiter_q_1
end

function vsop87_micro.mars_a(t)
   local mars_a_0 = 0.0

   mars_a_0 = mars_a_0 + 1.52367934191 * math.cos(0.00000000000 + 0.00000000000*t)
   mars_a_0=mars_a_0*t

   mars_a_0=mars_a_0*t*t

   return mars_a_0
end

function vsop87_micro.mars_h(t)
   local mars_h_0 = 0.0

   mars_h_0 = mars_h_0 + 0.03789973236 * math.cos(3.14159265359 + 0.00000000000*t)
   local mars_h_1 = 0.0

   mars_h_1 = mars_h_1 + 0.00624657465 * math.cos(0.00000000000 + 0.00000000000*t)
   mars_h_1=mars_h_1*t

   local mars_h_2 = 0.0

   mars_h_2 = mars_h_2 + 0.00015529482 * math.cos(0.00000000000 + 0.00000000000*t)
   mars_h_2=mars_h_2*t*t

   mars_h_2=mars_h_2*t*t*t

   mars_h_2=mars_h_2*t*t*t*t

   mars_h_2=mars_h_2*t*t*t*t*t

   return mars_h_0+mars_h_1+mars_h_2
end

function vsop87_micro.mars_k(t)
   local mars_k_0 = 0.0

   mars_k_0 = mars_k_0 + 0.08536560252 * math.cos(0.00000000000 + 0.00000000000*t)
   local mars_k_1 = 0.0

   mars_k_1 = mars_k_1 + 0.00376330152 * math.cos(0.00000000000 + 0.00000000000*t)
   mars_k_1=mars_k_1*t

   local mars_k_2 = 0.0

   mars_k_2 = mars_k_2 + 0.00024657776 * math.cos(3.14159265359 + 0.00000000000*t)
   mars_k_2=mars_k_2*t*t

   mars_k_2=mars_k_2*t*t*t

   mars_k_2=mars_k_2*t*t*t*t

   mars_k_2=mars_k_2*t*t*t*t*t

   return mars_k_0+mars_k_1+mars_k_2
end

function vsop87_micro.mars_l(t)
   local mars_l_0 = 0.0

   mars_l_0 = mars_l_0 + 0.00027745033 * math.cos(5.97049541372 + 3.52311834900*t)
   mars_l_0 = mars_l_0 + 6.20347611291 * math.cos(0.00000000000 + 0.00000000000*t)
   local mars_l_1 = 0.0

   mars_l_1 = mars_l_1 + 3340.61242669981 * math.cos(0.00000000000 + 0.00000000000*t)
   mars_l_1=mars_l_1*t

   mars_l_1=mars_l_1*t*t

   mars_l_1=mars_l_1*t*t*t

   mars_l_1=mars_l_1*t*t*t*t

   mars_l_1=mars_l_1*t*t*t*t*t

   return mars_l_0+mars_l_1
end

function vsop87_micro.mars_p(t)
   local mars_p_0 = 0.0

   mars_p_0 = mars_p_0 + 0.01228449307 * math.cos(0.00000000000 + 0.00000000000*t)
   local mars_p_1 = 0.0

   mars_p_1 = mars_p_1 + 0.00108020083 * math.cos(3.14159265359 + 0.00000000000*t)
   mars_p_1=mars_p_1*t

   mars_p_1=mars_p_1*t*t

   mars_p_1=mars_p_1*t*t*t

   mars_p_1=mars_p_1*t*t*t*t

   return mars_p_0+mars_p_1
end

function vsop87_micro.mars_q(t)
   local mars_q_0 = 0.0

   mars_q_0 = mars_q_0 + 0.01047042574 * math.cos(0.00000000000 + 0.00000000000*t)
   local mars_q_1 = 0.0

   mars_q_1 = mars_q_1 + 0.00017138526 * math.cos(0.00000000000 + 0.00000000000*t)
   mars_q_1=mars_q_1*t

   mars_q_1=mars_q_1*t*t

   mars_q_1=mars_q_1*t*t*t

   mars_q_1=mars_q_1*t*t*t*t

   mars_q_1=mars_q_1*t*t*t*t*t

   return mars_q_0+mars_q_1
end

function vsop87_micro.mercury_a(t)
   local mercury_a_0 = 0.0

   mercury_a_0 = mercury_a_0 + 0.38709830982 * math.cos(0.00000000000 + 0.00000000000*t)
   mercury_a_0=mercury_a_0*t

   mercury_a_0=mercury_a_0*t*t

   return mercury_a_0
end

function vsop87_micro.mercury_h(t)
   local mercury_h_0 = 0.0

   mercury_h_0 = mercury_h_0 + 0.20072331368 * math.cos(0.00000000000 + 0.00000000000*t)
   local mercury_h_1 = 0.0

   mercury_h_1 = mercury_h_1 + 0.00143750118 * math.cos(0.00000000000 + 0.00000000000*t)
   mercury_h_1=mercury_h_1*t

   mercury_h_1=mercury_h_1*t*t

   mercury_h_1=mercury_h_1*t*t*t

   mercury_h_1=mercury_h_1*t*t*t*t

   mercury_h_1=mercury_h_1*t*t*t*t*t

   return mercury_h_0+mercury_h_1
end

function vsop87_micro.mercury_k(t)
   local mercury_k_0 = 0.0

   mercury_k_0 = mercury_k_0 + 0.04466059760 * math.cos(0.00000000000 + 0.00000000000*t)
   local mercury_k_1 = 0.0

   mercury_k_1 = mercury_k_1 + 0.00552114624 * math.cos(3.14159265359 + 0.00000000000*t)
   mercury_k_1=mercury_k_1*t

   mercury_k_1=mercury_k_1*t*t

   mercury_k_1=mercury_k_1*t*t*t

   mercury_k_1=mercury_k_1*t*t*t*t

   mercury_k_1=mercury_k_1*t*t*t*t*t

   return mercury_k_0+mercury_k_1
end

function vsop87_micro.mercury_l(t)
   local mercury_l_0 = 0.0

   mercury_l_0 = mercury_l_0 + 4.40260884240 * math.cos(0.00000000000 + 0.00000000000*t)
   local mercury_l_1 = 0.0

   mercury_l_1 = mercury_l_1 + 26087.90314157420 * math.cos(0.00000000000 + 0.00000000000*t)
   mercury_l_1=mercury_l_1*t

   mercury_l_1=mercury_l_1*t*t

   mercury_l_1=mercury_l_1*t*t*t

   return mercury_l_0+mercury_l_1
end

function vsop87_micro.mercury_p(t)
   local mercury_p_0 = 0.0

   mercury_p_0 = mercury_p_0 + 0.04563550461 * math.cos(0.00000000000 + 0.00000000000*t)
   local mercury_p_1 = 0.0

   mercury_p_1 = mercury_p_1 + 0.00127633657 * math.cos(3.14159265359 + 0.00000000000*t)
   mercury_p_1=mercury_p_1*t

   mercury_p_1=mercury_p_1*t*t

   mercury_p_1=mercury_p_1*t*t*t

   mercury_p_1=mercury_p_1*t*t*t*t

   mercury_p_1=mercury_p_1*t*t*t*t*t

   return mercury_p_0+mercury_p_1
end

function vsop87_micro.mercury_q(t)
   local mercury_q_0 = 0.0

   mercury_q_0 = mercury_q_0 + 0.04061563384 * math.cos(0.00000000000 + 0.00000000000*t)
   local mercury_q_1 = 0.0

   mercury_q_1 = mercury_q_1 + 0.00065433117 * math.cos(0.00000000000 + 0.00000000000*t)
   mercury_q_1=mercury_q_1*t

   mercury_q_1=mercury_q_1*t*t

   mercury_q_1=mercury_q_1*t*t*t

   mercury_q_1=mercury_q_1*t*t*t*t

   mercury_q_1=mercury_q_1*t*t*t*t*t

   return mercury_q_0+mercury_q_1
end

function vsop87_micro.neptune_a(t)
   local neptune_a_0 = 0.0

   neptune_a_0 = neptune_a_0 + 0.00010396544 * math.cos(4.15850491413 + 219.89137757700*t)
   neptune_a_0 = neptune_a_0 + 0.00011035877 * math.cos(0.32439741096 + 601.76425067620*t)
   neptune_a_0 = neptune_a_0 + 0.00011159386 * math.cos(4.90170178578 + 108.46121608020*t)
   neptune_a_0 = neptune_a_0 + 0.00013243147 * math.cos(1.48517883768 + 454.90936652730*t)
   neptune_a_0 = neptune_a_0 + 0.00014186982 * math.cos(0.39055348945 + 38.13303563780*t)
   neptune_a_0 = neptune_a_0 + 0.00017526509 * math.cos(3.41680716222 + 666.72398925700*t)
   neptune_a_0 = neptune_a_0 + 0.00017669174 * math.cos(6.07111527239 + 173.68158709190*t)
   neptune_a_0 = neptune_a_0 + 0.00017938336 * math.cos(3.98996043594 + 183.24281464750*t)
   neptune_a_0 = neptune_a_0 + 0.00018971774 * math.cos(0.76073169118 + 176.65053250850*t)
   neptune_a_0 = neptune_a_0 + 0.00019887390 * math.cos(4.72200680846 + 71.81265315070*t)
   neptune_a_0 = neptune_a_0 + 0.00021792087 * math.cos(2.62371458707 + 111.43016149680*t)
   neptune_a_0 = neptune_a_0 + 0.00024649447 * math.cos(6.00875947773 + 316.39186965660*t)
   neptune_a_0 = neptune_a_0 + 0.00025130259 * math.cos(5.11703371894 + 168.05251279940*t)
   neptune_a_0 = neptune_a_0 + 0.00025671325 * math.cos(1.72232760443 + 182.27960680100*t)
   neptune_a_0 = neptune_a_0 + 0.00026057248 * math.cos(0.60013829511 + 350.33211960040*t)
   neptune_a_0 = neptune_a_0 + 0.00031426284 * math.cos(3.82119024473 + 146.59425171800*t)
   neptune_a_0 = neptune_a_0 + 0.00031792020 * math.cos(3.25530033905 + 983.11585891360*t)
   neptune_a_0 = neptune_a_0 + 0.00037417236 * math.cos(2.27030739588 + 1550.93985964600*t)
   neptune_a_0 = neptune_a_0 + 0.00042415052 * math.cos(1.70067649012 + 484.44438245600*t)
   neptune_a_0 = neptune_a_0 + 0.00042539010 * math.cos(4.58925849638 + 498.67147645760*t)
   neptune_a_0 = neptune_a_0 + 0.00046876450 * math.cos(3.85081593965 + 137.03302416240*t)
   neptune_a_0 = neptune_a_0 + 0.00050781320 * math.cos(4.51488159732 + 35.16409022120*t)
   neptune_a_0 = neptune_a_0 + 0.00056976700 * math.cos(3.65157409569 + 109.94568878850*t)
   neptune_a_0 = neptune_a_0 + 0.00069569587 * math.cos(3.84742919656 + 2.96894541660*t)
   neptune_a_0 = neptune_a_0 + 0.00072554259 * math.cos(5.79767484989 + 490.07345674850*t)
   neptune_a_0 = neptune_a_0 + 0.00078391390 * math.cos(0.48629941459 + 493.04240216510*t)
   neptune_a_0 = neptune_a_0 + 0.00095530570 * math.cos(4.14819625611 + 10175.15251057320*t)
   neptune_a_0 = neptune_a_0 + 0.00101174992 * math.cos(2.72476929716 + 6244.94281435360*t)
   neptune_a_0 = neptune_a_0 + 0.00105687575 * math.cos(3.48447772920 + 73.29712585900*t)
   neptune_a_0 = neptune_a_0 + 0.00144701407 * math.cos(3.36967102070 + 453.42489381900*t)
   neptune_a_0 = neptune_a_0 + 0.00185666340 * math.cos(1.07141029917 + 388.46515523820*t)
   neptune_a_0 = neptune_a_0 + 0.00462318447 * math.cos(0.16921610518 + 36.64856292950*t)
   neptune_a_0 = neptune_a_0 + 0.00694303990 * math.cos(1.92062235445 + 1021.24889455140*t)
   neptune_a_0 = neptune_a_0 + 0.00832345688 * math.cos(5.19528065894 + 1.48447270830*t)
   neptune_a_0 = neptune_a_0 + 0.03597274341 * math.cos(1.84552690821 + 175.16605980020*t)
   neptune_a_0 = neptune_a_0 + 0.14818172119 * math.cos(1.57105922541 + 491.55792945680*t)
   neptune_a_0 = neptune_a_0 + 30.11038686942 * math.cos(0.00000000000 + 0.00000000000*t)
   local neptune_a_1 = 0.0

   neptune_a_1 = neptune_a_1 + 0.00010028658 * math.cos(0.53331428424 + 168.05251279940*t)
   neptune_a_1 = neptune_a_1 + 0.00010242826 * math.cos(0.02106658542 + 182.27960680100*t)
   neptune_a_1 = neptune_a_1 + 0.00013646732 * math.cos(3.31887794551 + 1.48447270830*t)
   neptune_a_1 = neptune_a_1 + 0.00016926224 * math.cos(3.40079518197 + 484.44438245600*t)
   neptune_a_1 = neptune_a_1 + 0.00016983720 * math.cos(2.88749614679 + 498.67147645760*t)
   neptune_a_1 = neptune_a_1 + 0.00021981792 * math.cos(5.24159938374 + 388.46515523820*t)
   neptune_a_1 = neptune_a_1 + 0.00035017221 * math.cos(1.07792431879 + 1021.24889455140*t)
   neptune_a_1=neptune_a_1*t

   neptune_a_1=neptune_a_1*t*t

   neptune_a_1=neptune_a_1*t*t*t

   neptune_a_1=neptune_a_1*t*t*t*t

   neptune_a_1=neptune_a_1*t*t*t*t*t

   return neptune_a_0+neptune_a_1
end

function vsop87_micro.neptune_h(t)
   local neptune_h_0 = 0.0

   neptune_h_0 = neptune_h_0 + 0.00015834646 * math.cos(2.35068672532 + 2.96894541660*t)
   neptune_h_0 = neptune_h_0 + 0.00016671327 * math.cos(5.66175544286 + 1059.38193018920*t)
   neptune_h_0 = neptune_h_0 + 0.00034070791 * math.cos(4.38749299404 + 137.03302416240*t)
   neptune_h_0 = neptune_h_0 + 0.00059736086 * math.cos(3.56479788019 + 1.48447270830*t)
   neptune_h_0 = neptune_h_0 + 0.00076068364 * math.cos(5.58664660018 + 213.29909543800*t)
   neptune_h_0 = neptune_h_0 + 0.00131043136 * math.cos(4.11313570675 + 453.42489381900*t)
   neptune_h_0 = neptune_h_0 + 0.00136278888 * math.cos(3.74103613444 + 38.13303563780*t)
   neptune_h_0 = neptune_h_0 + 0.00344034784 * math.cos(5.31201105782 + 529.69096509460*t)
   neptune_h_0 = neptune_h_0 + 0.00669242413 * math.cos(0.00000000000 + 0.00000000000*t)
   neptune_h_0=neptune_h_0*t

   neptune_h_0=neptune_h_0*t*t

   neptune_h_0=neptune_h_0*t*t*t

   neptune_h_0=neptune_h_0*t*t*t*t

   neptune_h_0=neptune_h_0*t*t*t*t*t

   return neptune_h_0
end

function vsop87_micro.neptune_k(t)
   local neptune_k_0 = 0.0

   neptune_k_0 = neptune_k_0 + 0.00015893727 * math.cos(3.92171062449 + 2.96894541660*t)
   neptune_k_0 = neptune_k_0 + 0.00016663303 * math.cos(0.94954464976 + 1059.38193018920*t)
   neptune_k_0 = neptune_k_0 + 0.00034074986 * math.cos(2.81681245358 + 137.03302416240*t)
   neptune_k_0 = neptune_k_0 + 0.00059960933 * math.cos(5.13746031010 + 1.48447270830*t)
   neptune_k_0 = neptune_k_0 + 0.00076137558 * math.cos(0.87421757435 + 213.29909543800*t)
   neptune_k_0 = neptune_k_0 + 0.00131042161 * math.cos(2.54238248127 + 453.42489381900*t)
   neptune_k_0 = neptune_k_0 + 0.00136232980 * math.cos(5.31190360139 + 38.13303563780*t)
   neptune_k_0 = neptune_k_0 + 0.00343810387 * math.cos(0.59989432818 + 529.69096509460*t)
   neptune_k_0 = neptune_k_0 + 0.00599977571 * math.cos(0.00000000000 + 0.00000000000*t)
   neptune_k_0=neptune_k_0*t

   neptune_k_0=neptune_k_0*t*t

   neptune_k_0=neptune_k_0*t*t*t

   neptune_k_0=neptune_k_0*t*t*t*t

   neptune_k_0=neptune_k_0*t*t*t*t*t

   return neptune_k_0
end

function vsop87_micro.neptune_l(t)
   local neptune_l_0 = 0.0

   neptune_l_0 = neptune_l_0 + 0.00016297466 * math.cos(4.88440388945 + 36.64856292950*t)
   neptune_l_0 = neptune_l_0 + 0.00021806166 * math.cos(0.34972092081 + 1021.24889455140*t)
   neptune_l_0 = neptune_l_0 + 0.00041703723 * math.cos(5.41098453927 + 2.96894541660*t)
   neptune_l_0 = neptune_l_0 + 0.00092919548 * math.cos(0.27470534254 + 175.16605980020*t)
   neptune_l_0 = neptune_l_0 + 0.00441710236 * math.cos(0.00020868462 + 491.55792945680*t)
   neptune_l_0 = neptune_l_0 + 0.01017628072 * math.cos(0.48586478491 + 1.48447270830*t)
   neptune_l_0 = neptune_l_0 + 5.31188628676 * math.cos(0.00000000000 + 0.00000000000*t)
   local neptune_l_1 = 0.0

   neptune_l_1 = neptune_l_1 + 0.00016569412 * math.cos(4.86311838543 + 1.48447270830*t)
   neptune_l_1 = neptune_l_1 + 38.13303563780 * math.cos(0.00000000000 + 0.00000000000*t)
   neptune_l_1=neptune_l_1*t

   neptune_l_1=neptune_l_1*t*t

   neptune_l_1=neptune_l_1*t*t*t

   neptune_l_1=neptune_l_1*t*t*t*t

   neptune_l_1=neptune_l_1*t*t*t*t*t

   return neptune_l_0+neptune_l_1
end

function vsop87_micro.neptune_p(t)
   local neptune_p_0 = 0.0

   neptune_p_0 = neptune_p_0 + 0.01151683985 * math.cos(0.00000000000 + 0.00000000000*t)
   neptune_p_0=neptune_p_0*t

   neptune_p_0=neptune_p_0*t*t

   neptune_p_0=neptune_p_0*t*t*t

   return neptune_p_0
end

function vsop87_micro.neptune_q(t)
   local neptune_q_0 = 0.0

   neptune_q_0 = neptune_q_0 + 0.01029147819 * math.cos(3.14159265359 + 0.00000000000*t)
   neptune_q_0=neptune_q_0*t

   neptune_q_0=neptune_q_0*t*t

   neptune_q_0=neptune_q_0*t*t*t

   return neptune_q_0
end

function vsop87_micro.saturn_a(t)
   local saturn_a_0 = 0.0

   saturn_a_0 = saturn_a_0 + 0.00011535604 * math.cos(2.74021432418 + 1685.05212250160*t)
   saturn_a_0 = saturn_a_0 + 0.00013277748 * math.cos(3.34520712627 + 277.03499374140*t)
   saturn_a_0 = saturn_a_0 + 0.00013849443 * math.cos(4.65107330724 + 838.96928775040*t)
   saturn_a_0 = saturn_a_0 + 0.00015605088 * math.cos(1.55158323786 + 1898.35121793960*t)
   saturn_a_0 = saturn_a_0 + 0.00017342295 * math.cos(2.30290130287 + 9999.98645077300*t)
   saturn_a_0 = saturn_a_0 + 0.00018549188 * math.cos(0.87944999842 + 6069.77675455340*t)
   saturn_a_0 = saturn_a_0 + 0.00020860007 * math.cos(3.01028862668 + 1368.66025284500*t)
   saturn_a_0 = saturn_a_0 + 0.00024471393 * math.cos(4.81178790264 + 522.57741809380*t)
   saturn_a_0 = saturn_a_0 + 0.00032196433 * math.cos(1.80319862777 + 1581.95934828300*t)
   saturn_a_0 = saturn_a_0 + 0.00037861360 * math.cos(2.71073622362 + 323.50541665740*t)
   saturn_a_0 = saturn_a_0 + 0.00038450594 * math.cos(3.28109764968 + 1052.26838318840*t)
   saturn_a_0 = saturn_a_0 + 0.00040372154 * math.cos(6.12336876226 + 309.27832265580*t)
   saturn_a_0 = saturn_a_0 + 0.00054284469 * math.cos(5.12517048023 + 206.18554843720*t)
   saturn_a_0 = saturn_a_0 + 0.00067160409 * math.cos(2.06145646779 + 1265.56747862640*t)
   saturn_a_0 = saturn_a_0 + 0.00073412340 * math.cos(3.55846055429 + 735.87651353180*t)
   saturn_a_0 = saturn_a_0 + 0.00081821669 * math.cos(3.45006412768 + 110.20632121940*t)
   saturn_a_0 = saturn_a_0 + 0.00142075017 * math.cos(2.32273369924 + 949.17560896980*t)
   saturn_a_0 = saturn_a_0 + 0.00143605062 * math.cos(4.85917505070 + 213.29909543800*t)
   saturn_a_0 = saturn_a_0 + 0.00146816895 * math.cos(0.07437685257 + 846.08283475120*t)
   saturn_a_0 = saturn_a_0 + 0.00149912686 * math.cos(3.86270340354 + 419.48464387520*t)
   saturn_a_0 = saturn_a_0 + 0.00289062242 * math.cos(3.01816520038 + 7.11354700080*t)
   saturn_a_0 = saturn_a_0 + 0.00308461590 * math.cos(2.55488166399 + 632.78373931320*t)
   saturn_a_0 = saturn_a_0 + 0.00354492417 * math.cos(5.81482665415 + 103.09277421860*t)
   saturn_a_0 = saturn_a_0 + 0.03363448736 * math.cos(6.00973673460 + 316.39186965660*t)
   saturn_a_0 = saturn_a_0 + 9.55490959574 * math.cos(0.00000000000 + 0.00000000000*t)
   local saturn_a_1 = 0.0

   saturn_a_1 = saturn_a_1 + 0.00014543221 * math.cos(0.53828819496 + 206.18554843720*t)
   saturn_a_1 = saturn_a_1 + 0.00014944585 * math.cos(1.01717765228 + 323.50541665740*t)
   saturn_a_1 = saturn_a_1 + 0.00016133051 * math.cos(1.54311529056 + 309.27832265580*t)
   saturn_a_1 = saturn_a_1 + 0.00017963494 * math.cos(1.85653949491 + 110.20632121940*t)
   saturn_a_1 = saturn_a_1 + 0.00019395929 * math.cos(3.30487092881 + 213.29909543800*t)
   saturn_a_1 = saturn_a_1 + 0.00020477409 * math.cos(5.54887034001 + 419.48464387520*t)
   saturn_a_1 = saturn_a_1 + 0.00115108584 * math.cos(1.31913907888 + 7.11354700080*t)
   saturn_a_1=saturn_a_1*t

   local saturn_a_2 = 0.0

   saturn_a_2 = saturn_a_2 + 0.00023754277 * math.cos(5.89931397638 + 7.11354700080*t)
   saturn_a_2=saturn_a_2*t*t

   saturn_a_2=saturn_a_2*t*t*t

   saturn_a_2=saturn_a_2*t*t*t*t

   saturn_a_2=saturn_a_2*t*t*t*t*t

   return saturn_a_0+saturn_a_1+saturn_a_2
end

function vsop87_micro.saturn_h(t)
   local saturn_h_0 = 0.0

   saturn_h_0 = saturn_h_0 + 0.00016256954 * math.cos(3.02503473426 + 735.87651353180*t)
   saturn_h_0 = saturn_h_0 + 0.00026520042 * math.cos(4.52478837442 + 206.18554843720*t)
   saturn_h_0 = saturn_h_0 + 0.00032981260 * math.cos(4.13131540179 + 110.20632121940*t)
   saturn_h_0 = saturn_h_0 + 0.00044695611 * math.cos(3.26423001884 + 419.48464387520*t)
   saturn_h_0 = saturn_h_0 + 0.00068728896 * math.cos(0.46796586407 + 103.09277421860*t)
   saturn_h_0 = saturn_h_0 + 0.00124537423 * math.cos(5.60295505720 + 213.29909543800*t)
   saturn_h_0 = saturn_h_0 + 0.00154553684 * math.cos(3.59447132230 + 7.11354700080*t)
   saturn_h_0 = saturn_h_0 + 0.00196887619 * math.cos(5.31528897782 + 529.69096509460*t)
   saturn_h_0 = saturn_h_0 + 0.05542964254 * math.cos(0.00000000000 + 0.00000000000*t)
   local saturn_h_1 = 0.0

   saturn_h_1 = saturn_h_1 + 0.00041501368 * math.cos(1.90158625579 + 7.11354700080*t)
   saturn_h_1 = saturn_h_1 + 0.00375593887 * math.cos(3.14159265359 + 0.00000000000*t)
   saturn_h_1=saturn_h_1*t

   local saturn_h_2 = 0.0

   saturn_h_2 = saturn_h_2 + 0.00031990236 * math.cos(3.14159265359 + 0.00000000000*t)
   saturn_h_2=saturn_h_2*t*t

   saturn_h_2=saturn_h_2*t*t*t

   saturn_h_2=saturn_h_2*t*t*t*t

   saturn_h_2=saturn_h_2*t*t*t*t*t

   return saturn_h_0+saturn_h_1+saturn_h_2
end

function vsop87_micro.saturn_k(t)
   local saturn_k_0 = 0.0

   saturn_k_0 = saturn_k_0 + 0.00012474180 * math.cos(1.09305375439 + 316.39186965660*t)
   saturn_k_0 = saturn_k_0 + 0.00016225491 * math.cos(1.42799166910 + 735.87651353180*t)
   saturn_k_0 = saturn_k_0 + 0.00027272443 * math.cos(3.00890883920 + 206.18554843720*t)
   saturn_k_0 = saturn_k_0 + 0.00031292923 * math.cos(5.75285406117 + 110.20632121940*t)
   saturn_k_0 = saturn_k_0 + 0.00045181084 * math.cos(1.69923556056 + 419.48464387520*t)
   saturn_k_0 = saturn_k_0 + 0.00065050158 * math.cos(5.14656256627 + 103.09277421860*t)
   saturn_k_0 = saturn_k_0 + 0.00126322249 * math.cos(0.86230560136 + 213.29909543800*t)
   saturn_k_0 = saturn_k_0 + 0.00155326496 * math.cos(5.16402515606 + 7.11354700080*t)
   saturn_k_0 = saturn_k_0 + 0.00197268763 * math.cos(0.59616692002 + 529.69096509460*t)
   saturn_k_0 = saturn_k_0 + 0.00296003595 * math.cos(3.14159265359 + 0.00000000000*t)
   local saturn_k_1 = 0.0

   saturn_k_1 = saturn_k_1 + 0.00041825363 * math.cos(3.46891617076 + 7.11354700080*t)
   saturn_k_1 = saturn_k_1 + 0.00529602626 * math.cos(3.14159265359 + 0.00000000000*t)
   saturn_k_1=saturn_k_1*t

   local saturn_k_2 = 0.0

   saturn_k_2 = saturn_k_2 + 0.00030928405 * math.cos(0.00000000000 + 0.00000000000*t)
   saturn_k_2=saturn_k_2*t*t

   saturn_k_2=saturn_k_2*t*t*t

   saturn_k_2=saturn_k_2*t*t*t*t

   saturn_k_2=saturn_k_2*t*t*t*t*t

   return saturn_k_0+saturn_k_1+saturn_k_2
end

function vsop87_micro.saturn_l(t)
   local saturn_l_0 = 0.0

   saturn_l_0 = saturn_l_0 + 0.00010143831 * math.cos(4.81233412109 + 846.08283475120*t)
   saturn_l_0 = saturn_l_0 + 0.00011053979 * math.cos(3.62184165245 + 1265.56747862640*t)
   saturn_l_0 = saturn_l_0 + 0.00012172375 * math.cos(2.85599565676 + 213.29909543800*t)
   saturn_l_0 = saturn_l_0 + 0.00012249591 * math.cos(5.17809413714 + 735.87651353180*t)
   saturn_l_0 = saturn_l_0 + 0.00012478276 * math.cos(4.43427037492 + 110.20632121940*t)
   saturn_l_0 = saturn_l_0 + 0.00012994507 * math.cos(5.98000018071 + 11.04570026390*t)
   saturn_l_0 = saturn_l_0 + 0.00013067003 * math.cos(4.44777987188 + 14.22709400160*t)
   saturn_l_0 = saturn_l_0 + 0.00014601573 * math.cos(1.56514416532 + 3.93215326310*t)
   saturn_l_0 = saturn_l_0 + 0.00014648090 * math.cos(0.80489143062 + 529.69096509460*t)
   saturn_l_0 = saturn_l_0 + 0.00016678500 * math.cos(0.46554866763 + 206.18554843720*t)
   saturn_l_0 = saturn_l_0 + 0.00026548090 * math.cos(3.88757160092 + 949.17560896980*t)
   saturn_l_0 = saturn_l_0 + 0.00031452707 * math.cos(5.46081855509 + 419.48464387520*t)
   saturn_l_0 = saturn_l_0 + 0.00071179955 * math.cos(4.15641496284 + 632.78373931320*t)
   saturn_l_0 = saturn_l_0 + 0.00149861955 * math.cos(0.26851062811 + 103.09277421860*t)
   saturn_l_0 = saturn_l_0 + 0.00259784547 * math.cos(4.43343036691 + 316.39186965660*t)
   saturn_l_0 = saturn_l_0 + 0.01411655077 * math.cos(4.58553469006 + 7.11354700080*t)
   saturn_l_0 = saturn_l_0 + 0.87401675650 * math.cos(0.00000000000 + 0.00000000000*t)
   local saturn_l_1 = 0.0

   saturn_l_1 = saturn_l_1 + 0.00010437362 * math.cos(2.74781046876 + 14.22709400160*t)
   saturn_l_1 = saturn_l_1 + 0.00014171331 * math.cos(1.28319722079 + 103.09277421860*t)
   saturn_l_1 = saturn_l_1 + 0.00563352798 * math.cos(2.88478561660 + 7.11354700080*t)
   saturn_l_1 = saturn_l_1 + 213.29909543800 * math.cos(0.00000000000 + 0.00000000000*t)
   saturn_l_1=saturn_l_1*t

   local saturn_l_2 = 0.0

   saturn_l_2 = saturn_l_2 + 0.00036659741 * math.cos(0.00000000000 + 0.00000000000*t)
   saturn_l_2 = saturn_l_2 + 0.00116235667 * math.cos(1.17971682406 + 7.11354700080*t)
   saturn_l_2=saturn_l_2*t*t

   local saturn_l_3 = 0.0

   saturn_l_3 = saturn_l_3 + 0.00016010484 * math.cos(5.73932776276 + 7.11354700080*t)
   saturn_l_3=saturn_l_3*t*t*t

   saturn_l_3=saturn_l_3*t*t*t*t

   saturn_l_3=saturn_l_3*t*t*t*t*t

   return saturn_l_0+saturn_l_1+saturn_l_2+saturn_l_3
end

function vsop87_micro.saturn_p(t)
   local saturn_p_0 = 0.0

   saturn_p_0 = saturn_p_0 + 0.01989147301 * math.cos(0.00000000000 + 0.00000000000*t)
   local saturn_p_1 = 0.0

   saturn_p_1 = saturn_p_1 + 0.00059439766 * math.cos(0.00000000000 + 0.00000000000*t)
   saturn_p_1=saturn_p_1*t

   saturn_p_1=saturn_p_1*t*t

   saturn_p_1=saturn_p_1*t*t*t

   saturn_p_1=saturn_p_1*t*t*t*t

   return saturn_p_0+saturn_p_1
end

function vsop87_micro.saturn_q(t)
   local saturn_q_0 = 0.0

   saturn_q_0 = saturn_q_0 + 0.00871747436 * math.cos(3.14159265359 + 0.00000000000*t)
   local saturn_q_1 = 0.0

   saturn_q_1 = saturn_q_1 + 0.00080171499 * math.cos(0.00000000000 + 0.00000000000*t)
   saturn_q_1=saturn_q_1*t

   saturn_q_1=saturn_q_1*t*t

   saturn_q_1=saturn_q_1*t*t*t

   saturn_q_1=saturn_q_1*t*t*t*t

   return saturn_q_0+saturn_q_1
end

function vsop87_micro.uranus_a(t)
   local uranus_a_0 = 0.0

   uranus_a_0 = uranus_a_0 + 0.00010515353 * math.cos(1.70301075392 + 479.28838891550*t)
   uranus_a_0 = uranus_a_0 + 0.00011013560 * math.cos(3.54307351200 + 835.03713448730*t)
   uranus_a_0 = uranus_a_0 + 0.00011020208 * math.cos(3.19000442755 + 3.93215326310*t)
   uranus_a_0 = uranus_a_0 + 0.00011334332 * math.cos(5.97963560630 + 316.39186965660*t)
   uranus_a_0 = uranus_a_0 + 0.00012687891 * math.cos(1.58735697797 + 71.81265315070*t)
   uranus_a_0 = uranus_a_0 + 0.00012998808 * math.cos(2.85105295526 + 127.47179660680*t)
   uranus_a_0 = uranus_a_0 + 0.00013077660 * math.cos(4.23675214362 + 381.61224066830*t)
   uranus_a_0 = uranus_a_0 + 0.00014478423 * math.cos(4.94983129790 + 131.40394986990*t)
   uranus_a_0 = uranus_a_0 + 0.00014762015 * math.cos(1.55212266318 + 145.63104387150*t)
   uranus_a_0 = uranus_a_0 + 0.00015159970 * math.cos(2.76239188887 + 137.03302416240*t)
   uranus_a_0 = uranus_a_0 + 0.00015930221 * math.cos(3.73134883667 + 140.00196957900*t)
   uranus_a_0 = uranus_a_0 + 0.00016880093 * math.cos(0.84798058480 + 183.24281464750*t)
   uranus_a_0 = uranus_a_0 + 0.00018767795 * math.cos(4.43338724151 + 149.56319713460*t)
   uranus_a_0 = uranus_a_0 + 0.00019478270 * math.cos(2.10041390560 + 1514.29129671650*t)
   uranus_a_0 = uranus_a_0 + 0.00020141604 * math.cos(2.67711439002 + 305.34616939270*t)
   uranus_a_0 = uranus_a_0 + 0.00021391939 * math.cos(0.02845030511 + 340.77089204480*t)
   uranus_a_0 = uranus_a_0 + 0.00021559916 * math.cos(3.58530830565 + 554.06998748280*t)
   uranus_a_0 = uranus_a_0 + 0.00022997542 * math.cos(1.53103267798 + 447.79581952650*t)
   uranus_a_0 = uranus_a_0 + 0.00023034340 * math.cos(4.41961897942 + 462.02291352810*t)
   uranus_a_0 = uranus_a_0 + 0.00028704578 * math.cos(1.39041828806 + 35.16409022120*t)
   uranus_a_0 = uranus_a_0 + 0.00029696881 * math.cos(0.67903436338 + 146.59425171800*t)
   uranus_a_0 = uranus_a_0 + 0.00032917894 * math.cos(0.70483800006 + 2.96894541660*t)
   uranus_a_0 = uranus_a_0 + 0.00034892404 * math.cos(5.75418250485 + 909.81873305460*t)
   uranus_a_0 = uranus_a_0 + 0.00036972301 * math.cos(0.17475135689 + 36.64856292950*t)
   uranus_a_0 = uranus_a_0 + 0.00045935079 * math.cos(4.64286711150 + 202.25339517410*t)
   uranus_a_0 = uranus_a_0 + 0.00048838076 * math.cos(3.97801797335 + 10138.50394764370*t)
   uranus_a_0 = uranus_a_0 + 0.00050469671 * math.cos(1.89418222433 + 415.55249061210*t)
   uranus_a_0 = uranus_a_0 + 0.00051844499 * math.cos(2.55536031544 + 6208.29425142410*t)
   uranus_a_0 = uranus_a_0 + 0.00053293996 * math.cos(0.50995644390 + 109.94568878850*t)
   uranus_a_0 = uranus_a_0 + 0.00058841165 * math.cos(2.48705383463 + 453.42489381900*t)
   uranus_a_0 = uranus_a_0 + 0.00061920970 * math.cos(3.45818087920 + 456.39383923560*t)
   uranus_a_0 = uranus_a_0 + 0.00090078269 * math.cos(0.33585778387 + 73.29712585900*t)
   uranus_a_0 = uranus_a_0 + 0.00102755162 * math.cos(0.89451486294 + 351.81659230870*t)
   uranus_a_0 = uranus_a_0 + 0.00120436873 * math.cos(0.15931700196 + 277.03499374140*t)
   uranus_a_0 = uranus_a_0 + 0.00124336026 * math.cos(1.34101096123 + 11.04570026390*t)
   uranus_a_0 = uranus_a_0 + 0.00148020073 * math.cos(4.84763548983 + 63.73589830340*t)
   uranus_a_0 = uranus_a_0 + 0.00313720406 * math.cos(2.19852745462 + 74.78159856730*t)
   uranus_a_0 = uranus_a_0 + 0.00365190162 * math.cos(1.75064255586 + 984.60033162190*t)
   uranus_a_0 = uranus_a_0 + 0.00391818405 * math.cos(2.05935807638 + 1.48447270830*t)
   uranus_a_0 = uranus_a_0 + 0.00406413575 * math.cos(5.21303965129 + 380.12776796000*t)
   uranus_a_0 = uranus_a_0 + 0.02068375131 * math.cos(1.67626096637 + 138.51749687070*t)
   uranus_a_0 = uranus_a_0 + 0.08030476240 * math.cos(1.40140954803 + 454.90936652730*t)
   uranus_a_0 = uranus_a_0 + 19.21844606178 * math.cos(0.00000000000 + 0.00000000000*t)
   local uranus_a_1 = 0.0

   uranus_a_1 = uranus_a_1 + 0.00011411513 * math.cos(0.08109503303 + 63.73589830340*t)
   uranus_a_1 = uranus_a_1 + 0.00012155731 * math.cos(5.07129450662 + 351.81659230870*t)
   uranus_a_1 = uranus_a_1 + 0.00018428974 * math.cos(0.90876002089 + 984.60033162190*t)
   uranus_a_1 = uranus_a_1 + 0.00018892174 * math.cos(5.14166599806 + 11.04570026390*t)
   uranus_a_1=uranus_a_1*t

   uranus_a_1=uranus_a_1*t*t

   uranus_a_1=uranus_a_1*t*t*t

   uranus_a_1=uranus_a_1*t*t*t*t

   uranus_a_1=uranus_a_1*t*t*t*t*t

   return uranus_a_0+uranus_a_1
end

function vsop87_micro.uranus_h(t)
   local uranus_h_0 = 0.0

   uranus_h_0 = uranus_h_0 + 0.00013315732 * math.cos(5.66170904346 + 1059.38193018920*t)
   uranus_h_0 = uranus_h_0 + 0.00014988819 * math.cos(5.47840346834 + 2.96894541660*t)
   uranus_h_0 = uranus_h_0 + 0.00025966791 * math.cos(3.35174050484 + 11.04570026390*t)
   uranus_h_0 = uranus_h_0 + 0.00028214307 * math.cos(4.05785385739 + 63.73589830340*t)
   uranus_h_0 = uranus_h_0 + 0.00061308823 * math.cos(5.58629337039 + 213.29909543800*t)
   uranus_h_0 = uranus_h_0 + 0.00116288289 * math.cos(3.77434233468 + 380.12776796000*t)
   uranus_h_0 = uranus_h_0 + 0.00136132837 * math.cos(3.91136489012 + 74.78159856730*t)
   uranus_h_0 = uranus_h_0 + 0.00210407426 * math.cos(0.42744224313 + 1.48447270830*t)
   uranus_h_0 = uranus_h_0 + 0.00274676149 * math.cos(5.31178834743 + 529.69096509460*t)
   uranus_h_0 = uranus_h_0 + 0.00563791307 * math.cos(0.00000000000 + 0.00000000000*t)
   local uranus_h_1 = 0.0

   uranus_h_1 = uranus_h_1 + 0.00074964350 * math.cos(3.14159265359 + 0.00000000000*t)
   uranus_h_1=uranus_h_1*t

   uranus_h_1=uranus_h_1*t*t

   uranus_h_1=uranus_h_1*t*t*t

   uranus_h_1=uranus_h_1*t*t*t*t

   return uranus_h_0+uranus_h_1
end

function vsop87_micro.uranus_k(t)
   local uranus_k_0 = 0.0

   uranus_k_0 = uranus_k_0 + 0.00013311384 * math.cos(0.94943515364 + 1059.38193018920*t)
   uranus_k_0 = uranus_k_0 + 0.00015021315 * math.cos(0.76594621932 + 2.96894541660*t)
   uranus_k_0 = uranus_k_0 + 0.00025955084 * math.cos(4.91660280043 + 11.04570026390*t)
   uranus_k_0 = uranus_k_0 + 0.00028383762 * math.cos(2.48454325825 + 63.73589830340*t)
   uranus_k_0 = uranus_k_0 + 0.00061367654 * math.cos(0.87377399008 + 213.29909543800*t)
   uranus_k_0 = uranus_k_0 + 0.00116379910 * math.cos(2.20321839185 + 380.12776796000*t)
   uranus_k_0 = uranus_k_0 + 0.00136013862 * math.cos(5.48189691557 + 74.78159856730*t)
   uranus_k_0 = uranus_k_0 + 0.00209611522 * math.cos(1.99913587697 + 1.48447270830*t)
   uranus_k_0 = uranus_k_0 + 0.00274532742 * math.cos(0.59960944961 + 529.69096509460*t)
   uranus_k_0 = uranus_k_0 + 0.04595132376 * math.cos(3.14159265359 + 0.00000000000*t)
   local uranus_k_1 = 0.0

   uranus_k_1 = uranus_k_1 + 0.00018344115 * math.cos(0.00000000000 + 0.00000000000*t)
   uranus_k_1=uranus_k_1*t

   uranus_k_1=uranus_k_1*t*t

   uranus_k_1=uranus_k_1*t*t*t

   uranus_k_1=uranus_k_1*t*t*t*t

   return uranus_k_0+uranus_k_1
end

function vsop87_micro.uranus_l(t)
   local uranus_l_0 = 0.0

   uranus_l_0 = uranus_l_0 + 0.00012930477 * math.cos(1.77673119432 + 277.03499374140*t)
   uranus_l_0 = uranus_l_0 + 0.00013047912 * math.cos(1.74402938964 + 36.64856292950*t)
   uranus_l_0 = uranus_l_0 + 0.00014437567 * math.cos(1.91368590597 + 73.29712585900*t)
   uranus_l_0 = uranus_l_0 + 0.00014543819 * math.cos(4.73644575760 + 3.93215326310*t)
   uranus_l_0 = uranus_l_0 + 0.00016468518 * math.cos(5.36717518314 + 63.73589830340*t)
   uranus_l_0 = uranus_l_0 + 0.00017129222 * math.cos(0.18104766503 + 984.60033162190*t)
   uranus_l_0 = uranus_l_0 + 0.00018867012 * math.cos(5.43708395337 + 529.69096509460*t)
   uranus_l_0 = uranus_l_0 + 0.00059722283 * math.cos(2.84455045894 + 11.04570026390*t)
   uranus_l_0 = uranus_l_0 + 0.00061937506 * math.cos(2.26973190883 + 2.96894541660*t)
   uranus_l_0 = uranus_l_0 + 0.00075571550 * math.cos(0.10254572902 + 138.51749687070*t)
   uranus_l_0 = uranus_l_0 + 0.00341045477 * math.cos(6.11377091373 + 454.90936652730*t)
   uranus_l_0 = uranus_l_0 + 0.01503941337 * math.cos(3.62721239702 + 1.48447270830*t)
   uranus_l_0 = uranus_l_0 + 5.48129387159 * math.cos(0.00000000000 + 0.00000000000*t)
   local uranus_l_1 = 0.0

   uranus_l_1 = uranus_l_1 + 0.00024451511 * math.cos(1.71261369505 + 1.48447270830*t)
   uranus_l_1 = uranus_l_1 + 74.78159856730 * math.cos(0.00000000000 + 0.00000000000*t)
   uranus_l_1=uranus_l_1*t

   uranus_l_1=uranus_l_1*t*t

   uranus_l_1=uranus_l_1*t*t*t

   uranus_l_1=uranus_l_1*t*t*t*t

   uranus_l_1=uranus_l_1*t*t*t*t*t

   return uranus_l_0+uranus_l_1
end

function vsop87_micro.uranus_p(t)
   local uranus_p_0 = 0.0

   uranus_p_0 = uranus_p_0 + 0.00648617008 * math.cos(0.00000000000 + 0.00000000000*t)
   local uranus_p_1 = 0.0

   uranus_p_1 = uranus_p_1 + 0.00011744733 * math.cos(3.14159265359 + 0.00000000000*t)
   uranus_p_1=uranus_p_1*t

   uranus_p_1=uranus_p_1*t*t

   uranus_p_1=uranus_p_1*t*t*t

   return uranus_p_0+uranus_p_1
end

function vsop87_micro.uranus_q(t)
   local uranus_q_0 = 0.0

   uranus_q_0 = uranus_q_0 + 0.00185915075 * math.cos(0.00000000000 + 0.00000000000*t)
   local uranus_q_1 = 0.0

   uranus_q_1 = uranus_q_1 + 0.00012449382 * math.cos(3.14159265359 + 0.00000000000*t)
   uranus_q_1=uranus_q_1*t

   uranus_q_1=uranus_q_1*t*t

   uranus_q_1=uranus_q_1*t*t*t

   return uranus_q_0+uranus_q_1
end

function vsop87_micro.venus_a(t)
   local venus_a_0 = 0.0

   venus_a_0 = venus_a_0 + 0.72332981996 * math.cos(0.00000000000 + 0.00000000000*t)
   venus_a_0=venus_a_0*t

   venus_a_0=venus_a_0*t*t

   return venus_a_0
end

function vsop87_micro.venus_h(t)
   local venus_h_0 = 0.0

   venus_h_0 = venus_h_0 + 0.00506684726 * math.cos(0.00000000000 + 0.00000000000*t)
   local venus_h_1 = 0.0

   venus_h_1 = venus_h_1 + 0.00036121239 * math.cos(3.14159265359 + 0.00000000000*t)
   venus_h_1=venus_h_1*t

   venus_h_1=venus_h_1*t*t

   venus_h_1=venus_h_1*t*t*t

   venus_h_1=venus_h_1*t*t*t*t

   venus_h_1=venus_h_1*t*t*t*t*t

   return venus_h_0+venus_h_1
end

function vsop87_micro.venus_k(t)
   local venus_k_0 = 0.0

   venus_k_0 = venus_k_0 + 0.00449282133 * math.cos(3.14159265359 + 0.00000000000*t)
   local venus_k_1 = 0.0

   venus_k_1 = venus_k_1 + 0.00031259019 * math.cos(0.00000000000 + 0.00000000000*t)
   venus_k_1=venus_k_1*t

   venus_k_1=venus_k_1*t*t

   venus_k_1=venus_k_1*t*t*t

   venus_k_1=venus_k_1*t*t*t*t

   venus_k_1=venus_k_1*t*t*t*t*t

   return venus_k_0+venus_k_1
end

function vsop87_micro.venus_l(t)
   local venus_l_0 = 0.0

   venus_l_0 = venus_l_0 + 3.17614669689 * math.cos(0.00000000000 + 0.00000000000*t)
   local venus_l_1 = 0.0

   venus_l_1 = venus_l_1 + 10213.28554621100 * math.cos(0.00000000000 + 0.00000000000*t)
   venus_l_1=venus_l_1*t

   venus_l_1=venus_l_1*t*t

   venus_l_1=venus_l_1*t*t*t

   return venus_l_0+venus_l_1
end

function vsop87_micro.venus_p(t)
   local venus_p_0 = 0.0

   venus_p_0 = venus_p_0 + 0.02882285775 * math.cos(0.00000000000 + 0.00000000000*t)
   local venus_p_1 = 0.0

   venus_p_1 = venus_p_1 + 0.00040384791 * math.cos(3.14159265359 + 0.00000000000*t)
   venus_p_1=venus_p_1*t

   venus_p_1=venus_p_1*t*t

   venus_p_1=venus_p_1*t*t*t

   venus_p_1=venus_p_1*t*t*t*t

   venus_p_1=venus_p_1*t*t*t*t*t

   return venus_p_0+venus_p_1
end

function vsop87_micro.venus_q(t)
   local venus_q_0 = 0.0

   venus_q_0 = venus_q_0 + 0.00682410142 * math.cos(0.00000000000 + 0.00000000000*t)
   local venus_q_1 = 0.0

   venus_q_1 = venus_q_1 + 0.00138133826 * math.cos(0.00000000000 + 0.00000000000*t)
   venus_q_1=venus_q_1*t

   venus_q_1=venus_q_1*t*t

   venus_q_1=venus_q_1*t*t*t

   venus_q_1=venus_q_1*t*t*t*t

   return venus_q_0+venus_q_1;
end

return vsop87_micro
