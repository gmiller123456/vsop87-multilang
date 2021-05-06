#VSOP87-Multilang http://www.celestialprogramming.com/
#Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

class Vsop87_pico
   def self.getMercury(t)
      temp=Array.new(6)
      temp[0]=mercury_a(t)
      temp[1]=mercury_l(t)
      temp[2]=mercury_k(t)
      temp[3]=mercury_h(t)
      temp[4]=mercury_q(t)
      temp[5]=mercury_p(t)

      return temp
   end

   def self.getVenus(t)
      temp=Array.new(6)
      temp[0]=venus_a(t)
      temp[1]=venus_l(t)
      temp[2]=venus_k(t)
      temp[3]=venus_h(t)
      temp[4]=venus_q(t)
      temp[5]=venus_p(t)

      return temp
   end

   def self.getEmb(t)
      temp=Array.new(6)
      temp[0]=emb_a(t)
      temp[1]=emb_l(t)
      temp[2]=emb_k(t)
      temp[3]=emb_h(t)
      temp[4]=emb_q(t)
      temp[5]=emb_p(t)

      return temp
   end

   def self.getMars(t)
      temp=Array.new(6)
      temp[0]=mars_a(t)
      temp[1]=mars_l(t)
      temp[2]=mars_k(t)
      temp[3]=mars_h(t)
      temp[4]=mars_q(t)
      temp[5]=mars_p(t)

      return temp
   end

   def self.getJupiter(t)
      temp=Array.new(6)
      temp[0]=jupiter_a(t)
      temp[1]=jupiter_l(t)
      temp[2]=jupiter_k(t)
      temp[3]=jupiter_h(t)
      temp[4]=jupiter_q(t)
      temp[5]=jupiter_p(t)

      return temp
   end

   def self.getSaturn(t)
      temp=Array.new(6)
      temp[0]=saturn_a(t)
      temp[1]=saturn_l(t)
      temp[2]=saturn_k(t)
      temp[3]=saturn_h(t)
      temp[4]=saturn_q(t)
      temp[5]=saturn_p(t)

      return temp
   end

   def self.getUranus(t)
      temp=Array.new(6)
      temp[0]=uranus_a(t)
      temp[1]=uranus_l(t)
      temp[2]=uranus_k(t)
      temp[3]=uranus_h(t)
      temp[4]=uranus_q(t)
      temp[5]=uranus_p(t)

      return temp
   end

   def self.getNeptune(t)
      temp=Array.new(6)
      temp[0]=neptune_a(t)
      temp[1]=neptune_l(t)
      temp[2]=neptune_k(t)
      temp[3]=neptune_h(t)
      temp[4]=neptune_q(t)
      temp[5]=neptune_p(t)

      return temp
   end

   def self.venus_p(t)
      venus_p_0 = 0.0

      venus_p_0 += 0.02882285775 * Math.cos(0.00000000000 + 0.00000000000*t)
      return venus_p_0
   end

   def self.venus_q(t)
      return 0
   end

   def self.venus_h(t)
      return 0
   end

   def self.venus_k(t)
      return 0
   end

   def self.venus_l(t)
      venus_l_1 = 0.0

      venus_l_1 += 10213.28554621100 * Math.cos(0.00000000000 + 0.00000000000*t)
      venus_l_1=venus_l_1*t

      venus_l_0 = 0.0

      venus_l_0 += 3.17614669689 * Math.cos(0.00000000000 + 0.00000000000*t)
      return venus_l_1+venus_l_0
   end

   def self.venus_a(t)
      venus_a_0 = 0.0

      venus_a_0 += 0.72332981996 * Math.cos(0.00000000000 + 0.00000000000*t)
      return venus_a_0
   end

   def self.uranus_p(t)
      return 0
   end

   def self.uranus_q(t)
      return 0
   end

   def self.uranus_h(t)
      return 0
   end

   def self.uranus_k(t)
      uranus_k_0 = 0.0

      uranus_k_0 += 0.04595132376 * Math.cos(3.14159265359 + 0.00000000000*t)
      return uranus_k_0
   end

   def self.uranus_l(t)
      uranus_l_1 = 0.0

      uranus_l_1 += 74.78159856730 * Math.cos(0.00000000000 + 0.00000000000*t)
      uranus_l_1=uranus_l_1*t

      uranus_l_0 = 0.0

      uranus_l_0 += 0.01503941337 * Math.cos(3.62721239702 + 1.48447270830*t)
      uranus_l_0 += 5.48129387159 * Math.cos(0.00000000000 + 0.00000000000*t)
      return uranus_l_1+uranus_l_0
   end

   def self.uranus_a(t)
      uranus_a_0 = 0.0

      uranus_a_0 += 0.02068375131 * Math.cos(1.67626096637 + 138.51749687070*t)
      uranus_a_0 += 0.08030476240 * Math.cos(1.40140954803 + 454.90936652730*t)
      uranus_a_0 += 19.21844606178 * Math.cos(0.00000000000 + 0.00000000000*t)
      return uranus_a_0
   end

   def self.saturn_p(t)
      saturn_p_0 = 0.0

      saturn_p_0 += 0.01989147301 * Math.cos(0.00000000000 + 0.00000000000*t)
      return saturn_p_0
   end

   def self.saturn_q(t)
      return 0
   end

   def self.saturn_h(t)
      saturn_h_0 = 0.0

      saturn_h_0 += 0.05542964254 * Math.cos(0.00000000000 + 0.00000000000*t)
      return saturn_h_0
   end

   def self.saturn_k(t)
      return 0
   end

   def self.saturn_l(t)
      saturn_l_1 = 0.0

      saturn_l_1 += 213.29909543800 * Math.cos(0.00000000000 + 0.00000000000*t)
      saturn_l_1=saturn_l_1*t

      saturn_l_0 = 0.0

      saturn_l_0 += 0.01411655077 * Math.cos(4.58553469006 + 7.11354700080*t)
      saturn_l_0 += 0.87401675650 * Math.cos(0.00000000000 + 0.00000000000*t)
      return saturn_l_1+saturn_l_0
   end

   def self.saturn_a(t)
      saturn_a_0 = 0.0

      saturn_a_0 += 0.03363448736 * Math.cos(6.00973673460 + 316.39186965660*t)
      saturn_a_0 += 9.55490959574 * Math.cos(0.00000000000 + 0.00000000000*t)
      return saturn_a_0
   end

   def self.neptune_p(t)
      neptune_p_0 = 0.0

      neptune_p_0 += 0.01151683985 * Math.cos(0.00000000000 + 0.00000000000*t)
      return neptune_p_0
   end

   def self.neptune_q(t)
      neptune_q_0 = 0.0

      neptune_q_0 += 0.01029147819 * Math.cos(3.14159265359 + 0.00000000000*t)
      return neptune_q_0
   end

   def self.neptune_h(t)
      return 0
   end

   def self.neptune_k(t)
      return 0
   end

   def self.neptune_l(t)
      neptune_l_1 = 0.0

      neptune_l_1 += 38.13303563780 * Math.cos(0.00000000000 + 0.00000000000*t)
      neptune_l_1=neptune_l_1*t

      neptune_l_0 = 0.0

      neptune_l_0 += 0.01017628072 * Math.cos(0.48586478491 + 1.48447270830*t)
      neptune_l_0 += 5.31188628676 * Math.cos(0.00000000000 + 0.00000000000*t)
      return neptune_l_1+neptune_l_0
   end

   def self.neptune_a(t)
      neptune_a_0 = 0.0

      neptune_a_0 += 0.03597274341 * Math.cos(1.84552690821 + 175.16605980020*t)
      neptune_a_0 += 0.14818172119 * Math.cos(1.57105922541 + 491.55792945680*t)
      neptune_a_0 += 30.11038686942 * Math.cos(0.00000000000 + 0.00000000000*t)
      return neptune_a_0
   end

   def self.mercury_p(t)
      mercury_p_0 = 0.0

      mercury_p_0 += 0.04563550461 * Math.cos(0.00000000000 + 0.00000000000*t)
      return mercury_p_0
   end

   def self.mercury_q(t)
      mercury_q_0 = 0.0

      mercury_q_0 += 0.04061563384 * Math.cos(0.00000000000 + 0.00000000000*t)
      return mercury_q_0
   end

   def self.mercury_h(t)
      mercury_h_0 = 0.0

      mercury_h_0 += 0.20072331368 * Math.cos(0.00000000000 + 0.00000000000*t)
      return mercury_h_0
   end

   def self.mercury_k(t)
      mercury_k_0 = 0.0

      mercury_k_0 += 0.04466059760 * Math.cos(0.00000000000 + 0.00000000000*t)
      return mercury_k_0
   end

   def self.mercury_l(t)
      mercury_l_1 = 0.0

      mercury_l_1 += 26087.90314157420 * Math.cos(0.00000000000 + 0.00000000000*t)
      mercury_l_1=mercury_l_1*t

      mercury_l_0 = 0.0

      mercury_l_0 += 4.40260884240 * Math.cos(0.00000000000 + 0.00000000000*t)
      return mercury_l_1+mercury_l_0
   end

   def self.mercury_a(t)
      mercury_a_0 = 0.0

      mercury_a_0 += 0.38709830982 * Math.cos(0.00000000000 + 0.00000000000*t)
      return mercury_a_0
   end

   def self.mars_p(t)
      mars_p_0 = 0.0

      mars_p_0 += 0.01228449307 * Math.cos(0.00000000000 + 0.00000000000*t)
      return mars_p_0
   end

   def self.mars_q(t)
      mars_q_0 = 0.0

      mars_q_0 += 0.01047042574 * Math.cos(0.00000000000 + 0.00000000000*t)
      return mars_q_0
   end

   def self.mars_h(t)
      mars_h_0 = 0.0

      mars_h_0 += 0.03789973236 * Math.cos(3.14159265359 + 0.00000000000*t)
      return mars_h_0
   end

   def self.mars_k(t)
      mars_k_0 = 0.0

      mars_k_0 += 0.08536560252 * Math.cos(0.00000000000 + 0.00000000000*t)
      return mars_k_0
   end

   def self.mars_l(t)
      mars_l_1 = 0.0

      mars_l_1 += 3340.61242669981 * Math.cos(0.00000000000 + 0.00000000000*t)
      mars_l_1=mars_l_1*t

      mars_l_0 = 0.0

      mars_l_0 += 6.20347611291 * Math.cos(0.00000000000 + 0.00000000000*t)
      return mars_l_1+mars_l_0
   end

   def self.mars_a(t)
      mars_a_0 = 0.0

      mars_a_0 += 1.52367934191 * Math.cos(0.00000000000 + 0.00000000000*t)
      return mars_a_0
   end

   def self.jupiter_p(t)
      jupiter_p_0 = 0.0

      jupiter_p_0 += 0.01118377157 * Math.cos(0.00000000000 + 0.00000000000*t)
      return jupiter_p_0
   end

   def self.jupiter_q(t)
      return 0
   end

   def self.jupiter_h(t)
      jupiter_h_0 = 0.0

      jupiter_h_0 += 0.01200385748 * Math.cos(0.00000000000 + 0.00000000000*t)
      return jupiter_h_0
   end

   def self.jupiter_k(t)
      jupiter_k_0 = 0.0

      jupiter_k_0 += 0.04698572124 * Math.cos(0.00000000000 + 0.00000000000*t)
      return jupiter_k_0
   end

   def self.jupiter_l(t)
      jupiter_l_1 = 0.0

      jupiter_l_1 += 529.69096509460 * Math.cos(0.00000000000 + 0.00000000000*t)
      jupiter_l_1=jupiter_l_1*t

      jupiter_l_0 = 0.0

      jupiter_l_0 += 0.59954649739 * Math.cos(0.00000000000 + 0.00000000000*t)
      return jupiter_l_1+jupiter_l_0
   end

   def self.jupiter_a(t)
      jupiter_a_0 = 0.0

      jupiter_a_0 += 5.20260319132 * Math.cos(0.00000000000 + 0.00000000000*t)
      return jupiter_a_0
   end

   def self.emb_p(t)
      return 0
   end

   def self.emb_q(t)
      return 0
   end

   def self.emb_h(t)
      emb_h_0 = 0.0

      emb_h_0 += 0.01628447663 * Math.cos(0.00000000000 + 0.00000000000*t)
      return emb_h_0
   end

   def self.emb_k(t)
      return 0
   end

   def self.emb_l(t)
      emb_l_1 = 0.0

      emb_l_1 += 6283.07584999140 * Math.cos(0.00000000000 + 0.00000000000*t)
      emb_l_1=emb_l_1*t

      emb_l_0 = 0.0

      emb_l_0 += 1.75347045953 * Math.cos(0.00000000000 + 0.00000000000*t)
      return emb_l_1+emb_l_0
   end

   def self.emb_a(t)
      emb_a_0 = 0.0

      emb_a_0 += 1.00000101778 * Math.cos(0.00000000000 + 0.00000000000*t)
      return emb_a_0
   end

end
