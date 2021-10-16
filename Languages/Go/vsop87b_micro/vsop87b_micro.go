//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

package vsop87b_micro

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

   venus_r_1 +=      0.00034551041 * math.Cos( 0.89198706276 +    10213.28554621100*t)
   venus_r_1=venus_r_1*t

   var venus_r_0 float64 = 0.0

   venus_r_0 +=      0.00489824182 * math.Cos( 4.02151831717 +    10213.28554621100*t)
   venus_r_0 +=      0.72334820891 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return venus_r_1+venus_r_0
}

func venus_b(t float64) float64{
   var venus_b_2 float64 = 0.0

   venus_b_2 +=      0.00012657745 * math.Cos( 3.34796457029 +    10213.28554621100*t)
   venus_b_2=venus_b_2*t*t

   var venus_b_1 float64 = 0.0

   venus_b_1 +=      0.00287821243 * math.Cos( 1.88964962838 +    10213.28554621100*t)
   venus_b_1=venus_b_1*t

   var venus_b_0 float64 = 0.0

   venus_b_0 +=      0.00032814918 * math.Cos( 3.14159265359 +        0.00000000000*t)
   venus_b_0 +=      0.00040107978 * math.Cos( 1.14737178112 +    20426.57109242200*t)
   venus_b_0 +=      0.05923638472 * math.Cos( 0.26702775812 +    10213.28554621100*t)
   return venus_b_2+venus_b_1+venus_b_0
}

func venus_l(t float64) float64{
   var venus_l_1 float64 = 0.0

   venus_l_1 +=      0.00095617813 * math.Cos( 2.46406511110 +    10213.28554621100*t)
   venus_l_1 +=  10213.28554621638 * math.Cos( 0.00000000000 +        0.00000000000*t)
   venus_l_1=venus_l_1*t

   var venus_l_0 float64 = 0.0

   venus_l_0 +=      0.00089891645 * math.Cos( 5.30650047764 +    20426.57109242200*t)
   venus_l_0 +=      0.01353968419 * math.Cos( 5.59313319619 +    10213.28554621100*t)
   venus_l_0 +=      3.17614666774 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return venus_l_1+venus_l_0
}

func uranus_r(t float64) float64{
   var uranus_r_2 float64 = 0.0

   uranus_r_2 +=      0.00022439899 * math.Cos( 0.69953310903 +       74.78159856730*t)
   uranus_r_2=uranus_r_2*t*t

   var uranus_r_1 float64 = 0.0

   uranus_r_1 +=      0.00011405056 * math.Cos( 0.01849738017 +       70.84944530420*t)
   uranus_r_1 +=      0.00024059369 * math.Cos( 3.14159265359 +        0.00000000000*t)
   uranus_r_1 +=      0.00021468362 * math.Cos( 2.60175716374 +       76.26607127560*t)
   uranus_r_1 +=      0.00020857554 * math.Cos( 5.24625848960 +       11.04570026390*t)
   uranus_r_1 +=      0.00068627160 * math.Cos( 6.13411179902 +      149.56319713460*t)
   uranus_r_1 +=      0.00071212143 * math.Cos( 6.22600975161 +       63.73589830340*t)
   uranus_r_1 +=      0.01479896629 * math.Cos( 3.67205697578 +       74.78159856730*t)
   uranus_r_1=uranus_r_1*t

   var uranus_r_0 float64 = 0.0

   uranus_r_0 +=      0.00011852959 * math.Cos( 0.99344161196 +       52.69019803950*t)
   uranus_r_0 +=      0.00012896452 * math.Cos( 2.62154084288 +      111.43016149680*t)
   uranus_r_0 +=      0.00011959076 * math.Cos( 1.75043392140 +      984.60033162190*t)
   uranus_r_0 +=      0.00011695693 * math.Cos( 3.29824190199 +        3.93215326310*t)
   uranus_r_0 +=      0.00010792498 * math.Cos( 1.42106296264 +      213.29909543800*t)
   uranus_r_0 +=      0.00015502375 * math.Cos( 5.35405396163 +       38.13303563780*t)
   uranus_r_0 +=      0.00011494680 * math.Cos( 0.43772043395 +       65.22037101170*t)
   uranus_r_0 +=      0.00014701666 * math.Cos( 4.90434516516 +      108.46121608020*t)
   uranus_r_0 +=      0.00012328114 * math.Cos( 5.96037276805 +      127.47179660680*t)
   uranus_r_0 +=      0.00017901300 * math.Cos( 0.55455066863 +        2.96894541660*t)
   uranus_r_0 +=      0.00020473534 * math.Cos( 2.79640244248 +       70.32818044240*t)
   uranus_r_0 +=      0.00022637073 * math.Cos( 0.72518687029 +      529.69096509460*t)
   uranus_r_0 +=      0.00025785880 * math.Cos( 3.78537709870 +       85.82729883120*t)
   uranus_r_0 +=      0.00025620756 * math.Cos( 5.25656086672 +      380.12776796000*t)
   uranus_r_0 +=      0.00020471591 * math.Cos( 1.55587964879 +      202.25339517410*t)
   uranus_r_0 +=      0.00029156413 * math.Cos( 3.18056336700 +       77.75054398390*t)
   uranus_r_0 +=      0.00030348723 * math.Cos( 0.70100838798 +      151.04766984290*t)
   uranus_r_0 +=      0.00036755274 * math.Cos( 3.88649278513 +      146.59425171800*t)
   uranus_r_0 +=      0.00039025624 * math.Cos( 3.36234773834 +      277.03499374140*t)
   uranus_r_0 +=      0.00046677296 * math.Cos( 1.39976401694 +       35.16409022120*t)
   uranus_r_0 +=      0.00039009723 * math.Cos( 1.66971401684 +       70.84944530420*t)
   uranus_r_0 +=      0.00089806014 * math.Cos( 3.66105364565 +      109.94568878850*t)
   uranus_r_0 +=      0.00071424548 * math.Cos( 4.24509236074 +      224.34479570190*t)
   uranus_r_0 +=      0.00093192405 * math.Cos( 0.17437220467 +       36.64856292950*t)
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
   return uranus_r_2+uranus_r_1+uranus_r_0
}

