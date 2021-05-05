//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

import Foundation

class vsop87_pico_velocities{
   public static func getMercury(t: Double) -> Array<Double> {
      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
      temp[0]=mercury_a(t:t) / 365250.0
      temp[1]=mercury_l(t:t) / 365250.0
      temp[2]=mercury_k(t:t) / 365250.0
      temp[3]=mercury_h(t:t) / 365250.0
      temp[4]=mercury_q(t:t) / 365250.0
      temp[5]=mercury_p(t:t) / 365250.0

      return temp
   }

   public static func getVenus(t: Double) -> Array<Double> {
      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
      temp[0]=venus_a(t:t) / 365250.0
      temp[1]=venus_l(t:t) / 365250.0
      temp[2]=venus_k(t:t) / 365250.0
      temp[3]=venus_h(t:t) / 365250.0
      temp[4]=venus_q(t:t) / 365250.0
      temp[5]=venus_p(t:t) / 365250.0

      return temp
   }

   public static func getEmb(t: Double) -> Array<Double> {
      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
      temp[0]=emb_a(t:t) / 365250.0
      temp[1]=emb_l(t:t) / 365250.0
      temp[2]=emb_k(t:t) / 365250.0
      temp[3]=emb_h(t:t) / 365250.0
      temp[4]=emb_q(t:t) / 365250.0
      temp[5]=emb_p(t:t) / 365250.0

      return temp
   }

   public static func getMars(t: Double) -> Array<Double> {
      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
      temp[0]=mars_a(t:t) / 365250.0
      temp[1]=mars_l(t:t) / 365250.0
      temp[2]=mars_k(t:t) / 365250.0
      temp[3]=mars_h(t:t) / 365250.0
      temp[4]=mars_q(t:t) / 365250.0
      temp[5]=mars_p(t:t) / 365250.0

      return temp
   }

   public static func getJupiter(t: Double) -> Array<Double> {
      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
      temp[0]=jupiter_a(t:t) / 365250.0
      temp[1]=jupiter_l(t:t) / 365250.0
      temp[2]=jupiter_k(t:t) / 365250.0
      temp[3]=jupiter_h(t:t) / 365250.0
      temp[4]=jupiter_q(t:t) / 365250.0
      temp[5]=jupiter_p(t:t) / 365250.0

      return temp
   }

   public static func getSaturn(t: Double) -> Array<Double> {
      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
      temp[0]=saturn_a(t:t) / 365250.0
      temp[1]=saturn_l(t:t) / 365250.0
      temp[2]=saturn_k(t:t) / 365250.0
      temp[3]=saturn_h(t:t) / 365250.0
      temp[4]=saturn_q(t:t) / 365250.0
      temp[5]=saturn_p(t:t) / 365250.0

      return temp
   }

   public static func getUranus(t: Double) -> Array<Double> {
      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
      temp[0]=uranus_a(t:t) / 365250.0
      temp[1]=uranus_l(t:t) / 365250.0
      temp[2]=uranus_k(t:t) / 365250.0
      temp[3]=uranus_h(t:t) / 365250.0
      temp[4]=uranus_q(t:t) / 365250.0
      temp[5]=uranus_p(t:t) / 365250.0

      return temp
   }

   public static func getNeptune(t: Double) -> Array<Double> {
      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
      temp[0]=neptune_a(t:t) / 365250.0
      temp[1]=neptune_l(t:t) / 365250.0
      temp[2]=neptune_k(t:t) / 365250.0
      temp[3]=neptune_h(t:t) / 365250.0
      temp[4]=neptune_q(t:t) / 365250.0
      temp[5]=neptune_p(t:t) / 365250.0

      return temp
   }

   static func venus_p(t:Double)->Double{
      var venus_p_0: Double = 0.0

      venus_p_0 += -1 * 0.02882285775 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return venus_p_0
   }

   static func venus_q(t:Double)->Double{
      return 0
   }

   static func venus_h(t:Double)->Double{
      return 0
   }

   static func venus_k(t:Double)->Double{
      return 0
   }

   static func venus_l(t:Double)->Double{
      var venus_l_1: Double = 0.0

      venus_l_1 += pow(t,0) * 1 * 10213.28554621100 * cos(0.00000000000 + 0.00000000000*t) - pow(t,1) * 10213.28554621100 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)

      var venus_l_0: Double = 0.0

