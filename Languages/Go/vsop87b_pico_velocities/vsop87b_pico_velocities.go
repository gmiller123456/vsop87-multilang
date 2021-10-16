//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

package vsop87b_pico_velocities

import ("math")

func GetMercury(t float64) [3]float64{
   var temp [3]float64
   temp[0]=mercury_l(t) / 365250.0
   temp[1]=mercury_b(t) / 365250.0
   temp[2]=mercury_r(t) / 365250.0

   return temp
}

func GetVenus(t float64) [3]float64{
   var temp [3]float64
   temp[0]=venus_l(t) / 365250.0
   temp[1]=venus_b(t) / 365250.0
   temp[2]=venus_r(t) / 365250.0

   return temp
}

func GetEarth(t float64) [3]float64{
   var temp [3]float64
   temp[0]=earth_l(t) / 365250.0
   temp[1]=earth_b(t) / 365250.0
   temp[2]=earth_r(t) / 365250.0

   return temp
}

func GetMars(t float64) [3]float64{
   var temp [3]float64
   temp[0]=mars_l(t) / 365250.0
   temp[1]=mars_b(t) / 365250.0
   temp[2]=mars_r(t) / 365250.0

   return temp
}

func GetJupiter(t float64) [3]float64{
   var temp [3]float64
   temp[0]=jupiter_l(t) / 365250.0
   temp[1]=jupiter_b(t) / 365250.0
   temp[2]=jupiter_r(t) / 365250.0

   return temp
}

func GetSaturn(t float64) [3]float64{
   var temp [3]float64
   temp[0]=saturn_l(t) / 365250.0
   temp[1]=saturn_b(t) / 365250.0
   temp[2]=saturn_r(t) / 365250.0

   return temp
}

func GetUranus(t float64) [3]float64{
   var temp [3]float64
   temp[0]=uranus_l(t) / 365250.0
   temp[1]=uranus_b(t) / 365250.0
   temp[2]=uranus_r(t) / 365250.0

   return temp
}

func GetNeptune(t float64) [3]float64{
   var temp [3]float64
   temp[0]=neptune_l(t) / 365250.0
   temp[1]=neptune_b(t) / 365250.0
   temp[2]=neptune_r(t) / 365250.0

   return temp
}

func venus_r(t float64) float64{
   var venus_r_0 float64 = 0.0

   venus_r_0 += -1 *      0.72334820891 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return venus_r_0
}

func venus_b(t float64) float64{
   var venus_b_0 float64 = 0.0

   venus_b_0 += -1 *      0.05923638472 *    10213.28554621100 * math.Sin( 0.26702775812 +    10213.28554621100*t)
   return venus_b_0
}

func venus_l(t float64) float64{
   var venus_l_1 float64 = 0.0

   venus_l_1 += (math.Pow(t,0)) * 1 *  10213.28554621638 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *  10213.28554621638 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var venus_l_0 float64 = 0.0

   venus_l_0 += -1 *      0.01353968419 *    10213.28554621100 * math.Sin( 5.59313319619 +    10213.28554621100*t)
   venus_l_0 += -1 *      3.17614666774 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return venus_l_1+venus_l_0
}

func uranus_r(t float64) float64{
   var uranus_r_1 float64 = 0.0

   uranus_r_1 += (math.Pow(t,0)) * 1 *      0.01479896629 * math.Cos( 3.67205697578 +       74.78159856730*t) - (math.Pow(t,1)) *      0.01479896629 *       74.78159856730 * math.Sin( 3.67205697578 +       74.78159856730*t)

   var uranus_r_0 float64 = 0.0

   uranus_r_0 += -1 *      0.02055653860 *      149.56319713460 * math.Sin( 1.78295159330 +      149.56319713460*t)
   uranus_r_0 += -1 *      0.03440836062 *       73.29712585900 * math.Sin( 0.32836099706 +       73.29712585900*t)
   uranus_r_0 += -1 *      0.88784984413 *       74.78159856730 * math.Sin( 5.60377527014 +       74.78159856730*t)
   uranus_r_0 += -1 *     19.21264847206 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return uranus_r_1+uranus_r_0
}

func uranus_b(t float64) float64{
   var uranus_b_0 float64 = 0.0

   uranus_b_0 += -1 *      0.01346277648 *       74.78159856730 * math.Sin( 2.61877810547 +       74.78159856730*t)
   return uranus_b_0
}

func uranus_l(t float64) float64{
   var uranus_l_1 float64 = 0.0

   uranus_l_1 += (math.Pow(t,0)) * 1 *     74.78159860910 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *     74.78159860910 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var uranus_l_0 float64 = 0.0

   uranus_l_0 += -1 *      0.01504247898 *        1.48447270830 * math.Sin( 3.62719260920 +        1.48447270830*t)
   uranus_l_0 += -1 *      0.09260408234 *       74.78159856730 * math.Sin( 0.89106421507 +       74.78159856730*t)
   uranus_l_0 += -1 *      5.48129294297 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return uranus_l_1+uranus_l_0
}

