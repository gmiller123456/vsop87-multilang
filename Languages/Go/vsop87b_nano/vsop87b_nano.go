//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

package vsop87b_nano

import ("math")

func GetMercury(t float64) [3]float64{
   var temp [3]float64
   temp[0]=mercury_l(t)
   temp[1]=mercury_b(t)
   temp[2]=mercury_r(t)

   return temp
}

func GetVenus(t float64) [3]float64{
   var temp [3]float64
   temp[0]=venus_l(t)
   temp[1]=venus_b(t)
   temp[2]=venus_r(t)

   return temp
}

func GetEarth(t float64) [3]float64{
   var temp [3]float64
   temp[0]=earth_l(t)
   temp[1]=earth_b(t)
   temp[2]=earth_r(t)

   return temp
}

func GetMars(t float64) [3]float64{
   var temp [3]float64
   temp[0]=mars_l(t)
   temp[1]=mars_b(t)
   temp[2]=mars_r(t)

   return temp
}

func GetJupiter(t float64) [3]float64{
   var temp [3]float64
   temp[0]=jupiter_l(t)
   temp[1]=jupiter_b(t)
   temp[2]=jupiter_r(t)

   return temp
}

func GetSaturn(t float64) [3]float64{
   var temp [3]float64
   temp[0]=saturn_l(t)
   temp[1]=saturn_b(t)
   temp[2]=saturn_r(t)

   return temp
}

func GetUranus(t float64) [3]float64{
   var temp [3]float64
   temp[0]=uranus_l(t)
   temp[1]=uranus_b(t)
   temp[2]=uranus_r(t)

   return temp
}

func GetNeptune(t float64) [3]float64{
   var temp [3]float64
   temp[0]=neptune_l(t)
   temp[1]=neptune_b(t)
   temp[2]=neptune_r(t)

   return temp
}

func venus_r(t float64) float64{
   var venus_r_0 float64 = 0.0

   venus_r_0 +=      0.00489824182 * math.Cos( 4.02151831717 +    10213.28554621100*t)
   venus_r_0 +=      0.72334820891 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return venus_r_0
}

func venus_b(t float64) float64{
   var venus_b_1 float64 = 0.0

   venus_b_1 +=      0.00287821243 * math.Cos( 1.88964962838 +    10213.28554621100*t)
   venus_b_1=venus_b_1*t

   var venus_b_0 float64 = 0.0

   venus_b_0 +=      0.05923638472 * math.Cos( 0.26702775812 +    10213.28554621100*t)
   return venus_b_1+venus_b_0
}

func venus_l(t float64) float64{
   var venus_l_1 float64 = 0.0

   venus_l_1 +=  10213.28554621638 * math.Cos( 0.00000000000 +        0.00000000000*t)
   venus_l_1=venus_l_1*t

   var venus_l_0 float64 = 0.0

   venus_l_0 +=      0.01353968419 * math.Cos( 5.59313319619 +    10213.28554621100*t)
   venus_l_0 +=      3.17614666774 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return venus_l_1+venus_l_0
}

func uranus_r(t float64) float64{
   var uranus_r_1 float64 = 0.0

   uranus_r_1 +=      0.01479896629 * math.Cos( 3.67205697578 +       74.78159856730*t)
   uranus_r_1=uranus_r_1*t

   var uranus_r_0 float64 = 0.0

   uranus_r_0 +=      0.00143706183 * math.Cos( 1.38368544947 +       11.04570026390*t)
   uranus_r_0 +=      0.00161858838 * math.Cos( 2.79137786799 +      148.07872442630*t)
   uranus_r_0 +=      0.00190522303 * math.Cos( 1.99809394714 +        1.48447270830*t)
   uranus_r_0 +=      0.00243509114 * math.Cos( 1.57086606044 +       71.81265315070*t)
   uranus_r_0 +=      0.00338525369 * math.Cos( 1.58002770318 +      138.51749687070*t)
   uranus_r_0 +=      0.00496404167 * math.Cos( 1.40139935333 +      454.90936652730*t)
   uranus_r_0 +=      0.00602247865 * math.Cos( 3.86003823674 +       63.73589830340*t)
   uranus_r_0 +=      0.00649322410 * math.Cos( 4.52247285911 +       76.26607127560*t)
   uranus_r_0 +=      0.02055653860 * math.Cos( 1.78295159330 +      149.56319713460*t)
   uranus_r_0 +=      0.03440836062 * math.Cos( 0.32836099706 +       73.29712585900*t)
   uranus_r_0 +=      0.88784984413 * math.Cos( 5.60377527014 +       74.78159856730*t)
   uranus_r_0 +=     19.21264847206 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return uranus_r_1+uranus_r_0
}

