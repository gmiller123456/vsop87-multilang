//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

package vsop87_nano

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
   var venus_q_1 float64 = 0.0

   venus_q_1 +=      0.00138133826 * math.Cos( 0.00000000000 +        0.00000000000*t)
   venus_q_1=venus_q_1*t

   var venus_q_0 float64 = 0.0

   venus_q_0 +=      0.00682410142 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return venus_q_1+venus_q_0
}

func venus_h(t float64) float64{
   var venus_h_0 float64 = 0.0

   venus_h_0 +=      0.00506684726 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return venus_h_0
}

func venus_k(t float64) float64{
   var venus_k_0 float64 = 0.0

   venus_k_0 +=      0.00449282133 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return venus_k_0
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
   var uranus_p_0 float64 = 0.0

   uranus_p_0 +=      0.00648617008 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return uranus_p_0
}

func uranus_q(t float64) float64{
   var uranus_q_0 float64 = 0.0

   uranus_q_0 +=      0.00185915075 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return uranus_q_0
}

func uranus_h(t float64) float64{
   var uranus_h_0 float64 = 0.0

   uranus_h_0 +=      0.00116288289 * math.Cos( 3.77434233468 +      380.12776796000*t)
   uranus_h_0 +=      0.00136132837 * math.Cos( 3.91136489012 +       74.78159856730*t)
   uranus_h_0 +=      0.00210407426 * math.Cos( 0.42744224313 +        1.48447270830*t)
   uranus_h_0 +=      0.00274676149 * math.Cos( 5.31178834743 +      529.69096509460*t)
   uranus_h_0 +=      0.00563791307 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return uranus_h_0
}

func uranus_k(t float64) float64{
   var uranus_k_0 float64 = 0.0

   uranus_k_0 +=      0.00116379910 * math.Cos( 2.20321839185 +      380.12776796000*t)
   uranus_k_0 +=      0.00136013862 * math.Cos( 5.48189691557 +       74.78159856730*t)
   uranus_k_0 +=      0.00209611522 * math.Cos( 1.99913587697 +        1.48447270830*t)
   uranus_k_0 +=      0.00274532742 * math.Cos( 0.59960944961 +      529.69096509460*t)
   uranus_k_0 +=      0.04595132376 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return uranus_k_0
}

func uranus_l(t float64) float64{
   var uranus_l_1 float64 = 0.0

   uranus_l_1 +=     74.78159856730 * math.Cos( 0.00000000000 +        0.00000000000*t)
   uranus_l_1=uranus_l_1*t

   var uranus_l_0 float64 = 0.0

   uranus_l_0 +=      0.00341045477 * math.Cos( 6.11377091373 +      454.90936652730*t)
   uranus_l_0 +=      0.01503941337 * math.Cos( 3.62721239702 +        1.48447270830*t)
   uranus_l_0 +=      5.48129387159 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return uranus_l_1+uranus_l_0
}

func uranus_a(t float64) float64{
   var uranus_a_0 float64 = 0.0

   uranus_a_0 +=      0.00102755162 * math.Cos( 0.89451486294 +      351.81659230870*t)
   uranus_a_0 +=      0.00120436873 * math.Cos( 0.15931700196 +      277.03499374140*t)
   uranus_a_0 +=      0.00124336026 * math.Cos( 1.34101096123 +       11.04570026390*t)
   uranus_a_0 +=      0.00148020073 * math.Cos( 4.84763548983 +       63.73589830340*t)
   uranus_a_0 +=      0.00313720406 * math.Cos( 2.19852745462 +       74.78159856730*t)
   uranus_a_0 +=      0.00391818405 * math.Cos( 2.05935807638 +        1.48447270830*t)
   uranus_a_0 +=      0.00365190162 * math.Cos( 1.75064255586 +      984.60033162190*t)
   uranus_a_0 +=      0.00406413575 * math.Cos( 5.21303965129 +      380.12776796000*t)
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
   var saturn_q_0 float64 = 0.0

   saturn_q_0 +=      0.00871747436 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return saturn_q_0
}

func saturn_h(t float64) float64{
   var saturn_h_1 float64 = 0.0

   saturn_h_1 +=      0.00375593887 * math.Cos( 3.14159265359 +        0.00000000000*t)
   saturn_h_1=saturn_h_1*t

   var saturn_h_0 float64 = 0.0

   saturn_h_0 +=      0.00124537423 * math.Cos( 5.60295505720 +      213.29909543800*t)
   saturn_h_0 +=      0.00196887619 * math.Cos( 5.31528897782 +      529.69096509460*t)
   saturn_h_0 +=      0.00154553684 * math.Cos( 3.59447132230 +        7.11354700080*t)
   saturn_h_0 +=      0.05542964254 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return saturn_h_1+saturn_h_0
}

