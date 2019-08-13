import math

class vsop87_pico :
   @staticmethod
   def getEmb(t):
      temp=[]
      temp.append(vsop87_pico.emb_a(t))
      temp.append(vsop87_pico.emb_l(t))
      temp.append(vsop87_pico.emb_k(t))
      temp.append(vsop87_pico.emb_h(t))
      temp.append(vsop87_pico.emb_q(t))
      temp.append(vsop87_pico.emb_p(t))
      return temp
   

   @staticmethod
   def getJupiter(t):
      temp=[]
      temp.append(vsop87_pico.jupiter_a(t))
      temp.append(vsop87_pico.jupiter_l(t))
      temp.append(vsop87_pico.jupiter_k(t))
      temp.append(vsop87_pico.jupiter_h(t))
      temp.append(vsop87_pico.jupiter_q(t))
      temp.append(vsop87_pico.jupiter_p(t))
      return temp
   

   @staticmethod
   def getMars(t):
      temp=[]
      temp.append(vsop87_pico.mars_a(t))
      temp.append(vsop87_pico.mars_l(t))
      temp.append(vsop87_pico.mars_k(t))
      temp.append(vsop87_pico.mars_h(t))
      temp.append(vsop87_pico.mars_q(t))
      temp.append(vsop87_pico.mars_p(t))
      return temp
   

   @staticmethod
   def getMercury(t):
      temp=[]
      temp.append(vsop87_pico.mercury_a(t))
      temp.append(vsop87_pico.mercury_l(t))
      temp.append(vsop87_pico.mercury_k(t))
      temp.append(vsop87_pico.mercury_h(t))
      temp.append(vsop87_pico.mercury_q(t))
      temp.append(vsop87_pico.mercury_p(t))
      return temp
   

   @staticmethod
   def getNeptune(t):
      temp=[]
      temp.append(vsop87_pico.neptune_a(t))
      temp.append(vsop87_pico.neptune_l(t))
      temp.append(vsop87_pico.neptune_k(t))
      temp.append(vsop87_pico.neptune_h(t))
      temp.append(vsop87_pico.neptune_q(t))
      temp.append(vsop87_pico.neptune_p(t))
      return temp
   

   @staticmethod
   def getSaturn(t):
      temp=[]
      temp.append(vsop87_pico.saturn_a(t))
      temp.append(vsop87_pico.saturn_l(t))
      temp.append(vsop87_pico.saturn_k(t))
      temp.append(vsop87_pico.saturn_h(t))
      temp.append(vsop87_pico.saturn_q(t))
      temp.append(vsop87_pico.saturn_p(t))
      return temp
   

   @staticmethod
   def getUranus(t):
      temp=[]
      temp.append(vsop87_pico.uranus_a(t))
      temp.append(vsop87_pico.uranus_l(t))
      temp.append(vsop87_pico.uranus_k(t))
      temp.append(vsop87_pico.uranus_h(t))
      temp.append(vsop87_pico.uranus_q(t))
      temp.append(vsop87_pico.uranus_p(t))
      return temp
   

   @staticmethod
   def getVenus(t):
      temp=[]
      temp.append(vsop87_pico.venus_a(t))
      temp.append(vsop87_pico.venus_l(t))
      temp.append(vsop87_pico.venus_k(t))
      temp.append(vsop87_pico.venus_h(t))
      temp.append(vsop87_pico.venus_q(t))
      temp.append(vsop87_pico.venus_p(t))
      return temp
   

   @staticmethod
   def emb_a(t):
      emb_a_0=0.0
      emb_a_0+=     1.00000101778 * math.cos( 0.00000000000 +        0.00000000000*t)

      return emb_a_0
   

   @staticmethod
   def emb_l(t):
      emb_l_0=0.0
      emb_l_0+=     1.75347045953 * math.cos( 0.00000000000 +        0.00000000000*t)

      emb_l_1=0.0
      emb_l_1+=  6283.07584999140 * math.cos( 0.00000000000 +        0.00000000000*t)
      emb_l_1=emb_l_1 * t

      return emb_l_0+emb_l_1
   

   @staticmethod
   def emb_k(t):
      return 0
   

   @staticmethod
   def emb_h(t):
      emb_h_0=0.0
      emb_h_0+=     0.01628447663 * math.cos( 0.00000000000 +        0.00000000000*t)

      return emb_h_0
   

   @staticmethod
   def emb_q(t):
      return 0
   

   @staticmethod
   def emb_p(t):
      return 0
   

   @staticmethod
   def jupiter_a(t):
      jupiter_a_0=0.0
      jupiter_a_0+=     5.20260319132 * math.cos( 0.00000000000 +        0.00000000000*t)

      return jupiter_a_0
   

   @staticmethod
   def jupiter_l(t):
      jupiter_l_0=0.0
      jupiter_l_0+=     0.59954649739 * math.cos( 0.00000000000 +        0.00000000000*t)

      jupiter_l_1=0.0
      jupiter_l_1+=   529.69096509460 * math.cos( 0.00000000000 +        0.00000000000*t)
      jupiter_l_1=jupiter_l_1 * t

      return jupiter_l_0+jupiter_l_1
   

   @staticmethod
   def jupiter_k(t):
      jupiter_k_0=0.0
      jupiter_k_0+=     0.04698572124 * math.cos( 0.00000000000 +        0.00000000000*t)

      return jupiter_k_0
   

   @staticmethod
   def jupiter_h(t):
      jupiter_h_0=0.0
      jupiter_h_0+=     0.01200385748 * math.cos( 0.00000000000 +        0.00000000000*t)

      return jupiter_h_0
   

   @staticmethod
   def jupiter_q(t):
      return 0
   

   @staticmethod
   def jupiter_p(t):
      jupiter_p_0=0.0
      jupiter_p_0+=     0.01118377157 * math.cos( 0.00000000000 +        0.00000000000*t)

      return jupiter_p_0
   

   @staticmethod
   def mars_a(t):
      mars_a_0=0.0
      mars_a_0+=     1.52367934191 * math.cos( 0.00000000000 +        0.00000000000*t)

      return mars_a_0
   

   @staticmethod
   def mars_l(t):
      mars_l_0=0.0
      mars_l_0+=     6.20347611291 * math.cos( 0.00000000000 +        0.00000000000*t)

      mars_l_1=0.0
      mars_l_1+=  3340.61242669981 * math.cos( 0.00000000000 +        0.00000000000*t)
      mars_l_1=mars_l_1 * t

      return mars_l_0+mars_l_1
   

   @staticmethod
   def mars_k(t):
      mars_k_0=0.0
      mars_k_0+=     0.08536560252 * math.cos( 0.00000000000 +        0.00000000000*t)

      return mars_k_0
   

   @staticmethod
   def mars_h(t):
      mars_h_0=0.0
      mars_h_0+=     0.03789973236 * math.cos( 3.14159265359 +        0.00000000000*t)

      return mars_h_0
   

   @staticmethod
   def mars_q(t):
      mars_q_0=0.0
      mars_q_0+=     0.01047042574 * math.cos( 0.00000000000 +        0.00000000000*t)

      return mars_q_0
   

   @staticmethod
   def mars_p(t):
      mars_p_0=0.0
      mars_p_0+=     0.01228449307 * math.cos( 0.00000000000 +        0.00000000000*t)

      return mars_p_0
   

   @staticmethod
   def mercury_a(t):
      mercury_a_0=0.0
      mercury_a_0+=     0.38709830982 * math.cos( 0.00000000000 +        0.00000000000*t)

      return mercury_a_0
   

   @staticmethod
   def mercury_l(t):
      mercury_l_0=0.0
      mercury_l_0+=     4.40260884240 * math.cos( 0.00000000000 +        0.00000000000*t)

      mercury_l_1=0.0
      mercury_l_1+= 26087.90314157420 * math.cos( 0.00000000000 +        0.00000000000*t)
      mercury_l_1=mercury_l_1 * t

      return mercury_l_0+mercury_l_1
   

   @staticmethod
   def mercury_k(t):
      mercury_k_0=0.0
      mercury_k_0+=     0.04466059760 * math.cos( 0.00000000000 +        0.00000000000*t)

      return mercury_k_0
   

   @staticmethod
   def mercury_h(t):
      mercury_h_0=0.0
      mercury_h_0+=     0.20072331368 * math.cos( 0.00000000000 +        0.00000000000*t)

      return mercury_h_0
   

   @staticmethod
   def mercury_q(t):
      mercury_q_0=0.0
      mercury_q_0+=     0.04061563384 * math.cos( 0.00000000000 +        0.00000000000*t)

      return mercury_q_0
   

   @staticmethod
   def mercury_p(t):
      mercury_p_0=0.0
      mercury_p_0+=     0.04563550461 * math.cos( 0.00000000000 +        0.00000000000*t)

      return mercury_p_0
   

   @staticmethod
   def neptune_a(t):
      neptune_a_0=0.0
      neptune_a_0+=    30.11038686942 * math.cos( 0.00000000000 +        0.00000000000*t)
      neptune_a_0+=     0.14818172119 * math.cos( 1.57105922541 +      491.55792945680*t)
      neptune_a_0+=     0.03597274341 * math.cos( 1.84552690821 +      175.16605980020*t)

      return neptune_a_0
   

   @staticmethod
   def neptune_l(t):
      neptune_l_0=0.0
      neptune_l_0+=     5.31188628676 * math.cos( 0.00000000000 +        0.00000000000*t)
      neptune_l_0+=     0.01017628072 * math.cos( 0.48586478491 +        1.48447270830*t)

      neptune_l_1=0.0
      neptune_l_1+=    38.13303563780 * math.cos( 0.00000000000 +        0.00000000000*t)
      neptune_l_1=neptune_l_1 * t

      return neptune_l_0+neptune_l_1
   

   @staticmethod
   def neptune_k(t):
      return 0
   

   @staticmethod
   def neptune_h(t):
      return 0
   

   @staticmethod
   def neptune_q(t):
      neptune_q_0=0.0
      neptune_q_0+=     0.01029147819 * math.cos( 3.14159265359 +        0.00000000000*t)

      return neptune_q_0
   

   @staticmethod
   def neptune_p(t):
      neptune_p_0=0.0
      neptune_p_0+=     0.01151683985 * math.cos( 0.00000000000 +        0.00000000000*t)

      return neptune_p_0
   

   @staticmethod
   def saturn_a(t):
      saturn_a_0=0.0
      saturn_a_0+=     9.55490959574 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_a_0+=     0.03363448736 * math.cos( 6.00973673460 +      316.39186965660*t)

      return saturn_a_0
   

   @staticmethod
   def saturn_l(t):
      saturn_l_0=0.0
      saturn_l_0+=     0.87401675650 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_l_0+=     0.01411655077 * math.cos( 4.58553469006 +        7.11354700080*t)

      saturn_l_1=0.0
      saturn_l_1+=   213.29909543800 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_l_1=saturn_l_1 * t

      return saturn_l_0+saturn_l_1
   

   @staticmethod
   def saturn_k(t):
      return 0
   

   @staticmethod
   def saturn_h(t):
      saturn_h_0=0.0
      saturn_h_0+=     0.05542964254 * math.cos( 0.00000000000 +        0.00000000000*t)

      return saturn_h_0
   

   @staticmethod
   def saturn_q(t):
      return 0
   

   @staticmethod
   def saturn_p(t):
      saturn_p_0=0.0
      saturn_p_0+=     0.01989147301 * math.cos( 0.00000000000 +        0.00000000000*t)

      return saturn_p_0
   

   @staticmethod
   def uranus_a(t):
      uranus_a_0=0.0
      uranus_a_0+=    19.21844606178 * math.cos( 0.00000000000 +        0.00000000000*t)
      uranus_a_0+=     0.08030476240 * math.cos( 1.40140954803 +      454.90936652730*t)
      uranus_a_0+=     0.02068375131 * math.cos( 1.67626096637 +      138.51749687070*t)

      return uranus_a_0
   

   @staticmethod
   def uranus_l(t):
      uranus_l_0=0.0
      uranus_l_0+=     5.48129387159 * math.cos( 0.00000000000 +        0.00000000000*t)
      uranus_l_0+=     0.01503941337 * math.cos( 3.62721239702 +        1.48447270830*t)

      uranus_l_1=0.0
      uranus_l_1+=    74.78159856730 * math.cos( 0.00000000000 +        0.00000000000*t)
      uranus_l_1=uranus_l_1 * t

      return uranus_l_0+uranus_l_1
   

   @staticmethod
   def uranus_k(t):
      uranus_k_0=0.0
      uranus_k_0+=     0.04595132376 * math.cos( 3.14159265359 +        0.00000000000*t)

      return uranus_k_0
   

   @staticmethod
   def uranus_h(t):
      return 0
   

   @staticmethod
   def uranus_q(t):
      return 0
   

   @staticmethod
   def uranus_p(t):
      return 0
   

   @staticmethod
   def venus_a(t):
      venus_a_0=0.0
      venus_a_0+=     0.72332981996 * math.cos( 0.00000000000 +        0.00000000000*t)

      return venus_a_0
   

   @staticmethod
   def venus_l(t):
      venus_l_0=0.0
      venus_l_0+=     3.17614669689 * math.cos( 0.00000000000 +        0.00000000000*t)

      venus_l_1=0.0
      venus_l_1+= 10213.28554621100 * math.cos( 0.00000000000 +        0.00000000000*t)
      venus_l_1=venus_l_1 * t

      return venus_l_0+venus_l_1
   

   @staticmethod
   def venus_k(t):
      return 0
   

   @staticmethod
   def venus_h(t):
      return 0
   

   @staticmethod
   def venus_q(t):
      return 0
   

   @staticmethod
   def venus_p(t):
      venus_p_0=0.0
      venus_p_0+=     0.02882285775 * math.cos( 0.00000000000 +        0.00000000000*t)

      return venus_p_0
   


