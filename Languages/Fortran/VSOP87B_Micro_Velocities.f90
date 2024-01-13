!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87B_Micro_Velocities
    implicit none

    contains
    subroutine VSOP87B_Micro_getEarthV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_b(t) / 365250.0
        result(2)=earth_l(t) / 365250.0
        result(3)=earth_r(t) / 365250.0
    end subroutine

    subroutine VSOP87B_Micro_getJupiterV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_b(t) / 365250.0
        result(2)=jupiter_l(t) / 365250.0
        result(3)=jupiter_r(t) / 365250.0
    end subroutine

    subroutine VSOP87B_Micro_getMarsV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_b(t) / 365250.0
        result(2)=mars_l(t) / 365250.0
        result(3)=mars_r(t) / 365250.0
    end subroutine

    subroutine VSOP87B_Micro_getMercuryV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_b(t) / 365250.0
        result(2)=mercury_l(t) / 365250.0
        result(3)=mercury_r(t) / 365250.0
    end subroutine

    subroutine VSOP87B_Micro_getNeptuneV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_b(t) / 365250.0
        result(2)=neptune_l(t) / 365250.0
        result(3)=neptune_r(t) / 365250.0
    end subroutine

    subroutine VSOP87B_Micro_getSaturnV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_b(t) / 365250.0
        result(2)=saturn_l(t) / 365250.0
        result(3)=saturn_r(t) / 365250.0
    end subroutine

    subroutine VSOP87B_Micro_getUranusV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_b(t) / 365250.0
        result(2)=uranus_l(t) / 365250.0
        result(3)=uranus_r(t) / 365250.0
    end subroutine

    subroutine VSOP87B_Micro_getVenusV(t, result)
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

        earth_b_1 = earth_b_1 +(t**(0))*1*0.00227777722d0*cos(3.4137662053d0 + 6283.0758499914d0*t)
        earth_b_1 = earth_b_1 -(t**1)*0.00227777722d0*6283.0758499914d0*sin(3.4137662053d0 + 6283.0758499914d0 * t)

        r = earth_b_1
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

        earth_l_0 = earth_l_0 -(t**0)*0.00034894275d0*12566.1516999828d0*sin(4.62610242189d0 + 12566.1516999828d0 * t)
        earth_l_0 = earth_l_0 -(t**0)*0.03341656453d0*6283.0758499914d0*sin(4.66925680415d0 + 6283.0758499914d0 * t)
        earth_l_0 = earth_l_0 -(t**0)*1.75347045673d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        earth_l_1 = earth_l_1 +(t**(0))*1*0.00206058863d0*cos(2.67823455808d0 + 6283.0758499914d0*t)
        earth_l_1 = earth_l_1 -(t**1)*0.00206058863d0*6283.0758499914d0*sin(2.67823455808d0 + 6283.0758499914d0 * t)
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

        earth_r_0 = earth_r_0 -(t**0)*0.00013956024d0*12566.1516999828d0*sin(3.05524609456d0 + 12566.1516999828d0 * t)
        earth_r_0 = earth_r_0 -(t**0)*0.01670699632d0*6283.0758499914d0*sin(3.09846350258d0 + 6283.0758499914d0 * t)
        earth_r_0 = earth_r_0 -(t**0)*1.00013988784d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        earth_r_1 = earth_r_1 +(t**(0))*1*0.00103018607d0*cos(1.10748968172d0 + 6283.0758499914d0*t)
        earth_r_1 = earth_r_1 -(t**1)*0.00103018607d0*6283.0758499914d0*sin(1.10748968172d0 + 6283.0758499914d0 * t)

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

        jupiter_b_0 = jupiter_b_0 -(t**0)*0.00109971634d0*1059.3819301892d0*sin(3.90809347197d0 + 1059.3819301892d0 * t)
        jupiter_b_0 = jupiter_b_0 -(t**0)*0.00110090358d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        jupiter_b_0 = jupiter_b_0 -(t**0)*0.02268615702d0*529.6909650946d0*sin(3.55852606721d0 + 529.6909650946d0 * t)

        jupiter_b_1 = jupiter_b_1 +(t**(0))*1*0.00078203446d0*cos(1.52377859742d0 + 529.6909650946d0*t)
        jupiter_b_1 = jupiter_b_1 -(t**1)*0.00078203446d0*529.6909650946d0*sin(1.52377859742d0 + 529.6909650946d0 * t)

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

        jupiter_l_0 = jupiter_l_0 -(t**0)*0.0001358973d0*1589.0728952838d0*sin(5.7748104079d0 + 1589.0728952838d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.00027964629d0*536.8045120954d0*sin(1.7845459182d0 + 536.8045120954d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.00038857767d0*316.3918696566d0*sin(1.27231755835d0 + 316.3918696566d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.00039806064d0*419.4846438752d0*sin(2.29376740788d0 + 419.4846438752d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.00064263975d0*103.0927742186d0*sin(3.41145165351d0 + 103.0927742186d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.00072903078d0*522.5774180938d0*sin(3.64042916389d0 + 522.5774180938d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.00097178296d0*632.7837393132d0*sin(4.14264726552d0 + 632.7837393132d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.00306389205d0*1059.3819301892d0*sin(5.41734730184d0 + 1059.3819301892d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.00573610142d0*7.1135470008d0*sin(1.44406205629d0 + 7.1135470008d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.09695898719d0*529.6909650946d0*sin(5.06191793158d0 + 529.6909650946d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.59954691494d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*0.00012103653d0*cos(0.16994816098d0 + 536.8045120954d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*0.00012103653d0*536.8045120954d0*sin(0.16994816098d0 + 536.8045120954d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*0.0002072092d0*cos(5.45943156902d0 + 522.5774180938d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*0.0002072092d0*522.5774180938d0*sin(5.45943156902d0 + 522.5774180938d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*0.00030099479d0*cos(4.54540782858d0 + 1059.3819301892d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*0.00030099479d0*1059.3819301892d0*sin(4.54540782858d0 + 1059.3819301892d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*0.00228917222d0*cos(6.02646855621d0 + 7.1135470008d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*0.00228917222d0*7.1135470008d0*sin(6.02646855621d0 + 7.1135470008d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*0.00489503243d0*cos(4.2208293947d0 + 529.6909650946d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*0.00489503243d0*529.6909650946d0*sin(4.2208293947d0 + 529.6909650946d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*529.69096508814d0*cos(0.0d0 + 0.0d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*529.69096508814d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        jupiter_l_2 = jupiter_l_2 +(t**(1))*2*0.00014837605d0*cos(3.14159265359d0 + 0.0d0*t)
        jupiter_l_2 = jupiter_l_2 -(t**2)*0.00014837605d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        jupiter_l_2 = jupiter_l_2 +(t**(1))*2*0.00030649436d0*cos(2.929777887d0 + 529.6909650946d0*t)
        jupiter_l_2 = jupiter_l_2 -(t**2)*0.00030649436d0*529.6909650946d0*sin(2.929777887d0 + 529.6909650946d0 * t)
        jupiter_l_2 = jupiter_l_2 +(t**(1))*2*0.00047233601d0*cos(4.32148536482d0 + 7.1135470008d0*t)
        jupiter_l_2 = jupiter_l_2 -(t**2)*0.00047233601d0*7.1135470008d0*sin(4.32148536482d0 + 7.1135470008d0 * t)

        r = jupiter_l_2+jupiter_l_1+jupiter_l_0
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

        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00012749023d0*1052.2683831884d0*sin(2.71550286592d0 + 1052.2683831884d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00013032614d0*1162.4747044078d0*sin(2.96042965363d0 + 1162.4747044078d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00022283743d0*1589.0728952838d0*sin(4.19362594399d0 + 1589.0728952838d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00023453271d0*735.8765135318d0*sin(3.54023522184d0 + 735.8765135318d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00023947298d0*7.1135470008d0*sin(0.2745803748d0 + 7.1135470008d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00029134542d0*103.0927742186d0*sin(1.67759379655d0 + 103.0927742186d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00030135335d0*949.1756089698d0*sin(2.16132003734d0 + 949.1756089698d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00065517248d0*316.3918696566d0*sin(5.9799588479d0 + 316.3918696566d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00072062974d0*536.8045120954d0*sin(0.21465724607d0 + 536.8045120954d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00086792905d0*419.4846438752d0*sin(0.71001145545d0 + 419.4846438752d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00187647346d0*522.5774180938d0*sin(2.07590383214d0 + 522.5774180938d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00282029458d0*632.7837393132d0*sin(2.57419881293d0 + 632.7837393132d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00610599976d0*1059.3819301892d0*sin(3.84115365948d0 + 1059.3819301892d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.25209327119d0*529.6909650946d0*sin(3.49108639871d0 + 529.6909650946d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*5.20887429326d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*0.00011847263d0*cos(2.41328764459d0 + 419.4846438752d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*0.00011847263d0*419.4846438752d0*sin(2.41328764459d0 + 419.4846438752d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*0.00031185171d0*cos(4.88276958012d0 + 536.8045120954d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*0.00031185171d0*536.8045120954d0*sin(4.88276958012d0 + 536.8045120954d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*0.00041390269d0*cos(0.0d0 + 0.0d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*0.00041390269d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*0.00053443713d0*cos(3.89717383175d0 + 522.5774180938d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*0.00053443713d0*522.5774180938d0*sin(3.89717383175d0 + 522.5774180938d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*0.00061661816d0*cos(3.00076460387d0 + 1059.3819301892d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*0.00061661816d0*1059.3819301892d0*sin(3.00076460387d0 + 1059.3819301892d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*0.0127180152d0*cos(2.64937512894d0 + 529.6909650946d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*0.0127180152d0*529.6909650946d0*sin(2.64937512894d0 + 529.6909650946d0 * t)

        jupiter_r_2 = jupiter_r_2 +(t**(1))*2*0.00079644957d0*cos(1.35865949884d0 + 529.6909650946d0*t)
        jupiter_r_2 = jupiter_r_2 -(t**2)*0.00079644957d0*529.6909650946d0*sin(1.35865949884d0 + 529.6909650946d0 * t)

        r = jupiter_r_2+jupiter_r_1+jupiter_r_0
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

        mars_b_0 = mars_b_0 -(t**0)*0.00031365539d0*10021.8372800994d0*sin(4.4465105309d0 + 10021.8372800994d0 * t)
        mars_b_0 = mars_b_0 -(t**0)*0.00289104742d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mars_b_0 = mars_b_0 -(t**0)*0.00298033234d0*6681.2248533996d0*sin(4.10616996305d0 + 6681.2248533996d0 * t)
        mars_b_0 = mars_b_0 -(t**0)*0.03197134986d0*3340.6124266998d0*sin(3.76832042431d0 + 3340.6124266998d0 * t)

        mars_b_1 = mars_b_1 +(t**(0))*1*0.00012834709d0*cos(1.60810667915d0 + 6681.2248533996d0*t)
        mars_b_1 = mars_b_1 -(t**1)*0.00012834709d0*6681.2248533996d0*sin(1.60810667915d0 + 6681.2248533996d0 * t)
        mars_b_1 = mars_b_1 +(t**(0))*1*0.00020976948d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_b_1 = mars_b_1 -(t**1)*0.00020976948d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mars_b_1 = mars_b_1 +(t**(0))*1*0.00217310991d0*cos(6.04472194776d0 + 3340.6124266998d0*t)
        mars_b_1 = mars_b_1 -(t**1)*0.00217310991d0*3340.6124266998d0*sin(6.04472194776d0 + 3340.6124266998d0 * t)

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

        mars_l_0 = mars_l_0 -(t**0)*0.00010610235d0*2281.2304965106d0*sin(2.93958560338d0 + 2281.2304965106d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*0.00012315897d0*2810.9214616052d0*sin(0.84956094002d0 + 2810.9214616052d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*0.00027744987d0*3.523118349d0*sin(5.97049513147d0 + 3.523118349d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*0.00091798406d0*10021.8372800994d0*sin(5.75478744667d0 + 10021.8372800994d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*0.01108216816d0*6681.2248533996d0*sin(5.40099836344d0 + 6681.2248533996d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*0.18656368093d0*3340.6124266998d0*sin(5.0503710027d0 + 3340.6124266998d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*6.20347711581d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mars_l_1 = mars_l_1 +(t**(0))*1*0.00020622975d0*cos(4.26108844583d0 + 10021.8372800994d0*t)
        mars_l_1 = mars_l_1 -(t**1)*0.00020622975d0*10021.8372800994d0*sin(4.26108844583d0 + 10021.8372800994d0 * t)
        mars_l_1 = mars_l_1 +(t**(0))*1*0.00168414711d0*cos(3.92318567804d0 + 6681.2248533996d0*t)
        mars_l_1 = mars_l_1 -(t**1)*0.00168414711d0*6681.2248533996d0*sin(3.92318567804d0 + 6681.2248533996d0 * t)
        mars_l_1 = mars_l_1 +(t**(0))*1*0.01457554523d0*cos(3.60433733236d0 + 3340.6124266998d0*t)
        mars_l_1 = mars_l_1 -(t**1)*0.01457554523d0*3340.6124266998d0*sin(3.60433733236d0 + 3340.6124266998d0 * t)
        mars_l_1 = mars_l_1 +(t**(0))*1*3340.61242700512d0*cos(0.0d0 + 0.0d0*t)
        mars_l_1 = mars_l_1 -(t**1)*3340.61242700512d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mars_l_2 = mars_l_2 +(t**(1))*2*0.00013459579d0*cos(2.45738706163d0 + 6681.2248533996d0*t)
        mars_l_2 = mars_l_2 -(t**2)*0.00013459579d0*6681.2248533996d0*sin(2.45738706163d0 + 6681.2248533996d0 * t)
        mars_l_2 = mars_l_2 +(t**(1))*2*0.00058152577d0*cos(2.04961712429d0 + 3340.6124266998d0*t)
        mars_l_2 = mars_l_2 -(t**2)*0.00058152577d0*3340.6124266998d0*sin(2.04961712429d0 + 3340.6124266998d0 * t)

        r = mars_l_2+mars_l_1+mars_l_0
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

        mars_r_0 = mars_r_0 -(t**0)*0.00046179117d0*10021.8372800994d0*sin(4.15595316782d0 + 10021.8372800994d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*0.00660776362d0*6681.2248533996d0*sin(3.81783443019d0 + 6681.2248533996d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*0.1418495316d0*3340.6124266998d0*sin(3.47971283528d0 + 3340.6124266998d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*1.53033488271d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mars_r_1 = mars_r_1 +(t**(0))*1*0.0001081588d0*cos(2.70888095665d0 + 10021.8372800994d0*t)
        mars_r_1 = mars_r_1 -(t**1)*0.0001081588d0*10021.8372800994d0*sin(2.70888095665d0 + 10021.8372800994d0 * t)
        mars_r_1 = mars_r_1 +(t**(0))*1*0.000128772d0*cos(0.0d0 + 0.0d0*t)
        mars_r_1 = mars_r_1 -(t**1)*0.000128772d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mars_r_1 = mars_r_1 +(t**(0))*1*0.00103175887d0*cos(2.37071847807d0 + 6681.2248533996d0*t)
        mars_r_1 = mars_r_1 -(t**1)*0.00103175887d0*6681.2248533996d0*sin(2.37071847807d0 + 6681.2248533996d0 * t)
        mars_r_1 = mars_r_1 +(t**(0))*1*0.01107433345d0*cos(2.03250524857d0 + 3340.6124266998d0*t)
        mars_r_1 = mars_r_1 -(t**1)*0.01107433345d0*3340.6124266998d0*sin(2.03250524857d0 + 3340.6124266998d0 * t)

        mars_r_2 = mars_r_2 +(t**(1))*2*0.00044242249d0*cos(0.47930604954d0 + 3340.6124266998d0*t)
        mars_r_2 = mars_r_2 -(t**2)*0.00044242249d0*3340.6124266998d0*sin(0.47930604954d0 + 3340.6124266998d0 * t)

        r = mars_r_2+mars_r_1+mars_r_0
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

        mercury_b_0 = mercury_b_0 -(t**0)*0.00031866927d0*130439.51570787099d0*sin(1.58088495658d0 + 130439.51570787099d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.0012977877d0*104351.61256629678d0*sin(4.83232503958d0 + 104351.61256629678d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.0054325181d0*78263.70942472259d0*sin(1.79644363964d0 + 78263.70942472259d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.01222839532d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.02388076996d0*52175.8062831484d0*sin(5.03738959686d0 + 52175.8062831484d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.11737528961d0*26087.9031415742d0*sin(1.98357498767d0 + 26087.9031415742d0 * t)

        mercury_b_1 = mercury_b_1 +(t**(0))*1*0.00018772047d0*cos(0.05141288887d0 + 78263.70942472259d0*t)
        mercury_b_1 = mercury_b_1 -(t**1)*0.00018772047d0*78263.70942472259d0*sin(0.05141288887d0 + 78263.70942472259d0 * t)
        mercury_b_1 = mercury_b_1 +(t**(0))*1*0.00023970726d0*cos(2.53272082947d0 + 52175.8062831484d0*t)
        mercury_b_1 = mercury_b_1 -(t**1)*0.00023970726d0*52175.8062831484d0*sin(2.53272082947d0 + 52175.8062831484d0 * t)
        mercury_b_1 = mercury_b_1 +(t**(0))*1*0.00099737713d0*cos(3.14159265359d0 + 0.0d0*t)
        mercury_b_1 = mercury_b_1 -(t**1)*0.00099737713d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_b_1 = mercury_b_1 +(t**(0))*1*0.00274646065d0*cos(3.95008450011d0 + 26087.9031415742d0*t)
        mercury_b_1 = mercury_b_1 -(t**1)*0.00274646065d0*26087.9031415742d0*sin(3.95008450011d0 + 26087.9031415742d0 * t)

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

        mercury_l_0 = mercury_l_0 -(t**0)*0.00034561897d0*130439.51570787099d0*sin(0.77930768443d0 + 130439.51570787099d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*0.00165590362d0*104351.61256629678d0*sin(4.11969163423d0 + 104351.61256629678d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*0.00855346844d0*78263.70942472259d0*sin(1.16520322459d0 + 78263.70942472259d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*0.050462942d0*52175.8062831484d0*sin(4.47785489551d0 + 52175.8062831484d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*0.40989414977d0*26087.9031415742d0*sin(1.48302034195d0 + 26087.9031415742d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*4.40250710144d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mercury_l_1 = mercury_l_1 +(t**(0))*1*0.00019676525d0*cos(2.80965111777d0 + 104351.61256629678d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*0.00019676525d0*104351.61256629678d0*sin(2.80965111777d0 + 104351.61256629678d0 * t)
        mercury_l_1 = mercury_l_1 +(t**(0))*1*0.00075775081d0*cos(6.08568821653d0 + 78263.70942472259d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*0.00075775081d0*78263.70942472259d0*sin(6.08568821653d0 + 78263.70942472259d0 * t)
        mercury_l_1 = mercury_l_1 +(t**(0))*1*0.00292242298d0*cos(3.04449355541d0 + 52175.8062831484d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*0.00292242298d0*52175.8062831484d0*sin(3.04449355541d0 + 52175.8062831484d0 * t)
        mercury_l_1 = mercury_l_1 +(t**(0))*1*0.01131199811d0*cos(6.21874197797d0 + 26087.9031415742d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*0.01131199811d0*26087.9031415742d0*sin(6.21874197797d0 + 26087.9031415742d0 * t)
        mercury_l_1 = mercury_l_1 +(t**(0))*1*26087.90313685529d0*cos(0.0d0 + 0.0d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*26087.90313685529d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mercury_l_2 = mercury_l_2 +(t**(1))*2*0.00016395129d0*cos(4.67759555504d0 + 26087.9031415742d0*t)
        mercury_l_2 = mercury_l_2 -(t**2)*0.00016395129d0*26087.9031415742d0*sin(4.67759555504d0 + 26087.9031415742d0 * t)

        r = mercury_l_2+mercury_l_1+mercury_l_0
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

        mercury_r_0 = mercury_r_0 -(t**0)*0.00021921969d0*104351.61256629678d0*sin(2.77820093972d0 + 104351.61256629678d0 * t)
        mercury_r_0 = mercury_r_0 -(t**0)*0.00121281764d0*78263.70942472259d0*sin(6.01064153797d0 + 78263.70942472259d0 * t)
        mercury_r_0 = mercury_r_0 -(t**0)*0.00795525558d0*52175.8062831484d0*sin(2.95989690104d0 + 52175.8062831484d0 * t)
        mercury_r_0 = mercury_r_0 -(t**0)*0.07834131818d0*26087.9031415742d0*sin(6.19233722598d0 + 26087.9031415742d0 * t)
        mercury_r_0 = mercury_r_0 -(t**0)*0.39528271651d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mercury_r_1 = mercury_r_1 +(t**(0))*1*0.00010094479d0*cos(4.47466326327d0 + 78263.70942472259d0*t)
        mercury_r_1 = mercury_r_1 -(t**1)*0.00010094479d0*78263.70942472259d0*sin(4.47466326327d0 + 78263.70942472259d0 * t)
        mercury_r_1 = mercury_r_1 +(t**(0))*1*0.00044141826d0*cos(1.42385544001d0 + 52175.8062831484d0*t)
        mercury_r_1 = mercury_r_1 -(t**1)*0.00044141826d0*52175.8062831484d0*sin(1.42385544001d0 + 52175.8062831484d0 * t)
        mercury_r_1 = mercury_r_1 +(t**(0))*1*0.0021734774d0*cos(4.65617158665d0 + 26087.9031415742d0*t)
        mercury_r_1 = mercury_r_1 -(t**1)*0.0021734774d0*26087.9031415742d0*sin(4.65617158665d0 + 26087.9031415742d0 * t)

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

        neptune_b_0 = neptune_b_0 -(t**0)*0.00015355489d0*36.6485629295d0*sin(2.52123799551d0 + 36.6485629295d0 * t)
        neptune_b_0 = neptune_b_0 -(t**0)*0.00015448133d0*39.6175083461d0*sin(3.50877079215d0 + 39.6175083461d0 * t)
        neptune_b_0 = neptune_b_0 -(t**0)*0.00027623609d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        neptune_b_0 = neptune_b_0 -(t**0)*0.00027780087d0*76.2660712756d0*sin(5.91271884599d0 + 76.2660712756d0 * t)
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

        neptune_l_0 = neptune_l_0 -(t**0)*0.00016482741d0*491.5579294568d0*sin(7.727998d-05 + 491.5579294568d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*0.00033784738d0*76.2660712756d0*sin(1.24488874087d0 + 76.2660712756d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*0.00037714584d0*35.1640902212d0*sin(6.09221808686d0 + 35.1640902212d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*0.00042064466d0*2.9689454166d0*sin(5.41054993053d0 + 2.9689454166d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*0.00124531845d0*36.6485629295d0*sin(4.83008090676d0 + 36.6485629295d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*0.01019727652d0*1.4844727083d0*sin(0.48580922867d0 + 1.4844727083d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*0.0179847553d0*38.1330356378d0*sin(2.9010127389d0 + 38.1330356378d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*5.31188633046d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        neptune_l_1 = neptune_l_1 +(t**(0))*1*0.00015744045d0*cos(2.27887427527d0 + 38.1330356378d0*t)
        neptune_l_1 = neptune_l_1 -(t**1)*0.00015744045d0*38.1330356378d0*sin(2.27887427527d0 + 38.1330356378d0 * t)
        neptune_l_1 = neptune_l_1 +(t**(0))*1*0.00016604172d0*cos(4.86323329249d0 + 1.4844727083d0*t)
        neptune_l_1 = neptune_l_1 -(t**1)*0.00016604172d0*1.4844727083d0*sin(4.86323329249d0 + 1.4844727083d0 * t)
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

        neptune_r_0 = neptune_r_0 -(t**0)*0.0001201232d0*1021.2488945514d0*sin(1.92059384991d0 + 1021.2488945514d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00014229808d0*74.7815985673d0*sin(1.07785898723d0 + 74.7815985673d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00016939478d0*71.8126531507d0*sin(1.59422512526d0 + 71.8126531507d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00024594531d0*109.9456887885d0*sin(0.50801745878d0 + 109.9456887885d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00046687836d0*33.6796175129d0*sin(5.74938034313d0 + 33.6796175129d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00069791331d0*2.9689454166d0*sin(3.79616637768d0 + 2.9689454166d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00100896068d0*73.297125859d0*sin(0.3770272493d0 + 73.297125859d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00121801746d0*76.2660712756d0*sin(5.79754470298d0 + 76.2660712756d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00135134092d0*39.6175083461d0*sin(3.37220609835d0 + 39.6175083461d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00274571975d0*175.1660598002d0*sin(1.84552258866d0 + 175.1660598002d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00495725141d0*491.5579294568d0*sin(1.5710564165d0 + 491.5579294568d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.0053776051d0*35.1640902212d0*sin(4.52113935896d0 + 35.1640902212d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00807830553d0*1.4844727083d0*sin(5.18592878704d0 + 1.4844727083d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.01691764014d0*36.6485629295d0*sin(3.25186135653d0 + 36.6485629295d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.27062259632d0*38.1330356378d0*sin(1.32999459377d0 + 38.1330356378d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*30.07013205828d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        neptune_r_1 = neptune_r_1 +(t**(0))*1*0.00013220034d0*cos(3.3201438793d0 + 1.4844727083d0*t)
        neptune_r_1 = neptune_r_1 -(t**1)*0.00013220034d0*1.4844727083d0*sin(3.3201438793d0 + 1.4844727083d0 * t)
        neptune_r_1 = neptune_r_1 +(t**(0))*1*0.00236338618d0*cos(0.70497954792d0 + 38.1330356378d0*t)
        neptune_r_1 = neptune_r_1 -(t**1)*0.00236338618d0*38.1330356378d0*sin(0.70497954792d0 + 38.1330356378d0 * t)

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

        saturn_b_0 = saturn_b_0 -(t**0)*0.0001473407d0*639.897286314d0*sin(2.11846596715d0 + 639.897286314d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*0.00030863357d0*220.4126424388d0*sin(3.48441504555d0 + 220.4126424388d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*0.00034116062d0*206.1855484372d0*sin(0.57297307557d0 + 206.1855484372d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*0.00084745939d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*0.00240348302d0*426.598190876d0*sin(2.85238489373d0 + 426.598190876d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*0.04330678039d0*213.299095438d0*sin(3.60284428399d0 + 213.299095438d0 * t)

        saturn_b_1 = saturn_b_1 +(t**(0))*1*0.00010919721d0*cos(1.79463271368d0 + 220.4126424388d0*t)
        saturn_b_1 = saturn_b_1 -(t**1)*0.00010919721d0*220.4126424388d0*sin(1.79463271368d0 + 220.4126424388d0 * t)
        saturn_b_1 = saturn_b_1 +(t**(0))*1*0.00013320265d0*cos(2.26481519893d0 + 206.1855484372d0*t)
        saturn_b_1 = saturn_b_1 -(t**1)*0.00013320265d0*206.1855484372d0*sin(2.26481519893d0 + 206.1855484372d0 * t)
        saturn_b_1 = saturn_b_1 +(t**(0))*1*0.00017966989d0*cos(0.5197943111d0 + 426.598190876d0*t)
        saturn_b_1 = saturn_b_1 -(t**1)*0.00017966989d0*426.598190876d0*sin(0.5197943111d0 + 426.598190876d0 * t)
        saturn_b_1 = saturn_b_1 +(t**(0))*1*0.00036947916d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_b_1 = saturn_b_1 -(t**1)*0.00036947916d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_b_1 = saturn_b_1 +(t**(0))*1*0.00198927992d0*cos(4.93901017903d0 + 213.299095438d0*t)
        saturn_b_1 = saturn_b_1 -(t**1)*0.00198927992d0*213.299095438d0*sin(4.93901017903d0 + 213.299095438d0 * t)

        saturn_b_2 = saturn_b_2 +(t**(1))*2*0.00013884264d0*cos(0.08994998691d0 + 213.299095438d0*t)
        saturn_b_2 = saturn_b_2 -(t**2)*0.00013884264d0*213.299095438d0*sin(0.08994998691d0 + 213.299095438d0 * t)

        r = saturn_b_2+saturn_b_1+saturn_b_0
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

        saturn_l_0 = saturn_l_0 -(t**0)*0.00010725067d0*202.2533951741d0*sin(3.12939523827d0 + 202.2533951741d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00013005299d0*11.0457002639d0*sin(5.98119023644d0 + 11.0457002639d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00013160301d0*14.2270940016d0*sin(4.44891291899d0 + 14.2270940016d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00014609559d0*3.9321532631d0*sin(1.56518472d0 + 3.9321532631d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00014906995d0*316.3918696566d0*sin(5.76903183869d0 + 316.3918696566d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00015053543d0*639.897286314d0*sin(2.71669915667d0 + 639.897286314d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.0001582029d0*632.7837393132d0*sin(0.93809155235d0 + 632.7837393132d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00016573588d0*419.4846438752d0*sin(0.43719228296d0 + 419.4846438752d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00023990355d0*110.2063212194d0*sin(4.66976924553d0 + 110.2063212194d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.000792713d0*220.4126424388d0*sin(3.84007056878d0 + 220.4126424388d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00206816305d0*103.0927742186d0*sin(0.24658372002d0 + 103.0927742186d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00350769243d0*426.598190876d0*sin(3.30329907896d0 + 426.598190876d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00398379389d0*206.1855484372d0*sin(0.52112032699d0 + 206.1855484372d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.01414150957d0*7.1135470008d0*sin(4.58581516874d0 + 7.1135470008d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.11107659762d0*213.299095438d0*sin(3.96205090159d0 + 213.299095438d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.87401354025d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.00010511678d0*cos(2.7488034213d0 + 14.2270940016d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.00010511678d0*14.2270940016d0*sin(2.7488034213d0 + 14.2270940016d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.00019941774d0*cos(1.2795439047d0 + 103.0927742186d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.00019941774d0*103.0927742186d0*sin(1.2795439047d0 + 103.0927742186d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.00040244455d0*cos(2.04108104671d0 + 220.4126424388d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.00040244455d0*220.4126424388d0*sin(2.04108104671d0 + 220.4126424388d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.00093734369d0*cos(1.06311793502d0 + 426.598190876d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.00093734369d0*426.598190876d0*sin(1.06311793502d0 + 426.598190876d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.00107674962d0*cos(2.27769131009d0 + 206.1855484372d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.00107674962d0*206.1855484372d0*sin(2.27769131009d0 + 206.1855484372d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.00564345393d0*cos(2.88499717272d0 + 7.1135470008d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.00564345393d0*7.1135470008d0*sin(2.88499717272d0 + 7.1135470008d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.01297370862d0*cos(1.82834923978d0 + 213.299095438d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.01297370862d0*213.299095438d0*sin(1.82834923978d0 + 213.299095438d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*213.2990952169d0*cos(0.0d0 + 0.0d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*213.2990952169d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        saturn_l_2 = saturn_l_2 +(t**(1))*2*0.0001062983d0*cos(0.25764306189d0 + 220.4126424388d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*0.0001062983d0*220.4126424388d0*sin(0.25764306189d0 + 220.4126424388d0 * t)
        saturn_l_2 = saturn_l_2 +(t**(1))*2*0.00010987259d0*cos(5.4447918831d0 + 426.598190876d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*0.00010987259d0*426.598190876d0*sin(5.4447918831d0 + 426.598190876d0 * t)
        saturn_l_2 = saturn_l_2 +(t**(1))*2*0.00015274496d0*cos(4.06493179167d0 + 206.1855484372d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*0.00015274496d0*206.1855484372d0*sin(4.06493179167d0 + 206.1855484372d0 * t)
        saturn_l_2 = saturn_l_2 +(t**(1))*2*0.00036661728d0*cos(0.0d0 + 0.0d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*0.00036661728d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_l_2 = saturn_l_2 +(t**(1))*2*0.00091841837d0*cos(0.0732519584d0 + 213.299095438d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*0.00091841837d0*213.299095438d0*sin(0.0732519584d0 + 213.299095438d0 * t)
        saturn_l_2 = saturn_l_2 +(t**(1))*2*0.0011644133d0*cos(1.17988132879d0 + 7.1135470008d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*0.0011644133d0*7.1135470008d0*sin(1.17988132879d0 + 7.1135470008d0 * t)

        saturn_l_3 = saturn_l_3 +(t**(2))*3*0.00016038732d0*cos(5.73945573267d0 + 7.1135470008d0*t)
        saturn_l_3 = saturn_l_3 -(t**3)*0.00016038732d0*7.1135470008d0*sin(5.73945573267d0 + 7.1135470008d0 * t)

        r = saturn_l_3+saturn_l_2+saturn_l_1+saturn_l_0
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

        saturn_r_0 = saturn_r_0 -(t**0)*0.00011380257d0*522.5774180938d0*sin(1.7310542704d0 + 522.5774180938d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00011993338d0*846.0828347512d0*sin(5.98050967385d0 + 846.0828347512d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00012884624d0*138.5174968707d0*sin(1.64890652873d0 + 138.5174968707d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00014296484d0*323.5054166574d0*sin(2.60433479142d0 + 323.5054166574d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00015298404d0*529.6909650946d0*sin(3.0594381494d0 + 529.6909650946d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00020746751d0*199.0720014364d0*sin(5.33255457763d0 + 199.0720014364d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.000208393d0*433.7117378768d0*sin(1.52102476129d0 + 433.7117378768d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00020936596d0*735.8765135318d0*sin(0.46349251129d0 + 735.8765135318d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00032401773d0*949.1756089698d0*sin(5.47084567016d0 + 949.1756089698d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00034143772d0*277.0349937414d0*sin(0.19519102597d0 + 277.0349937414d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00048913294d0*202.2533951741d0*sin(1.55733638681d0 + 202.2533951741d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00061053367d0*639.897286314d0*sin(0.94037691801d0 + 639.897286314d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00069006962d0*419.4846438752d0*sin(5.94099540992d0 + 419.4846438752d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00108974848d0*110.2063212194d0*sin(3.29313390175d0 + 110.2063212194d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00140617506d0*632.7837393132d0*sin(5.70406606781d0 + 632.7837393132d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00361778765d0*7.1135470008d0*sin(3.13904301847d0 + 7.1135470008d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.0037168465d0*220.4126424388d0*sin(2.27114821115d0 + 220.4126424388d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00547506923d0*103.0927742186d0*sin(5.0153261898d0 + 103.0927742186d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00821891141d0*316.3918696566d0*sin(5.93520042303d0 + 316.3918696566d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.01464663929d0*426.598190876d0*sin(1.64763042902d0 + 426.598190876d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.01873679867d0*206.1855484372d0*sin(5.2354960466d0 + 206.1855484372d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.52921382865d0*213.299095438d0*sin(2.39226219573d0 + 213.299095438d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*9.55758135486d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00012892843d0*cos(5.9432943302d0 + 433.7117378768d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00012892843d0*433.7117378768d0*sin(5.9432943302d0 + 433.7117378768d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00013876849d0*cos(0.75884928866d0 + 199.0720014364d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00013876849d0*199.0720014364d0*sin(0.75884928866d0 + 199.0720014364d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00018839544d0*cos(1.60818334043d0 + 110.2063212194d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00018839544d0*110.2063212194d0*sin(1.60818334043d0 + 110.2063212194d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00019952564d0*cos(1.1756060613d0 + 419.4846438752d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00019952564d0*419.4846438752d0*sin(1.1756060613d0 + 419.4846438752d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00020928426d0*cos(5.09244947411d0 + 639.897286314d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00020928426d0*639.897286314d0*sin(5.09244947411d0 + 639.897286314d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00049621208d0*cos(6.0174427982d0 + 103.0927742186d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00049621208d0*103.0927742186d0*sin(6.0174427982d0 + 103.0927742186d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00143891146d0*cos(1.40744822888d0 + 7.1135470008d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00143891146d0*7.1135470008d0*sin(1.40744822888d0 + 7.1135470008d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00186261486d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00186261486d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00188491195d0*cos(0.47215589652d0 + 220.4126424388d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00188491195d0*220.4126424388d0*sin(0.47215589652d0 + 220.4126424388d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00341394029d0*cos(5.79635741658d0 + 426.598190876d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00341394029d0*426.598190876d0*sin(5.79635741658d0 + 426.598190876d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00506577242d0*cos(0.71114625261d0 + 206.1855484372d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00506577242d0*206.1855484372d0*sin(0.71114625261d0 + 206.1855484372d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.0618298134d0*cos(0.2584351148d0 + 213.299095438d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.0618298134d0*213.299095438d0*sin(0.2584351148d0 + 213.299095438d0 * t)

        saturn_r_2 = saturn_r_2 +(t**(1))*2*0.00029645766d0*cos(5.96309886479d0 + 7.1135470008d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*0.00029645766d0*7.1135470008d0*sin(5.96309886479d0 + 7.1135470008d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*0.00043220783d0*cos(3.86941044212d0 + 426.598190876d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*0.00043220783d0*426.598190876d0*sin(3.86941044212d0 + 426.598190876d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*0.00049766872d0*cos(4.97167777235d0 + 220.4126424388d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*0.00049766872d0*220.4126424388d0*sin(4.97167777235d0 + 220.4126424388d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*0.00071922498d0*cos(2.5007006993d0 + 206.1855484372d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*0.00071922498d0*206.1855484372d0*sin(2.5007006993d0 + 206.1855484372d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*0.00436902572d0*cos(4.78671677509d0 + 213.299095438d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*0.00436902572d0*213.299095438d0*sin(4.78671677509d0 + 213.299095438d0 * t)

        saturn_r_3 = saturn_r_3 +(t**(2))*3*0.00020315239d0*cos(3.02186068237d0 + 213.299095438d0*t)
        saturn_r_3 = saturn_r_3 -(t**3)*0.00020315239d0*213.299095438d0*sin(3.02186068237d0 + 213.299095438d0 * t)

        r = saturn_r_3+saturn_r_2+saturn_r_1+saturn_r_0
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

        uranus_b_0 = uranus_b_0 -(t**0)*0.00061601196d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        uranus_b_0 = uranus_b_0 -(t**0)*0.000623414d0*149.5631971346d0*sin(5.08111189648d0 + 149.5631971346d0 * t)
        uranus_b_0 = uranus_b_0 -(t**0)*0.01346277648d0*74.7815985673d0*sin(2.61877810547d0 + 74.7815985673d0 * t)

        uranus_b_1 = uranus_b_1 +(t**(0))*1*0.00034101978d0*cos(0.01321929936d0 + 74.7815985673d0*t)
        uranus_b_1 = uranus_b_1 -(t**1)*0.00034101978d0*74.7815985673d0*sin(0.01321929936d0 + 74.7815985673d0 * t)

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

        uranus_l_0 = uranus_l_0 -(t**0)*0.0001099791d0*138.5174968707d0*sin(0.48865004018d0 + 138.5174968707d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00011162509d0*224.3447957019d0*sin(5.8268179635d0 + 224.3447957019d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00014613507d0*3.9321532631d0*sin(4.73732166022d0 + 3.9321532631d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00017818647d0*36.6485629295d0*sin(1.74436930289d0 + 36.6485629295d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.0002107885d0*148.0787244263d0*sin(4.36059339067d0 + 148.0787244263d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00025710476d0*454.9093665273d0*sin(6.11379840493d0 + 454.9093665273d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.0002646877d0*71.8126531507d0*sin(3.14152083966d0 + 71.8126531507d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00061950719d0*11.0457002639d0*sin(2.85098872691d0 + 11.0457002639d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00061998615d0*2.9689454166d0*sin(2.26952066061d0 + 2.9689454166d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00068892678d0*76.2660712756d0*sin(6.09292483287d0 + 76.2660712756d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00070328461d0*63.7358983034d0*sin(5.39254450063d0 + 63.7358983034d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00272328168d0*149.5631971346d0*sin(3.35823706307d0 + 149.5631971346d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00365981674d0*73.297125859d0*sin(1.89962179044d0 + 73.297125859d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.01504247898d0*1.4844727083d0*sin(3.6271926092d0 + 1.4844727083d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.09260408234d0*74.7815985673d0*sin(0.89106421507d0 + 74.7815985673d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*5.48129294297d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        uranus_l_1 = uranus_l_1 +(t**(0))*1*0.00024456474d0*cos(1.71260334156d0 + 1.4844727083d0*t)
        uranus_l_1 = uranus_l_1 -(t**1)*0.00024456474d0*1.4844727083d0*sin(1.71260334156d0 + 1.4844727083d0 * t)
        uranus_l_1 = uranus_l_1 +(t**(0))*1*0.00154332863d0*cos(5.24158770553d0 + 74.7815985673d0*t)
        uranus_l_1 = uranus_l_1 -(t**1)*0.00154332863d0*74.7815985673d0*sin(5.24158770553d0 + 74.7815985673d0 * t)
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

        uranus_r_0 = uranus_r_0 -(t**0)*0.00010792498d0*213.299095438d0*sin(1.42106296264d0 + 213.299095438d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.0001149468d0*65.2203710117d0*sin(0.43772043395d0 + 65.2203710117d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00011695693d0*3.9321532631d0*sin(3.29824190199d0 + 3.9321532631d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00011852959d0*52.6901980395d0*sin(0.99344161196d0 + 52.6901980395d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00011959076d0*984.6003316219d0*sin(1.7504339214d0 + 984.6003316219d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00012328114d0*127.4717966068d0*sin(5.96037276805d0 + 127.4717966068d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00012896452d0*111.4301614968d0*sin(2.62154084288d0 + 111.4301614968d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00014701666d0*108.4612160802d0*sin(4.90434516516d0 + 108.4612160802d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00015502375d0*38.1330356378d0*sin(5.35405396163d0 + 38.1330356378d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.000179013d0*2.9689454166d0*sin(0.55455066863d0 + 2.9689454166d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00020471591d0*202.2533951741d0*sin(1.55587964879d0 + 202.2533951741d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00020473534d0*70.3281804424d0*sin(2.79640244248d0 + 70.3281804424d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00022637073d0*529.6909650946d0*sin(0.72518687029d0 + 529.6909650946d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00025620756d0*380.12776796d0*sin(5.25656086672d0 + 380.12776796d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.0002578588d0*85.8272988312d0*sin(3.7853770987d0 + 85.8272988312d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00029156413d0*77.7505439839d0*sin(3.180563367d0 + 77.7505439839d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00030348723d0*151.0476698429d0*sin(0.70100838798d0 + 151.0476698429d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00036755274d0*146.594251718d0*sin(3.88649278513d0 + 146.594251718d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00039009723d0*70.8494453042d0*sin(1.66971401684d0 + 70.8494453042d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00039025624d0*277.0349937414d0*sin(3.36234773834d0 + 277.0349937414d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00046677296d0*35.1640902212d0*sin(1.39976401694d0 + 35.1640902212d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00071424548d0*224.3447957019d0*sin(4.24509236074d0 + 224.3447957019d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00089806014d0*109.9456887885d0*sin(3.66105364565d0 + 109.9456887885d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00093192405d0*36.6485629295d0*sin(0.17437220467d0 + 36.6485629295d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00143706183d0*11.0457002639d0*sin(1.38368544947d0 + 11.0457002639d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00161858838d0*148.0787244263d0*sin(2.79137786799d0 + 148.0787244263d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00190522303d0*1.4844727083d0*sin(1.99809394714d0 + 1.4844727083d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00243509114d0*71.8126531507d0*sin(1.57086606044d0 + 71.8126531507d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00338525369d0*138.5174968707d0*sin(1.58002770318d0 + 138.5174968707d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00496404167d0*454.9093665273d0*sin(1.40139935333d0 + 454.9093665273d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00602247865d0*63.7358983034d0*sin(3.86003823674d0 + 63.7358983034d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.0064932241d0*76.2660712756d0*sin(4.52247285911d0 + 76.2660712756d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.0205565386d0*149.5631971346d0*sin(1.7829515933d0 + 149.5631971346d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.03440836062d0*73.297125859d0*sin(0.32836099706d0 + 73.297125859d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.88784984413d0*74.7815985673d0*sin(5.60377527014d0 + 74.7815985673d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*19.21264847206d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        uranus_r_1 = uranus_r_1 +(t**(0))*1*0.00011405056d0*cos(0.01849738017d0 + 70.8494453042d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*0.00011405056d0*70.8494453042d0*sin(0.01849738017d0 + 70.8494453042d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*0.00020857554d0*cos(5.2462584896d0 + 11.0457002639d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*0.00020857554d0*11.0457002639d0*sin(5.2462584896d0 + 11.0457002639d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*0.00021468362d0*cos(2.60175716374d0 + 76.2660712756d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*0.00021468362d0*76.2660712756d0*sin(2.60175716374d0 + 76.2660712756d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*0.00024059369d0*cos(3.14159265359d0 + 0.0d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*0.00024059369d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*0.0006862716d0*cos(6.13411179902d0 + 149.5631971346d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*0.0006862716d0*149.5631971346d0*sin(6.13411179902d0 + 149.5631971346d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*0.00071212143d0*cos(6.22600975161d0 + 63.7358983034d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*0.00071212143d0*63.7358983034d0*sin(6.22600975161d0 + 63.7358983034d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*0.01479896629d0*cos(3.67205697578d0 + 74.7815985673d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*0.01479896629d0*74.7815985673d0*sin(3.67205697578d0 + 74.7815985673d0 * t)

        uranus_r_2 = uranus_r_2 +(t**(1))*2*0.00022439899d0*cos(0.69953310903d0 + 74.7815985673d0*t)
        uranus_r_2 = uranus_r_2 -(t**2)*0.00022439899d0*74.7815985673d0*sin(0.69953310903d0 + 74.7815985673d0 * t)

        r = uranus_r_2+uranus_r_1+uranus_r_0
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

        venus_b_0 = venus_b_0 -(t**0)*0.00032814918d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        venus_b_0 = venus_b_0 -(t**0)*0.00040107978d0*20426.571092422d0*sin(1.14737178112d0 + 20426.571092422d0 * t)
        venus_b_0 = venus_b_0 -(t**0)*0.05923638472d0*10213.285546211d0*sin(0.26702775812d0 + 10213.285546211d0 * t)

        venus_b_1 = venus_b_1 +(t**(0))*1*0.00287821243d0*cos(1.88964962838d0 + 10213.285546211d0*t)
        venus_b_1 = venus_b_1 -(t**1)*0.00287821243d0*10213.285546211d0*sin(1.88964962838d0 + 10213.285546211d0 * t)

        venus_b_2 = venus_b_2 +(t**(1))*2*0.00012657745d0*cos(3.34796457029d0 + 10213.285546211d0*t)
        venus_b_2 = venus_b_2 -(t**2)*0.00012657745d0*10213.285546211d0*sin(3.34796457029d0 + 10213.285546211d0 * t)

        r = venus_b_2+venus_b_1+venus_b_0
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

        venus_l_0 = venus_l_0 -(t**0)*0.00089891645d0*20426.571092422d0*sin(5.30650047764d0 + 20426.571092422d0 * t)
        venus_l_0 = venus_l_0 -(t**0)*0.01353968419d0*10213.285546211d0*sin(5.59313319619d0 + 10213.285546211d0 * t)
        venus_l_0 = venus_l_0 -(t**0)*3.17614666774d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        venus_l_1 = venus_l_1 +(t**(0))*1*0.00095617813d0*cos(2.4640651111d0 + 10213.285546211d0*t)
        venus_l_1 = venus_l_1 -(t**1)*0.00095617813d0*10213.285546211d0*sin(2.4640651111d0 + 10213.285546211d0 * t)
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

        venus_r_0 = venus_r_0 -(t**0)*0.00489824182d0*10213.285546211d0*sin(4.02151831717d0 + 10213.285546211d0 * t)
        venus_r_0 = venus_r_0 -(t**0)*0.72334820891d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        venus_r_1 = venus_r_1 +(t**(0))*1*0.00034551041d0*cos(0.89198706276d0 + 10213.285546211d0*t)
        venus_r_1 = venus_r_1 -(t**1)*0.00034551041d0*10213.285546211d0*sin(0.89198706276d0 + 10213.285546211d0 * t)

        r = venus_r_1+venus_r_0
    end function

end module VSOP87B_Micro_Velocities