func uranus_b(t float64) float64{
   var uranus_b_1 float64 = 0.0

   uranus_b_1 +=      0.00034101978 * math.Cos( 0.01321929936 +       74.78159856730*t)
   uranus_b_1=uranus_b_1*t

   var uranus_b_0 float64 = 0.0

   uranus_b_0 +=      0.00061601196 * math.Cos( 3.14159265359 +        0.00000000000*t)
   uranus_b_0 +=      0.00062341400 * math.Cos( 5.08111189648 +      149.56319713460*t)
   uranus_b_0 +=      0.01346277648 * math.Cos( 2.61877810547 +       74.78159856730*t)
   return uranus_b_1+uranus_b_0
}

func uranus_l(t float64) float64{
   var uranus_l_1 float64 = 0.0

   uranus_l_1 +=      0.00024456474 * math.Cos( 1.71260334156 +        1.48447270830*t)
   uranus_l_1 +=      0.00154332863 * math.Cos( 5.24158770553 +       74.78159856730*t)
   uranus_l_1 +=     74.78159860910 * math.Cos( 0.00000000000 +        0.00000000000*t)
   uranus_l_1=uranus_l_1*t

   var uranus_l_0 float64 = 0.0

   uranus_l_0 +=      0.00010997910 * math.Cos( 0.48865004018 +      138.51749687070*t)
   uranus_l_0 +=      0.00011162509 * math.Cos( 5.82681796350 +      224.34479570190*t)
   uranus_l_0 +=      0.00014613507 * math.Cos( 4.73732166022 +        3.93215326310*t)
   uranus_l_0 +=      0.00017818647 * math.Cos( 1.74436930289 +       36.64856292950*t)
   uranus_l_0 +=      0.00021078850 * math.Cos( 4.36059339067 +      148.07872442630*t)
   uranus_l_0 +=      0.00025710476 * math.Cos( 6.11379840493 +      454.90936652730*t)
   uranus_l_0 +=      0.00026468770 * math.Cos( 3.14152083966 +       71.81265315070*t)
   uranus_l_0 +=      0.00061950719 * math.Cos( 2.85098872691 +       11.04570026390*t)
   uranus_l_0 +=      0.00061998615 * math.Cos( 2.26952066061 +        2.96894541660*t)
   uranus_l_0 +=      0.00068892678 * math.Cos( 6.09292483287 +       76.26607127560*t)
   uranus_l_0 +=      0.00070328461 * math.Cos( 5.39254450063 +       63.73589830340*t)
   uranus_l_0 +=      0.00272328168 * math.Cos( 3.35823706307 +      149.56319713460*t)
   uranus_l_0 +=      0.00365981674 * math.Cos( 1.89962179044 +       73.29712585900*t)
   uranus_l_0 +=      0.01504247898 * math.Cos( 3.62719260920 +        1.48447270830*t)
   uranus_l_0 +=      0.09260408234 * math.Cos( 0.89106421507 +       74.78159856730*t)
   uranus_l_0 +=      5.48129294297 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return uranus_l_1+uranus_l_0
}

