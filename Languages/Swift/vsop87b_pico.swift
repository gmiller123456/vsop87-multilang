//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

import Foundation

class vsop87b_pico{
   public static func getMercury(t: Double) -> Array<Double> {
      var temp=[0.0, 0.0, 0.0]
      temp[0]=mercury_l(t:t)
      temp[1]=mercury_b(t:t)
      temp[2]=mercury_r(t:t)

      return temp
   }

   public static func getVenus(t: Double) -> Array<Double> {
      var temp=[0.0, 0.0, 0.0]
      temp[0]=venus_l(t:t)
      temp[1]=venus_b(t:t)
      temp[2]=venus_r(t:t)

      return temp
   }

   public static func getEarth(t: Double) -> Array<Double> {
      var temp=[0.0, 0.0, 0.0]
      temp[0]=earth_l(t:t)
      temp[1]=earth_b(t:t)
      temp[2]=earth_r(t:t)

      return temp
   }

   public static func getMars(t: Double) -> Array<Double> {
      var temp=[0.0, 0.0, 0.0]
      temp[0]=mars_l(t:t)
      temp[1]=mars_b(t:t)
      temp[2]=mars_r(t:t)

      return temp
   }

   public static func getJupiter(t: Double) -> Array<Double> {
      var temp=[0.0, 0.0, 0.0]
      temp[0]=jupiter_l(t:t)
      temp[1]=jupiter_b(t:t)
      temp[2]=jupiter_r(t:t)

      return temp
   }

   public static func getSaturn(t: Double) -> Array<Double> {
      var temp=[0.0, 0.0, 0.0]
      temp[0]=saturn_l(t:t)
      temp[1]=saturn_b(t:t)
      temp[2]=saturn_r(t:t)

      return temp
   }

   public static func getUranus(t: Double) -> Array<Double> {
      var temp=[0.0, 0.0, 0.0]
      temp[0]=uranus_l(t:t)
      temp[1]=uranus_b(t:t)
      temp[2]=uranus_r(t:t)

      return temp
   }

   public static func getNeptune(t: Double) -> Array<Double> {
      var temp=[0.0, 0.0, 0.0]
      temp[0]=neptune_l(t:t)
      temp[1]=neptune_b(t:t)
      temp[2]=neptune_r(t:t)

      return temp
   }

   static func venus_r(t:Double)->Double{
      var venus_r_0: Double = 0.0

      venus_r_0 += 0.72334820891 * cos(0.00000000000 + 0.00000000000*t)
      return venus_r_0
   }

   static func venus_b(t:Double)->Double{
      var venus_b_0: Double = 0.0

      venus_b_0 += 0.05923638472 * cos(0.26702775812 + 10213.28554621100*t)
      return venus_b_0
   }

   static func venus_l(t:Double)->Double{
      var venus_l_1: Double = 0.0

      venus_l_1 += 10213.28554621638 * cos(0.00000000000 + 0.00000000000*t)
      venus_l_1=venus_l_1*t

      var venus_l_0: Double = 0.0

      venus_l_0 += 0.01353968419 * cos(5.59313319619 + 10213.28554621100*t)
      venus_l_0 += 3.17614666774 * cos(0.00000000000 + 0.00000000000*t)
      return venus_l_1+venus_l_0
   }

   static func uranus_r(t:Double)->Double{
      var uranus_r_1: Double = 0.0

      uranus_r_1 += 0.01479896629 * cos(3.67205697578 + 74.78159856730*t)
      uranus_r_1=uranus_r_1*t

      var uranus_r_0: Double = 0.0

      uranus_r_0 += 0.02055653860 * cos(1.78295159330 + 149.56319713460*t)
      uranus_r_0 += 0.03440836062 * cos(0.32836099706 + 73.29712585900*t)
      uranus_r_0 += 0.88784984413 * cos(5.60377527014 + 74.78159856730*t)
      uranus_r_0 += 19.21264847206 * cos(0.00000000000 + 0.00000000000*t)
      return uranus_r_1+uranus_r_0
   }

   static func uranus_b(t:Double)->Double{
      var uranus_b_0: Double = 0.0

      uranus_b_0 += 0.01346277648 * cos(2.61877810547 + 74.78159856730*t)
      return uranus_b_0
   }

