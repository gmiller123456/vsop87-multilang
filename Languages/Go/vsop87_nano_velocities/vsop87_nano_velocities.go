//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

package vsop87_nano_velocities

import ("math")

func GetMercury(t float64) [6]float64{
   var temp [6]float64
   temp[0]=mercury_a(t) / 365250.0
   temp[1]=mercury_l(t) / 365250.0
   temp[2]=mercury_k(t) / 365250.0
   temp[3]=mercury_h(t) / 365250.0
   temp[4]=mercury_q(t) / 365250.0
   temp[5]=mercury_p(t) / 365250.0

   return temp
}

func GetVenus(t float64) [6]float64{
   var temp [6]float64
   temp[0]=venus_a(t) / 365250.0
   temp[1]=venus_l(t) / 365250.0
   temp[2]=venus_k(t) / 365250.0
   temp[3]=venus_h(t) / 365250.0
   temp[4]=venus_q(t) / 365250.0
   temp[5]=venus_p(t) / 365250.0

   return temp
}

func GetEmb(t float64) [6]float64{
   var temp [6]float64
   temp[0]=emb_a(t) / 365250.0
   temp[1]=emb_l(t) / 365250.0
   temp[2]=emb_k(t) / 365250.0
   temp[3]=emb_h(t) / 365250.0
   temp[4]=emb_q(t) / 365250.0
   temp[5]=emb_p(t) / 365250.0

   return temp
}

func GetMars(t float64) [6]float64{
   var temp [6]float64
   temp[0]=mars_a(t) / 365250.0
   temp[1]=mars_l(t) / 365250.0
   temp[2]=mars_k(t) / 365250.0
   temp[3]=mars_h(t) / 365250.0
   temp[4]=mars_q(t) / 365250.0
   temp[5]=mars_p(t) / 365250.0

   return temp
}

func GetJupiter(t float64) [6]float64{
   var temp [6]float64
   temp[0]=jupiter_a(t) / 365250.0
   temp[1]=jupiter_l(t) / 365250.0
   temp[2]=jupiter_k(t) / 365250.0
   temp[3]=jupiter_h(t) / 365250.0
   temp[4]=jupiter_q(t) / 365250.0
   temp[5]=jupiter_p(t) / 365250.0

   return temp
}

func GetSaturn(t float64) [6]float64{
   var temp [6]float64
   temp[0]=saturn_a(t) / 365250.0
   temp[1]=saturn_l(t) / 365250.0
   temp[2]=saturn_k(t) / 365250.0
   temp[3]=saturn_h(t) / 365250.0
   temp[4]=saturn_q(t) / 365250.0
   temp[5]=saturn_p(t) / 365250.0

   return temp
}

func GetUranus(t float64) [6]float64{
   var temp [6]float64
   temp[0]=uranus_a(t) / 365250.0
   temp[1]=uranus_l(t) / 365250.0
   temp[2]=uranus_k(t) / 365250.0
   temp[3]=uranus_h(t) / 365250.0
   temp[4]=uranus_q(t) / 365250.0
   temp[5]=uranus_p(t) / 365250.0

   return temp
}

func GetNeptune(t float64) [6]float64{
   var temp [6]float64
   temp[0]=neptune_a(t) / 365250.0
   temp[1]=neptune_l(t) / 365250.0
   temp[2]=neptune_k(t) / 365250.0
   temp[3]=neptune_h(t) / 365250.0
   temp[4]=neptune_q(t) / 365250.0
   temp[5]=neptune_p(t) / 365250.0

   return temp
}

func venus_p(t float64) float64{
   var venus_p_0 float64 = 0.0

   venus_p_0 += -1 *      0.02882285775 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return venus_p_0
}

func venus_q(t float64) float64{
   var venus_q_1 float64 = 0.0

   venus_q_1 += (math.Pow(t,0)) * 1 *      0.00138133826 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *      0.00138133826 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var venus_q_0 float64 = 0.0

   venus_q_0 += -1 *      0.00682410142 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return venus_q_1+venus_q_0
}

func venus_h(t float64) float64{
   var venus_h_0 float64 = 0.0

   venus_h_0 += -1 *      0.00506684726 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return venus_h_0
}

func venus_k(t float64) float64{
   var venus_k_0 float64 = 0.0

   venus_k_0 += -1 *      0.00449282133 *        0.00000000000 * math.Sin( 3.14159265359 +        0.00000000000*t)
   return venus_k_0
}

