//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

package vsop87_micro

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
   var venus_p_1 float64 = 0.0

   venus_p_1 +=      0.00040384791 * math.Cos( 3.14159265359 +        0.00000000000*t)
   venus_p_1=venus_p_1*t

   var venus_p_0 float64 = 0.0

   venus_p_0 +=      0.02882285775 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return venus_p_1+venus_p_0
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
   var venus_h_1 float64 = 0.0

   venus_h_1 +=      0.00036121239 * math.Cos( 3.14159265359 +        0.00000000000*t)
   venus_h_1=venus_h_1*t

   var venus_h_0 float64 = 0.0

   venus_h_0 +=      0.00506684726 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return venus_h_1+venus_h_0
}

func venus_k(t float64) float64{
   var venus_k_1 float64 = 0.0

   venus_k_1 +=      0.00031259019 * math.Cos( 0.00000000000 +        0.00000000000*t)
   venus_k_1=venus_k_1*t

   var venus_k_0 float64 = 0.0

   venus_k_0 +=      0.00449282133 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return venus_k_1+venus_k_0
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
   var uranus_p_1 float64 = 0.0

   uranus_p_1 +=      0.00011744733 * math.Cos( 3.14159265359 +        0.00000000000*t)
   uranus_p_1=uranus_p_1*t

   var uranus_p_0 float64 = 0.0

   uranus_p_0 +=      0.00648617008 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return uranus_p_1+uranus_p_0
}

func uranus_q(t float64) float64{
   var uranus_q_1 float64 = 0.0

   uranus_q_1 +=      0.00012449382 * math.Cos( 3.14159265359 +        0.00000000000*t)
   uranus_q_1=uranus_q_1*t

   var uranus_q_0 float64 = 0.0

   uranus_q_0 +=      0.00185915075 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return uranus_q_1+uranus_q_0
}

func uranus_h(t float64) float64{
   var uranus_h_1 float64 = 0.0

   uranus_h_1 +=      0.00074964350 * math.Cos( 3.14159265359 +        0.00000000000*t)
   uranus_h_1=uranus_h_1*t

   var uranus_h_0 float64 = 0.0

   uranus_h_0 +=      0.00013315732 * math.Cos( 5.66170904346 +     1059.38193018920*t)
   uranus_h_0 +=      0.00014988819 * math.Cos( 5.47840346834 +        2.96894541660*t)
   uranus_h_0 +=      0.00028214307 * math.Cos( 4.05785385739 +       63.73589830340*t)
   uranus_h_0 +=      0.00025966791 * math.Cos( 3.35174050484 +       11.04570026390*t)
   uranus_h_0 +=      0.00061308823 * math.Cos( 5.58629337039 +      213.29909543800*t)
   uranus_h_0 +=      0.00116288289 * math.Cos( 3.77434233468 +      380.12776796000*t)
   uranus_h_0 +=      0.00136132837 * math.Cos( 3.91136489012 +       74.78159856730*t)
   uranus_h_0 +=      0.00210407426 * math.Cos( 0.42744224313 +        1.48447270830*t)
   uranus_h_0 +=      0.00274676149 * math.Cos( 5.31178834743 +      529.69096509460*t)
   uranus_h_0 +=      0.00563791307 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return uranus_h_1+uranus_h_0
}

func uranus_k(t float64) float64{
   var uranus_k_1 float64 = 0.0

   uranus_k_1 +=      0.00018344115 * math.Cos( 0.00000000000 +        0.00000000000*t)
   uranus_k_1=uranus_k_1*t

   var uranus_k_0 float64 = 0.0

   uranus_k_0 +=      0.00013311384 * math.Cos( 0.94943515364 +     1059.38193018920*t)
   uranus_k_0 +=      0.00015021315 * math.Cos( 0.76594621932 +        2.96894541660*t)
   uranus_k_0 +=      0.00028383762 * math.Cos( 2.48454325825 +       63.73589830340*t)
   uranus_k_0 +=      0.00025955084 * math.Cos( 4.91660280043 +       11.04570026390*t)
   uranus_k_0 +=      0.00061367654 * math.Cos( 0.87377399008 +      213.29909543800*t)
   uranus_k_0 +=      0.00116379910 * math.Cos( 2.20321839185 +      380.12776796000*t)
   uranus_k_0 +=      0.00136013862 * math.Cos( 5.48189691557 +       74.78159856730*t)
   uranus_k_0 +=      0.00209611522 * math.Cos( 1.99913587697 +        1.48447270830*t)
   uranus_k_0 +=      0.00274532742 * math.Cos( 0.59960944961 +      529.69096509460*t)
   uranus_k_0 +=      0.04595132376 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return uranus_k_1+uranus_k_0
}

