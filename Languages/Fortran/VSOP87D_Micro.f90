!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87D_Micro
    implicit none

    contains
    subroutine VSOP87D_Micro_getEarth(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_b(t)
        result(2)=earth_l(t)
        result(3)=earth_r(t)
    end subroutine

    subroutine VSOP87D_Micro_getJupiter(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_b(t)
        result(2)=jupiter_l(t)
        result(3)=jupiter_r(t)
    end subroutine

    subroutine VSOP87D_Micro_getMars(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_b(t)
        result(2)=mars_l(t)
        result(3)=mars_r(t)
    end subroutine

    subroutine VSOP87D_Micro_getMercury(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_b(t)
        result(2)=mercury_l(t)
        result(3)=mercury_r(t)
    end subroutine

    subroutine VSOP87D_Micro_getNeptune(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_b(t)
        result(2)=neptune_l(t)
        result(3)=neptune_r(t)
    end subroutine

    subroutine VSOP87D_Micro_getSaturn(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_b(t)
        result(2)=saturn_l(t)
        result(3)=saturn_r(t)
    end subroutine

    subroutine VSOP87D_Micro_getUranus(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_b(t)
        result(2)=uranus_l(t)
        result(3)=uranus_r(t)
    end subroutine

    subroutine VSOP87D_Micro_getVenus(t, result)
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

        earth_l_0 = earth_l_0 + 0.00034894275d0*cos(4.62610241759d0 + 12566.1516999828d0 * t)
        earth_l_0 = earth_l_0 + 0.03341656456d0*cos(4.66925680417d0 + 6283.0758499914d0 * t)
        earth_l_0 = earth_l_0 + 1.75347045673d0*cos(0.0d0 + 0.0d0 * t)

        earth_l_1 = earth_l_1 + 0.00206058863d0*cos(2.67823455584d0 + 6283.0758499914d0 * t)
        earth_l_1 = earth_l_1 + 6283.31966747491d0*cos(0.0d0 + 0.0d0 * t)
        earth_l_1=earth_l_1*t;

        earth_l_2 = earth_l_2 + 0.0005291887d0*cos(0.0d0 + 0.0d0 * t)
        earth_l_2=earth_l_2*t*t;

        r = earth_l_2+earth_l_1+earth_l_0
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

        earth_r_0 = earth_r_0 + 0.00013956023d0*cos(3.0552460962d0 + 12566.1516999828d0 * t)
        earth_r_0 = earth_r_0 + 0.01670699626d0*cos(3.09846350771d0 + 6283.0758499914d0 * t)
        earth_r_0 = earth_r_0 + 1.00013988799d0*cos(0.0d0 + 0.0d0 * t)

        earth_r_1 = earth_r_1 + 0.00103018608d0*cos(1.10748969588d0 + 6283.0758499914d0 * t)
        earth_r_1=earth_r_1*t;

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

        jupiter_b_0 = jupiter_b_0 + 0.00109971634d0*cos(3.90809347389d0 + 1059.3819301892d0 * t)
        jupiter_b_0 = jupiter_b_0 + 0.00110090358d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_b_0 = jupiter_b_0 + 0.02268615703d0*cos(3.55852606718d0 + 529.6909650946d0 * t)

        jupiter_b_1 = jupiter_b_1 + 0.00177351787d0*cos(5.70166488486d0 + 529.6909650946d0 * t)
        jupiter_b_1=jupiter_b_1*t;

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

        jupiter_l_0 = jupiter_l_0 + 0.00013589738d0*cos(5.7748103159d0 + 1589.0728952838d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00027964622d0*cos(1.78454589485d0 + 536.8045120954d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.0003885778d0*cos(1.2723172486d0 + 316.3918696566d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00039806051d0*cos(2.29376744855d0 + 419.4846438752d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00064263986d0*cos(3.41145185203d0 + 103.0927742186d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00072903096d0*cos(3.64042909255d0 + 522.5774180938d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.0009717828d0*cos(4.14264708819d0 + 632.7837393132d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.0030638918d0*cos(5.41734729976d0 + 1059.3819301892d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00573610145d0*cos(1.44406205976d0 + 7.1135470008d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.09695898711d0*cos(5.06191793105d0 + 529.6909650946d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.59954691495d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_l_1 = jupiter_l_1 + 0.00012105732d0*cos(0.16985765041d0 + 536.8045120954d0 * t)
        jupiter_l_1 = jupiter_l_1 + 0.00020720943d0*cos(5.45938936295d0 + 522.5774180938d0 * t)
        jupiter_l_1 = jupiter_l_1 + 0.0002765538d0*cos(4.57265956824d0 + 1059.3819301892d0 * t)
        jupiter_l_1 = jupiter_l_1 + 0.00228918538d0*cos(6.02647464016d0 + 7.1135470008d0 * t)
        jupiter_l_1 = jupiter_l_1 + 0.00489741194d0*cos(4.22066689928d0 + 529.6909650946d0 * t)
        jupiter_l_1 = jupiter_l_1 + 529.93480757497d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_l_1=jupiter_l_1*t;

        jupiter_l_2 = jupiter_l_2 + 0.00030629053d0*cos(2.93021440216d0 + 529.6909650946d0 * t)
        jupiter_l_2 = jupiter_l_2 + 0.0003896555d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_l_2 = jupiter_l_2 + 0.00047233598d0*cos(4.32148323554d0 + 7.1135470008d0 * t)
        jupiter_l_2=jupiter_l_2*t*t;

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

        jupiter_r_0 = jupiter_r_0 + 0.00012749004d0*cos(2.71550102862d0 + 1052.2683831884d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.000130326d0*cos(2.96043055741d0 + 1162.4747044078d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.0002228371d0*cos(4.19362773546d0 + 1589.0728952838d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00023453209d0*cos(3.54023147303d0 + 735.8765135318d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.0002394734d0*cos(0.27457854894d0 + 7.1135470008d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.0002913462d0*cos(1.6775924371d0 + 103.0927742186d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00030135275d0*cos(2.16132058449d0 + 949.1756089698d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00065517227d0*cos(5.97995850843d0 + 316.3918696566d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00072062869d0*cos(0.21465694745d0 + 536.8045120954d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00086792941d0*cos(0.71001090609d0 + 419.4846438752d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00187647391d0*cos(2.07590380082d0 + 522.5774180938d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00282029465d0*cos(2.57419879933d0 + 632.7837393132d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00610599902d0*cos(3.84115365602d0 + 1059.3819301892d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.2520932702d0*cos(3.49108640015d0 + 529.6909650946d0 * t)
        jupiter_r_0 = jupiter_r_0 + 5.20887429471d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_r_1 = jupiter_r_1 + 0.0001184719d0*cos(2.41329588176d0 + 419.4846438752d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.00031185167d0*cos(4.88276663526d0 + 536.8045120954d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.00041390257d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.00053443592d0*cos(3.89717644226d0 + 522.5774180938d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.00061661771d0*cos(3.00076251018d0 + 1059.3819301892d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.01271801596d0*cos(2.64937511122d0 + 529.6909650946d0 * t)
        jupiter_r_1=jupiter_r_1*t;

        jupiter_r_2 = jupiter_r_2 + 0.00079644833d0*cos(1.35865896596d0 + 529.6909650946d0 * t)
        jupiter_r_2=jupiter_r_2*t*t;

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

        mars_b_0 = mars_b_0 + 0.00031365538d0*cos(4.44651052853d0 + 10021.8372800994d0 * t)
        mars_b_0 = mars_b_0 + 0.00289104742d0*cos(0.0d0 + 0.0d0 * t)
        mars_b_0 = mars_b_0 + 0.00298033234d0*cos(4.10616996243d0 + 6681.2248533996d0 * t)
        mars_b_0 = mars_b_0 + 0.03197134986d0*cos(3.76832042432d0 + 3340.6124266998d0 * t)

        mars_b_1 = mars_b_1 + 0.0001411603d0*cos(3.14159265359d0 + 0.0d0 * t)
        mars_b_1 = mars_b_1 + 0.00350068845d0*cos(5.36847836211d0 + 3340.6124266998d0 * t)
        mars_b_1=mars_b_1*t;

        mars_b_2 = mars_b_2 + 0.0001672669d0*cos(0.60221392419d0 + 3340.6124266998d0 * t)
        mars_b_2=mars_b_2*t*t;

        r = mars_b_2+mars_b_1+mars_b_0
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

        mars_l_0 = mars_l_0 + 0.0001061023d0*cos(2.93958524973d0 + 2281.2304965106d0 * t)
        mars_l_0 = mars_l_0 + 0.00012315897d0*cos(0.84956081238d0 + 2810.9214616052d0 * t)
        mars_l_0 = mars_l_0 + 0.00027744987d0*cos(5.97049512942d0 + 3.523118349d0 * t)
        mars_l_0 = mars_l_0 + 0.00091798394d0*cos(5.75478745111d0 + 10021.8372800994d0 * t)
        mars_l_0 = mars_l_0 + 0.01108216792d0*cos(5.40099836958d0 + 6681.2248533996d0 * t)
        mars_l_0 = mars_l_0 + 0.186563681d0*cos(5.05037100303d0 + 3340.6124266998d0 * t)
        mars_l_0 = mars_l_0 + 6.20347711583d0*cos(0.0d0 + 0.0d0 * t)

        mars_l_1 = mars_l_1 + 0.00019963338d0*cos(4.2659406103d0 + 10021.8372800994d0 * t)
        mars_l_1 = mars_l_1 + 0.00164901343d0*cos(3.92631250962d0 + 6681.2248533996d0 * t)
        mars_l_1 = mars_l_1 + 0.01458227051d0*cos(3.60426053609d0 + 3340.6124266998d0 * t)
        mars_l_1 = mars_l_1 + 3340.85627474342d0*cos(0.0d0 + 0.0d0 * t)
        mars_l_1=mars_l_1*t;

        mars_l_2 = mars_l_2 + 0.00013908426d0*cos(2.45742359888d0 + 6681.2248533996d0 * t)
        mars_l_2 = mars_l_2 + 0.00054187645d0*cos(0.0d0 + 0.0d0 * t)
        mars_l_2 = mars_l_2 + 0.00058015791d0*cos(2.04979463279d0 + 3340.6124266998d0 * t)
        mars_l_2=mars_l_2*t*t;

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

        mars_r_0 = mars_r_0 + 0.00046179117d0*cos(4.15595316284d0 + 10021.8372800994d0 * t)
        mars_r_0 = mars_r_0 + 0.00660776357d0*cos(3.81783442097d0 + 6681.2248533996d0 * t)
        mars_r_0 = mars_r_0 + 0.14184953153d0*cos(3.47971283519d0 + 3340.6124266998d0 * t)
        mars_r_0 = mars_r_0 + 1.53033488276d0*cos(0.0d0 + 0.0d0 * t)

        mars_r_1 = mars_r_1 + 0.0001081588d0*cos(2.70888093803d0 + 10021.8372800994d0 * t)
        mars_r_1 = mars_r_1 + 0.000128772d0*cos(0.0d0 + 0.0d0 * t)
        mars_r_1 = mars_r_1 + 0.00103175886d0*cos(2.37071845682d0 + 6681.2248533996d0 * t)
        mars_r_1 = mars_r_1 + 0.0110743334d0*cos(2.0325052495d0 + 3340.6124266998d0 * t)
        mars_r_1=mars_r_1*t;

        mars_r_2 = mars_r_2 + 0.00044242247d0*cos(0.47930603943d0 + 3340.6124266998d0 * t)
        mars_r_2=mars_r_2*t*t;

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

        mercury_b_0 = mercury_b_0 + 0.00031866927d0*cos(1.58088495667d0 + 130439.51570787099d0 * t)
        mercury_b_0 = mercury_b_0 + 0.0012977877d0*cos(4.83232503961d0 + 104351.61256629678d0 * t)
        mercury_b_0 = mercury_b_0 + 0.0054325181d0*cos(1.79644363963d0 + 78263.70942472259d0 * t)
        mercury_b_0 = mercury_b_0 + 0.01222839532d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_b_0 = mercury_b_0 + 0.02388076996d0*cos(5.03738959685d0 + 52175.8062831484d0 * t)
        mercury_b_0 = mercury_b_0 + 0.11737528962d0*cos(1.98357498767d0 + 26087.9031415742d0 * t)

        mercury_b_1 = mercury_b_1 + 0.00010894981d0*cos(0.48540174006d0 + 78263.70942472259d0 * t)
        mercury_b_1 = mercury_b_1 + 0.00022675295d0*cos(0.0151536688d0 + 52175.8062831484d0 * t)
        mercury_b_1 = mercury_b_1 + 0.00146233668d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_b_1 = mercury_b_1 + 0.00429151362d0*cos(3.50169780393d0 + 26087.9031415742d0 * t)
        mercury_b_1=mercury_b_1*t;

        mercury_b_2 = mercury_b_2 + 0.00011830934d0*cos(4.79065585784d0 + 26087.9031415742d0 * t)
        mercury_b_2=mercury_b_2*t*t;

        r = mercury_b_2+mercury_b_1+mercury_b_0
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

        mercury_l_0 = mercury_l_0 + 0.00034561897d0*cos(0.77930765817d0 + 130439.51570787099d0 * t)
        mercury_l_0 = mercury_l_0 + 0.00165590362d0*cos(4.11969163181d0 + 104351.61256629678d0 * t)
        mercury_l_0 = mercury_l_0 + 0.00855346843d0*cos(1.16520322351d0 + 78263.70942472259d0 * t)
        mercury_l_0 = mercury_l_0 + 0.05046294199d0*cos(4.4778548954d0 + 52175.8062831484d0 * t)
        mercury_l_0 = mercury_l_0 + 0.40989414976d0*cos(1.48302034194d0 + 26087.9031415742d0 * t)
        mercury_l_0 = mercury_l_0 + 4.40250710144d0*cos(0.0d0 + 0.0d0 * t)

        mercury_l_1 = mercury_l_1 + 0.00021245035d0*cos(2.83531934452d0 + 104351.61256629678d0 * t)
        mercury_l_1 = mercury_l_1 + 0.00080538452d0*cos(6.10454743366d0 + 78263.70942472259d0 * t)
        mercury_l_1 = mercury_l_1 + 0.00303471395d0*cos(3.05565472363d0 + 52175.8062831484d0 * t)
        mercury_l_1 = mercury_l_1 + 0.01126007832d0*cos(6.21703970996d0 + 26087.9031415742d0 * t)
        mercury_l_1 = mercury_l_1 + 26088.14706222746d0*cos(0.0d0 + 0.0d0 * t)
        mercury_l_1=mercury_l_1*t;

        mercury_l_2 = mercury_l_2 + 0.00016903658d0*cos(4.69072300649d0 + 26087.9031415742d0 * t)
        mercury_l_2 = mercury_l_2 + 0.00053049845d0*cos(0.0d0 + 0.0d0 * t)
        mercury_l_2=mercury_l_2*t*t;

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

        mercury_r_0 = mercury_r_0 + 0.00021921969d0*cos(2.77820093975d0 + 104351.61256629678d0 * t)
        mercury_r_0 = mercury_r_0 + 0.00121281763d0*cos(6.01064153805d0 + 78263.70942472259d0 * t)
        mercury_r_0 = mercury_r_0 + 0.00795525557d0*cos(2.95989690096d0 + 52175.8062831484d0 * t)
        mercury_r_0 = mercury_r_0 + 0.07834131817d0*cos(6.19233722599d0 + 26087.9031415742d0 * t)
        mercury_r_0 = mercury_r_0 + 0.39528271652d0*cos(0.0d0 + 0.0d0 * t)

        mercury_r_1 = mercury_r_1 + 0.00010094479d0*cos(4.47466326316d0 + 78263.70942472259d0 * t)
        mercury_r_1 = mercury_r_1 + 0.00044141826d0*cos(1.42385543975d0 + 52175.8062831484d0 * t)
        mercury_r_1 = mercury_r_1 + 0.00217347739d0*cos(4.65617158663d0 + 26087.9031415742d0 * t)
        mercury_r_1=mercury_r_1*t;

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

        neptune_b_0 = neptune_b_0 + 0.0001535549d0*cos(2.52123799481d0 + 36.6485629295d0 * t)
        neptune_b_0 = neptune_b_0 + 0.00015448133d0*cos(3.50877080888d0 + 39.6175083461d0 * t)
        neptune_b_0 = neptune_b_0 + 0.00027623609d0*cos(0.0d0 + 0.0d0 * t)
        neptune_b_0 = neptune_b_0 + 0.00027780087d0*cos(5.91271882843d0 + 76.2660712756d0 * t)
        neptune_b_0 = neptune_b_0 + 0.03088622933d0*cos(1.44104372626d0 + 38.1330356378d0 * t)

        neptune_b_1 = neptune_b_1 + 0.00227279214d0*cos(3.8079308987d0 + 38.1330356378d0 * t)
        neptune_b_1=neptune_b_1*t;

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

        neptune_l_0 = neptune_l_0 + 0.00016482741d0*cos(7.729261d-05 + 491.5579294568d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00033784734d0*cos(1.24488865578d0 + 76.2660712756d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00037714589d0*cos(6.09221834946d0 + 35.1640902212d0 * t)
        neptune_l_0 = neptune_l_0 + 0.0004206445d0*cos(5.41054991607d0 + 2.9689454166d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00124531845d0*cos(4.83008090682d0 + 36.6485629295d0 * t)
        neptune_l_0 = neptune_l_0 + 0.01019727662d0*cos(0.4858092366d0 + 1.4844727083d0 * t)
        neptune_l_0 = neptune_l_0 + 0.01798475509d0*cos(2.9010127305d0 + 38.1330356378d0 * t)
        neptune_l_0 = neptune_l_0 + 5.31188633047d0*cos(0.0d0 + 0.0d0 * t)

        neptune_l_1 = neptune_l_1 + 0.00015807148d0*cos(2.27923488532d0 + 38.1330356378d0 * t)
        neptune_l_1 = neptune_l_1 + 0.00016604187d0*cos(4.86319129565d0 + 1.4844727083d0 * t)
        neptune_l_1 = neptune_l_1 + 38.37687716731d0*cos(0.0d0 + 0.0d0 * t)
        neptune_l_1=neptune_l_1*t;

        neptune_l_2 = neptune_l_2 + 0.00053892649d0*cos(0.0d0 + 0.0d0 * t)
        neptune_l_2=neptune_l_2*t*t;

        r = neptune_l_2+neptune_l_1+neptune_l_0
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

        neptune_r_0 = neptune_r_0 + 0.00012011825d0*cos(1.92062131635d0 + 1021.2488945514d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00014229686d0*cos(1.07786112902d0 + 74.7815985673d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00016939242d0*cos(1.59422166991d0 + 71.8126531507d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00024593778d0*cos(0.50801728204d0 + 109.9456887885d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00046687838d0*cos(5.74937810094d0 + 33.6796175129d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00069791722d0*cos(3.79617226928d0 + 2.9689454166d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00100895397d0*cos(0.37702748681d0 + 73.297125859d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00121801825d0*cos(5.79754444303d0 + 76.2660712756d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00135134095d0*cos(3.37220607384d0 + 39.6175083461d0 * t)
        neptune_r_0 = neptune_r_0 + 0.0027457197d0*cos(1.84552256801d0 + 175.1660598002d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00495725642d0*cos(1.57105654815d0 + 491.5579294568d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00537760613d0*cos(4.52113902845d0 + 35.1640902212d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00807830737d0*cos(5.18592836167d0 + 1.4844727083d0 * t)
        neptune_r_0 = neptune_r_0 + 0.01691764281d0*cos(3.25186138896d0 + 36.6485629295d0 * t)
        neptune_r_0 = neptune_r_0 + 0.2706225949d0*cos(1.3299945893d0 + 38.1330356378d0 * t)
        neptune_r_0 = neptune_r_0 + 30.07013206102d0*cos(0.0d0 + 0.0d0 * t)

        neptune_r_1 = neptune_r_1 + 0.00013220279d0*cos(3.32015499895d0 + 1.4844727083d0 * t)
        neptune_r_1 = neptune_r_1 + 0.00236338502d0*cos(0.70498011235d0 + 38.1330356378d0 * t)
        neptune_r_1=neptune_r_1*t;

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

        saturn_b_0 = saturn_b_0 + 0.0001473407d0*cos(2.1184659787d0 + 639.897286314d0 * t)
        saturn_b_0 = saturn_b_0 + 0.00030863357d0*cos(3.48441504465d0 + 220.4126424388d0 * t)
        saturn_b_0 = saturn_b_0 + 0.00034116063d0*cos(0.57297307844d0 + 206.1855484372d0 * t)
        saturn_b_0 = saturn_b_0 + 0.00084745939d0*cos(0.0d0 + 0.0d0 * t)
        saturn_b_0 = saturn_b_0 + 0.00240348303d0*cos(2.8523848939d0 + 426.598190876d0 * t)
        saturn_b_0 = saturn_b_0 + 0.0433067804d0*cos(3.60284428399d0 + 213.299095438d0 * t)

        saturn_b_1 = saturn_b_1 + 0.00014800587d0*cos(2.3058606052d0 + 206.1855484372d0 * t)
        saturn_b_1 = saturn_b_1 + 0.00018571607d0*cos(6.09919206378d0 + 426.598190876d0 * t)
        saturn_b_1 = saturn_b_1 + 0.00049478641d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_b_1 = saturn_b_1 + 0.00397554998d0*cos(5.33289992556d0 + 213.299095438d0 * t)
        saturn_b_1=saturn_b_1*t;

        saturn_b_2 = saturn_b_2 + 0.00020629977d0*cos(0.50482422817d0 + 213.299095438d0 * t)
        saturn_b_2=saturn_b_2*t*t;

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

        saturn_l_0 = saturn_l_0 + 0.00010725066d0*cos(3.12939596466d0 + 202.2533951741d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00013005305d0*cos(5.98119067061d0 + 11.0457002639d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00013160308d0*cos(4.44891180176d0 + 14.2270940016d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00014609562d0*cos(1.56518573691d0 + 3.9321532631d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00014906995d0*cos(5.76903283845d0 + 316.3918696566d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00015053509d0*cos(2.71670027883d0 + 639.897286314d0 * t)
        saturn_l_0 = saturn_l_0 + 0.000158203d0*cos(0.9380895376d0 + 632.7837393132d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00016573583d0*cos(0.43719123541d0 + 419.4846438752d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00023990338d0*cos(4.6697693486d0 + 110.2063212194d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00079271288d0*cos(3.8400707853d0 + 220.4126424388d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00206816296d0*cos(0.24658366938d0 + 103.0927742186d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00350769223d0*cos(3.30329903015d0 + 426.598190876d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00398379386d0*cos(0.52112025957d0 + 206.1855484372d0 * t)
        saturn_l_0 = saturn_l_0 + 0.01414150958d0*cos(4.58581515873d0 + 7.1135470008d0 * t)
        saturn_l_0 = saturn_l_0 + 0.1110765978d0*cos(3.96205090194d0 + 213.299095438d0 * t)
        saturn_l_0 = saturn_l_0 + 0.87401354029d0*cos(0.0d0 + 0.0d0 * t)

        saturn_l_1 = saturn_l_1 + 0.00010511706d0*cos(2.748803928d0 + 14.2270940016d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00019941734d0*cos(1.27954662736d0 + 103.0927742186d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00040254586d0*cos(2.0412825709d0 + 220.4126424388d0 * t)
        saturn_l_1 = saturn_l_1 + 0.0009832303d0*cos(1.08070061328d0 + 426.598190876d0 * t)
        saturn_l_1 = saturn_l_1 + 0.0010767877d0*cos(2.27769911872d0 + 206.1855484372d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00564347566d0*cos(2.88500136429d0 + 7.1135470008d0 * t)
        saturn_l_1 = saturn_l_1 + 0.01296855005d0*cos(1.82820544701d0 + 213.299095438d0 * t)
        saturn_l_1 = saturn_l_1 + 213.54295595986d0*cos(0.0d0 + 0.0d0 * t)
        saturn_l_1=saturn_l_1*t;

        saturn_l_2 = saturn_l_2 + 0.00010604979d0*cos(5.40963595885d0 + 426.598190876d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00010631396d0*cos(0.25778277414d0 + 220.4126424388d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00015276909d0*cos(4.06492007503d0 + 206.1855484372d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00090592251d0*cos(0.0d0 + 0.0d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00091920844d0*cos(0.07425261094d0 + 213.299095438d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00116441181d0*cos(1.17987850633d0 + 7.1135470008d0 * t)
        saturn_l_2=saturn_l_2*t*t;

        saturn_l_3 = saturn_l_3 + 0.00016038734d0*cos(5.73945377424d0 + 7.1135470008d0 * t)
        saturn_l_3=saturn_l_3*t*t*t;

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

        saturn_r_0 = saturn_r_0 + 0.00011380261d0*cos(1.73105746566d0 + 522.5774180938d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00011993314d0*cos(5.98051421881d0 + 846.0828347512d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00012884128d0*cos(1.64892310393d0 + 138.5174968707d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00014296479d0*cos(2.60433537909d0 + 323.5054166574d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00015298457d0*cos(3.05943652881d0 + 529.6909650946d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00020746678d0*cos(5.33255667599d0 + 199.0720014364d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00020839118d0*cos(1.5210259064d0 + 433.7117378768d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00020936573d0*cos(0.46349163993d0 + 735.8765135318d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00032401718d0*cos(5.47084606947d0 + 949.1756089698d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00034143794d0*cos(0.19518550682d0 + 277.0349937414d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00048913044d0*cos(1.55733388472d0 + 202.2533951741d0 * t)
        saturn_r_0 = saturn_r_0 + 0.0006105335d0*cos(0.94037761156d0 + 639.897286314d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00069007015d0*cos(5.94099622447d0 + 419.4846438752d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00108974737d0*cos(3.29313595577d0 + 110.2063212194d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00140617548d0*cos(5.70406652991d0 + 632.7837393132d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00361778433d0*cos(3.13904303264d0 + 7.1135470008d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00371684449d0*cos(2.27114833428d0 + 220.4126424388d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00547506899d0*cos(5.01532628454d0 + 103.0927742186d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00821891059d0*cos(5.93520025371d0 + 316.3918696566d0 * t)
        saturn_r_0 = saturn_r_0 + 0.01464663959d0*cos(1.64763045468d0 + 426.598190876d0 * t)
        saturn_r_0 = saturn_r_0 + 0.01873679934d0*cos(5.23549605091d0 + 206.1855484372d0 * t)
        saturn_r_0 = saturn_r_0 + 0.52921382465d0*cos(2.39226219733d0 + 213.299095438d0 * t)
        saturn_r_0 = saturn_r_0 + 9.55758135801d0*cos(0.0d0 + 0.0d0 * t)

        saturn_r_1 = saturn_r_1 + 0.00012892827d0*cos(5.94330258435d0 + 433.7117378768d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00013876565d0*cos(0.75886204364d0 + 199.0720014364d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00018839639d0*cos(1.60819563173d0 + 110.2063212194d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00019952612d0*cos(1.17560125007d0 + 419.4846438752d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00020928189d0*cos(5.0924565447d0 + 639.897286314d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00049621111d0*cos(6.0174446958d0 + 103.0927742186d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00143891176d0*cos(1.40744864239d0 + 7.1135470008d0 * t)
        saturn_r_1 = saturn_r_1 + 0.0018626154d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00188491375d0*cos(0.47215719444d0 + 220.4126424388d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00341394136d0*cos(5.7963577396d0 + 426.598190876d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00506577574d0*cos(0.71114650941d0 + 206.1855484372d0 * t)
        saturn_r_1 = saturn_r_1 + 0.06182981282d0*cos(0.25843515034d0 + 213.299095438d0 * t)
        saturn_r_1=saturn_r_1*t;

        saturn_r_2 = saturn_r_2 + 0.00029645554d0*cos(5.96310264282d0 + 7.1135470008d0 * t)
        saturn_r_2 = saturn_r_2 + 0.00043220894d0*cos(3.86940443794d0 + 426.598190876d0 * t)
        saturn_r_2 = saturn_r_2 + 0.00049766792d0*cos(4.9716815087d0 + 220.4126424388d0 * t)
        saturn_r_2 = saturn_r_2 + 0.0007192276d0*cos(2.50069994874d0 + 206.1855484372d0 * t)
        saturn_r_2 = saturn_r_2 + 0.00436902464d0*cos(4.78671673044d0 + 213.299095438d0 * t)
        saturn_r_2=saturn_r_2*t*t;

        saturn_r_3 = saturn_r_3 + 0.00020315005d0*cos(3.02186626038d0 + 213.299095438d0 * t)
        saturn_r_3=saturn_r_3*t*t*t;

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

        uranus_b_0 = uranus_b_0 + 0.00061601203d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_b_0 = uranus_b_0 + 0.00062341405d0*cos(5.08111175856d0 + 149.5631971346d0 * t)
        uranus_b_0 = uranus_b_0 + 0.01346277639d0*cos(2.61877810545d0 + 74.7815985673d0 * t)

        uranus_b_1 = uranus_b_1 + 0.00206366162d0*cos(4.12394311407d0 + 74.7815985673d0 * t)
        uranus_b_1=uranus_b_1*t;

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

        uranus_l_0 = uranus_l_0 + 0.00010997934d0*cos(0.48865493179d0 + 138.5174968707d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00011162535d0*cos(5.82681993692d0 + 224.3447957019d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00014613471d0*cos(4.73732047977d0 + 3.9321532631d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00017818665d0*cos(1.74436982544d0 + 36.6485629295d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00021078897d0*cos(4.36059465144d0 + 148.0787244263d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00025710505d0*cos(6.11379842935d0 + 454.9093665273d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00026468869d0*cos(3.14152087888d0 + 71.8126531507d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00061950714d0*cos(2.85098907565d0 + 11.0457002639d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00061998592d0*cos(2.26952040469d0 + 2.9689454166d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00068892609d0*cos(6.09292489045d0 + 76.2660712756d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00070328499d0*cos(5.39254431993d0 + 63.7358983034d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00272328132d0*cos(3.35823710524d0 + 149.5631971346d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00365981718d0*cos(1.89962189068d0 + 73.297125859d0 * t)
        uranus_l_0 = uranus_l_0 + 0.01504247826d0*cos(3.62719262195d0 + 1.4844727083d0 * t)
        uranus_l_0 = uranus_l_0 + 0.09260408252d0*cos(0.8910642153d0 + 74.7815985673d0 * t)
        uranus_l_0 = uranus_l_0 + 5.48129294299d0*cos(0.0d0 + 0.0d0 * t)

        uranus_l_1 = uranus_l_1 + 0.00024456413d0*cos(1.71255705309d0 + 1.4844727083d0 * t)
        uranus_l_1 = uranus_l_1 + 0.00154458244d0*cos(5.24201658072d0 + 74.7815985673d0 * t)
        uranus_l_1 = uranus_l_1 + 75.02543121646d0*cos(0.0d0 + 0.0d0 * t)
        uranus_l_1=uranus_l_1*t;

        uranus_l_2 = uranus_l_2 + 0.00053033277d0*cos(0.0d0 + 0.0d0 * t)
        uranus_l_2=uranus_l_2*t*t;

        r = uranus_l_2+uranus_l_1+uranus_l_0
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

        uranus_r_0 = uranus_r_0 + 0.00010792699d0*cos(1.42104858472d0 + 213.299095438d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00011494701d0*cos(0.43774027872d0 + 65.2203710117d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00011696085d0*cos(3.29825599114d0 + 3.9321532631d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00011852996d0*cos(0.99342814582d0 + 52.6901980395d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00011959355d0*cos(1.75044072173d0 + 984.6003316219d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00012328151d0*cos(5.96039150918d0 + 127.4717966068d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00012896507d0*cos(2.62154018241d0 + 111.4301614968d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00014701566d0*cos(4.90434406648d0 + 108.4612160802d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00015502809d0*cos(5.35405037603d0 + 38.1330356378d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00017900561d0*cos(0.55455488605d0 + 2.9689454166d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00020471584d0*cos(1.555889615d0 + 202.2533951741d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00020473163d0*cos(2.79639811626d0 + 70.3281804424d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00022637152d0*cos(0.72519137745d0 + 529.6909650946d0 * t)
        uranus_r_0 = uranus_r_0 + 0.0002562036d0*cos(5.25656292802d0 + 380.12776796d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00025785805d0*cos(3.78537741503d0 + 85.8272988312d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00029156264d0*cos(3.18056174556d0 + 77.7505439839d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00030348875d0*cos(0.70100446346d0 + 151.0476698429d0 * t)
        uranus_r_0 = uranus_r_0 + 0.0003675516d0*cos(3.88648934736d0 + 146.594251718d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00039009624d0*cos(1.66971128869d0 + 70.8494453042d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00039025681d0*cos(3.36234710692d0 + 277.0349937414d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00046677322d0*cos(1.39976563936d0 + 35.1640902212d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00071424265d0*cos(4.24509327405d0 + 224.3447957019d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00089805842d0*cos(3.66105366329d0 + 109.9456887885d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00093192359d0*cos(0.17437193645d0 + 36.6485629295d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00143705902d0*cos(1.38368574483d0 + 11.0457002639d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00161858251d0*cos(2.79137863469d0 + 148.0787244263d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00190521915d0*cos(1.99809364502d0 + 1.4844727083d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00243508222d0*cos(1.57086595074d0 + 71.8126531507d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00338525522d0*cos(1.58002682946d0 + 138.5174968707d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00496404171d0*cos(1.40139934716d0 + 454.9093665273d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00602248144d0*cos(3.86003820462d0 + 63.7358983034d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00649321851d0*cos(4.52247298119d0 + 76.2660712756d0 * t)
        uranus_r_0 = uranus_r_0 + 0.02055653495d0*cos(1.78295170028d0 + 149.5631971346d0 * t)
        uranus_r_0 = uranus_r_0 + 0.03440835545d0*cos(0.32836098991d0 + 73.297125859d0 * t)
        uranus_r_0 = uranus_r_0 + 0.88784984055d0*cos(5.60377526994d0 + 74.7815985673d0 * t)
        uranus_r_0 = uranus_r_0 + 19.21264847881d0*cos(0.0d0 + 0.0d0 * t)

        uranus_r_1 = uranus_r_1 + 0.00011405346d0*cos(0.01848461561d0 + 70.8494453042d0 * t)
        uranus_r_1 = uranus_r_1 + 0.00020857262d0*cos(5.24625494219d0 + 11.0457002639d0 * t)
        uranus_r_1 = uranus_r_1 + 0.00021468152d0*cos(2.6017670427d0 + 76.2660712756d0 * t)
        uranus_r_1 = uranus_r_1 + 0.00024059649d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_r_1 = uranus_r_1 + 0.00068626972d0*cos(6.13411265052d0 + 149.5631971346d0 * t)
        uranus_r_1 = uranus_r_1 + 0.00071212085d0*cos(6.22601006675d0 + 63.7358983034d0 * t)
        uranus_r_1 = uranus_r_1 + 0.0147989637d0*cos(3.67205705317d0 + 74.7815985673d0 * t)
        uranus_r_1=uranus_r_1*t;

        uranus_r_2 = uranus_r_2 + 0.00022439904d0*cos(0.6995311876d0 + 74.7815985673d0 * t)
        uranus_r_2=uranus_r_2*t*t;

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

        venus_b_0 = venus_b_0 + 0.00032814918d0*cos(3.14159265359d0 + 0.0d0 * t)
        venus_b_0 = venus_b_0 + 0.00040107978d0*cos(1.14737178106d0 + 20426.571092422d0 * t)
        venus_b_0 = venus_b_0 + 0.05923638472d0*cos(0.26702775813d0 + 10213.285546211d0 * t)

        venus_b_1 = venus_b_1 + 0.00513347602d0*cos(1.80364310797d0 + 10213.285546211d0 * t)
        venus_b_1=venus_b_1*t;

        venus_b_2 = venus_b_2 + 0.00022377665d0*cos(3.38509143877d0 + 10213.285546211d0 * t)
        venus_b_2=venus_b_2*t*t;

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

        venus_l_0 = venus_l_0 + 0.00089891645d0*cos(5.30650048468d0 + 20426.571092422d0 * t)
        venus_l_0 = venus_l_0 + 0.01353968419d0*cos(5.59313319619d0 + 10213.285546211d0 * t)
        venus_l_0 = venus_l_0 + 3.17614666774d0*cos(0.0d0 + 0.0d0 * t)

        venus_l_1 = venus_l_1 + 0.00014444977d0*cos(0.51624564679d0 + 20426.571092422d0 * t)
        venus_l_1 = venus_l_1 + 0.00095707712d0*cos(2.46424448979d0 + 10213.285546211d0 * t)
        venus_l_1 = venus_l_1 + 10213.52943052898d0*cos(0.0d0 + 0.0d0 * t)
        venus_l_1=venus_l_1*t;

        venus_l_2 = venus_l_2 + 0.00054127076d0*cos(0.0d0 + 0.0d0 * t)
        venus_l_2=venus_l_2*t*t;

        r = venus_l_2+venus_l_1+venus_l_0
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

        venus_r_0 = venus_r_0 + 0.00489824185d0*cos(4.02151832268d0 + 10213.285546211d0 * t)
        venus_r_0 = venus_r_0 + 0.72334820905d0*cos(0.0d0 + 0.0d0 * t)

        venus_r_1 = venus_r_1 + 0.00034551039d0*cos(0.89198710598d0 + 10213.285546211d0 * t)
        venus_r_1=venus_r_1*t;

        r = venus_r_1+venus_r_0
    end function

end module VSOP87D_Micro