func uranus_b(t float64) float64{
   var uranus_b_0 float64 = 0.0

   uranus_b_0 +=      0.01346277648 * math.Cos( 2.61877810547 +       74.78159856730*t)
   return uranus_b_0
}

func uranus_l(t float64) float64{
   var uranus_l_1 float64 = 0.0

   uranus_l_1 +=      0.00154332863 * math.Cos( 5.24158770553 +       74.78159856730*t)
   uranus_l_1 +=     74.78159860910 * math.Cos( 0.00000000000 +        0.00000000000*t)
   uranus_l_1=uranus_l_1*t

   var uranus_l_0 float64 = 0.0

   uranus_l_0 +=      0.00272328168 * math.Cos( 3.35823706307 +      149.56319713460*t)
   uranus_l_0 +=      0.00365981674 * math.Cos( 1.89962179044 +       73.29712585900*t)
   uranus_l_0 +=      0.01504247898 * math.Cos( 3.62719260920 +        1.48447270830*t)
   uranus_l_0 +=      0.09260408234 * math.Cos( 0.89106421507 +       74.78159856730*t)
   uranus_l_0 +=      5.48129294297 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return uranus_l_1+uranus_l_0
}

func saturn_r(t float64) float64{
   var saturn_r_2 float64 = 0.0

   saturn_r_2 +=      0.00436902572 * math.Cos( 4.78671677509 +      213.29909543800*t)
   saturn_r_2=saturn_r_2*t*t

   var saturn_r_1 float64 = 0.0

   saturn_r_1 +=      0.00143891146 * math.Cos( 1.40744822888 +        7.11354700080*t)
   saturn_r_1 +=      0.00186261486 * math.Cos( 3.14159265359 +        0.00000000000*t)
   saturn_r_1 +=      0.00188491195 * math.Cos( 0.47215589652 +      220.41264243880*t)
   saturn_r_1 +=      0.00341394029 * math.Cos( 5.79635741658 +      426.59819087600*t)
   saturn_r_1 +=      0.00506577242 * math.Cos( 0.71114625261 +      206.18554843720*t)
   saturn_r_1 +=      0.06182981340 * math.Cos( 0.25843511480 +      213.29909543800*t)
   saturn_r_1=saturn_r_1*t

   var saturn_r_0 float64 = 0.0

   saturn_r_0 +=      0.00108974848 * math.Cos( 3.29313390175 +      110.20632121940*t)
   saturn_r_0 +=      0.00140617506 * math.Cos( 5.70406606781 +      632.78373931320*t)
   saturn_r_0 +=      0.00361778765 * math.Cos( 3.13904301847 +        7.11354700080*t)
   saturn_r_0 +=      0.00371684650 * math.Cos( 2.27114821115 +      220.41264243880*t)
   saturn_r_0 +=      0.00547506923 * math.Cos( 5.01532618980 +      103.09277421860*t)
   saturn_r_0 +=      0.00821891141 * math.Cos( 5.93520042303 +      316.39186965660*t)
   saturn_r_0 +=      0.01464663929 * math.Cos( 1.64763042902 +      426.59819087600*t)
   saturn_r_0 +=      0.01873679867 * math.Cos( 5.23549604660 +      206.18554843720*t)
   saturn_r_0 +=      0.52921382865 * math.Cos( 2.39226219573 +      213.29909543800*t)
   saturn_r_0 +=      9.55758135486 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return saturn_r_2+saturn_r_1+saturn_r_0
}

func saturn_b(t float64) float64{
   var saturn_b_1 float64 = 0.0

   saturn_b_1 +=      0.00198927992 * math.Cos( 4.93901017903 +      213.29909543800*t)
   saturn_b_1=saturn_b_1*t

   var saturn_b_0 float64 = 0.0

   saturn_b_0 +=      0.00240348302 * math.Cos( 2.85238489373 +      426.59819087600*t)
   saturn_b_0 +=      0.04330678039 * math.Cos( 3.60284428399 +      213.29909543800*t)
   return saturn_b_1+saturn_b_0
}