func saturn_r(t float64) float64{
   var saturn_r_3 float64 = 0.0

   saturn_r_3 +=      0.00020315239 * math.Cos( 3.02186068237 +      213.29909543800*t)
   saturn_r_3=saturn_r_3*t*t*t

   var saturn_r_2 float64 = 0.0

   saturn_r_2 +=      0.00029645766 * math.Cos( 5.96309886479 +        7.11354700080*t)
   saturn_r_2 +=      0.00043220783 * math.Cos( 3.86941044212 +      426.59819087600*t)
   saturn_r_2 +=      0.00049766872 * math.Cos( 4.97167777235 +      220.41264243880*t)
   saturn_r_2 +=      0.00071922498 * math.Cos( 2.50070069930 +      206.18554843720*t)
   saturn_r_2 +=      0.00436902572 * math.Cos( 4.78671677509 +      213.29909543800*t)
   saturn_r_2=saturn_r_2*t*t

   var saturn_r_1 float64 = 0.0

   saturn_r_1 +=      0.00013876849 * math.Cos( 0.75884928866 +      199.07200143640*t)
   saturn_r_1 +=      0.00012892843 * math.Cos( 5.94329433020 +      433.71173787680*t)
   saturn_r_1 +=      0.00018839544 * math.Cos( 1.60818334043 +      110.20632121940*t)
   saturn_r_1 +=      0.00019952564 * math.Cos( 1.17560606130 +      419.48464387520*t)
   saturn_r_1 +=      0.00020928426 * math.Cos( 5.09244947411 +      639.89728631400*t)
   saturn_r_1 +=      0.00049621208 * math.Cos( 6.01744279820 +      103.09277421860*t)
   saturn_r_1 +=      0.00143891146 * math.Cos( 1.40744822888 +        7.11354700080*t)
   saturn_r_1 +=      0.00186261486 * math.Cos( 3.14159265359 +        0.00000000000*t)
   saturn_r_1 +=      0.00188491195 * math.Cos( 0.47215589652 +      220.41264243880*t)
   saturn_r_1 +=      0.00341394029 * math.Cos( 5.79635741658 +      426.59819087600*t)
   saturn_r_1 +=      0.00506577242 * math.Cos( 0.71114625261 +      206.18554843720*t)
   saturn_r_1 +=      0.06182981340 * math.Cos( 0.25843511480 +      213.29909543800*t)
   saturn_r_1=saturn_r_1*t

   var saturn_r_0 float64 = 0.0

   saturn_r_0 +=      0.00012884624 * math.Cos( 1.64890652873 +      138.51749687070*t)
   saturn_r_0 +=      0.00011380257 * math.Cos( 1.73105427040 +      522.57741809380*t)
   saturn_r_0 +=      0.00011993338 * math.Cos( 5.98050967385 +      846.08283475120*t)
   saturn_r_0 +=      0.00014296484 * math.Cos( 2.60433479142 +      323.50541665740*t)
   saturn_r_0 +=      0.00015298404 * math.Cos( 3.05943814940 +      529.69096509460*t)
   saturn_r_0 +=      0.00020746751 * math.Cos( 5.33255457763 +      199.07200143640*t)
   saturn_r_0 +=      0.00020839300 * math.Cos( 1.52102476129 +      433.71173787680*t)
   saturn_r_0 +=      0.00020936596 * math.Cos( 0.46349251129 +      735.87651353180*t)
   saturn_r_0 +=      0.00032401773 * math.Cos( 5.47084567016 +      949.17560896980*t)
   saturn_r_0 +=      0.00034143772 * math.Cos( 0.19519102597 +      277.03499374140*t)
   saturn_r_0 +=      0.00048913294 * math.Cos( 1.55733638681 +      202.25339517410*t)
   saturn_r_0 +=      0.00061053367 * math.Cos( 0.94037691801 +      639.89728631400*t)
   saturn_r_0 +=      0.00069006962 * math.Cos( 5.94099540992 +      419.48464387520*t)
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
   return saturn_r_3+saturn_r_2+saturn_r_1+saturn_r_0
}

