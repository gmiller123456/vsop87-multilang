!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87D_Nano_Velocities
    implicit none

    contains
    subroutine VSOP87D_Nano_getEarthV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_b(t) / 365250.0
        result(2)=earth_l(t) / 365250.0
        result(3)=earth_r(t) / 365250.0
    end subroutine

    subroutine VSOP87D_Nano_getJupiterV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_b(t) / 365250.0
        result(2)=jupiter_l(t) / 365250.0
        result(3)=jupiter_r(t) / 365250.0
    end subroutine

    subroutine VSOP87D_Nano_getMarsV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_b(t) / 365250.0
        result(2)=mars_l(t) / 365250.0
        result(3)=mars_r(t) / 365250.0
    end subroutine

    subroutine VSOP87D_Nano_getMercuryV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_b(t) / 365250.0
        result(2)=mercury_l(t) / 365250.0
        result(3)=mercury_r(t) / 365250.0
    end subroutine

    subroutine VSOP87D_Nano_getNeptuneV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_b(t) / 365250.0
        result(2)=neptune_l(t) / 365250.0
        result(3)=neptune_r(t) / 365250.0
    end subroutine

    subroutine VSOP87D_Nano_getSaturnV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_b(t) / 365250.0
        result(2)=saturn_l(t) / 365250.0
        result(3)=saturn_r(t) / 365250.0
    end subroutine

    subroutine VSOP87D_Nano_getUranusV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_b(t) / 365250.0
        result(2)=uranus_l(t) / 365250.0
        result(3)=uranus_r(t) / 365250.0
    end subroutine

    subroutine VSOP87D_Nano_getVenusV(t, result)
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

        earth_l_0 = earth_l_0 -(t**0)*0.03341656456d0*6283.0758499914d0*sin(4.66925680417d0 + 6283.0758499914d0 * t)
        earth_l_0 = earth_l_0 -(t**0)*1.75347045673d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        earth_l_1 = earth_l_1 +(t**(0))*1*0.00206058863d0*cos(2.67823455584d0 + 6283.0758499914d0*t)
        earth_l_1 = earth_l_1 -(t**1)*0.00206058863d0*6283.0758499914d0*sin(2.67823455584d0 + 6283.0758499914d0 * t)
        earth_l_1 = earth_l_1 +(t**(0))*1*6283.31966747491d0*cos(0.0d0 + 0.0d0*t)
        earth_l_1 = earth_l_1 -(t**1)*6283.31966747491d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        earth_r_0 = earth_r_0 -(t**0)*0.01670699626d0*6283.0758499914d0*sin(3.09846350771d0 + 6283.0758499914d0 * t)
        earth_r_0 = earth_r_0 -(t**0)*1.00013988799d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        earth_r_1 = earth_r_1 +(t**(0))*1*0.00103018608d0*cos(1.10748969588d0 + 6283.0758499914d0*t)
        earth_r_1 = earth_r_1 -(t**1)*0.00103018608d0*6283.0758499914d0*sin(1.10748969588d0 + 6283.0758499914d0 * t)

        r = earth_r_1+earth_r_0
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

        jupiter_b_0 = jupiter_b_0 -(t**0)*0.00109971634d0*1059.3819301892d0*sin(3.90809347389d0 + 1059.3819301892d0 * t)
        jupiter_b_0 = jupiter_b_0 -(t**0)*0.00110090358d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        jupiter_b_0 = jupiter_b_0 -(t**0)*0.02268615703d0*529.6909650946d0*sin(3.55852606718d0 + 529.6909650946d0 * t)

        jupiter_b_1 = jupiter_b_1 +(t**(0))*1*0.00177351787d0*cos(5.70166488486d0 + 529.6909650946d0*t)
        jupiter_b_1 = jupiter_b_1 -(t**1)*0.00177351787d0*529.6909650946d0*sin(5.70166488486d0 + 529.6909650946d0 * t)

        r = jupiter_b_1+jupiter_b_0
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

        jupiter_l_0 = jupiter_l_0 -(t**0)*0.0030638918d0*1059.3819301892d0*sin(5.41734729976d0 + 1059.3819301892d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.00573610145d0*7.1135470008d0*sin(1.44406205976d0 + 7.1135470008d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.09695898711d0*529.6909650946d0*sin(5.06191793105d0 + 529.6909650946d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.59954691495d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*0.00228918538d0*cos(6.02647464016d0 + 7.1135470008d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*0.00228918538d0*7.1135470008d0*sin(6.02647464016d0 + 7.1135470008d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*0.00489741194d0*cos(4.22066689928d0 + 529.6909650946d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*0.00489741194d0*529.6909650946d0*sin(4.22066689928d0 + 529.6909650946d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*529.93480757497d0*cos(0.0d0 + 0.0d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*529.93480757497d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00187647391d0*522.5774180938d0*sin(2.07590380082d0 + 522.5774180938d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00282029465d0*632.7837393132d0*sin(2.57419879933d0 + 632.7837393132d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00610599902d0*1059.3819301892d0*sin(3.84115365602d0 + 1059.3819301892d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.2520932702d0*529.6909650946d0*sin(3.49108640015d0 + 529.6909650946d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*5.20887429471d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*0.01271801596d0*cos(2.64937511122d0 + 529.6909650946d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*0.01271801596d0*529.6909650946d0*sin(2.64937511122d0 + 529.6909650946d0 * t)

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

        mars_b_0 = mars_b_0 -(t**0)*0.00289104742d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mars_b_0 = mars_b_0 -(t**0)*0.00298033234d0*6681.2248533996d0*sin(4.10616996243d0 + 6681.2248533996d0 * t)
        mars_b_0 = mars_b_0 -(t**0)*0.03197134986d0*3340.6124266998d0*sin(3.76832042432d0 + 3340.6124266998d0 * t)

        mars_b_1 = mars_b_1 +(t**(0))*1*0.00350068845d0*cos(5.36847836211d0 + 3340.6124266998d0*t)
        mars_b_1 = mars_b_1 -(t**1)*0.00350068845d0*3340.6124266998d0*sin(5.36847836211d0 + 3340.6124266998d0 * t)

        r = mars_b_1+mars_b_0
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

        mars_l_0 = mars_l_0 -(t**0)*0.01108216792d0*6681.2248533996d0*sin(5.40099836958d0 + 6681.2248533996d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*0.186563681d0*3340.6124266998d0*sin(5.05037100303d0 + 3340.6124266998d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*6.20347711583d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mars_l_1 = mars_l_1 +(t**(0))*1*0.00164901343d0*cos(3.92631250962d0 + 6681.2248533996d0*t)
        mars_l_1 = mars_l_1 -(t**1)*0.00164901343d0*6681.2248533996d0*sin(3.92631250962d0 + 6681.2248533996d0 * t)
        mars_l_1 = mars_l_1 +(t**(0))*1*0.01458227051d0*cos(3.60426053609d0 + 3340.6124266998d0*t)
        mars_l_1 = mars_l_1 -(t**1)*0.01458227051d0*3340.6124266998d0*sin(3.60426053609d0 + 3340.6124266998d0 * t)
        mars_l_1 = mars_l_1 +(t**(0))*1*3340.85627474342d0*cos(0.0d0 + 0.0d0*t)
        mars_l_1 = mars_l_1 -(t**1)*3340.85627474342d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        mars_r_0 = mars_r_0 -(t**0)*0.00660776357d0*6681.2248533996d0*sin(3.81783442097d0 + 6681.2248533996d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*0.14184953153d0*3340.6124266998d0*sin(3.47971283519d0 + 3340.6124266998d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*1.53033488276d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mars_r_1 = mars_r_1 +(t**(0))*1*0.00103175886d0*cos(2.37071845682d0 + 6681.2248533996d0*t)
        mars_r_1 = mars_r_1 -(t**1)*0.00103175886d0*6681.2248533996d0*sin(2.37071845682d0 + 6681.2248533996d0 * t)
        mars_r_1 = mars_r_1 +(t**(0))*1*0.0110743334d0*cos(2.0325052495d0 + 3340.6124266998d0*t)
        mars_r_1 = mars_r_1 -(t**1)*0.0110743334d0*3340.6124266998d0*sin(2.0325052495d0 + 3340.6124266998d0 * t)

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

        mercury_b_0 = mercury_b_0 -(t**0)*0.0012977877d0*104351.61256629678d0*sin(4.83232503961d0 + 104351.61256629678d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.0054325181d0*78263.70942472259d0*sin(1.79644363963d0 + 78263.70942472259d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.01222839532d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.02388076996d0*52175.8062831484d0*sin(5.03738959685d0 + 52175.8062831484d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.11737528962d0*26087.9031415742d0*sin(1.98357498767d0 + 26087.9031415742d0 * t)

        mercury_b_1 = mercury_b_1 +(t**(0))*1*0.00146233668d0*cos(3.14159265359d0 + 0.0d0*t)
        mercury_b_1 = mercury_b_1 -(t**1)*0.00146233668d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_b_1 = mercury_b_1 +(t**(0))*1*0.00429151362d0*cos(3.50169780393d0 + 26087.9031415742d0*t)
        mercury_b_1 = mercury_b_1 -(t**1)*0.00429151362d0*26087.9031415742d0*sin(3.50169780393d0 + 26087.9031415742d0 * t)

        r = mercury_b_1+mercury_b_0
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

        mercury_l_0 = mercury_l_0 -(t**0)*0.00165590362d0*104351.61256629678d0*sin(4.11969163181d0 + 104351.61256629678d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*0.00855346843d0*78263.70942472259d0*sin(1.16520322351d0 + 78263.70942472259d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*0.05046294199d0*52175.8062831484d0*sin(4.4778548954d0 + 52175.8062831484d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*0.40989414976d0*26087.9031415742d0*sin(1.48302034194d0 + 26087.9031415742d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*4.40250710144d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mercury_l_1 = mercury_l_1 +(t**(0))*1*0.00303471395d0*cos(3.05565472363d0 + 52175.8062831484d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*0.00303471395d0*52175.8062831484d0*sin(3.05565472363d0 + 52175.8062831484d0 * t)
        mercury_l_1 = mercury_l_1 +(t**(0))*1*0.01126007832d0*cos(6.21703970996d0 + 26087.9031415742d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*0.01126007832d0*26087.9031415742d0*sin(6.21703970996d0 + 26087.9031415742d0 * t)
        mercury_l_1 = mercury_l_1 +(t**(0))*1*26088.14706222746d0*cos(0.0d0 + 0.0d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*26088.14706222746d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        mercury_r_0 = mercury_r_0 -(t**0)*0.00121281763d0*78263.70942472259d0*sin(6.01064153805d0 + 78263.70942472259d0 * t)
        mercury_r_0 = mercury_r_0 -(t**0)*0.00795525557d0*52175.8062831484d0*sin(2.95989690096d0 + 52175.8062831484d0 * t)
        mercury_r_0 = mercury_r_0 -(t**0)*0.07834131817d0*26087.9031415742d0*sin(6.19233722599d0 + 26087.9031415742d0 * t)
        mercury_r_0 = mercury_r_0 -(t**0)*0.39528271652d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mercury_r_1 = mercury_r_1 +(t**(0))*1*0.00217347739d0*cos(4.65617158663d0 + 26087.9031415742d0*t)
        mercury_r_1 = mercury_r_1 -(t**1)*0.00217347739d0*26087.9031415742d0*sin(4.65617158663d0 + 26087.9031415742d0 * t)

        r = mercury_r_1+mercury_r_0
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

        neptune_b_0 = neptune_b_0 -(t**0)*0.03088622933d0*38.1330356378d0*sin(1.44104372626d0 + 38.1330356378d0 * t)

        neptune_b_1 = neptune_b_1 +(t**(0))*1*0.00227279214d0*cos(3.8079308987d0 + 38.1330356378d0*t)
        neptune_b_1 = neptune_b_1 -(t**1)*0.00227279214d0*38.1330356378d0*sin(3.8079308987d0 + 38.1330356378d0 * t)

        r = neptune_b_1+neptune_b_0
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

        neptune_l_0 = neptune_l_0 -(t**0)*0.00124531845d0*36.6485629295d0*sin(4.83008090682d0 + 36.6485629295d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*0.01019727662d0*1.4844727083d0*sin(0.4858092366d0 + 1.4844727083d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*0.01798475509d0*38.1330356378d0*sin(2.9010127305d0 + 38.1330356378d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*5.31188633047d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        neptune_l_1 = neptune_l_1 +(t**(0))*1*38.37687716731d0*cos(0.0d0 + 0.0d0*t)
        neptune_l_1 = neptune_l_1 -(t**1)*38.37687716731d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        neptune_r_0 = neptune_r_0 -(t**0)*0.00100895397d0*73.297125859d0*sin(0.37702748681d0 + 73.297125859d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00121801825d0*76.2660712756d0*sin(5.79754444303d0 + 76.2660712756d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00135134095d0*39.6175083461d0*sin(3.37220607384d0 + 39.6175083461d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.0027457197d0*175.1660598002d0*sin(1.84552256801d0 + 175.1660598002d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00495725642d0*491.5579294568d0*sin(1.57105654815d0 + 491.5579294568d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00537760613d0*35.1640902212d0*sin(4.52113902845d0 + 35.1640902212d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00807830737d0*1.4844727083d0*sin(5.18592836167d0 + 1.4844727083d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.01691764281d0*36.6485629295d0*sin(3.25186138896d0 + 36.6485629295d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.2706225949d0*38.1330356378d0*sin(1.3299945893d0 + 38.1330356378d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*30.07013206102d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        neptune_r_1 = neptune_r_1 +(t**(0))*1*0.00236338502d0*cos(0.70498011235d0 + 38.1330356378d0*t)
        neptune_r_1 = neptune_r_1 -(t**1)*0.00236338502d0*38.1330356378d0*sin(0.70498011235d0 + 38.1330356378d0 * t)

        r = neptune_r_1+neptune_r_0
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

        saturn_b_0 = saturn_b_0 -(t**0)*0.00240348303d0*426.598190876d0*sin(2.8523848939d0 + 426.598190876d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*0.0433067804d0*213.299095438d0*sin(3.60284428399d0 + 213.299095438d0 * t)

        saturn_b_1 = saturn_b_1 +(t**(0))*1*0.00397554998d0*cos(5.33289992556d0 + 213.299095438d0*t)
        saturn_b_1 = saturn_b_1 -(t**1)*0.00397554998d0*213.299095438d0*sin(5.33289992556d0 + 213.299095438d0 * t)

        r = saturn_b_1+saturn_b_0
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

        saturn_l_0 = saturn_l_0 -(t**0)*0.00206816296d0*103.0927742186d0*sin(0.24658366938d0 + 103.0927742186d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00350769223d0*426.598190876d0*sin(3.30329903015d0 + 426.598190876d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00398379386d0*206.1855484372d0*sin(0.52112025957d0 + 206.1855484372d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.01414150958d0*7.1135470008d0*sin(4.58581515873d0 + 7.1135470008d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.1110765978d0*213.299095438d0*sin(3.96205090194d0 + 213.299095438d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.87401354029d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.0010767877d0*cos(2.27769911872d0 + 206.1855484372d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.0010767877d0*206.1855484372d0*sin(2.27769911872d0 + 206.1855484372d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.00564347566d0*cos(2.88500136429d0 + 7.1135470008d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.00564347566d0*7.1135470008d0*sin(2.88500136429d0 + 7.1135470008d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.01296855005d0*cos(1.82820544701d0 + 213.299095438d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.01296855005d0*213.299095438d0*sin(1.82820544701d0 + 213.299095438d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*213.54295595986d0*cos(0.0d0 + 0.0d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*213.54295595986d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        saturn_l_2 = saturn_l_2 +(t**(1))*2*0.00116441181d0*cos(1.17987850633d0 + 7.1135470008d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*0.00116441181d0*7.1135470008d0*sin(1.17987850633d0 + 7.1135470008d0 * t)

        r = saturn_l_2+saturn_l_1+saturn_l_0
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

        saturn_r_0 = saturn_r_0 -(t**0)*0.00108974737d0*110.2063212194d0*sin(3.29313595577d0 + 110.2063212194d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00140617548d0*632.7837393132d0*sin(5.70406652991d0 + 632.7837393132d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00361778433d0*7.1135470008d0*sin(3.13904303264d0 + 7.1135470008d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00371684449d0*220.4126424388d0*sin(2.27114833428d0 + 220.4126424388d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00547506899d0*103.0927742186d0*sin(5.01532628454d0 + 103.0927742186d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00821891059d0*316.3918696566d0*sin(5.93520025371d0 + 316.3918696566d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.01464663959d0*426.598190876d0*sin(1.64763045468d0 + 426.598190876d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.01873679934d0*206.1855484372d0*sin(5.23549605091d0 + 206.1855484372d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.52921382465d0*213.299095438d0*sin(2.39226219733d0 + 213.299095438d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*9.55758135801d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00143891176d0*cos(1.40744864239d0 + 7.1135470008d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00143891176d0*7.1135470008d0*sin(1.40744864239d0 + 7.1135470008d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.0018626154d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.0018626154d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00188491375d0*cos(0.47215719444d0 + 220.4126424388d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00188491375d0*220.4126424388d0*sin(0.47215719444d0 + 220.4126424388d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00341394136d0*cos(5.7963577396d0 + 426.598190876d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00341394136d0*426.598190876d0*sin(5.7963577396d0 + 426.598190876d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00506577574d0*cos(0.71114650941d0 + 206.1855484372d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00506577574d0*206.1855484372d0*sin(0.71114650941d0 + 206.1855484372d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.06182981282d0*cos(0.25843515034d0 + 213.299095438d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.06182981282d0*213.299095438d0*sin(0.25843515034d0 + 213.299095438d0 * t)

        saturn_r_2 = saturn_r_2 +(t**(1))*2*0.00436902464d0*cos(4.78671673044d0 + 213.299095438d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*0.00436902464d0*213.299095438d0*sin(4.78671673044d0 + 213.299095438d0 * t)

        r = saturn_r_2+saturn_r_1+saturn_r_0
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

        uranus_b_0 = uranus_b_0 -(t**0)*0.01346277639d0*74.7815985673d0*sin(2.61877810545d0 + 74.7815985673d0 * t)

        uranus_b_1 = uranus_b_1 +(t**(0))*1*0.00206366162d0*cos(4.12394311407d0 + 74.7815985673d0*t)
        uranus_b_1 = uranus_b_1 -(t**1)*0.00206366162d0*74.7815985673d0*sin(4.12394311407d0 + 74.7815985673d0 * t)

        r = uranus_b_1+uranus_b_0
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

        uranus_l_0 = uranus_l_0 -(t**0)*0.00272328132d0*149.5631971346d0*sin(3.35823710524d0 + 149.5631971346d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00365981718d0*73.297125859d0*sin(1.89962189068d0 + 73.297125859d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.01504247826d0*1.4844727083d0*sin(3.62719262195d0 + 1.4844727083d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.09260408252d0*74.7815985673d0*sin(0.8910642153d0 + 74.7815985673d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*5.48129294299d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        uranus_l_1 = uranus_l_1 +(t**(0))*1*0.00154458244d0*cos(5.24201658072d0 + 74.7815985673d0*t)
        uranus_l_1 = uranus_l_1 -(t**1)*0.00154458244d0*74.7815985673d0*sin(5.24201658072d0 + 74.7815985673d0 * t)
        uranus_l_1 = uranus_l_1 +(t**(0))*1*75.02543121646d0*cos(0.0d0 + 0.0d0*t)
        uranus_l_1 = uranus_l_1 -(t**1)*75.02543121646d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        uranus_r_0 = uranus_r_0 -(t**0)*0.00143705902d0*11.0457002639d0*sin(1.38368574483d0 + 11.0457002639d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00161858251d0*148.0787244263d0*sin(2.79137863469d0 + 148.0787244263d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00190521915d0*1.4844727083d0*sin(1.99809364502d0 + 1.4844727083d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00243508222d0*71.8126531507d0*sin(1.57086595074d0 + 71.8126531507d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00338525522d0*138.5174968707d0*sin(1.58002682946d0 + 138.5174968707d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00496404171d0*454.9093665273d0*sin(1.40139934716d0 + 454.9093665273d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00602248144d0*63.7358983034d0*sin(3.86003820462d0 + 63.7358983034d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00649321851d0*76.2660712756d0*sin(4.52247298119d0 + 76.2660712756d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.02055653495d0*149.5631971346d0*sin(1.78295170028d0 + 149.5631971346d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.03440835545d0*73.297125859d0*sin(0.32836098991d0 + 73.297125859d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.88784984055d0*74.7815985673d0*sin(5.60377526994d0 + 74.7815985673d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*19.21264847881d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        uranus_r_1 = uranus_r_1 +(t**(0))*1*0.0147989637d0*cos(3.67205705317d0 + 74.7815985673d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*0.0147989637d0*74.7815985673d0*sin(3.67205705317d0 + 74.7815985673d0 * t)

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

        venus_b_0 = venus_b_0 -(t**0)*0.05923638472d0*10213.285546211d0*sin(0.26702775813d0 + 10213.285546211d0 * t)

        venus_b_1 = venus_b_1 +(t**(0))*1*0.00513347602d0*cos(1.80364310797d0 + 10213.285546211d0*t)
        venus_b_1 = venus_b_1 -(t**1)*0.00513347602d0*10213.285546211d0*sin(1.80364310797d0 + 10213.285546211d0 * t)

        r = venus_b_1+venus_b_0
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

        venus_l_1 = venus_l_1 +(t**(0))*1*10213.52943052898d0*cos(0.0d0 + 0.0d0*t)
        venus_l_1 = venus_l_1 -(t**1)*10213.52943052898d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        venus_r_0 = venus_r_0 -(t**0)*0.00489824185d0*10213.285546211d0*sin(4.02151832268d0 + 10213.285546211d0 * t)
        venus_r_0 = venus_r_0 -(t**0)*0.72334820905d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        r = venus_r_0
    end function

end module VSOP87D_Nano_Velocities