func saturn_l(t float64) float64{
   var saturn_l_2 float64 = 0.0

   saturn_l_2 +=      0.00116441330 * math.Cos( 1.17988132879 +        7.11354700080*t)
   saturn_l_2=saturn_l_2*t*t

   var saturn_l_1 float64 = 0.0

   saturn_l_1 +=      0.00107674962 * math.Cos( 2.27769131009 +      206.18554843720*t)
   saturn_l_1 +=      0.00564345393 * math.Cos( 2.88499717272 +        7.11354700080*t)
   saturn_l_1 +=      0.01297370862 * math.Cos( 1.82834923978 +      213.29909543800*t)
   saturn_l_1 +=    213.29909521690 * math.Cos( 0.00000000000 +        0.00000000000*t)
   saturn_l_1=saturn_l_1*t

   var saturn_l_0 float64 = 0.0

   saturn_l_0 +=      0.00206816305 * math.Cos( 0.24658372002 +      103.09277421860*t)
   saturn_l_0 +=      0.00350769243 * math.Cos( 3.30329907896 +      426.59819087600*t)
   saturn_l_0 +=      0.00398379389 * math.Cos( 0.52112032699 +      206.18554843720*t)
   saturn_l_0 +=      0.01414150957 * math.Cos( 4.58581516874 +        7.11354700080*t)
   saturn_l_0 +=      0.11107659762 * math.Cos( 3.96205090159 +      213.29909543800*t)
   saturn_l_0 +=      0.87401354025 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return saturn_l_2+saturn_l_1+saturn_l_0
}

func neptune_r(t float64) float64{
   var neptune_r_1 float64 = 0.0

   neptune_r_1 +=      0.00236338618 * math.Cos( 0.70497954792 +       38.13303563780*t)
   neptune_r_1=neptune_r_1*t

   var neptune_r_0 float64 = 0.0

   neptune_r_0 +=      0.00100896068 * math.Cos( 0.37702724930 +       73.29712585900*t)
   neptune_r_0 +=      0.00121801746 * math.Cos( 5.79754470298 +       76.26607127560*t)
   neptune_r_0 +=      0.00135134092 * math.Cos( 3.37220609835 +       39.61750834610*t)
   neptune_r_0 +=      0.00274571975 * math.Cos( 1.84552258866 +      175.16605980020*t)
   neptune_r_0 +=      0.00495725141 * math.Cos( 1.57105641650 +      491.55792945680*t)
   neptune_r_0 +=      0.00537760510 * math.Cos( 4.52113935896 +       35.16409022120*t)
   neptune_r_0 +=      0.00807830553 * math.Cos( 5.18592878704 +        1.48447270830*t)
   neptune_r_0 +=      0.01691764014 * math.Cos( 3.25186135653 +       36.64856292950*t)
   neptune_r_0 +=      0.27062259632 * math.Cos( 1.32999459377 +       38.13303563780*t)
   neptune_r_0 +=     30.07013205828 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return neptune_r_1+neptune_r_0
}

func neptune_b(t float64) float64{
   var neptune_b_0 float64 = 0.0

   neptune_b_0 +=      0.03088622933 * math.Cos( 1.44104372644 +       38.13303563780*t)
   return neptune_b_0
}

func neptune_l(t float64) float64{
   var neptune_l_1 float64 = 0.0

   neptune_l_1 +=     38.13303563957 * math.Cos( 0.00000000000 +        0.00000000000*t)
   neptune_l_1=neptune_l_1*t

   var neptune_l_0 float64 = 0.0

   neptune_l_0 +=      0.00124531845 * math.Cos( 4.83008090676 +       36.64856292950*t)
   neptune_l_0 +=      0.01019727652 * math.Cos( 0.48580922867 +        1.48447270830*t)
   neptune_l_0 +=      0.01798475530 * math.Cos( 2.90101273890 +       38.13303563780*t)
   neptune_l_0 +=      5.31188633046 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return neptune_l_1+neptune_l_0
}