func uranus_l(t float64) float64{
   var uranus_l_1 float64 = 0.0

   uranus_l_1 +=      0.00024451511 * math.Cos( 1.71261369505 +        1.48447270830*t)
   uranus_l_1 +=     74.78159856730 * math.Cos( 0.00000000000 +        0.00000000000*t)
   uranus_l_1=uranus_l_1*t

   var uranus_l_0 float64 = 0.0

   uranus_l_0 +=      0.00012930477 * math.Cos( 1.77673119432 +      277.03499374140*t)
   uranus_l_0 +=      0.00013047912 * math.Cos( 1.74402938964 +       36.64856292950*t)
   uranus_l_0 +=      0.00014437567 * math.Cos( 1.91368590597 +       73.29712585900*t)
   uranus_l_0 +=      0.00014543819 * math.Cos( 4.73644575760 +        3.93215326310*t)
   uranus_l_0 +=      0.00016468518 * math.Cos( 5.36717518314 +       63.73589830340*t)
   uranus_l_0 +=      0.00017129222 * math.Cos( 0.18104766503 +      984.60033162190*t)
   uranus_l_0 +=      0.00018867012 * math.Cos( 5.43708395337 +      529.69096509460*t)
   uranus_l_0 +=      0.00059722283 * math.Cos( 2.84455045894 +       11.04570026390*t)
   uranus_l_0 +=      0.00061937506 * math.Cos( 2.26973190883 +        2.96894541660*t)
   uranus_l_0 +=      0.00075571550 * math.Cos( 0.10254572902 +      138.51749687070*t)
   uranus_l_0 +=      0.00341045477 * math.Cos( 6.11377091373 +      454.90936652730*t)
   uranus_l_0 +=      0.01503941337 * math.Cos( 3.62721239702 +        1.48447270830*t)
   uranus_l_0 +=      5.48129387159 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return uranus_l_1+uranus_l_0
}

func uranus_a(t float64) float64{
   var uranus_a_1 float64 = 0.0

   uranus_a_1 +=      0.00011411513 * math.Cos( 0.08109503303 +       63.73589830340*t)
   uranus_a_1 +=      0.00012155731 * math.Cos( 5.07129450662 +      351.81659230870*t)
   uranus_a_1 +=      0.00018428974 * math.Cos( 0.90876002089 +      984.60033162190*t)
   uranus_a_1 +=      0.00018892174 * math.Cos( 5.14166599806 +       11.04570026390*t)
   uranus_a_1=uranus_a_1*t

   var uranus_a_0 float64 = 0.0

   uranus_a_0 +=      0.00011334332 * math.Cos( 5.97963560630 +      316.39186965660*t)
   uranus_a_0 +=      0.00011013560 * math.Cos( 3.54307351200 +      835.03713448730*t)
   uranus_a_0 +=      0.00011020208 * math.Cos( 3.19000442755 +        3.93215326310*t)
   uranus_a_0 +=      0.00013077660 * math.Cos( 4.23675214362 +      381.61224066830*t)
   uranus_a_0 +=      0.00012687891 * math.Cos( 1.58735697797 +       71.81265315070*t)
   uranus_a_0 +=      0.00010515353 * math.Cos( 1.70301075392 +      479.28838891550*t)
   uranus_a_0 +=      0.00015159970 * math.Cos( 2.76239188887 +      137.03302416240*t)
   uranus_a_0 +=      0.00014478423 * math.Cos( 4.94983129790 +      131.40394986990*t)
   uranus_a_0 +=      0.00015930221 * math.Cos( 3.73134883667 +      140.00196957900*t)
   uranus_a_0 +=      0.00014762015 * math.Cos( 1.55212266318 +      145.63104387150*t)
   uranus_a_0 +=      0.00016880093 * math.Cos( 0.84798058480 +      183.24281464750*t)
   uranus_a_0 +=      0.00012998808 * math.Cos( 2.85105295526 +      127.47179660680*t)
   uranus_a_0 +=      0.00021559916 * math.Cos( 3.58530830565 +      554.06998748280*t)
   uranus_a_0 +=      0.00018767795 * math.Cos( 4.43338724151 +      149.56319713460*t)
   uranus_a_0 +=      0.00020141604 * math.Cos( 2.67711439002 +      305.34616939270*t)
   uranus_a_0 +=      0.00023034340 * math.Cos( 4.41961897942 +      462.02291352810*t)
   uranus_a_0 +=      0.00022997542 * math.Cos( 1.53103267798 +      447.79581952650*t)
   uranus_a_0 +=      0.00019478270 * math.Cos( 2.10041390560 +     1514.29129671650*t)
   uranus_a_0 +=      0.00021391939 * math.Cos( 0.02845030511 +      340.77089204480*t)
   uranus_a_0 +=      0.00029696881 * math.Cos( 0.67903436338 +      146.59425171800*t)
   uranus_a_0 +=      0.00028704578 * math.Cos( 1.39041828806 +       35.16409022120*t)
   uranus_a_0 +=      0.00036972301 * math.Cos( 0.17475135689 +       36.64856292950*t)
   uranus_a_0 +=      0.00032917894 * math.Cos( 0.70483800006 +        2.96894541660*t)
   uranus_a_0 +=      0.00034892404 * math.Cos( 5.75418250485 +      909.81873305460*t)
   uranus_a_0 +=      0.00048838076 * math.Cos( 3.97801797335 +    10138.50394764370*t)
   uranus_a_0 +=      0.00050469671 * math.Cos( 1.89418222433 +      415.55249061210*t)
   uranus_a_0 +=      0.00051844499 * math.Cos( 2.55536031544 +     6208.29425142410*t)
   uranus_a_0 +=      0.00053293996 * math.Cos( 0.50995644390 +      109.94568878850*t)
   uranus_a_0 +=      0.00058841165 * math.Cos( 2.48705383463 +      453.42489381900*t)
   uranus_a_0 +=      0.00045935079 * math.Cos( 4.64286711150 +      202.25339517410*t)
   uranus_a_0 +=      0.00061920970 * math.Cos( 3.45818087920 +      456.39383923560*t)
   uranus_a_0 +=      0.00090078269 * math.Cos( 0.33585778387 +       73.29712585900*t)
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
   return uranus_a_1+uranus_a_0
}