func saturn_r(t float64) float64{
   var saturn_r_1 float64 = 0.0

   saturn_r_1 += (math.Pow(t,0)) * 1 *      0.06182981340 * math.Cos( 0.25843511480 +      213.29909543800*t) - (math.Pow(t,1)) *      0.06182981340 *      213.29909543800 * math.Sin( 0.25843511480 +      213.29909543800*t)

   var saturn_r_0 float64 = 0.0

   saturn_r_0 += -1 *      0.01464663929 *      426.59819087600 * math.Sin( 1.64763042902 +      426.59819087600*t)
   saturn_r_0 += -1 *      0.01873679867 *      206.18554843720 * math.Sin( 5.23549604660 +      206.18554843720*t)
   saturn_r_0 += -1 *      0.52921382865 *      213.29909543800 * math.Sin( 2.39226219573 +      213.29909543800*t)
   saturn_r_0 += -1 *      9.55758135486 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return saturn_r_1+saturn_r_0
}

func saturn_b(t float64) float64{
   var saturn_b_0 float64 = 0.0

   saturn_b_0 += -1 *      0.04330678039 *      213.29909543800 * math.Sin( 3.60284428399 +      213.29909543800*t)
   return saturn_b_0
}

func saturn_l(t float64) float64{
   var saturn_l_1 float64 = 0.0

   saturn_l_1 += (math.Pow(t,0)) * 1 *      0.01297370862 * math.Cos( 1.82834923978 +      213.29909543800*t) - (math.Pow(t,1)) *      0.01297370862 *      213.29909543800 * math.Sin( 1.82834923978 +      213.29909543800*t)
   saturn_l_1 += (math.Pow(t,0)) * 1 *    213.29909521690 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *    213.29909521690 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var saturn_l_0 float64 = 0.0

   saturn_l_0 += -1 *      0.01414150957 *        7.11354700080 * math.Sin( 4.58581516874 +        7.11354700080*t)
   saturn_l_0 += -1 *      0.11107659762 *      213.29909543800 * math.Sin( 3.96205090159 +      213.29909543800*t)
   saturn_l_0 += -1 *      0.87401354025 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return saturn_l_1+saturn_l_0
}

func neptune_r(t float64) float64{
   var neptune_r_0 float64 = 0.0

   neptune_r_0 += -1 *      0.01691764014 *       36.64856292950 * math.Sin( 3.25186135653 +       36.64856292950*t)
   neptune_r_0 += -1 *      0.27062259632 *       38.13303563780 * math.Sin( 1.32999459377 +       38.13303563780*t)
   neptune_r_0 += -1 *     30.07013205828 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return neptune_r_0
}

func neptune_b(t float64) float64{
   var neptune_b_0 float64 = 0.0

   neptune_b_0 += -1 *      0.03088622933 *       38.13303563780 * math.Sin( 1.44104372644 +       38.13303563780*t)
   return neptune_b_0
}

func neptune_l(t float64) float64{
   var neptune_l_1 float64 = 0.0

   neptune_l_1 += (math.Pow(t,0)) * 1 *     38.13303563957 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *     38.13303563957 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var neptune_l_0 float64 = 0.0

   neptune_l_0 += -1 *      0.01019727652 *        1.48447270830 * math.Sin( 0.48580922867 +        1.48447270830*t)
   neptune_l_0 += -1 *      0.01798475530 *       38.13303563780 * math.Sin( 2.90101273890 +       38.13303563780*t)
   neptune_l_0 += -1 *      5.31188633046 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return neptune_l_1+neptune_l_0
}

func mercury_r(t float64) float64{
   var mercury_r_0 float64 = 0.0

   mercury_r_0 += -1 *      0.07834131818 *    26087.90314157420 * math.Sin( 6.19233722598 +    26087.90314157420*t)
   mercury_r_0 += -1 *      0.39528271651 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return mercury_r_0
}

func mercury_b(t float64) float64{
   var mercury_b_0 float64 = 0.0

   mercury_b_0 += -1 *      0.01222839532 *        0.00000000000 * math.Sin( 3.14159265359 +        0.00000000000*t)
   mercury_b_0 += -1 *      0.02388076996 *    52175.80628314840 * math.Sin( 5.03738959686 +    52175.80628314840*t)
   mercury_b_0 += -1 *      0.11737528961 *    26087.90314157420 * math.Sin( 1.98357498767 +    26087.90314157420*t)
   return mercury_b_0
}