func venus_l(t float64) float64{
   var venus_l_1 float64 = 0.0

   venus_l_1 += (math.Pow(t,0)) * 1 *  10213.28554621100 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *  10213.28554621100 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var venus_l_0 float64 = 0.0

   venus_l_0 += -1 *      3.17614669689 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return venus_l_1+venus_l_0
}

func venus_a(t float64) float64{
   var venus_a_0 float64 = 0.0

   venus_a_0 += -1 *      0.72332981996 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return venus_a_0
}

func uranus_p(t float64) float64{
   var uranus_p_0 float64 = 0.0

   uranus_p_0 += -1 *      0.00648617008 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return uranus_p_0
}

func uranus_q(t float64) float64{
   var uranus_q_0 float64 = 0.0

   uranus_q_0 += -1 *      0.00185915075 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return uranus_q_0
}

func uranus_h(t float64) float64{
   var uranus_h_0 float64 = 0.0

   uranus_h_0 += -1 *      0.00116288289 *      380.12776796000 * math.Sin( 3.77434233468 +      380.12776796000*t)
   uranus_h_0 += -1 *      0.00136132837 *       74.78159856730 * math.Sin( 3.91136489012 +       74.78159856730*t)
   uranus_h_0 += -1 *      0.00210407426 *        1.48447270830 * math.Sin( 0.42744224313 +        1.48447270830*t)
   uranus_h_0 += -1 *      0.00274676149 *      529.69096509460 * math.Sin( 5.31178834743 +      529.69096509460*t)
   uranus_h_0 += -1 *      0.00563791307 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return uranus_h_0
}

func uranus_k(t float64) float64{
   var uranus_k_0 float64 = 0.0

   uranus_k_0 += -1 *      0.00116379910 *      380.12776796000 * math.Sin( 2.20321839185 +      380.12776796000*t)
   uranus_k_0 += -1 *      0.00136013862 *       74.78159856730 * math.Sin( 5.48189691557 +       74.78159856730*t)
   uranus_k_0 += -1 *      0.00209611522 *        1.48447270830 * math.Sin( 1.99913587697 +        1.48447270830*t)
   uranus_k_0 += -1 *      0.00274532742 *      529.69096509460 * math.Sin( 0.59960944961 +      529.69096509460*t)
   uranus_k_0 += -1 *      0.04595132376 *        0.00000000000 * math.Sin( 3.14159265359 +        0.00000000000*t)
   return uranus_k_0
}

func uranus_l(t float64) float64{
   var uranus_l_1 float64 = 0.0

   uranus_l_1 += (math.Pow(t,0)) * 1 *     74.78159856730 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *     74.78159856730 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var uranus_l_0 float64 = 0.0

   uranus_l_0 += -1 *      0.00341045477 *      454.90936652730 * math.Sin( 6.11377091373 +      454.90936652730*t)
   uranus_l_0 += -1 *      0.01503941337 *        1.48447270830 * math.Sin( 3.62721239702 +        1.48447270830*t)
   uranus_l_0 += -1 *      5.48129387159 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return uranus_l_1+uranus_l_0
}

func uranus_a(t float64) float64{
   var uranus_a_0 float64 = 0.0

   uranus_a_0 += -1 *      0.00102755162 *      351.81659230870 * math.Sin( 0.89451486294 +      351.81659230870*t)
   uranus_a_0 += -1 *      0.00120436873 *      277.03499374140 * math.Sin( 0.15931700196 +      277.03499374140*t)
   uranus_a_0 += -1 *      0.00124336026 *       11.04570026390 * math.Sin( 1.34101096123 +       11.04570026390*t)
   uranus_a_0 += -1 *      0.00148020073 *       63.73589830340 * math.Sin( 4.84763548983 +       63.73589830340*t)
   uranus_a_0 += -1 *      0.00313720406 *       74.78159856730 * math.Sin( 2.19852745462 +       74.78159856730*t)
   uranus_a_0 += -1 *      0.00391818405 *        1.48447270830 * math.Sin( 2.05935807638 +        1.48447270830*t)
   uranus_a_0 += -1 *      0.00365190162 *      984.60033162190 * math.Sin( 1.75064255586 +      984.60033162190*t)
   uranus_a_0 += -1 *      0.00406413575 *      380.12776796000 * math.Sin( 5.21303965129 +      380.12776796000*t)
   uranus_a_0 += -1 *      0.02068375131 *      138.51749687070 * math.Sin( 1.67626096637 +      138.51749687070*t)
   uranus_a_0 += -1 *      0.08030476240 *      454.90936652730 * math.Sin( 1.40140954803 +      454.90936652730*t)
   uranus_a_0 += -1 *     19.21844606178 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return uranus_a_0
}