func saturn_p(t float64) float64{
   var saturn_p_1 float64 = 0.0

   saturn_p_1 +=      0.00059439766 * math.Cos( 0.00000000000 +        0.00000000000*t)
   saturn_p_1=saturn_p_1*t

   var saturn_p_0 float64 = 0.0

   saturn_p_0 +=      0.01989147301 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return saturn_p_1+saturn_p_0
}

func saturn_q(t float64) float64{
   var saturn_q_1 float64 = 0.0

   saturn_q_1 +=      0.00080171499 * math.Cos( 0.00000000000 +        0.00000000000*t)
   saturn_q_1=saturn_q_1*t

   var saturn_q_0 float64 = 0.0

   saturn_q_0 +=      0.00871747436 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return saturn_q_1+saturn_q_0
}

func saturn_h(t float64) float64{
   var saturn_h_2 float64 = 0.0

   saturn_h_2 +=      0.00031990236 * math.Cos( 3.14159265359 +        0.00000000000*t)
   saturn_h_2=saturn_h_2*t*t

   var saturn_h_1 float64 = 0.0

   saturn_h_1 +=      0.00041501368 * math.Cos( 1.90158625579 +        7.11354700080*t)
   saturn_h_1 +=      0.00375593887 * math.Cos( 3.14159265359 +        0.00000000000*t)
   saturn_h_1=saturn_h_1*t

   var saturn_h_0 float64 = 0.0

   saturn_h_0 +=      0.00016256954 * math.Cos( 3.02503473426 +      735.87651353180*t)
   saturn_h_0 +=      0.00026520042 * math.Cos( 4.52478837442 +      206.18554843720*t)
   saturn_h_0 +=      0.00032981260 * math.Cos( 4.13131540179 +      110.20632121940*t)
   saturn_h_0 +=      0.00044695611 * math.Cos( 3.26423001884 +      419.48464387520*t)
   saturn_h_0 +=      0.00068728896 * math.Cos( 0.46796586407 +      103.09277421860*t)
   saturn_h_0 +=      0.00124537423 * math.Cos( 5.60295505720 +      213.29909543800*t)
   saturn_h_0 +=      0.00196887619 * math.Cos( 5.31528897782 +      529.69096509460*t)
   saturn_h_0 +=      0.00154553684 * math.Cos( 3.59447132230 +        7.11354700080*t)
   saturn_h_0 +=      0.05542964254 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return saturn_h_2+saturn_h_1+saturn_h_0
}

func saturn_k(t float64) float64{
   var saturn_k_2 float64 = 0.0

   saturn_k_2 +=      0.00030928405 * math.Cos( 0.00000000000 +        0.00000000000*t)
   saturn_k_2=saturn_k_2*t*t

   var saturn_k_1 float64 = 0.0

   saturn_k_1 +=      0.00041825363 * math.Cos( 3.46891617076 +        7.11354700080*t)
   saturn_k_1 +=      0.00529602626 * math.Cos( 3.14159265359 +        0.00000000000*t)
   saturn_k_1=saturn_k_1*t

   var saturn_k_0 float64 = 0.0

   saturn_k_0 +=      0.00012474180 * math.Cos( 1.09305375439 +      316.39186965660*t)
   saturn_k_0 +=      0.00016225491 * math.Cos( 1.42799166910 +      735.87651353180*t)
   saturn_k_0 +=      0.00027272443 * math.Cos( 3.00890883920 +      206.18554843720*t)
   saturn_k_0 +=      0.00031292923 * math.Cos( 5.75285406117 +      110.20632121940*t)
   saturn_k_0 +=      0.00045181084 * math.Cos( 1.69923556056 +      419.48464387520*t)
   saturn_k_0 +=      0.00065050158 * math.Cos( 5.14656256627 +      103.09277421860*t)
   saturn_k_0 +=      0.00126322249 * math.Cos( 0.86230560136 +      213.29909543800*t)
   saturn_k_0 +=      0.00197268763 * math.Cos( 0.59616692002 +      529.69096509460*t)
   saturn_k_0 +=      0.00155326496 * math.Cos( 5.16402515606 +        7.11354700080*t)
   saturn_k_0 +=      0.00296003595 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return saturn_k_2+saturn_k_1+saturn_k_0
}