func mercury_l(t float64) float64{
   var mercury_l_1 float64 = 0.0

   mercury_l_1 += (math.Pow(t,0)) * 1 *      0.01131199811 * math.Cos( 6.21874197797 +    26087.90314157420*t) - (math.Pow(t,1)) *      0.01131199811 *    26087.90314157420 * math.Sin( 6.21874197797 +    26087.90314157420*t)
   mercury_l_1 += (math.Pow(t,0)) * 1 *  26087.90313685529 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *  26087.90313685529 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var mercury_l_0 float64 = 0.0

   mercury_l_0 += -1 *      0.05046294200 *    52175.80628314840 * math.Sin( 4.47785489551 +    52175.80628314840*t)
   mercury_l_0 += -1 *      0.40989414977 *    26087.90314157420 * math.Sin( 1.48302034195 +    26087.90314157420*t)
   mercury_l_0 += -1 *      4.40250710144 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return mercury_l_1+mercury_l_0
}

func mars_r(t float64) float64{
   var mars_r_1 float64 = 0.0

   mars_r_1 += (math.Pow(t,0)) * 1 *      0.01107433345 * math.Cos( 2.03250524857 +     3340.61242669980*t) - (math.Pow(t,1)) *      0.01107433345 *     3340.61242669980 * math.Sin( 2.03250524857 +     3340.61242669980*t)

   var mars_r_0 float64 = 0.0

   mars_r_0 += -1 *      0.14184953160 *     3340.61242669980 * math.Sin( 3.47971283528 +     3340.61242669980*t)
   mars_r_0 += -1 *      1.53033488271 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return mars_r_1+mars_r_0
}

func mars_b(t float64) float64{
   var mars_b_0 float64 = 0.0

   mars_b_0 += -1 *      0.03197134986 *     3340.61242669980 * math.Sin( 3.76832042431 +     3340.61242669980*t)
   return mars_b_0
}

func mars_l(t float64) float64{
   var mars_l_1 float64 = 0.0

   mars_l_1 += (math.Pow(t,0)) * 1 *      0.01457554523 * math.Cos( 3.60433733236 +     3340.61242669980*t) - (math.Pow(t,1)) *      0.01457554523 *     3340.61242669980 * math.Sin( 3.60433733236 +     3340.61242669980*t)
   mars_l_1 += (math.Pow(t,0)) * 1 *   3340.61242700512 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *   3340.61242700512 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var mars_l_0 float64 = 0.0

   mars_l_0 += -1 *      0.01108216816 *     6681.22485339960 * math.Sin( 5.40099836344 +     6681.22485339960*t)
   mars_l_0 += -1 *      0.18656368093 *     3340.61242669980 * math.Sin( 5.05037100270 +     3340.61242669980*t)
   mars_l_0 += -1 *      6.20347711581 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return mars_l_1+mars_l_0
}

func jupiter_r(t float64) float64{
   var jupiter_r_1 float64 = 0.0

   jupiter_r_1 += (math.Pow(t,0)) * 1 *      0.01271801520 * math.Cos( 2.64937512894 +      529.69096509460*t) - (math.Pow(t,1)) *      0.01271801520 *      529.69096509460 * math.Sin( 2.64937512894 +      529.69096509460*t)

   var jupiter_r_0 float64 = 0.0

   jupiter_r_0 += -1 *      0.25209327119 *      529.69096509460 * math.Sin( 3.49108639871 +      529.69096509460*t)
   jupiter_r_0 += -1 *      5.20887429326 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return jupiter_r_1+jupiter_r_0
}

func jupiter_b(t float64) float64{
   var jupiter_b_0 float64 = 0.0

   jupiter_b_0 += -1 *      0.02268615702 *      529.69096509460 * math.Sin( 3.55852606721 +      529.69096509460*t)
   return jupiter_b_0
}

func jupiter_l(t float64) float64{
   var jupiter_l_1 float64 = 0.0

   jupiter_l_1 += (math.Pow(t,0)) * 1 *    529.69096508814 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *    529.69096508814 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var jupiter_l_0 float64 = 0.0

   jupiter_l_0 += -1 *      0.09695898719 *      529.69096509460 * math.Sin( 5.06191793158 +      529.69096509460*t)
   jupiter_l_0 += -1 *      0.59954691494 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return jupiter_l_1+jupiter_l_0
}

func earth_r(t float64) float64{
   var earth_r_0 float64 = 0.0

   earth_r_0 += -1 *      0.01670699632 *     6283.07584999140 * math.Sin( 3.09846350258 +     6283.07584999140*t)
   earth_r_0 += -1 *      1.00013988784 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return earth_r_0
}

func earth_b(t float64) float64{
   return 0
}

func earth_l(t float64) float64{
   var earth_l_1 float64 = 0.0

   earth_l_1 += (math.Pow(t,0)) * 1 *   6283.07584999140 * math.Cos( 0.00000000000 +        0.00000000000*t) - (math.Pow(t,1)) *   6283.07584999140 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)

   var earth_l_0 float64 = 0.0

   earth_l_0 += -1 *      0.03341656453 *     6283.07584999140 * math.Sin( 4.66925680415 +     6283.07584999140*t)
   earth_l_0 += -1 *      1.75347045673 *        0.00000000000 * math.Sin( 0.00000000000 +        0.00000000000*t)
   return earth_l_1+earth_l_0
}

