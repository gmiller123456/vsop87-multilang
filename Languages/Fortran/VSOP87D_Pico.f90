!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87D_Pico
    implicit none

    contains
    subroutine VSOP87D_Pico_getEarth(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_b(t)
        result(2)=earth_l(t)
        result(3)=earth_r(t)
    end subroutine

    subroutine VSOP87D_Pico_getJupiter(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_b(t)
        result(2)=jupiter_l(t)
        result(3)=jupiter_r(t)
    end subroutine

    subroutine VSOP87D_Pico_getMars(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_b(t)
        result(2)=mars_l(t)
        result(3)=mars_r(t)
    end subroutine

    subroutine VSOP87D_Pico_getMercury(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_b(t)
        result(2)=mercury_l(t)
        result(3)=mercury_r(t)
    end subroutine

    subroutine VSOP87D_Pico_getNeptune(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_b(t)
        result(2)=neptune_l(t)
        result(3)=neptune_r(t)
    end subroutine

    subroutine VSOP87D_Pico_getSaturn(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_b(t)
        result(2)=saturn_l(t)
        result(3)=saturn_r(t)
    end subroutine

    subroutine VSOP87D_Pico_getUranus(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_b(t)
        result(2)=uranus_l(t)
        result(3)=uranus_r(t)
    end subroutine

    subroutine VSOP87D_Pico_getVenus(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=venus_b(t)
        result(2)=venus_l(t)
        result(3)=venus_r(t)
    end subroutine

    function earth_b(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: earth_b_0
        double precision :: earth_b_1
        double precision :: earth_b_2
        double precision :: earth_b_3
        double precision :: earth_b_4
        double precision :: earth_b_5

        earth_b_0 = 0.0
        earth_b_1 = 0.0
        earth_b_2 = 0.0
        earth_b_3 = 0.0
        earth_b_4 = 0.0
        earth_b_5 = 0.0

        r = 0
    end function

    function earth_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: earth_l_0
        double precision :: earth_l_1
        double precision :: earth_l_2
        double precision :: earth_l_3
        double precision :: earth_l_4
        double precision :: earth_l_5

        earth_l_0 = 0.0
        earth_l_1 = 0.0
        earth_l_2 = 0.0
        earth_l_3 = 0.0
        earth_l_4 = 0.0
        earth_l_5 = 0.0

        earth_l_0 = earth_l_0 + 0.03341656456d0*cos(4.66925680417d0 + 6283.0758499914d0 * t)
        earth_l_0 = earth_l_0 + 1.75347045673d0*cos(0.0d0 + 0.0d0 * t)

        earth_l_1 = earth_l_1 + 6283.31966747491d0*cos(0.0d0 + 0.0d0 * t)
        earth_l_1=earth_l_1*t;

        r = earth_l_1+earth_l_0
    end function

    function earth_r(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: earth_r_0
        double precision :: earth_r_1
        double precision :: earth_r_2
        double precision :: earth_r_3
        double precision :: earth_r_4
        double precision :: earth_r_5

        earth_r_0 = 0.0
        earth_r_1 = 0.0
        earth_r_2 = 0.0
        earth_r_3 = 0.0
        earth_r_4 = 0.0
        earth_r_5 = 0.0

        earth_r_0 = earth_r_0 + 0.01670699626d0*cos(3.09846350771d0 + 6283.0758499914d0 * t)
        earth_r_0 = earth_r_0 + 1.00013988799d0*cos(0.0d0 + 0.0d0 * t)

        r = earth_r_0
    end function

    function jupiter_b(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: jupiter_b_0
        double precision :: jupiter_b_1
        double precision :: jupiter_b_2
        double precision :: jupiter_b_3
        double precision :: jupiter_b_4
        double precision :: jupiter_b_5

        jupiter_b_0 = 0.0
        jupiter_b_1 = 0.0
        jupiter_b_2 = 0.0
        jupiter_b_3 = 0.0
        jupiter_b_4 = 0.0
        jupiter_b_5 = 0.0

        jupiter_b_0 = jupiter_b_0 + 0.02268615703d0*cos(3.55852606718d0 + 529.6909650946d0 * t)

        r = jupiter_b_0
    end function

    function jupiter_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: jupiter_l_0
        double precision :: jupiter_l_1
        double precision :: jupiter_l_2
        double precision :: jupiter_l_3
        double precision :: jupiter_l_4
        double precision :: jupiter_l_5

        jupiter_l_0 = 0.0
        jupiter_l_1 = 0.0
        jupiter_l_2 = 0.0
        jupiter_l_3 = 0.0
        jupiter_l_4 = 0.0
        jupiter_l_5 = 0.0

        jupiter_l_0 = jupiter_l_0 + 0.09695898711d0*cos(5.06191793105d0 + 529.6909650946d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.59954691495d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_l_1 = jupiter_l_1 + 529.93480757497d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_l_1=jupiter_l_1*t;

        r = jupiter_l_1+jupiter_l_0
    end function

    function jupiter_r(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: jupiter_r_0
        double precision :: jupiter_r_1
        double precision :: jupiter_r_2
        double precision :: jupiter_r_3
        double precision :: jupiter_r_4
        double precision :: jupiter_r_5

        jupiter_r_0 = 0.0
        jupiter_r_1 = 0.0
        jupiter_r_2 = 0.0
        jupiter_r_3 = 0.0
        jupiter_r_4 = 0.0
        jupiter_r_5 = 0.0

        jupiter_r_0 = jupiter_r_0 + 0.2520932702d0*cos(3.49108640015d0 + 529.6909650946d0 * t)
        jupiter_r_0 = jupiter_r_0 + 5.20887429471d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_r_1 = jupiter_r_1 + 0.01271801596d0*cos(2.64937511122d0 + 529.6909650946d0 * t)
        jupiter_r_1=jupiter_r_1*t;

        r = jupiter_r_1+jupiter_r_0
    end function

    function mars_b(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mars_b_0
        double precision :: mars_b_1
        double precision :: mars_b_2
        double precision :: mars_b_3
        double precision :: mars_b_4
        double precision :: mars_b_5

        mars_b_0 = 0.0
        mars_b_1 = 0.0
        mars_b_2 = 0.0
        mars_b_3 = 0.0
        mars_b_4 = 0.0
        mars_b_5 = 0.0

        mars_b_0 = mars_b_0 + 0.03197134986d0*cos(3.76832042432d0 + 3340.6124266998d0 * t)

        r = mars_b_0
    end function

    function mars_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mars_l_0
        double precision :: mars_l_1
        double precision :: mars_l_2
        double precision :: mars_l_3
        double precision :: mars_l_4
        double precision :: mars_l_5

        mars_l_0 = 0.0
        mars_l_1 = 0.0
        mars_l_2 = 0.0
        mars_l_3 = 0.0
        mars_l_4 = 0.0
        mars_l_5 = 0.0

        mars_l_0 = mars_l_0 + 0.01108216792d0*cos(5.40099836958d0 + 6681.2248533996d0 * t)
        mars_l_0 = mars_l_0 + 0.186563681d0*cos(5.05037100303d0 + 3340.6124266998d0 * t)
        mars_l_0 = mars_l_0 + 6.20347711583d0*cos(0.0d0 + 0.0d0 * t)

        mars_l_1 = mars_l_1 + 0.01458227051d0*cos(3.60426053609d0 + 3340.6124266998d0 * t)
        mars_l_1 = mars_l_1 + 3340.85627474342d0*cos(0.0d0 + 0.0d0 * t)
        mars_l_1=mars_l_1*t;

        r = mars_l_1+mars_l_0
    end function

    function mars_r(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mars_r_0
        double precision :: mars_r_1
        double precision :: mars_r_2
        double precision :: mars_r_3
        double precision :: mars_r_4
        double precision :: mars_r_5

        mars_r_0 = 0.0
        mars_r_1 = 0.0
        mars_r_2 = 0.0
        mars_r_3 = 0.0
        mars_r_4 = 0.0
        mars_r_5 = 0.0

        mars_r_0 = mars_r_0 + 0.14184953153d0*cos(3.47971283519d0 + 3340.6124266998d0 * t)
        mars_r_0 = mars_r_0 + 1.53033488276d0*cos(0.0d0 + 0.0d0 * t)

        mars_r_1 = mars_r_1 + 0.0110743334d0*cos(2.0325052495d0 + 3340.6124266998d0 * t)
        mars_r_1=mars_r_1*t;

        r = mars_r_1+mars_r_0
    end function

    function mercury_b(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mercury_b_0
        double precision :: mercury_b_1
        double precision :: mercury_b_2
        double precision :: mercury_b_3
        double precision :: mercury_b_4
        double precision :: mercury_b_5

        mercury_b_0 = 0.0
        mercury_b_1 = 0.0
        mercury_b_2 = 0.0
        mercury_b_3 = 0.0
        mercury_b_4 = 0.0
        mercury_b_5 = 0.0

        mercury_b_0 = mercury_b_0 + 0.01222839532d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_b_0 = mercury_b_0 + 0.02388076996d0*cos(5.03738959685d0 + 52175.8062831484d0 * t)
        mercury_b_0 = mercury_b_0 + 0.11737528962d0*cos(1.98357498767d0 + 26087.9031415742d0 * t)

        r = mercury_b_0
    end function

    function mercury_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mercury_l_0
        double precision :: mercury_l_1
        double precision :: mercury_l_2
        double precision :: mercury_l_3
        double precision :: mercury_l_4
        double precision :: mercury_l_5

        mercury_l_0 = 0.0
        mercury_l_1 = 0.0
        mercury_l_2 = 0.0
        mercury_l_3 = 0.0
        mercury_l_4 = 0.0
        mercury_l_5 = 0.0

        mercury_l_0 = mercury_l_0 + 0.05046294199d0*cos(4.4778548954d0 + 52175.8062831484d0 * t)
        mercury_l_0 = mercury_l_0 + 0.40989414976d0*cos(1.48302034194d0 + 26087.9031415742d0 * t)
        mercury_l_0 = mercury_l_0 + 4.40250710144d0*cos(0.0d0 + 0.0d0 * t)

        mercury_l_1 = mercury_l_1 + 0.01126007832d0*cos(6.21703970996d0 + 26087.9031415742d0 * t)
        mercury_l_1 = mercury_l_1 + 26088.14706222746d0*cos(0.0d0 + 0.0d0 * t)
        mercury_l_1=mercury_l_1*t;

        r = mercury_l_1+mercury_l_0
    end function

    function mercury_r(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mercury_r_0
        double precision :: mercury_r_1
        double precision :: mercury_r_2
        double precision :: mercury_r_3
        double precision :: mercury_r_4
        double precision :: mercury_r_5

        mercury_r_0 = 0.0
        mercury_r_1 = 0.0
        mercury_r_2 = 0.0
        mercury_r_3 = 0.0
        mercury_r_4 = 0.0
        mercury_r_5 = 0.0

        mercury_r_0 = mercury_r_0 + 0.07834131817d0*cos(6.19233722599d0 + 26087.9031415742d0 * t)
        mercury_r_0 = mercury_r_0 + 0.39528271652d0*cos(0.0d0 + 0.0d0 * t)

        r = mercury_r_0
    end function

    function neptune_b(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: neptune_b_0
        double precision :: neptune_b_1
        double precision :: neptune_b_2
        double precision :: neptune_b_3
        double precision :: neptune_b_4
        double precision :: neptune_b_5

        neptune_b_0 = 0.0
        neptune_b_1 = 0.0
        neptune_b_2 = 0.0
        neptune_b_3 = 0.0
        neptune_b_4 = 0.0
        neptune_b_5 = 0.0

        neptune_b_0 = neptune_b_0 + 0.03088622933d0*cos(1.44104372626d0 + 38.1330356378d0 * t)

        r = neptune_b_0
    end function

    function neptune_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: neptune_l_0
        double precision :: neptune_l_1
        double precision :: neptune_l_2
        double precision :: neptune_l_3
        double precision :: neptune_l_4
        double precision :: neptune_l_5

        neptune_l_0 = 0.0
        neptune_l_1 = 0.0
        neptune_l_2 = 0.0
        neptune_l_3 = 0.0
        neptune_l_4 = 0.0
        neptune_l_5 = 0.0

        neptune_l_0 = neptune_l_0 + 0.01019727662d0*cos(0.4858092366d0 + 1.4844727083d0 * t)
        neptune_l_0 = neptune_l_0 + 0.01798475509d0*cos(2.9010127305d0 + 38.1330356378d0 * t)
        neptune_l_0 = neptune_l_0 + 5.31188633047d0*cos(0.0d0 + 0.0d0 * t)

        neptune_l_1 = neptune_l_1 + 38.37687716731d0*cos(0.0d0 + 0.0d0 * t)
        neptune_l_1=neptune_l_1*t;

        r = neptune_l_1+neptune_l_0
    end function

    function neptune_r(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: neptune_r_0
        double precision :: neptune_r_1
        double precision :: neptune_r_2
        double precision :: neptune_r_3
        double precision :: neptune_r_4
        double precision :: neptune_r_5

        neptune_r_0 = 0.0
        neptune_r_1 = 0.0
        neptune_r_2 = 0.0
        neptune_r_3 = 0.0
        neptune_r_4 = 0.0
        neptune_r_5 = 0.0

        neptune_r_0 = neptune_r_0 + 0.01691764281d0*cos(3.25186138896d0 + 36.6485629295d0 * t)
        neptune_r_0 = neptune_r_0 + 0.2706225949d0*cos(1.3299945893d0 + 38.1330356378d0 * t)
        neptune_r_0 = neptune_r_0 + 30.07013206102d0*cos(0.0d0 + 0.0d0 * t)

        r = neptune_r_0
    end function

    function saturn_b(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: saturn_b_0
        double precision :: saturn_b_1
        double precision :: saturn_b_2
        double precision :: saturn_b_3
        double precision :: saturn_b_4
        double precision :: saturn_b_5

        saturn_b_0 = 0.0
        saturn_b_1 = 0.0
        saturn_b_2 = 0.0
        saturn_b_3 = 0.0
        saturn_b_4 = 0.0
        saturn_b_5 = 0.0

        saturn_b_0 = saturn_b_0 + 0.0433067804d0*cos(3.60284428399d0 + 213.299095438d0 * t)

        r = saturn_b_0
    end function

    function saturn_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: saturn_l_0
        double precision :: saturn_l_1
        double precision :: saturn_l_2
        double precision :: saturn_l_3
        double precision :: saturn_l_4
        double precision :: saturn_l_5

        saturn_l_0 = 0.0
        saturn_l_1 = 0.0
        saturn_l_2 = 0.0
        saturn_l_3 = 0.0
        saturn_l_4 = 0.0
        saturn_l_5 = 0.0

        saturn_l_0 = saturn_l_0 + 0.01414150958d0*cos(4.58581515873d0 + 7.1135470008d0 * t)
        saturn_l_0 = saturn_l_0 + 0.1110765978d0*cos(3.96205090194d0 + 213.299095438d0 * t)
        saturn_l_0 = saturn_l_0 + 0.87401354029d0*cos(0.0d0 + 0.0d0 * t)

        saturn_l_1 = saturn_l_1 + 0.01296855005d0*cos(1.82820544701d0 + 213.299095438d0 * t)
        saturn_l_1 = saturn_l_1 + 213.54295595986d0*cos(0.0d0 + 0.0d0 * t)
        saturn_l_1=saturn_l_1*t;

        r = saturn_l_1+saturn_l_0
    end function

    function saturn_r(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: saturn_r_0
        double precision :: saturn_r_1
        double precision :: saturn_r_2
        double precision :: saturn_r_3
        double precision :: saturn_r_4
        double precision :: saturn_r_5

        saturn_r_0 = 0.0
        saturn_r_1 = 0.0
        saturn_r_2 = 0.0
        saturn_r_3 = 0.0
        saturn_r_4 = 0.0
        saturn_r_5 = 0.0

        saturn_r_0 = saturn_r_0 + 0.01464663959d0*cos(1.64763045468d0 + 426.598190876d0 * t)
        saturn_r_0 = saturn_r_0 + 0.01873679934d0*cos(5.23549605091d0 + 206.1855484372d0 * t)
        saturn_r_0 = saturn_r_0 + 0.52921382465d0*cos(2.39226219733d0 + 213.299095438d0 * t)
        saturn_r_0 = saturn_r_0 + 9.55758135801d0*cos(0.0d0 + 0.0d0 * t)

        saturn_r_1 = saturn_r_1 + 0.06182981282d0*cos(0.25843515034d0 + 213.299095438d0 * t)
        saturn_r_1=saturn_r_1*t;

        r = saturn_r_1+saturn_r_0
    end function

    function uranus_b(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: uranus_b_0
        double precision :: uranus_b_1
        double precision :: uranus_b_2
        double precision :: uranus_b_3
        double precision :: uranus_b_4
        double precision :: uranus_b_5

        uranus_b_0 = 0.0
        uranus_b_1 = 0.0
        uranus_b_2 = 0.0
        uranus_b_3 = 0.0
        uranus_b_4 = 0.0
        uranus_b_5 = 0.0

        uranus_b_0 = uranus_b_0 + 0.01346277639d0*cos(2.61877810545d0 + 74.7815985673d0 * t)

        r = uranus_b_0
    end function

    function uranus_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: uranus_l_0
        double precision :: uranus_l_1
        double precision :: uranus_l_2
        double precision :: uranus_l_3
        double precision :: uranus_l_4
        double precision :: uranus_l_5

        uranus_l_0 = 0.0
        uranus_l_1 = 0.0
        uranus_l_2 = 0.0
        uranus_l_3 = 0.0
        uranus_l_4 = 0.0
        uranus_l_5 = 0.0

        uranus_l_0 = uranus_l_0 + 0.01504247826d0*cos(3.62719262195d0 + 1.4844727083d0 * t)
        uranus_l_0 = uranus_l_0 + 0.09260408252d0*cos(0.8910642153d0 + 74.7815985673d0 * t)
        uranus_l_0 = uranus_l_0 + 5.48129294299d0*cos(0.0d0 + 0.0d0 * t)

        uranus_l_1 = uranus_l_1 + 75.02543121646d0*cos(0.0d0 + 0.0d0 * t)
        uranus_l_1=uranus_l_1*t;

        r = uranus_l_1+uranus_l_0
    end function

    function uranus_r(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: uranus_r_0
        double precision :: uranus_r_1
        double precision :: uranus_r_2
        double precision :: uranus_r_3
        double precision :: uranus_r_4
        double precision :: uranus_r_5

        uranus_r_0 = 0.0
        uranus_r_1 = 0.0
        uranus_r_2 = 0.0
        uranus_r_3 = 0.0
        uranus_r_4 = 0.0
        uranus_r_5 = 0.0

        uranus_r_0 = uranus_r_0 + 0.02055653495d0*cos(1.78295170028d0 + 149.5631971346d0 * t)
        uranus_r_0 = uranus_r_0 + 0.03440835545d0*cos(0.32836098991d0 + 73.297125859d0 * t)
        uranus_r_0 = uranus_r_0 + 0.88784984055d0*cos(5.60377526994d0 + 74.7815985673d0 * t)
        uranus_r_0 = uranus_r_0 + 19.21264847881d0*cos(0.0d0 + 0.0d0 * t)

        uranus_r_1 = uranus_r_1 + 0.0147989637d0*cos(3.67205705317d0 + 74.7815985673d0 * t)
        uranus_r_1=uranus_r_1*t;

        r = uranus_r_1+uranus_r_0
    end function

    function venus_b(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: venus_b_0
        double precision :: venus_b_1
        double precision :: venus_b_2
        double precision :: venus_b_3
        double precision :: venus_b_4
        double precision :: venus_b_5

        venus_b_0 = 0.0
        venus_b_1 = 0.0
        venus_b_2 = 0.0
        venus_b_3 = 0.0
        venus_b_4 = 0.0
        venus_b_5 = 0.0

        venus_b_0 = venus_b_0 + 0.05923638472d0*cos(0.26702775813d0 + 10213.285546211d0 * t)

        r = venus_b_0
    end function

    function venus_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: venus_l_0
        double precision :: venus_l_1
        double precision :: venus_l_2
        double precision :: venus_l_3
        double precision :: venus_l_4
        double precision :: venus_l_5

        venus_l_0 = 0.0
        venus_l_1 = 0.0
        venus_l_2 = 0.0
        venus_l_3 = 0.0
        venus_l_4 = 0.0
        venus_l_5 = 0.0

        venus_l_0 = venus_l_0 + 0.01353968419d0*cos(5.59313319619d0 + 10213.285546211d0 * t)
        venus_l_0 = venus_l_0 + 3.17614666774d0*cos(0.0d0 + 0.0d0 * t)

        venus_l_1 = venus_l_1 + 10213.52943052898d0*cos(0.0d0 + 0.0d0 * t)
        venus_l_1=venus_l_1*t;

        r = venus_l_1+venus_l_0
    end function

    function venus_r(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: venus_r_0
        double precision :: venus_r_1
        double precision :: venus_r_2
        double precision :: venus_r_3
        double precision :: venus_r_4
        double precision :: venus_r_5

        venus_r_0 = 0.0
        venus_r_1 = 0.0
        venus_r_2 = 0.0
        venus_r_3 = 0.0
        venus_r_4 = 0.0
        venus_r_5 = 0.0

        venus_r_0 = venus_r_0 + 0.72334820905d0*cos(0.0d0 + 0.0d0 * t)

        r = venus_r_0
    end function

end module VSOP87D_Pico