func saturn_b(t float64) float64{
   var saturn_b_2 float64 = 0.0

   saturn_b_2 +=      0.00013884264 * math.Cos( 0.08994998691 +      213.29909543800*t)
   saturn_b_2=saturn_b_2*t*t

   var saturn_b_1 float64 = 0.0

   saturn_b_1 +=      0.00013320265 * math.Cos( 2.26481519893 +      206.18554843720*t)
   saturn_b_1 +=      0.00010919721 * math.Cos( 1.79463271368 +      220.41264243880*t)
   saturn_b_1 +=      0.00017966989 * math.Cos( 0.51979431110 +      426.59819087600*t)
   saturn_b_1 +=      0.00036947916 * math.Cos( 3.14159265359 +        0.00000000000*t)
   saturn_b_1 +=      0.00198927992 * math.Cos( 4.93901017903 +      213.29909543800*t)
   saturn_b_1=saturn_b_1*t

   var saturn_b_0 float64 = 0.0

   saturn_b_0 +=      0.00014734070 * math.Cos( 2.11846596715 +      639.89728631400*t)
   saturn_b_0 +=      0.00034116062 * math.Cos( 0.57297307557 +      206.18554843720*t)
   saturn_b_0 +=      0.00030863357 * math.Cos( 3.48441504555 +      220.41264243880*t)
   saturn_b_0 +=      0.00084745939 * math.Cos( 0.00000000000 +        0.00000000000*t)
   saturn_b_0 +=      0.00240348302 * math.Cos( 2.85238489373 +      426.59819087600*t)
   saturn_b_0 +=      0.04330678039 * math.Cos( 3.60284428399 +      213.29909543800*t)
   return saturn_b_2+saturn_b_1+saturn_b_0
}

func saturn_l(t float64) float64{
   var saturn_l_3 float64 = 0.0

   saturn_l_3 +=      0.00016038732 * math.Cos( 5.73945573267 +        7.11354700080*t)
   saturn_l_3=saturn_l_3*t*t*t

   var saturn_l_2 float64 = 0.0

   saturn_l_2 +=      0.00010629830 * math.Cos( 0.25764306189 +      220.41264243880*t)
   saturn_l_2 +=      0.00010987259 * math.Cos( 5.44479188310 +      426.59819087600*t)
   saturn_l_2 +=      0.00015274496 * math.Cos( 4.06493179167 +      206.18554843720*t)
   saturn_l_2 +=      0.00036661728 * math.Cos( 0.00000000000 +        0.00000000000*t)
   saturn_l_2 +=      0.00091841837 * math.Cos( 0.07325195840 +      213.29909543800*t)
   saturn_l_2 +=      0.00116441330 * math.Cos( 1.17988132879 +        7.11354700080*t)
   saturn_l_2=saturn_l_2*t*t

   var saturn_l_1 float64 = 0.0

   saturn_l_1 +=      0.00010511678 * math.Cos( 2.74880342130 +       14.22709400160*t)
   saturn_l_1 +=      0.00019941774 * math.Cos( 1.27954390470 +      103.09277421860*t)
   saturn_l_1 +=      0.00040244455 * math.Cos( 2.04108104671 +      220.41264243880*t)
   saturn_l_1 +=      0.00107674962 * math.Cos( 2.27769131009 +      206.18554843720*t)
   saturn_l_1 +=      0.00093734369 * math.Cos( 1.06311793502 +      426.59819087600*t)
   saturn_l_1 +=      0.00564345393 * math.Cos( 2.88499717272 +        7.11354700080*t)
   saturn_l_1 +=      0.01297370862 * math.Cos( 1.82834923978 +      213.29909543800*t)
   saturn_l_1 +=    213.29909521690 * math.Cos( 0.00000000000 +        0.00000000000*t)
   saturn_l_1=saturn_l_1*t

   var saturn_l_0 float64 = 0.0

   saturn_l_0 +=      0.00010725067 * math.Cos( 3.12939523827 +      202.25339517410*t)
   saturn_l_0 +=      0.00013005299 * math.Cos( 5.98119023644 +       11.04570026390*t)
   saturn_l_0 +=      0.00015053543 * math.Cos( 2.71669915667 +      639.89728631400*t)
   saturn_l_0 +=      0.00013160301 * math.Cos( 4.44891291899 +       14.22709400160*t)
   saturn_l_0 +=      0.00014609559 * math.Cos( 1.56518472000 +        3.93215326310*t)
   saturn_l_0 +=      0.00015820290 * math.Cos( 0.93809155235 +      632.78373931320*t)
   saturn_l_0 +=      0.00014906995 * math.Cos( 5.76903183869 +      316.39186965660*t)
   saturn_l_0 +=      0.00016573588 * math.Cos( 0.43719228296 +      419.48464387520*t)
   saturn_l_0 +=      0.00023990355 * math.Cos( 4.66976924553 +      110.20632121940*t)
   saturn_l_0 +=      0.00079271300 * math.Cos( 3.84007056878 +      220.41264243880*t)
   saturn_l_0 +=      0.00206816305 * math.Cos( 0.24658372002 +      103.09277421860*t)
   saturn_l_0 +=      0.00350769243 * math.Cos( 3.30329907896 +      426.59819087600*t)
   saturn_l_0 +=      0.00398379389 * math.Cos( 0.52112032699 +      206.18554843720*t)
   saturn_l_0 +=      0.01414150957 * math.Cos( 4.58581516874 +        7.11354700080*t)
   saturn_l_0 +=      0.11107659762 * math.Cos( 3.96205090159 +      213.29909543800*t)
   saturn_l_0 +=      0.87401354025 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return saturn_l_3+saturn_l_2+saturn_l_1+saturn_l_0
}