func saturn_p(t float64) float64{
   var saturn_p_0 float64 = 0.0

   saturn_p_0 += -1 *      0.01989147301 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return saturn_p_0
}

func saturn_q(t float64) float64{
   var saturn_q_0 float64 = 0.0

   saturn_q_0 += -1 *      0.00871747436 *        0.00000000000 * math.Sin( 3.14159265359 +        0.00000000000*t)
   return saturn_q_0
}

func saturn_h(t float64) float64{
   var saturn_h_1 float64 = 0.0

   saturn_h_1 += (math.Pow(t,0)) * 1 *      0.00375593887 * math.Cos( 3.14159265359 +        0.00000000000*t) - (math.Pow(t,1)) *      0.00375593887 *        0.00000000000 * math.Sin( 3.14159265359 +        0.00000000000*t)

   var saturn_h_0 float64 = 0.0

   saturn_h_0 += -1 *      0.00124537423 *      213.29909543800 * math.Sin( 5.60295505720 +      213.29909543800*t)
   saturn_h_0 += -1 *      0.00196887619 *      529.69096509460 * math.Sin( 5.31528897782 +      529.69096509460*t)
   saturn_h_0 += -1 *      0.00154553684 *        7.11354700080 * math.Sin( 3.59447132230 +        7.11354700080*t)
   saturn_h_0 += -1 *      0.05542964254 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return saturn_h_1+saturn_h_0
}

func saturn_k(t float64) float64{
   var saturn_k_1 float64 = 0.0

   saturn_k_1 += (math.Pow(t,0)) * 1 *      0.00529602626 * math.Cos( 3.14159265359 +        0.00000000000*t) - (math.Pow(t,1)) *      0.00529602626 *        0.00000000000 * math.Sin( 3.14159265359 +        0.00000000000*t)

   var saturn_k_0 float64 = 0.0

   saturn_k_0 += -1 *      0.00126322249 *      213.29909543800 * math.Sin( 0.86230560136 +      213.29909543800*t)
   saturn_k_0 += -1 *      0.00197268763 *      529.69096509460 * math.Sin( 0.59616692002 +      529.69096509460*t)
   saturn_k_0 += -1 *      0.00155326496 *        7.11354700080 * math.Sin( 5.16402515606 +        7.11354700080*t)
   saturn_k_0 += -1 *      0.00296003595 *        0.00000000000 * math.Sin( 3.14159265359 +        0.00000000000*t)
   return saturn_k_1+saturn_k_0
}

func saturn_l(t float64) float64{
   var saturn_l_2 float64 = 0.0

   saturn_l_2 += (math.Pow(t,1)) * 2 *      0.00116235667 * math.Cos( 1.17971682406 +        7.11354700080*t) - (math.Pow(t,2)) *      0.00116235667 *        7.11354700080 * math.Sin( 1.17971682406 +        7.11354700080*t)

   var saturn_l_1 float64 = 0.0

   saturn_l_1 += (math.Pow(t,0)) * 1 *      0.00563352798 * math.Cos( 2.88478561660 +        7.11354700080*t) - (math.Pow(t,1)) *      0.00563352798 *        7.11354700080 * math.Sin( 2.88478561660 +        7.11354700080*t)
   saturn_l_1 += (math.Pow(t,0)) * 1 *    213.29909543800 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *    213.29909543800 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var saturn_l_0 float64 = 0.0

   saturn_l_0 += -1 *      0.00149861955 *      103.09277421860 * math.Sin( 0.26851062811 +      103.09277421860*t)
   saturn_l_0 += -1 *      0.00259784547 *      316.39186965660 * math.Sin( 4.43343036691 +      316.39186965660*t)
   saturn_l_0 += -1 *      0.01411655077 *        7.11354700080 * math.Sin( 4.58553469006 +        7.11354700080*t)
   saturn_l_0 += -1 *      0.87401675650 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return saturn_l_2+saturn_l_1+saturn_l_0
}

