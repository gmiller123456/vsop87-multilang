#VSOP87-Multilang http://www.celestialprogramming.com/
#Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

class Vsop87d_pico
   def self.getMercury(t)
      temp=Array.new(3)
      temp[0]=mercury_l(t)
      temp[1]=mercury_b(t)
      temp[2]=mercury_r(t)

      return temp
   end

   def self.getVenus(t)
      temp=Array.new(3)
      temp[0]=venus_l(t)
      temp[1]=venus_b(t)
      temp[2]=venus_r(t)

      return temp
   end

   def self.getEarth(t)
      temp=Array.new(3)
      temp[0]=earth_l(t)
      temp[1]=earth_b(t)
      temp[2]=earth_r(t)

      return temp
   end

   def self.getMars(t)
      temp=Array.new(3)
      temp[0]=mars_l(t)
      temp[1]=mars_b(t)
      temp[2]=mars_r(t)

      return temp
   end

   def self.getJupiter(t)
      temp=Array.new(3)
      temp[0]=jupiter_l(t)
      temp[1]=jupiter_b(t)
      temp[2]=jupiter_r(t)

      return temp
   end

   def self.getSaturn(t)
      temp=Array.new(3)
      temp[0]=saturn_l(t)
      temp[1]=saturn_b(t)
      temp[2]=saturn_r(t)

      return temp
   end

   def self.getUranus(t)
      temp=Array.new(3)
      temp[0]=uranus_l(t)
      temp[1]=uranus_b(t)
      temp[2]=uranus_r(t)

      return temp
   end

   def self.getNeptune(t)
      temp=Array.new(3)
      temp[0]=neptune_l(t)
      temp[1]=neptune_b(t)
      temp[2]=neptune_r(t)

      return temp
   end

   def self.venus_r(t)
      venus_r_0 = 0.0

      venus_r_0 += 0.72334820905 * Math.cos(0.00000000000 + 0.00000000000*t)
      return venus_r_0
   end

   def self.venus_b(t)
      venus_b_0 = 0.0

      venus_b_0 += 0.05923638472 * Math.cos(0.26702775813 + 10213.28554621100*t)
      return venus_b_0
   end

   def self.venus_l(t)
      venus_l_1 = 0.0

      venus_l_1 += 10213.52943052898 * Math.cos(0.00000000000 + 0.00000000000*t)
      venus_l_1=venus_l_1*t

      venus_l_0 = 0.0

      venus_l_0 += 0.01353968419 * Math.cos(5.59313319619 + 10213.28554621100*t)
      venus_l_0 += 3.17614666774 * Math.cos(0.00000000000 + 0.00000000000*t)
      return venus_l_1+venus_l_0
   end

   def self.uranus_r(t)
      uranus_r_1 = 0.0

      uranus_r_1 += 0.01479896370 * Math.cos(3.67205705317 + 74.78159856730*t)
      uranus_r_1=uranus_r_1*t

      uranus_r_0 = 0.0

      uranus_r_0 += 0.02055653495 * Math.cos(1.78295170028 + 149.56319713460*t)
      uranus_r_0 += 0.03440835545 * Math.cos(0.32836098991 + 73.29712585900*t)
      uranus_r_0 += 0.88784984055 * Math.cos(5.60377526994 + 74.78159856730*t)
      uranus_r_0 += 19.21264847881 * Math.cos(0.00000000000 + 0.00000000000*t)
      return uranus_r_1+uranus_r_0
   end

   def self.uranus_b(t)
      uranus_b_0 = 0.0

      uranus_b_0 += 0.01346277639 * Math.cos(2.61877810545 + 74.78159856730*t)
      return uranus_b_0
   end

   def self.uranus_l(t)
      uranus_l_1 = 0.0

      uranus_l_1 += 75.02543121646 * Math.cos(0.00000000000 + 0.00000000000*t)
      uranus_l_1=uranus_l_1*t

      uranus_l_0 = 0.0

      uranus_l_0 += 0.01504247826 * Math.cos(3.62719262195 + 1.48447270830*t)
      uranus_l_0 += 0.09260408252 * Math.cos(0.89106421530 + 74.78159856730*t)
      uranus_l_0 += 5.48129294299 * Math.cos(0.00000000000 + 0.00000000000*t)
      return uranus_l_1+uranus_l_0
   end

   def self.saturn_r(t)
      saturn_r_1 = 0.0

      saturn_r_1 += 0.06182981282 * Math.cos(0.25843515034 + 213.29909543800*t)
      saturn_r_1=saturn_r_1*t

      saturn_r_0 = 0.0

      saturn_r_0 += 0.01464663959 * Math.cos(1.64763045468 + 426.59819087600*t)
      saturn_r_0 += 0.01873679934 * Math.cos(5.23549605091 + 206.18554843720*t)
      saturn_r_0 += 0.52921382465 * Math.cos(2.39226219733 + 213.29909543800*t)
      saturn_r_0 += 9.55758135801 * Math.cos(0.00000000000 + 0.00000000000*t)
      return saturn_r_1+saturn_r_0
   end

   def self.saturn_b(t)
      saturn_b_0 = 0.0

      saturn_b_0 += 0.04330678040 * Math.cos(3.60284428399 + 213.29909543800*t)
      return saturn_b_0
   end

   def self.saturn_l(t)
      saturn_l_1 = 0.0

      saturn_l_1 += 0.01296855005 * Math.cos(1.82820544701 + 213.29909543800*t)
      saturn_l_1 += 213.54295595986 * Math.cos(0.00000000000 + 0.00000000000*t)
      saturn_l_1=saturn_l_1*t

      saturn_l_0 = 0.0

      saturn_l_0 += 0.01414150958 * Math.cos(4.58581515873 + 7.11354700080*t)
      saturn_l_0 += 0.11107659780 * Math.cos(3.96205090194 + 213.29909543800*t)
      saturn_l_0 += 0.87401354029 * Math.cos(0.00000000000 + 0.00000000000*t)
      return saturn_l_1+saturn_l_0
   end

   def self.neptune_r(t)
      neptune_r_0 = 0.0

      neptune_r_0 += 0.01691764281 * Math.cos(3.25186138896 + 36.64856292950*t)
      neptune_r_0 += 0.27062259490 * Math.cos(1.32999458930 + 38.13303563780*t)
      neptune_r_0 += 30.07013206102 * Math.cos(0.00000000000 + 0.00000000000*t)
      return neptune_r_0
   end

   def self.neptune_b(t)
      neptune_b_0 = 0.0

      neptune_b_0 += 0.03088622933 * Math.cos(1.44104372626 + 38.13303563780*t)
      return neptune_b_0
   end

   def self.neptune_l(t)
      neptune_l_1 = 0.0

      neptune_l_1 += 38.37687716731 * Math.cos(0.00000000000 + 0.00000000000*t)
      neptune_l_1=neptune_l_1*t

      neptune_l_0 = 0.0

      neptune_l_0 += 0.01019727662 * Math.cos(0.48580923660 + 1.48447270830*t)
      neptune_l_0 += 0.01798475509 * Math.cos(2.90101273050 + 38.13303563780*t)
      neptune_l_0 += 5.31188633047 * Math.cos(0.00000000000 + 0.00000000000*t)
      return neptune_l_1+neptune_l_0
   end

   def self.mercury_r(t)
      mercury_r_0 = 0.0

      mercury_r_0 += 0.07834131817 * Math.cos(6.19233722599 + 26087.90314157420*t)
      mercury_r_0 += 0.39528271652 * Math.cos(0.00000000000 + 0.00000000000*t)
      return mercury_r_0
   end

   def self.mercury_b(t)
      mercury_b_0 = 0.0

      mercury_b_0 += 0.01222839532 * Math.cos(3.14159265359 + 0.00000000000*t)
      mercury_b_0 += 0.02388076996 * Math.cos(5.03738959685 + 52175.80628314840*t)
      mercury_b_0 += 0.11737528962 * Math.cos(1.98357498767 + 26087.90314157420*t)
      return mercury_b_0
   end

   def self.mercury_l(t)
      mercury_l_1 = 0.0

      mercury_l_1 += 0.01126007832 * Math.cos(6.21703970996 + 26087.90314157420*t)
      mercury_l_1 += 26088.14706222746 * Math.cos(0.00000000000 + 0.00000000000*t)
      mercury_l_1=mercury_l_1*t

      mercury_l_0 = 0.0

      mercury_l_0 += 0.05046294199 * Math.cos(4.47785489540 + 52175.80628314840*t)
      mercury_l_0 += 0.40989414976 * Math.cos(1.48302034194 + 26087.90314157420*t)
      mercury_l_0 += 4.40250710144 * Math.cos(0.00000000000 + 0.00000000000*t)
      return mercury_l_1+mercury_l_0
   end

   def self.mars_r(t)
      mars_r_1 = 0.0

      mars_r_1 += 0.01107433340 * Math.cos(2.03250524950 + 3340.61242669980*t)
      mars_r_1=mars_r_1*t

      mars_r_0 = 0.0

      mars_r_0 += 0.14184953153 * Math.cos(3.47971283519 + 3340.61242669980*t)
      mars_r_0 += 1.53033488276 * Math.cos(0.00000000000 + 0.00000000000*t)
      return mars_r_1+mars_r_0
   end

   def self.mars_b(t)
      mars_b_0 = 0.0

      mars_b_0 += 0.03197134986 * Math.cos(3.76832042432 + 3340.61242669980*t)
      return mars_b_0
   end

   def self.mars_l(t)
      mars_l_1 = 0.0

      mars_l_1 += 0.01458227051 * Math.cos(3.60426053609 + 3340.61242669980*t)
      mars_l_1 += 3340.85627474342 * Math.cos(0.00000000000 + 0.00000000000*t)
      mars_l_1=mars_l_1*t

      mars_l_0 = 0.0

      mars_l_0 += 0.01108216792 * Math.cos(5.40099836958 + 6681.22485339960*t)
      mars_l_0 += 0.18656368100 * Math.cos(5.05037100303 + 3340.61242669980*t)
      mars_l_0 += 6.20347711583 * Math.cos(0.00000000000 + 0.00000000000*t)
      return mars_l_1+mars_l_0
   end

   def self.jupiter_r(t)
      jupiter_r_1 = 0.0

      jupiter_r_1 += 0.01271801596 * Math.cos(2.64937511122 + 529.69096509460*t)
      jupiter_r_1=jupiter_r_1*t

      jupiter_r_0 = 0.0

      jupiter_r_0 += 0.25209327020 * Math.cos(3.49108640015 + 529.69096509460*t)
      jupiter_r_0 += 5.20887429471 * Math.cos(0.00000000000 + 0.00000000000*t)
      return jupiter_r_1+jupiter_r_0
   end

   def self.jupiter_b(t)
      jupiter_b_0 = 0.0

      jupiter_b_0 += 0.02268615703 * Math.cos(3.55852606718 + 529.69096509460*t)
      return jupiter_b_0
   end

   def self.jupiter_l(t)
      jupiter_l_1 = 0.0

      jupiter_l_1 += 529.93480757497 * Math.cos(0.00000000000 + 0.00000000000*t)
      jupiter_l_1=jupiter_l_1*t

      jupiter_l_0 = 0.0

      jupiter_l_0 += 0.09695898711 * Math.cos(5.06191793105 + 529.69096509460*t)
      jupiter_l_0 += 0.59954691495 * Math.cos(0.00000000000 + 0.00000000000*t)
      return jupiter_l_1+jupiter_l_0
   end

   def self.earth_r(t)
      earth_r_0 = 0.0

      earth_r_0 += 0.01670699626 * Math.cos(3.09846350771 + 6283.07584999140*t)
      earth_r_0 += 1.00013988799 * Math.cos(0.00000000000 + 0.00000000000*t)
      return earth_r_0
   end

   def self.earth_b(t)
      return 0
   end

   def self.earth_l(t)
      earth_l_1 = 0.0

      earth_l_1 += 6283.31966747491 * Math.cos(0.00000000000 + 0.00000000000*t)
      earth_l_1=earth_l_1*t

      earth_l_0 = 0.0

      earth_l_0 += 0.03341656456 * Math.cos(4.66925680417 + 6283.07584999140*t)
      earth_l_0 += 1.75347045673 * Math.cos(0.00000000000 + 0.00000000000*t)
      return earth_l_1+earth_l_0
   end

end
