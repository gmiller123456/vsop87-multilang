!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87C_Pico_Velocities
    implicit none

    contains
    subroutine VSOP87C_Pico_getEarthV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_x(t) / 365250.0
        result(2)=earth_y(t) / 365250.0
        result(3)=earth_z(t) / 365250.0
    end subroutine

    subroutine VSOP87C_Pico_getJupiterV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_x(t) / 365250.0
        result(2)=jupiter_y(t) / 365250.0
        result(3)=jupiter_z(t) / 365250.0
    end subroutine

    subroutine VSOP87C_Pico_getMarsV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_x(t) / 365250.0
        result(2)=mars_y(t) / 365250.0
        result(3)=mars_z(t) / 365250.0
    end subroutine

    subroutine VSOP87C_Pico_getMercuryV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_x(t) / 365250.0
        result(2)=mercury_y(t) / 365250.0
        result(3)=mercury_z(t) / 365250.0
    end subroutine

    subroutine VSOP87C_Pico_getNeptuneV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_x(t) / 365250.0
        result(2)=neptune_y(t) / 365250.0
        result(3)=neptune_z(t) / 365250.0
    end subroutine

    subroutine VSOP87C_Pico_getSaturnV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_x(t) / 365250.0
        result(2)=saturn_y(t) / 365250.0
        result(3)=saturn_z(t) / 365250.0
    end subroutine

    subroutine VSOP87C_Pico_getUranusV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_x(t) / 365250.0
        result(2)=uranus_y(t) / 365250.0
        result(3)=uranus_z(t) / 365250.0
    end subroutine

    subroutine VSOP87C_Pico_getVenusV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=venus_x(t) / 365250.0
        result(2)=venus_y(t) / 365250.0
        result(3)=venus_z(t) / 365250.0
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

        earth_x_0 = earth_x_0 -(t**0)*0.02506324281d0*0.2438174835d0*sin(4.93819429098d0 + 0.2438174835d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.99986069925d0*6283.3196674749d0*sin(1.75347045757d0 + 6283.3196674749d0 * t)

        r = earth_x_0
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

        earth_y_0 = earth_y_0 -(t**0)*0.02506324281d0*0.2438174835d0*sin(3.36739796418d0 + 0.2438174835d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.99986069925d0*6283.3196674749d0*sin(0.18267413078d0 + 6283.3196674749d0 * t)

        r = earth_y_0
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

        jupiter_x_0 = jupiter_x_0 -(t**0)*0.01476016965d0*537.0483295789d0*sin(3.61748058581d0 + 537.0483295789d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.01504469362d0*522.8212355773d0*sin(0.72934997067d0 + 522.8212355773d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.12593400247d0*1059.6257476727d0*sin(0.94916456487d0 + 1059.6257476727d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.37839498798d0*0.2438174835d0*sin(3.39164799011d0 + 0.2438174835d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*5.19591755961d0*529.9347825781d0*sin(0.599546722d0 + 529.9347825781d0 * t)

        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.0191255649d0*cos(4.23275123829d0 + 0.2438174835d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.0191255649d0*0.2438174835d0*sin(4.23275123829d0 + 0.2438174835d0 * t)

        r = jupiter_x_1+jupiter_x_0
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

        jupiter_y_0 = jupiter_y_0 -(t**0)*0.01476016965d0*537.0483295789d0*sin(2.04668425902d0 + 537.0483295789d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.01504469362d0*522.8212355773d0*sin(5.44173895105d0 + 522.8212355773d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.12593400247d0*1059.6257476727d0*sin(5.66155354525d0 + 1059.6257476727d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.37839498798d0*0.2438174835d0*sin(1.82085166331d0 + 0.2438174835d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*5.19591755961d0*529.9347825781d0*sin(5.31193570238d0 + 529.9347825781d0 * t)

        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.0191255649d0*cos(2.66195491149d0 + 0.2438174835d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.0191255649d0*0.2438174835d0*sin(2.66195491149d0 + 0.2438174835d0 * t)

        r = jupiter_y_1+jupiter_y_0
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

        jupiter_z_0 = jupiter_z_0 -(t**0)*0.11823100489d0*529.6909650946d0*sin(3.55844646343d0 + 529.6909650946d0 * t)

        r = jupiter_z_0
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

        mars_x_0 = mars_x_0 -(t**0)*0.07067734657d0*6681.46867088311d0*sin(0.2584167963d0 + 6681.46867088311d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.2133734347d0*0.2438174835d0*sin(2.723903427d0 + 0.2438174835d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.51664432758d0*3340.8562441833d0*sin(6.20347631684d0 + 3340.8562441833d0 * t)

        mars_x_1 = mars_x_1 +(t**(0))*1*0.01668487239d0*cos(4.16976892466d0 + 0.2438174835d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.01668487239d0*0.2438174835d0*sin(4.16976892466d0 + 0.2438174835d0 * t)

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

        mars_y_0 = mars_y_0 -(t**0)*0.07067734657d0*6681.46867088311d0*sin(4.97080577669d0 + 6681.46867088311d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.2133734347d0*0.2438174835d0*sin(1.15310710021d0 + 0.2438174835d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.51664432758d0*3340.8562441833d0*sin(4.63267999004d0 + 3340.8562441833d0 * t)

        mars_y_1 = mars_y_1 +(t**(0))*1*0.01668487239d0*cos(2.59897259786d0 + 0.2438174835d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.01668487239d0*0.2438174835d0*sin(2.59897259786d0 + 0.2438174835d0 * t)

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

        mars_z_0 = mars_z_0 -(t**0)*0.0490120722d0*3340.6124266998d0*sin(3.76712324286d0 + 3340.6124266998d0 * t)

        r = mars_z_0
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

        mercury_x_0 = mercury_x_0 -(t**0)*0.03840153904d0*52176.0501006319d0*sin(1.17015646101d0 + 52176.0501006319d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.11918926148d0*0.2438174835d0*sin(4.49027758439d0 + 0.2438174835d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.37749277893d0*26088.1469590577d0*sin(4.40259139579d0 + 26088.1469590577d0 * t)

        r = mercury_x_0
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

        mercury_y_0 = mercury_y_0 -(t**0)*0.03840153904d0*52176.0501006319d0*sin(5.8825454414d0 + 52176.0501006319d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.11918926148d0*0.2438174835d0*sin(2.9194812576d0 + 0.2438174835d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.37749277893d0*26088.1469590577d0*sin(2.83179506899d0 + 26088.1469590577d0 * t)

        r = mercury_y_0
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

        mercury_z_0 = mercury_z_0 -(t**0)*0.04607665326d0*26087.9031415742d0*sin(1.99295081967d0 + 26087.9031415742d0 * t)

        r = mercury_z_0
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

        neptune_x_0 = neptune_x_0 -(t**0)*0.01073890204d0*75.0254160508d0*sin(5.38477153556d0 + 75.0254160508d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.02590782232d0*1.7282901918d0*sin(1.99609768221d0 + 1.7282901918d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.13506026414d0*76.50988875911d0*sin(3.50055820972d0 + 76.50988875911d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.14935642614d0*39.86132582961d0*sin(1.08477702063d0 + 39.86132582961d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.15716341901d0*36.892380413d0*sin(0.11310077968d0 + 36.892380413d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.40567587218d0*0.2438174835d0*sin(3.98149970131d0 + 0.2438174835d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*30.0597310058d0*38.3768531213d0*sin(5.31188633083d0 + 38.3768531213d0 * t)

        neptune_x_2 = neptune_x_2 +(t**(1))*2*0.01620002167d0*cos(0.60038473142d0 + 38.3768531213d0*t)
        neptune_x_2 = neptune_x_2 -(t**2)*0.01620002167d0*38.3768531213d0*sin(0.60038473142d0 + 38.3768531213d0 * t)

        r = neptune_x_2+neptune_x_0
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

        neptune_y_0 = neptune_y_0 -(t**0)*0.01073890204d0*75.0254160508d0*sin(3.81397520876d0 + 75.0254160508d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.02590782232d0*1.7282901918d0*sin(0.42530135542d0 + 1.7282901918d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.13506026414d0*76.50988875911d0*sin(1.92976188293d0 + 76.50988875911d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.14935642614d0*39.86132582961d0*sin(5.79716600101d0 + 39.86132582961d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.15716341901d0*36.892380413d0*sin(4.82548976006d0 + 36.892380413d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.40567587218d0*0.2438174835d0*sin(2.41070337452d0 + 0.2438174835d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*30.0597310058d0*38.3768531213d0*sin(3.74109000403d0 + 38.3768531213d0 * t)

        neptune_y_2 = neptune_y_2 +(t**(1))*2*0.01620002167d0*cos(5.31277371181d0 + 38.3768531213d0*t)
        neptune_y_2 = neptune_y_2 -(t**2)*0.01620002167d0*38.3768531213d0*sin(5.31277371181d0 + 38.3768531213d0 * t)

        r = neptune_y_2+neptune_y_0
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

        neptune_z_0 = neptune_z_0 -(t**0)*0.01245978462d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.92866054405d0*38.1330356378d0*sin(1.44103930278d0 + 38.1330356378d0 * t)

        neptune_z_1 = neptune_z_1 +(t**(0))*1*0.06832633707d0*cos(3.80782656293d0 + 38.1330356378d0*t)
        neptune_z_1 = neptune_z_1 -(t**1)*0.06832633707d0*38.1330356378d0*sin(3.80782656293d0 + 38.1330356378d0 * t)

        r = neptune_z_1+neptune_z_0
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

        saturn_x_0 = saturn_x_0 -(t**0)*0.01098217124d0*640.1411037975d0*sin(5.65720860592d0 + 640.1411037975d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.01141539711d0*419.72846135871d0*sin(3.03345312296d0 + 419.72846135871d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.01250581159d0*110.45013870291d0*sin(2.17392657526d0 + 110.45013870291d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.02340967916d0*7.3573644843d0*sin(2.01979283929d0 + 7.3573644843d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.06628914946d0*220.6564599223d0*sin(0.75057317755d0 + 220.6564599223d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.06836881382d0*206.42936592071d0*sin(4.14537914189d0 + 206.42936592071d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.26427074351d0*426.8420083595d0*sin(0.12339999915d0 + 426.8420083595d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.79501390398d0*0.2438174835d0*sin(4.76580713096d0 + 0.2438174835d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*9.52312533591d0*213.5429129215d0*sin(0.87401491487d0 + 213.5429129215d0 * t)

        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.02644990371d0*cos(5.33256382404d0 + 220.6564599223d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.02644990371d0*220.6564599223d0*sin(5.33256382404d0 + 220.6564599223d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.02728479923d0*cos(5.8447638902d0 + 206.42936592071d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.02728479923d0*206.42936592071d0*sin(5.8447638902d0 + 206.42936592071d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.0308650168d0*cos(4.27493632359d0 + 426.8420083595d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.0308650168d0*426.8420083595d0*sin(4.27493632359d0 + 426.8420083595d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.09285877988d0*cos(0.61678993503d0 + 0.2438174835d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.09285877988d0*0.2438174835d0*sin(0.61678993503d0 + 0.2438174835d0 * t)

        r = saturn_x_1+saturn_x_0
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

        saturn_y_0 = saturn_y_0 -(t**0)*0.01098217124d0*640.1411037975d0*sin(4.08641227912d0 + 640.1411037975d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.01141539711d0*419.72846135871d0*sin(1.46265679616d0 + 419.72846135871d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.01250581159d0*110.45013870291d0*sin(0.60313024847d0 + 110.45013870291d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.02340967916d0*7.3573644843d0*sin(0.44899651249d0 + 7.3573644843d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.06628914946d0*220.6564599223d0*sin(5.46296215793d0 + 220.6564599223d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.06836881382d0*206.42936592071d0*sin(2.57458281509d0 + 206.42936592071d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.26427074351d0*426.8420083595d0*sin(4.83578897954d0 + 426.8420083595d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.79501390398d0*0.2438174835d0*sin(3.19501080417d0 + 0.2438174835d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*9.52312533591d0*213.5429129215d0*sin(5.58640389526d0 + 213.5429129215d0 * t)

        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.02644990371d0*cos(3.76176749725d0 + 220.6564599223d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.02644990371d0*220.6564599223d0*sin(3.76176749725d0 + 220.6564599223d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.02728479923d0*cos(4.27396756341d0 + 206.42936592071d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.02728479923d0*206.42936592071d0*sin(4.27396756341d0 + 206.42936592071d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.0308650168d0*cos(2.70413999679d0 + 426.8420083595d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.0308650168d0*426.8420083595d0*sin(2.70413999679d0 + 426.8420083595d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.09285877988d0*cos(5.32917891541d0 + 0.2438174835d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.09285877988d0*0.2438174835d0*sin(5.32917891541d0 + 0.2438174835d0 * t)

        r = saturn_y_1+saturn_y_0
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

        saturn_z_0 = saturn_z_0 -(t**0)*0.01148283576d0*426.598190876d0*sin(2.85128367469d0 + 426.598190876d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.01214249867d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.4135695094d0*213.299095438d0*sin(3.60234142982d0 + 213.299095438d0 * t)

        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.0381030832d0*cos(5.33520316778d0 + 213.299095438d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.0381030832d0*213.299095438d0*sin(5.33520316778d0 + 213.299095438d0 * t)

        r = saturn_z_1+saturn_z_0
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

        uranus_x_0 = uranus_x_0 -(t**0)*0.01443286598d0*148.32254190981d0*sin(2.65100655909d0 + 148.32254190981d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.01542809804d0*224.5886131854d0*sin(4.12121005059d0 + 224.5886131854d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.06225592204d0*1.7282901918d0*sin(5.14041718059d0 + 1.7282901918d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.14127113794d0*76.50988875911d0*sin(4.39569319388d0 + 76.50988875911d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.14712072726d0*73.5409433425d0*sin(3.42449547672d0 + 73.5409433425d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.44396480992d0*149.8070146181d0*sin(1.65965632053d0 + 149.8070146181d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.33267708718d0*0.2438174835d0*sin(6.16089978558d0 + 0.2438174835d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*19.16944479396d0*75.0254160508d0*sin(5.48129363987d0 + 75.0254160508d0 * t)

        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.0222511375d0*cos(1.80968682072d0 + 0.2438174835d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.0222511375d0*0.2438174835d0*sin(1.80968682072d0 + 0.2438174835d0 * t)

        uranus_x_2 = uranus_x_2 +(t**(1))*2*0.0101661895d0*cos(0.77056492682d0 + 75.0254160508d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*0.0101661895d0*75.0254160508d0*sin(0.77056492682d0 + 75.0254160508d0 * t)

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

        uranus_y_0 = uranus_y_0 -(t**0)*0.01443286598d0*148.32254190981d0*sin(1.08021023229d0 + 148.32254190981d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.01542809804d0*224.5886131854d0*sin(2.55041372379d0 + 224.5886131854d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.06225592204d0*1.7282901918d0*sin(3.56962085379d0 + 1.7282901918d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.14127113794d0*76.50988875911d0*sin(2.82489686708d0 + 76.50988875911d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.14712072726d0*73.5409433425d0*sin(1.85369914992d0 + 73.5409433425d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.44396480992d0*149.8070146181d0*sin(0.08885999374d0 + 149.8070146181d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.33267708718d0*0.2438174835d0*sin(4.59010345878d0 + 0.2438174835d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*19.16944479396d0*75.0254160508d0*sin(3.91049731307d0 + 75.0254160508d0 * t)

        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.0222511375d0*cos(0.23889049392d0 + 0.2438174835d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.0222511375d0*0.2438174835d0*sin(0.23889049392d0 + 0.2438174835d0 * t)

        uranus_y_2 = uranus_y_2 +(t**(1))*2*0.0101661895d0*cos(5.4829539072d0 + 75.0254160508d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*0.0101661895d0*75.0254160508d0*sin(5.4829539072d0 + 75.0254160508d0 * t)

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

        uranus_z_0 = uranus_z_0 -(t**0)*0.01774318778d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.25878127698d0*74.7815985673d0*sin(2.61861272578d0 + 74.7815985673d0 * t)

        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.03962262983d0*cos(4.12418900865d0 + 74.7815985673d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.03962262983d0*74.7815985673d0*sin(4.12418900865d0 + 74.7815985673d0 * t)

        r = uranus_z_1+uranus_z_0
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

        venus_x_0 = venus_x_0 -(t**0)*0.72268045621d0*10213.5293636945d0*sin(3.17614669179d0 + 10213.5293636945d0 * t)

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

        venus_y_0 = venus_y_0 -(t**0)*0.72268045621d0*10213.5293636945d0*sin(1.60535036499d0 + 10213.5293636945d0 * t)

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

        venus_z_0 = venus_z_0 -(t**0)*0.04282990302d0*10213.285546211d0*sin(0.26703856476d0 + 10213.285546211d0 * t)

        r = venus_z_0
    end function

end module VSOP87C_Pico_Velocities
