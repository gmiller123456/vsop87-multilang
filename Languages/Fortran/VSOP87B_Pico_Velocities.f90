!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87B_Pico_Velocities
    implicit none

    contains
    subroutine VSOP87B_Pico_getEarthV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_b(t) / 365250.0
        result(2)=earth_l(t) / 365250.0
        result(3)=earth_r(t) / 365250.0
    end subroutine

    subroutine VSOP87B_Pico_getJupiterV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_b(t) / 365250.0
        result(2)=jupiter_l(t) / 365250.0
        result(3)=jupiter_r(t) / 365250.0
    end subroutine

    subroutine VSOP87B_Pico_getMarsV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_b(t) / 365250.0
        result(2)=mars_l(t) / 365250.0
        result(3)=mars_r(t) / 365250.0
    end subroutine

    subroutine VSOP87B_Pico_getMercuryV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_b(t) / 365250.0
        result(2)=mercury_l(t) / 365250.0
        result(3)=mercury_r(t) / 365250.0
    end subroutine

    subroutine VSOP87B_Pico_getNeptuneV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_b(t) / 365250.0
        result(2)=neptune_l(t) / 365250.0
        result(3)=neptune_r(t) / 365250.0
    end subroutine

    subroutine VSOP87B_Pico_getSaturnV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_b(t) / 365250.0
        result(2)=saturn_l(t) / 365250.0
        result(3)=saturn_r(t) / 365250.0
    end subroutine

    subroutine VSOP87B_Pico_getUranusV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_b(t) / 365250.0
        result(2)=uranus_l(t) / 365250.0
        result(3)=uranus_r(t) / 365250.0
    end subroutine

    subroutine VSOP87B_Pico_getVenusV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=venus_b(t) / 365250.0
        result(2)=venus_l(t) / 365250.0
        result(3)=venus_r(t) / 365250.0
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

        earth_l_0 = earth_l_0 -(t**0)*0.03341656453d0*6283.0758499914d0*sin(4.66925680415d0 + 6283.0758499914d0 * t)
        earth_l_0 = earth_l_0 -(t**0)*1.75347045673d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        earth_l_1 = earth_l_1 +(t**(0))*1*6283.0758499914d0*cos(0.0d0 + 0.0d0*t)
        earth_l_1 = earth_l_1 -(t**1)*6283.0758499914d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        earth_r_0 = earth_r_0 -(t**0)*0.01670699632d0*6283.0758499914d0*sin(3.09846350258d0 + 6283.0758499914d0 * t)
        earth_r_0 = earth_r_0 -(t**0)*1.00013988784d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        jupiter_b_0 = jupiter_b_0 -(t**0)*0.02268615702d0*529.6909650946d0*sin(3.55852606721d0 + 529.6909650946d0 * t)

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

        jupiter_l_0 = jupiter_l_0 -(t**0)*0.09695898719d0*529.6909650946d0*sin(5.06191793158d0 + 529.6909650946d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.59954691494d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*529.69096508814d0*cos(0.0d0 + 0.0d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*529.69096508814d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        jupiter_r_0 = jupiter_r_0 -(t**0)*0.25209327119d0*529.6909650946d0*sin(3.49108639871d0 + 529.6909650946d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*5.20887429326d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*0.0127180152d0*cos(2.64937512894d0 + 529.6909650946d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*0.0127180152d0*529.6909650946d0*sin(2.64937512894d0 + 529.6909650946d0 * t)

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

        mars_b_0 = mars_b_0 -(t**0)*0.03197134986d0*3340.6124266998d0*sin(3.76832042431d0 + 3340.6124266998d0 * t)

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

        mars_l_0 = mars_l_0 -(t**0)*0.01108216816d0*6681.2248533996d0*sin(5.40099836344d0 + 6681.2248533996d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*0.18656368093d0*3340.6124266998d0*sin(5.0503710027d0 + 3340.6124266998d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*6.20347711581d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mars_l_1 = mars_l_1 +(t**(0))*1*0.01457554523d0*cos(3.60433733236d0 + 3340.6124266998d0*t)
        mars_l_1 = mars_l_1 -(t**1)*0.01457554523d0*3340.6124266998d0*sin(3.60433733236d0 + 3340.6124266998d0 * t)
        mars_l_1 = mars_l_1 +(t**(0))*1*3340.61242700512d0*cos(0.0d0 + 0.0d0*t)
        mars_l_1 = mars_l_1 -(t**1)*3340.61242700512d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        mars_r_0 = mars_r_0 -(t**0)*0.1418495316d0*3340.6124266998d0*sin(3.47971283528d0 + 3340.6124266998d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*1.53033488271d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mars_r_1 = mars_r_1 +(t**(0))*1*0.01107433345d0*cos(2.03250524857d0 + 3340.6124266998d0*t)
        mars_r_1 = mars_r_1 -(t**1)*0.01107433345d0*3340.6124266998d0*sin(2.03250524857d0 + 3340.6124266998d0 * t)

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

        mercury_b_0 = mercury_b_0 -(t**0)*0.01222839532d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.02388076996d0*52175.8062831484d0*sin(5.03738959686d0 + 52175.8062831484d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.11737528961d0*26087.9031415742d0*sin(1.98357498767d0 + 26087.9031415742d0 * t)

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

        mercury_l_0 = mercury_l_0 -(t**0)*0.050462942d0*52175.8062831484d0*sin(4.47785489551d0 + 52175.8062831484d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*0.40989414977d0*26087.9031415742d0*sin(1.48302034195d0 + 26087.9031415742d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*4.40250710144d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mercury_l_1 = mercury_l_1 +(t**(0))*1*0.01131199811d0*cos(6.21874197797d0 + 26087.9031415742d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*0.01131199811d0*26087.9031415742d0*sin(6.21874197797d0 + 26087.9031415742d0 * t)
        mercury_l_1 = mercury_l_1 +(t**(0))*1*26087.90313685529d0*cos(0.0d0 + 0.0d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*26087.90313685529d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        mercury_r_0 = mercury_r_0 -(t**0)*0.07834131818d0*26087.9031415742d0*sin(6.19233722598d0 + 26087.9031415742d0 * t)
        mercury_r_0 = mercury_r_0 -(t**0)*0.39528271651d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        neptune_b_0 = neptune_b_0 -(t**0)*0.03088622933d0*38.1330356378d0*sin(1.44104372644d0 + 38.1330356378d0 * t)

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

        neptune_l_0 = neptune_l_0 -(t**0)*0.01019727652d0*1.4844727083d0*sin(0.48580922867d0 + 1.4844727083d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*0.0179847553d0*38.1330356378d0*sin(2.9010127389d0 + 38.1330356378d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*5.31188633046d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        neptune_l_1 = neptune_l_1 +(t**(0))*1*38.13303563957d0*cos(0.0d0 + 0.0d0*t)
        neptune_l_1 = neptune_l_1 -(t**1)*38.13303563957d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        neptune_r_0 = neptune_r_0 -(t**0)*0.01691764014d0*36.6485629295d0*sin(3.25186135653d0 + 36.6485629295d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.27062259632d0*38.1330356378d0*sin(1.32999459377d0 + 38.1330356378d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*30.07013205828d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        saturn_b_0 = saturn_b_0 -(t**0)*0.04330678039d0*213.299095438d0*sin(3.60284428399d0 + 213.299095438d0 * t)

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

        saturn_l_0 = saturn_l_0 -(t**0)*0.01414150957d0*7.1135470008d0*sin(4.58581516874d0 + 7.1135470008d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.11107659762d0*213.299095438d0*sin(3.96205090159d0 + 213.299095438d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.87401354025d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.01297370862d0*cos(1.82834923978d0 + 213.299095438d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.01297370862d0*213.299095438d0*sin(1.82834923978d0 + 213.299095438d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*213.2990952169d0*cos(0.0d0 + 0.0d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*213.2990952169d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        saturn_r_0 = saturn_r_0 -(t**0)*0.01464663929d0*426.598190876d0*sin(1.64763042902d0 + 426.598190876d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.01873679867d0*206.1855484372d0*sin(5.2354960466d0 + 206.1855484372d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.52921382865d0*213.299095438d0*sin(2.39226219573d0 + 213.299095438d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*9.55758135486d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.0618298134d0*cos(0.2584351148d0 + 213.299095438d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.0618298134d0*213.299095438d0*sin(0.2584351148d0 + 213.299095438d0 * t)

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

        uranus_b_0 = uranus_b_0 -(t**0)*0.01346277648d0*74.7815985673d0*sin(2.61877810547d0 + 74.7815985673d0 * t)

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

        uranus_l_0 = uranus_l_0 -(t**0)*0.01504247898d0*1.4844727083d0*sin(3.6271926092d0 + 1.4844727083d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.09260408234d0*74.7815985673d0*sin(0.89106421507d0 + 74.7815985673d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*5.48129294297d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        uranus_l_1 = uranus_l_1 +(t**(0))*1*74.7815986091d0*cos(0.0d0 + 0.0d0*t)
        uranus_l_1 = uranus_l_1 -(t**1)*74.7815986091d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        uranus_r_0 = uranus_r_0 -(t**0)*0.0205565386d0*149.5631971346d0*sin(1.7829515933d0 + 149.5631971346d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.03440836062d0*73.297125859d0*sin(0.32836099706d0 + 73.297125859d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.88784984413d0*74.7815985673d0*sin(5.60377527014d0 + 74.7815985673d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*19.21264847206d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        uranus_r_1 = uranus_r_1 +(t**(0))*1*0.01479896629d0*cos(3.67205697578d0 + 74.7815985673d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*0.01479896629d0*74.7815985673d0*sin(3.67205697578d0 + 74.7815985673d0 * t)

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

        venus_b_0 = venus_b_0 -(t**0)*0.05923638472d0*10213.285546211d0*sin(0.26702775812d0 + 10213.285546211d0 * t)

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

        venus_l_0 = venus_l_0 -(t**0)*0.01353968419d0*10213.285546211d0*sin(5.59313319619d0 + 10213.285546211d0 * t)
        venus_l_0 = venus_l_0 -(t**0)*3.17614666774d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        venus_l_1 = venus_l_1 +(t**(0))*1*10213.28554621638d0*cos(0.0d0 + 0.0d0*t)
        venus_l_1 = venus_l_1 -(t**1)*10213.28554621638d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        venus_r_0 = venus_r_0 -(t**0)*0.72334820891d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        r = venus_r_0
    end function

end module VSOP87B_Pico_Velocities