func saturn_l(t float64) float64{
   var saturn_l_3 float64 = 0.0

   saturn_l_3 +=      0.00016010484 * math.Cos( 5.73932776276 +        7.11354700080*t)
   saturn_l_3=saturn_l_3*t*t*t

   var saturn_l_2 float64 = 0.0

   saturn_l_2 +=      0.00036659741 * math.Cos( 0.00000000000 +        0.00000000000*t)
   saturn_l_2 +=      0.00116235667 * math.Cos( 1.17971682406 +        7.11354700080*t)
   saturn_l_2=saturn_l_2*t*t

   var saturn_l_1 float64 = 0.0

   saturn_l_1 +=      0.00010437362 * math.Cos( 2.74781046876 +       14.22709400160*t)
   saturn_l_1 +=      0.00014171331 * math.Cos( 1.28319722079 +      103.09277421860*t)
   saturn_l_1 +=      0.00563352798 * math.Cos( 2.88478561660 +        7.11354700080*t)
   saturn_l_1 +=    213.29909543800 * math.Cos( 0.00000000000 +        0.00000000000*t)
   saturn_l_1=saturn_l_1*t

   var saturn_l_0 float64 = 0.0

   saturn_l_0 +=      0.00011053979 * math.Cos( 3.62184165245 +     1265.56747862640*t)
   saturn_l_0 +=      0.00010143831 * math.Cos( 4.81233412109 +      846.08283475120*t)
   saturn_l_0 +=      0.00012994507 * math.Cos( 5.98000018071 +       11.04570026390*t)
   saturn_l_0 +=      0.00012172375 * math.Cos( 2.85599565676 +      213.29909543800*t)
   saturn_l_0 +=      0.00013067003 * math.Cos( 4.44777987188 +       14.22709400160*t)
   saturn_l_0 +=      0.00014601573 * math.Cos( 1.56514416532 +        3.93215326310*t)
   saturn_l_0 +=      0.00012249591 * math.Cos( 5.17809413714 +      735.87651353180*t)
   saturn_l_0 +=      0.00014648090 * math.Cos( 0.80489143062 +      529.69096509460*t)
   saturn_l_0 +=      0.00012478276 * math.Cos( 4.43427037492 +      110.20632121940*t)
   saturn_l_0 +=      0.00016678500 * math.Cos( 0.46554866763 +      206.18554843720*t)
   saturn_l_0 +=      0.00026548090 * math.Cos( 3.88757160092 +      949.17560896980*t)
   saturn_l_0 +=      0.00031452707 * math.Cos( 5.46081855509 +      419.48464387520*t)
   saturn_l_0 +=      0.00071179955 * math.Cos( 4.15641496284 +      632.78373931320*t)
   saturn_l_0 +=      0.00149861955 * math.Cos( 0.26851062811 +      103.09277421860*t)
   saturn_l_0 +=      0.00259784547 * math.Cos( 4.43343036691 +      316.39186965660*t)
   saturn_l_0 +=      0.01411655077 * math.Cos( 4.58553469006 +        7.11354700080*t)
   saturn_l_0 +=      0.87401675650 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return saturn_l_3+saturn_l_2+saturn_l_1+saturn_l_0
}

