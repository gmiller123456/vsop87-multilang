//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

package vsop87d_micro

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
   var venus_r_1 float64 = 0.0

   venus_r_1 +=      0.00034551039 * math.Cos( 0.89198710598 +    10213.28554621100*t)
   venus_r_1=venus_r_1*t

   var venus_r_0 float64 = 0.0

   venus_r_0 +=      0.00489824185 * math.Cos( 4.02151832268 +    10213.28554621100*t)
   venus_r_0 +=      0.72334820905 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return venus_r_1+venus_r_0
}

func venus_b(t float64) float64{
   var venus_b_2 float64 = 0.0

   venus_b_2 +=      0.00022377665 * math.Cos( 3.38509143877 +    10213.28554621100*t)
   venus_b_2=venus_b_2*t*t

   var venus_b_1 float64 = 0.0

   venus_b_1 +=      0.00513347602 * math.Cos( 1.80364310797 +    10213.28554621100*t)
   venus_b_1=venus_b_1*t

   var venus_b_0 float64 = 0.0

   venus_b_0 +=      0.00032814918 * math.Cos( 3.14159265359 +        0.00000000000*t)
   venus_b_0 +=      0.00040107978 * math.Cos( 1.14737178106 +    20426.57109242200*t)
   venus_b_0 +=      0.05923638472 * math.Cos( 0.26702775813 +    10213.28554621100*t)
   return venus_b_2+venus_b_1+venus_b_0
}

func venus_l(t float64) float64{
   var venus_l_2 float64 = 0.0

   venus_l_2 +=      0.00054127076 * math.Cos( 0.00000000000 +        0.00000000000*t)
   venus_l_2=venus_l_2*t*t

   var venus_l_1 float64 = 0.0

   venus_l_1 +=      0.00014444977 * math.Cos( 0.51624564679 +    20426.57109242200*t)
   venus_l_1 +=      0.00095707712 * math.Cos( 2.46424448979 +    10213.28554621100*t)
   venus_l_1 +=  10213.52943052898 * math.Cos( 0.00000000000 +        0.00000000000*t)
   venus_l_1=venus_l_1*t

   var venus_l_0 float64 = 0.0

   venus_l_0 +=      0.00089891645 * math.Cos( 5.30650048468 +    20426.57109242200*t)
   venus_l_0 +=      0.01353968419 * math.Cos( 5.59313319619 +    10213.28554621100*t)
   venus_l_0 +=      3.17614666774 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return venus_l_2+venus_l_1+venus_l_0
}

func uranus_r(t float64) float64{
   var uranus_r_2 float64 = 0.0

   uranus_r_2 +=      0.00022439904 * math.Cos( 0.69953118760 +       74.78159856730*t)
   uranus_r_2=uranus_r_2*t*t

   var uranus_r_1 float64 = 0.0

   uranus_r_1 +=      0.00011405346 * math.Cos( 0.01848461561 +       70.84944530420*t)
   uranus_r_1 +=      0.00024059649 * math.Cos( 3.14159265359 +        0.00000000000*t)
   uranus_r_1 +=      0.00021468152 * math.Cos( 2.60176704270 +       76.26607127560*t)
   uranus_r_1 +=      0.00020857262 * math.Cos( 5.24625494219 +       11.04570026390*t)
   uranus_r_1 +=      0.00068626972 * math.Cos( 6.13411265052 +      149.56319713460*t)
   uranus_r_1 +=      0.00071212085 * math.Cos( 6.22601006675 +       63.73589830340*t)
   uranus_r_1 +=      0.01479896370 * math.Cos( 3.67205705317 +       74.78159856730*t)
   uranus_r_1=uranus_r_1*t

   var uranus_r_0 float64 = 0.0

   uranus_r_0 +=      0.00011852996 * math.Cos( 0.99342814582 +       52.69019803950*t)
   uranus_r_0 +=      0.00012896507 * math.Cos( 2.62154018241 +      111.43016149680*t)
   uranus_r_0 +=      0.00011959355 * math.Cos( 1.75044072173 +      984.60033162190*t)
   uranus_r_0 +=      0.00011696085 * math.Cos( 3.29825599114 +        3.93215326310*t)
   uranus_r_0 +=      0.00010792699 * math.Cos( 1.42104858472 +      213.29909543800*t)
   uranus_r_0 +=      0.00015502809 * math.Cos( 5.35405037603 +       38.13303563780*t)
   uranus_r_0 +=      0.00011494701 * math.Cos( 0.43774027872 +       65.22037101170*t)
   uranus_r_0 +=      0.00014701566 * math.Cos( 4.90434406648 +      108.46121608020*t)
   uranus_r_0 +=      0.00012328151 * math.Cos( 5.96039150918 +      127.47179660680*t)
   uranus_r_0 +=      0.00017900561 * math.Cos( 0.55455488605 +        2.96894541660*t)
   uranus_r_0 +=      0.00020473163 * math.Cos( 2.79639811626 +       70.32818044240*t)
   uranus_r_0 +=      0.00022637152 * math.Cos( 0.72519137745 +      529.69096509460*t)
   uranus_r_0 +=      0.00025785805 * math.Cos( 3.78537741503 +       85.82729883120*t)
   uranus_r_0 +=      0.00025620360 * math.Cos( 5.25656292802 +      380.12776796000*t)
   uranus_r_0 +=      0.00020471584 * math.Cos( 1.55588961500 +      202.25339517410*t)
   uranus_r_0 +=      0.00029156264 * math.Cos( 3.18056174556 +       77.75054398390*t)
   uranus_r_0 +=      0.00030348875 * math.Cos( 0.70100446346 +      151.04766984290*t)
   uranus_r_0 +=      0.00036755160 * math.Cos( 3.88648934736 +      146.59425171800*t)
   uranus_r_0 +=      0.00039025681 * math.Cos( 3.36234710692 +      277.03499374140*t)
   uranus_r_0 +=      0.00046677322 * math.Cos( 1.39976563936 +       35.16409022120*t)
   uranus_r_0 +=      0.00039009624 * math.Cos( 1.66971128869 +       70.84944530420*t)
   uranus_r_0 +=      0.00089805842 * math.Cos( 3.66105366329 +      109.94568878850*t)
   uranus_r_0 +=      0.00071424265 * math.Cos( 4.24509327405 +      224.34479570190*t)
   uranus_r_0 +=      0.00093192359 * math.Cos( 0.17437193645 +       36.64856292950*t)
   uranus_r_0 +=      0.00143705902 * math.Cos( 1.38368574483 +       11.04570026390*t)
   uranus_r_0 +=      0.00161858251 * math.Cos( 2.79137863469 +      148.07872442630*t)
   uranus_r_0 +=      0.00190521915 * math.Cos( 1.99809364502 +        1.48447270830*t)
   uranus_r_0 +=      0.00243508222 * math.Cos( 1.57086595074 +       71.81265315070*t)
   uranus_r_0 +=      0.00338525522 * math.Cos( 1.58002682946 +      138.51749687070*t)
   uranus_r_0 +=      0.00496404171 * math.Cos( 1.40139934716 +      454.90936652730*t)
   uranus_r_0 +=      0.00602248144 * math.Cos( 3.86003820462 +       63.73589830340*t)
   uranus_r_0 +=      0.00649321851 * math.Cos( 4.52247298119 +       76.26607127560*t)
   uranus_r_0 +=      0.02055653495 * math.Cos( 1.78295170028 +      149.56319713460*t)
   uranus_r_0 +=      0.03440835545 * math.Cos( 0.32836098991 +       73.29712585900*t)
   uranus_r_0 +=      0.88784984055 * math.Cos( 5.60377526994 +       74.78159856730*t)
   uranus_r_0 +=     19.21264847881 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return uranus_r_2+uranus_r_1+uranus_r_0
}