   static func uranus_l(t:Double)->Double{
      var uranus_l_1: Double = 0.0

      uranus_l_1 += 74.78159860910 * cos(0.00000000000 + 0.00000000000*t)
      uranus_l_1=uranus_l_1*t

      var uranus_l_0: Double = 0.0

      uranus_l_0 += 0.01504247898 * cos(3.62719260920 + 1.48447270830*t)
      uranus_l_0 += 0.09260408234 * cos(0.89106421507 + 74.78159856730*t)
      uranus_l_0 += 5.48129294297 * cos(0.00000000000 + 0.00000000000*t)
      return uranus_l_1+uranus_l_0
   }

   static func saturn_r(t:Double)->Double{
      var saturn_r_1: Double = 0.0

      saturn_r_1 += 0.06182981340 * cos(0.25843511480 + 213.29909543800*t)
      saturn_r_1=saturn_r_1*t

      var saturn_r_0: Double = 0.0

      saturn_r_0 += 0.01464663929 * cos(1.64763042902 + 426.59819087600*t)
      saturn_r_0 += 0.01873679867 * cos(5.23549604660 + 206.18554843720*t)
      saturn_r_0 += 0.52921382865 * cos(2.39226219573 + 213.29909543800*t)
      saturn_r_0 += 9.55758135486 * cos(0.00000000000 + 0.00000000000*t)
      return saturn_r_1+saturn_r_0
   }

   static func saturn_b(t:Double)->Double{
      var saturn_b_0: Double = 0.0

      saturn_b_0 += 0.04330678039 * cos(3.60284428399 + 213.29909543800*t)
      return saturn_b_0
   }

   static func saturn_l(t:Double)->Double{
      var saturn_l_1: Double = 0.0

      saturn_l_1 += 0.01297370862 * cos(1.82834923978 + 213.29909543800*t)
      saturn_l_1 += 213.29909521690 * cos(0.00000000000 + 0.00000000000*t)
      saturn_l_1=saturn_l_1*t

      var saturn_l_0: Double = 0.0

      saturn_l_0 += 0.01414150957 * cos(4.58581516874 + 7.11354700080*t)
      saturn_l_0 += 0.11107659762 * cos(3.96205090159 + 213.29909543800*t)
      saturn_l_0 += 0.87401354025 * cos(0.00000000000 + 0.00000000000*t)
      return saturn_l_1+saturn_l_0
   }

   static func neptune_r(t:Double)->Double{
      var neptune_r_0: Double = 0.0

      neptune_r_0 += 0.01691764014 * cos(3.25186135653 + 36.64856292950*t)
      neptune_r_0 += 0.27062259632 * cos(1.32999459377 + 38.13303563780*t)
      neptune_r_0 += 30.07013205828 * cos(0.00000000000 + 0.00000000000*t)
      return neptune_r_0
   }

   static func neptune_b(t:Double)->Double{
      var neptune_b_0: Double = 0.0

      neptune_b_0 += 0.03088622933 * cos(1.44104372644 + 38.13303563780*t)
      return neptune_b_0
   }

   static func neptune_l(t:Double)->Double{
      var neptune_l_1: Double = 0.0

      neptune_l_1 += 38.13303563957 * cos(0.00000000000 + 0.00000000000*t)
      neptune_l_1=neptune_l_1*t

      var neptune_l_0: Double = 0.0

      neptune_l_0 += 0.01019727652 * cos(0.48580922867 + 1.48447270830*t)
      neptune_l_0 += 0.01798475530 * cos(2.90101273890 + 38.13303563780*t)
      neptune_l_0 += 5.31188633046 * cos(0.00000000000 + 0.00000000000*t)
      return neptune_l_1+neptune_l_0
   }

   static func mercury_r(t:Double)->Double{
      var mercury_r_0: Double = 0.0

      mercury_r_0 += 0.07834131818 * cos(6.19233722598 + 26087.90314157420*t)
      mercury_r_0 += 0.39528271651 * cos(0.00000000000 + 0.00000000000*t)
      return mercury_r_0
   }

   static func mercury_b(t:Double)->Double{
      var mercury_b_0: Double = 0.0

      mercury_b_0 += 0.01222839532 * cos(3.14159265359 + 0.00000000000*t)
      mercury_b_0 += 0.02388076996 * cos(5.03738959686 + 52175.80628314840*t)
      mercury_b_0 += 0.11737528961 * cos(1.98357498767 + 26087.90314157420*t)
      return mercury_b_0
   }