func saturn_a(t float64) float64{
   var saturn_a_2 float64 = 0.0

   saturn_a_2 +=      0.00023754277 * math.Cos( 5.89931397638 +        7.11354700080*t)
   saturn_a_2=saturn_a_2*t*t

   var saturn_a_1 float64 = 0.0

   saturn_a_1 +=      0.00014543221 * math.Cos( 0.53828819496 +      206.18554843720*t)
   saturn_a_1 +=      0.00014944585 * math.Cos( 1.01717765228 +      323.50541665740*t)
   saturn_a_1 +=      0.00016133051 * math.Cos( 1.54311529056 +      309.27832265580*t)
   saturn_a_1 +=      0.00017963494 * math.Cos( 1.85653949491 +      110.20632121940*t)
   saturn_a_1 +=      0.00019395929 * math.Cos( 3.30487092881 +      213.29909543800*t)
   saturn_a_1 +=      0.00020477409 * math.Cos( 5.54887034001 +      419.48464387520*t)
   saturn_a_1 +=      0.00115108584 * math.Cos( 1.31913907888 +        7.11354700080*t)
   saturn_a_1=saturn_a_1*t

   var saturn_a_0 float64 = 0.0

   saturn_a_0 +=      0.00013277748 * math.Cos( 3.34520712627 +      277.03499374140*t)
   saturn_a_0 +=      0.00011535604 * math.Cos( 2.74021432418 +     1685.05212250160*t)
   saturn_a_0 +=      0.00015605088 * math.Cos( 1.55158323786 +     1898.35121793960*t)
   saturn_a_0 +=      0.00017342295 * math.Cos( 2.30290130287 +     9999.98645077300*t)
   saturn_a_0 +=      0.00013849443 * math.Cos( 4.65107330724 +      838.96928775040*t)
   saturn_a_0 +=      0.00018549188 * math.Cos( 0.87944999842 +     6069.77675455340*t)
   saturn_a_0 +=      0.00020860007 * math.Cos( 3.01028862668 +     1368.66025284500*t)
   saturn_a_0 +=      0.00024471393 * math.Cos( 4.81178790264 +      522.57741809380*t)
   saturn_a_0 +=      0.00032196433 * math.Cos( 1.80319862777 +     1581.95934828300*t)
   saturn_a_0 +=      0.00037861360 * math.Cos( 2.71073622362 +      323.50541665740*t)
   saturn_a_0 +=      0.00040372154 * math.Cos( 6.12336876226 +      309.27832265580*t)
   saturn_a_0 +=      0.00038450594 * math.Cos( 3.28109764968 +     1052.26838318840*t)
   saturn_a_0 +=      0.00067160409 * math.Cos( 2.06145646779 +     1265.56747862640*t)
   saturn_a_0 +=      0.00054284469 * math.Cos( 5.12517048023 +      206.18554843720*t)
   saturn_a_0 +=      0.00081821669 * math.Cos( 3.45006412768 +      110.20632121940*t)
   saturn_a_0 +=      0.00073412340 * math.Cos( 3.55846055429 +      735.87651353180*t)
   saturn_a_0 +=      0.00142075017 * math.Cos( 2.32273369924 +      949.17560896980*t)
   saturn_a_0 +=      0.00146816895 * math.Cos( 0.07437685257 +      846.08283475120*t)
   saturn_a_0 +=      0.00143605062 * math.Cos( 4.85917505070 +      213.29909543800*t)
   saturn_a_0 +=      0.00149912686 * math.Cos( 3.86270340354 +      419.48464387520*t)
   saturn_a_0 +=      0.00308461590 * math.Cos( 2.55488166399 +      632.78373931320*t)
   saturn_a_0 +=      0.00289062242 * math.Cos( 3.01816520038 +        7.11354700080*t)
   saturn_a_0 +=      0.00354492417 * math.Cos( 5.81482665415 +      103.09277421860*t)
   saturn_a_0 +=      0.03363448736 * math.Cos( 6.00973673460 +      316.39186965660*t)
   saturn_a_0 +=      9.55490959574 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return saturn_a_2+saturn_a_1+saturn_a_0
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

   neptune_h_0 +=      0.00015834646 * math.Cos( 2.35068672532 +        2.96894541660*t)
   neptune_h_0 +=      0.00016671327 * math.Cos( 5.66175544286 +     1059.38193018920*t)
   neptune_h_0 +=      0.00034070791 * math.Cos( 4.38749299404 +      137.03302416240*t)
   neptune_h_0 +=      0.00059736086 * math.Cos( 3.56479788019 +        1.48447270830*t)
   neptune_h_0 +=      0.00076068364 * math.Cos( 5.58664660018 +      213.29909543800*t)
   neptune_h_0 +=      0.00131043136 * math.Cos( 4.11313570675 +      453.42489381900*t)
   neptune_h_0 +=      0.00136278888 * math.Cos( 3.74103613444 +       38.13303563780*t)
   neptune_h_0 +=      0.00344034784 * math.Cos( 5.31201105782 +      529.69096509460*t)
   neptune_h_0 +=      0.00669242413 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return neptune_h_0
}

func neptune_k(t float64) float64{
   var neptune_k_0 float64 = 0.0

   neptune_k_0 +=      0.00015893727 * math.Cos( 3.92171062449 +        2.96894541660*t)
   neptune_k_0 +=      0.00016663303 * math.Cos( 0.94954464976 +     1059.38193018920*t)
   neptune_k_0 +=      0.00034074986 * math.Cos( 2.81681245358 +      137.03302416240*t)
   neptune_k_0 +=      0.00059960933 * math.Cos( 5.13746031010 +        1.48447270830*t)
   neptune_k_0 +=      0.00076137558 * math.Cos( 0.87421757435 +      213.29909543800*t)
   neptune_k_0 +=      0.00131042161 * math.Cos( 2.54238248127 +      453.42489381900*t)
   neptune_k_0 +=      0.00136232980 * math.Cos( 5.31190360139 +       38.13303563780*t)
   neptune_k_0 +=      0.00343810387 * math.Cos( 0.59989432818 +      529.69096509460*t)
   neptune_k_0 +=      0.00599977571 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return neptune_k_0
}