func saturn_a(t float64) float64{
   var saturn_a_1 float64 = 0.0

   saturn_a_1 += (math.Pow(t,0)) * 1 *      0.00115108584 * math.Cos( 1.31913907888 +        7.11354700080*t) - (math.Pow(t,1)) *      0.00115108584 *        7.11354700080 * math.Sin( 1.31913907888 +        7.11354700080*t)

   var saturn_a_0 float64 = 0.0

   saturn_a_0 += -1 *      0.00142075017 *      949.17560896980 * math.Sin( 2.32273369924 +      949.17560896980*t)
   saturn_a_0 += -1 *      0.00146816895 *      846.08283475120 * math.Sin( 0.07437685257 +      846.08283475120*t)
   saturn_a_0 += -1 *      0.00143605062 *      213.29909543800 * math.Sin( 4.85917505070 +      213.29909543800*t)
   saturn_a_0 += -1 *      0.00149912686 *      419.48464387520 * math.Sin( 3.86270340354 +      419.48464387520*t)
   saturn_a_0 += -1 *      0.00308461590 *      632.78373931320 * math.Sin( 2.55488166399 +      632.78373931320*t)
   saturn_a_0 += -1 *      0.00289062242 *        7.11354700080 * math.Sin( 3.01816520038 +        7.11354700080*t)
   saturn_a_0 += -1 *      0.00354492417 *      103.09277421860 * math.Sin( 5.81482665415 +      103.09277421860*t)
   saturn_a_0 += -1 *      0.03363448736 *      316.39186965660 * math.Sin( 6.00973673460 +      316.39186965660*t)
   saturn_a_0 += -1 *      9.55490959574 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return saturn_a_1+saturn_a_0
}

func neptune_p(t float64) float64{
   var neptune_p_0 float64 = 0.0

   neptune_p_0 += -1 *      0.01151683985 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return neptune_p_0
}

func neptune_q(t float64) float64{
   var neptune_q_0 float64 = 0.0

   neptune_q_0 += -1 *      0.01029147819 *        0.00000000000 * math.Sin( 3.14159265359 +        0.00000000000*t)
   return neptune_q_0
}

func neptune_h(t float64) float64{
   var neptune_h_0 float64 = 0.0

   neptune_h_0 += -1 *      0.00131043136 *      453.42489381900 * math.Sin( 4.11313570675 +      453.42489381900*t)
   neptune_h_0 += -1 *      0.00136278888 *       38.13303563780 * math.Sin( 3.74103613444 +       38.13303563780*t)
   neptune_h_0 += -1 *      0.00344034784 *      529.69096509460 * math.Sin( 5.31201105782 +      529.69096509460*t)
   neptune_h_0 += -1 *      0.00669242413 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return neptune_h_0
}

func neptune_k(t float64) float64{
   var neptune_k_0 float64 = 0.0

   neptune_k_0 += -1 *      0.00131042161 *      453.42489381900 * math.Sin( 2.54238248127 +      453.42489381900*t)
   neptune_k_0 += -1 *      0.00136232980 *       38.13303563780 * math.Sin( 5.31190360139 +       38.13303563780*t)
   neptune_k_0 += -1 *      0.00343810387 *      529.69096509460 * math.Sin( 0.59989432818 +      529.69096509460*t)
   neptune_k_0 += -1 *      0.00599977571 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return neptune_k_0
}

func neptune_l(t float64) float64{
   var neptune_l_1 float64 = 0.0

   neptune_l_1 += (math.Pow(t,0)) * 1 *     38.13303563780 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *     38.13303563780 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var neptune_l_0 float64 = 0.0

   neptune_l_0 += -1 *      0.00441710236 *      491.55792945680 * math.Sin( 0.00020868462 +      491.55792945680*t)
   neptune_l_0 += -1 *      0.01017628072 *        1.48447270830 * math.Sin( 0.48586478491 +        1.48447270830*t)
   neptune_l_0 += -1 *      5.31188628676 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return neptune_l_1+neptune_l_0
}

