//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

package vsop87_pico

import ("math")

func GetMercury(t float64) [6]float64{
   var temp [6]float64
   temp[0]=mercury_a(t)
   temp[1]=mercury_l(t)
   temp[2]=mercury_k(t)
   temp[3]=mercury_h(t)
   temp[4]=mercury_q(t)
   temp[5]=mercury_p(t)

   return temp
}

func GetVenus(t float64) [6]float64{
   var temp [6]float64
   temp[0]=venus_a(t)
   temp[1]=venus_l(t)
   temp[2]=venus_k(t)
   temp[3]=venus_h(t)
   temp[4]=venus_q(t)
   temp[5]=venus_p(t)

   return temp
}

func GetEmb(t float64) [6]float64{
   var temp [6]float64
   temp[0]=emb_a(t)
   temp[1]=emb_l(t)
   temp[2]=emb_k(t)
   temp[3]=emb_h(t)
   temp[4]=emb_q(t)
   temp[5]=emb_p(t)

   return temp
}

func GetMars(t float64) [6]float64{
   var temp [6]float64
   temp[0]=mars_a(t)
   temp[1]=mars_l(t)
   temp[2]=mars_k(t)
   temp[3]=mars_h(t)
   temp[4]=mars_q(t)
   temp[5]=mars_p(t)

   return temp
}

func GetJupiter(t float64) [6]float64{
   var temp [6]float64
   temp[0]=jupiter_a(t)
   temp[1]=jupiter_l(t)
   temp[2]=jupiter_k(t)
   temp[3]=jupiter_h(t)
   temp[4]=jupiter_q(t)
   temp[5]=jupiter_p(t)

   return temp
}

func GetSaturn(t float64) [6]float64{
   var temp [6]float64
   temp[0]=saturn_a(t)
   temp[1]=saturn_l(t)
   temp[2]=saturn_k(t)
   temp[3]=saturn_h(t)
   temp[4]=saturn_q(t)
   temp[5]=saturn_p(t)

   return temp
}

func GetUranus(t float64) [6]float64{
   var temp [6]float64
   temp[0]=uranus_a(t)
   temp[1]=uranus_l(t)
   temp[2]=uranus_k(t)
   temp[3]=uranus_h(t)
   temp[4]=uranus_q(t)
   temp[5]=uranus_p(t)

   return temp
}

func GetNeptune(t float64) [6]float64{
   var temp [6]float64
   temp[0]=neptune_a(t)
   temp[1]=neptune_l(t)
   temp[2]=neptune_k(t)
   temp[3]=neptune_h(t)
   temp[4]=neptune_q(t)
   temp[5]=neptune_p(t)

   return temp
}

func venus_p(t float64) float64{
   var venus_p_0 float64 = 0.0

   venus_p_0 +=      0.02882285775 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return venus_p_0
}

func venus_q(t float64) float64{
   return 0
}

func venus_h(t float64) float64{
   return 0
}

func venus_k(t float64) float64{
   return 0
}

func venus_l(t float64) float64{
   var venus_l_1 float64 = 0.0

   venus_l_1 +=  10213.28554621100 * math.Cos( 0.00000000000 +        0.00000000000*t)
   venus_l_1=venus_l_1*t

   var venus_l_0 float64 = 0.0

   venus_l_0 +=      3.17614669689 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return venus_l_1+venus_l_0
}

func venus_a(t float64) float64{
   var venus_a_0 float64 = 0.0

   venus_a_0 +=      0.72332981996 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return venus_a_0
}

func uranus_p(t float64) float64{
   return 0
}

func uranus_q(t float64) float64{
   return 0
}

func uranus_h(t float64) float64{
   return 0
}

func uranus_k(t float64) float64{
   var uranus_k_0 float64 = 0.0

   uranus_k_0 +=      0.04595132376 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return uranus_k_0
}

func uranus_l(t float64) float64{
   var uranus_l_1 float64 = 0.0

   uranus_l_1 +=     74.78159856730 * math.Cos( 0.00000000000 +        0.00000000000*t)
   uranus_l_1=uranus_l_1*t

   var uranus_l_0 float64 = 0.0

   uranus_l_0 +=      0.01503941337 * math.Cos( 3.62721239702 +        1.48447270830*t)
   uranus_l_0 +=      5.48129387159 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return uranus_l_1+uranus_l_0
}

func uranus_a(t float64) float64{
   var uranus_a_0 float64 = 0.0

   uranus_a_0 +=      0.02068375131 * math.Cos( 1.67626096637 +      138.51749687070*t)
   uranus_a_0 +=      0.08030476240 * math.Cos( 1.40140954803 +      454.90936652730*t)
   uranus_a_0 +=     19.21844606178 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return uranus_a_0
}

func saturn_p(t float64) float64{
   var saturn_p_0 float64 = 0.0

   saturn_p_0 +=      0.01989147301 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return saturn_p_0
}

func saturn_q(t float64) float64{
   return 0
}

func saturn_h(t float64) float64{
   var saturn_h_0 float64 = 0.0

   saturn_h_0 +=      0.05542964254 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return saturn_h_0
}

func saturn_k(t float64) float64{
   return 0
}

func saturn_l(t float64) float64{
   var saturn_l_1 float64 = 0.0

   saturn_l_1 +=    213.29909543800 * math.Cos( 0.00000000000 +        0.00000000000*t)
   saturn_l_1=saturn_l_1*t

   var saturn_l_0 float64 = 0.0

   saturn_l_0 +=      0.01411655077 * math.Cos( 4.58553469006 +        7.11354700080*t)
   saturn_l_0 +=      0.87401675650 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return saturn_l_1+saturn_l_0
}