func neptune_l(t float64) float64{
   var neptune_l_1 float64 = 0.0

   neptune_l_1 +=      0.00016569412 * math.Cos( 4.86311838543 +        1.48447270830*t)
   neptune_l_1 +=     38.13303563780 * math.Cos( 0.00000000000 +        0.00000000000*t)
   neptune_l_1=neptune_l_1*t

   var neptune_l_0 float64 = 0.0

   neptune_l_0 +=      0.00016297466 * math.Cos( 4.88440388945 +       36.64856292950*t)
   neptune_l_0 +=      0.00021806166 * math.Cos( 0.34972092081 +     1021.24889455140*t)
   neptune_l_0 +=      0.00041703723 * math.Cos( 5.41098453927 +        2.96894541660*t)
   neptune_l_0 +=      0.00092919548 * math.Cos( 0.27470534254 +      175.16605980020*t)
   neptune_l_0 +=      0.00441710236 * math.Cos( 0.00020868462 +      491.55792945680*t)
   neptune_l_0 +=      0.01017628072 * math.Cos( 0.48586478491 +        1.48447270830*t)
   neptune_l_0 +=      5.31188628676 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return neptune_l_1+neptune_l_0
}

func neptune_a(t float64) float64{
   var neptune_a_1 float64 = 0.0

   neptune_a_1 +=      0.00010028658 * math.Cos( 0.53331428424 +      168.05251279940*t)
   neptune_a_1 +=      0.00010242826 * math.Cos( 0.02106658542 +      182.27960680100*t)
   neptune_a_1 +=      0.00013646732 * math.Cos( 3.31887794551 +        1.48447270830*t)
   neptune_a_1 +=      0.00016926224 * math.Cos( 3.40079518197 +      484.44438245600*t)
   neptune_a_1 +=      0.00016983720 * math.Cos( 2.88749614679 +      498.67147645760*t)
   neptune_a_1 +=      0.00021981792 * math.Cos( 5.24159938374 +      388.46515523820*t)
   neptune_a_1 +=      0.00035017221 * math.Cos( 1.07792431879 +     1021.24889455140*t)
   neptune_a_1=neptune_a_1*t

   var neptune_a_0 float64 = 0.0

   neptune_a_0 +=      0.00010396544 * math.Cos( 4.15850491413 +      219.89137757700*t)
   neptune_a_0 +=      0.00011159386 * math.Cos( 4.90170178578 +      108.46121608020*t)
   neptune_a_0 +=      0.00011035877 * math.Cos( 0.32439741096 +      601.76425067620*t)
   neptune_a_0 +=      0.00013243147 * math.Cos( 1.48517883768 +      454.90936652730*t)
   neptune_a_0 +=      0.00014186982 * math.Cos( 0.39055348945 +       38.13303563780*t)
   neptune_a_0 +=      0.00017526509 * math.Cos( 3.41680716222 +      666.72398925700*t)
   neptune_a_0 +=      0.00017938336 * math.Cos( 3.98996043594 +      183.24281464750*t)
   neptune_a_0 +=      0.00017669174 * math.Cos( 6.07111527239 +      173.68158709190*t)
   neptune_a_0 +=      0.00018971774 * math.Cos( 0.76073169118 +      176.65053250850*t)
   neptune_a_0 +=      0.00019887390 * math.Cos( 4.72200680846 +       71.81265315070*t)
   neptune_a_0 +=      0.00021792087 * math.Cos( 2.62371458707 +      111.43016149680*t)
   neptune_a_0 +=      0.00024649447 * math.Cos( 6.00875947773 +      316.39186965660*t)
   neptune_a_0 +=      0.00026057248 * math.Cos( 0.60013829511 +      350.33211960040*t)
   neptune_a_0 +=      0.00025130259 * math.Cos( 5.11703371894 +      168.05251279940*t)
   neptune_a_0 +=      0.00025671325 * math.Cos( 1.72232760443 +      182.27960680100*t)
   neptune_a_0 +=      0.00031426284 * math.Cos( 3.82119024473 +      146.59425171800*t)
   neptune_a_0 +=      0.00031792020 * math.Cos( 3.25530033905 +      983.11585891360*t)
   neptune_a_0 +=      0.00042539010 * math.Cos( 4.58925849638 +      498.67147645760*t)
   neptune_a_0 +=      0.00042415052 * math.Cos( 1.70067649012 +      484.44438245600*t)
   neptune_a_0 +=      0.00037417236 * math.Cos( 2.27030739588 +     1550.93985964600*t)
   neptune_a_0 +=      0.00050781320 * math.Cos( 4.51488159732 +       35.16409022120*t)
   neptune_a_0 +=      0.00056976700 * math.Cos( 3.65157409569 +      109.94568878850*t)
   neptune_a_0 +=      0.00046876450 * math.Cos( 3.85081593965 +      137.03302416240*t)
   neptune_a_0 +=      0.00072554259 * math.Cos( 5.79767484989 +      490.07345674850*t)
   neptune_a_0 +=      0.00069569587 * math.Cos( 3.84742919656 +        2.96894541660*t)
   neptune_a_0 +=      0.00078391390 * math.Cos( 0.48629941459 +      493.04240216510*t)
   neptune_a_0 +=      0.00095530570 * math.Cos( 4.14819625611 +    10175.15251057320*t)
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
   return neptune_a_1+neptune_a_0
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
   var mercury_q_1 float64 = 0.0

   mercury_q_1 +=      0.00065433117 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mercury_q_1=mercury_q_1*t

   var mercury_q_0 float64 = 0.0

   mercury_q_0 +=      0.04061563384 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_q_1+mercury_q_0
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
   var mars_q_1 float64 = 0.0

   mars_q_1 +=      0.00017138526 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_q_1=mars_q_1*t

   var mars_q_0 float64 = 0.0

   mars_q_0 +=      0.01047042574 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_q_1+mars_q_0
}