func neptune_a(t float64) float64{
   var neptune_a_0 float64 = 0.0

   neptune_a_0 += -1 *      0.00101174992 *     6244.94281435360 * math.Sin( 2.72476929716 +     6244.94281435360*t)
   neptune_a_0 += -1 *      0.00105687575 *       73.29712585900 * math.Sin( 3.48447772920 +       73.29712585900*t)
   neptune_a_0 += -1 *      0.00185666340 *      388.46515523820 * math.Sin( 1.07141029917 +      388.46515523820*t)
   neptune_a_0 += -1 *      0.00144701407 *      453.42489381900 * math.Sin( 3.36967102070 +      453.42489381900*t)
   neptune_a_0 += -1 *      0.00462318447 *       36.64856292950 * math.Sin( 0.16921610518 +       36.64856292950*t)
   neptune_a_0 += -1 *      0.00694303990 *     1021.24889455140 * math.Sin( 1.92062235445 +     1021.24889455140*t)
   neptune_a_0 += -1 *      0.00832345688 *        1.48447270830 * math.Sin( 5.19528065894 +        1.48447270830*t)
   neptune_a_0 += -1 *      0.03597274341 *      175.16605980020 * math.Sin( 1.84552690821 +      175.16605980020*t)
   neptune_a_0 += -1 *      0.14818172119 *      491.55792945680 * math.Sin( 1.57105922541 +      491.55792945680*t)
   neptune_a_0 += -1 *     30.11038686942 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return neptune_a_0
}

func mercury_p(t float64) float64{
   var mercury_p_1 float64 = 0.0

   mercury_p_1 += (math.Pow(t,0)) * 1 *      0.00127633657 * math.Cos( 3.14159265359 +        0.00000000000*t) - (math.Pow(t,1)) *      0.00127633657 *        0.00000000000 * math.Sin( 3.14159265359 +        0.00000000000*t)

   var mercury_p_0 float64 = 0.0

   mercury_p_0 += -1 *      0.04563550461 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return mercury_p_1+mercury_p_0
}

func mercury_q(t float64) float64{
   var mercury_q_0 float64 = 0.0

   mercury_q_0 += -1 *      0.04061563384 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return mercury_q_0
}

func mercury_h(t float64) float64{
   var mercury_h_1 float64 = 0.0

   mercury_h_1 += (math.Pow(t,0)) * 1 *      0.00143750118 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *      0.00143750118 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var mercury_h_0 float64 = 0.0

   mercury_h_0 += -1 *      0.20072331368 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return mercury_h_1+mercury_h_0
}

func mercury_k(t float64) float64{
   var mercury_k_1 float64 = 0.0

   mercury_k_1 += (math.Pow(t,0)) * 1 *      0.00552114624 * math.Cos( 3.14159265359 +        0.00000000000*t) - (math.Pow(t,1)) *      0.00552114624 *        0.00000000000 * math.Sin( 3.14159265359 +        0.00000000000*t)

   var mercury_k_0 float64 = 0.0

   mercury_k_0 += -1 *      0.04466059760 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return mercury_k_1+mercury_k_0
}

func mercury_l(t float64) float64{
   var mercury_l_1 float64 = 0.0

   mercury_l_1 += (math.Pow(t,0)) * 1 *  26087.90314157420 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *  26087.90314157420 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var mercury_l_0 float64 = 0.0

   mercury_l_0 += -1 *      4.40260884240 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return mercury_l_1+mercury_l_0
}

func mercury_a(t float64) float64{
   var mercury_a_0 float64 = 0.0

   mercury_a_0 += -1 *      0.38709830982 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return mercury_a_0
}

func mars_p(t float64) float64{
   var mars_p_1 float64 = 0.0

   mars_p_1 += (math.Pow(t,0)) * 1 *      0.00108020083 * math.Cos( 3.14159265359 +        0.00000000000*t) - (math.Pow(t,1)) *      0.00108020083 *        0.00000000000 * math.Sin( 3.14159265359 +        0.00000000000*t)

   var mars_p_0 float64 = 0.0

   mars_p_0 += -1 *      0.01228449307 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return mars_p_1+mars_p_0
}

func mars_q(t float64) float64{
   var mars_q_0 float64 = 0.0

   mars_q_0 += -1 *      0.01047042574 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return mars_q_0
}

func mars_h(t float64) float64{
   var mars_h_1 float64 = 0.0

   mars_h_1 += (math.Pow(t,0)) * 1 *      0.00624657465 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *      0.00624657465 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var mars_h_0 float64 = 0.0

   mars_h_0 += -1 *      0.03789973236 *        0.00000000000 * math.Sin( 3.14159265359 +        0.00000000000*t)
   return mars_h_1+mars_h_0
}