func uranus_b(t float64) float64{
   var uranus_b_1 float64 = 0.0

   uranus_b_1 +=      0.00206366162 * math.Cos( 4.12394311407 +       74.78159856730*t)
   uranus_b_1=uranus_b_1*t

   var uranus_b_0 float64 = 0.0

   uranus_b_0 +=      0.00061601203 * math.Cos( 3.14159265359 +        0.00000000000*t)
   uranus_b_0 +=      0.00062341405 * math.Cos( 5.08111175856 +      149.56319713460*t)
   uranus_b_0 +=      0.01346277639 * math.Cos( 2.61877810545 +       74.78159856730*t)
   return uranus_b_1+uranus_b_0
}

func uranus_l(t float64) float64{
   var uranus_l_2 float64 = 0.0

   uranus_l_2 +=      0.00053033277 * math.Cos( 0.00000000000 +        0.00000000000*t)
   uranus_l_2=uranus_l_2*t*t

   var uranus_l_1 float64 = 0.0

   uranus_l_1 +=      0.00024456413 * math.Cos( 1.71255705309 +        1.48447270830*t)
   uranus_l_1 +=      0.00154458244 * math.Cos( 5.24201658072 +       74.78159856730*t)
   uranus_l_1 +=     75.02543121646 * math.Cos( 0.00000000000 +        0.00000000000*t)
   uranus_l_1=uranus_l_1*t

   var uranus_l_0 float64 = 0.0

   uranus_l_0 +=      0.00010997934 * math.Cos( 0.48865493179 +      138.51749687070*t)
   uranus_l_0 +=      0.00011162535 * math.Cos( 5.82681993692 +      224.34479570190*t)
   uranus_l_0 +=      0.00014613471 * math.Cos( 4.73732047977 +        3.93215326310*t)
   uranus_l_0 +=      0.00017818665 * math.Cos( 1.74436982544 +       36.64856292950*t)
   uranus_l_0 +=      0.00021078897 * math.Cos( 4.36059465144 +      148.07872442630*t)
   uranus_l_0 +=      0.00025710505 * math.Cos( 6.11379842935 +      454.90936652730*t)
   uranus_l_0 +=      0.00026468869 * math.Cos( 3.14152087888 +       71.81265315070*t)
   uranus_l_0 +=      0.00061950714 * math.Cos( 2.85098907565 +       11.04570026390*t)
   uranus_l_0 +=      0.00061998592 * math.Cos( 2.26952040469 +        2.96894541660*t)
   uranus_l_0 +=      0.00068892609 * math.Cos( 6.09292489045 +       76.26607127560*t)
   uranus_l_0 +=      0.00070328499 * math.Cos( 5.39254431993 +       63.73589830340*t)
   uranus_l_0 +=      0.00272328132 * math.Cos( 3.35823710524 +      149.56319713460*t)
   uranus_l_0 +=      0.00365981718 * math.Cos( 1.89962189068 +       73.29712585900*t)
   uranus_l_0 +=      0.01504247826 * math.Cos( 3.62719262195 +        1.48447270830*t)
   uranus_l_0 +=      0.09260408252 * math.Cos( 0.89106421530 +       74.78159856730*t)
   uranus_l_0 +=      5.48129294299 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return uranus_l_2+uranus_l_1+uranus_l_0
}