func neptune_r(t float64) float64{
   var neptune_r_1 float64 = 0.0

   neptune_r_1 +=      0.00013220034 * math.Cos( 3.32014387930 +        1.48447270830*t)
   neptune_r_1 +=      0.00236338618 * math.Cos( 0.70497954792 +       38.13303563780*t)
   neptune_r_1=neptune_r_1*t

   var neptune_r_0 float64 = 0.0

   neptune_r_0 +=      0.00012012320 * math.Cos( 1.92059384991 +     1021.24889455140*t)
   neptune_r_0 +=      0.00014229808 * math.Cos( 1.07785898723 +       74.78159856730*t)
   neptune_r_0 +=      0.00016939478 * math.Cos( 1.59422512526 +       71.81265315070*t)
   neptune_r_0 +=      0.00024594531 * math.Cos( 0.50801745878 +      109.94568878850*t)
   neptune_r_0 +=      0.00046687836 * math.Cos( 5.74938034313 +       33.67961751290*t)
   neptune_r_0 +=      0.00069791331 * math.Cos( 3.79616637768 +        2.96894541660*t)
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

   neptune_b_0 +=      0.00015448133 * math.Cos( 3.50877079215 +       39.61750834610*t)
   neptune_b_0 +=      0.00015355489 * math.Cos( 2.52123799551 +       36.64856292950*t)
   neptune_b_0 +=      0.00027623609 * math.Cos( 0.00000000000 +        0.00000000000*t)
   neptune_b_0 +=      0.00027780087 * math.Cos( 5.91271884599 +       76.26607127560*t)
   neptune_b_0 +=      0.03088622933 * math.Cos( 1.44104372644 +       38.13303563780*t)
   return neptune_b_0
}

func neptune_l(t float64) float64{
   var neptune_l_1 float64 = 0.0

   neptune_l_1 +=      0.00015744045 * math.Cos( 2.27887427527 +       38.13303563780*t)
   neptune_l_1 +=      0.00016604172 * math.Cos( 4.86323329249 +        1.48447270830*t)
   neptune_l_1 +=     38.13303563957 * math.Cos( 0.00000000000 +        0.00000000000*t)
   neptune_l_1=neptune_l_1*t

   var neptune_l_0 float64 = 0.0

   neptune_l_0 +=      0.00016482741 * math.Cos( 0.00007727998 +      491.55792945680*t)
   neptune_l_0 +=      0.00033784738 * math.Cos( 1.24488874087 +       76.26607127560*t)
   neptune_l_0 +=      0.00037714584 * math.Cos( 6.09221808686 +       35.16409022120*t)
   neptune_l_0 +=      0.00042064466 * math.Cos( 5.41054993053 +        2.96894541660*t)
   neptune_l_0 +=      0.00124531845 * math.Cos( 4.83008090676 +       36.64856292950*t)
   neptune_l_0 +=      0.01019727652 * math.Cos( 0.48580922867 +        1.48447270830*t)
   neptune_l_0 +=      0.01798475530 * math.Cos( 2.90101273890 +       38.13303563780*t)
   neptune_l_0 +=      5.31188633046 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return neptune_l_1+neptune_l_0
}

func mercury_r(t float64) float64{
   var mercury_r_1 float64 = 0.0

   mercury_r_1 +=      0.00010094479 * math.Cos( 4.47466326327 +    78263.70942472259*t)
   mercury_r_1 +=      0.00044141826 * math.Cos( 1.42385544001 +    52175.80628314840*t)
   mercury_r_1 +=      0.00217347740 * math.Cos( 4.65617158665 +    26087.90314157420*t)
   mercury_r_1=mercury_r_1*t

   var mercury_r_0 float64 = 0.0

   mercury_r_0 +=      0.00021921969 * math.Cos( 2.77820093972 +   104351.61256629678*t)
   mercury_r_0 +=      0.00121281764 * math.Cos( 6.01064153797 +    78263.70942472259*t)
   mercury_r_0 +=      0.00795525558 * math.Cos( 2.95989690104 +    52175.80628314840*t)
   mercury_r_0 +=      0.07834131818 * math.Cos( 6.19233722598 +    26087.90314157420*t)
   mercury_r_0 +=      0.39528271651 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_r_1+mercury_r_0
}