   static func mercury_l(t:Double)->Double{
      var mercury_l_1: Double = 0.0

      mercury_l_1 += 0.01131199811 * cos(6.21874197797 + 26087.90314157420*t)
      mercury_l_1 += 26087.90313685529 * cos(0.00000000000 + 0.00000000000*t)
      mercury_l_1=mercury_l_1*t

      var mercury_l_0: Double = 0.0

      mercury_l_0 += 0.05046294200 * cos(4.47785489551 + 52175.80628314840*t)
      mercury_l_0 += 0.40989414977 * cos(1.48302034195 + 26087.90314157420*t)
      mercury_l_0 += 4.40250710144 * cos(0.00000000000 + 0.00000000000*t)
      return mercury_l_1+mercury_l_0
   }

   static func mars_r(t:Double)->Double{
      var mars_r_1: Double = 0.0

      mars_r_1 += 0.01107433345 * cos(2.03250524857 + 3340.61242669980*t)
      mars_r_1=mars_r_1*t

      var mars_r_0: Double = 0.0

      mars_r_0 += 0.14184953160 * cos(3.47971283528 + 3340.61242669980*t)
      mars_r_0 += 1.53033488271 * cos(0.00000000000 + 0.00000000000*t)
      return mars_r_1+mars_r_0
   }

   static func mars_b(t:Double)->Double{
      var mars_b_0: Double = 0.0

      mars_b_0 += 0.03197134986 * cos(3.76832042431 + 3340.61242669980*t)
      return mars_b_0
   }

   static func mars_l(t:Double)->Double{
      var mars_l_1: Double = 0.0

      mars_l_1 += 0.01457554523 * cos(3.60433733236 + 3340.61242669980*t)
      mars_l_1 += 3340.61242700512 * cos(0.00000000000 + 0.00000000000*t)
      mars_l_1=mars_l_1*t

      var mars_l_0: Double = 0.0

      mars_l_0 += 0.01108216816 * cos(5.40099836344 + 6681.22485339960*t)
      mars_l_0 += 0.18656368093 * cos(5.05037100270 + 3340.61242669980*t)
      mars_l_0 += 6.20347711581 * cos(0.00000000000 + 0.00000000000*t)
      return mars_l_1+mars_l_0
   }

   static func jupiter_r(t:Double)->Double{
      var jupiter_r_1: Double = 0.0

      jupiter_r_1 += 0.01271801520 * cos(2.64937512894 + 529.69096509460*t)
      jupiter_r_1=jupiter_r_1*t

      var jupiter_r_0: Double = 0.0

      jupiter_r_0 += 0.25209327119 * cos(3.49108639871 + 529.69096509460*t)
      jupiter_r_0 += 5.20887429326 * cos(0.00000000000 + 0.00000000000*t)
      return jupiter_r_1+jupiter_r_0
   }

   static func jupiter_b(t:Double)->Double{
      var jupiter_b_0: Double = 0.0

      jupiter_b_0 += 0.02268615702 * cos(3.55852606721 + 529.69096509460*t)
      return jupiter_b_0
   }

   static func jupiter_l(t:Double)->Double{
      var jupiter_l_1: Double = 0.0

      jupiter_l_1 += 529.69096508814 * cos(0.00000000000 + 0.00000000000*t)
      jupiter_l_1=jupiter_l_1*t

      var jupiter_l_0: Double = 0.0

      jupiter_l_0 += 0.09695898719 * cos(5.06191793158 + 529.69096509460*t)
      jupiter_l_0 += 0.59954691494 * cos(0.00000000000 + 0.00000000000*t)
      return jupiter_l_1+jupiter_l_0
   }

   static func earth_r(t:Double)->Double{
      var earth_r_0: Double = 0.0

      earth_r_0 += 0.01670699632 * cos(3.09846350258 + 6283.07584999140*t)
      earth_r_0 += 1.00013988784 * cos(0.00000000000 + 0.00000000000*t)
      return earth_r_0
   }

   static func earth_b(t:Double)->Double{
      return 0
   }

   static func earth_l(t:Double)->Double{
      var earth_l_1: Double = 0.0

      earth_l_1 += 6283.07584999140 * cos(0.00000000000 + 0.00000000000*t)
      earth_l_1=earth_l_1*t

      var earth_l_0: Double = 0.0

      earth_l_0 += 0.03341656453 * cos(4.66925680415 + 6283.07584999140*t)
      earth_l_0 += 1.75347045673 * cos(0.00000000000 + 0.00000000000*t)
      return earth_l_1+earth_l_0
   }

}