func saturn_r(t float64) float64{
   var saturn_r_3 float64 = 0.0

   saturn_r_3 +=      0.00020315005 * math.Cos( 3.02186626038 +      213.29909543800*t)
   saturn_r_3=saturn_r_3*t*t*t

   var saturn_r_2 float64 = 0.0

   saturn_r_2 +=      0.00029645554 * math.Cos( 5.96310264282 +        7.11354700080*t)
   saturn_r_2 +=      0.00043220894 * math.Cos( 3.86940443794 +      426.59819087600*t)
   saturn_r_2 +=      0.00049766792 * math.Cos( 4.97168150870 +      220.41264243880*t)
   saturn_r_2 +=      0.00071922760 * math.Cos( 2.50069994874 +      206.18554843720*t)
   saturn_r_2 +=      0.00436902464 * math.Cos( 4.78671673044 +      213.29909543800*t)
   saturn_r_2=saturn_r_2*t*t

   var saturn_r_1 float64 = 0.0

   saturn_r_1 +=      0.00013876565 * math.Cos( 0.75886204364 +      199.07200143640*t)
   saturn_r_1 +=      0.00012892827 * math.Cos( 5.94330258435 +      433.71173787680*t)
   saturn_r_1 +=      0.00018839639 * math.Cos( 1.60819563173 +      110.20632121940*t)
   saturn_r_1 +=      0.00019952612 * math.Cos( 1.17560125007 +      419.48464387520*t)
   saturn_r_1 +=      0.00020928189 * math.Cos( 5.09245654470 +      639.89728631400*t)
   saturn_r_1 +=      0.00049621111 * math.Cos( 6.01744469580 +      103.09277421860*t)
   saturn_r_1 +=      0.00143891176 * math.Cos( 1.40744864239 +        7.11354700080*t)
   saturn_r_1 +=      0.00186261540 * math.Cos( 3.14159265359 +        0.00000000000*t)
   saturn_r_1 +=      0.00188491375 * math.Cos( 0.47215719444 +      220.41264243880*t)
   saturn_r_1 +=      0.00341394136 * math.Cos( 5.79635773960 +      426.59819087600*t)
   saturn_r_1 +=      0.00506577574 * math.Cos( 0.71114650941 +      206.18554843720*t)
   saturn_r_1 +=      0.06182981282 * math.Cos( 0.25843515034 +      213.29909543800*t)
   saturn_r_1=saturn_r_1*t

   var saturn_r_0 float64 = 0.0

   saturn_r_0 +=      0.00012884128 * math.Cos( 1.64892310393 +      138.51749687070*t)
   saturn_r_0 +=      0.00011380261 * math.Cos( 1.73105746566 +      522.57741809380*t)
   saturn_r_0 +=      0.00011993314 * math.Cos( 5.98051421881 +      846.08283475120*t)
   saturn_r_0 +=      0.00014296479 * math.Cos( 2.60433537909 +      323.50541665740*t)
   saturn_r_0 +=      0.00015298457 * math.Cos( 3.05943652881 +      529.69096509460*t)
   saturn_r_0 +=      0.00020746678 * math.Cos( 5.33255667599 +      199.07200143640*t)
   saturn_r_0 +=      0.00020839118 * math.Cos( 1.52102590640 +      433.71173787680*t)
   saturn_r_0 +=      0.00020936573 * math.Cos( 0.46349163993 +      735.87651353180*t)
   saturn_r_0 +=      0.00032401718 * math.Cos( 5.47084606947 +      949.17560896980*t)
   saturn_r_0 +=      0.00034143794 * math.Cos( 0.19518550682 +      277.03499374140*t)
   saturn_r_0 +=      0.00048913044 * math.Cos( 1.55733388472 +      202.25339517410*t)
   saturn_r_0 +=      0.00061053350 * math.Cos( 0.94037761156 +      639.89728631400*t)
   saturn_r_0 +=      0.00069007015 * math.Cos( 5.94099622447 +      419.48464387520*t)
   saturn_r_0 +=      0.00108974737 * math.Cos( 3.29313595577 +      110.20632121940*t)
   saturn_r_0 +=      0.00140617548 * math.Cos( 5.70406652991 +      632.78373931320*t)
   saturn_r_0 +=      0.00361778433 * math.Cos( 3.13904303264 +        7.11354700080*t)
   saturn_r_0 +=      0.00371684449 * math.Cos( 2.27114833428 +      220.41264243880*t)
   saturn_r_0 +=      0.00547506899 * math.Cos( 5.01532628454 +      103.09277421860*t)
   saturn_r_0 +=      0.00821891059 * math.Cos( 5.93520025371 +      316.39186965660*t)
   saturn_r_0 +=      0.01464663959 * math.Cos( 1.64763045468 +      426.59819087600*t)
   saturn_r_0 +=      0.01873679934 * math.Cos( 5.23549605091 +      206.18554843720*t)
   saturn_r_0 +=      0.52921382465 * math.Cos( 2.39226219733 +      213.29909543800*t)
   saturn_r_0 +=      9.55758135801 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return saturn_r_3+saturn_r_2+saturn_r_1+saturn_r_0
}