func mercury_r(t float64) float64{
   var mercury_r_1 float64 = 0.0

   mercury_r_1 +=      0.00217347740 * math.Cos( 4.65617158665 +    26087.90314157420*t)
   mercury_r_1=mercury_r_1*t

   var mercury_r_0 float64 = 0.0

   mercury_r_0 +=      0.00121281764 * math.Cos( 6.01064153797 +    78263.70942472259*t)
   mercury_r_0 +=      0.00795525558 * math.Cos( 2.95989690104 +    52175.80628314840*t)
   mercury_r_0 +=      0.07834131818 * math.Cos( 6.19233722598 +    26087.90314157420*t)
   mercury_r_0 +=      0.39528271651 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_r_1+mercury_r_0
}

func mercury_b(t float64) float64{
   var mercury_b_1 float64 = 0.0

   mercury_b_1 +=      0.00274646065 * math.Cos( 3.95008450011 +    26087.90314157420*t)
   mercury_b_1=mercury_b_1*t

   var mercury_b_0 float64 = 0.0

   mercury_b_0 +=      0.00129778770 * math.Cos( 4.83232503958 +   104351.61256629678*t)
   mercury_b_0 +=      0.00543251810 * math.Cos( 1.79644363964 +    78263.70942472259*t)
   mercury_b_0 +=      0.01222839532 * math.Cos( 3.14159265359 +        0.00000000000*t)
   mercury_b_0 +=      0.02388076996 * math.Cos( 5.03738959686 +    52175.80628314840*t)
   mercury_b_0 +=      0.11737528961 * math.Cos( 1.98357498767 +    26087.90314157420*t)
   return mercury_b_1+mercury_b_0
}

func mercury_l(t float64) float64{
   var mercury_l_1 float64 = 0.0

   mercury_l_1 +=      0.00292242298 * math.Cos( 3.04449355541 +    52175.80628314840*t)
   mercury_l_1 +=      0.01131199811 * math.Cos( 6.21874197797 +    26087.90314157420*t)
   mercury_l_1 +=  26087.90313685529 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mercury_l_1=mercury_l_1*t

   var mercury_l_0 float64 = 0.0

   mercury_l_0 +=      0.00165590362 * math.Cos( 4.11969163423 +   104351.61256629678*t)
   mercury_l_0 +=      0.00855346844 * math.Cos( 1.16520322459 +    78263.70942472259*t)
   mercury_l_0 +=      0.05046294200 * math.Cos( 4.47785489551 +    52175.80628314840*t)
   mercury_l_0 +=      0.40989414977 * math.Cos( 1.48302034195 +    26087.90314157420*t)
   mercury_l_0 +=      4.40250710144 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_l_1+mercury_l_0
}

func mars_r(t float64) float64{
   var mars_r_1 float64 = 0.0

   mars_r_1 +=      0.00103175887 * math.Cos( 2.37071847807 +     6681.22485339960*t)
   mars_r_1 +=      0.01107433345 * math.Cos( 2.03250524857 +     3340.61242669980*t)
   mars_r_1=mars_r_1*t

   var mars_r_0 float64 = 0.0

   mars_r_0 +=      0.00660776362 * math.Cos( 3.81783443019 +     6681.22485339960*t)
   mars_r_0 +=      0.14184953160 * math.Cos( 3.47971283528 +     3340.61242669980*t)
   mars_r_0 +=      1.53033488271 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_r_1+mars_r_0
}

func mars_b(t float64) float64{
   var mars_b_1 float64 = 0.0

   mars_b_1 +=      0.00217310991 * math.Cos( 6.04472194776 +     3340.61242669980*t)
   mars_b_1=mars_b_1*t

   var mars_b_0 float64 = 0.0

   mars_b_0 +=      0.00289104742 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_b_0 +=      0.00298033234 * math.Cos( 4.10616996305 +     6681.22485339960*t)
   mars_b_0 +=      0.03197134986 * math.Cos( 3.76832042431 +     3340.61242669980*t)
   return mars_b_1+mars_b_0
}