func saturn_a(t float64) float64{
   var saturn_a_0 float64 = 0.0

   saturn_a_0 +=      0.03363448736 * math.Cos( 6.00973673460 +      316.39186965660*t)
   saturn_a_0 +=      9.55490959574 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return saturn_a_0
}

func neptune_p(t float64) float64{
   var neptune_p_0 float64 = 0.0

   neptune_p_0 +=      0.01151683985 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return neptune_p_0
}

func neptune_q(t float64) float64{
   var neptune_q_0 float64 = 0.0

   neptune_q_0 +=      0.01029147819 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return neptune_q_0
}

func neptune_h(t float64) float64{
   return 0
}

func neptune_k(t float64) float64{
   return 0
}

func neptune_l(t float64) float64{
   var neptune_l_1 float64 = 0.0

   neptune_l_1 +=     38.13303563780 * math.Cos( 0.00000000000 +        0.00000000000*t)
   neptune_l_1=neptune_l_1*t

   var neptune_l_0 float64 = 0.0

   neptune_l_0 +=      0.01017628072 * math.Cos( 0.48586478491 +        1.48447270830*t)
   neptune_l_0 +=      5.31188628676 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return neptune_l_1+neptune_l_0
}

func neptune_a(t float64) float64{
   var neptune_a_0 float64 = 0.0

   neptune_a_0 +=      0.03597274341 * math.Cos( 1.84552690821 +      175.16605980020*t)
   neptune_a_0 +=      0.14818172119 * math.Cos( 1.57105922541 +      491.55792945680*t)
   neptune_a_0 +=     30.11038686942 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return neptune_a_0
}

func mercury_p(t float64) float64{
   var mercury_p_0 float64 = 0.0

   mercury_p_0 +=      0.04563550461 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_p_0
}

func mercury_q(t float64) float64{
   var mercury_q_0 float64 = 0.0

   mercury_q_0 +=      0.04061563384 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_q_0
}

func mercury_h(t float64) float64{
   var mercury_h_0 float64 = 0.0

   mercury_h_0 +=      0.20072331368 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_h_0
}

func mercury_k(t float64) float64{
   var mercury_k_0 float64 = 0.0

   mercury_k_0 +=      0.04466059760 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_k_0
}

func mercury_l(t float64) float64{
   var mercury_l_1 float64 = 0.0

   mercury_l_1 +=  26087.90314157420 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mercury_l_1=mercury_l_1*t

   var mercury_l_0 float64 = 0.0

   mercury_l_0 +=      4.40260884240 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_l_1+mercury_l_0
}

func mercury_a(t float64) float64{
   var mercury_a_0 float64 = 0.0

   mercury_a_0 +=      0.38709830982 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_a_0
}

func mars_p(t float64) float64{
   var mars_p_0 float64 = 0.0

   mars_p_0 +=      0.01228449307 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_p_0
}

func mars_q(t float64) float64{
   var mars_q_0 float64 = 0.0

   mars_q_0 +=      0.01047042574 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_q_0
}

func mars_h(t float64) float64{
   var mars_h_0 float64 = 0.0

   mars_h_0 +=      0.03789973236 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return mars_h_0
}

func mars_k(t float64) float64{
   var mars_k_0 float64 = 0.0

   mars_k_0 +=      0.08536560252 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_k_0
}

func mars_l(t float64) float64{
   var mars_l_1 float64 = 0.0

   mars_l_1 +=   3340.61242669981 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_l_1=mars_l_1*t

   var mars_l_0 float64 = 0.0

   mars_l_0 +=      6.20347611291 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_l_1+mars_l_0
}

func mars_a(t float64) float64{
   var mars_a_0 float64 = 0.0

   mars_a_0 +=      1.52367934191 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_a_0
}

func jupiter_p(t float64) float64{
   var jupiter_p_0 float64 = 0.0

   jupiter_p_0 +=      0.01118377157 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_p_0
}

func jupiter_q(t float64) float64{
   return 0
}

func jupiter_h(t float64) float64{
   var jupiter_h_0 float64 = 0.0

   jupiter_h_0 +=      0.01200385748 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_h_0
}

func jupiter_k(t float64) float64{
   var jupiter_k_0 float64 = 0.0

   jupiter_k_0 +=      0.04698572124 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_k_0
}

func jupiter_l(t float64) float64{
   var jupiter_l_1 float64 = 0.0

   jupiter_l_1 +=    529.69096509460 * math.Cos( 0.00000000000 +        0.00000000000*t)
   jupiter_l_1=jupiter_l_1*t

   var jupiter_l_0 float64 = 0.0

   jupiter_l_0 +=      0.59954649739 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_l_1+jupiter_l_0
}

func jupiter_a(t float64) float64{
   var jupiter_a_0 float64 = 0.0

   jupiter_a_0 +=      5.20260319132 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_a_0
}

func emb_p(t float64) float64{
   return 0
}

func emb_q(t float64) float64{
   return 0
}

func emb_h(t float64) float64{
   var emb_h_0 float64 = 0.0

   emb_h_0 +=      0.01628447663 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return emb_h_0
}

func emb_k(t float64) float64{
   return 0
}

func emb_l(t float64) float64{
   var emb_l_1 float64 = 0.0

   emb_l_1 +=   6283.07584999140 * math.Cos( 0.00000000000 +        0.00000000000*t)
   emb_l_1=emb_l_1*t

   var emb_l_0 float64 = 0.0

   emb_l_0 +=      1.75347045953 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return emb_l_1+emb_l_0
}

func emb_a(t float64) float64{
   var emb_a_0 float64 = 0.0

   emb_a_0 +=      1.00000101778 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return emb_a_0
}

