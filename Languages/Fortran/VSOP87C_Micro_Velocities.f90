!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87C_Micro_Velocities
    implicit none

    contains
    subroutine VSOP87C_Micro_getEarthV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_x(t) / 365250.0
        result(2)=earth_y(t) / 365250.0
        result(3)=earth_z(t) / 365250.0
    end subroutine

    subroutine VSOP87C_Micro_getJupiterV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_x(t) / 365250.0
        result(2)=jupiter_y(t) / 365250.0
        result(3)=jupiter_z(t) / 365250.0
    end subroutine

    subroutine VSOP87C_Micro_getMarsV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_x(t) / 365250.0
        result(2)=mars_y(t) / 365250.0
        result(3)=mars_z(t) / 365250.0
    end subroutine

    subroutine VSOP87C_Micro_getMercuryV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_x(t) / 365250.0
        result(2)=mercury_y(t) / 365250.0
        result(3)=mercury_z(t) / 365250.0
    end subroutine

    subroutine VSOP87C_Micro_getNeptuneV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_x(t) / 365250.0
        result(2)=neptune_y(t) / 365250.0
        result(3)=neptune_z(t) / 365250.0
    end subroutine

    subroutine VSOP87C_Micro_getSaturnV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_x(t) / 365250.0
        result(2)=saturn_y(t) / 365250.0
        result(3)=saturn_z(t) / 365250.0
    end subroutine

    subroutine VSOP87C_Micro_getUranusV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_x(t) / 365250.0
        result(2)=uranus_y(t) / 365250.0
        result(3)=uranus_z(t) / 365250.0
    end subroutine

    subroutine VSOP87C_Micro_getVenusV(t, result)
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

        earth_x_0 = earth_x_0 -(t**0)*0.00010466796d0*18849.4713674577d0*sin(1.66721984219d0 + 18849.4713674577d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00835274807d0*12566.3955174663d0*sin(1.71033525539d0 + 12566.3955174663d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.02506324281d0*0.2438174835d0*sin(4.93819429098d0 + 0.2438174835d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.99986069925d0*6283.3196674749d0*sin(1.75347045757d0 + 6283.3196674749d0 * t)

        earth_x_1 = earth_x_1 +(t**(0))*1*0.00051503383d0*cos(6.00263199393d0 + 12566.3955174663d0*t)
        earth_x_1 = earth_x_1 -(t**1)*0.00051503383d0*12566.3955174663d0*sin(6.00263199393d0 + 12566.3955174663d0 * t)
        earth_x_1 = earth_x_1 +(t**(0))*1*0.00154550744d0*cos(0.64605836878d0 + 0.2438174835d0*t)
        earth_x_1 = earth_x_1 -(t**1)*0.00154550744d0*0.2438174835d0*sin(0.64605836878d0 + 0.2438174835d0 * t)

        earth_x_2 = earth_x_2 +(t**(1))*2*0.00052911498d0*cos(3.32403354915d0 + 6283.3196674749d0*t)
        earth_x_2 = earth_x_2 -(t**2)*0.00052911498d0*6283.3196674749d0*sin(3.32403354915d0 + 6283.3196674749d0 * t)

        r = earth_x_2+earth_x_1+earth_x_0
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

        earth_y_0 = earth_y_0 -(t**0)*0.00010466796d0*18849.4713674577d0*sin(0.0964235154d0 + 18849.4713674577d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.00835274807d0*12566.3955174663d0*sin(0.13953892859d0 + 12566.3955174663d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.02506324281d0*0.2438174835d0*sin(3.36739796418d0 + 0.2438174835d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.99986069925d0*6283.3196674749d0*sin(0.18267413078d0 + 6283.3196674749d0 * t)

        earth_y_1 = earth_y_1 +(t**(0))*1*0.00051503383d0*cos(4.43183566713d0 + 12566.3955174663d0*t)
        earth_y_1 = earth_y_1 -(t**1)*0.00051503383d0*12566.3955174663d0*sin(4.43183566713d0 + 12566.3955174663d0 * t)
        earth_y_1 = earth_y_1 +(t**(0))*1*0.00154550744d0*cos(5.35844734917d0 + 0.2438174835d0*t)
        earth_y_1 = earth_y_1 -(t**1)*0.00154550744d0*0.2438174835d0*sin(5.35844734917d0 + 0.2438174835d0 * t)

        earth_y_2 = earth_y_2 +(t**(1))*2*0.00052911498d0*cos(1.75323722235d0 + 6283.3196674749d0*t)
        earth_y_2 = earth_y_2 -(t**2)*0.00052911498d0*6283.3196674749d0*sin(1.75323722235d0 + 6283.3196674749d0 * t)

        r = earth_y_2+earth_y_1+earth_y_0
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

        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00010835166d0*103.3365917021d0*sin(3.19395745172d0 + 103.3365917021d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00011421526d0*544.1618765797d0*sin(3.48157539864d0 + 544.1618765797d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00011992571d0*533.8669358412d0*sin(0.5850865737d0 + 533.8669358412d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00012154356d0*526.00262931501d0*sin(3.75230765024d0 + 526.00262931501d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00014406626d0*743.23387801611d0*sin(2.06284119096d0 + 743.23387801611d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00016227856d0*515.70768857651d0*sin(0.86857414313d0 + 515.70768857651d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00016308761d0*736.1203310153d0*sin(5.73600933766d0 + 736.1203310153d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00017560618d0*316.6356871401d0*sin(1.9551177172d0 + 316.6356871401d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.0001774954d0*419.72846135871d0*sin(0.84241151614d0 + 419.72846135871d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00019727427d0*2119.00767786191d0*sin(1.64894896707d0 + 2119.00767786191d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00026616582d0*323.74923414091d0*sin(4.85226363695d0 + 323.74923414091d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00030209026d0*205.9417309537d0*sin(2.97106959244d0 + 205.9417309537d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00034007392d0*419.2408263917d0*sin(1.74694593876d0 + 419.2408263917d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00059268404d0*949.4194264533d0*sin(4.46187501371d0 + 949.4194264533d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00068329094d0*846.3266522347d0*sin(3.4383377105d0 + 846.3266522347d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00072093376d0*1066.7392946735d0*sin(3.9612286107d0 + 1066.7392946735d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00087327523d0*529.44714761109d0*sin(6.27541436099d0 + 529.44714761109d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.0010271945d0*1052.51220067191d0*sin(6.17016418155d0 + 1052.51220067191d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00114122292d0*1162.7185218913d0*sin(0.01655163411d0 + 1162.7185218913d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00133443745d0*213.5429129215d0*sin(0.89287673636d0 + 213.5429129215d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.001421714d0*633.0275567967d0*sin(5.56556633177d0 + 633.0275567967d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00148291722d0*110.45013870291d0*sin(6.15618324076d0 + 110.45013870291d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00193179179d0*426.8420083595d0*sin(5.02674864982d0 + 426.8420083595d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00301186623d0*7.3573644843d0*sin(5.17699571796d0 + 7.3573644843d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00381996183d0*102.84895673509d0*sin(1.98605213956d0 + 102.84895673509d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00457751771d0*1589.3167127673d0*sin(1.29886948102d0 + 1589.3167127673d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.01476016965d0*537.0483295789d0*sin(3.61748058581d0 + 537.0483295789d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.01504469362d0*522.8212355773d0*sin(0.72934997067d0 + 522.8212355773d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.12593400247d0*1059.6257476727d0*sin(0.94916456487d0 + 1059.6257476727d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.37839498798d0*0.2438174835d0*sin(3.39164799011d0 + 0.2438174835d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*5.19591755961d0*529.9347825781d0*sin(0.599546722d0 + 529.9347825781d0 * t)

        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00012962263d0*cos(2.56767956763d0 + 515.70768857651d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00012962263d0*515.70768857651d0*sin(2.56767956763d0 + 515.70768857651d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00013643757d0*cos(0.30427911223d0 + 633.0275567967d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00013643757d0*633.0275567967d0*sin(0.30427911223d0 + 633.0275567967d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.0001794164d0*cos(4.02099530935d0 + 426.8420083595d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.0001794164d0*426.8420083595d0*sin(4.02099530935d0 + 426.8420083595d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00020232242d0*cos(4.46840569934d0 + 110.45013870291d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00020232242d0*110.45013870291d0*sin(4.46840569934d0 + 110.45013870291d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.0002595074d0*cos(5.5278077932d0 + 529.44714761109d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.0002595074d0*529.44714761109d0*sin(5.5278077932d0 + 529.44714761109d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00031231184d0*cos(2.34701987017d0 + 1066.7392946735d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00031231184d0*1066.7392946735d0*sin(2.34701987017d0 + 1066.7392946735d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00032508552d0*cos(1.74680960116d0 + 1052.51220067191d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00032508552d0*1052.51220067191d0*sin(1.74680960116d0 + 1052.51220067191d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00037242394d0*cos(3.38536248935d0 + 529.9347825781d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00037242394d0*529.9347825781d0*sin(3.38536248935d0 + 529.9347825781d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00046191617d0*cos(0.45737291603d0 + 1589.3167127673d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00046191617d0*1589.3167127673d0*sin(0.45737291603d0 + 1589.3167127673d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00081432741d0*cos(3.47331266459d0 + 7.3573644843d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00081432741d0*7.3573644843d0*sin(3.47331266459d0 + 7.3573644843d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00589005176d0*cos(1.91564604125d0 + 537.0483295789d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00589005176d0*537.0483295789d0*sin(1.91564604125d0 + 537.0483295789d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00600483021d0*cos(2.42939944495d0 + 522.8212355773d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00600483021d0*522.8212355773d0*sin(2.42939944495d0 + 522.8212355773d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00634902259d0*cos(0.10706507632d0 + 1059.6257476727d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00634902259d0*1059.6257476727d0*sin(0.10706507632d0 + 1059.6257476727d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.0191255649d0*cos(4.23275123829d0 + 0.2438174835d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.0191255649d0*0.2438174835d0*sin(4.23275123829d0 + 0.2438174835d0 * t)

        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00011394908d0*cos(1.72910824402d0 + 7.3573644843d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00011394908d0*7.3573644843d0*sin(1.72910824402d0 + 7.3573644843d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.000357197d0*cos(5.025916786d0 + 1059.6257476727d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.000357197d0*1059.6257476727d0*sin(5.025916786d0 + 1059.6257476727d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00121682952d0*cos(0.20529040863d0 + 537.0483295789d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00121682952d0*537.0483295789d0*sin(0.20529040863d0 + 537.0483295789d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00123752958d0*cos(4.12933545743d0 + 522.8212355773d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00123752958d0*522.8212355773d0*sin(4.12933545743d0 + 522.8212355773d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00132313738d0*cos(5.46375601476d0 + 0.2438174835d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00132313738d0*0.2438174835d0*sin(5.46375601476d0 + 0.2438174835d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00202462055d0*cos(2.1687209077d0 + 529.9347825781d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00202462055d0*529.9347825781d0*sin(2.1687209077d0 + 529.9347825781d0 * t)

        jupiter_x_3 = jupiter_x_3 +(t**(2))*3*0.00016795793d0*cos(4.75643108252d0 + 537.0483295789d0*t)
        jupiter_x_3 = jupiter_x_3 -(t**3)*0.00016795793d0*537.0483295789d0*sin(4.75643108252d0 + 537.0483295789d0 * t)
        jupiter_x_3 = jupiter_x_3 +(t**(2))*3*0.00016990902d0*cos(5.84326964724d0 + 522.8212355773d0*t)
        jupiter_x_3 = jupiter_x_3 -(t**3)*0.00016990902d0*522.8212355773d0*sin(5.84326964724d0 + 522.8212355773d0 * t)

        r = jupiter_x_3+jupiter_x_2+jupiter_x_1+jupiter_x_0
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

        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00010835166d0*103.3365917021d0*sin(1.62316112493d0 + 103.3365917021d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00011421526d0*544.1618765797d0*sin(1.91077907185d0 + 544.1618765797d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00011992571d0*533.8669358412d0*sin(5.29747555409d0 + 533.8669358412d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00012154356d0*526.00262931501d0*sin(2.18151132345d0 + 526.00262931501d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00014406626d0*743.23387801611d0*sin(0.49204486417d0 + 743.23387801611d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00016227856d0*515.70768857651d0*sin(5.58096312351d0 + 515.70768857651d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00016308761d0*736.1203310153d0*sin(4.16521301086d0 + 736.1203310153d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00017560618d0*316.6356871401d0*sin(0.3843213904d0 + 316.6356871401d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.0001774954d0*419.72846135871d0*sin(5.55480049652d0 + 419.72846135871d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00019727427d0*2119.00767786191d0*sin(0.07815264028d0 + 2119.00767786191d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00026616582d0*323.74923414091d0*sin(3.28146731015d0 + 323.74923414091d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00030209026d0*205.9417309537d0*sin(4.54186591923d0 + 205.9417309537d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00034007392d0*419.2408263917d0*sin(3.31774226555d0 + 419.2408263917d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00059268404d0*949.4194264533d0*sin(2.89107868692d0 + 949.4194264533d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00068329094d0*846.3266522347d0*sin(1.86754138371d0 + 846.3266522347d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00072093376d0*1066.7392946735d0*sin(2.3904322839d0 + 1066.7392946735d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00087327523d0*529.44714761109d0*sin(1.5630253806d0 + 529.44714761109d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.0010271945d0*1052.51220067191d0*sin(4.59936785476d0 + 1052.51220067191d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00114122292d0*1162.7185218913d0*sin(4.72894061449d0 + 1162.7185218913d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00133443745d0*213.5429129215d0*sin(5.60526571675d0 + 213.5429129215d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.001421714d0*633.0275567967d0*sin(3.99477000498d0 + 633.0275567967d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00148291722d0*110.45013870291d0*sin(4.58538691397d0 + 110.45013870291d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00193179179d0*426.8420083595d0*sin(3.45595232302d0 + 426.8420083595d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00301186623d0*7.3573644843d0*sin(3.60619939116d0 + 7.3573644843d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00381996183d0*102.84895673509d0*sin(3.55684846636d0 + 102.84895673509d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00457751771d0*1589.3167127673d0*sin(6.0112584614d0 + 1589.3167127673d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.01476016965d0*537.0483295789d0*sin(2.04668425902d0 + 537.0483295789d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.01504469362d0*522.8212355773d0*sin(5.44173895105d0 + 522.8212355773d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.12593400247d0*1059.6257476727d0*sin(5.66155354525d0 + 1059.6257476727d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.37839498798d0*0.2438174835d0*sin(1.82085166331d0 + 0.2438174835d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*5.19591755961d0*529.9347825781d0*sin(5.31193570238d0 + 529.9347825781d0 * t)

        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00012962263d0*cos(0.99688324083d0 + 515.70768857651d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00012962263d0*515.70768857651d0*sin(0.99688324083d0 + 515.70768857651d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00013643757d0*cos(5.01666809262d0 + 633.0275567967d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00013643757d0*633.0275567967d0*sin(5.01666809262d0 + 633.0275567967d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.0001794164d0*cos(2.45019898255d0 + 426.8420083595d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.0001794164d0*426.8420083595d0*sin(2.45019898255d0 + 426.8420083595d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00020232242d0*cos(2.89760937255d0 + 110.45013870291d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00020232242d0*110.45013870291d0*sin(2.89760937255d0 + 110.45013870291d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.0002595074d0*cos(0.81541881282d0 + 529.44714761109d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.0002595074d0*529.44714761109d0*sin(0.81541881282d0 + 529.44714761109d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00031231184d0*cos(0.77622354337d0 + 1066.7392946735d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00031231184d0*1066.7392946735d0*sin(0.77622354337d0 + 1066.7392946735d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00032508552d0*cos(0.17601327437d0 + 1052.51220067191d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00032508552d0*1052.51220067191d0*sin(0.17601327437d0 + 1052.51220067191d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00037242394d0*cos(1.81456616256d0 + 529.9347825781d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00037242394d0*529.9347825781d0*sin(1.81456616256d0 + 529.9347825781d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00046191617d0*cos(5.16976189642d0 + 1589.3167127673d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00046191617d0*1589.3167127673d0*sin(5.16976189642d0 + 1589.3167127673d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00081432741d0*cos(1.9025163378d0 + 7.3573644843d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00081432741d0*7.3573644843d0*sin(1.9025163378d0 + 7.3573644843d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00589005176d0*cos(0.34484971445d0 + 537.0483295789d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00589005176d0*537.0483295789d0*sin(0.34484971445d0 + 537.0483295789d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00600483021d0*cos(0.85860311815d0 + 522.8212355773d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00600483021d0*522.8212355773d0*sin(0.85860311815d0 + 522.8212355773d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00634902259d0*cos(4.81945405671d0 + 1059.6257476727d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00634902259d0*1059.6257476727d0*sin(4.81945405671d0 + 1059.6257476727d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.0191255649d0*cos(2.66195491149d0 + 0.2438174835d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.0191255649d0*0.2438174835d0*sin(2.66195491149d0 + 0.2438174835d0 * t)

        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00011394908d0*cos(0.15831191722d0 + 7.3573644843d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00011394908d0*7.3573644843d0*sin(0.15831191722d0 + 7.3573644843d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.000357197d0*cos(3.45512045921d0 + 1059.6257476727d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.000357197d0*1059.6257476727d0*sin(3.45512045921d0 + 1059.6257476727d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00121682952d0*cos(4.91767938901d0 + 537.0483295789d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00121682952d0*537.0483295789d0*sin(4.91767938901d0 + 537.0483295789d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00123752958d0*cos(2.55853913064d0 + 522.8212355773d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00123752958d0*522.8212355773d0*sin(2.55853913064d0 + 522.8212355773d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00132313738d0*cos(3.89295968796d0 + 0.2438174835d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00132313738d0*0.2438174835d0*sin(3.89295968796d0 + 0.2438174835d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00202462055d0*cos(0.59792458091d0 + 529.9347825781d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00202462055d0*529.9347825781d0*sin(0.59792458091d0 + 529.9347825781d0 * t)

        jupiter_y_3 = jupiter_y_3 +(t**(2))*3*0.00016795793d0*cos(3.18563475573d0 + 537.0483295789d0*t)
        jupiter_y_3 = jupiter_y_3 -(t**3)*0.00016795793d0*537.0483295789d0*sin(3.18563475573d0 + 537.0483295789d0 * t)
        jupiter_y_3 = jupiter_y_3 +(t**(2))*3*0.00016990902d0*cos(4.27247332045d0 + 522.8212355773d0*t)
        jupiter_y_3 = jupiter_y_3 -(t**3)*0.00016990902d0*522.8212355773d0*sin(4.27247332045d0 + 522.8212355773d0 * t)

        r = jupiter_y_3+jupiter_y_2+jupiter_y_1+jupiter_y_0
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

        jupiter_z_0 = jupiter_z_0 -(t**0)*0.0001041616d0*1589.0728952838d0*sin(4.25764593061d0 + 1589.0728952838d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.00033295491d0*536.8045120954d0*sin(0.30297050585d0 + 536.8045120954d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.00042388592d0*522.5774180938d0*sin(3.60144191032d0 + 522.5774180938d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.00286562094d0*1059.3819301892d0*sin(3.90812238338d0 + 1059.3819301892d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.00859031952d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.11823100489d0*529.6909650946d0*sin(3.55844646343d0 + 529.6909650946d0 * t)

        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*0.00011443757d0*cos(4.73284385916d0 + 536.8045120954d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*0.00011443757d0*536.8045120954d0*sin(4.73284385916d0 + 536.8045120954d0 * t)
        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*0.00013239917d0*cos(3.14159265359d0 + 0.0d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*0.00013239917d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*0.00016158151d0*cos(5.47088355549d0 + 522.5774180938d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*0.00016158151d0*522.5774180938d0*sin(5.47088355549d0 + 522.5774180938d0 * t)
        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*0.00922338114d0*cos(5.70129376981d0 + 529.6909650946d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*0.00922338114d0*529.6909650946d0*sin(5.70129376981d0 + 529.6909650946d0 * t)

        jupiter_z_2 = jupiter_z_2 +(t**(1))*2*0.00042203037d0*cos(1.45965899387d0 + 529.6909650946d0*t)
        jupiter_z_2 = jupiter_z_2 -(t**2)*0.00042203037d0*529.6909650946d0*sin(1.45965899387d0 + 529.6909650946d0 * t)

        r = jupiter_z_2+jupiter_z_1+jupiter_z_0
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

        mars_x_0 = mars_x_0 -(t**0)*0.00011370204d0*1059.6257476727d0*sin(4.832381267d0 + 1059.6257476727d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00013426076d0*529.9347825781d0*sin(0.63015591517d0 + 529.9347825781d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.0002102727d0*3344.3793625323d0*sin(1.1783978568d0 + 3344.3793625323d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00021051988d0*3337.33312583431d0*sin(1.80377821704d0 + 3337.33312583431d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.0004092783d0*13362.6935242827d0*sin(0.93466338314d0 + 13362.6935242827d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00135189385d0*3340.36860921629d0*sin(0.59603904502d0 + 3340.36860921629d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00494034875d0*10022.0810975829d0*sin(0.59654023167d0 + 10022.0810975829d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.07067734657d0*6681.46867088311d0*sin(0.2584167963d0 + 6681.46867088311d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.2133734347d0*0.2438174835d0*sin(2.723903427d0 + 0.2438174835d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.51664432758d0*3340.8562441833d0*sin(6.20347631684d0 + 3340.8562441833d0 * t)

        mars_x_1 = mars_x_1 +(t**(0))*1*0.00013417687d0*cos(2.71465693005d0 + 3340.8562441833d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00013417687d0*3340.8562441833d0*sin(2.71465693005d0 + 3340.8562441833d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*0.00033905789d0*cos(5.71116244693d0 + 3340.36860921629d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00033905789d0*3340.36860921629d0*sin(5.71116244693d0 + 3340.36860921629d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*0.00077122404d0*cos(5.43227875215d0 + 10022.0810975829d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00077122404d0*10022.0810975829d0*sin(5.43227875215d0 + 10022.0810975829d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*0.00551520815d0*cos(5.09364818449d0 + 6681.46867088311d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00551520815d0*6681.46867088311d0*sin(5.09364818449d0 + 6681.46867088311d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*0.01668487239d0*cos(4.16976892466d0 + 0.2438174835d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.01668487239d0*0.2438174835d0*sin(4.16976892466d0 + 0.2438174835d0 * t)

        mars_x_2 = mars_x_2 +(t**(1))*2*0.00021826465d0*cos(3.36498183687d0 + 6681.46867088311d0*t)
        mars_x_2 = mars_x_2 -(t**2)*0.00021826465d0*6681.46867088311d0*sin(3.36498183687d0 + 6681.46867088311d0 * t)
        mars_x_2 = mars_x_2 +(t**(1))*2*0.00068999338d0*cos(5.55726456394d0 + 0.2438174835d0*t)
        mars_x_2 = mars_x_2 -(t**2)*0.00068999338d0*0.2438174835d0*sin(5.55726456394d0 + 0.2438174835d0 * t)
        mars_x_2 = mars_x_2 +(t**(1))*2*0.00082190105d0*cos(1.49108837587d0 + 3340.8562441833d0*t)
        mars_x_2 = mars_x_2 -(t**2)*0.00082190105d0*3340.8562441833d0*sin(1.49108837587d0 + 3340.8562441833d0 * t)

        r = mars_x_2+mars_x_1+mars_x_0
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

        mars_y_0 = mars_y_0 -(t**0)*0.00011370204d0*1059.6257476727d0*sin(3.26158494021d0 + 1059.6257476727d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00013426076d0*529.9347825781d0*sin(5.34254489555d0 + 529.9347825781d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.0002102727d0*3344.3793625323d0*sin(5.89078683719d0 + 3344.3793625323d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00021051988d0*3337.33312583431d0*sin(0.23298189024d0 + 3337.33312583431d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.0004092783d0*13362.6935242827d0*sin(5.64705236353d0 + 13362.6935242827d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00135189385d0*3340.36860921629d0*sin(2.16683537182d0 + 3340.36860921629d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00494034875d0*10022.0810975829d0*sin(5.30892921206d0 + 10022.0810975829d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.07067734657d0*6681.46867088311d0*sin(4.97080577669d0 + 6681.46867088311d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.2133734347d0*0.2438174835d0*sin(1.15310710021d0 + 0.2438174835d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.51664432758d0*3340.8562441833d0*sin(4.63267999004d0 + 3340.8562441833d0 * t)

        mars_y_1 = mars_y_1 +(t**(0))*1*0.00013417687d0*cos(1.14386060325d0 + 3340.8562441833d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.00013417687d0*3340.8562441833d0*sin(1.14386060325d0 + 3340.8562441833d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*0.00033905789d0*cos(0.99877346654d0 + 3340.36860921629d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.00033905789d0*3340.36860921629d0*sin(0.99877346654d0 + 3340.36860921629d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*0.00077122404d0*cos(3.86148242536d0 + 10022.0810975829d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.00077122404d0*10022.0810975829d0*sin(3.86148242536d0 + 10022.0810975829d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*0.00551520815d0*cos(3.5228518577d0 + 6681.46867088311d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.00551520815d0*6681.46867088311d0*sin(3.5228518577d0 + 6681.46867088311d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*0.01668487239d0*cos(2.59897259786d0 + 0.2438174835d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.01668487239d0*0.2438174835d0*sin(2.59897259786d0 + 0.2438174835d0 * t)

        mars_y_2 = mars_y_2 +(t**(1))*2*0.00021826465d0*cos(1.79418551007d0 + 6681.46867088311d0*t)
        mars_y_2 = mars_y_2 -(t**2)*0.00021826465d0*6681.46867088311d0*sin(1.79418551007d0 + 6681.46867088311d0 * t)
        mars_y_2 = mars_y_2 +(t**(1))*2*0.00068999338d0*cos(3.98646823714d0 + 0.2438174835d0*t)
        mars_y_2 = mars_y_2 -(t**2)*0.00068999338d0*0.2438174835d0*sin(3.98646823714d0 + 0.2438174835d0 * t)
        mars_y_2 = mars_y_2 +(t**(1))*2*0.00082190105d0*cos(6.20347735626d0 + 3340.8562441833d0*t)
        mars_y_2 = mars_y_2 -(t**2)*0.00082190105d0*3340.8562441833d0*sin(6.20347735626d0 + 3340.8562441833d0 * t)

        r = mars_y_2+mars_y_1+mars_y_0
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

        mars_z_0 = mars_z_0 -(t**0)*0.00015958402d0*10021.8372800994d0*sin(4.44367058261d0 + 10021.8372800994d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*0.00228333904d0*6681.2248533996d0*sin(4.10544022266d0 + 6681.2248533996d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*0.00660669541d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*0.0490120722d0*3340.6124266998d0*sin(3.76712324286d0 + 3340.6124266998d0 * t)

        mars_z_1 = mars_z_1 +(t**(0))*1*0.00032258788d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_z_1 = mars_z_1 -(t**1)*0.00032258788d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mars_z_1 = mars_z_1 +(t**(0))*1*0.00533220761d0*cos(5.37045188878d0 + 3340.6124266998d0*t)
        mars_z_1 = mars_z_1 -(t**1)*0.00533220761d0*3340.6124266998d0*sin(5.37045188878d0 + 3340.6124266998d0 * t)

        mars_z_2 = mars_z_2 +(t**(1))*2*0.00011396105d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_z_2 = mars_z_2 -(t**2)*0.00011396105d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mars_z_2 = mars_z_2 +(t**(1))*2*0.00025937973d0*cos(0.59444055009d0 + 3340.6124266998d0*t)
        mars_z_2 = mars_z_2 -(t**2)*0.00025937973d0*3340.6124266998d0*sin(0.59444055009d0 + 3340.6124266998d0 * t)

        r = mars_z_2+mars_z_1+mars_z_0
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

        mercury_x_0 = mercury_x_0 -(t**0)*0.00021056065d0*130439.75952535449d0*sin(4.03921104994d0 + 130439.75952535449d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.00024906132d0*52175.56246566489d0*sin(5.26305668971d0 + 52175.56246566489d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.00105974941d0*104351.8563837803d0*sin(0.9884651742d0 + 104351.8563837803d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.00305833424d0*26087.65932409069d0*sin(2.10298673336d0 + 26087.65932409069d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.00585979278d0*78263.95324220609d0*sin(4.22090402969d0 + 78263.95324220609d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.03840153904d0*52176.0501006319d0*sin(1.17015646101d0 + 52176.0501006319d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.11918926148d0*0.2438174835d0*sin(4.49027758439d0 + 0.2438174835d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.37749277893d0*26088.1469590577d0*sin(4.40259139579d0 + 26088.1469590577d0 * t)

        mercury_x_1 = mercury_x_1 +(t**(0))*1*0.0003244844d0*cos(2.68404164136d0 + 78263.95324220609d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*0.0003244844d0*78263.95324220609d0*sin(2.68404164136d0 + 78263.95324220609d0 * t)
        mercury_x_1 = mercury_x_1 +(t**(0))*1*0.00106107047d0*cos(5.91538469937d0 + 52176.0501006319d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*0.00106107047d0*52176.0501006319d0*sin(5.91538469937d0 + 52176.0501006319d0 * t)
        mercury_x_1 = mercury_x_1 +(t**(0))*1*0.00328639517d0*cos(6.04028758995d0 + 0.2438174835d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*0.00328639517d0*0.2438174835d0*sin(6.04028758995d0 + 0.2438174835d0 * t)

        mercury_x_2 = mercury_x_2 +(t**(1))*2*0.00020000263d0*cos(5.96893489541d0 + 26088.1469590577d0*t)
        mercury_x_2 = mercury_x_2 -(t**2)*0.00020000263d0*26088.1469590577d0*sin(5.96893489541d0 + 26088.1469590577d0 * t)

        r = mercury_x_2+mercury_x_1+mercury_x_0
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

        mercury_y_0 = mercury_y_0 -(t**0)*0.00021056065d0*130439.75952535449d0*sin(2.46841472315d0 + 130439.75952535449d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00024906132d0*52175.56246566489d0*sin(0.55066770933d0 + 52175.56246566489d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00105974941d0*104351.8563837803d0*sin(5.70085415459d0 + 104351.8563837803d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00305833424d0*26087.65932409069d0*sin(3.67378306016d0 + 26087.65932409069d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00585979278d0*78263.95324220609d0*sin(2.65010770289d0 + 78263.95324220609d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.03840153904d0*52176.0501006319d0*sin(5.8825454414d0 + 52176.0501006319d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.11918926148d0*0.2438174835d0*sin(2.9194812576d0 + 0.2438174835d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.37749277893d0*26088.1469590577d0*sin(2.83179506899d0 + 26088.1469590577d0 * t)

        mercury_y_1 = mercury_y_1 +(t**(0))*1*0.0003244844d0*cos(1.11324531456d0 + 78263.95324220609d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*0.0003244844d0*78263.95324220609d0*sin(1.11324531456d0 + 78263.95324220609d0 * t)
        mercury_y_1 = mercury_y_1 +(t**(0))*1*0.00106107047d0*cos(4.34458837257d0 + 52176.0501006319d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*0.00106107047d0*52176.0501006319d0*sin(4.34458837257d0 + 52176.0501006319d0 * t)
        mercury_y_1 = mercury_y_1 +(t**(0))*1*0.00328639517d0*cos(4.46949126315d0 + 0.2438174835d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*0.00328639517d0*0.2438174835d0*sin(4.46949126315d0 + 0.2438174835d0 * t)

        mercury_y_2 = mercury_y_2 +(t**(1))*2*0.00020000263d0*cos(4.39813856862d0 + 26088.1469590577d0*t)
        mercury_y_2 = mercury_y_2 -(t**2)*0.00020000263d0*26088.1469590577d0*sin(4.39813856862d0 + 26088.1469590577d0 * t)

        r = mercury_y_2+mercury_y_1+mercury_y_0
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

        mercury_z_0 = mercury_z_0 -(t**0)*0.00012957446d0*104351.61256629678d0*sin(4.8592203201d0 + 104351.61256629678d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.00071626395d0*78263.70942472259d0*sin(1.80894256071d0 + 78263.70942472259d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.00469171617d0*52175.8062831484d0*sin(5.04215742764d0 + 52175.8062831484d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.00708734365d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.04607665326d0*26087.9031415742d0*sin(1.99295081967d0 + 26087.9031415742d0 * t)

        mercury_z_1 = mercury_z_1 +(t**(0))*1*0.00084745328d0*cos(3.14159265359d0 + 0.0d0*t)
        mercury_z_1 = mercury_z_1 -(t**1)*0.00084745328d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_z_1 = mercury_z_1 +(t**(0))*1*0.00172388569d0*cos(3.47961470688d0 + 26087.9031415742d0*t)
        mercury_z_1 = mercury_z_1 -(t**1)*0.00172388569d0*26087.9031415742d0*sin(3.47961470688d0 + 26087.9031415742d0 * t)

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

        neptune_x_0 = neptune_x_0 -(t**0)*0.00012013477d0*1059.6257476727d0*sin(0.94915799508d0 + 1059.6257476727d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00012614154d0*113.15845168861d0*sin(3.56929744338d0 + 113.15845168861d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00012788929d0*111.67397898031d0*sin(2.73769634046d0 + 111.67397898031d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00020517968d0*33.43580002939d0*sin(2.55621077117d0 + 33.43580002939d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00025576289d0*71.5688356672d0*sin(1.48342967006d0 + 71.5688356672d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00028891307d0*42.83027124621d0*sin(4.78947715515d0 + 42.83027124621d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00029247752d0*72.05647063421d0*sin(1.62319522731d0 + 72.05647063421d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.0004037068d0*33.9234349964d0*sin(2.66129691063d0 + 33.9234349964d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.000689154d0*4.6972356084d0*sin(5.834703744d0 + 4.6972356084d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00090968285d0*114.6429243969d0*sin(1.68886748674d0 + 114.6429243969d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00122117697d0*34.9202727377d0*sin(1.30863876781d0 + 34.9202727377d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00135892298d0*77.9943614674d0*sin(5.54654979922d0 + 77.9943614674d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00272446904d0*213.5429129215d0*sin(0.87404115637d0 + 213.5429129215d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.0030602538d0*73.5409433425d0*sin(0.3991678814d0 + 73.5409433425d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00495650075d0*529.9347825781d0*sin(0.59957534348d0 + 529.9347825781d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00565555652d0*41.3457985379d0*sin(5.98943773879d0 + 41.3457985379d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00687594822d0*37.88921815429d0*sin(0.72075739344d0 + 37.88921815429d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00702768075d0*35.40790770471d0*sin(1.45363642119d0 + 35.40790770471d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00816388197d0*3.21276290011d0*sin(0.78185518038d0 + 3.21276290011d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.01073890204d0*75.0254160508d0*sin(5.38477153556d0 + 75.0254160508d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.02590782232d0*1.7282901918d0*sin(1.99609768221d0 + 1.7282901918d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.13506026414d0*76.50988875911d0*sin(3.50055820972d0 + 76.50988875911d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.14935642614d0*39.86132582961d0*sin(1.08477702063d0 + 39.86132582961d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.15716341901d0*36.892380413d0*sin(0.11310077968d0 + 36.892380413d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.40567587218d0*0.2438174835d0*sin(3.98149970131d0 + 0.2438174835d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*30.0597310058d0*38.3768531213d0*sin(5.31188633083d0 + 38.3768531213d0 * t)

        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00013038843d0*cos(5.36684741537d0 + 3.21276290011d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00013038843d0*3.21276290011d0*sin(5.36684741537d0 + 3.21276290011d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00017445772d0*cos(4.26396070854d0 + 41.3457985379d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00017445772d0*41.3457985379d0*sin(4.26396070854d0 + 41.3457985379d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00021930692d0*cos(3.20019569049d0 + 35.40790770471d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00021930692d0*35.40790770471d0*sin(3.20019569049d0 + 35.40790770471d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00103735195d0*cos(6.08270773807d0 + 38.3768531213d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00103735195d0*38.3768531213d0*sin(6.08270773807d0 + 38.3768531213d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00106073143d0*cos(3.07856435709d0 + 37.88921815429d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00106073143d0*37.88921815429d0*sin(3.07856435709d0 + 37.88921815429d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00118508231d0*cos(2.88623136735d0 + 76.50988875911d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00118508231d0*76.50988875911d0*sin(2.88623136735d0 + 76.50988875911d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00242677799d0*cos(5.46293481092d0 + 39.86132582961d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00242677799d0*39.86132582961d0*sin(5.46293481092d0 + 39.86132582961d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00256200629d0*cos(2.01693264233d0 + 36.892380413d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00256200629d0*36.892380413d0*sin(2.01693264233d0 + 36.892380413d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00357822049d0*cos(4.60537437341d0 + 0.2438174835d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00357822049d0*0.2438174835d0*sin(4.60537437341d0 + 0.2438174835d0 * t)

        neptune_x_2 = neptune_x_2 +(t**(1))*2*0.00012318619d0*cos(2.58513114618d0 + 39.86132582961d0*t)
        neptune_x_2 = neptune_x_2 -(t**2)*0.00012318619d0*39.86132582961d0*sin(2.58513114618d0 + 39.86132582961d0 * t)
        neptune_x_2 = neptune_x_2 +(t**(1))*2*0.00028138323d0*cos(5.58440767451d0 + 0.2438174835d0*t)
        neptune_x_2 = neptune_x_2 -(t**2)*0.00028138323d0*0.2438174835d0*sin(5.58440767451d0 + 0.2438174835d0 * t)
        neptune_x_2 = neptune_x_2 +(t**(1))*2*0.01620002167d0*cos(0.60038473142d0 + 38.3768531213d0*t)
        neptune_x_2 = neptune_x_2 -(t**2)*0.01620002167d0*38.3768531213d0*sin(0.60038473142d0 + 38.3768531213d0 * t)

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

        neptune_y_0 = neptune_y_0 -(t**0)*0.00012013477d0*1059.6257476727d0*sin(5.66154697546d0 + 1059.6257476727d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00012614154d0*113.15845168861d0*sin(1.99850111659d0 + 113.15845168861d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00012788929d0*111.67397898031d0*sin(1.16690001367d0 + 111.67397898031d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00020517968d0*33.43580002939d0*sin(4.12700709797d0 + 33.43580002939d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00025576289d0*71.5688356672d0*sin(3.05422599686d0 + 71.5688356672d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00028891307d0*42.83027124621d0*sin(3.21868082836d0 + 42.83027124621d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00029247752d0*72.05647063421d0*sin(0.05239890051d0 + 72.05647063421d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.0004037068d0*33.9234349964d0*sin(1.09050058383d0 + 33.9234349964d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.000689154d0*4.6972356084d0*sin(4.2639074172d0 + 4.6972356084d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00090968285d0*114.6429243969d0*sin(0.11807115994d0 + 114.6429243969d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00122117697d0*34.9202727377d0*sin(2.8794350946d0 + 34.9202727377d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00135892298d0*77.9943614674d0*sin(3.97575347243d0 + 77.9943614674d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00272446904d0*213.5429129215d0*sin(5.58643013675d0 + 213.5429129215d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.0030602538d0*73.5409433425d0*sin(5.11155686178d0 + 73.5409433425d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00495650075d0*529.9347825781d0*sin(5.31196432386d0 + 529.9347825781d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00565555652d0*41.3457985379d0*sin(4.41864141199d0 + 41.3457985379d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00687594822d0*37.88921815429d0*sin(2.29155372023d0 + 37.88921815429d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00702768075d0*35.40790770471d0*sin(6.16602540157d0 + 35.40790770471d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00816388197d0*3.21276290011d0*sin(5.49424416077d0 + 3.21276290011d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.01073890204d0*75.0254160508d0*sin(3.81397520876d0 + 75.0254160508d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.02590782232d0*1.7282901918d0*sin(0.42530135542d0 + 1.7282901918d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.13506026414d0*76.50988875911d0*sin(1.92976188293d0 + 76.50988875911d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.14935642614d0*39.86132582961d0*sin(5.79716600101d0 + 39.86132582961d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.15716341901d0*36.892380413d0*sin(4.82548976006d0 + 36.892380413d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.40567587218d0*0.2438174835d0*sin(2.41070337452d0 + 0.2438174835d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*30.0597310058d0*38.3768531213d0*sin(3.74109000403d0 + 38.3768531213d0 * t)

        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00013038843d0*cos(3.79605108858d0 + 3.21276290011d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00013038843d0*3.21276290011d0*sin(3.79605108858d0 + 3.21276290011d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00017445772d0*cos(2.69316438174d0 + 41.3457985379d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00017445772d0*41.3457985379d0*sin(2.69316438174d0 + 41.3457985379d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00021930692d0*cos(1.6293993637d0 + 35.40790770471d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00021930692d0*35.40790770471d0*sin(1.6293993637d0 + 35.40790770471d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00103735195d0*cos(4.51191141127d0 + 38.3768531213d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00103735195d0*38.3768531213d0*sin(4.51191141127d0 + 38.3768531213d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00106073143d0*cos(4.64936068389d0 + 37.88921815429d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00106073143d0*37.88921815429d0*sin(4.64936068389d0 + 37.88921815429d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00118508231d0*cos(1.31543504055d0 + 76.50988875911d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00118508231d0*76.50988875911d0*sin(1.31543504055d0 + 76.50988875911d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00242677799d0*cos(3.89213848413d0 + 39.86132582961d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00242677799d0*39.86132582961d0*sin(3.89213848413d0 + 39.86132582961d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00256200629d0*cos(0.44613631554d0 + 36.892380413d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00256200629d0*36.892380413d0*sin(0.44613631554d0 + 36.892380413d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00357822049d0*cos(3.03457804662d0 + 0.2438174835d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00357822049d0*0.2438174835d0*sin(3.03457804662d0 + 0.2438174835d0 * t)

        neptune_y_2 = neptune_y_2 +(t**(1))*2*0.00012318619d0*cos(1.01433481938d0 + 39.86132582961d0*t)
        neptune_y_2 = neptune_y_2 -(t**2)*0.00012318619d0*39.86132582961d0*sin(1.01433481938d0 + 39.86132582961d0 * t)
        neptune_y_2 = neptune_y_2 +(t**(1))*2*0.00028138323d0*cos(4.01361134771d0 + 0.2438174835d0*t)
        neptune_y_2 = neptune_y_2 -(t**2)*0.00028138323d0*0.2438174835d0*sin(4.01361134771d0 + 0.2438174835d0 * t)
        neptune_y_2 = neptune_y_2 +(t**(1))*2*0.01620002167d0*cos(5.31277371181d0 + 38.3768531213d0*t)
        neptune_y_2 = neptune_y_2 -(t**2)*0.01620002167d0*38.3768531213d0*sin(5.31277371181d0 + 38.3768531213d0 * t)

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

        neptune_z_0 = neptune_z_0 -(t**0)*0.0001127968d0*529.6909650946d0*sin(3.55816676334d0 + 529.6909650946d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.00011789909d0*213.299095438d0*sin(3.60001877675d0 + 213.299095438d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.00016865319d0*41.1019810544d0*sin(2.13251104425d0 + 41.1019810544d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.00025812584d0*2.9689454166d0*sin(3.19303128782d0 + 2.9689454166d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.00030873335d0*35.1640902212d0*sin(3.29017611456d0 + 35.1640902212d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.00032704958d0*74.7815985673d0*sin(1.52048692001d0 + 74.7815985673d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.00084104329d0*1.4844727083d0*sin(4.38928900096d0 + 1.4844727083d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.00417558068d0*76.2660712756d0*sin(5.91310695421d0 + 76.2660712756d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.00451987936d0*39.6175083461d0*sin(3.50949720541d0 + 39.6175083461d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.00474333567d0*36.6485629295d0*sin(2.52218774238d0 + 36.6485629295d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.01245978462d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.92866054405d0*38.1330356378d0*sin(1.44103930278d0 + 38.1330356378d0 * t)

        neptune_z_1 = neptune_z_1 +(t**(0))*1*0.00027088623d0*cos(1.97557659098d0 + 76.2660712756d0*t)
        neptune_z_1 = neptune_z_1 -(t**1)*0.00027088623d0*76.2660712756d0*sin(1.97557659098d0 + 76.2660712756d0 * t)
        neptune_z_1 = neptune_z_1 +(t**(0))*1*0.00031421638d0*cos(6.08083255385d0 + 39.6175083461d0*t)
        neptune_z_1 = neptune_z_1 -(t**1)*0.00031421638d0*39.6175083461d0*sin(6.08083255385d0 + 39.6175083461d0 * t)
        neptune_z_1 = neptune_z_1 +(t**(0))*1*0.00042738331d0*cos(4.82540335637d0 + 36.6485629295d0*t)
        neptune_z_1 = neptune_z_1 -(t**1)*0.00042738331d0*36.6485629295d0*sin(4.82540335637d0 + 36.6485629295d0 * t)
        neptune_z_1 = neptune_z_1 +(t**(0))*1*0.00064598028d0*cos(3.14159265359d0 + 0.0d0*t)
        neptune_z_1 = neptune_z_1 -(t**1)*0.00064598028d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        neptune_z_1 = neptune_z_1 +(t**(0))*1*0.06832633707d0*cos(3.80782656293d0 + 38.1330356378d0*t)
        neptune_z_1 = neptune_z_1 -(t**1)*0.06832633707d0*38.1330356378d0*sin(3.80782656293d0 + 38.1330356378d0 * t)

        neptune_z_2 = neptune_z_2 +(t**(1))*2*0.00291361164d0*cos(5.57085222635d0 + 38.1330356378d0*t)
        neptune_z_2 = neptune_z_2 -(t**2)*0.00291361164d0*38.1330356378d0*sin(5.57085222635d0 + 38.1330356378d0 * t)

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

        saturn_x_0 = saturn_x_0 -(t**0)*0.00012028365d0*1059.6257476727d0*sin(1.02934559031d0 + 1059.6257476727d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.0001203726d0*352.06040979221d0*sin(5.66358935866d0 + 352.06040979221d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00012408238d0*490.5779066629d0*sin(4.19692495275d0 + 490.5779066629d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00013291291d0*309.0345051723d0*sin(0.78826176081d0 + 309.0345051723d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.0001505773d0*277.2788112249d0*sin(4.67637379107d0 + 277.2788112249d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.0001992186d0*426.3543733925d0*sin(2.52438740442d0 + 426.3543733925d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00022261024d0*522.3336006103d0*sin(5.81339199632d0 + 522.3336006103d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.0002336808d0*149.8070146181d0*sin(0.18801837763d0 + 149.8070146181d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00023384603d0*647.25465079831d0*sin(5.53454487341d0 + 647.25465079831d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00024597547d0*210.36151918381d0*sin(4.52837189964d0 + 210.36151918381d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00024755958d0*415.7963080956d0*sin(5.60048517853d0 + 415.7963080956d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00024816783d0*75.0254160508d0*sin(5.50044242809d0 + 75.0254160508d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00025182378d0*216.72430665921d0*sin(0.37762569174d0 + 216.72430665921d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00025518626d0*117.5636857037d0*sin(1.6381402686d0 + 117.5636857037d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00030420785d0*735.6326960483d0*sin(4.58036001246d0 + 735.6326960483d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00039957906d0*199.3158189199d0*sin(4.29286414022d0 + 199.3158189199d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00044623718d0*63.49208081989d0*sin(5.61332771211d0 + 63.49208081989d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00045670301d0*14.47091148511d0*sin(1.87822014512d0 + 14.47091148511d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00054036331d0*853.4401992355d0*sin(4.90882849644d0 + 853.4401992355d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00058340081d0*224.5886131854d0*sin(2.16106790491d0 + 224.5886131854d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00065633219d0*202.4972126576d0*sin(2.76404999091d0 + 202.4972126576d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00068920772d0*217.4750661846d0*sin(4.01663904384d0 + 217.4750661846d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00070188882d0*209.6107596584d0*sin(0.88664463373d0 + 209.6107596584d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.0007249912d0*633.0275567967d0*sin(2.42001514073d0 + 633.0275567967d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00080586098d0*11.2895177474d0*sin(5.62239507032d0 + 11.2895177474d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00083840998d0*227.77000692311d0*sin(0.62002007163d0 + 227.77000692311d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00097840616d0*323.74923414091d0*sin(1.0154556951d0 + 323.74923414091d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00122184772d0*103.3365917021d0*sin(4.36825124039d0 + 103.3365917021d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00141571884d0*419.2408263917d0*sin(4.84926431365d0 + 419.2408263917d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00169743473d0*205.9417309537d0*sin(6.19449424436d0 + 205.9417309537d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.0037311088d0*433.9555553603d0*sin(0.00103492669d0 + 433.9555553603d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00413446294d0*102.84895673509d0*sin(5.12392705512d0 + 102.84895673509d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.0043422703d0*529.9347825781d0*sin(0.71624098563d0 + 529.9347825781d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00708587042d0*316.6356871401d0*sin(2.70922969272d0 + 316.6356871401d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00773784455d0*213.0552779545d0*sin(3.50285419449d0 + 213.0552779545d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.01098217124d0*640.1411037975d0*sin(5.65720860592d0 + 640.1411037975d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.01141539711d0*419.72846135871d0*sin(3.03345312296d0 + 419.72846135871d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.01250581159d0*110.45013870291d0*sin(2.17392657526d0 + 110.45013870291d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.02340967916d0*7.3573644843d0*sin(2.01979283929d0 + 7.3573644843d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.06628914946d0*220.6564599223d0*sin(0.75057317755d0 + 220.6564599223d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.06836881382d0*206.42936592071d0*sin(4.14537914189d0 + 206.42936592071d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.26427074351d0*426.8420083595d0*sin(0.12339999915d0 + 426.8420083595d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.79501390398d0*0.2438174835d0*sin(4.76580713096d0 + 0.2438174835d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*9.52312533591d0*213.5429129215d0*sin(0.87401491487d0 + 213.5429129215d0 * t)

        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00011071575d0*cos(0.03003679044d0 + 117.5636857037d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00011071575d0*117.5636857037d0*sin(0.03003679044d0 + 117.5636857037d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00014472589d0*cos(3.67415332596d0 + 647.25465079831d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00014472589d0*647.25465079831d0*sin(3.67415332596d0 + 647.25465079831d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00015920273d0*cos(0.03453366907d0 + 210.36151918381d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00015920273d0*210.36151918381d0*sin(0.03453366907d0 + 210.36151918381d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00016167186d0*cos(5.61042793206d0 + 323.74923414091d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00016167186d0*323.74923414091d0*sin(5.61042793206d0 + 323.74923414091d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00016307253d0*cos(4.86906758451d0 + 216.72430665921d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00016307253d0*216.72430665921d0*sin(4.86906758451d0 + 216.72430665921d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00016919177d0*cos(4.58471330942d0 + 633.0275567967d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00016919177d0*633.0275567967d0*sin(4.58471330942d0 + 633.0275567967d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00017786477d0*cos(6.103215363d0 + 217.4750661846d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00017786477d0*217.4750661846d0*sin(6.103215363d0 + 217.4750661846d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00018082904d0*cos(5.08903997736d0 + 209.6107596584d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00018082904d0*209.6107596584d0*sin(5.08903997736d0 + 209.6107596584d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.0001893952d0*cos(2.77554483793d0 + 853.4401992355d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.0001893952d0*853.4401992355d0*sin(2.77554483793d0 + 853.4401992355d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00022265017d0*cos(6.19403063806d0 + 103.3365917021d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00022265017d0*103.3365917021d0*sin(6.19403063806d0 + 103.3365917021d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00024548187d0*cos(1.72318512907d0 + 205.9417309537d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00024548187d0*205.9417309537d0*sin(1.72318512907d0 + 205.9417309537d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00030521021d0*cos(0.18185692767d0 + 14.47091148511d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00030521021d0*14.47091148511d0*sin(0.18185692767d0 + 14.47091148511d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00031931062d0*cos(5.99122459014d0 + 199.3158189199d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00031931062d0*199.3158189199d0*sin(5.99122459014d0 + 199.3158189199d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00066948413d0*cos(5.20221291915d0 + 227.77000692311d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00066948413d0*227.77000692311d0*sin(5.20221291915d0 + 227.77000692311d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00067024295d0*cos(3.73239360544d0 + 316.6356871401d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00067024295d0*316.6356871401d0*sin(3.73239360544d0 + 316.6356871401d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00118113185d0*cos(1.16350724193d0 + 110.45013870291d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00118113185d0*110.45013870291d0*sin(1.16350724193d0 + 110.45013870291d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00189297041d0*cos(4.48614588896d0 + 433.9555553603d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00189297041d0*433.9555553603d0*sin(4.48614588896d0 + 433.9555553603d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.0020446502d0*cos(1.07744722386d0 + 213.5429129215d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.0020446502d0*213.5429129215d0*sin(1.07744722386d0 + 213.5429129215d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00256626023d0*cos(3.52453971595d0 + 640.1411037975d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00256626023d0*640.1411037975d0*sin(3.52453971595d0 + 640.1411037975d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00312353889d0*cos(4.8295630897d0 + 419.72846135871d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00312353889d0*419.72846135871d0*sin(4.8295630897d0 + 419.72846135871d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00629201988d0*cos(0.32457757988d0 + 7.3573644843d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00629201988d0*7.3573644843d0*sin(0.32457757988d0 + 7.3573644843d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.02644990371d0*cos(5.33256382404d0 + 220.6564599223d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.02644990371d0*220.6564599223d0*sin(5.33256382404d0 + 220.6564599223d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.02728479923d0*cos(5.8447638902d0 + 206.42936592071d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.02728479923d0*206.42936592071d0*sin(5.8447638902d0 + 206.42936592071d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.0308650168d0*cos(4.27493632359d0 + 426.8420083595d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.0308650168d0*426.8420083595d0*sin(4.27493632359d0 + 426.8420083595d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.09285877988d0*cos(0.61678993503d0 + 0.2438174835d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.09285877988d0*0.2438174835d0*sin(0.61678993503d0 + 0.2438174835d0 * t)

        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00010383025d0*cos(4.75910342894d0 + 14.47091148511d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00010383025d0*14.47091148511d0*sin(4.75910342894d0 + 14.47091148511d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00012946617d0*cos(1.40691297654d0 + 199.3158189199d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00012946617d0*199.3158189199d0*sin(1.40691297654d0 + 199.3158189199d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00018651786d0*cos(0.02912884251d0 + 213.0552779545d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00018651786d0*213.0552779545d0*sin(0.02912884251d0 + 213.0552779545d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00027185514d0*cos(3.49604874733d0 + 227.77000692311d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00027185514d0*227.77000692311d0*sin(3.49604874733d0 + 227.77000692311d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00033335009d0*cos(1.58127217455d0 + 640.1411037975d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00033335009d0*640.1411037975d0*sin(1.58127217455d0 + 640.1411037975d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00045054746d0*cos(0.35338915884d0 + 419.72846135871d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00045054746d0*419.72846135871d0*sin(0.35338915884d0 + 419.72846135871d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00050142527d0*cos(2.69730354414d0 + 433.9555553603d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00050142527d0*433.9555553603d0*sin(2.69730354414d0 + 433.9555553603d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00088108317d0*cos(4.86838582414d0 + 7.3573644843d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00088108317d0*7.3573644843d0*sin(4.86838582414d0 + 7.3573644843d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00234984093d0*cos(2.44660941367d0 + 426.8420083595d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00234984093d0*426.8420083595d0*sin(2.44660941367d0 + 426.8420083595d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.0054727137d0*cos(3.61668298145d0 + 220.6564599223d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.0054727137d0*220.6564599223d0*sin(3.61668298145d0 + 220.6564599223d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00561413805d0*cos(1.25489421778d0 + 206.42936592071d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00561413805d0*206.42936592071d0*sin(1.25489421778d0 + 206.42936592071d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00611630287d0*cos(2.28479450822d0 + 0.2438174835d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00611630287d0*0.2438174835d0*sin(2.28479450822d0 + 0.2438174835d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.0086272193d0*cos(2.44701762869d0 + 213.5429129215d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.0086272193d0*213.5429129215d0*sin(2.44701762869d0 + 213.5429129215d0 * t)

        saturn_x_3 = saturn_x_3 +(t**(2))*3*0.00011451297d0*cos(0.52950959639d0 + 426.8420083595d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*0.00011451297d0*426.8420083595d0*sin(0.52950959639d0 + 426.8420083595d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*0.00028377246d0*cos(3.86557149479d0 + 0.2438174835d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*0.00028377246d0*0.2438174835d0*sin(3.86557149479d0 + 0.2438174835d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*0.00075865107d0*cos(1.87343394188d0 + 220.6564599223d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*0.00075865107d0*220.6564599223d0*sin(1.87343394188d0 + 220.6564599223d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*0.00076886822d0*cos(2.95726755259d0 + 206.42936592071d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*0.00076886822d0*206.42936592071d0*sin(2.95726755259d0 + 206.42936592071d0 * t)

        r = saturn_x_3+saturn_x_2+saturn_x_1+saturn_x_0
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

        saturn_y_0 = saturn_y_0 -(t**0)*0.00012028365d0*1059.6257476727d0*sin(5.74173457069d0 + 1059.6257476727d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.0001203726d0*352.06040979221d0*sin(4.09279303186d0 + 352.06040979221d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00012408238d0*490.5779066629d0*sin(2.62612862596d0 + 490.5779066629d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00013291291d0*309.0345051723d0*sin(2.3590580876d0 + 309.0345051723d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.0001505773d0*277.2788112249d0*sin(3.10557746427d0 + 277.2788112249d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.0001992186d0*426.3543733925d0*sin(4.09518373122d0 + 426.3543733925d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00022261024d0*522.3336006103d0*sin(1.10100301594d0 + 522.3336006103d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.0002336808d0*149.8070146181d0*sin(4.90040735801d0 + 149.8070146181d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00023384603d0*647.25465079831d0*sin(3.96374854662d0 + 647.25465079831d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00024597547d0*210.36151918381d0*sin(2.95757557284d0 + 210.36151918381d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00024755958d0*415.7963080956d0*sin(4.02968885174d0 + 415.7963080956d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00024816783d0*75.0254160508d0*sin(3.92964610129d0 + 75.0254160508d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00025182378d0*216.72430665921d0*sin(5.09001467212d0 + 216.72430665921d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00025518626d0*117.5636857037d0*sin(0.0673439418d0 + 117.5636857037d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00030420785d0*735.6326960483d0*sin(6.15115633926d0 + 735.6326960483d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00039957906d0*199.3158189199d0*sin(2.72206781342d0 + 199.3158189199d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00044623718d0*63.49208081989d0*sin(0.90093873172d0 + 63.49208081989d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00045670301d0*14.47091148511d0*sin(0.30742381833d0 + 14.47091148511d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00054036331d0*853.4401992355d0*sin(3.33803216964d0 + 853.4401992355d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00058340081d0*224.5886131854d0*sin(0.59027157812d0 + 224.5886131854d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00065633219d0*202.4972126576d0*sin(1.19325366411d0 + 202.4972126576d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00068920772d0*217.4750661846d0*sin(2.44584271705d0 + 217.4750661846d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00070188882d0*209.6107596584d0*sin(5.59903361411d0 + 209.6107596584d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.0007249912d0*633.0275567967d0*sin(0.84921881394d0 + 633.0275567967d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00080586098d0*11.2895177474d0*sin(4.05159874352d0 + 11.2895177474d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00083840998d0*227.77000692311d0*sin(5.33240905202d0 + 227.77000692311d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00097840616d0*323.74923414091d0*sin(5.72784467548d0 + 323.74923414091d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00122184772d0*103.3365917021d0*sin(2.79745491359d0 + 103.3365917021d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00141571884d0*419.2408263917d0*sin(0.13687533326d0 + 419.2408263917d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00169743473d0*205.9417309537d0*sin(1.48210526398d0 + 205.9417309537d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.0037311088d0*433.9555553603d0*sin(4.71342390707d0 + 433.9555553603d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00413446294d0*102.84895673509d0*sin(0.41153807474d0 + 102.84895673509d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.0043422703d0*529.9347825781d0*sin(5.42862996601d0 + 529.9347825781d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00708587042d0*316.6356871401d0*sin(1.13843336592d0 + 316.6356871401d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00773784455d0*213.0552779545d0*sin(5.07365052128d0 + 213.0552779545d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.01098217124d0*640.1411037975d0*sin(4.08641227912d0 + 640.1411037975d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.01141539711d0*419.72846135871d0*sin(1.46265679616d0 + 419.72846135871d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.01250581159d0*110.45013870291d0*sin(0.60313024847d0 + 110.45013870291d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.02340967916d0*7.3573644843d0*sin(0.44899651249d0 + 7.3573644843d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.06628914946d0*220.6564599223d0*sin(5.46296215793d0 + 220.6564599223d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.06836881382d0*206.42936592071d0*sin(2.57458281509d0 + 206.42936592071d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.26427074351d0*426.8420083595d0*sin(4.83578897954d0 + 426.8420083595d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.79501390398d0*0.2438174835d0*sin(3.19501080417d0 + 0.2438174835d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*9.52312533591d0*213.5429129215d0*sin(5.58640389526d0 + 213.5429129215d0 * t)

        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00011071575d0*cos(4.74242577082d0 + 117.5636857037d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00011071575d0*117.5636857037d0*sin(4.74242577082d0 + 117.5636857037d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00014472589d0*cos(2.10335699916d0 + 647.25465079831d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00014472589d0*647.25465079831d0*sin(2.10335699916d0 + 647.25465079831d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00015920273d0*cos(4.74692264945d0 + 210.36151918381d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00015920273d0*210.36151918381d0*sin(4.74692264945d0 + 210.36151918381d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00016167186d0*cos(4.03963160527d0 + 323.74923414091d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00016167186d0*323.74923414091d0*sin(4.03963160527d0 + 323.74923414091d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00016307253d0*cos(3.29827125771d0 + 216.72430665921d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00016307253d0*216.72430665921d0*sin(3.29827125771d0 + 216.72430665921d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00016919177d0*cos(3.01391698262d0 + 633.0275567967d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00016919177d0*633.0275567967d0*sin(3.01391698262d0 + 633.0275567967d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00017786477d0*cos(4.53241903621d0 + 217.4750661846d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00017786477d0*217.4750661846d0*sin(4.53241903621d0 + 217.4750661846d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00018082904d0*cos(3.51824365057d0 + 209.6107596584d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00018082904d0*209.6107596584d0*sin(3.51824365057d0 + 209.6107596584d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.0001893952d0*cos(1.20474851114d0 + 853.4401992355d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.0001893952d0*853.4401992355d0*sin(1.20474851114d0 + 853.4401992355d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00022265017d0*cos(4.62323431127d0 + 103.3365917021d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00022265017d0*103.3365917021d0*sin(4.62323431127d0 + 103.3365917021d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00024548187d0*cos(3.29398145587d0 + 205.9417309537d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00024548187d0*205.9417309537d0*sin(3.29398145587d0 + 205.9417309537d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00030521021d0*cos(4.89424590805d0 + 14.47091148511d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00030521021d0*14.47091148511d0*sin(4.89424590805d0 + 14.47091148511d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00031931062d0*cos(4.42042826334d0 + 199.3158189199d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00031931062d0*199.3158189199d0*sin(4.42042826334d0 + 199.3158189199d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00066948413d0*cos(3.63141659236d0 + 227.77000692311d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00066948413d0*227.77000692311d0*sin(3.63141659236d0 + 227.77000692311d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00067024295d0*cos(2.16159727865d0 + 316.6356871401d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00067024295d0*316.6356871401d0*sin(2.16159727865d0 + 316.6356871401d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00118113185d0*cos(5.87589622232d0 + 110.45013870291d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00118113185d0*110.45013870291d0*sin(5.87589622232d0 + 110.45013870291d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00189297041d0*cos(2.91534956216d0 + 433.9555553603d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00189297041d0*433.9555553603d0*sin(2.91534956216d0 + 433.9555553603d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.0020446502d0*cos(5.78983620425d0 + 213.5429129215d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.0020446502d0*213.5429129215d0*sin(5.78983620425d0 + 213.5429129215d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00256626023d0*cos(1.95374338915d0 + 640.1411037975d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00256626023d0*640.1411037975d0*sin(1.95374338915d0 + 640.1411037975d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00312353889d0*cos(3.25876676291d0 + 419.72846135871d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00312353889d0*419.72846135871d0*sin(3.25876676291d0 + 419.72846135871d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00629201988d0*cos(5.03696656027d0 + 7.3573644843d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00629201988d0*7.3573644843d0*sin(5.03696656027d0 + 7.3573644843d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.02644990371d0*cos(3.76176749725d0 + 220.6564599223d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.02644990371d0*220.6564599223d0*sin(3.76176749725d0 + 220.6564599223d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.02728479923d0*cos(4.27396756341d0 + 206.42936592071d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.02728479923d0*206.42936592071d0*sin(4.27396756341d0 + 206.42936592071d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.0308650168d0*cos(2.70413999679d0 + 426.8420083595d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.0308650168d0*426.8420083595d0*sin(2.70413999679d0 + 426.8420083595d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.09285877988d0*cos(5.32917891541d0 + 0.2438174835d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.09285877988d0*0.2438174835d0*sin(5.32917891541d0 + 0.2438174835d0 * t)

        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00010383025d0*cos(3.18830710215d0 + 14.47091148511d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00010383025d0*14.47091148511d0*sin(3.18830710215d0 + 14.47091148511d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00012946617d0*cos(6.11930195692d0 + 199.3158189199d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00012946617d0*199.3158189199d0*sin(6.11930195692d0 + 199.3158189199d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00018651786d0*cos(1.59992516931d0 + 213.0552779545d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00018651786d0*213.0552779545d0*sin(1.59992516931d0 + 213.0552779545d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00027185514d0*cos(1.92525242054d0 + 227.77000692311d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00027185514d0*227.77000692311d0*sin(1.92525242054d0 + 227.77000692311d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00033335009d0*cos(0.01047584776d0 + 640.1411037975d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00033335009d0*640.1411037975d0*sin(0.01047584776d0 + 640.1411037975d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00045054746d0*cos(5.06577813923d0 + 419.72846135871d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00045054746d0*419.72846135871d0*sin(5.06577813923d0 + 419.72846135871d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00050142527d0*cos(1.12650721735d0 + 433.9555553603d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00050142527d0*433.9555553603d0*sin(1.12650721735d0 + 433.9555553603d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00088108317d0*cos(3.29758949735d0 + 7.3573644843d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00088108317d0*7.3573644843d0*sin(3.29758949735d0 + 7.3573644843d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00234984093d0*cos(0.87581308687d0 + 426.8420083595d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00234984093d0*426.8420083595d0*sin(0.87581308687d0 + 426.8420083595d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.0054727137d0*cos(2.04588665465d0 + 220.6564599223d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.0054727137d0*220.6564599223d0*sin(2.04588665465d0 + 220.6564599223d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00561413805d0*cos(5.96728319816d0 + 206.42936592071d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00561413805d0*206.42936592071d0*sin(5.96728319816d0 + 206.42936592071d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00611630287d0*cos(0.71399818143d0 + 0.2438174835d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00611630287d0*0.2438174835d0*sin(0.71399818143d0 + 0.2438174835d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.0086272193d0*cos(0.87622130189d0 + 213.5429129215d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.0086272193d0*213.5429129215d0*sin(0.87622130189d0 + 213.5429129215d0 * t)

        saturn_y_3 = saturn_y_3 +(t**(2))*3*0.00011451297d0*cos(5.24189857677d0 + 426.8420083595d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*0.00011451297d0*426.8420083595d0*sin(5.24189857677d0 + 426.8420083595d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*0.00028377246d0*cos(2.294775168d0 + 0.2438174835d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*0.00028377246d0*0.2438174835d0*sin(2.294775168d0 + 0.2438174835d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*0.00075865107d0*cos(0.30263761509d0 + 220.6564599223d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*0.00075865107d0*220.6564599223d0*sin(0.30263761509d0 + 220.6564599223d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*0.00076886822d0*cos(1.38647122579d0 + 206.42936592071d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*0.00076886822d0*206.42936592071d0*sin(1.38647122579d0 + 206.42936592071d0 * t)

        r = saturn_y_3+saturn_y_2+saturn_y_1+saturn_y_0
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

        saturn_z_0 = saturn_z_0 -(t**0)*0.00011433574d0*529.6909650946d0*sin(3.71662021072d0 + 529.6909650946d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.00016185391d0*433.7117378768d0*sin(2.72987173675d0 + 433.7117378768d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.00034565673d0*316.3918696566d0*sin(5.4261422959d0 + 316.3918696566d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.00043458803d0*419.4846438752d0*sin(5.84904978051d0 + 419.4846438752d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.00047738127d0*639.897286314d0*sin(2.10039779728d0 + 639.897286314d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.0005736182d0*110.2063212194d0*sin(4.92611225093d0 + 110.2063212194d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.00099076584d0*7.1135470008d0*sin(4.73369511264d0 + 7.1135470008d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.00286934048d0*220.4126424388d0*sin(3.48073526693d0 + 220.4126424388d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.00329280791d0*206.1855484372d0*sin(0.57121407104d0 + 206.1855484372d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.01148283576d0*426.598190876d0*sin(2.85128367469d0 + 426.598190876d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.01214249867d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.4135695094d0*213.299095438d0*sin(3.60234142982d0 + 213.299095438d0 * t)

        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.00018103257d0*cos(2.90933498453d0 + 7.1135470008d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.00018103257d0*7.1135470008d0*sin(2.90933498453d0 + 7.1135470008d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.00018761941d0*cos(1.23200112053d0 + 419.4846438752d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.00018761941d0*419.4846438752d0*sin(1.23200112053d0 + 419.4846438752d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.0008898208d0*cos(6.09698706089d0 + 426.598190876d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.0008898208d0*426.598190876d0*sin(6.09698706089d0 + 426.598190876d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.00089591263d0*cos(1.69286730496d0 + 220.4126424388d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.00089591263d0*220.4126424388d0*sin(1.69286730496d0 + 220.4126424388d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.00144960439d0*cos(2.301493671d0 + 206.1855484372d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.00144960439d0*206.1855484372d0*sin(2.301493671d0 + 206.1855484372d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.00707598508d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.00707598508d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.0381030832d0*cos(5.33520316778d0 + 213.299095438d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.0381030832d0*213.299095438d0*sin(5.33520316778d0 + 213.299095438d0 * t)

        saturn_z_2 = saturn_z_2 +(t**(1))*2*0.00015091412d0*cos(6.17687148383d0 + 220.4126424388d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*0.00015091412d0*220.4126424388d0*sin(6.17687148383d0 + 220.4126424388d0 * t)
        saturn_z_2 = saturn_z_2 +(t**(1))*2*0.00019236496d0*cos(0.0d0 + 0.0d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*0.00019236496d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_z_2 = saturn_z_2 +(t**(1))*2*0.00036491216d0*cos(3.99604491617d0 + 206.1855484372d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*0.00036491216d0*206.1855484372d0*sin(3.99604491617d0 + 206.1855484372d0 * t)
        saturn_z_2 = saturn_z_2 +(t**(1))*2*0.00195192259d0*cos(0.50946874402d0 + 213.299095438d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*0.00195192259d0*213.299095438d0*sin(0.50946874402d0 + 213.299095438d0 * t)

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

        uranus_x_0 = uranus_x_0 -(t**0)*0.00010809036d0*78.2068097885d0*sin(1.69959188016d0 + 78.2068097885d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0001124241d0*71.8440223131d0*sin(6.11592492783d0 + 71.8440223131d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00011534891d0*77.4730966056d0*sin(1.77255746394d0 + 77.4730966056d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0001199731d0*1059.6257476727d0*sin(0.9488279446d0 + 1059.6257476727d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00012401284d0*72.577735496d0*sin(6.21959182172d0 + 72.577735496d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0001359181d0*87.555589023d0*sin(2.55400587762d0 + 87.555589023d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00013948685d0*221.61966776881d0*sin(6.27550136313d0 + 221.61966776881d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00015173078d0*41.3457985379d0*sin(2.88404559166d0 + 41.3457985379d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00016842912d0*52.446380556d0*sin(0.47911269541d0 + 52.446380556d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00016887001d0*36.892380413d0*sin(0.21283887905d0 + 36.892380413d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00018351147d0*33.43580002939d0*sin(5.69970669527d0 + 33.43580002939d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00019648859d0*75.1372906354d0*sin(2.28659171687d0 + 75.1372906354d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00019671485d0*74.91354146621d0*sin(5.53430548402d0 + 74.91354146621d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00019896586d0*12.77399045571d0*sin(0.57662115081d0 + 12.77399045571d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00019913902d0*113.15845168861d0*sin(1.39857362559d0 + 113.15845168861d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00020068191d0*22.3352180113d0*sin(4.47381667533d0 + 22.3352180113d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00022087252d0*71.5688356672d0*sin(4.59910433514d0 + 71.5688356672d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00022832266d0*127.22797912329d0*sin(2.29382969939d0 + 127.22797912329d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00022948537d0*84.5866436064d0*sin(5.51505103176d0 + 84.5866436064d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00023447563d0*145.874861355d0*sin(4.09774770482d0 + 145.874861355d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00024486297d0*1.24065522479d0*sin(1.99412405993d0 + 1.24065522479d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00025683031d0*9.8050450391d0*sin(5.30733054298d0 + 9.8050450391d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00026655018d0*160.852714882d0*sin(6.11025984035d0 + 160.852714882d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00028378722d0*184.97110483931d0*sin(6.01789844072d0 + 184.97110483931d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00029546886d0*70.5719979259d0*sin(6.00042096798d0 + 70.5719979259d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00031820127d0*152.77596003471d0*sin(5.53944193731d0 + 152.77596003471d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00033660673d0*65.46418849521d0*sin(2.51806070888d0 + 65.46418849521d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0003433803d0*226.07308589371d0*sin(3.03778732537d0 + 226.07308589371d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00034546984d0*79.47883417571d0*sin(1.84696372059d0 + 79.47883417571d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00037552003d0*202.0095776906d0*sin(4.14039081989d0 + 202.0095776906d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00039200127d0*4.6972356084d0*sin(2.68881030068d0 + 4.6972356084d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0004456657d0*73.0533083755d0*sin(0.46052856039d0 + 73.0533083755d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00053591167d0*4.1759707466d0*sin(3.9404543498d0 + 4.1759707466d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00063579167d0*299.37021175271d0*sin(0.29966151527d0 + 299.37021175271d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.000644205d0*110.189506272d0*sin(3.72849455609d0 + 110.189506272d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00076241847d0*63.49208081989d0*sin(2.53654184182d0 + 63.49208081989d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00104563861d0*146.8380692015d0*sin(3.90482142702d0 + 146.8380692015d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00109354782d0*34.9202727377d0*sin(4.45315493564d0 + 34.9202727377d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00111232552d0*223.1041404771d0*sin(5.12247819448d0 + 223.1041404771d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00119632236d0*39.86132582961d0*sin(4.10138480343d0 + 39.86132582961d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0012498711d0*111.67397898031d0*sin(2.51425439859d0 + 111.67397898031d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00135315426d0*78.9575693139d0*sin(5.51056178199d0 + 78.9575693139d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00144768728d0*71.09326278771d0*sin(2.31926691782d0 + 71.09326278771d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00215803817d0*38.3768531213d0*sin(5.30879023629d0 + 38.3768531213d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00268150781d0*213.5429129215d0*sin(0.96866014994d0 + 213.5429129215d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00385773622d0*138.76131435421d0*sin(6.18935243085d0 + 138.76131435421d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00433273658d0*74.53778108379d0*sin(5.66160493313d0 + 74.53778108379d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00458904544d0*3.21276290011d0*sin(3.90806753942d0 + 3.21276290011d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00496011875d0*529.9347825781d0*sin(0.59957126795d0 + 529.9347825781d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00547585874d0*86.07111631471d0*sin(3.63122642205d0 + 86.07111631471d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00563553759d0*72.05647063421d0*sin(4.80714363531d0 + 72.05647063421d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00621475723d0*77.9943614674d0*sin(3.05878846167d0 + 77.9943614674d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00637676334d0*63.9797157869d0*sin(4.21540624166d0 + 63.9797157869d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00657433967d0*151.2914873264d0*sin(0.57593488766d0 + 151.2914873264d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00941982751d0*11.2895177474d0*sin(1.66111566598d0 + 11.2895177474d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.01443286598d0*148.32254190981d0*sin(2.65100655909d0 + 148.32254190981d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.01542809804d0*224.5886131854d0*sin(4.12121005059d0 + 224.5886131854d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.06225592204d0*1.7282901918d0*sin(5.14041718059d0 + 1.7282901918d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.14127113794d0*76.50988875911d0*sin(4.39569319388d0 + 76.50988875911d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.14712072726d0*73.5409433425d0*sin(3.42449547672d0 + 73.5409433425d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.44396480992d0*149.8070146181d0*sin(1.65965632053d0 + 149.8070146181d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.33267708718d0*0.2438174835d0*sin(6.16089978558d0 + 0.2438174835d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*19.16944479396d0*75.0254160508d0*sin(5.48129363987d0 + 75.0254160508d0 * t)

        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00015101686d0*cos(5.5369590868d0 + 4.1759707466d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00015101686d0*4.1759707466d0*sin(5.5369590868d0 + 4.1759707466d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.0001737717d0*cos(0.2464849659d0 + 72.05647063421d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.0001737717d0*72.05647063421d0*sin(0.2464849659d0 + 72.05647063421d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00019425371d0*cos(1.30586488933d0 + 77.9943614674d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00019425371d0*77.9943614674d0*sin(1.30586488933d0 + 77.9943614674d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00021671035d0*cos(4.93673342225d0 + 151.2914873264d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00021671035d0*151.2914873264d0*sin(4.93673342225d0 + 151.2914873264d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00036154364d0*cos(1.23626010875d0 + 78.9575693139d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00036154364d0*78.9575693139d0*sin(1.23626010875d0 + 78.9575693139d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00037681305d0*cos(0.07581737994d0 + 75.0254160508d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00037681305d0*75.0254160508d0*sin(0.07581737994d0 + 75.0254160508d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00038568d0*cos(0.30675960989d0 + 71.09326278771d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00038568d0*71.09326278771d0*sin(0.30675960989d0 + 71.09326278771d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00041920157d0*cos(4.16572993198d0 + 74.53778108379d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00041920157d0*74.53778108379d0*sin(4.16572993198d0 + 74.53778108379d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00045577241d0*cos(2.29785938115d0 + 138.76131435421d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00045577241d0*138.76131435421d0*sin(2.29785938115d0 + 138.76131435421d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00051354528d0*cos(2.18905169391d0 + 224.5886131854d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00051354528d0*224.5886131854d0*sin(2.18905169391d0 + 224.5886131854d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00081488096d0*cos(1.21038214498d0 + 86.07111631471d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00081488096d0*86.07111631471d0*sin(1.21038214498d0 + 86.07111631471d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00095657865d0*cos(0.35447716429d0 + 63.9797157869d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00095657865d0*63.9797157869d0*sin(0.35447716429d0 + 63.9797157869d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.0011058356d0*cos(5.57527703898d0 + 11.2895177474d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.0011058356d0*11.2895177474d0*sin(5.57527703898d0 + 11.2895177474d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00229359688d0*cos(2.48132547665d0 + 76.50988875911d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00229359688d0*76.50988875911d0*sin(2.48132547665d0 + 76.50988875911d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00239408407d0*cos(5.33797172897d0 + 73.5409433425d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00239408407d0*73.5409433425d0*sin(5.33797172897d0 + 73.5409433425d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00738897387d0*cos(6.01007226305d0 + 149.8070146181d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00738897387d0*149.8070146181d0*sin(6.01007226305d0 + 149.8070146181d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.0222511375d0*cos(1.80968682072d0 + 0.2438174835d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.0222511375d0*0.2438174835d0*sin(1.80968682072d0 + 0.2438174835d0 * t)

        uranus_x_2 = uranus_x_2 +(t**(1))*2*0.00012364786d0*cos(5.85713505816d0 + 76.50988875911d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*0.00012364786d0*76.50988875911d0*sin(5.85713505816d0 + 76.50988875911d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*0.00034677856d0*cos(3.16763307609d0 + 149.8070146181d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*0.00034677856d0*149.8070146181d0*sin(3.16763307609d0 + 149.8070146181d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*0.00038040244d0*cos(1.27157972349d0 + 0.2438174835d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*0.00038040244d0*0.2438174835d0*sin(1.27157972349d0 + 0.2438174835d0 * t)
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

        uranus_y_0 = uranus_y_0 -(t**0)*0.00010809036d0*78.2068097885d0*sin(0.12879555337d0 + 78.2068097885d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0001124241d0*71.8440223131d0*sin(4.54512860104d0 + 71.8440223131d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00011534891d0*77.4730966056d0*sin(0.20176113714d0 + 77.4730966056d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0001199731d0*1059.6257476727d0*sin(5.66121692499d0 + 1059.6257476727d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00012401284d0*72.577735496d0*sin(4.64879549493d0 + 72.577735496d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0001359181d0*87.555589023d0*sin(0.98320955083d0 + 87.555589023d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00013948685d0*221.61966776881d0*sin(4.70470503634d0 + 221.61966776881d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00015173078d0*41.3457985379d0*sin(1.31324926487d0 + 41.3457985379d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00016842912d0*52.446380556d0*sin(2.0499090222d0 + 52.446380556d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00016887001d0*36.892380413d0*sin(4.92522785944d0 + 36.892380413d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00018351147d0*33.43580002939d0*sin(0.98731771489d0 + 33.43580002939d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00019648859d0*75.1372906354d0*sin(0.71579539008d0 + 75.1372906354d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00019671485d0*74.91354146621d0*sin(3.96350915722d0 + 74.91354146621d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00019896586d0*12.77399045571d0*sin(5.28901013119d0 + 12.77399045571d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00019913902d0*113.15845168861d0*sin(6.11096260597d0 + 113.15845168861d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00020068191d0*22.3352180113d0*sin(2.90302034853d0 + 22.3352180113d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00022087252d0*71.5688356672d0*sin(6.16990066193d0 + 71.5688356672d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00022832266d0*127.22797912329d0*sin(3.86462602619d0 + 127.22797912329d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00022948537d0*84.5866436064d0*sin(3.94425470497d0 + 84.5866436064d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00023447563d0*145.874861355d0*sin(2.52695137802d0 + 145.874861355d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00024486297d0*1.24065522479d0*sin(3.56492038672d0 + 1.24065522479d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00025683031d0*9.8050450391d0*sin(3.73653421618d0 + 9.8050450391d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00026655018d0*160.852714882d0*sin(4.53946351355d0 + 160.852714882d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00028378722d0*184.97110483931d0*sin(4.44710211392d0 + 184.97110483931d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00029546886d0*70.5719979259d0*sin(4.42962464119d0 + 70.5719979259d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00031820127d0*152.77596003471d0*sin(3.96864561052d0 + 152.77596003471d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00033660673d0*65.46418849521d0*sin(0.94726438208d0 + 65.46418849521d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0003433803d0*226.07308589371d0*sin(1.46699099857d0 + 226.07308589371d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00034546984d0*79.47883417571d0*sin(0.27616739379d0 + 79.47883417571d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00037552003d0*202.0095776906d0*sin(5.71118714669d0 + 202.0095776906d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00039200127d0*4.6972356084d0*sin(1.11801397388d0 + 4.6972356084d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0004456657d0*73.0533083755d0*sin(2.03132488718d0 + 73.0533083755d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00053591167d0*4.1759707466d0*sin(2.369658023d0 + 4.1759707466d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00063579167d0*299.37021175271d0*sin(5.01205049565d0 + 299.37021175271d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.000644205d0*110.189506272d0*sin(2.15769822929d0 + 110.189506272d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00076241847d0*63.49208081989d0*sin(4.10733816861d0 + 63.49208081989d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00104563861d0*146.8380692015d0*sin(2.33402510023d0 + 146.8380692015d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00109354782d0*34.9202727377d0*sin(6.02395126243d0 + 34.9202727377d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00111232552d0*223.1041404771d0*sin(3.55168186769d0 + 223.1041404771d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00119632236d0*39.86132582961d0*sin(2.53058847664d0 + 39.86132582961d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0012498711d0*111.67397898031d0*sin(0.9434580718d0 + 111.67397898031d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00135315426d0*78.9575693139d0*sin(3.93976545519d0 + 78.9575693139d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00144768728d0*71.09326278771d0*sin(0.74847059103d0 + 71.09326278771d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00215803817d0*38.3768531213d0*sin(3.7379939095d0 + 38.3768531213d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00268150781d0*213.5429129215d0*sin(5.68104913033d0 + 213.5429129215d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00385773622d0*138.76131435421d0*sin(4.61855610406d0 + 138.76131435421d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00433273658d0*74.53778108379d0*sin(0.94921595274d0 + 74.53778108379d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00458904544d0*3.21276290011d0*sin(2.33727121263d0 + 3.21276290011d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00496011875d0*529.9347825781d0*sin(5.31196024834d0 + 529.9347825781d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00547585874d0*86.07111631471d0*sin(2.06043009525d0 + 86.07111631471d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00563553759d0*72.05647063421d0*sin(3.23634730851d0 + 72.05647063421d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00621475723d0*77.9943614674d0*sin(1.48799213488d0 + 77.9943614674d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00637676334d0*63.9797157869d0*sin(2.64460991486d0 + 63.9797157869d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00657433967d0*151.2914873264d0*sin(5.28832386804d0 + 151.2914873264d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00941982751d0*11.2895177474d0*sin(0.09031933919d0 + 11.2895177474d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.01443286598d0*148.32254190981d0*sin(1.08021023229d0 + 148.32254190981d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.01542809804d0*224.5886131854d0*sin(2.55041372379d0 + 224.5886131854d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.06225592204d0*1.7282901918d0*sin(3.56962085379d0 + 1.7282901918d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.14127113794d0*76.50988875911d0*sin(2.82489686708d0 + 76.50988875911d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.14712072726d0*73.5409433425d0*sin(1.85369914992d0 + 73.5409433425d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.44396480992d0*149.8070146181d0*sin(0.08885999374d0 + 149.8070146181d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.33267708718d0*0.2438174835d0*sin(4.59010345878d0 + 0.2438174835d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*19.16944479396d0*75.0254160508d0*sin(3.91049731307d0 + 75.0254160508d0 * t)

        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00015101686d0*cos(3.96616276d0 + 4.1759707466d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00015101686d0*4.1759707466d0*sin(3.96616276d0 + 4.1759707466d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.0001737717d0*cos(4.95887394628d0 + 72.05647063421d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.0001737717d0*72.05647063421d0*sin(4.95887394628d0 + 72.05647063421d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00019425371d0*cos(6.01825386971d0 + 77.9943614674d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00019425371d0*77.9943614674d0*sin(6.01825386971d0 + 77.9943614674d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00021671035d0*cos(3.36593709546d0 + 151.2914873264d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00021671035d0*151.2914873264d0*sin(3.36593709546d0 + 151.2914873264d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00036154364d0*cos(5.94864908914d0 + 78.9575693139d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00036154364d0*78.9575693139d0*sin(5.94864908914d0 + 78.9575693139d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00037681305d0*cos(4.78820636032d0 + 75.0254160508d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00037681305d0*75.0254160508d0*sin(4.78820636032d0 + 75.0254160508d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00038568d0*cos(5.01914859027d0 + 71.09326278771d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00038568d0*71.09326278771d0*sin(5.01914859027d0 + 71.09326278771d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00041920157d0*cos(5.73652625878d0 + 74.53778108379d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00041920157d0*74.53778108379d0*sin(5.73652625878d0 + 74.53778108379d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00045577241d0*cos(0.72706305435d0 + 138.76131435421d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00045577241d0*138.76131435421d0*sin(0.72706305435d0 + 138.76131435421d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00051354528d0*cos(0.61825536711d0 + 224.5886131854d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00051354528d0*224.5886131854d0*sin(0.61825536711d0 + 224.5886131854d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00081488096d0*cos(5.92277112536d0 + 86.07111631471d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00081488096d0*86.07111631471d0*sin(5.92277112536d0 + 86.07111631471d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00095657865d0*cos(5.06686614467d0 + 63.9797157869d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00095657865d0*63.9797157869d0*sin(5.06686614467d0 + 63.9797157869d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.0011058356d0*cos(4.00448071218d0 + 11.2895177474d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.0011058356d0*11.2895177474d0*sin(4.00448071218d0 + 11.2895177474d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00229359688d0*cos(0.91052914986d0 + 76.50988875911d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00229359688d0*76.50988875911d0*sin(0.91052914986d0 + 76.50988875911d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00239408407d0*cos(3.76717540218d0 + 73.5409433425d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00239408407d0*73.5409433425d0*sin(3.76717540218d0 + 73.5409433425d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00738897387d0*cos(4.43927593626d0 + 149.8070146181d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00738897387d0*149.8070146181d0*sin(4.43927593626d0 + 149.8070146181d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.0222511375d0*cos(0.23889049392d0 + 0.2438174835d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.0222511375d0*0.2438174835d0*sin(0.23889049392d0 + 0.2438174835d0 * t)

        uranus_y_2 = uranus_y_2 +(t**(1))*2*0.00012364786d0*cos(4.28633873136d0 + 76.50988875911d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*0.00012364786d0*76.50988875911d0*sin(4.28633873136d0 + 76.50988875911d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*0.00034677856d0*cos(1.59683674929d0 + 149.8070146181d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*0.00034677856d0*149.8070146181d0*sin(1.59683674929d0 + 149.8070146181d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*0.00038040244d0*cos(5.98396870387d0 + 0.2438174835d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*0.00038040244d0*0.2438174835d0*sin(5.98396870387d0 + 0.2438174835d0 * t)
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

        uranus_z_0 = uranus_z_0 -(t**0)*0.00010407529d0*213.299095438d0*sin(3.65320417038d0 + 213.299095438d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00011261541d0*529.6909650946d0*sin(3.55973769686d0 + 529.6909650946d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.0001253753d0*11.0457002639d0*sin(5.17169051466d0 + 11.0457002639d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00014582864d0*71.8126531507d0*sin(6.14852037212d0 + 71.8126531507d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00019734273d0*148.0787244263d0*sin(6.04314677688d0 + 148.0787244263d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00020842052d0*224.3447957019d0*sin(1.26054208091d0 + 224.3447957019d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00030734257d0*63.7358983034d0*sin(0.23571721555d0 + 63.7358983034d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00084626761d0*1.4844727083d0*sin(2.26030150166d0 + 1.4844727083d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.0019028189d0*76.2660712756d0*sin(1.61643841193d0 + 76.2660712756d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00190881685d0*73.297125859d0*sin(0.57869575952d0 + 73.297125859d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00599316131d0*149.5631971346d0*sin(5.08119500585d0 + 149.5631971346d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.01774318778d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.25878127698d0*74.7815985673d0*sin(2.61861272578d0 + 74.7815985673d0 * t)

        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.0001290864d0*cos(3.77705052097d0 + 1.4844727083d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.0001290864d0*1.4844727083d0*sin(3.77705052097d0 + 1.4844727083d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.00026107421d0*cos(3.06937675063d0 + 76.2660712756d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.00026107421d0*76.2660712756d0*sin(3.06937675063d0 + 76.2660712756d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.00033563127d0*cos(2.12025871831d0 + 73.297125859d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.00033563127d0*73.297125859d0*sin(2.12025871831d0 + 73.297125859d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.00039689344d0*cos(0.0d0 + 0.0d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.00039689344d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.00082241017d0*cos(0.33841633701d0 + 149.5631971346d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.00082241017d0*149.5631971346d0*sin(0.33841633701d0 + 149.5631971346d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.03962262983d0*cos(4.12418900865d0 + 74.7815985673d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.03962262983d0*74.7815985673d0*sin(4.12418900865d0 + 74.7815985673d0 * t)

        uranus_z_2 = uranus_z_2 +(t**(1))*2*0.0001603566d0*cos(0.0d0 + 0.0d0*t)
        uranus_z_2 = uranus_z_2 -(t**2)*0.0001603566d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        uranus_z_2 = uranus_z_2 +(t**(1))*2*0.00177117836d0*cos(5.80022816704d0 + 74.7815985673d0*t)
        uranus_z_2 = uranus_z_2 -(t**2)*0.00177117836d0*74.7815985673d0*sin(5.80022816704d0 + 74.7815985673d0 * t)

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

        venus_x_0 = venus_x_0 -(t**0)*0.00063317702d0*10213.0417287275d0*sin(0.49335411201d0 + 10213.0417287275d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00244692613d0*20426.8149099055d0*sin(4.05605630888d0 + 20426.8149099055d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00733886107d0*0.2438174835d0*sin(5.43699242686d0 + 0.2438174835d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.72268045621d0*10213.5293636945d0*sin(3.17614669179d0 + 10213.5293636945d0 * t)

        venus_x_1 = venus_x_1 +(t**(0))*1*0.00011049864d0*cos(2.03460665124d0 + 10213.0417287275d0*t)
        venus_x_1 = venus_x_1 -(t**1)*0.00011049864d0*10213.0417287275d0*sin(2.03460665124d0 + 10213.0417287275d0 * t)
        venus_x_1 = venus_x_1 +(t**(0))*1*0.0001726082d0*cos(0.9255849278d0 + 20426.8149099055d0*t)
        venus_x_1 = venus_x_1 -(t**1)*0.0001726082d0*20426.8149099055d0*sin(0.9255849278d0 + 20426.8149099055d0 * t)
        venus_x_1 = venus_x_1 +(t**(0))*1*0.00051880979d0*cos(2.2817527905d0 + 0.2438174835d0*t)
        venus_x_1 = venus_x_1 -(t**1)*0.00051880979d0*0.2438174835d0*sin(2.2817527905d0 + 0.2438174835d0 * t)

        venus_x_2 = venus_x_2 +(t**(1))*2*0.00039116576d0*cos(4.74721085665d0 + 10213.5293636945d0*t)
        venus_x_2 = venus_x_2 -(t**2)*0.00039116576d0*10213.5293636945d0*sin(4.74721085665d0 + 10213.5293636945d0 * t)

        r = venus_x_2+venus_x_1+venus_x_0
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

        venus_y_0 = venus_y_0 -(t**0)*0.00063317702d0*10213.0417287275d0*sin(2.0641504388d0 + 10213.0417287275d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00244692613d0*20426.8149099055d0*sin(2.48525998209d0 + 20426.8149099055d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00733886107d0*0.2438174835d0*sin(3.86619610007d0 + 0.2438174835d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.72268045621d0*10213.5293636945d0*sin(1.60535036499d0 + 10213.5293636945d0 * t)

        venus_y_1 = venus_y_1 +(t**(0))*1*0.00011049864d0*cos(3.60540297803d0 + 10213.0417287275d0*t)
        venus_y_1 = venus_y_1 -(t**1)*0.00011049864d0*10213.0417287275d0*sin(3.60540297803d0 + 10213.0417287275d0 * t)
        venus_y_1 = venus_y_1 +(t**(0))*1*0.0001726082d0*cos(5.63797390819d0 + 20426.8149099055d0*t)
        venus_y_1 = venus_y_1 -(t**1)*0.0001726082d0*20426.8149099055d0*sin(5.63797390819d0 + 20426.8149099055d0 * t)
        venus_y_1 = venus_y_1 +(t**(0))*1*0.00051880979d0*cos(0.71095646371d0 + 0.2438174835d0*t)
        venus_y_1 = venus_y_1 -(t**1)*0.00051880979d0*0.2438174835d0*sin(0.71095646371d0 + 0.2438174835d0 * t)

        venus_y_2 = venus_y_2 +(t**(1))*2*0.00039116576d0*cos(3.17641452985d0 + 10213.5293636945d0*t)
        venus_y_2 = venus_y_2 -(t**2)*0.00039116576d0*10213.5293636945d0*sin(3.17641452985d0 + 10213.5293636945d0 * t)

        r = venus_y_2+venus_y_1+venus_y_0
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

        venus_z_0 = venus_z_0 -(t**0)*0.00014501879d0*20426.571092422d0*sin(1.1469691139d0 + 20426.571092422d0 * t)
        venus_z_0 = venus_z_0 -(t**0)*0.00035588343d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        venus_z_0 = venus_z_0 -(t**0)*0.04282990302d0*10213.285546211d0*sin(0.26703856476d0 + 10213.285546211d0 * t)

        venus_z_1 = venus_z_1 +(t**(0))*1*0.00371157532d0*cos(1.80370484107d0 + 10213.285546211d0*t)
        venus_z_1 = venus_z_1 -(t**1)*0.00371157532d0*10213.285546211d0*sin(1.80370484107d0 + 10213.285546211d0 * t)

        venus_z_2 = venus_z_2 +(t**(1))*2*0.00016179656d0*cos(3.38519723238d0 + 10213.285546211d0*t)
        venus_z_2 = venus_z_2 -(t**2)*0.00016179656d0*10213.285546211d0*sin(3.38519723238d0 + 10213.285546211d0 * t)

        r = venus_z_2+venus_z_1+venus_z_0
    end function

end module VSOP87C_Micro_Velocities