func mercury_b(t float64) float64{
   var mercury_b_1 float64 = 0.0

   mercury_b_1 +=      0.00023970726 * math.Cos( 2.53272082947 +    52175.80628314840*t)
   mercury_b_1 +=      0.00018772047 * math.Cos( 0.05141288887 +    78263.70942472259*t)
   mercury_b_1 +=      0.00099737713 * math.Cos( 3.14159265359 +        0.00000000000*t)
   mercury_b_1 +=      0.00274646065 * math.Cos( 3.95008450011 +    26087.90314157420*t)
   mercury_b_1=mercury_b_1*t

   var mercury_b_0 float64 = 0.0

   mercury_b_0 +=      0.00031866927 * math.Cos( 1.58088495658 +   130439.51570787099*t)
   mercury_b_0 +=      0.00129778770 * math.Cos( 4.83232503958 +   104351.61256629678*t)
   mercury_b_0 +=      0.00543251810 * math.Cos( 1.79644363964 +    78263.70942472259*t)
   mercury_b_0 +=      0.01222839532 * math.Cos( 3.14159265359 +        0.00000000000*t)
   mercury_b_0 +=      0.02388076996 * math.Cos( 5.03738959686 +    52175.80628314840*t)
   mercury_b_0 +=      0.11737528961 * math.Cos( 1.98357498767 +    26087.90314157420*t)
   return mercury_b_1+mercury_b_0
}

func mercury_l(t float64) float64{
   var mercury_l_2 float64 = 0.0

   mercury_l_2 +=      0.00016395129 * math.Cos( 4.67759555504 +    26087.90314157420*t)
   mercury_l_2=mercury_l_2*t*t

   var mercury_l_1 float64 = 0.0

   mercury_l_1 +=      0.00019676525 * math.Cos( 2.80965111777 +   104351.61256629678*t)
   mercury_l_1 +=      0.00075775081 * math.Cos( 6.08568821653 +    78263.70942472259*t)
   mercury_l_1 +=      0.00292242298 * math.Cos( 3.04449355541 +    52175.80628314840*t)
   mercury_l_1 +=      0.01131199811 * math.Cos( 6.21874197797 +    26087.90314157420*t)
   mercury_l_1 +=  26087.90313685529 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mercury_l_1=mercury_l_1*t

   var mercury_l_0 float64 = 0.0

   mercury_l_0 +=      0.00034561897 * math.Cos( 0.77930768443 +   130439.51570787099*t)
   mercury_l_0 +=      0.00165590362 * math.Cos( 4.11969163423 +   104351.61256629678*t)
   mercury_l_0 +=      0.00855346844 * math.Cos( 1.16520322459 +    78263.70942472259*t)
   mercury_l_0 +=      0.05046294200 * math.Cos( 4.47785489551 +    52175.80628314840*t)
   mercury_l_0 +=      0.40989414977 * math.Cos( 1.48302034195 +    26087.90314157420*t)
   mercury_l_0 +=      4.40250710144 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mercury_l_2+mercury_l_1+mercury_l_0
}

func mars_r(t float64) float64{
   var mars_r_2 float64 = 0.0

   mars_r_2 +=      0.00044242249 * math.Cos( 0.47930604954 +     3340.61242669980*t)
   mars_r_2=mars_r_2*t*t

   var mars_r_1 float64 = 0.0

   mars_r_1 +=      0.00010815880 * math.Cos( 2.70888095665 +    10021.83728009940*t)
   mars_r_1 +=      0.00012877200 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_r_1 +=      0.00103175887 * math.Cos( 2.37071847807 +     6681.22485339960*t)
   mars_r_1 +=      0.01107433345 * math.Cos( 2.03250524857 +     3340.61242669980*t)
   mars_r_1=mars_r_1*t

   var mars_r_0 float64 = 0.0

   mars_r_0 +=      0.00046179117 * math.Cos( 4.15595316782 +    10021.83728009940*t)
   mars_r_0 +=      0.00660776362 * math.Cos( 3.81783443019 +     6681.22485339960*t)
   mars_r_0 +=      0.14184953160 * math.Cos( 3.47971283528 +     3340.61242669980*t)
   mars_r_0 +=      1.53033488271 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_r_2+mars_r_1+mars_r_0
}