func saturn_k(t float64) float64{
   var saturn_k_1 float64 = 0.0

   saturn_k_1 +=      0.00529602626 * math.Cos( 3.14159265359 +        0.00000000000*t)
   saturn_k_1=saturn_k_1*t

   var saturn_k_0 float64 = 0.0

   saturn_k_0 +=      0.00126322249 * math.Cos( 0.86230560136 +      213.29909543800*t)
   saturn_k_0 +=      0.00197268763 * math.Cos( 0.59616692002 +      529.69096509460*t)
   saturn_k_0 +=      0.00155326496 * math.Cos( 5.16402515606 +        7.11354700080*t)
   saturn_k_0 +=      0.00296003595 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return saturn_k_1+saturn_k_0
}

func saturn_l(t float64) float64{
   var saturn_l_2 float64 = 0.0

   saturn_l_2 +=      0.00116235667 * math.Cos( 1.17971682406 +        7.11354700080*t)
   saturn_l_2=saturn_l_2*t*t

   var saturn_l_1 float64 = 0.0

   saturn_l_1 +=      0.00563352798 * math.Cos( 2.88478561660 +        7.11354700080*t)
   saturn_l_1 +=    213.29909543800 * math.Cos( 0.00000000000 +        0.00000000000*t)
   saturn_l_1=saturn_l_1*t

   var saturn_l_0 float64 = 0.0

   saturn_l_0 +=      0.00149861955 * math.Cos( 0.26851062811 +      103.09277421860*t)
   saturn_l_0 +=      0.00259784547 * math.Cos( 4.43343036691 +      316.39186965660*t)
   saturn_l_0 +=      0.01411655077 * math.Cos( 4.58553469006 +        7.11354700080*t)
   saturn_l_0 +=      0.87401675650 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return saturn_l_2+saturn_l_1+saturn_l_0
}

func saturn_a(t float64) float64{
   var saturn_a_1 float64 = 0.0

   saturn_a_1 +=      0.00115108584 * math.Cos( 1.31913907888 +        7.11354700080*t)
   saturn_a_1=saturn_a_1*t

   var saturn_a_0 float64 = 0.0

   saturn_a_0 +=      0.00142075017 * math.Cos( 2.32273369924 +      949.17560896980*t)
   saturn_a_0 +=      0.00146816895 * math.Cos( 0.07437685257 +      846.08283475120*t)
   saturn_a_0 +=      0.00143605062 * math.Cos( 4.85917505070 +      213.29909543800*t)
   saturn_a_0 +=      0.00149912686 * math.Cos( 3.86270340354 +      419.48464387520*t)
   saturn_a_0 +=      0.00308461590 * math.Cos( 2.55488166399 +      632.78373931320*t)
   saturn_a_0 +=      0.00289062242 * math.Cos( 3.01816520038 +        7.11354700080*t)
   saturn_a_0 +=      0.00354492417 * math.Cos( 5.81482665415 +      103.09277421860*t)
   saturn_a_0 +=      0.03363448736 * math.Cos( 6.00973673460 +      316.39186965660*t)
   saturn_a_0 +=      9.55490959574 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return saturn_a_1+saturn_a_0
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
   var neptune_h_0 float64 = 0.0

   neptune_h_0 +=      0.00131043136 * math.Cos( 4.11313570675 +      453.42489381900*t)
   neptune_h_0 +=      0.00136278888 * math.Cos( 3.74103613444 +       38.13303563780*t)
   neptune_h_0 +=      0.00344034784 * math.Cos( 5.31201105782 +      529.69096509460*t)
   neptune_h_0 +=      0.00669242413 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return neptune_h_0
}

func neptune_k(t float64) float64{
   var neptune_k_0 float64 = 0.0

   neptune_k_0 +=      0.00131042161 * math.Cos( 2.54238248127 +      453.42489381900*t)
   neptune_k_0 +=      0.00136232980 * math.Cos( 5.31190360139 +       38.13303563780*t)
   neptune_k_0 +=      0.00343810387 * math.Cos( 0.59989432818 +      529.69096509460*t)
   neptune_k_0 +=      0.00599977571 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return neptune_k_0
}

func neptune_l(t float64) float64{
   var neptune_l_1 float64 = 0.0

   neptune_l_1 +=     38.13303563780 * math.Cos( 0.00000000000 +        0.00000000000*t)
   neptune_l_1=neptune_l_1*t

   var neptune_l_0 float64 = 0.0

   neptune_l_0 +=      0.00441710236 * math.Cos( 0.00020868462 +      491.55792945680*t)
   neptune_l_0 +=      0.01017628072 * math.Cos( 0.48586478491 +        1.48447270830*t)
   neptune_l_0 +=      5.31188628676 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return neptune_l_1+neptune_l_0
}