func saturn_b(t float64) float64{
   var saturn_b_2 float64 = 0.0

   saturn_b_2 +=      0.00020629977 * math.Cos( 0.50482422817 +      213.29909543800*t)
   saturn_b_2=saturn_b_2*t*t

   var saturn_b_1 float64 = 0.0

   saturn_b_1 +=      0.00014800587 * math.Cos( 2.30586060520 +      206.18554843720*t)
   saturn_b_1 +=      0.00018571607 * math.Cos( 6.09919206378 +      426.59819087600*t)
   saturn_b_1 +=      0.00049478641 * math.Cos( 3.14159265359 +        0.00000000000*t)
   saturn_b_1 +=      0.00397554998 * math.Cos( 5.33289992556 +      213.29909543800*t)
   saturn_b_1=saturn_b_1*t

   var saturn_b_0 float64 = 0.0

   saturn_b_0 +=      0.00014734070 * math.Cos( 2.11846597870 +      639.89728631400*t)
   saturn_b_0 +=      0.00034116063 * math.Cos( 0.57297307844 +      206.18554843720*t)
   saturn_b_0 +=      0.00030863357 * math.Cos( 3.48441504465 +      220.41264243880*t)
   saturn_b_0 +=      0.00084745939 * math.Cos( 0.00000000000 +        0.00000000000*t)
   saturn_b_0 +=      0.00240348303 * math.Cos( 2.85238489390 +      426.59819087600*t)
   saturn_b_0 +=      0.04330678040 * math.Cos( 3.60284428399 +      213.29909543800*t)
   return saturn_b_2+saturn_b_1+saturn_b_0
}

func saturn_l(t float64) float64{
   var saturn_l_3 float64 = 0.0

   saturn_l_3 +=      0.00016038734 * math.Cos( 5.73945377424 +        7.11354700080*t)
   saturn_l_3=saturn_l_3*t*t*t

   var saturn_l_2 float64 = 0.0

   saturn_l_2 +=      0.00010604979 * math.Cos( 5.40963595885 +      426.59819087600*t)
   saturn_l_2 +=      0.00010631396 * math.Cos( 0.25778277414 +      220.41264243880*t)
   saturn_l_2 +=      0.00015276909 * math.Cos( 4.06492007503 +      206.18554843720*t)
   saturn_l_2 +=      0.00090592251 * math.Cos( 0.00000000000 +        0.00000000000*t)
   saturn_l_2 +=      0.00091920844 * math.Cos( 0.07425261094 +      213.29909543800*t)
   saturn_l_2 +=      0.00116441181 * math.Cos( 1.17987850633 +        7.11354700080*t)
   saturn_l_2=saturn_l_2*t*t

   var saturn_l_1 float64 = 0.0

   saturn_l_1 +=      0.00010511706 * math.Cos( 2.74880392800 +       14.22709400160*t)
   saturn_l_1 +=      0.00019941734 * math.Cos( 1.27954662736 +      103.09277421860*t)
   saturn_l_1 +=      0.00040254586 * math.Cos( 2.04128257090 +      220.41264243880*t)
   saturn_l_1 +=      0.00107678770 * math.Cos( 2.27769911872 +      206.18554843720*t)
   saturn_l_1 +=      0.00098323030 * math.Cos( 1.08070061328 +      426.59819087600*t)
   saturn_l_1 +=      0.00564347566 * math.Cos( 2.88500136429 +        7.11354700080*t)
   saturn_l_1 +=      0.01296855005 * math.Cos( 1.82820544701 +      213.29909543800*t)
   saturn_l_1 +=    213.54295595986 * math.Cos( 0.00000000000 +        0.00000000000*t)
   saturn_l_1=saturn_l_1*t

   var saturn_l_0 float64 = 0.0

   saturn_l_0 +=      0.00010725066 * math.Cos( 3.12939596466 +      202.25339517410*t)
   saturn_l_0 +=      0.00013005305 * math.Cos( 5.98119067061 +       11.04570026390*t)
   saturn_l_0 +=      0.00015053509 * math.Cos( 2.71670027883 +      639.89728631400*t)
   saturn_l_0 +=      0.00013160308 * math.Cos( 4.44891180176 +       14.22709400160*t)
   saturn_l_0 +=      0.00014609562 * math.Cos( 1.56518573691 +        3.93215326310*t)
   saturn_l_0 +=      0.00015820300 * math.Cos( 0.93808953760 +      632.78373931320*t)
   saturn_l_0 +=      0.00014906995 * math.Cos( 5.76903283845 +      316.39186965660*t)
   saturn_l_0 +=      0.00016573583 * math.Cos( 0.43719123541 +      419.48464387520*t)
   saturn_l_0 +=      0.00023990338 * math.Cos( 4.66976934860 +      110.20632121940*t)
   saturn_l_0 +=      0.00079271288 * math.Cos( 3.84007078530 +      220.41264243880*t)
   saturn_l_0 +=      0.00206816296 * math.Cos( 0.24658366938 +      103.09277421860*t)
   saturn_l_0 +=      0.00350769223 * math.Cos( 3.30329903015 +      426.59819087600*t)
   saturn_l_0 +=      0.00398379386 * math.Cos( 0.52112025957 +      206.18554843720*t)
   saturn_l_0 +=      0.01414150958 * math.Cos( 4.58581515873 +        7.11354700080*t)
   saturn_l_0 +=      0.11107659780 * math.Cos( 3.96205090194 +      213.29909543800*t)
   saturn_l_0 +=      0.87401354029 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return saturn_l_3+saturn_l_2+saturn_l_1+saturn_l_0
}