func mars_k(t float64) float64{
   var mars_k_1 float64 = 0.0

   mars_k_1 += (math.Pow(t,0)) * 1 *      0.00376330152 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *      0.00376330152 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var mars_k_0 float64 = 0.0

   mars_k_0 += -1 *      0.08536560252 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return mars_k_1+mars_k_0
}

func mars_l(t float64) float64{
   var mars_l_1 float64 = 0.0

   mars_l_1 += (math.Pow(t,0)) * 1 *   3340.61242669981 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *   3340.61242669981 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var mars_l_0 float64 = 0.0

   mars_l_0 += -1 *      6.20347611291 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return mars_l_1+mars_l_0
}

func mars_a(t float64) float64{
   var mars_a_0 float64 = 0.0

   mars_a_0 += -1 *      1.52367934191 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return mars_a_0
}

func jupiter_p(t float64) float64{
   var jupiter_p_0 float64 = 0.0

   jupiter_p_0 += -1 *      0.01118377157 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return jupiter_p_0
}

func jupiter_q(t float64) float64{
   var jupiter_q_0 float64 = 0.0

   jupiter_q_0 += -1 *      0.00206561098 *        0.00000000000 * math.Sin( 3.14159265359 +        0.00000000000*t)
   return jupiter_q_0
}

func jupiter_h(t float64) float64{
   var jupiter_h_1 float64 = 0.0

   jupiter_h_1 += (math.Pow(t,0)) * 1 *      0.00217149360 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *      0.00217149360 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var jupiter_h_0 float64 = 0.0

   jupiter_h_0 += -1 *      0.01200385748 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return jupiter_h_1+jupiter_h_0
}

func jupiter_k(t float64) float64{
   var jupiter_k_1 float64 = 0.0

   jupiter_k_1 += (math.Pow(t,0)) * 1 *      0.00113010377 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *      0.00113010377 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var jupiter_k_0 float64 = 0.0

   jupiter_k_0 += -1 *      0.04698572124 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return jupiter_k_1+jupiter_k_0
}

func jupiter_l(t float64) float64{
   var jupiter_l_1 float64 = 0.0

   jupiter_l_1 += (math.Pow(t,0)) * 1 *      0.00228875491 * math.Cos( 6.02639570653 +        7.11354700080*t) - (math.Pow(t,1)) *      0.00228875491 *        7.11354700080 * math.Sin( 6.02639570653 +        7.11354700080*t)
   jupiter_l_1 += (math.Pow(t,0)) * 1 *    529.69096509460 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *    529.69096509460 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var jupiter_l_0 float64 = 0.0

   jupiter_l_0 += -1 *      0.00573506125 *        7.11354700080 * math.Sin( 1.44396306420 +        7.11354700080*t)
   jupiter_l_0 += -1 *      0.59954649739 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return jupiter_l_1+jupiter_l_0
}

func jupiter_a(t float64) float64{
   var jupiter_a_0 float64 = 0.0

   jupiter_a_0 += -1 *      5.20260319132 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return jupiter_a_0
}

func emb_p(t float64) float64{
   return 0
}

func emb_q(t float64) float64{
   var emb_q_1 float64 = 0.0

   emb_q_1 += (math.Pow(t,0)) * 1 *      0.00113468869 * math.Cos( 3.14159265359 +        0.00000000000*t) - (math.Pow(t,1)) *      0.00113468869 *        0.00000000000 * math.Sin( 3.14159265359 +        0.00000000000*t)

   return emb_q_1
}

func emb_h(t float64) float64{
   var emb_h_0 float64 = 0.0

   emb_h_0 += -1 *      0.01628447663 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return emb_h_0
}

func emb_k(t float64) float64{
   var emb_k_0 float64 = 0.0

   emb_k_0 += -1 *      0.00374081650 *        0.00000000000 * math.Sin( 3.14159265359 +        0.00000000000*t)
   return emb_k_0
}

func emb_l(t float64) float64{
   var emb_l_1 float64 = 0.0

   emb_l_1 += (math.Pow(t,0)) * 1 *   6283.07584999140 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *   6283.07584999140 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var emb_l_0 float64 = 0.0

   emb_l_0 += -1 *      1.75347045953 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return emb_l_1+emb_l_0
}

func emb_a(t float64) float64{
   var emb_a_0 float64 = 0.0

   emb_a_0 += -1 *      1.00000101778 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return emb_a_0
}