func mars_b(t float64) float64{
   var mars_b_1 float64 = 0.0

   mars_b_1 +=      0.00012834709 * math.Cos( 1.60810667915 +     6681.22485339960*t)
   mars_b_1 +=      0.00020976948 * math.Cos( 3.14159265359 +        0.00000000000*t)
   mars_b_1 +=      0.00217310991 * math.Cos( 6.04472194776 +     3340.61242669980*t)
   mars_b_1=mars_b_1*t

   var mars_b_0 float64 = 0.0

   mars_b_0 +=      0.00031365539 * math.Cos( 4.44651053090 +    10021.83728009940*t)
   mars_b_0 +=      0.00289104742 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_b_0 +=      0.00298033234 * math.Cos( 4.10616996305 +     6681.22485339960*t)
   mars_b_0 +=      0.03197134986 * math.Cos( 3.76832042431 +     3340.61242669980*t)
   return mars_b_1+mars_b_0
}

func mars_l(t float64) float64{
   var mars_l_2 float64 = 0.0

   mars_l_2 +=      0.00013459579 * math.Cos( 2.45738706163 +     6681.22485339960*t)
   mars_l_2 +=      0.00058152577 * math.Cos( 2.04961712429 +     3340.61242669980*t)
   mars_l_2=mars_l_2*t*t

   var mars_l_1 float64 = 0.0

   mars_l_1 +=      0.00020622975 * math.Cos( 4.26108844583 +    10021.83728009940*t)
   mars_l_1 +=      0.00168414711 * math.Cos( 3.92318567804 +     6681.22485339960*t)
   mars_l_1 +=      0.01457554523 * math.Cos( 3.60433733236 +     3340.61242669980*t)
   mars_l_1 +=   3340.61242700512 * math.Cos( 0.00000000000 +        0.00000000000*t)
   mars_l_1=mars_l_1*t

   var mars_l_0 float64 = 0.0

   mars_l_0 +=      0.00012315897 * math.Cos( 0.84956094002 +     2810.92146160520*t)
   mars_l_0 +=      0.00010610235 * math.Cos( 2.93958560338 +     2281.23049651060*t)
   mars_l_0 +=      0.00027744987 * math.Cos( 5.97049513147 +        3.52311834900*t)
   mars_l_0 +=      0.00091798406 * math.Cos( 5.75478744667 +    10021.83728009940*t)
   mars_l_0 +=      0.01108216816 * math.Cos( 5.40099836344 +     6681.22485339960*t)
   mars_l_0 +=      0.18656368093 * math.Cos( 5.05037100270 +     3340.61242669980*t)
   mars_l_0 +=      6.20347711581 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return mars_l_2+mars_l_1+mars_l_0
}

func jupiter_r(t float64) float64{
   var jupiter_r_2 float64 = 0.0

   jupiter_r_2 +=      0.00079644957 * math.Cos( 1.35865949884 +      529.69096509460*t)
   jupiter_r_2=jupiter_r_2*t*t

   var jupiter_r_1 float64 = 0.0

   jupiter_r_1 +=      0.00011847263 * math.Cos( 2.41328764459 +      419.48464387520*t)
   jupiter_r_1 +=      0.00041390269 * math.Cos( 0.00000000000 +        0.00000000000*t)
   jupiter_r_1 +=      0.00031185171 * math.Cos( 4.88276958012 +      536.80451209540*t)
   jupiter_r_1 +=      0.00053443713 * math.Cos( 3.89717383175 +      522.57741809380*t)
   jupiter_r_1 +=      0.00061661816 * math.Cos( 3.00076460387 +     1059.38193018920*t)
   jupiter_r_1 +=      0.01271801520 * math.Cos( 2.64937512894 +      529.69096509460*t)
   jupiter_r_1=jupiter_r_1*t

   var jupiter_r_0 float64 = 0.0

   jupiter_r_0 +=      0.00012749023 * math.Cos( 2.71550286592 +     1052.26838318840*t)
   jupiter_r_0 +=      0.00013032614 * math.Cos( 2.96042965363 +     1162.47470440780*t)
   jupiter_r_0 +=      0.00023947298 * math.Cos( 0.27458037480 +        7.11354700080*t)
   jupiter_r_0 +=      0.00022283743 * math.Cos( 4.19362594399 +     1589.07289528380*t)
   jupiter_r_0 +=      0.00023453271 * math.Cos( 3.54023522184 +      735.87651353180*t)
   jupiter_r_0 +=      0.00030135335 * math.Cos( 2.16132003734 +      949.17560896980*t)
   jupiter_r_0 +=      0.00029134542 * math.Cos( 1.67759379655 +      103.09277421860*t)
   jupiter_r_0 +=      0.00065517248 * math.Cos( 5.97995884790 +      316.39186965660*t)
   jupiter_r_0 +=      0.00072062974 * math.Cos( 0.21465724607 +      536.80451209540*t)
   jupiter_r_0 +=      0.00086792905 * math.Cos( 0.71001145545 +      419.48464387520*t)
   jupiter_r_0 +=      0.00187647346 * math.Cos( 2.07590383214 +      522.57741809380*t)
   jupiter_r_0 +=      0.00282029458 * math.Cos( 2.57419881293 +      632.78373931320*t)
   jupiter_r_0 +=      0.00610599976 * math.Cos( 3.84115365948 +     1059.38193018920*t)
   jupiter_r_0 +=      0.25209327119 * math.Cos( 3.49108639871 +      529.69096509460*t)
   jupiter_r_0 +=      5.20887429326 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_r_2+jupiter_r_1+jupiter_r_0
}