func neptune_r(t float64) float64{
   var neptune_r_1 float64 = 0.0

   neptune_r_1 +=      0.00013220279 * math.Cos( 3.32015499895 +        1.48447270830*t)
   neptune_r_1 +=      0.00236338502 * math.Cos( 0.70498011235 +       38.13303563780*t)
   neptune_r_1=neptune_r_1*t

   var neptune_r_0 float64 = 0.0

   neptune_r_0 +=      0.00012011825 * math.Cos( 1.92062131635 +     1021.24889455140*t)
   neptune_r_0 +=      0.00014229686 * math.Cos( 1.07786112902 +       74.78159856730*t)
   neptune_r_0 +=      0.00016939242 * math.Cos( 1.59422166991 +       71.81265315070*t)
   neptune_r_0 +=      0.00024593778 * math.Cos( 0.50801728204 +      109.94568878850*t)
   neptune_r_0 +=      0.00046687838 * math.Cos( 5.74937810094 +       33.67961751290*t)
   neptune_r_0 +=      0.00069791722 * math.Cos( 3.79617226928 +        2.96894541660*t)
   neptune_r_0 +=      0.00100895397 * math.Cos( 0.37702748681 +       73.29712585900*t)
   neptune_r_0 +=      0.00121801825 * math.Cos( 5.79754444303 +       76.26607127560*t)
   neptune_r_0 +=      0.00135134095 * math.Cos( 3.37220607384 +       39.61750834610*t)
   neptune_r_0 +=      0.00274571970 * math.Cos( 1.84552256801 +      175.16605980020*t)
   neptune_r_0 +=      0.00495725642 * math.Cos( 1.57105654815 +      491.55792945680*t)
   neptune_r_0 +=      0.00537760613 * math.Cos( 4.52113902845 +       35.16409022120*t)
   neptune_r_0 +=      0.00807830737 * math.Cos( 5.18592836167 +        1.48447270830*t)
   neptune_r_0 +=      0.01691764281 * math.Cos( 3.25186138896 +       36.64856292950*t)
   neptune_r_0 +=      0.27062259490 * math.Cos( 1.32999458930 +       38.13303563780*t)
   neptune_r_0 +=     30.07013206102 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return neptune_r_1+neptune_r_0
}

func neptune_b(t float64) float64{
   var neptune_b_1 float64 = 0.0

   neptune_b_1 +=      0.00227279214 * math.Cos( 3.80793089870 +       38.13303563780*t)
   neptune_b_1=neptune_b_1*t

   var neptune_b_0 float64 = 0.0

   neptune_b_0 +=      0.00015448133 * math.Cos( 3.50877080888 +       39.61750834610*t)
   neptune_b_0 +=      0.00015355490 * math.Cos( 2.52123799481 +       36.64856292950*t)
   neptune_b_0 +=      0.00027623609 * math.Cos( 0.00000000000 +        0.00000000000*t)
   neptune_b_0 +=      0.00027780087 * math.Cos( 5.91271882843 +       76.26607127560*t)
   neptune_b_0 +=      0.03088622933 * math.Cos( 1.44104372626 +       38.13303563780*t)
   return neptune_b_1+neptune_b_0
}

func neptune_l(t float64) float64{
   var neptune_l_2 float64 = 0.0

   neptune_l_2 +=      0.00053892649 * math.Cos( 0.00000000000 +        0.00000000000*t)
   neptune_l_2=neptune_l_2*t*t

   var neptune_l_1 float64 = 0.0

   neptune_l_1 +=      0.00015807148 * math.Cos( 2.27923488532 +       38.13303563780*t)
   neptune_l_1 +=      0.00016604187 * math.Cos( 4.86319129565 +        1.48447270830*t)
   neptune_l_1 +=     38.37687716731 * math.Cos( 0.00000000000 +        0.00000000000*t)
   neptune_l_1=neptune_l_1*t

   var neptune_l_0 float64 = 0.0

   neptune_l_0 +=      0.00016482741 * math.Cos( 0.00007729261 +      491.55792945680*t)
   neptune_l_0 +=      0.00033784734 * math.Cos( 1.24488865578 +       76.26607127560*t)
   neptune_l_0 +=      0.00037714589 * math.Cos( 6.09221834946 +       35.16409022120*t)
   neptune_l_0 +=      0.00042064450 * math.Cos( 5.41054991607 +        2.96894541660*t)
   neptune_l_0 +=      0.00124531845 * math.Cos( 4.83008090682 +       36.64856292950*t)
   neptune_l_0 +=      0.01019727662 * math.Cos( 0.48580923660 +        1.48447270830*t)
   neptune_l_0 +=      0.01798475509 * math.Cos( 2.90101273050 +       38.13303563780*t)
   neptune_l_0 +=      5.31188633047 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return neptune_l_2+neptune_l_1+neptune_l_0
}

