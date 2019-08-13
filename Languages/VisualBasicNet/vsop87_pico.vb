Imports System.Math

Public Class vsop87_pico 
   Public Shared Function getEmb(t as Double) as Double()
      Dim temp(6) as Double
      temp(0)=emb_a(t)
      temp(1)=emb_l(t)
      temp(2)=emb_k(t)
      temp(3)=emb_h(t)
      temp(4)=emb_q(t)
      temp(5)=emb_p(t)
      getEmb=temp
   End Function

   Public Shared Function getJupiter(t as Double) as Double()
      Dim temp(6) as Double
      temp(0)=jupiter_a(t)
      temp(1)=jupiter_l(t)
      temp(2)=jupiter_k(t)
      temp(3)=jupiter_h(t)
      temp(4)=jupiter_q(t)
      temp(5)=jupiter_p(t)
      getJupiter=temp
   End Function

   Public Shared Function getMars(t as Double) as Double()
      Dim temp(6) as Double
      temp(0)=mars_a(t)
      temp(1)=mars_l(t)
      temp(2)=mars_k(t)
      temp(3)=mars_h(t)
      temp(4)=mars_q(t)
      temp(5)=mars_p(t)
      getMars=temp
   End Function

   Public Shared Function getMercury(t as Double) as Double()
      Dim temp(6) as Double
      temp(0)=mercury_a(t)
      temp(1)=mercury_l(t)
      temp(2)=mercury_k(t)
      temp(3)=mercury_h(t)
      temp(4)=mercury_q(t)
      temp(5)=mercury_p(t)
      getMercury=temp
   End Function

   Public Shared Function getNeptune(t as Double) as Double()
      Dim temp(6) as Double
      temp(0)=neptune_a(t)
      temp(1)=neptune_l(t)
      temp(2)=neptune_k(t)
      temp(3)=neptune_h(t)
      temp(4)=neptune_q(t)
      temp(5)=neptune_p(t)
      getNeptune=temp
   End Function

   Public Shared Function getSaturn(t as Double) as Double()
      Dim temp(6) as Double
      temp(0)=saturn_a(t)
      temp(1)=saturn_l(t)
      temp(2)=saturn_k(t)
      temp(3)=saturn_h(t)
      temp(4)=saturn_q(t)
      temp(5)=saturn_p(t)
      getSaturn=temp
   End Function

   Public Shared Function getUranus(t as Double) as Double()
      Dim temp(6) as Double
      temp(0)=uranus_a(t)
      temp(1)=uranus_l(t)
      temp(2)=uranus_k(t)
      temp(3)=uranus_h(t)
      temp(4)=uranus_q(t)
      temp(5)=uranus_p(t)
      getUranus=temp
   End Function

   Public Shared Function getVenus(t as Double) as Double()
      Dim temp(6) as Double
      temp(0)=venus_a(t)
      temp(1)=venus_l(t)
      temp(2)=venus_k(t)
      temp(3)=venus_h(t)
      temp(4)=venus_q(t)
      temp(5)=venus_p(t)
      getVenus=temp
   End Function

   Shared Function emb_a(t as Double) as Double
      Dim emb_a_0 as Double=0.0
      emb_a_0+=     1.00000101778 * Cos( 0.00000000000 +        0.00000000000*t)

      emb_a=emb_a_0
   End Function

   Shared Function emb_l(t as Double) as Double
      Dim emb_l_0 as Double=0.0
      emb_l_0+=     1.75347045953 * Cos( 0.00000000000 +        0.00000000000*t)

      Dim emb_l_1 as Double=0.0
      emb_l_1+=  6283.07584999140 * Cos( 0.00000000000 +        0.00000000000*t)
      emb_l_1=emb_l_1 * t

      emb_l=emb_l_0+emb_l_1
   End Function

   Shared Function emb_k(t as Double) as Double
      emb_k=0
   End Function

   Shared Function emb_h(t as Double) as Double
      Dim emb_h_0 as Double=0.0
      emb_h_0+=     0.01628447663 * Cos( 0.00000000000 +        0.00000000000*t)

      emb_h=emb_h_0
   End Function

   Shared Function emb_q(t as Double) as Double
      emb_q=0
   End Function

   Shared Function emb_p(t as Double) as Double
      emb_p=0
   End Function

   Shared Function jupiter_a(t as Double) as Double
      Dim jupiter_a_0 as Double=0.0
      jupiter_a_0+=     5.20260319132 * Cos( 0.00000000000 +        0.00000000000*t)

      jupiter_a=jupiter_a_0
   End Function

   Shared Function jupiter_l(t as Double) as Double
      Dim jupiter_l_0 as Double=0.0
      jupiter_l_0+=     0.59954649739 * Cos( 0.00000000000 +        0.00000000000*t)

      Dim jupiter_l_1 as Double=0.0
      jupiter_l_1+=   529.69096509460 * Cos( 0.00000000000 +        0.00000000000*t)
      jupiter_l_1=jupiter_l_1 * t

      jupiter_l=jupiter_l_0+jupiter_l_1
   End Function

   Shared Function jupiter_k(t as Double) as Double
      Dim jupiter_k_0 as Double=0.0
      jupiter_k_0+=     0.04698572124 * Cos( 0.00000000000 +        0.00000000000*t)

      jupiter_k=jupiter_k_0
   End Function

   Shared Function jupiter_h(t as Double) as Double
      Dim jupiter_h_0 as Double=0.0
      jupiter_h_0+=     0.01200385748 * Cos( 0.00000000000 +        0.00000000000*t)

      jupiter_h=jupiter_h_0
   End Function

   Shared Function jupiter_q(t as Double) as Double
      jupiter_q=0
   End Function

   Shared Function jupiter_p(t as Double) as Double
      Dim jupiter_p_0 as Double=0.0
      jupiter_p_0+=     0.01118377157 * Cos( 0.00000000000 +        0.00000000000*t)

      jupiter_p=jupiter_p_0
   End Function

   Shared Function mars_a(t as Double) as Double
      Dim mars_a_0 as Double=0.0
      mars_a_0+=     1.52367934191 * Cos( 0.00000000000 +        0.00000000000*t)

      mars_a=mars_a_0
   End Function

   Shared Function mars_l(t as Double) as Double
      Dim mars_l_0 as Double=0.0
      mars_l_0+=     6.20347611291 * Cos( 0.00000000000 +        0.00000000000*t)

      Dim mars_l_1 as Double=0.0
      mars_l_1+=  3340.61242669981 * Cos( 0.00000000000 +        0.00000000000*t)
      mars_l_1=mars_l_1 * t

      mars_l=mars_l_0+mars_l_1
   End Function

   Shared Function mars_k(t as Double) as Double
      Dim mars_k_0 as Double=0.0
      mars_k_0+=     0.08536560252 * Cos( 0.00000000000 +        0.00000000000*t)

      mars_k=mars_k_0
   End Function

   Shared Function mars_h(t as Double) as Double
      Dim mars_h_0 as Double=0.0
      mars_h_0+=     0.03789973236 * Cos( 3.14159265359 +        0.00000000000*t)

      mars_h=mars_h_0
   End Function

   Shared Function mars_q(t as Double) as Double
      Dim mars_q_0 as Double=0.0
      mars_q_0+=     0.01047042574 * Cos( 0.00000000000 +        0.00000000000*t)

      mars_q=mars_q_0
   End Function

   Shared Function mars_p(t as Double) as Double
      Dim mars_p_0 as Double=0.0
      mars_p_0+=     0.01228449307 * Cos( 0.00000000000 +        0.00000000000*t)

      mars_p=mars_p_0
   End Function

   Shared Function mercury_a(t as Double) as Double
      Dim mercury_a_0 as Double=0.0
      mercury_a_0+=     0.38709830982 * Cos( 0.00000000000 +        0.00000000000*t)

      mercury_a=mercury_a_0
   End Function

   Shared Function mercury_l(t as Double) as Double
      Dim mercury_l_0 as Double=0.0
      mercury_l_0+=     4.40260884240 * Cos( 0.00000000000 +        0.00000000000*t)

      Dim mercury_l_1 as Double=0.0
      mercury_l_1+= 26087.90314157420 * Cos( 0.00000000000 +        0.00000000000*t)
      mercury_l_1=mercury_l_1 * t

      mercury_l=mercury_l_0+mercury_l_1
   End Function

   Shared Function mercury_k(t as Double) as Double
      Dim mercury_k_0 as Double=0.0
      mercury_k_0+=     0.04466059760 * Cos( 0.00000000000 +        0.00000000000*t)

      mercury_k=mercury_k_0
   End Function

   Shared Function mercury_h(t as Double) as Double
      Dim mercury_h_0 as Double=0.0
      mercury_h_0+=     0.20072331368 * Cos( 0.00000000000 +        0.00000000000*t)

      mercury_h=mercury_h_0
   End Function

   Shared Function mercury_q(t as Double) as Double
      Dim mercury_q_0 as Double=0.0
      mercury_q_0+=     0.04061563384 * Cos( 0.00000000000 +        0.00000000000*t)

      mercury_q=mercury_q_0
   End Function

   Shared Function mercury_p(t as Double) as Double
      Dim mercury_p_0 as Double=0.0
      mercury_p_0+=     0.04563550461 * Cos( 0.00000000000 +        0.00000000000*t)

      mercury_p=mercury_p_0
   End Function

   Shared Function neptune_a(t as Double) as Double
      Dim neptune_a_0 as Double=0.0
      neptune_a_0+=    30.11038686942 * Cos( 0.00000000000 +        0.00000000000*t)
      neptune_a_0+=     0.14818172119 * Cos( 1.57105922541 +      491.55792945680*t)
      neptune_a_0+=     0.03597274341 * Cos( 1.84552690821 +      175.16605980020*t)

      neptune_a=neptune_a_0
   End Function

   Shared Function neptune_l(t as Double) as Double
      Dim neptune_l_0 as Double=0.0
      neptune_l_0+=     5.31188628676 * Cos( 0.00000000000 +        0.00000000000*t)
      neptune_l_0+=     0.01017628072 * Cos( 0.48586478491 +        1.48447270830*t)

      Dim neptune_l_1 as Double=0.0
      neptune_l_1+=    38.13303563780 * Cos( 0.00000000000 +        0.00000000000*t)
      neptune_l_1=neptune_l_1 * t

      neptune_l=neptune_l_0+neptune_l_1
   End Function

   Shared Function neptune_k(t as Double) as Double
      neptune_k=0
   End Function

   Shared Function neptune_h(t as Double) as Double
      neptune_h=0
   End Function

   Shared Function neptune_q(t as Double) as Double
      Dim neptune_q_0 as Double=0.0
      neptune_q_0+=     0.01029147819 * Cos( 3.14159265359 +        0.00000000000*t)

      neptune_q=neptune_q_0
   End Function

   Shared Function neptune_p(t as Double) as Double
      Dim neptune_p_0 as Double=0.0
      neptune_p_0+=     0.01151683985 * Cos( 0.00000000000 +        0.00000000000*t)

      neptune_p=neptune_p_0
   End Function

   Shared Function saturn_a(t as Double) as Double
      Dim saturn_a_0 as Double=0.0
      saturn_a_0+=     9.55490959574 * Cos( 0.00000000000 +        0.00000000000*t)
      saturn_a_0+=     0.03363448736 * Cos( 6.00973673460 +      316.39186965660*t)

      saturn_a=saturn_a_0
   End Function

   Shared Function saturn_l(t as Double) as Double
      Dim saturn_l_0 as Double=0.0
      saturn_l_0+=     0.87401675650 * Cos( 0.00000000000 +        0.00000000000*t)
      saturn_l_0+=     0.01411655077 * Cos( 4.58553469006 +        7.11354700080*t)

      Dim saturn_l_1 as Double=0.0
      saturn_l_1+=   213.29909543800 * Cos( 0.00000000000 +        0.00000000000*t)
      saturn_l_1=saturn_l_1 * t

      saturn_l=saturn_l_0+saturn_l_1
   End Function

   Shared Function saturn_k(t as Double) as Double
      saturn_k=0
   End Function

   Shared Function saturn_h(t as Double) as Double
      Dim saturn_h_0 as Double=0.0
      saturn_h_0+=     0.05542964254 * Cos( 0.00000000000 +        0.00000000000*t)

      saturn_h=saturn_h_0
   End Function

   Shared Function saturn_q(t as Double) as Double
      saturn_q=0
   End Function

   Shared Function saturn_p(t as Double) as Double
      Dim saturn_p_0 as Double=0.0
      saturn_p_0+=     0.01989147301 * Cos( 0.00000000000 +        0.00000000000*t)

      saturn_p=saturn_p_0
   End Function

   Shared Function uranus_a(t as Double) as Double
      Dim uranus_a_0 as Double=0.0
      uranus_a_0+=    19.21844606178 * Cos( 0.00000000000 +        0.00000000000*t)
      uranus_a_0+=     0.08030476240 * Cos( 1.40140954803 +      454.90936652730*t)
      uranus_a_0+=     0.02068375131 * Cos( 1.67626096637 +      138.51749687070*t)

      uranus_a=uranus_a_0
   End Function

   Shared Function uranus_l(t as Double) as Double
      Dim uranus_l_0 as Double=0.0
      uranus_l_0+=     5.48129387159 * Cos( 0.00000000000 +        0.00000000000*t)
      uranus_l_0+=     0.01503941337 * Cos( 3.62721239702 +        1.48447270830*t)

      Dim uranus_l_1 as Double=0.0
      uranus_l_1+=    74.78159856730 * Cos( 0.00000000000 +        0.00000000000*t)
      uranus_l_1=uranus_l_1 * t

      uranus_l=uranus_l_0+uranus_l_1
   End Function

   Shared Function uranus_k(t as Double) as Double
      Dim uranus_k_0 as Double=0.0
      uranus_k_0+=     0.04595132376 * Cos( 3.14159265359 +        0.00000000000*t)

      uranus_k=uranus_k_0
   End Function

   Shared Function uranus_h(t as Double) as Double
      uranus_h=0
   End Function

   Shared Function uranus_q(t as Double) as Double
      uranus_q=0
   End Function

   Shared Function uranus_p(t as Double) as Double
      uranus_p=0
   End Function

   Shared Function venus_a(t as Double) as Double
      Dim venus_a_0 as Double=0.0
      venus_a_0+=     0.72332981996 * Cos( 0.00000000000 +        0.00000000000*t)

      venus_a=venus_a_0
   End Function

   Shared Function venus_l(t as Double) as Double
      Dim venus_l_0 as Double=0.0
      venus_l_0+=     3.17614669689 * Cos( 0.00000000000 +        0.00000000000*t)

      Dim venus_l_1 as Double=0.0
      venus_l_1+= 10213.28554621100 * Cos( 0.00000000000 +        0.00000000000*t)
      venus_l_1=venus_l_1 * t

      venus_l=venus_l_0+venus_l_1
   End Function

   Shared Function venus_k(t as Double) as Double
      venus_k=0
   End Function

   Shared Function venus_h(t as Double) as Double
      venus_h=0
   End Function

   Shared Function venus_q(t as Double) as Double
      venus_q=0
   End Function

   Shared Function venus_p(t as Double) as Double
      Dim venus_p_0 as Double=0.0
      venus_p_0+=     0.02882285775 * Cos( 0.00000000000 +        0.00000000000*t)

      venus_p=venus_p_0
   End Function

End Class