func mars_h(t float64) float64{
   var mars_h_2 float64 = 0.0

   mars_h_2 +=      0.00015529482 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_h_2=mars_h_2*t*t

   var mars_h_1 float64 = 0.0

   mars_h_1 +=      0.00624657465 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_h_1=mars_h_1*t

   var mars_h_0 float64 = 0.0

   mars_h_0 +=      0.03789973236 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return mars_h_2+mars_h_1+mars_h_0
}

func mars_k(t float64) float64{
   var mars_k_2 float64 = 0.0

   mars_k_2 +=      0.00024657776 * math.Cos( 3.14159265359 +        0.00000000000*t)
   mars_k_2=mars_k_2*t*t

   var mars_k_1 float64 = 0.0

   mars_k_1 +=      0.00376330152 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_k_1=mars_k_1*t

   var mars_k_0 float64 = 0.0

   mars_k_0 +=      0.08536560252 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_k_2+mars_k_1+mars_k_0
}

func mars_l(t float64) float64{
   var mars_l_1 float64 = 0.0

   mars_l_1 +=   3340.61242669981 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_l_1=mars_l_1*t

   var mars_l_0 float64 = 0.0

   mars_l_0 +=      0.00027745033 * math.Cos( 5.97049541372 +        3.52311834900*t)
   mars_l_0 +=      6.20347611291 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_l_1+mars_l_0
}

func mars_a(t float64) float64{
   var mars_a_0 float64 = 0.0

   mars_a_0 +=      1.52367934191 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_a_0
}

func jupiter_p(t float64) float64{
   var jupiter_p_1 float64 = 0.0

   jupiter_p_1 +=      0.00023427562 * math.Cos( 3.14159265359 +        0.00000000000*t)
   jupiter_p_1=jupiter_p_1*t

   var jupiter_p_0 float64 = 0.0

   jupiter_p_0 +=      0.01118377157 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_p_1+jupiter_p_0
}

func jupiter_q(t float64) float64{
   var jupiter_q_1 float64 = 0.0

   jupiter_q_1 +=      0.00031340156 * math.Cos( 3.14159265359 +        0.00000000000*t)
   jupiter_q_1=jupiter_q_1*t

   var jupiter_q_0 float64 = 0.0

   jupiter_q_0 +=      0.00206561098 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return jupiter_q_1+jupiter_q_0
}

func jupiter_h(t float64) float64{
   var jupiter_h_1 float64 = 0.0

   jupiter_h_1 +=      0.00010164439 * math.Cos( 5.05135857516 +        7.11354700080*t)
   jupiter_h_1 +=      0.00217149360 * math.Cos( 0.00000000000 +        0.00000000000*t)
   jupiter_h_1=jupiter_h_1*t

   var jupiter_h_0 float64 = 0.0

   jupiter_h_0 +=      0.00010468075 * math.Cos( 0.14414631816 +      419.48464387520*t)
   jupiter_h_0 +=      0.00012686502 * math.Cos( 1.52173271472 +      110.20632121940*t)
   jupiter_h_0 +=      0.00037689163 * math.Cos( 0.46902799622 +        7.11354700080*t)
   jupiter_h_0 +=      0.00064278139 * math.Cos( 0.39928981461 +      103.09277421860*t)
   jupiter_h_0 +=      0.01200385748 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_h_1+jupiter_h_0
}