func mercury_r(t float64) float64{
   var mercury_r_1 float64 = 0.0

   mercury_r_1 +=      0.00010094479 * math.Cos( 4.47466326316 +    78263.70942472259*t)
   mercury_r_1 +=      0.00044141826 * math.Cos( 1.42385543975 +    52175.80628314840*t)
   mercury_r_1 +=      0.00217347739 * math.Cos( 4.65617158663 +    26087.90314157420*t)
   mercury_r_1=mercury_r_1*t

   var mercury_r_0 float64 = 0.0

   mercury_r_0 +=      0.00021921969 * math.Cos( 2.77820093975 +   104351.61256629678*t)
   mercury_r_0 +=      0.00121281763 * math.Cos( 6.01064153805 +    78263.70942472259*t)
   mercury_r_0 +=      0.00795525557 * math.Cos( 2.95989690096 +    52175.80628314840*t)
   mercury_r_0 +=      0.07834131817 * math.Cos( 6.19233722599 +    26087.90314157420*t)
   mercury_r_0 +=      0.39528271652 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_r_1+mercury_r_0
}

func mercury_b(t float64) float64{
   var mercury_b_2 float64 = 0.0

   mercury_b_2 +=      0.00011830934 * math.Cos( 4.79065585784 +    26087.90314157420*t)
   mercury_b_2=mercury_b_2*t*t

   var mercury_b_1 float64 = 0.0

   mercury_b_1 +=      0.00010894981 * math.Cos( 0.48540174006 +    78263.70942472259*t)
   mercury_b_1 +=      0.00022675295 * math.Cos( 0.01515366880 +    52175.80628314840*t)
   mercury_b_1 +=      0.00146233668 * math.Cos( 3.14159265359 +        0.00000000000*t)
   mercury_b_1 +=      0.00429151362 * math.Cos( 3.50169780393 +    26087.90314157420*t)
   mercury_b_1=mercury_b_1*t

   var mercury_b_0 float64 = 0.0

   mercury_b_0 +=      0.00031866927 * math.Cos( 1.58088495667 +   130439.51570787099*t)
   mercury_b_0 +=      0.00129778770 * math.Cos( 4.83232503961 +   104351.61256629678*t)
   mercury_b_0 +=      0.00543251810 * math.Cos( 1.79644363963 +    78263.70942472259*t)
   mercury_b_0 +=      0.01222839532 * math.Cos( 3.14159265359 +        0.00000000000*t)
   mercury_b_0 +=      0.02388076996 * math.Cos( 5.03738959685 +    52175.80628314840*t)
   mercury_b_0 +=      0.11737528962 * math.Cos( 1.98357498767 +    26087.90314157420*t)
   return mercury_b_2+mercury_b_1+mercury_b_0
}

func mercury_l(t float64) float64{
   var mercury_l_2 float64 = 0.0

   mercury_l_2 +=      0.00016903658 * math.Cos( 4.69072300649 +    26087.90314157420*t)
   mercury_l_2 +=      0.00053049845 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mercury_l_2=mercury_l_2*t*t

   var mercury_l_1 float64 = 0.0

   mercury_l_1 +=      0.00021245035 * math.Cos( 2.83531934452 +   104351.61256629678*t)
   mercury_l_1 +=      0.00080538452 * math.Cos( 6.10454743366 +    78263.70942472259*t)
   mercury_l_1 +=      0.00303471395 * math.Cos( 3.05565472363 +    52175.80628314840*t)
   mercury_l_1 +=      0.01126007832 * math.Cos( 6.21703970996 +    26087.90314157420*t)
   mercury_l_1 +=  26088.14706222746 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mercury_l_1=mercury_l_1*t

   var mercury_l_0 float64 = 0.0

   mercury_l_0 +=      0.00034561897 * math.Cos( 0.77930765817 +   130439.51570787099*t)
   mercury_l_0 +=      0.00165590362 * math.Cos( 4.11969163181 +   104351.61256629678*t)
   mercury_l_0 +=      0.00855346843 * math.Cos( 1.16520322351 +    78263.70942472259*t)
   mercury_l_0 +=      0.05046294199 * math.Cos( 4.47785489540 +    52175.80628314840*t)
   mercury_l_0 +=      0.40989414976 * math.Cos( 1.48302034194 +    26087.90314157420*t)
   mercury_l_0 +=      4.40250710144 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_l_2+mercury_l_1+mercury_l_0
}

func mars_r(t float64) float64{
   var mars_r_2 float64 = 0.0

   mars_r_2 +=      0.00044242247 * math.Cos( 0.47930603943 +     3340.61242669980*t)
   mars_r_2=mars_r_2*t*t

   var mars_r_1 float64 = 0.0

   mars_r_1 +=      0.00010815880 * math.Cos( 2.70888093803 +    10021.83728009940*t)
   mars_r_1 +=      0.00012877200 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_r_1 +=      0.00103175886 * math.Cos( 2.37071845682 +     6681.22485339960*t)
   mars_r_1 +=      0.01107433340 * math.Cos( 2.03250524950 +     3340.61242669980*t)
   mars_r_1=mars_r_1*t

   var mars_r_0 float64 = 0.0

   mars_r_0 +=      0.00046179117 * math.Cos( 4.15595316284 +    10021.83728009940*t)
   mars_r_0 +=      0.00660776357 * math.Cos( 3.81783442097 +     6681.22485339960*t)
   mars_r_0 +=      0.14184953153 * math.Cos( 3.47971283519 +     3340.61242669980*t)
   mars_r_0 +=      1.53033488276 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_r_2+mars_r_1+mars_r_0
}

