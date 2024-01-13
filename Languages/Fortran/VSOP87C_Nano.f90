!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87C_Nano
    implicit none

    contains
    subroutine VSOP87C_Nano_getEarth(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_x(t)
        result(2)=earth_y(t)
        result(3)=earth_z(t)
    end subroutine

    subroutine VSOP87C_Nano_getJupiter(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_x(t)
        result(2)=jupiter_y(t)
        result(3)=jupiter_z(t)
    end subroutine

    subroutine VSOP87C_Nano_getMars(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_x(t)
        result(2)=mars_y(t)
        result(3)=mars_z(t)
    end subroutine

    subroutine VSOP87C_Nano_getMercury(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_x(t)
        result(2)=mercury_y(t)
        result(3)=mercury_z(t)
    end subroutine

    subroutine VSOP87C_Nano_getNeptune(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_x(t)
        result(2)=neptune_y(t)
        result(3)=neptune_z(t)
    end subroutine

    subroutine VSOP87C_Nano_getSaturn(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_x(t)
        result(2)=saturn_y(t)
        result(3)=saturn_z(t)
    end subroutine

    subroutine VSOP87C_Nano_getUranus(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_x(t)
        result(2)=uranus_y(t)
        result(3)=uranus_z(t)
    end subroutine

    subroutine VSOP87C_Nano_getVenus(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=venus_x(t)
        result(2)=venus_y(t)
        result(3)=venus_z(t)
    end subroutine

    function earth_x(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: earth_x_0
        double precision :: earth_x_1
        double precision :: earth_x_2
        double precision :: earth_x_3
        double precision :: earth_x_4
        double precision :: earth_x_5

        earth_x_0 = 0.0
        earth_x_1 = 0.0
        earth_x_2 = 0.0
        earth_x_3 = 0.0
        earth_x_4 = 0.0
        earth_x_5 = 0.0

        earth_x_0 = earth_x_0 + 0.00835274807d0*cos(1.71033525539d0 + 12566.3955174663d0 * t)
        earth_x_0 = earth_x_0 + 0.02506324281d0*cos(4.93819429098d0 + 0.2438174835d0 * t)
        earth_x_0 = earth_x_0 + 0.99986069925d0*cos(1.75347045757d0 + 6283.3196674749d0 * t)

        earth_x_1 = earth_x_1 + 0.00154550744d0*cos(0.64605836878d0 + 0.2438174835d0 * t)
        earth_x_1=earth_x_1*t;

        r = earth_x_1+earth_x_0
    end function

    function earth_y(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: earth_y_0
        double precision :: earth_y_1
        double precision :: earth_y_2
        double precision :: earth_y_3
        double precision :: earth_y_4
        double precision :: earth_y_5

        earth_y_0 = 0.0
        earth_y_1 = 0.0
        earth_y_2 = 0.0
        earth_y_3 = 0.0
        earth_y_4 = 0.0
        earth_y_5 = 0.0

        earth_y_0 = earth_y_0 + 0.00835274807d0*cos(0.13953892859d0 + 12566.3955174663d0 * t)
        earth_y_0 = earth_y_0 + 0.02506324281d0*cos(3.36739796418d0 + 0.2438174835d0 * t)
        earth_y_0 = earth_y_0 + 0.99986069925d0*cos(0.18267413078d0 + 6283.3196674749d0 * t)

        earth_y_1 = earth_y_1 + 0.00154550744d0*cos(5.35844734917d0 + 0.2438174835d0 * t)
        earth_y_1=earth_y_1*t;

        r = earth_y_1+earth_y_0
    end function

    function earth_z(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: earth_z_0
        double precision :: earth_z_1
        double precision :: earth_z_2
        double precision :: earth_z_3
        double precision :: earth_z_4
        double precision :: earth_z_5

        earth_z_0 = 0.0
        earth_z_1 = 0.0
        earth_z_2 = 0.0
        earth_z_3 = 0.0
        earth_z_4 = 0.0
        earth_z_5 = 0.0

        r = 0
    end function

    function jupiter_x(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: jupiter_x_0
        double precision :: jupiter_x_1
        double precision :: jupiter_x_2
        double precision :: jupiter_x_3
        double precision :: jupiter_x_4
        double precision :: jupiter_x_5

        jupiter_x_0 = 0.0
        jupiter_x_1 = 0.0
        jupiter_x_2 = 0.0
        jupiter_x_3 = 0.0
        jupiter_x_4 = 0.0
        jupiter_x_5 = 0.0

        jupiter_x_0 = jupiter_x_0 + 0.0010271945d0*cos(6.17016418155d0 + 1052.51220067191d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00114122292d0*cos(0.01655163411d0 + 1162.7185218913d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00133443745d0*cos(0.89287673636d0 + 213.5429129215d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.001421714d0*cos(5.56556633177d0 + 633.0275567967d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00148291722d0*cos(6.15618324076d0 + 110.45013870291d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00193179179d0*cos(5.02674864982d0 + 426.8420083595d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00301186623d0*cos(5.17699571796d0 + 7.3573644843d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00381996183d0*cos(1.98605213956d0 + 102.84895673509d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00457751771d0*cos(1.29886948102d0 + 1589.3167127673d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.01476016965d0*cos(3.61748058581d0 + 537.0483295789d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.01504469362d0*cos(0.72934997067d0 + 522.8212355773d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.12593400247d0*cos(0.94916456487d0 + 1059.6257476727d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.37839498798d0*cos(3.39164799011d0 + 0.2438174835d0 * t)
        jupiter_x_0 = jupiter_x_0 + 5.19591755961d0*cos(0.599546722d0 + 529.9347825781d0 * t)

        jupiter_x_1 = jupiter_x_1 + 0.00589005176d0*cos(1.91564604125d0 + 537.0483295789d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.00600483021d0*cos(2.42939944495d0 + 522.8212355773d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.00634902259d0*cos(0.10706507632d0 + 1059.6257476727d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.0191255649d0*cos(4.23275123829d0 + 0.2438174835d0 * t)
        jupiter_x_1=jupiter_x_1*t;

        jupiter_x_2 = jupiter_x_2 + 0.00121682952d0*cos(0.20529040863d0 + 537.0483295789d0 * t)
        jupiter_x_2 = jupiter_x_2 + 0.00123752958d0*cos(4.12933545743d0 + 522.8212355773d0 * t)
        jupiter_x_2 = jupiter_x_2 + 0.00132313738d0*cos(5.46375601476d0 + 0.2438174835d0 * t)
        jupiter_x_2 = jupiter_x_2 + 0.00202462055d0*cos(2.1687209077d0 + 529.9347825781d0 * t)
        jupiter_x_2=jupiter_x_2*t*t;

        r = jupiter_x_2+jupiter_x_1+jupiter_x_0
    end function

    function jupiter_y(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: jupiter_y_0
        double precision :: jupiter_y_1
        double precision :: jupiter_y_2
        double precision :: jupiter_y_3
        double precision :: jupiter_y_4
        double precision :: jupiter_y_5

        jupiter_y_0 = 0.0
        jupiter_y_1 = 0.0
        jupiter_y_2 = 0.0
        jupiter_y_3 = 0.0
        jupiter_y_4 = 0.0
        jupiter_y_5 = 0.0

        jupiter_y_0 = jupiter_y_0 + 0.0010271945d0*cos(4.59936785476d0 + 1052.51220067191d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00114122292d0*cos(4.72894061449d0 + 1162.7185218913d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00133443745d0*cos(5.60526571675d0 + 213.5429129215d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.001421714d0*cos(3.99477000498d0 + 633.0275567967d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00148291722d0*cos(4.58538691397d0 + 110.45013870291d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00193179179d0*cos(3.45595232302d0 + 426.8420083595d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00301186623d0*cos(3.60619939116d0 + 7.3573644843d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00381996183d0*cos(3.55684846636d0 + 102.84895673509d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00457751771d0*cos(6.0112584614d0 + 1589.3167127673d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.01476016965d0*cos(2.04668425902d0 + 537.0483295789d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.01504469362d0*cos(5.44173895105d0 + 522.8212355773d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.12593400247d0*cos(5.66155354525d0 + 1059.6257476727d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.37839498798d0*cos(1.82085166331d0 + 0.2438174835d0 * t)
        jupiter_y_0 = jupiter_y_0 + 5.19591755961d0*cos(5.31193570238d0 + 529.9347825781d0 * t)

        jupiter_y_1 = jupiter_y_1 + 0.00589005176d0*cos(0.34484971445d0 + 537.0483295789d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.00600483021d0*cos(0.85860311815d0 + 522.8212355773d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.00634902259d0*cos(4.81945405671d0 + 1059.6257476727d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.0191255649d0*cos(2.66195491149d0 + 0.2438174835d0 * t)
        jupiter_y_1=jupiter_y_1*t;

        jupiter_y_2 = jupiter_y_2 + 0.00121682952d0*cos(4.91767938901d0 + 537.0483295789d0 * t)
        jupiter_y_2 = jupiter_y_2 + 0.00123752958d0*cos(2.55853913064d0 + 522.8212355773d0 * t)
        jupiter_y_2 = jupiter_y_2 + 0.00132313738d0*cos(3.89295968796d0 + 0.2438174835d0 * t)
        jupiter_y_2 = jupiter_y_2 + 0.00202462055d0*cos(0.59792458091d0 + 529.9347825781d0 * t)
        jupiter_y_2=jupiter_y_2*t*t;

        r = jupiter_y_2+jupiter_y_1+jupiter_y_0
    end function

    function jupiter_z(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: jupiter_z_0
        double precision :: jupiter_z_1
        double precision :: jupiter_z_2
        double precision :: jupiter_z_3
        double precision :: jupiter_z_4
        double precision :: jupiter_z_5

        jupiter_z_0 = 0.0
        jupiter_z_1 = 0.0
        jupiter_z_2 = 0.0
        jupiter_z_3 = 0.0
        jupiter_z_4 = 0.0
        jupiter_z_5 = 0.0

        jupiter_z_0 = jupiter_z_0 + 0.00286562094d0*cos(3.90812238338d0 + 1059.3819301892d0 * t)
        jupiter_z_0 = jupiter_z_0 + 0.00859031952d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_z_0 = jupiter_z_0 + 0.11823100489d0*cos(3.55844646343d0 + 529.6909650946d0 * t)

        jupiter_z_1 = jupiter_z_1 + 0.00922338114d0*cos(5.70129376981d0 + 529.6909650946d0 * t)
        jupiter_z_1=jupiter_z_1*t;

        r = jupiter_z_1+jupiter_z_0
    end function

    function mars_x(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mars_x_0
        double precision :: mars_x_1
        double precision :: mars_x_2
        double precision :: mars_x_3
        double precision :: mars_x_4
        double precision :: mars_x_5

        mars_x_0 = 0.0
        mars_x_1 = 0.0
        mars_x_2 = 0.0
        mars_x_3 = 0.0
        mars_x_4 = 0.0
        mars_x_5 = 0.0

        mars_x_0 = mars_x_0 + 0.00135189385d0*cos(0.59603904502d0 + 3340.36860921629d0 * t)
        mars_x_0 = mars_x_0 + 0.00494034875d0*cos(0.59654023167d0 + 10022.0810975829d0 * t)
        mars_x_0 = mars_x_0 + 0.07067734657d0*cos(0.2584167963d0 + 6681.46867088311d0 * t)
        mars_x_0 = mars_x_0 + 0.2133734347d0*cos(2.723903427d0 + 0.2438174835d0 * t)
        mars_x_0 = mars_x_0 + 1.51664432758d0*cos(6.20347631684d0 + 3340.8562441833d0 * t)

        mars_x_1 = mars_x_1 + 0.00551520815d0*cos(5.09364818449d0 + 6681.46867088311d0 * t)
        mars_x_1 = mars_x_1 + 0.01668487239d0*cos(4.16976892466d0 + 0.2438174835d0 * t)
        mars_x_1=mars_x_1*t;

        r = mars_x_1+mars_x_0
    end function

    function mars_y(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mars_y_0
        double precision :: mars_y_1
        double precision :: mars_y_2
        double precision :: mars_y_3
        double precision :: mars_y_4
        double precision :: mars_y_5

        mars_y_0 = 0.0
        mars_y_1 = 0.0
        mars_y_2 = 0.0
        mars_y_3 = 0.0
        mars_y_4 = 0.0
        mars_y_5 = 0.0

        mars_y_0 = mars_y_0 + 0.00135189385d0*cos(2.16683537182d0 + 3340.36860921629d0 * t)
        mars_y_0 = mars_y_0 + 0.00494034875d0*cos(5.30892921206d0 + 10022.0810975829d0 * t)
        mars_y_0 = mars_y_0 + 0.07067734657d0*cos(4.97080577669d0 + 6681.46867088311d0 * t)
        mars_y_0 = mars_y_0 + 0.2133734347d0*cos(1.15310710021d0 + 0.2438174835d0 * t)
        mars_y_0 = mars_y_0 + 1.51664432758d0*cos(4.63267999004d0 + 3340.8562441833d0 * t)

        mars_y_1 = mars_y_1 + 0.00551520815d0*cos(3.5228518577d0 + 6681.46867088311d0 * t)
        mars_y_1 = mars_y_1 + 0.01668487239d0*cos(2.59897259786d0 + 0.2438174835d0 * t)
        mars_y_1=mars_y_1*t;

        r = mars_y_1+mars_y_0
    end function

    function mars_z(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mars_z_0
        double precision :: mars_z_1
        double precision :: mars_z_2
        double precision :: mars_z_3
        double precision :: mars_z_4
        double precision :: mars_z_5

        mars_z_0 = 0.0
        mars_z_1 = 0.0
        mars_z_2 = 0.0
        mars_z_3 = 0.0
        mars_z_4 = 0.0
        mars_z_5 = 0.0

        mars_z_0 = mars_z_0 + 0.00228333904d0*cos(4.10544022266d0 + 6681.2248533996d0 * t)
        mars_z_0 = mars_z_0 + 0.00660669541d0*cos(0.0d0 + 0.0d0 * t)
        mars_z_0 = mars_z_0 + 0.0490120722d0*cos(3.76712324286d0 + 3340.6124266998d0 * t)

        mars_z_1 = mars_z_1 + 0.00533220761d0*cos(5.37045188878d0 + 3340.6124266998d0 * t)
        mars_z_1=mars_z_1*t;

        r = mars_z_1+mars_z_0
    end function

    function mercury_x(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mercury_x_0
        double precision :: mercury_x_1
        double precision :: mercury_x_2
        double precision :: mercury_x_3
        double precision :: mercury_x_4
        double precision :: mercury_x_5

        mercury_x_0 = 0.0
        mercury_x_1 = 0.0
        mercury_x_2 = 0.0
        mercury_x_3 = 0.0
        mercury_x_4 = 0.0
        mercury_x_5 = 0.0

        mercury_x_0 = mercury_x_0 + 0.00105974941d0*cos(0.9884651742d0 + 104351.8563837803d0 * t)
        mercury_x_0 = mercury_x_0 + 0.00305833424d0*cos(2.10298673336d0 + 26087.65932409069d0 * t)
        mercury_x_0 = mercury_x_0 + 0.00585979278d0*cos(4.22090402969d0 + 78263.95324220609d0 * t)
        mercury_x_0 = mercury_x_0 + 0.03840153904d0*cos(1.17015646101d0 + 52176.0501006319d0 * t)
        mercury_x_0 = mercury_x_0 + 0.11918926148d0*cos(4.49027758439d0 + 0.2438174835d0 * t)
        mercury_x_0 = mercury_x_0 + 0.37749277893d0*cos(4.40259139579d0 + 26088.1469590577d0 * t)

        mercury_x_1 = mercury_x_1 + 0.00106107047d0*cos(5.91538469937d0 + 52176.0501006319d0 * t)
        mercury_x_1 = mercury_x_1 + 0.00328639517d0*cos(6.04028758995d0 + 0.2438174835d0 * t)
        mercury_x_1=mercury_x_1*t;

        r = mercury_x_1+mercury_x_0
    end function

    function mercury_y(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mercury_y_0
        double precision :: mercury_y_1
        double precision :: mercury_y_2
        double precision :: mercury_y_3
        double precision :: mercury_y_4
        double precision :: mercury_y_5

        mercury_y_0 = 0.0
        mercury_y_1 = 0.0
        mercury_y_2 = 0.0
        mercury_y_3 = 0.0
        mercury_y_4 = 0.0
        mercury_y_5 = 0.0

        mercury_y_0 = mercury_y_0 + 0.00105974941d0*cos(5.70085415459d0 + 104351.8563837803d0 * t)
        mercury_y_0 = mercury_y_0 + 0.00305833424d0*cos(3.67378306016d0 + 26087.65932409069d0 * t)
        mercury_y_0 = mercury_y_0 + 0.00585979278d0*cos(2.65010770289d0 + 78263.95324220609d0 * t)
        mercury_y_0 = mercury_y_0 + 0.03840153904d0*cos(5.8825454414d0 + 52176.0501006319d0 * t)
        mercury_y_0 = mercury_y_0 + 0.11918926148d0*cos(2.9194812576d0 + 0.2438174835d0 * t)
        mercury_y_0 = mercury_y_0 + 0.37749277893d0*cos(2.83179506899d0 + 26088.1469590577d0 * t)

        mercury_y_1 = mercury_y_1 + 0.00106107047d0*cos(4.34458837257d0 + 52176.0501006319d0 * t)
        mercury_y_1 = mercury_y_1 + 0.00328639517d0*cos(4.46949126315d0 + 0.2438174835d0 * t)
        mercury_y_1=mercury_y_1*t;

        r = mercury_y_1+mercury_y_0
    end function

    function mercury_z(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mercury_z_0
        double precision :: mercury_z_1
        double precision :: mercury_z_2
        double precision :: mercury_z_3
        double precision :: mercury_z_4
        double precision :: mercury_z_5

        mercury_z_0 = 0.0
        mercury_z_1 = 0.0
        mercury_z_2 = 0.0
        mercury_z_3 = 0.0
        mercury_z_4 = 0.0
        mercury_z_5 = 0.0

        mercury_z_0 = mercury_z_0 + 0.00469171617d0*cos(5.04215742764d0 + 52175.8062831484d0 * t)
        mercury_z_0 = mercury_z_0 + 0.00708734365d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_z_0 = mercury_z_0 + 0.04607665326d0*cos(1.99295081967d0 + 26087.9031415742d0 * t)

        mercury_z_1 = mercury_z_1 + 0.00172388569d0*cos(3.47961470688d0 + 26087.9031415742d0 * t)
        mercury_z_1=mercury_z_1*t;

        r = mercury_z_1+mercury_z_0
    end function

    function neptune_x(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: neptune_x_0
        double precision :: neptune_x_1
        double precision :: neptune_x_2
        double precision :: neptune_x_3
        double precision :: neptune_x_4
        double precision :: neptune_x_5

        neptune_x_0 = 0.0
        neptune_x_1 = 0.0
        neptune_x_2 = 0.0
        neptune_x_3 = 0.0
        neptune_x_4 = 0.0
        neptune_x_5 = 0.0

        neptune_x_0 = neptune_x_0 + 0.00122117697d0*cos(1.30863876781d0 + 34.9202727377d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00135892298d0*cos(5.54654979922d0 + 77.9943614674d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00272446904d0*cos(0.87404115637d0 + 213.5429129215d0 * t)
        neptune_x_0 = neptune_x_0 + 0.0030602538d0*cos(0.3991678814d0 + 73.5409433425d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00495650075d0*cos(0.59957534348d0 + 529.9347825781d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00565555652d0*cos(5.98943773879d0 + 41.3457985379d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00687594822d0*cos(0.72075739344d0 + 37.88921815429d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00702768075d0*cos(1.45363642119d0 + 35.40790770471d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00816388197d0*cos(0.78185518038d0 + 3.21276290011d0 * t)
        neptune_x_0 = neptune_x_0 + 0.01073890204d0*cos(5.38477153556d0 + 75.0254160508d0 * t)
        neptune_x_0 = neptune_x_0 + 0.02590782232d0*cos(1.99609768221d0 + 1.7282901918d0 * t)
        neptune_x_0 = neptune_x_0 + 0.13506026414d0*cos(3.50055820972d0 + 76.50988875911d0 * t)
        neptune_x_0 = neptune_x_0 + 0.14935642614d0*cos(1.08477702063d0 + 39.86132582961d0 * t)
        neptune_x_0 = neptune_x_0 + 0.15716341901d0*cos(0.11310077968d0 + 36.892380413d0 * t)
        neptune_x_0 = neptune_x_0 + 0.40567587218d0*cos(3.98149970131d0 + 0.2438174835d0 * t)
        neptune_x_0 = neptune_x_0 + 30.0597310058d0*cos(5.31188633083d0 + 38.3768531213d0 * t)

        neptune_x_1 = neptune_x_1 + 0.00103735195d0*cos(6.08270773807d0 + 38.3768531213d0 * t)
        neptune_x_1 = neptune_x_1 + 0.00106073143d0*cos(3.07856435709d0 + 37.88921815429d0 * t)
        neptune_x_1 = neptune_x_1 + 0.00118508231d0*cos(2.88623136735d0 + 76.50988875911d0 * t)
        neptune_x_1 = neptune_x_1 + 0.00242677799d0*cos(5.46293481092d0 + 39.86132582961d0 * t)
        neptune_x_1 = neptune_x_1 + 0.00256200629d0*cos(2.01693264233d0 + 36.892380413d0 * t)
        neptune_x_1 = neptune_x_1 + 0.00357822049d0*cos(4.60537437341d0 + 0.2438174835d0 * t)
        neptune_x_1=neptune_x_1*t;

        neptune_x_2 = neptune_x_2 + 0.01620002167d0*cos(0.60038473142d0 + 38.3768531213d0 * t)
        neptune_x_2=neptune_x_2*t*t;

        r = neptune_x_2+neptune_x_1+neptune_x_0
    end function

    function neptune_y(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: neptune_y_0
        double precision :: neptune_y_1
        double precision :: neptune_y_2
        double precision :: neptune_y_3
        double precision :: neptune_y_4
        double precision :: neptune_y_5

        neptune_y_0 = 0.0
        neptune_y_1 = 0.0
        neptune_y_2 = 0.0
        neptune_y_3 = 0.0
        neptune_y_4 = 0.0
        neptune_y_5 = 0.0

        neptune_y_0 = neptune_y_0 + 0.00122117697d0*cos(2.8794350946d0 + 34.9202727377d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00135892298d0*cos(3.97575347243d0 + 77.9943614674d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00272446904d0*cos(5.58643013675d0 + 213.5429129215d0 * t)
        neptune_y_0 = neptune_y_0 + 0.0030602538d0*cos(5.11155686178d0 + 73.5409433425d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00495650075d0*cos(5.31196432386d0 + 529.9347825781d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00565555652d0*cos(4.41864141199d0 + 41.3457985379d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00687594822d0*cos(2.29155372023d0 + 37.88921815429d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00702768075d0*cos(6.16602540157d0 + 35.40790770471d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00816388197d0*cos(5.49424416077d0 + 3.21276290011d0 * t)
        neptune_y_0 = neptune_y_0 + 0.01073890204d0*cos(3.81397520876d0 + 75.0254160508d0 * t)
        neptune_y_0 = neptune_y_0 + 0.02590782232d0*cos(0.42530135542d0 + 1.7282901918d0 * t)
        neptune_y_0 = neptune_y_0 + 0.13506026414d0*cos(1.92976188293d0 + 76.50988875911d0 * t)
        neptune_y_0 = neptune_y_0 + 0.14935642614d0*cos(5.79716600101d0 + 39.86132582961d0 * t)
        neptune_y_0 = neptune_y_0 + 0.15716341901d0*cos(4.82548976006d0 + 36.892380413d0 * t)
        neptune_y_0 = neptune_y_0 + 0.40567587218d0*cos(2.41070337452d0 + 0.2438174835d0 * t)
        neptune_y_0 = neptune_y_0 + 30.0597310058d0*cos(3.74109000403d0 + 38.3768531213d0 * t)

        neptune_y_1 = neptune_y_1 + 0.00103735195d0*cos(4.51191141127d0 + 38.3768531213d0 * t)
        neptune_y_1 = neptune_y_1 + 0.00106073143d0*cos(4.64936068389d0 + 37.88921815429d0 * t)
        neptune_y_1 = neptune_y_1 + 0.00118508231d0*cos(1.31543504055d0 + 76.50988875911d0 * t)
        neptune_y_1 = neptune_y_1 + 0.00242677799d0*cos(3.89213848413d0 + 39.86132582961d0 * t)
        neptune_y_1 = neptune_y_1 + 0.00256200629d0*cos(0.44613631554d0 + 36.892380413d0 * t)
        neptune_y_1 = neptune_y_1 + 0.00357822049d0*cos(3.03457804662d0 + 0.2438174835d0 * t)
        neptune_y_1=neptune_y_1*t;

        neptune_y_2 = neptune_y_2 + 0.01620002167d0*cos(5.31277371181d0 + 38.3768531213d0 * t)
        neptune_y_2=neptune_y_2*t*t;

        r = neptune_y_2+neptune_y_1+neptune_y_0
    end function

    function neptune_z(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: neptune_z_0
        double precision :: neptune_z_1
        double precision :: neptune_z_2
        double precision :: neptune_z_3
        double precision :: neptune_z_4
        double precision :: neptune_z_5

        neptune_z_0 = 0.0
        neptune_z_1 = 0.0
        neptune_z_2 = 0.0
        neptune_z_3 = 0.0
        neptune_z_4 = 0.0
        neptune_z_5 = 0.0

        neptune_z_0 = neptune_z_0 + 0.00417558068d0*cos(5.91310695421d0 + 76.2660712756d0 * t)
        neptune_z_0 = neptune_z_0 + 0.00451987936d0*cos(3.50949720541d0 + 39.6175083461d0 * t)
        neptune_z_0 = neptune_z_0 + 0.00474333567d0*cos(2.52218774238d0 + 36.6485629295d0 * t)
        neptune_z_0 = neptune_z_0 + 0.01245978462d0*cos(0.0d0 + 0.0d0 * t)
        neptune_z_0 = neptune_z_0 + 0.92866054405d0*cos(1.44103930278d0 + 38.1330356378d0 * t)

        neptune_z_1 = neptune_z_1 + 0.06832633707d0*cos(3.80782656293d0 + 38.1330356378d0 * t)
        neptune_z_1=neptune_z_1*t;

        neptune_z_2 = neptune_z_2 + 0.00291361164d0*cos(5.57085222635d0 + 38.1330356378d0 * t)
        neptune_z_2=neptune_z_2*t*t;

        r = neptune_z_2+neptune_z_1+neptune_z_0
    end function

    function saturn_x(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: saturn_x_0
        double precision :: saturn_x_1
        double precision :: saturn_x_2
        double precision :: saturn_x_3
        double precision :: saturn_x_4
        double precision :: saturn_x_5

        saturn_x_0 = 0.0
        saturn_x_1 = 0.0
        saturn_x_2 = 0.0
        saturn_x_3 = 0.0
        saturn_x_4 = 0.0
        saturn_x_5 = 0.0

        saturn_x_0 = saturn_x_0 + 0.00122184772d0*cos(4.36825124039d0 + 103.3365917021d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00141571884d0*cos(4.84926431365d0 + 419.2408263917d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00169743473d0*cos(6.19449424436d0 + 205.9417309537d0 * t)
        saturn_x_0 = saturn_x_0 + 0.0037311088d0*cos(0.00103492669d0 + 433.9555553603d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00413446294d0*cos(5.12392705512d0 + 102.84895673509d0 * t)
        saturn_x_0 = saturn_x_0 + 0.0043422703d0*cos(0.71624098563d0 + 529.9347825781d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00708587042d0*cos(2.70922969272d0 + 316.6356871401d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00773784455d0*cos(3.50285419449d0 + 213.0552779545d0 * t)
        saturn_x_0 = saturn_x_0 + 0.01098217124d0*cos(5.65720860592d0 + 640.1411037975d0 * t)
        saturn_x_0 = saturn_x_0 + 0.01141539711d0*cos(3.03345312296d0 + 419.72846135871d0 * t)
        saturn_x_0 = saturn_x_0 + 0.01250581159d0*cos(2.17392657526d0 + 110.45013870291d0 * t)
        saturn_x_0 = saturn_x_0 + 0.02340967916d0*cos(2.01979283929d0 + 7.3573644843d0 * t)
        saturn_x_0 = saturn_x_0 + 0.06628914946d0*cos(0.75057317755d0 + 220.6564599223d0 * t)
        saturn_x_0 = saturn_x_0 + 0.06836881382d0*cos(4.14537914189d0 + 206.42936592071d0 * t)
        saturn_x_0 = saturn_x_0 + 0.26427074351d0*cos(0.12339999915d0 + 426.8420083595d0 * t)
        saturn_x_0 = saturn_x_0 + 0.79501390398d0*cos(4.76580713096d0 + 0.2438174835d0 * t)
        saturn_x_0 = saturn_x_0 + 9.52312533591d0*cos(0.87401491487d0 + 213.5429129215d0 * t)

        saturn_x_1 = saturn_x_1 + 0.00118113185d0*cos(1.16350724193d0 + 110.45013870291d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00189297041d0*cos(4.48614588896d0 + 433.9555553603d0 * t)
        saturn_x_1 = saturn_x_1 + 0.0020446502d0*cos(1.07744722386d0 + 213.5429129215d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00256626023d0*cos(3.52453971595d0 + 640.1411037975d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00312353889d0*cos(4.8295630897d0 + 419.72846135871d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00629201988d0*cos(0.32457757988d0 + 7.3573644843d0 * t)
        saturn_x_1 = saturn_x_1 + 0.02644990371d0*cos(5.33256382404d0 + 220.6564599223d0 * t)
        saturn_x_1 = saturn_x_1 + 0.02728479923d0*cos(5.8447638902d0 + 206.42936592071d0 * t)
        saturn_x_1 = saturn_x_1 + 0.0308650168d0*cos(4.27493632359d0 + 426.8420083595d0 * t)
        saturn_x_1 = saturn_x_1 + 0.09285877988d0*cos(0.61678993503d0 + 0.2438174835d0 * t)
        saturn_x_1=saturn_x_1*t;

        saturn_x_2 = saturn_x_2 + 0.00234984093d0*cos(2.44660941367d0 + 426.8420083595d0 * t)
        saturn_x_2 = saturn_x_2 + 0.0054727137d0*cos(3.61668298145d0 + 220.6564599223d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00561413805d0*cos(1.25489421778d0 + 206.42936592071d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00611630287d0*cos(2.28479450822d0 + 0.2438174835d0 * t)
        saturn_x_2 = saturn_x_2 + 0.0086272193d0*cos(2.44701762869d0 + 213.5429129215d0 * t)
        saturn_x_2=saturn_x_2*t*t;

        r = saturn_x_2+saturn_x_1+saturn_x_0
    end function

    function saturn_y(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: saturn_y_0
        double precision :: saturn_y_1
        double precision :: saturn_y_2
        double precision :: saturn_y_3
        double precision :: saturn_y_4
        double precision :: saturn_y_5

        saturn_y_0 = 0.0
        saturn_y_1 = 0.0
        saturn_y_2 = 0.0
        saturn_y_3 = 0.0
        saturn_y_4 = 0.0
        saturn_y_5 = 0.0

        saturn_y_0 = saturn_y_0 + 0.00122184772d0*cos(2.79745491359d0 + 103.3365917021d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00141571884d0*cos(0.13687533326d0 + 419.2408263917d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00169743473d0*cos(1.48210526398d0 + 205.9417309537d0 * t)
        saturn_y_0 = saturn_y_0 + 0.0037311088d0*cos(4.71342390707d0 + 433.9555553603d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00413446294d0*cos(0.41153807474d0 + 102.84895673509d0 * t)
        saturn_y_0 = saturn_y_0 + 0.0043422703d0*cos(5.42862996601d0 + 529.9347825781d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00708587042d0*cos(1.13843336592d0 + 316.6356871401d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00773784455d0*cos(5.07365052128d0 + 213.0552779545d0 * t)
        saturn_y_0 = saturn_y_0 + 0.01098217124d0*cos(4.08641227912d0 + 640.1411037975d0 * t)
        saturn_y_0 = saturn_y_0 + 0.01141539711d0*cos(1.46265679616d0 + 419.72846135871d0 * t)
        saturn_y_0 = saturn_y_0 + 0.01250581159d0*cos(0.60313024847d0 + 110.45013870291d0 * t)
        saturn_y_0 = saturn_y_0 + 0.02340967916d0*cos(0.44899651249d0 + 7.3573644843d0 * t)
        saturn_y_0 = saturn_y_0 + 0.06628914946d0*cos(5.46296215793d0 + 220.6564599223d0 * t)
        saturn_y_0 = saturn_y_0 + 0.06836881382d0*cos(2.57458281509d0 + 206.42936592071d0 * t)
        saturn_y_0 = saturn_y_0 + 0.26427074351d0*cos(4.83578897954d0 + 426.8420083595d0 * t)
        saturn_y_0 = saturn_y_0 + 0.79501390398d0*cos(3.19501080417d0 + 0.2438174835d0 * t)
        saturn_y_0 = saturn_y_0 + 9.52312533591d0*cos(5.58640389526d0 + 213.5429129215d0 * t)

        saturn_y_1 = saturn_y_1 + 0.00118113185d0*cos(5.87589622232d0 + 110.45013870291d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00189297041d0*cos(2.91534956216d0 + 433.9555553603d0 * t)
        saturn_y_1 = saturn_y_1 + 0.0020446502d0*cos(5.78983620425d0 + 213.5429129215d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00256626023d0*cos(1.95374338915d0 + 640.1411037975d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00312353889d0*cos(3.25876676291d0 + 419.72846135871d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00629201988d0*cos(5.03696656027d0 + 7.3573644843d0 * t)
        saturn_y_1 = saturn_y_1 + 0.02644990371d0*cos(3.76176749725d0 + 220.6564599223d0 * t)
        saturn_y_1 = saturn_y_1 + 0.02728479923d0*cos(4.27396756341d0 + 206.42936592071d0 * t)
        saturn_y_1 = saturn_y_1 + 0.0308650168d0*cos(2.70413999679d0 + 426.8420083595d0 * t)
        saturn_y_1 = saturn_y_1 + 0.09285877988d0*cos(5.32917891541d0 + 0.2438174835d0 * t)
        saturn_y_1=saturn_y_1*t;

        saturn_y_2 = saturn_y_2 + 0.00234984093d0*cos(0.87581308687d0 + 426.8420083595d0 * t)
        saturn_y_2 = saturn_y_2 + 0.0054727137d0*cos(2.04588665465d0 + 220.6564599223d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00561413805d0*cos(5.96728319816d0 + 206.42936592071d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00611630287d0*cos(0.71399818143d0 + 0.2438174835d0 * t)
        saturn_y_2 = saturn_y_2 + 0.0086272193d0*cos(0.87622130189d0 + 213.5429129215d0 * t)
        saturn_y_2=saturn_y_2*t*t;

        r = saturn_y_2+saturn_y_1+saturn_y_0
    end function

    function saturn_z(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: saturn_z_0
        double precision :: saturn_z_1
        double precision :: saturn_z_2
        double precision :: saturn_z_3
        double precision :: saturn_z_4
        double precision :: saturn_z_5

        saturn_z_0 = 0.0
        saturn_z_1 = 0.0
        saturn_z_2 = 0.0
        saturn_z_3 = 0.0
        saturn_z_4 = 0.0
        saturn_z_5 = 0.0

        saturn_z_0 = saturn_z_0 + 0.00286934048d0*cos(3.48073526693d0 + 220.4126424388d0 * t)
        saturn_z_0 = saturn_z_0 + 0.00329280791d0*cos(0.57121407104d0 + 206.1855484372d0 * t)
        saturn_z_0 = saturn_z_0 + 0.01148283576d0*cos(2.85128367469d0 + 426.598190876d0 * t)
        saturn_z_0 = saturn_z_0 + 0.01214249867d0*cos(0.0d0 + 0.0d0 * t)
        saturn_z_0 = saturn_z_0 + 0.4135695094d0*cos(3.60234142982d0 + 213.299095438d0 * t)

        saturn_z_1 = saturn_z_1 + 0.00144960439d0*cos(2.301493671d0 + 206.1855484372d0 * t)
        saturn_z_1 = saturn_z_1 + 0.00707598508d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_z_1 = saturn_z_1 + 0.0381030832d0*cos(5.33520316778d0 + 213.299095438d0 * t)
        saturn_z_1=saturn_z_1*t;

        saturn_z_2 = saturn_z_2 + 0.00195192259d0*cos(0.50946874402d0 + 213.299095438d0 * t)
        saturn_z_2=saturn_z_2*t*t;

        r = saturn_z_2+saturn_z_1+saturn_z_0
    end function

    function uranus_x(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: uranus_x_0
        double precision :: uranus_x_1
        double precision :: uranus_x_2
        double precision :: uranus_x_3
        double precision :: uranus_x_4
        double precision :: uranus_x_5

        uranus_x_0 = 0.0
        uranus_x_1 = 0.0
        uranus_x_2 = 0.0
        uranus_x_3 = 0.0
        uranus_x_4 = 0.0
        uranus_x_5 = 0.0

        uranus_x_0 = uranus_x_0 + 0.00104563861d0*cos(3.90482142702d0 + 146.8380692015d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00109354782d0*cos(4.45315493564d0 + 34.9202727377d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00111232552d0*cos(5.12247819448d0 + 223.1041404771d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00119632236d0*cos(4.10138480343d0 + 39.86132582961d0 * t)
        uranus_x_0 = uranus_x_0 + 0.0012498711d0*cos(2.51425439859d0 + 111.67397898031d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00135315426d0*cos(5.51056178199d0 + 78.9575693139d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00144768728d0*cos(2.31926691782d0 + 71.09326278771d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00215803817d0*cos(5.30879023629d0 + 38.3768531213d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00268150781d0*cos(0.96866014994d0 + 213.5429129215d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00385773622d0*cos(6.18935243085d0 + 138.76131435421d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00433273658d0*cos(5.66160493313d0 + 74.53778108379d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00458904544d0*cos(3.90806753942d0 + 3.21276290011d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00496011875d0*cos(0.59957126795d0 + 529.9347825781d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00547585874d0*cos(3.63122642205d0 + 86.07111631471d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00563553759d0*cos(4.80714363531d0 + 72.05647063421d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00621475723d0*cos(3.05878846167d0 + 77.9943614674d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00637676334d0*cos(4.21540624166d0 + 63.9797157869d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00657433967d0*cos(0.57593488766d0 + 151.2914873264d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00941982751d0*cos(1.66111566598d0 + 11.2895177474d0 * t)
        uranus_x_0 = uranus_x_0 + 0.01443286598d0*cos(2.65100655909d0 + 148.32254190981d0 * t)
        uranus_x_0 = uranus_x_0 + 0.01542809804d0*cos(4.12121005059d0 + 224.5886131854d0 * t)
        uranus_x_0 = uranus_x_0 + 0.06225592204d0*cos(5.14041718059d0 + 1.7282901918d0 * t)
        uranus_x_0 = uranus_x_0 + 0.14127113794d0*cos(4.39569319388d0 + 76.50988875911d0 * t)
        uranus_x_0 = uranus_x_0 + 0.14712072726d0*cos(3.42449547672d0 + 73.5409433425d0 * t)
        uranus_x_0 = uranus_x_0 + 0.44396480992d0*cos(1.65965632053d0 + 149.8070146181d0 * t)
        uranus_x_0 = uranus_x_0 + 1.33267708718d0*cos(6.16089978558d0 + 0.2438174835d0 * t)
        uranus_x_0 = uranus_x_0 + 19.16944479396d0*cos(5.48129363987d0 + 75.0254160508d0 * t)

        uranus_x_1 = uranus_x_1 + 0.0011058356d0*cos(5.57527703898d0 + 11.2895177474d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00229359688d0*cos(2.48132547665d0 + 76.50988875911d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00239408407d0*cos(5.33797172897d0 + 73.5409433425d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00738897387d0*cos(6.01007226305d0 + 149.8070146181d0 * t)
        uranus_x_1 = uranus_x_1 + 0.0222511375d0*cos(1.80968682072d0 + 0.2438174835d0 * t)
        uranus_x_1=uranus_x_1*t;

        uranus_x_2 = uranus_x_2 + 0.0101661895d0*cos(0.77056492682d0 + 75.0254160508d0 * t)
        uranus_x_2=uranus_x_2*t*t;

        r = uranus_x_2+uranus_x_1+uranus_x_0
    end function

    function uranus_y(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: uranus_y_0
        double precision :: uranus_y_1
        double precision :: uranus_y_2
        double precision :: uranus_y_3
        double precision :: uranus_y_4
        double precision :: uranus_y_5

        uranus_y_0 = 0.0
        uranus_y_1 = 0.0
        uranus_y_2 = 0.0
        uranus_y_3 = 0.0
        uranus_y_4 = 0.0
        uranus_y_5 = 0.0

        uranus_y_0 = uranus_y_0 + 0.00104563861d0*cos(2.33402510023d0 + 146.8380692015d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00109354782d0*cos(6.02395126243d0 + 34.9202727377d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00111232552d0*cos(3.55168186769d0 + 223.1041404771d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00119632236d0*cos(2.53058847664d0 + 39.86132582961d0 * t)
        uranus_y_0 = uranus_y_0 + 0.0012498711d0*cos(0.9434580718d0 + 111.67397898031d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00135315426d0*cos(3.93976545519d0 + 78.9575693139d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00144768728d0*cos(0.74847059103d0 + 71.09326278771d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00215803817d0*cos(3.7379939095d0 + 38.3768531213d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00268150781d0*cos(5.68104913033d0 + 213.5429129215d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00385773622d0*cos(4.61855610406d0 + 138.76131435421d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00433273658d0*cos(0.94921595274d0 + 74.53778108379d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00458904544d0*cos(2.33727121263d0 + 3.21276290011d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00496011875d0*cos(5.31196024834d0 + 529.9347825781d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00547585874d0*cos(2.06043009525d0 + 86.07111631471d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00563553759d0*cos(3.23634730851d0 + 72.05647063421d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00621475723d0*cos(1.48799213488d0 + 77.9943614674d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00637676334d0*cos(2.64460991486d0 + 63.9797157869d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00657433967d0*cos(5.28832386804d0 + 151.2914873264d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00941982751d0*cos(0.09031933919d0 + 11.2895177474d0 * t)
        uranus_y_0 = uranus_y_0 + 0.01443286598d0*cos(1.08021023229d0 + 148.32254190981d0 * t)
        uranus_y_0 = uranus_y_0 + 0.01542809804d0*cos(2.55041372379d0 + 224.5886131854d0 * t)
        uranus_y_0 = uranus_y_0 + 0.06225592204d0*cos(3.56962085379d0 + 1.7282901918d0 * t)
        uranus_y_0 = uranus_y_0 + 0.14127113794d0*cos(2.82489686708d0 + 76.50988875911d0 * t)
        uranus_y_0 = uranus_y_0 + 0.14712072726d0*cos(1.85369914992d0 + 73.5409433425d0 * t)
        uranus_y_0 = uranus_y_0 + 0.44396480992d0*cos(0.08885999374d0 + 149.8070146181d0 * t)
        uranus_y_0 = uranus_y_0 + 1.33267708718d0*cos(4.59010345878d0 + 0.2438174835d0 * t)
        uranus_y_0 = uranus_y_0 + 19.16944479396d0*cos(3.91049731307d0 + 75.0254160508d0 * t)

        uranus_y_1 = uranus_y_1 + 0.0011058356d0*cos(4.00448071218d0 + 11.2895177474d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00229359688d0*cos(0.91052914986d0 + 76.50988875911d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00239408407d0*cos(3.76717540218d0 + 73.5409433425d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00738897387d0*cos(4.43927593626d0 + 149.8070146181d0 * t)
        uranus_y_1 = uranus_y_1 + 0.0222511375d0*cos(0.23889049392d0 + 0.2438174835d0 * t)
        uranus_y_1=uranus_y_1*t;

        uranus_y_2 = uranus_y_2 + 0.0101661895d0*cos(5.4829539072d0 + 75.0254160508d0 * t)
        uranus_y_2=uranus_y_2*t*t;

        r = uranus_y_2+uranus_y_1+uranus_y_0
    end function

    function uranus_z(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: uranus_z_0
        double precision :: uranus_z_1
        double precision :: uranus_z_2
        double precision :: uranus_z_3
        double precision :: uranus_z_4
        double precision :: uranus_z_5

        uranus_z_0 = 0.0
        uranus_z_1 = 0.0
        uranus_z_2 = 0.0
        uranus_z_3 = 0.0
        uranus_z_4 = 0.0
        uranus_z_5 = 0.0

        uranus_z_0 = uranus_z_0 + 0.0019028189d0*cos(1.61643841193d0 + 76.2660712756d0 * t)
        uranus_z_0 = uranus_z_0 + 0.00190881685d0*cos(0.57869575952d0 + 73.297125859d0 * t)
        uranus_z_0 = uranus_z_0 + 0.00599316131d0*cos(5.08119500585d0 + 149.5631971346d0 * t)
        uranus_z_0 = uranus_z_0 + 0.01774318778d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_z_0 = uranus_z_0 + 0.25878127698d0*cos(2.61861272578d0 + 74.7815985673d0 * t)

        uranus_z_1 = uranus_z_1 + 0.03962262983d0*cos(4.12418900865d0 + 74.7815985673d0 * t)
        uranus_z_1=uranus_z_1*t;

        uranus_z_2 = uranus_z_2 + 0.00177117836d0*cos(5.80022816704d0 + 74.7815985673d0 * t)
        uranus_z_2=uranus_z_2*t*t;

        r = uranus_z_2+uranus_z_1+uranus_z_0
    end function

    function venus_x(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: venus_x_0
        double precision :: venus_x_1
        double precision :: venus_x_2
        double precision :: venus_x_3
        double precision :: venus_x_4
        double precision :: venus_x_5

        venus_x_0 = 0.0
        venus_x_1 = 0.0
        venus_x_2 = 0.0
        venus_x_3 = 0.0
        venus_x_4 = 0.0
        venus_x_5 = 0.0

        venus_x_0 = venus_x_0 + 0.00244692613d0*cos(4.05605630888d0 + 20426.8149099055d0 * t)
        venus_x_0 = venus_x_0 + 0.00733886107d0*cos(5.43699242686d0 + 0.2438174835d0 * t)
        venus_x_0 = venus_x_0 + 0.72268045621d0*cos(3.17614669179d0 + 10213.5293636945d0 * t)

        r = venus_x_0
    end function

    function venus_y(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: venus_y_0
        double precision :: venus_y_1
        double precision :: venus_y_2
        double precision :: venus_y_3
        double precision :: venus_y_4
        double precision :: venus_y_5

        venus_y_0 = 0.0
        venus_y_1 = 0.0
        venus_y_2 = 0.0
        venus_y_3 = 0.0
        venus_y_4 = 0.0
        venus_y_5 = 0.0

        venus_y_0 = venus_y_0 + 0.00244692613d0*cos(2.48525998209d0 + 20426.8149099055d0 * t)
        venus_y_0 = venus_y_0 + 0.00733886107d0*cos(3.86619610007d0 + 0.2438174835d0 * t)
        venus_y_0 = venus_y_0 + 0.72268045621d0*cos(1.60535036499d0 + 10213.5293636945d0 * t)

        r = venus_y_0
    end function

    function venus_z(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: venus_z_0
        double precision :: venus_z_1
        double precision :: venus_z_2
        double precision :: venus_z_3
        double precision :: venus_z_4
        double precision :: venus_z_5

        venus_z_0 = 0.0
        venus_z_1 = 0.0
        venus_z_2 = 0.0
        venus_z_3 = 0.0
        venus_z_4 = 0.0
        venus_z_5 = 0.0

        venus_z_0 = venus_z_0 + 0.04282990302d0*cos(0.26703856476d0 + 10213.285546211d0 * t)

        venus_z_1 = venus_z_1 + 0.00371157532d0*cos(1.80370484107d0 + 10213.285546211d0 * t)
        venus_z_1=venus_z_1*t;

        r = venus_z_1+venus_z_0
    end function

end module VSOP87C_Nano