func mars_l(t float64) float64{
   var mars_l_1 float64 = 0.0

   mars_l_1 +=      0.00168414711 * math.Cos( 3.92318567804 +     6681.22485339960*t)
   mars_l_1 +=      0.01457554523 * math.Cos( 3.60433733236 +     3340.61242669980*t)
   mars_l_1 +=   3340.61242700512 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_l_1=mars_l_1*t

   var mars_l_0 float64 = 0.0

   mars_l_0 +=      0.01108216816 * math.Cos( 5.40099836344 +     6681.22485339960*t)
   mars_l_0 +=      0.18656368093 * math.Cos( 5.05037100270 +     3340.61242669980*t)
   mars_l_0 +=      6.20347711581 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_l_1+mars_l_0
}

func jupiter_r(t float64) float64{
   var jupiter_r_1 float64 = 0.0

   jupiter_r_1 +=      0.01271801520 * math.Cos( 2.64937512894 +      529.69096509460*t)
   jupiter_r_1=jupiter_r_1*t

   var jupiter_r_0 float64 = 0.0

   jupiter_r_0 +=      0.00187647346 * math.Cos( 2.07590383214 +      522.57741809380*t)
   jupiter_r_0 +=      0.00282029458 * math.Cos( 2.57419881293 +      632.78373931320*t)
   jupiter_r_0 +=      0.00610599976 * math.Cos( 3.84115365948 +     1059.38193018920*t)
   jupiter_r_0 +=      0.25209327119 * math.Cos( 3.49108639871 +      529.69096509460*t)
   jupiter_r_0 +=      5.20887429326 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_r_1+jupiter_r_0
}

func jupiter_b(t float64) float64{
   var jupiter_b_0 float64 = 0.0

   jupiter_b_0 +=      0.00110090358 * math.Cos( 0.00000000000 +        0.00000000000*t)
   jupiter_b_0 +=      0.00109971634 * math.Cos( 3.90809347197 +     1059.38193018920*t)
   jupiter_b_0 +=      0.02268615702 * math.Cos( 3.55852606721 +      529.69096509460*t)
   return jupiter_b_0
}

func jupiter_l(t float64) float64{
   var jupiter_l_1 float64 = 0.0

   jupiter_l_1 +=      0.00228917222 * math.Cos( 6.02646855621 +        7.11354700080*t)
   jupiter_l_1 +=      0.00489503243 * math.Cos( 4.22082939470 +      529.69096509460*t)
   jupiter_l_1 +=    529.69096508814 * math.Cos( 0.00000000000 +        0.00000000000*t)
   jupiter_l_1=jupiter_l_1*t

   var jupiter_l_0 float64 = 0.0

   jupiter_l_0 +=      0.00306389205 * math.Cos( 5.41734730184 +     1059.38193018920*t)
   jupiter_l_0 +=      0.00573610142 * math.Cos( 1.44406205629 +        7.11354700080*t)
   jupiter_l_0 +=      0.09695898719 * math.Cos( 5.06191793158 +      529.69096509460*t)
   jupiter_l_0 +=      0.59954691494 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_l_1+jupiter_l_0
}

func earth_r(t float64) float64{
   var earth_r_1 float64 = 0.0

   earth_r_1 +=      0.00103018607 * math.Cos( 1.10748968172 +     6283.07584999140*t)
   earth_r_1=earth_r_1*t

   var earth_r_0 float64 = 0.0

   earth_r_0 +=      0.01670699632 * math.Cos( 3.09846350258 +     6283.07584999140*t)
   earth_r_0 +=      1.00013988784 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return earth_r_1+earth_r_0
}

func earth_b(t float64) float64{
   var earth_b_1 float64 = 0.0

   earth_b_1 +=      0.00227777722 * math.Cos( 3.41376620530 +     6283.07584999140*t)
   earth_b_1=earth_b_1*t

   return earth_b_1
}

func earth_l(t float64) float64{
   var earth_l_1 float64 = 0.0

   earth_l_1 +=      0.00206058863 * math.Cos( 2.67823455808 +     6283.07584999140*t)
   earth_l_1 +=   6283.07584999140 * math.Cos( 0.00000000000 +        0.00000000000*t)
   earth_l_1=earth_l_1*t

   var earth_l_0 float64 = 0.0

   earth_l_0 +=      0.03341656453 * math.Cos( 4.66925680415 +     6283.07584999140*t)
   earth_l_0 +=      1.75347045673 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return earth_l_1+earth_l_0
}