      venus_l_0 += -1 * 3.17614669689 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return venus_l_1+venus_l_0
   }

   static func venus_a(t:Double)->Double{
      var venus_a_0: Double = 0.0

      venus_a_0 += -1 * 0.72332981996 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return venus_a_0
   }

   static func uranus_p(t:Double)->Double{
      return 0
   }

   static func uranus_q(t:Double)->Double{
      return 0
   }

   static func uranus_h(t:Double)->Double{
      return 0
   }

   static func uranus_k(t:Double)->Double{
      var uranus_k_0: Double = 0.0

      uranus_k_0 += -1 * 0.04595132376 * 0.00000000000 * sin(3.14159265359 + 0.00000000000*t)
      return uranus_k_0
   }

   static func uranus_l(t:Double)->Double{
      var uranus_l_1: Double = 0.0

      uranus_l_1 += pow(t,0) * 1 * 74.78159856730 * cos(0.00000000000 + 0.00000000000*t) - pow(t,1) * 74.78159856730 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)

      var uranus_l_0: Double = 0.0

      uranus_l_0 += -1 * 0.01503941337 * 1.48447270830 * sin(3.62721239702 + 1.48447270830*t)
      uranus_l_0 += -1 * 5.48129387159 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return uranus_l_1+uranus_l_0
   }

   static func uranus_a(t:Double)->Double{
      var uranus_a_0: Double = 0.0

      uranus_a_0 += -1 * 0.02068375131 * 138.51749687070 * sin(1.67626096637 + 138.51749687070*t)
      uranus_a_0 += -1 * 0.08030476240 * 454.90936652730 * sin(1.40140954803 + 454.90936652730*t)
      uranus_a_0 += -1 * 19.21844606178 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return uranus_a_0
   }

   static func saturn_p(t:Double)->Double{
      var saturn_p_0: Double = 0.0

      saturn_p_0 += -1 * 0.01989147301 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return saturn_p_0
   }

   static func saturn_q(t:Double)->Double{
      return 0
   }

   static func saturn_h(t:Double)->Double{
      var saturn_h_0: Double = 0.0

      saturn_h_0 += -1 * 0.05542964254 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return saturn_h_0
   }

   static func saturn_k(t:Double)->Double{
      return 0
   }

   static func saturn_l(t:Double)->Double{
      var saturn_l_1: Double = 0.0

      saturn_l_1 += pow(t,0) * 1 * 213.29909543800 * cos(0.00000000000 + 0.00000000000*t) - pow(t,1) * 213.29909543800 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)

      var saturn_l_0: Double = 0.0

      saturn_l_0 += -1 * 0.01411655077 * 7.11354700080 * sin(4.58553469006 + 7.11354700080*t)
      saturn_l_0 += -1 * 0.87401675650 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return saturn_l_1+saturn_l_0
   }

   static func saturn_a(t:Double)->Double{
      var saturn_a_0: Double = 0.0

      saturn_a_0 += -1 * 0.03363448736 * 316.39186965660 * sin(6.00973673460 + 316.39186965660*t)
      saturn_a_0 += -1 * 9.55490959574 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return saturn_a_0
   }

   static func neptune_p(t:Double)->Double{
      var neptune_p_0: Double = 0.0

      neptune_p_0 += -1 * 0.01151683985 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return neptune_p_0
   }

   static func neptune_q(t:Double)->Double{
      var neptune_q_0: Double = 0.0

      neptune_q_0 += -1 * 0.01029147819 * 0.00000000000 * sin(3.14159265359 + 0.00000000000*t)
      return neptune_q_0
   }

   static func neptune_h(t:Double)->Double{
      return 0
   }

   static func neptune_k(t:Double)->Double{
      return 0
   }

   static func neptune_l(t:Double)->Double{
      var neptune_l_1: Double = 0.0

      neptune_l_1 += pow(t,0) * 1 * 38.13303563780 * cos(0.00000000000 + 0.00000000000*t) - pow(t,1) * 38.13303563780 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)

      var neptune_l_0: Double = 0.0

      neptune_l_0 += -1 * 0.01017628072 * 1.48447270830 * sin(0.48586478491 + 1.48447270830*t)
      neptune_l_0 += -1 * 5.31188628676 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return neptune_l_1+neptune_l_0
   }

   static func neptune_a(t:Double)->Double{
      var neptune_a_0: Double = 0.0

      neptune_a_0 += -1 * 0.03597274341 * 175.16605980020 * sin(1.84552690821 + 175.16605980020*t)
      neptune_a_0 += -1 * 0.14818172119 * 491.55792945680 * sin(1.57105922541 + 491.55792945680*t)
      neptune_a_0 += -1 * 30.11038686942 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return neptune_a_0
   }

   static func mercury_p(t:Double)->Double{
      var mercury_p_0: Double = 0.0

      mercury_p_0 += -1 * 0.04563550461 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return mercury_p_0
   }

   static func mercury_q(t:Double)->Double{
      var mercury_q_0: Double = 0.0

      mercury_q_0 += -1 * 0.04061563384 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return mercury_q_0
   }

   static func mercury_h(t:Double)->Double{
      var mercury_h_0: Double = 0.0

      mercury_h_0 += -1 * 0.20072331368 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return mercury_h_0
   }

   static func mercury_k(t:Double)->Double{
      var mercury_k_0: Double = 0.0

      mercury_k_0 += -1 * 0.04466059760 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return mercury_k_0
   }

   static func mercury_l(t:Double)->Double{
      var mercury_l_1: Double = 0.0

      mercury_l_1 += pow(t,0) * 1 * 26087.90314157420 * cos(0.00000000000 + 0.00000000000*t) - pow(t,1) * 26087.90314157420 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)

      var mercury_l_0: Double = 0.0

      mercury_l_0 += -1 * 4.40260884240 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return mercury_l_1+mercury_l_0
   }

   static func mercury_a(t:Double)->Double{
      var mercury_a_0: Double = 0.0

      mercury_a_0 += -1 * 0.38709830982 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return mercury_a_0
   }

   static func mars_p(t:Double)->Double{
      var mars_p_0: Double = 0.0

      mars_p_0 += -1 * 0.01228449307 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return mars_p_0
   }

   static func mars_q(t:Double)->Double{
      var mars_q_0: Double = 0.0

      mars_q_0 += -1 * 0.01047042574 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return mars_q_0
   }

   static func mars_h(t:Double)->Double{
      var mars_h_0: Double = 0.0

      mars_h_0 += -1 * 0.03789973236 * 0.00000000000 * sin(3.14159265359 + 0.00000000000*t)
      return mars_h_0
   }

   static func mars_k(t:Double)->Double{
      var mars_k_0: Double = 0.0

      mars_k_0 += -1 * 0.08536560252 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return mars_k_0
   }

   static func mars_l(t:Double)->Double{
      var mars_l_1: Double = 0.0

      mars_l_1 += pow(t,0) * 1 * 3340.61242669981 * cos(0.00000000000 + 0.00000000000*t) - pow(t,1) * 3340.61242669981 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)

      var mars_l_0: Double = 0.0

      mars_l_0 += -1 * 6.20347611291 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return mars_l_1+mars_l_0
   }

   static func mars_a(t:Double)->Double{
      var mars_a_0: Double = 0.0

      mars_a_0 += -1 * 1.52367934191 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return mars_a_0
   }

   static func jupiter_p(t:Double)->Double{
      var jupiter_p_0: Double = 0.0

      jupiter_p_0 += -1 * 0.01118377157 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return jupiter_p_0
   }

   static func jupiter_q(t:Double)->Double{
      return 0
   }

   static func jupiter_h(t:Double)->Double{
      var jupiter_h_0: Double = 0.0

      jupiter_h_0 += -1 * 0.01200385748 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return jupiter_h_0
   }

   static func jupiter_k(t:Double)->Double{
      var jupiter_k_0: Double = 0.0

      jupiter_k_0 += -1 * 0.04698572124 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return jupiter_k_0
   }

   static func jupiter_l(t:Double)->Double{
      var jupiter_l_1: Double = 0.0

      jupiter_l_1 += pow(t,0) * 1 * 529.69096509460 * cos(0.00000000000 + 0.00000000000*t) - pow(t,1) * 529.69096509460 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)

      var jupiter_l_0: Double = 0.0

      jupiter_l_0 += -1 * 0.59954649739 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return jupiter_l_1+jupiter_l_0
   }

   static func jupiter_a(t:Double)->Double{
      var jupiter_a_0: Double = 0.0

      jupiter_a_0 += -1 * 5.20260319132 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return jupiter_a_0
   }

   static func emb_p(t:Double)->Double{
      return 0
   }

   static func emb_q(t:Double)->Double{
      return 0
   }

   static func emb_h(t:Double)->Double{
      var emb_h_0: Double = 0.0

      emb_h_0 += -1 * 0.01628447663 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return emb_h_0
   }

   static func emb_k(t:Double)->Double{
      return 0
   }

   static func emb_l(t:Double)->Double{
      var emb_l_1: Double = 0.0

      emb_l_1 += pow(t,0) * 1 * 6283.07584999140 * cos(0.00000000000 + 0.00000000000*t) - pow(t,1) * 6283.07584999140 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)

      var emb_l_0: Double = 0.0

      emb_l_0 += -1 * 1.75347045953 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return emb_l_1+emb_l_0
   }

   static func emb_a(t:Double)->Double{
      var emb_a_0: Double = 0.0

      emb_a_0 += -1 * 1.00000101778 * 0.00000000000 * sin(0.00000000000 + 0.00000000000*t)
      return emb_a_0
   }

}