func mars_b(t float64) float64{
   var mars_b_2 float64 = 0.0

   mars_b_2 +=      0.00016726690 * math.Cos( 0.60221392419 +     3340.61242669980*t)
   mars_b_2=mars_b_2*t*t

   var mars_b_1 float64 = 0.0

   mars_b_1 +=      0.00014116030 * math.Cos( 3.14159265359 +        0.00000000000*t)
   mars_b_1 +=      0.00350068845 * math.Cos( 5.36847836211 +     3340.61242669980*t)
   mars_b_1=mars_b_1*t

   var mars_b_0 float64 = 0.0

   mars_b_0 +=      0.00031365538 * math.Cos( 4.44651052853 +    10021.83728009940*t)
   mars_b_0 +=      0.00289104742 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_b_0 +=      0.00298033234 * math.Cos( 4.10616996243 +     6681.22485339960*t)
   mars_b_0 +=      0.03197134986 * math.Cos( 3.76832042432 +     3340.61242669980*t)
   return mars_b_2+mars_b_1+mars_b_0
}

func mars_l(t float64) float64{
   var mars_l_2 float64 = 0.0

   mars_l_2 +=      0.00013908426 * math.Cos( 2.45742359888 +     6681.22485339960*t)
   mars_l_2 +=      0.00054187645 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_l_2 +=      0.00058015791 * math.Cos( 2.04979463279 +     3340.61242669980*t)
   mars_l_2=mars_l_2*t*t

   var mars_l_1 float64 = 0.0

   mars_l_1 +=      0.00019963338 * math.Cos( 4.26594061030 +    10021.83728009940*t)
   mars_l_1 +=      0.00164901343 * math.Cos( 3.92631250962 +     6681.22485339960*t)
   mars_l_1 +=      0.01458227051 * math.Cos( 3.60426053609 +     3340.61242669980*t)
   mars_l_1 +=   3340.85627474342 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_l_1=mars_l_1*t

   var mars_l_0 float64 = 0.0

   mars_l_0 +=      0.00012315897 * math.Cos( 0.84956081238 +     2810.92146160520*t)
   mars_l_0 +=      0.00010610230 * math.Cos( 2.93958524973 +     2281.23049651060*t)
   mars_l_0 +=      0.00027744987 * math.Cos( 5.97049512942 +        3.52311834900*t)
   mars_l_0 +=      0.00091798394 * math.Cos( 5.75478745111 +    10021.83728009940*t)
   mars_l_0 +=      0.01108216792 * math.Cos( 5.40099836958 +     6681.22485339960*t)
   mars_l_0 +=      0.18656368100 * math.Cos( 5.05037100303 +     3340.61242669980*t)
   mars_l_0 +=      6.20347711583 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_l_2+mars_l_1+mars_l_0
}

func jupiter_r(t float64) float64{
   var jupiter_r_2 float64 = 0.0

   jupiter_r_2 +=      0.00079644833 * math.Cos( 1.35865896596 +      529.69096509460*t)
   jupiter_r_2=jupiter_r_2*t*t

   var jupiter_r_1 float64 = 0.0

   jupiter_r_1 +=      0.00011847190 * math.Cos( 2.41329588176 +      419.48464387520*t)
   jupiter_r_1 +=      0.00041390257 * math.Cos( 0.00000000000 +        0.00000000000*t)
   jupiter_r_1 +=      0.00031185167 * math.Cos( 4.88276663526 +      536.80451209540*t)
   jupiter_r_1 +=      0.00053443592 * math.Cos( 3.89717644226 +      522.57741809380*t)
   jupiter_r_1 +=      0.00061661771 * math.Cos( 3.00076251018 +     1059.38193018920*t)
   jupiter_r_1 +=      0.01271801596 * math.Cos( 2.64937511122 +      529.69096509460*t)
   jupiter_r_1=jupiter_r_1*t

   var jupiter_r_0 float64 = 0.0

   jupiter_r_0 +=      0.00012749004 * math.Cos( 2.71550102862 +     1052.26838318840*t)
   jupiter_r_0 +=      0.00013032600 * math.Cos( 2.96043055741 +     1162.47470440780*t)
   jupiter_r_0 +=      0.00023947340 * math.Cos( 0.27457854894 +        7.11354700080*t)
   jupiter_r_0 +=      0.00022283710 * math.Cos( 4.19362773546 +     1589.07289528380*t)
   jupiter_r_0 +=      0.00023453209 * math.Cos( 3.54023147303 +      735.87651353180*t)
   jupiter_r_0 +=      0.00030135275 * math.Cos( 2.16132058449 +      949.17560896980*t)
   jupiter_r_0 +=      0.00029134620 * math.Cos( 1.67759243710 +      103.09277421860*t)
   jupiter_r_0 +=      0.00065517227 * math.Cos( 5.97995850843 +      316.39186965660*t)
   jupiter_r_0 +=      0.00072062869 * math.Cos( 0.21465694745 +      536.80451209540*t)
   jupiter_r_0 +=      0.00086792941 * math.Cos( 0.71001090609 +      419.48464387520*t)
   jupiter_r_0 +=      0.00187647391 * math.Cos( 2.07590380082 +      522.57741809380*t)
   jupiter_r_0 +=      0.00282029465 * math.Cos( 2.57419879933 +      632.78373931320*t)
   jupiter_r_0 +=      0.00610599902 * math.Cos( 3.84115365602 +     1059.38193018920*t)
   jupiter_r_0 +=      0.25209327020 * math.Cos( 3.49108640015 +      529.69096509460*t)
   jupiter_r_0 +=      5.20887429471 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_r_2+jupiter_r_1+jupiter_r_0
}

