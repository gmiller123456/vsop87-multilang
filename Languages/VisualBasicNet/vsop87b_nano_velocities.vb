'VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
'Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

Imports System.Math

Public Class vsop87b_nano_velocities 
   Public Shared Function getEarth(t as Double) as Double()
      Dim temp(3) as Double
      temp(0)=earth_l(t) / 365250.0
      temp(1)=earth_b(t) / 365250.0
      temp(2)=earth_r(t) / 365250.0
      getEarth=temp
   End Function

   Public Shared Function getJupiter(t as Double) as Double()
      Dim temp(3) as Double
      temp(0)=jupiter_l(t) / 365250.0
      temp(1)=jupiter_b(t) / 365250.0
      temp(2)=jupiter_r(t) / 365250.0
      getJupiter=temp
   End Function

   Public Shared Function getMars(t as Double) as Double()
      Dim temp(3) as Double
      temp(0)=mars_l(t) / 365250.0
      temp(1)=mars_b(t) / 365250.0
      temp(2)=mars_r(t) / 365250.0
      getMars=temp
   End Function

   Public Shared Function getMercury(t as Double) as Double()
      Dim temp(3) as Double
      temp(0)=mercury_l(t) / 365250.0
      temp(1)=mercury_b(t) / 365250.0
      temp(2)=mercury_r(t) / 365250.0
      getMercury=temp
   End Function

   Public Shared Function getNeptune(t as Double) as Double()
      Dim temp(3) as Double
      temp(0)=neptune_l(t) / 365250.0
      temp(1)=neptune_b(t) / 365250.0
      temp(2)=neptune_r(t) / 365250.0
      getNeptune=temp
   End Function

   Public Shared Function getSaturn(t as Double) as Double()
      Dim temp(3) as Double
      temp(0)=saturn_l(t) / 365250.0
      temp(1)=saturn_b(t) / 365250.0
      temp(2)=saturn_r(t) / 365250.0
      getSaturn=temp
   End Function

   Public Shared Function getUranus(t as Double) as Double()
      Dim temp(3) as Double
      temp(0)=uranus_l(t) / 365250.0
      temp(1)=uranus_b(t) / 365250.0
      temp(2)=uranus_r(t) / 365250.0
      getUranus=temp
   End Function

   Public Shared Function getVenus(t as Double) as Double()
      Dim temp(3) as Double
      temp(0)=venus_l(t) / 365250.0
      temp(1)=venus_b(t) / 365250.0
      temp(2)=venus_r(t) / 365250.0
      getVenus=temp
   End Function

   Shared Function earth_l(t as Double) as Double
      Dim exp as Double=0.0
      Dim earth_l_0 as Double=0.0
      exp=0
      earth_l_0+=-Pow(t,exp)*     1.75347045673*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      earth_l_0+=-Pow(t,exp)*     0.03341656453*    6283.07584999140*Sin( 4.66925680415 +     6283.07584999140*t)

      Dim earth_l_1 as Double=0.0
      exp=1
      earth_l_1+=Pow(t,exp-1)*exp*  6283.07584999140*Cos( 0.00000000000 +        0.00000000000*t)-Pow(t,exp)*  6283.07584999140*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      earth_l_1+=Pow(t,exp-1)*exp*     0.00206058863*Cos( 2.67823455808 +     6283.07584999140*t)-Pow(t,exp)*     0.00206058863*    6283.07584999140*Sin( 2.67823455808 +     6283.07584999140*t)

      earth_l=earth_l_0+earth_l_1
   End Function

   Shared Function earth_b(t as Double) as Double
      Dim exp as Double=0.0
      Dim earth_b_1 as Double=0.0
      exp=1
      earth_b_1+=Pow(t,exp-1)*exp*     0.00227777722*Cos( 3.41376620530 +     6283.07584999140*t)-Pow(t,exp)*     0.00227777722*    6283.07584999140*Sin( 3.41376620530 +     6283.07584999140*t)

      earth_b=earth_b_1
   End Function

   Shared Function earth_r(t as Double) as Double
      Dim exp as Double=0.0
      Dim earth_r_0 as Double=0.0
      exp=0
      earth_r_0+=-Pow(t,exp)*     1.00013988784*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      earth_r_0+=-Pow(t,exp)*     0.01670699632*    6283.07584999140*Sin( 3.09846350258 +     6283.07584999140*t)

      Dim earth_r_1 as Double=0.0
      exp=1
      earth_r_1+=Pow(t,exp-1)*exp*     0.00103018607*Cos( 1.10748968172 +     6283.07584999140*t)-Pow(t,exp)*     0.00103018607*    6283.07584999140*Sin( 1.10748968172 +     6283.07584999140*t)

      earth_r=earth_r_0+earth_r_1
   End Function

   Shared Function jupiter_l(t as Double) as Double
      Dim exp as Double=0.0
      Dim jupiter_l_0 as Double=0.0
      exp=0
      jupiter_l_0+=-Pow(t,exp)*     0.59954691494*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      jupiter_l_0+=-Pow(t,exp)*     0.09695898719*     529.69096509460*Sin( 5.06191793158 +      529.69096509460*t)
      jupiter_l_0+=-Pow(t,exp)*     0.00573610142*       7.11354700080*Sin( 1.44406205629 +        7.11354700080*t)
      jupiter_l_0+=-Pow(t,exp)*     0.00306389205*    1059.38193018920*Sin( 5.41734730184 +     1059.38193018920*t)

      Dim jupiter_l_1 as Double=0.0
      exp=1
      jupiter_l_1+=Pow(t,exp-1)*exp*   529.69096508814*Cos( 0.00000000000 +        0.00000000000*t)-Pow(t,exp)*   529.69096508814*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      jupiter_l_1+=Pow(t,exp-1)*exp*     0.00489503243*Cos( 4.22082939470 +      529.69096509460*t)-Pow(t,exp)*     0.00489503243*     529.69096509460*Sin( 4.22082939470 +      529.69096509460*t)
      jupiter_l_1+=Pow(t,exp-1)*exp*     0.00228917222*Cos( 6.02646855621 +        7.11354700080*t)-Pow(t,exp)*     0.00228917222*       7.11354700080*Sin( 6.02646855621 +        7.11354700080*t)

      jupiter_l=jupiter_l_0+jupiter_l_1
   End Function

   Shared Function jupiter_b(t as Double) as Double
      Dim exp as Double=0.0
      Dim jupiter_b_0 as Double=0.0
      exp=0
      jupiter_b_0+=-Pow(t,exp)*     0.02268615702*     529.69096509460*Sin( 3.55852606721 +      529.69096509460*t)
      jupiter_b_0+=-Pow(t,exp)*     0.00109971634*    1059.38193018920*Sin( 3.90809347197 +     1059.38193018920*t)
      jupiter_b_0+=-Pow(t,exp)*     0.00110090358*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)

      jupiter_b=jupiter_b_0
   End Function

   Shared Function jupiter_r(t as Double) as Double
      Dim exp as Double=0.0
      Dim jupiter_r_0 as Double=0.0
      exp=0
      jupiter_r_0+=-Pow(t,exp)*     5.20887429326*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      jupiter_r_0+=-Pow(t,exp)*     0.25209327119*     529.69096509460*Sin( 3.49108639871 +      529.69096509460*t)
      jupiter_r_0+=-Pow(t,exp)*     0.00610599976*    1059.38193018920*Sin( 3.84115365948 +     1059.38193018920*t)
      jupiter_r_0+=-Pow(t,exp)*     0.00282029458*     632.78373931320*Sin( 2.57419881293 +      632.78373931320*t)
      jupiter_r_0+=-Pow(t,exp)*     0.00187647346*     522.57741809380*Sin( 2.07590383214 +      522.57741809380*t)

      Dim jupiter_r_1 as Double=0.0
      exp=1
      jupiter_r_1+=Pow(t,exp-1)*exp*     0.01271801520*Cos( 2.64937512894 +      529.69096509460*t)-Pow(t,exp)*     0.01271801520*     529.69096509460*Sin( 2.64937512894 +      529.69096509460*t)

      jupiter_r=jupiter_r_0+jupiter_r_1
   End Function

   Shared Function mars_l(t as Double) as Double
      Dim exp as Double=0.0
      Dim mars_l_0 as Double=0.0
      exp=0
      mars_l_0+=-Pow(t,exp)*     6.20347711581*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      mars_l_0+=-Pow(t,exp)*     0.18656368093*    3340.61242669980*Sin( 5.05037100270 +     3340.61242669980*t)
      mars_l_0+=-Pow(t,exp)*     0.01108216816*    6681.22485339960*Sin( 5.40099836344 +     6681.22485339960*t)

      Dim mars_l_1 as Double=0.0
      exp=1
      mars_l_1+=Pow(t,exp-1)*exp*  3340.61242700512*Cos( 0.00000000000 +        0.00000000000*t)-Pow(t,exp)*  3340.61242700512*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      mars_l_1+=Pow(t,exp-1)*exp*     0.01457554523*Cos( 3.60433733236 +     3340.61242669980*t)-Pow(t,exp)*     0.01457554523*    3340.61242669980*Sin( 3.60433733236 +     3340.61242669980*t)
      mars_l_1+=Pow(t,exp-1)*exp*     0.00168414711*Cos( 3.92318567804 +     6681.22485339960*t)-Pow(t,exp)*     0.00168414711*    6681.22485339960*Sin( 3.92318567804 +     6681.22485339960*t)

      mars_l=mars_l_0+mars_l_1
   End Function

   Shared Function mars_b(t as Double) as Double
      Dim exp as Double=0.0
      Dim mars_b_0 as Double=0.0
      exp=0
      mars_b_0+=-Pow(t,exp)*     0.03197134986*    3340.61242669980*Sin( 3.76832042431 +     3340.61242669980*t)
      mars_b_0+=-Pow(t,exp)*     0.00298033234*    6681.22485339960*Sin( 4.10616996305 +     6681.22485339960*t)
      mars_b_0+=-Pow(t,exp)*     0.00289104742*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)

      Dim mars_b_1 as Double=0.0
      exp=1
      mars_b_1+=Pow(t,exp-1)*exp*     0.00217310991*Cos( 6.04472194776 +     3340.61242669980*t)-Pow(t,exp)*     0.00217310991*    3340.61242669980*Sin( 6.04472194776 +     3340.61242669980*t)

      mars_b=mars_b_0+mars_b_1
   End Function

   Shared Function mars_r(t as Double) as Double
      Dim exp as Double=0.0
      Dim mars_r_0 as Double=0.0
      exp=0
      mars_r_0+=-Pow(t,exp)*     1.53033488271*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      mars_r_0+=-Pow(t,exp)*     0.14184953160*    3340.61242669980*Sin( 3.47971283528 +     3340.61242669980*t)
      mars_r_0+=-Pow(t,exp)*     0.00660776362*    6681.22485339960*Sin( 3.81783443019 +     6681.22485339960*t)

      Dim mars_r_1 as Double=0.0
      exp=1
      mars_r_1+=Pow(t,exp-1)*exp*     0.01107433345*Cos( 2.03250524857 +     3340.61242669980*t)-Pow(t,exp)*     0.01107433345*    3340.61242669980*Sin( 2.03250524857 +     3340.61242669980*t)
      mars_r_1+=Pow(t,exp-1)*exp*     0.00103175887*Cos( 2.37071847807 +     6681.22485339960*t)-Pow(t,exp)*     0.00103175887*    6681.22485339960*Sin( 2.37071847807 +     6681.22485339960*t)

      mars_r=mars_r_0+mars_r_1
   End Function

   Shared Function mercury_l(t as Double) as Double
      Dim exp as Double=0.0
      Dim mercury_l_0 as Double=0.0
      exp=0
      mercury_l_0+=-Pow(t,exp)*     4.40250710144*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      mercury_l_0+=-Pow(t,exp)*     0.40989414977*   26087.90314157420*Sin( 1.48302034195 +    26087.90314157420*t)
      mercury_l_0+=-Pow(t,exp)*     0.05046294200*   52175.80628314840*Sin( 4.47785489551 +    52175.80628314840*t)
      mercury_l_0+=-Pow(t,exp)*     0.00855346844*   78263.70942472259*Sin( 1.16520322459 +    78263.70942472259*t)
      mercury_l_0+=-Pow(t,exp)*     0.00165590362*  104351.61256629678*Sin( 4.11969163423 +   104351.61256629678*t)

      Dim mercury_l_1 as Double=0.0
      exp=1
      mercury_l_1+=Pow(t,exp-1)*exp* 26087.90313685529*Cos( 0.00000000000 +        0.00000000000*t)-Pow(t,exp)* 26087.90313685529*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      mercury_l_1+=Pow(t,exp-1)*exp*     0.01131199811*Cos( 6.21874197797 +    26087.90314157420*t)-Pow(t,exp)*     0.01131199811*   26087.90314157420*Sin( 6.21874197797 +    26087.90314157420*t)
      mercury_l_1+=Pow(t,exp-1)*exp*     0.00292242298*Cos( 3.04449355541 +    52175.80628314840*t)-Pow(t,exp)*     0.00292242298*   52175.80628314840*Sin( 3.04449355541 +    52175.80628314840*t)

      mercury_l=mercury_l_0+mercury_l_1
   End Function

   Shared Function mercury_b(t as Double) as Double
      Dim exp as Double=0.0
      Dim mercury_b_0 as Double=0.0
      exp=0
      mercury_b_0+=-Pow(t,exp)*     0.11737528961*   26087.90314157420*Sin( 1.98357498767 +    26087.90314157420*t)
      mercury_b_0+=-Pow(t,exp)*     0.02388076996*   52175.80628314840*Sin( 5.03738959686 +    52175.80628314840*t)
      mercury_b_0+=-Pow(t,exp)*     0.01222839532*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t)
      mercury_b_0+=-Pow(t,exp)*     0.00543251810*   78263.70942472259*Sin( 1.79644363964 +    78263.70942472259*t)
      mercury_b_0+=-Pow(t,exp)*     0.00129778770*  104351.61256629678*Sin( 4.83232503958 +   104351.61256629678*t)

      Dim mercury_b_1 as Double=0.0
      exp=1
      mercury_b_1+=Pow(t,exp-1)*exp*     0.00274646065*Cos( 3.95008450011 +    26087.90314157420*t)-Pow(t,exp)*     0.00274646065*   26087.90314157420*Sin( 3.95008450011 +    26087.90314157420*t)

      mercury_b=mercury_b_0+mercury_b_1
   End Function

   Shared Function mercury_r(t as Double) as Double
      Dim exp as Double=0.0
      Dim mercury_r_0 as Double=0.0
      exp=0
      mercury_r_0+=-Pow(t,exp)*     0.39528271651*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      mercury_r_0+=-Pow(t,exp)*     0.07834131818*   26087.90314157420*Sin( 6.19233722598 +    26087.90314157420*t)
      mercury_r_0+=-Pow(t,exp)*     0.00795525558*   52175.80628314840*Sin( 2.95989690104 +    52175.80628314840*t)
      mercury_r_0+=-Pow(t,exp)*     0.00121281764*   78263.70942472259*Sin( 6.01064153797 +    78263.70942472259*t)

      Dim mercury_r_1 as Double=0.0
      exp=1
      mercury_r_1+=Pow(t,exp-1)*exp*     0.00217347740*Cos( 4.65617158665 +    26087.90314157420*t)-Pow(t,exp)*     0.00217347740*   26087.90314157420*Sin( 4.65617158665 +    26087.90314157420*t)

      mercury_r=mercury_r_0+mercury_r_1
   End Function

   Shared Function neptune_l(t as Double) as Double
      Dim exp as Double=0.0
      Dim neptune_l_0 as Double=0.0
      exp=0
      neptune_l_0+=-Pow(t,exp)*     5.31188633046*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      neptune_l_0+=-Pow(t,exp)*     0.01798475530*      38.13303563780*Sin( 2.90101273890 +       38.13303563780*t)
      neptune_l_0+=-Pow(t,exp)*     0.01019727652*       1.48447270830*Sin( 0.48580922867 +        1.48447270830*t)
      neptune_l_0+=-Pow(t,exp)*     0.00124531845*      36.64856292950*Sin( 4.83008090676 +       36.64856292950*t)

      Dim neptune_l_1 as Double=0.0
      exp=1
      neptune_l_1+=Pow(t,exp-1)*exp*    38.13303563957*Cos( 0.00000000000 +        0.00000000000*t)-Pow(t,exp)*    38.13303563957*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)

      neptune_l=neptune_l_0+neptune_l_1
   End Function

   Shared Function neptune_b(t as Double) as Double
      Dim exp as Double=0.0
      Dim neptune_b_0 as Double=0.0
      exp=0
      neptune_b_0+=-Pow(t,exp)*     0.03088622933*      38.13303563780*Sin( 1.44104372644 +       38.13303563780*t)

      neptune_b=neptune_b_0
   End Function

   Shared Function neptune_r(t as Double) as Double
      Dim exp as Double=0.0
      Dim neptune_r_0 as Double=0.0
      exp=0
      neptune_r_0+=-Pow(t,exp)*    30.07013205828*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      neptune_r_0+=-Pow(t,exp)*     0.27062259632*      38.13303563780*Sin( 1.32999459377 +       38.13303563780*t)
      neptune_r_0+=-Pow(t,exp)*     0.01691764014*      36.64856292950*Sin( 3.25186135653 +       36.64856292950*t)
      neptune_r_0+=-Pow(t,exp)*     0.00807830553*       1.48447270830*Sin( 5.18592878704 +        1.48447270830*t)
      neptune_r_0+=-Pow(t,exp)*     0.00537760510*      35.16409022120*Sin( 4.52113935896 +       35.16409022120*t)
      neptune_r_0+=-Pow(t,exp)*     0.00495725141*     491.55792945680*Sin( 1.57105641650 +      491.55792945680*t)
      neptune_r_0+=-Pow(t,exp)*     0.00274571975*     175.16605980020*Sin( 1.84552258866 +      175.16605980020*t)
      neptune_r_0+=-Pow(t,exp)*     0.00135134092*      39.61750834610*Sin( 3.37220609835 +       39.61750834610*t)
      neptune_r_0+=-Pow(t,exp)*     0.00121801746*      76.26607127560*Sin( 5.79754470298 +       76.26607127560*t)
      neptune_r_0+=-Pow(t,exp)*     0.00100896068*      73.29712585900*Sin( 0.37702724930 +       73.29712585900*t)

      Dim neptune_r_1 as Double=0.0
      exp=1
      neptune_r_1+=Pow(t,exp-1)*exp*     0.00236338618*Cos( 0.70497954792 +       38.13303563780*t)-Pow(t,exp)*     0.00236338618*      38.13303563780*Sin( 0.70497954792 +       38.13303563780*t)

      neptune_r=neptune_r_0+neptune_r_1
   End Function

   Shared Function saturn_l(t as Double) as Double
      Dim exp as Double=0.0
      Dim saturn_l_0 as Double=0.0
      exp=0
      saturn_l_0+=-Pow(t,exp)*     0.87401354025*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      saturn_l_0+=-Pow(t,exp)*     0.11107659762*     213.29909543800*Sin( 3.96205090159 +      213.29909543800*t)
      saturn_l_0+=-Pow(t,exp)*     0.01414150957*       7.11354700080*Sin( 4.58581516874 +        7.11354700080*t)
      saturn_l_0+=-Pow(t,exp)*     0.00398379389*     206.18554843720*Sin( 0.52112032699 +      206.18554843720*t)
      saturn_l_0+=-Pow(t,exp)*     0.00350769243*     426.59819087600*Sin( 3.30329907896 +      426.59819087600*t)
      saturn_l_0+=-Pow(t,exp)*     0.00206816305*     103.09277421860*Sin( 0.24658372002 +      103.09277421860*t)

      Dim saturn_l_1 as Double=0.0
      exp=1
      saturn_l_1+=Pow(t,exp-1)*exp*   213.29909521690*Cos( 0.00000000000 +        0.00000000000*t)-Pow(t,exp)*   213.29909521690*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      saturn_l_1+=Pow(t,exp-1)*exp*     0.01297370862*Cos( 1.82834923978 +      213.29909543800*t)-Pow(t,exp)*     0.01297370862*     213.29909543800*Sin( 1.82834923978 +      213.29909543800*t)
      saturn_l_1+=Pow(t,exp-1)*exp*     0.00564345393*Cos( 2.88499717272 +        7.11354700080*t)-Pow(t,exp)*     0.00564345393*       7.11354700080*Sin( 2.88499717272 +        7.11354700080*t)
      saturn_l_1+=Pow(t,exp-1)*exp*     0.00107674962*Cos( 2.27769131009 +      206.18554843720*t)-Pow(t,exp)*     0.00107674962*     206.18554843720*Sin( 2.27769131009 +      206.18554843720*t)

      Dim saturn_l_2 as Double=0.0
      exp=2
      saturn_l_2+=Pow(t,exp-1)*exp*     0.00116441330*Cos( 1.17988132879 +        7.11354700080*t)-Pow(t,exp)*     0.00116441330*       7.11354700080*Sin( 1.17988132879 +        7.11354700080*t)

      saturn_l=saturn_l_0+saturn_l_1+saturn_l_2
   End Function

   Shared Function saturn_b(t as Double) as Double
      Dim exp as Double=0.0
      Dim saturn_b_0 as Double=0.0
      exp=0
      saturn_b_0+=-Pow(t,exp)*     0.04330678039*     213.29909543800*Sin( 3.60284428399 +      213.29909543800*t)
      saturn_b_0+=-Pow(t,exp)*     0.00240348302*     426.59819087600*Sin( 2.85238489373 +      426.59819087600*t)

      Dim saturn_b_1 as Double=0.0
      exp=1
      saturn_b_1+=Pow(t,exp-1)*exp*     0.00198927992*Cos( 4.93901017903 +      213.29909543800*t)-Pow(t,exp)*     0.00198927992*     213.29909543800*Sin( 4.93901017903 +      213.29909543800*t)

      saturn_b=saturn_b_0+saturn_b_1
   End Function

   Shared Function saturn_r(t as Double) as Double
      Dim exp as Double=0.0
      Dim saturn_r_0 as Double=0.0
      exp=0
      saturn_r_0+=-Pow(t,exp)*     9.55758135486*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      saturn_r_0+=-Pow(t,exp)*     0.52921382865*     213.29909543800*Sin( 2.39226219573 +      213.29909543800*t)
      saturn_r_0+=-Pow(t,exp)*     0.01873679867*     206.18554843720*Sin( 5.23549604660 +      206.18554843720*t)
      saturn_r_0+=-Pow(t,exp)*     0.01464663929*     426.59819087600*Sin( 1.64763042902 +      426.59819087600*t)
      saturn_r_0+=-Pow(t,exp)*     0.00821891141*     316.39186965660*Sin( 5.93520042303 +      316.39186965660*t)
      saturn_r_0+=-Pow(t,exp)*     0.00547506923*     103.09277421860*Sin( 5.01532618980 +      103.09277421860*t)
      saturn_r_0+=-Pow(t,exp)*     0.00371684650*     220.41264243880*Sin( 2.27114821115 +      220.41264243880*t)
      saturn_r_0+=-Pow(t,exp)*     0.00361778765*       7.11354700080*Sin( 3.13904301847 +        7.11354700080*t)
      saturn_r_0+=-Pow(t,exp)*     0.00140617506*     632.78373931320*Sin( 5.70406606781 +      632.78373931320*t)
      saturn_r_0+=-Pow(t,exp)*     0.00108974848*     110.20632121940*Sin( 3.29313390175 +      110.20632121940*t)

      Dim saturn_r_1 as Double=0.0
      exp=1
      saturn_r_1+=Pow(t,exp-1)*exp*     0.06182981340*Cos( 0.25843511480 +      213.29909543800*t)-Pow(t,exp)*     0.06182981340*     213.29909543800*Sin( 0.25843511480 +      213.29909543800*t)
      saturn_r_1+=Pow(t,exp-1)*exp*     0.00506577242*Cos( 0.71114625261 +      206.18554843720*t)-Pow(t,exp)*     0.00506577242*     206.18554843720*Sin( 0.71114625261 +      206.18554843720*t)
      saturn_r_1+=Pow(t,exp-1)*exp*     0.00341394029*Cos( 5.79635741658 +      426.59819087600*t)-Pow(t,exp)*     0.00341394029*     426.59819087600*Sin( 5.79635741658 +      426.59819087600*t)
      saturn_r_1+=Pow(t,exp-1)*exp*     0.00188491195*Cos( 0.47215589652 +      220.41264243880*t)-Pow(t,exp)*     0.00188491195*     220.41264243880*Sin( 0.47215589652 +      220.41264243880*t)
      saturn_r_1+=Pow(t,exp-1)*exp*     0.00186261486*Cos( 3.14159265359 +        0.00000000000*t)-Pow(t,exp)*     0.00186261486*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t)
      saturn_r_1+=Pow(t,exp-1)*exp*     0.00143891146*Cos( 1.40744822888 +        7.11354700080*t)-Pow(t,exp)*     0.00143891146*       7.11354700080*Sin( 1.40744822888 +        7.11354700080*t)

      Dim saturn_r_2 as Double=0.0
      exp=2
      saturn_r_2+=Pow(t,exp-1)*exp*     0.00436902572*Cos( 4.78671677509 +      213.29909543800*t)-Pow(t,exp)*     0.00436902572*     213.29909543800*Sin( 4.78671677509 +      213.29909543800*t)

      saturn_r=saturn_r_0+saturn_r_1+saturn_r_2
   End Function

   Shared Function uranus_l(t as Double) as Double
      Dim exp as Double=0.0
      Dim uranus_l_0 as Double=0.0
      exp=0
      uranus_l_0+=-Pow(t,exp)*     5.48129294297*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      uranus_l_0+=-Pow(t,exp)*     0.09260408234*      74.78159856730*Sin( 0.89106421507 +       74.78159856730*t)
      uranus_l_0+=-Pow(t,exp)*     0.01504247898*       1.48447270830*Sin( 3.62719260920 +        1.48447270830*t)
      uranus_l_0+=-Pow(t,exp)*     0.00365981674*      73.29712585900*Sin( 1.89962179044 +       73.29712585900*t)
      uranus_l_0+=-Pow(t,exp)*     0.00272328168*     149.56319713460*Sin( 3.35823706307 +      149.56319713460*t)

      Dim uranus_l_1 as Double=0.0
      exp=1
      uranus_l_1+=Pow(t,exp-1)*exp*    74.78159860910*Cos( 0.00000000000 +        0.00000000000*t)-Pow(t,exp)*    74.78159860910*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      uranus_l_1+=Pow(t,exp-1)*exp*     0.00154332863*Cos( 5.24158770553 +       74.78159856730*t)-Pow(t,exp)*     0.00154332863*      74.78159856730*Sin( 5.24158770553 +       74.78159856730*t)

      uranus_l=uranus_l_0+uranus_l_1
   End Function

   Shared Function uranus_b(t as Double) as Double
      Dim exp as Double=0.0
      Dim uranus_b_0 as Double=0.0
      exp=0
      uranus_b_0+=-Pow(t,exp)*     0.01346277648*      74.78159856730*Sin( 2.61877810547 +       74.78159856730*t)

      uranus_b=uranus_b_0
   End Function

   Shared Function uranus_r(t as Double) as Double
      Dim exp as Double=0.0
      Dim uranus_r_0 as Double=0.0
      exp=0
      uranus_r_0+=-Pow(t,exp)*    19.21264847206*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      uranus_r_0+=-Pow(t,exp)*     0.88784984413*      74.78159856730*Sin( 5.60377527014 +       74.78159856730*t)
      uranus_r_0+=-Pow(t,exp)*     0.03440836062*      73.29712585900*Sin( 0.32836099706 +       73.29712585900*t)
      uranus_r_0+=-Pow(t,exp)*     0.02055653860*     149.56319713460*Sin( 1.78295159330 +      149.56319713460*t)
      uranus_r_0+=-Pow(t,exp)*     0.00649322410*      76.26607127560*Sin( 4.52247285911 +       76.26607127560*t)
      uranus_r_0+=-Pow(t,exp)*     0.00602247865*      63.73589830340*Sin( 3.86003823674 +       63.73589830340*t)
      uranus_r_0+=-Pow(t,exp)*     0.00496404167*     454.90936652730*Sin( 1.40139935333 +      454.90936652730*t)
      uranus_r_0+=-Pow(t,exp)*     0.00338525369*     138.51749687070*Sin( 1.58002770318 +      138.51749687070*t)
      uranus_r_0+=-Pow(t,exp)*     0.00243509114*      71.81265315070*Sin( 1.57086606044 +       71.81265315070*t)
      uranus_r_0+=-Pow(t,exp)*     0.00190522303*       1.48447270830*Sin( 1.99809394714 +        1.48447270830*t)
      uranus_r_0+=-Pow(t,exp)*     0.00161858838*     148.07872442630*Sin( 2.79137786799 +      148.07872442630*t)
      uranus_r_0+=-Pow(t,exp)*     0.00143706183*      11.04570026390*Sin( 1.38368544947 +       11.04570026390*t)

      Dim uranus_r_1 as Double=0.0
      exp=1
      uranus_r_1+=Pow(t,exp-1)*exp*     0.01479896629*Cos( 3.67205697578 +       74.78159856730*t)-Pow(t,exp)*     0.01479896629*      74.78159856730*Sin( 3.67205697578 +       74.78159856730*t)

      uranus_r=uranus_r_0+uranus_r_1
   End Function

   Shared Function venus_l(t as Double) as Double
      Dim exp as Double=0.0
      Dim venus_l_0 as Double=0.0
      exp=0
      venus_l_0+=-Pow(t,exp)*     3.17614666774*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      venus_l_0+=-Pow(t,exp)*     0.01353968419*   10213.28554621100*Sin( 5.59313319619 +    10213.28554621100*t)

      Dim venus_l_1 as Double=0.0
      exp=1
      venus_l_1+=Pow(t,exp-1)*exp* 10213.28554621638*Cos( 0.00000000000 +        0.00000000000*t)-Pow(t,exp)* 10213.28554621638*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)

      venus_l=venus_l_0+venus_l_1
   End Function

   Shared Function venus_b(t as Double) as Double
      Dim exp as Double=0.0
      Dim venus_b_0 as Double=0.0
      exp=0
      venus_b_0+=-Pow(t,exp)*     0.05923638472*   10213.28554621100*Sin( 0.26702775812 +    10213.28554621100*t)

      Dim venus_b_1 as Double=0.0
      exp=1
      venus_b_1+=Pow(t,exp-1)*exp*     0.00287821243*Cos( 1.88964962838 +    10213.28554621100*t)-Pow(t,exp)*     0.00287821243*   10213.28554621100*Sin( 1.88964962838 +    10213.28554621100*t)

      venus_b=venus_b_0+venus_b_1
   End Function

   Shared Function venus_r(t as Double) as Double
      Dim exp as Double=0.0
      Dim venus_r_0 as Double=0.0
      exp=0
      venus_r_0+=-Pow(t,exp)*     0.72334820891*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t)
      venus_r_0+=-Pow(t,exp)*     0.00489824182*   10213.28554621100*Sin( 4.02151831717 +    10213.28554621100*t)

      venus_r=venus_r_0
   End Function

End Class