func jupiter_b(t float64) float64{
   var jupiter_b_1 float64 = 0.0

   jupiter_b_1 +=      0.00078203446 * math.Cos( 1.52377859742 +      529.69096509460*t)
   jupiter_b_1=jupiter_b_1*t

   var jupiter_b_0 float64 = 0.0

   jupiter_b_0 +=      0.00110090358 * math.Cos( 0.00000000000 +        0.00000000000*t)
   jupiter_b_0 +=      0.00109971634 * math.Cos( 3.90809347197 +     1059.38193018920*t)
   jupiter_b_0 +=      0.02268615702 * math.Cos( 3.55852606721 +      529.69096509460*t)
   return jupiter_b_1+jupiter_b_0
}

func jupiter_l(t float64) float64{
   var jupiter_l_2 float64 = 0.0

   jupiter_l_2 +=      0.00014837605 * math.Cos( 3.14159265359 +        0.00000000000*t)
   jupiter_l_2 +=      0.00030649436 * math.Cos( 2.92977788700 +      529.69096509460*t)
   jupiter_l_2 +=      0.00047233601 * math.Cos( 4.32148536482 +        7.11354700080*t)
   jupiter_l_2=jupiter_l_2*t*t

   var jupiter_l_1 float64 = 0.0

   jupiter_l_1 +=      0.00012103653 * math.Cos( 0.16994816098 +      536.80451209540*t)
   jupiter_l_1 +=      0.00020720920 * math.Cos( 5.45943156902 +      522.57741809380*t)
   jupiter_l_1 +=      0.00030099479 * math.Cos( 4.54540782858 +     1059.38193018920*t)
   jupiter_l_1 +=      0.00228917222 * math.Cos( 6.02646855621 +        7.11354700080*t)
   jupiter_l_1 +=      0.00489503243 * math.Cos( 4.22082939470 +      529.69096509460*t)
   jupiter_l_1 +=    529.69096508814 * math.Cos( 0.00000000000 +        0.00000000000*t)
   jupiter_l_1=jupiter_l_1*t

   var jupiter_l_0 float64 = 0.0

   jupiter_l_0 +=      0.00013589730 * math.Cos( 5.77481040790 +     1589.07289528380*t)
   jupiter_l_0 +=      0.00027964629 * math.Cos( 1.78454591820 +      536.80451209540*t)
   jupiter_l_0 +=      0.00038857767 * math.Cos( 1.27231755835 +      316.39186965660*t)
   jupiter_l_0 +=      0.00039806064 * math.Cos( 2.29376740788 +      419.48464387520*t)
   jupiter_l_0 +=      0.00064263975 * math.Cos( 3.41145165351 +      103.09277421860*t)
   jupiter_l_0 +=      0.00072903078 * math.Cos( 3.64042916389 +      522.57741809380*t)
   jupiter_l_0 +=      0.00097178296 * math.Cos( 4.14264726552 +      632.78373931320*t)
   jupiter_l_0 +=      0.00306389205 * math.Cos( 5.41734730184 +     1059.38193018920*t)
   jupiter_l_0 +=      0.00573610142 * math.Cos( 1.44406205629 +        7.11354700080*t)
   jupiter_l_0 +=      0.09695898719 * math.Cos( 5.06191793158 +      529.69096509460*t)
   jupiter_l_0 +=      0.59954691494 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return jupiter_l_2+jupiter_l_1+jupiter_l_0
}

func earth_r(t float64) float64{
   var earth_r_1 float64 = 0.0

   earth_r_1 +=      0.00103018607 * math.Cos( 1.10748968172 +     6283.07584999140*t)
   earth_r_1=earth_r_1*t

   var earth_r_0 float64 = 0.0

   earth_r_0 +=      0.00013956024 * math.Cos( 3.05524609456 +    12566.15169998280*t)
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

   earth_l_0 +=      0.00034894275 * math.Cos( 4.62610242189 +    12566.15169998280*t)
   earth_l_0 +=      0.03341656453 * math.Cos( 4.66925680415 +     6283.07584999140*t)
   earth_l_0 +=      1.75347045673 * math.Cos( 0.00000000000 +        0.00000000000*t)
   return earth_l_1+earth_l_0
}