func jupiter_b(t float64) float64{
   var jupiter_b_1 float64 = 0.0

   jupiter_b_1 +=      0.00177351787 * math.Cos( 5.70166488486 +      529.69096509460*t)
   jupiter_b_1=jupiter_b_1*t

   var jupiter_b_0 float64 = 0.0

   jupiter_b_0 +=      0.00110090358 * math.Cos( 0.00000000000 +        0.00000000000*t)
   jupiter_b_0 +=      0.00109971634 * math.Cos( 3.90809347389 +     1059.38193018920*t)
   jupiter_b_0 +=      0.02268615703 * math.Cos( 3.55852606718 +      529.69096509460*t)
   return jupiter_b_1+jupiter_b_0
}

func jupiter_l(t float64) float64{
   var jupiter_l_2 float64 = 0.0

   jupiter_l_2 +=      0.00038965550 * math.Cos( 0.00000000000 +        0.00000000000*t)
   jupiter_l_2 +=      0.00030629053 * math.Cos( 2.93021440216 +      529.69096509460*t)
   jupiter_l_2 +=      0.00047233598 * math.Cos( 4.32148323554 +        7.11354700080*t)
   jupiter_l_2=jupiter_l_2*t*t

   var jupiter_l_1 float64 = 0.0

   jupiter_l_1 +=      0.00012105732 * math.Cos( 0.16985765041 +      536.80451209540*t)
   jupiter_l_1 +=      0.00020720943 * math.Cos( 5.45938936295 +      522.57741809380*t)
   jupiter_l_1 +=      0.00027655380 * math.Cos( 4.57265956824 +     1059.38193018920*t)
   jupiter_l_1 +=      0.00228918538 * math.Cos( 6.02647464016 +        7.11354700080*t)
   jupiter_l_1 +=      0.00489741194 * math.Cos( 4.22066689928 +      529.69096509460*t)
   jupiter_l_1 +=    529.93480757497 * math.Cos( 0.00000000000 +        0.00000000000*t)
   jupiter_l_1=jupiter_l_1*t

   var jupiter_l_0 float64 = 0.0

   jupiter_l_0 +=      0.00013589738 * math.Cos( 5.77481031590 +     1589.07289528380*t)
   jupiter_l_0 +=      0.00027964622 * math.Cos( 1.78454589485 +      536.80451209540*t)
   jupiter_l_0 +=      0.00038857780 * math.Cos( 1.27231724860 +      316.39186965660*t)
   jupiter_l_0 +=      0.00039806051 * math.Cos( 2.29376744855 +      419.48464387520*t)
   jupiter_l_0 +=      0.00064263986 * math.Cos( 3.41145185203 +      103.09277421860*t)
   jupiter_l_0 +=      0.00072903096 * math.Cos( 3.64042909255 +      522.57741809380*t)
   jupiter_l_0 +=      0.00097178280 * math.Cos( 4.14264708819 +      632.78373931320*t)
   jupiter_l_0 +=      0.00306389180 * math.Cos( 5.41734729976 +     1059.38193018920*t)
   jupiter_l_0 +=      0.00573610145 * math.Cos( 1.44406205976 +        7.11354700080*t)
   jupiter_l_0 +=      0.09695898711 * math.Cos( 5.06191793105 +      529.69096509460*t)
   jupiter_l_0 +=      0.59954691495 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_l_2+jupiter_l_1+jupiter_l_0
}

func earth_r(t float64) float64{
   var earth_r_1 float64 = 0.0

   earth_r_1 +=      0.00103018608 * math.Cos( 1.10748969588 +     6283.07584999140*t)
   earth_r_1=earth_r_1*t

   var earth_r_0 float64 = 0.0

   earth_r_0 +=      0.00013956023 * math.Cos( 3.05524609620 +    12566.15169998280*t)
   earth_r_0 +=      0.01670699626 * math.Cos( 3.09846350771 +     6283.07584999140*t)
   earth_r_0 +=      1.00013988799 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return earth_r_1+earth_r_0
}

func earth_b(t float64) float64{
   return 0
}

func earth_l(t float64) float64{
   var earth_l_2 float64 = 0.0

   earth_l_2 +=      0.00052918870 * math.Cos( 0.00000000000 +        0.00000000000*t)
   earth_l_2=earth_l_2*t*t

   var earth_l_1 float64 = 0.0

   earth_l_1 +=      0.00206058863 * math.Cos( 2.67823455584 +     6283.07584999140*t)
   earth_l_1 +=   6283.31966747491 * math.Cos( 0.00000000000 +        0.00000000000*t)
   earth_l_1=earth_l_1*t

   var earth_l_0 float64 = 0.0

   earth_l_0 +=      0.00034894275 * math.Cos( 4.62610241759 +    12566.15169998280*t)
   earth_l_0 +=      0.03341656456 * math.Cos( 4.66925680417 +     6283.07584999140*t)
   earth_l_0 +=      1.75347045673 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return earth_l_2+earth_l_1+earth_l_0
}