func jupiter_k(t float64) float64{
   var jupiter_k_2 float64 = 0.0

   jupiter_k_2 +=      0.00010930126 * math.Cos( 3.14159265359 +        0.00000000000*t)
   jupiter_k_2=jupiter_k_2*t*t

   var jupiter_k_1 float64 = 0.0

   jupiter_k_1 +=      0.00010303903 * math.Cos( 0.33250058601 +        7.11354700080*t)
   jupiter_k_1 +=      0.00113010377 * math.Cos( 0.00000000000 +        0.00000000000*t)
   jupiter_k_1=jupiter_k_1*t

   var jupiter_k_0 float64 = 0.0

   jupiter_k_0 +=      0.00010740857 * math.Cos( 4.85106997988 +      419.48464387520*t)
   jupiter_k_0 +=      0.00013518804 * math.Cos( 2.94820975394 +      110.20632121940*t)
   jupiter_k_0 +=      0.00038006128 * math.Cos( 2.03714771852 +        7.11354700080*t)
   jupiter_k_0 +=      0.00065287010 * math.Cos( 5.14135675663 +      103.09277421860*t)
   jupiter_k_0 +=      0.04698572124 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_k_2+jupiter_k_1+jupiter_k_0
}

func jupiter_l(t float64) float64{
   var jupiter_l_2 float64 = 0.0

   jupiter_l_2 +=      0.00014837133 * math.Cos( 3.14159265359 +        0.00000000000*t)
   jupiter_l_2 +=      0.00047224495 * math.Cos( 4.32142959829 +        7.11354700080*t)
   jupiter_l_2=jupiter_l_2*t*t

   var jupiter_l_1 float64 = 0.0

   jupiter_l_1 +=      0.00228875491 * math.Cos( 6.02639570653 +        7.11354700080*t)
   jupiter_l_1 +=    529.69096509460 * math.Cos( 0.00000000000 +        0.00000000000*t)
   jupiter_l_1=jupiter_l_1*t

   var jupiter_l_0 float64 = 0.0

   jupiter_l_0 +=      0.00011730590 * math.Cos( 0.74641135653 +      949.17560896980*t)
   jupiter_l_0 +=      0.00013391386 * math.Cos( 2.32518571601 +      419.48464387520*t)
   jupiter_l_0 +=      0.00023791184 * math.Cos( 1.27622244841 +      316.39186965660*t)
   jupiter_l_0 +=      0.00032251188 * math.Cos( 1.01358443926 +      632.78373931320*t)
   jupiter_l_0 +=      0.00062308554 * math.Cos( 3.41857056095 +      103.09277421860*t)
   jupiter_l_0 +=      0.00573506125 * math.Cos( 1.44396306420 +        7.11354700080*t)
   jupiter_l_0 +=      0.59954649739 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_l_2+jupiter_l_1+jupiter_l_0
}

func jupiter_a(t float64) float64{
   var jupiter_a_1 float64 = 0.0

   jupiter_a_1 +=      0.00010177614 * math.Cos( 4.46063225487 +        7.11354700080*t)
   jupiter_a_1=jupiter_a_1*t

   var jupiter_a_0 float64 = 0.0

   jupiter_a_0 +=      0.00014633106 * math.Cos( 5.20240925402 +     1265.56747862640*t)
   jupiter_a_0 +=      0.00011836569 * math.Cos( 0.41496888665 +      735.87651353180*t)
   jupiter_a_0 +=      0.00020585372 * math.Cos( 5.98131661466 +      316.39186965660*t)
   jupiter_a_0 +=      0.00025558941 * math.Cos( 6.15962426898 +        7.11354700080*t)
   jupiter_a_0 +=      0.00021814330 * math.Cos( 0.70025220178 +      419.48464387520*t)
   jupiter_a_0 +=      0.00031138634 * math.Cos( 5.46486196547 +      949.17560896980*t)
   jupiter_a_0 +=      0.00032272046 * math.Cos( 1.90381613358 +      103.09277421860*t)
   jupiter_a_0 +=      0.00069070151 * math.Cos( 5.72686174779 +      632.78373931320*t)
   jupiter_a_0 +=      5.20260319132 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_a_1+jupiter_a_0
}

func emb_p(t float64) float64{
   var emb_p_1 float64 = 0.0

   emb_p_1 +=      0.00010180375 * math.Cos( 0.00000000000 +        0.00000000000*t)
   emb_p_1=emb_p_1*t

   return emb_p_1
}

func emb_q(t float64) float64{
   var emb_q_1 float64 = 0.0

   emb_q_1 +=      0.00113468869 * math.Cos( 3.14159265359 +        0.00000000000*t)
   emb_q_1=emb_q_1*t

   return emb_q_1
}

func emb_h(t float64) float64{
   var emb_h_1 float64 = 0.0

   emb_h_1 +=      0.00062029655 * math.Cos( 3.14159265359 +        0.00000000000*t)
   emb_h_1=emb_h_1*t

   var emb_h_0 float64 = 0.0

   emb_h_0 +=      0.01628447663 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return emb_h_1+emb_h_0
}

func emb_k(t float64) float64{
   var emb_k_1 float64 = 0.0

   emb_k_1 +=      0.00082267418 * math.Cos( 3.14159265359 +        0.00000000000*t)
   emb_k_1=emb_k_1*t

   var emb_k_0 float64 = 0.0

   emb_k_0 +=      0.00374081650 * math.Cos( 3.14159265359 +        0.00000000000*t)
   return emb_k_1+emb_k_0
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