func neptune_a(t float64) float64{
   var neptune_a_0 float64 = 0.0

   neptune_a_0 +=      0.00101174992 * math.Cos( 2.72476929716 +     6244.94281435360*t)
   neptune_a_0 +=      0.00105687575 * math.Cos( 3.48447772920 +       73.29712585900*t)
   neptune_a_0 +=      0.00185666340 * math.Cos( 1.07141029917 +      388.46515523820*t)
   neptune_a_0 +=      0.00144701407 * math.Cos( 3.36967102070 +      453.42489381900*t)
   neptune_a_0 +=      0.00462318447 * math.Cos( 0.16921610518 +       36.64856292950*t)
   neptune_a_0 +=      0.00694303990 * math.Cos( 1.92062235445 +     1021.24889455140*t)
   neptune_a_0 +=      0.00832345688 * math.Cos( 5.19528065894 +        1.48447270830*t)
   neptune_a_0 +=      0.03597274341 * math.Cos( 1.84552690821 +      175.16605980020*t)
   neptune_a_0 +=      0.14818172119 * math.Cos( 1.57105922541 +      491.55792945680*t)
   neptune_a_0 +=     30.11038686942 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return neptune_a_0
}

func mercury_p(t float64) float64{
   var mercury_p_1 float64 = 0.0

   mercury_p_1 +=      0.00127633657 * math.Cos( 3.14159265359 +        0.00000000000*t)
   mercury_p_1=mercury_p_1*t

   var mercury_p_0 float64 = 0.0

   mercury_p_0 +=      0.04563550461 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_p_1+mercury_p_0
}

func mercury_q(t float64) float64{
   var mercury_q_0 float64 = 0.0

   mercury_q_0 +=      0.04061563384 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_q_0
}

func mercury_h(t float64) float64{
   var mercury_h_1 float64 = 0.0

   mercury_h_1 +=      0.00143750118 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mercury_h_1=mercury_h_1*t

   var mercury_h_0 float64 = 0.0

   mercury_h_0 +=      0.20072331368 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_h_1+mercury_h_0
}

func mercury_k(t float64) float64{
   var mercury_k_1 float64 = 0.0

   mercury_k_1 +=      0.00552114624 * math.Cos( 3.14159265359 +        0.00000000000*t)
   mercury_k_1=mercury_k_1*t

   var mercury_k_0 float64 = 0.0

   mercury_k_0 +=      0.04466059760 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_k_1+mercury_k_0
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
   var mars_p_1 float64 = 0.0

   mars_p_1 +=      0.00108020083 * math.Cos( 3.14159265359 +        0.00000000000*t)
   mars_p_1=mars_p_1*t

   var mars_p_0 float64 = 0.0

   mars_p_0 +=      0.01228449307 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_p_1+mars_p_0
}

func mars_q(t float64) float64{
   var mars_q_0 float64 = 0.0

   mars_q_0 +=      0.01047042574 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_q_0
}

func mars_h(t float64) float64{
   var mars_h_1 float64 = 0.0

   mars_h_1 +=      0.00624657465 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_h_1=mars_h_1*t

   var mars_h_0 float64 = 0.0

   mars_h_0 +=      0.03789973236 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return mars_h_1+mars_h_0
}

func mars_k(t float64) float64{
   var mars_k_1 float64 = 0.0

   mars_k_1 +=      0.00376330152 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_k_1=mars_k_1*t

   var mars_k_0 float64 = 0.0

   mars_k_0 +=      0.08536560252 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_k_1+mars_k_0
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
   var jupiter_q_0 float64 = 0.0

   jupiter_q_0 +=      0.00206561098 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return jupiter_q_0
}

func jupiter_h(t float64) float64{
   var jupiter_h_1 float64 = 0.0

   jupiter_h_1 +=      0.00217149360 * math.Cos( 0.00000000000 +        0.00000000000*t)
   jupiter_h_1=jupiter_h_1*t

   var jupiter_h_0 float64 = 0.0

   jupiter_h_0 +=      0.01200385748 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_h_1+jupiter_h_0
}

func jupiter_k(t float64) float64{
   var jupiter_k_1 float64 = 0.0

   jupiter_k_1 +=      0.00113010377 * math.Cos( 0.00000000000 +        0.00000000000*t)
   jupiter_k_1=jupiter_k_1*t

   var jupiter_k_0 float64 = 0.0

   jupiter_k_0 +=      0.04698572124 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_k_1+jupiter_k_0
}

func jupiter_l(t float64) float64{
   var jupiter_l_1 float64 = 0.0

   jupiter_l_1 +=      0.00228875491 * math.Cos( 6.02639570653 +        7.11354700080*t)
   jupiter_l_1 +=    529.69096509460 * math.Cos( 0.00000000000 +        0.00000000000*t)
   jupiter_l_1=jupiter_l_1*t

   var jupiter_l_0 float64 = 0.0

   jupiter_l_0 +=      0.00573506125 * math.Cos( 1.44396306420 +        7.11354700080*t)
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
   var emb_q_1 float64 = 0.0

   emb_q_1 +=      0.00113468869 * math.Cos( 3.14159265359 +        0.00000000000*t)
   emb_q_1=emb_q_1*t

   return emb_q_1
}

func emb_h(t float64) float64{
   var emb_h_0 float64 = 0.0

   emb_h_0 +=      0.01628447663 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return emb_h_0
}

func emb_k(t float64) float64{
   var emb_k_0 float64 = 0.0

   emb_k_0 +=      0.00374081650 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return emb_k_0
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

