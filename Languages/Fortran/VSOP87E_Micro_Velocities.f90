!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87E_Micro_Velocities
    implicit none

    contains
    subroutine VSOP87E_Micro_getEarthV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_x(t) / 365250.0
        result(2)=earth_y(t) / 365250.0
        result(3)=earth_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Micro_getJupiterV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_x(t) / 365250.0
        result(2)=jupiter_y(t) / 365250.0
        result(3)=jupiter_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Micro_getMarsV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_x(t) / 365250.0
        result(2)=mars_y(t) / 365250.0
        result(3)=mars_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Micro_getMercuryV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_x(t) / 365250.0
        result(2)=mercury_y(t) / 365250.0
        result(3)=mercury_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Micro_getNeptuneV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_x(t) / 365250.0
        result(2)=neptune_y(t) / 365250.0
        result(3)=neptune_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Micro_getSaturnV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_x(t) / 365250.0
        result(2)=saturn_y(t) / 365250.0
        result(3)=saturn_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Micro_getSunV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=sun_x(t) / 365250.0
        result(2)=sun_y(t) / 365250.0
        result(3)=sun_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Micro_getUranusV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_x(t) / 365250.0
        result(2)=uranus_y(t) / 365250.0
        result(3)=uranus_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Micro_getVenusV(t, result)
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

        earth_x_0 = earth_x_0 -(t**0)*0.00010466596d0*18849.2275499742d0*sin(1.66722645223d0 + 18849.2275499742d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00011821467d0*1059.3819301892d0*sin(4.04599151293d0 + 1059.3819301892d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00083789104d0*74.7815985673d0*sin(2.33967726393d0 + 74.7815985673d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.0015543422d0*38.1330356378d0*sin(2.17052065758d0 + 38.1330356378d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00271650686d0*213.299095438d0*sin(4.01601440281d0 + 213.299095438d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00493120585d0*529.6909650946d0*sin(3.74115834452d0 + 529.6909650946d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00590518455d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00835254761d0*12566.1516999828d0*sin(1.71034539458d0 + 12566.1516999828d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.99982624851d0*6283.0758499914d0*sin(1.75348568475d0 + 6283.0758499914d0 * t)

        earth_x_1 = earth_x_1 +(t**(0))*1*0.000515d0*cos(6.00266267204d0 + 12566.1516999828d0*t)
        earth_x_1 = earth_x_1 -(t**1)*0.000515d0*12566.1516999828d0*sin(6.00266267204d0 + 12566.1516999828d0 * t)
        earth_x_1 = earth_x_1 +(t**(0))*1*0.00122106982d0*cos(0.0d0 + 0.0d0*t)
        earth_x_1 = earth_x_1 -(t**1)*0.00122106982d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        earth_y_0 = earth_y_0 -(t**0)*0.00010466933d0*18849.2275499742d0*sin(0.09641690558d0 + 18849.2275499742d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.00011819755d0*1059.3819301892d0*sin(2.47524448851d0 + 1059.3819301892d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.0008375191d0*74.7815985673d0*sin(0.76880010707d0 + 74.7815985673d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.00155442849d0*38.1330356378d0*sin(0.59927021065d0 + 38.1330356378d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.00272033033d0*213.299095438d0*sin(2.44443635549d0 + 213.299095438d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.00492966037d0*529.6909650946d0*sin(2.170524584d0 + 529.6909650946d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.00835289774d0*12566.1516999828d0*sin(0.13952879005d0 + 12566.1516999828d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.02408829501d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.99988907017d0*6283.0758499914d0*sin(0.18265890456d0 + 6283.0758499914d0 * t)

        earth_y_1 = earth_y_1 +(t**(0))*1*0.00051506453d0*cos(4.43180499286d0 + 12566.1516999828d0*t)
        earth_y_1 = earth_y_1 -(t**1)*0.00051506453d0*12566.1516999828d0*sin(4.43180499286d0 + 12566.1516999828d0 * t)
        earth_y_1 = earth_y_1 +(t**(0))*1*0.00093052441d0*cos(0.0d0 + 0.0d0*t)
        earth_y_1 = earth_y_1 -(t**1)*0.00093052441d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        earth_z_0 = earth_z_0 -(t**0)*0.00011270511d0*529.6909650946d0*sin(0.41685732455d0 + 529.6909650946d0 * t)
        earth_z_0 = earth_z_0 -(t**0)*0.00011810174d0*213.299095438d0*sin(0.46078312048d0 + 213.299095438d0 * t)

        earth_z_1 = earth_z_1 +(t**(0))*1*0.0022782175d0*cos(3.41372504278d0 + 6283.0758499914d0*t)
        earth_z_1 = earth_z_1 -(t**1)*0.0022782175d0*6283.0758499914d0*sin(3.41372504278d0 + 6283.0758499914d0 * t)

        r = earth_z_1+earth_z_0
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

        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00011412363d0*543.9180590962d0*sin(3.4814594322d0 + 543.9180590962d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00011984824d0*533.6231183577d0*sin(0.58568596255d0 + 533.6231183577d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00012143698d0*525.7588118315d0*sin(3.75229920148d0 + 525.7588118315d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00014193776d0*742.9900605326d0*sin(2.07763165706d0 + 742.9900605326d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00015178545d0*735.8765135318d0*sin(6.2587881143d0 + 735.8765135318d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00016086488d0*515.463871093d0*sin(0.87974686945d0 + 515.463871093d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00016318258d0*316.3918696566d0*sin(1.94286700529d0 + 316.3918696566d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00019708639d0*2118.7638603784d0*sin(1.64891620821d0 + 2118.7638603784d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00026609536d0*323.5054166574d0*sin(4.85102664902d0 + 323.5054166574d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00029905661d0*206.1855484372d0*sin(2.93170826549d0 + 206.1855484372d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00047092829d0*419.4846438752d0*sin(1.43942906349d0 + 419.4846438752d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00059429203d0*949.1756089698d0*sin(4.45768709661d0 + 949.1756089698d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00068217918d0*846.0828347512d0*sin(3.44053291909d0 + 846.0828347512d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00072025988d0*1066.49547719d0*sin(3.96117200382d0 + 1066.49547719d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00082181886d0*74.7815985673d0*sin(2.33944503932d0 + 74.7815985673d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00103396684d0*1052.2683831884d0*sin(6.19327175097d0 + 1052.2683831884d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00114092461d0*1162.4747044078d0*sin(0.01567031739d0 + 1162.4747044078d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00137575946d0*213.299095438d0*sin(4.0139949837d0 + 213.299095438d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00144750651d0*632.7837393132d0*sin(5.55980048541d0 + 632.7837393132d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.0015078374d0*110.2063212194d0*sin(6.1183167133d0 + 110.2063212194d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00154896097d0*38.1330356378d0*sin(2.17051189575d0 + 38.1330356378d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00192562451d0*426.598190876d0*sin(4.98733787115d0 + 426.598190876d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00302068886d0*7.1135470008d0*sin(5.17370377723d0 + 7.1135470008d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00385749947d0*103.0927742186d0*sin(2.01222596811d0 + 103.0927742186d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00457316096d0*1589.0728952838d0*sin(1.29883699143d0 + 1589.0728952838d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.01474818211d0*536.8045120954d0*sin(3.61736901402d0 + 536.8045120954d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.01499237862d0*522.5774180938d0*sin(0.73175554601d0 + 522.5774180938d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.12581924842d0*1059.3819301892d0*sin(0.94911581432d0 + 1059.3819301892d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.3663326807d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*5.19167797375d0*529.6909650946d0*sin(0.59945079482d0 + 529.6909650946d0 * t)

        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00012877132d0*cos(2.57490337554d0 + 515.463871093d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00012877132d0*515.463871093d0*sin(2.57490337554d0 + 515.463871093d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00013566605d0*cos(0.30040958696d0 + 632.7837393132d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00013566605d0*632.7837393132d0*sin(0.30040958696d0 + 632.7837393132d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00017292154d0*cos(3.99214003946d0 + 426.598190876d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00017292154d0*426.598190876d0*sin(3.99214003946d0 + 426.598190876d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00021258131d0*cos(4.36563858679d0 + 110.2063212194d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00021258131d0*110.2063212194d0*sin(4.36563858679d0 + 110.2063212194d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00031204139d0*cos(2.34698443027d0 + 1066.49547719d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00031204139d0*1066.49547719d0*sin(2.34698443027d0 + 1066.49547719d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00032477578d0*cos(1.74648870966d0 + 1052.2683831884d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00032477578d0*1052.2683831884d0*sin(1.74648870966d0 + 1052.2683831884d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00033859106d0*cos(4.10112469499d0 + 529.6909650946d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00033859106d0*529.6909650946d0*sin(4.10112469499d0 + 529.6909650946d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00046157824d0*cos(0.45714213541d0 + 1589.0728952838d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00046157824d0*1589.0728952838d0*sin(0.45714213541d0 + 1589.0728952838d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00081798277d0*cos(3.46668967473d0 + 7.1135470008d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00081798277d0*7.1135470008d0*sin(3.46668967473d0 + 7.1135470008d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00588595541d0*cos(1.91556289228d0 + 536.8045120954d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00588595541d0*536.8045120954d0*sin(1.91556289228d0 + 536.8045120954d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00599147916d0*cos(2.4299683255d0 + 522.5774180938d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00599147916d0*522.5774180938d0*sin(2.4299683255d0 + 522.5774180938d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00634691138d0*cos(0.10662162351d0 + 1059.3819301892d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00634691138d0*1059.3819301892d0*sin(0.10662162351d0 + 1059.3819301892d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00883685325d0*cos(3.14159265359d0 + 0.0d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00883685325d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00011437051d0*cos(1.72922178247d0 + 7.1135470008d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00011437051d0*7.1135470008d0*sin(1.72922178247d0 + 7.1135470008d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00041371381d0*cos(5.12291606259d0 + 1059.3819301892d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00041371381d0*1059.3819301892d0*sin(5.12291606259d0 + 1059.3819301892d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00077611336d0*cos(5.29776152037d0 + 529.6909650946d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00077611336d0*529.6909650946d0*sin(5.29776152037d0 + 529.6909650946d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00085400287d0*cos(0.0d0 + 0.0d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00085400287d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00121405454d0*cos(0.21155087534d0 + 536.8045120954d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00121405454d0*536.8045120954d0*sin(0.21155087534d0 + 536.8045120954d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00123746423d0*cos(4.13563340107d0 + 522.5774180938d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00123746423d0*522.5774180938d0*sin(4.13563340107d0 + 522.5774180938d0 * t)

        jupiter_x_3 = jupiter_x_3 +(t**(2))*3*0.00016697614d0*cos(4.77458774773d0 + 536.8045120954d0*t)
        jupiter_x_3 = jupiter_x_3 -(t**3)*0.00016697614d0*536.8045120954d0*sin(4.77458774773d0 + 536.8045120954d0 * t)
        jupiter_x_3 = jupiter_x_3 +(t**(2))*3*0.00017055031d0*cos(5.86133054086d0 + 522.5774180938d0*t)
        jupiter_x_3 = jupiter_x_3 -(t**3)*0.00017055031d0*522.5774180938d0*sin(5.86133054086d0 + 522.5774180938d0 * t)

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

        jupiter_y_0 = jupiter_y_0 -(t**0)*0.0001140902d0*543.9180590962d0*sin(1.91089175916d0 + 543.9180590962d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.0001197744d0*533.6231183577d0*sin(5.29687559056d0 + 533.6231183577d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00012141842d0*525.7588118315d0*sin(2.18151948736d0 + 525.7588118315d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00014591238d0*742.9900605326d0*sin(0.4774986561d0 + 742.9900605326d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00016340182d0*515.463871093d0*sin(5.56996543941d0 + 515.463871093d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00018475985d0*316.3918696566d0*sin(0.38014924174d0 + 316.3918696566d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00019708579d0*2118.7638603784d0*sin(0.07818533602d0 + 2118.7638603784d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00020859553d0*735.8765135318d0*sin(3.79339751809d0 + 735.8765135318d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00026615785d0*323.5054166574d0*sin(3.28135958246d0 + 323.5054166574d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00027182574d0*419.4846438752d0*sin(3.86962082273d0 + 419.4846438752d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00030597479d0*206.1855484372d0*sin(4.58059597562d0 + 206.1855484372d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00058995131d0*949.1756089698d0*sin(2.89529666872d0 + 949.1756089698d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00068308433d0*846.0828347512d0*sin(1.86538762629d0 + 846.0828347512d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00072021597d0*1066.49547719d0*sin(2.39048430255d0 + 1066.49547719d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00082109296d0*74.7815985673d0*sin(0.76861586597d0 + 74.7815985673d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00101901831d0*1052.2683831884d0*sin(4.5759216528d0 + 1052.2683831884d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00113934096d0*1162.4747044078d0*sin(4.72982346991d0 + 1162.4747044078d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00139367298d0*632.7837393132d0*sin(4.00075739657d0 + 632.7837393132d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.0013965505d0*213.299095438d0*sin(2.41039954154d0 + 213.299095438d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00146192922d0*110.2063212194d0*sin(4.62080103783d0 + 110.2063212194d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00154904248d0*38.1330356378d0*sin(0.59924790507d0 + 38.1330356378d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00190850034d0*426.598190876d0*sin(3.41807324121d0 + 426.598190876d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00301069256d0*7.1135470008d0*sin(3.60943303554d0 + 7.1135470008d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00378016915d0*103.0927742186d0*sin(3.53013675622d0 + 103.0927742186d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00457314174d0*1589.0728952838d0*sin(6.01129093508d0 + 1589.0728952838d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.01474403395d0*536.8045120954d0*sin(2.04679547637d0 + 536.8045120954d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.01506838468d0*522.5774180938d0*sin(5.43934599781d0 + 522.5774180938d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.09329801081d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.12580850775d0*1059.3819301892d0*sin(5.66160225641d0 + 1059.3819301892d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*5.19024510371d0*529.6909650946d0*sin(5.31203160043d0 + 529.6909650946d0 * t)

        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00013022204d0*cos(0.98978959368d0 + 515.463871093d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00013022204d0*515.463871093d0*sin(0.98978959368d0 + 515.463871093d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00013690691d0*cos(5.02101628562d0 + 632.7837393132d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00013690691d0*632.7837393132d0*sin(5.02101628562d0 + 632.7837393132d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00016865586d0*cos(2.45297644533d0 + 426.598190876d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00016865586d0*426.598190876d0*sin(2.45297644533d0 + 426.598190876d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00019475766d0*cos(3.00913152396d0 + 110.2063212194d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00019475766d0*110.2063212194d0*sin(3.00913152396d0 + 110.2063212194d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00031201535d0*cos(0.77624038457d0 + 1066.49547719d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00031201535d0*1066.49547719d0*sin(0.77624038457d0 + 1066.49547719d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00032472443d0*cos(0.17640771395d0 + 1052.2683831884d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00032472443d0*1052.2683831884d0*sin(0.17640771395d0 + 1052.2683831884d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00046150068d0*cos(5.16955995419d0 + 1589.0728952838d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00046150068d0*1589.0728952838d0*sin(5.16955995419d0 + 1589.0728952838d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00046843519d0*cos(1.91294033052d0 + 529.6909650946d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00046843519d0*529.6909650946d0*sin(1.91294033052d0 + 529.6909650946d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00081289939d0*cos(1.90910271853d0 + 7.1135470008d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00081289939d0*7.1135470008d0*sin(1.90910271853d0 + 7.1135470008d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.005883672d0*cos(0.34491553018d0 + 536.8045120954d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.005883672d0*536.8045120954d0*sin(0.34491553018d0 + 536.8045120954d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.0060058715d0*cos(0.85811137383d0 + 522.5774180938d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.0060058715d0*522.5774180938d0*sin(0.85811137383d0 + 522.5774180938d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00634254247d0*cos(4.81903195356d0 + 1059.3819301892d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00634254247d0*1059.3819301892d0*sin(4.81903195356d0 + 1059.3819301892d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.01694792137d0*cos(3.14159265359d0 + 0.0d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.01694792137d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00011292133d0*cos(0.18554488524d0 + 7.1135470008d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00011292133d0*7.1135470008d0*sin(0.18554488524d0 + 7.1135470008d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00041318153d0*cos(3.55228415274d0 + 1059.3819301892d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00041318153d0*1059.3819301892d0*sin(3.55228415274d0 + 1059.3819301892d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00076450198d0*cos(3.75913373191d0 + 529.6909650946d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00076450198d0*529.6909650946d0*sin(3.75913373191d0 + 529.6909650946d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00076998857d0*cos(3.14159265359d0 + 0.0d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00076998857d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00121340211d0*cos(4.92398747363d0 + 536.8045120954d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00121340211d0*536.8045120954d0*sin(4.92398747363d0 + 536.8045120954d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00123914193d0*cos(2.56495551373d0 + 522.5774180938d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00123914193d0*522.5774180938d0*sin(2.56495551373d0 + 522.5774180938d0 * t)

        jupiter_y_3 = jupiter_y_3 +(t**(2))*3*0.0001668543d0*cos(3.20365723177d0 + 536.8045120954d0*t)
        jupiter_y_3 = jupiter_y_3 -(t**3)*0.0001668543d0*536.8045120954d0*sin(3.20365723177d0 + 536.8045120954d0 * t)
        jupiter_y_3 = jupiter_y_3 +(t**(2))*3*0.00017069216d0*cos(4.29096907367d0 + 522.5774180938d0*t)
        jupiter_y_3 = jupiter_y_3 -(t**3)*0.00017069216d0*522.5774180938d0*sin(4.29096907367d0 + 522.5774180938d0 * t)

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

        jupiter_z_0 = jupiter_z_0 -(t**0)*0.00010406225d0*1589.0728952838d0*sin(4.25764578777d0 + 1589.0728952838d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.00033263796d0*536.8045120954d0*sin(0.3029697193d0 + 536.8045120954d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.00042347799d0*522.5774180938d0*sin(3.60144639424d0 + 522.5774180938d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.00286288759d0*1059.3819301892d0*sin(3.90812239092d0 + 1059.3819301892d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.00857879296d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.11811822789d0*529.6909650946d0*sin(3.55844641987d0 + 529.6909650946d0 * t)

        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*0.00012718197d0*cos(5.45536889012d0 + 522.5774180938d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*0.00012718197d0*522.5774180938d0*sin(5.45536889012d0 + 522.5774180938d0 * t)
        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*0.00014411207d0*cos(4.85400100506d0 + 536.8045120954d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*0.00014411207d0*536.8045120954d0*sin(4.85400100506d0 + 536.8045120954d0 * t)
        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*0.00015608009d0*cos(0.0d0 + 0.0d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*0.00015608009d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*0.00020287968d0*cos(2.59878263946d0 + 1059.3819301892d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*0.00020287968d0*1059.3819301892d0*sin(2.59878263946d0 + 1059.3819301892d0 * t)
        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*0.00406683941d0*cos(1.52699356726d0 + 529.6909650946d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*0.00406683941d0*529.6909650946d0*sin(1.52699356726d0 + 529.6909650946d0 * t)

        jupiter_z_2 = jupiter_z_2 +(t**(1))*2*0.00028608011d0*cos(3.01374191263d0 + 529.6909650946d0*t)
        jupiter_z_2 = jupiter_z_2 -(t**2)*0.00028608011d0*529.6909650946d0*sin(3.01374191263d0 + 529.6909650946d0 * t)

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

        mars_x_0 = mars_x_0 -(t**0)*0.00021041626d0*3344.1355450488d0*sin(1.17895619474d0 + 3344.1355450488d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00021067199d0*3337.0893083508d0*sin(1.80435656154d0 + 3337.0893083508d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00021794152d0*1059.3819301892d0*sin(4.45100162839d0 + 1059.3819301892d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00040938237d0*13362.4497067992d0*sin(0.93473307419d0 + 13362.4497067992d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.0008377764d0*74.7815985673d0*sin(2.33969868905d0 + 74.7815985673d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00155429009d0*38.1330356378d0*sin(2.17051900894d0 + 38.1330356378d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00271094292d0*213.299095438d0*sin(4.01586959956d0 + 213.299095438d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00482151285d0*529.6909650946d0*sin(3.74021439144d0 + 529.6909650946d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00494196754d0*10021.8372800994d0*sin(0.59669127752d0 + 10021.8372800994d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.07070917372d0*6681.2248533996d0*sin(0.25870338552d0 + 6681.2248533996d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.19473570996d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.51769887405d0*3340.6124266998d0*sin(6.20403346548d0 + 3340.6124266998d0 * t)

        mars_x_1 = mars_x_1 +(t**(0))*1*0.00020467294d0*cos(5.57051812369d0 + 3340.6124266998d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00020467294d0*3340.6124266998d0*sin(5.57051812369d0 + 3340.6124266998d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*0.00077184951d0*cos(5.43315636209d0 + 10021.8372800994d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00077184951d0*10021.8372800994d0*sin(5.43315636209d0 + 10021.8372800994d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*0.00552437771d0*cos(5.09565872891d0 + 6681.2248533996d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00552437771d0*6681.2248533996d0*sin(5.09565872891d0 + 6681.2248533996d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*0.00862737448d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00862737448d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        mars_x_2 = mars_x_2 +(t**(1))*2*0.00022122521d0*cos(3.54372113272d0 + 6681.2248533996d0*t)
        mars_x_2 = mars_x_2 -(t**2)*0.00022122521d0*6681.2248533996d0*sin(3.54372113272d0 + 6681.2248533996d0 * t)
        mars_x_2 = mars_x_2 +(t**(1))*2*0.00056368724d0*cos(0.0d0 + 0.0d0*t)
        mars_x_2 = mars_x_2 -(t**2)*0.00056368724d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        mars_y_0 = mars_y_0 -(t**0)*0.00021012921d0*3344.1355450488d0*sin(5.89022773653d0 + 3344.1355450488d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00021036784d0*3337.0893083508d0*sin(0.23240270955d0 + 3337.0893083508d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00021795361d0*1059.3819301892d0*sin(2.88000673227d0 + 1059.3819301892d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00040917422d0*13362.4497067992d0*sin(5.64698263703d0 + 13362.4497067992d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00083738369d0*74.7815985673d0*sin(0.76880567376d0 + 74.7815985673d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00155437832d0*38.1330356378d0*sin(0.59926749768d0 + 38.1330356378d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00271492455d0*213.299095438d0*sin(2.44409624683d0 + 213.299095438d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00482218424d0*529.6909650946d0*sin(2.16962356915d0 + 529.6909650946d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00493872689d0*10021.8372800994d0*sin(5.30877806678d0 + 10021.8372800994d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.07064547959d0*6681.2248533996d0*sin(4.97051892898d0 + 6681.2248533996d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.08689350637d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.51558927367d0*3340.6124266998d0*sin(4.63212206588d0 + 3340.6124266998d0 * t)

        mars_y_1 = mars_y_1 +(t**(0))*1*0.00037310479d0*cos(1.16016958445d0 + 3340.6124266998d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.00037310479d0*3340.6124266998d0*sin(1.16016958445d0 + 3340.6124266998d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*0.00077091888d0*cos(3.86082685753d0 + 10021.8372800994d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.00077091888d0*10021.8372800994d0*sin(3.86082685753d0 + 10021.8372800994d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*0.00551063576d0*cos(3.52128320402d0 + 6681.2248533996d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.00551063576d0*6681.2248533996d0*sin(3.52128320402d0 + 6681.2248533996d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*0.01427318093d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.01427318093d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        mars_y_2 = mars_y_2 +(t**(1))*2*0.00021950751d0*cos(1.96291594946d0 + 6681.2248533996d0*t)
        mars_y_2 = mars_y_2 -(t**2)*0.00021950751d0*6681.2248533996d0*sin(1.96291594946d0 + 6681.2248533996d0 * t)
        mars_y_2 = mars_y_2 +(t**(1))*2*0.00035452579d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_y_2 = mars_y_2 -(t**2)*0.00035452579d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

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

        mars_z_0 = mars_z_0 -(t**0)*0.00011012894d0*529.6909650946d0*sin(0.3930742899d0 + 529.6909650946d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*0.00011803129d0*213.299095438d0*sin(0.45922638235d0 + 213.299095438d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*0.00015958402d0*10021.8372800994d0*sin(4.44367058261d0 + 10021.8372800994d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*0.00228333831d0*6681.2248533996d0*sin(4.10544022266d0 + 6681.2248533996d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*0.00659516885d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*0.04901205639d0*3340.6124266998d0*sin(3.76712324293d0 + 3340.6124266998d0 * t)

        mars_z_1 = mars_z_1 +(t**(0))*1*0.00047797013d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_z_1 = mars_z_1 -(t**1)*0.00047797013d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mars_z_1 = mars_z_1 +(t**(0))*1*0.00331842851d0*cos(6.05027773492d0 + 3340.6124266998d0*t)
        mars_z_1 = mars_z_1 -(t**1)*0.00331842851d0*3340.6124266998d0*sin(6.05027773492d0 + 3340.6124266998d0 * t)

        mars_z_2 = mars_z_2 +(t**(1))*2*0.00013705355d0*cos(1.04212852598d0 + 3340.6124266998d0*t)
        mars_z_2 = mars_z_2 -(t**2)*0.00013705355d0*3340.6124266998d0*sin(1.04212852598d0 + 3340.6124266998d0 * t)

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

        mercury_x_0 = mercury_x_0 -(t**0)*0.00012216168d0*1059.3819301892d0*sin(4.05786119279d0 + 1059.3819301892d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.00021011726d0*130439.51570787099d0*sin(4.03469353923d0 + 130439.51570787099d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.00083792888d0*74.7815985673d0*sin(2.3396763991d0 + 74.7815985673d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.00105716677d0*104351.61256629678d0*sin(0.98379033182d0 + 104351.61256629678d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.00155435621d0*38.1330356378d0*sin(2.17052060921d0 + 38.1330356378d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.0027179749d0*213.299095438d0*sin(4.01600769847d0 + 213.299095438d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.00495586029d0*529.6909650946d0*sin(3.74115422358d0 + 529.6909650946d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.00584261236d0*78263.70942472259d0*sin(4.21599394757d0 + 78263.70942472259d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.02596241714d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.03825746037d0*52175.8062831484d0*sin(1.16485604343d0 + 52175.8062831484d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.37546285495d0*26087.9031415742d0*sin(4.39651506942d0 + 26087.9031415742d0 * t)

        mercury_x_1 = mercury_x_1 +(t**(0))*1*0.00011992887d0*cos(5.81575112963d0 + 26087.9031415742d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*0.00011992887d0*26087.9031415742d0*sin(5.81575112963d0 + 26087.9031415742d0 * t)
        mercury_x_1 = mercury_x_1 +(t**(0))*1*0.00032315996d0*cos(2.68247273347d0 + 78263.70942472259d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*0.00032315996d0*78263.70942472259d0*sin(2.68247273347d0 + 78263.70942472259d0 * t)
        mercury_x_1 = mercury_x_1 +(t**(0))*1*0.00105289001d0*cos(5.91600475006d0 + 52175.8062831484d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*0.00105289001d0*52175.8062831484d0*sin(5.91600475006d0 + 52175.8062831484d0 * t)
        mercury_x_1 = mercury_x_1 +(t**(0))*1*0.0031755196d0*cos(0.0d0 + 0.0d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*0.0031755196d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        mercury_y_0 = mercury_y_0 -(t**0)*0.00012216279d0*1059.3819301892d0*sin(2.48707059837d0 + 1059.3819301892d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00021100825d0*130439.51570787099d0*sin(2.47291315849d0 + 130439.51570787099d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00083755636d0*74.7815985673d0*sin(0.76879995697d0 + 74.7815985673d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00106235475d0*104351.61256629678d0*sin(5.70550616735d0 + 104351.61256629678d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00155444251d0*38.1330356378d0*sin(0.59927014783d0 + 38.1330356378d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00272177927d0*213.299095438d0*sin(2.44442843667d0 + 213.299095438d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00495452148d0*529.6909650946d0*sin(2.17050902176d0 + 529.6909650946d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00587711171d0*78263.70942472259d0*sin(2.65498896201d0 + 78263.70942472259d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.03854667576d0*52175.8062831484d0*sin(5.88780608961d0 + 52175.8062831484d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.11592262295d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.37953636588d0*26087.9031415742d0*sin(2.83780617821d0 + 26087.9031415742d0 * t)

        mercury_y_1 = mercury_y_1 +(t**(0))*1*0.00011914707d0*cos(1.2213998634d0 + 26087.9031415742d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*0.00011914707d0*26087.9031415742d0*sin(1.2213998634d0 + 26087.9031415742d0 * t)
        mercury_y_1 = mercury_y_1 +(t**(0))*1*0.00032715349d0*cos(1.11763734425d0 + 78263.70942472259d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*0.00032715349d0*78263.70942472259d0*sin(1.11763734425d0 + 78263.70942472259d0 * t)
        mercury_y_1 = mercury_y_1 +(t**(0))*1*0.00080645427d0*cos(3.14159265359d0 + 0.0d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*0.00080645427d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_y_1 = mercury_y_1 +(t**(0))*1*0.00107803834d0*cos(4.34964793883d0 + 52175.8062831484d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*0.00107803834d0*52175.8062831484d0*sin(4.34964793883d0 + 52175.8062831484d0 * t)

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

        mercury_z_0 = mercury_z_0 -(t**0)*0.00011268745d0*529.6909650946d0*sin(0.4166999186d0 + 529.6909650946d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.00011810801d0*213.299095438d0*sin(0.46073218799d0 + 213.299095438d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.00012957444d0*104351.61256629678d0*sin(4.8592203201d0 + 104351.61256629678d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.00071626383d0*78263.70942472259d0*sin(1.80894256071d0 + 78263.70942472259d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.0046917154d0*52175.8062831484d0*sin(5.04215742764d0 + 52175.8062831484d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.00709887021d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.04607664562d0*26087.9031415742d0*sin(1.99295081967d0 + 26087.9031415742d0 * t)

        mercury_z_1 = mercury_z_1 +(t**(0))*1*0.00057693223d0*cos(3.14159265359d0 + 0.0d0*t)
        mercury_z_1 = mercury_z_1 -(t**1)*0.00057693223d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_z_1 = mercury_z_1 +(t**(0))*1*0.00108722159d0*cos(3.91134750825d0 + 26087.9031415742d0*t)
        mercury_z_1 = mercury_z_1 -(t**1)*0.00108722159d0*26087.9031415742d0*sin(3.91134750825d0 + 26087.9031415742d0 * t)

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

        neptune_x_0 = neptune_x_0 -(t**0)*0.00012614574d0*112.9146342051d0*sin(3.57008196751d0 + 112.9146342051d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00012743164d0*111.4301614968d0*sin(2.73728741519d0 + 111.4301614968d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00028887848d0*42.5864537627d0*sin(4.78966833702d0 + 42.5864537627d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00054713428d0*71.8126531507d0*sin(1.55804647862d0 + 71.8126531507d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00060811221d0*33.6796175129d0*sin(2.62589871314d0 + 33.6796175129d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.0006903868d0*4.4534181249d0*sin(5.83469111908d0 + 4.4534181249d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00090960996d0*114.3991069134d0*sin(1.68910476933d0 + 114.3991069134d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00135901755d0*77.7505439839d0*sin(5.54688721933d0 + 77.7505439839d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00308146172d0*73.297125859d0*sin(0.39998862713d0 + 73.297125859d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00565506338d0*41.1019810544d0*sin(5.98964911841d0 + 41.1019810544d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00817566529d0*2.9689454166d0*sin(0.78180136001d0 + 2.9689454166d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00823755467d0*35.1640902212d0*sin(1.43221512492d0 + 35.1640902212d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00990668211d0*74.7815985673d0*sin(5.37690139386d0 + 74.7815985673d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.02597449604d0*1.4844727083d0*sin(1.99590330725d0 + 1.4844727083d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.1350457827d0*76.2660712756d0*sin(3.50075407055d0 + 76.2660712756d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.14934353052d0*39.6175083461d0*sin(1.08499398649d0 + 39.6175083461d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.15725280871d0*36.6485629295d0*sin(0.11319072402d0 + 36.6485629295d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.27050789973d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*30.05734568801d0*38.1330356378d0*sin(5.3121134003d0 + 38.1330356378d0 * t)

        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00013130617d0*cos(5.36424961848d0 + 2.9689454166d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00013130617d0*2.9689454166d0*sin(5.36424961848d0 + 2.9689454166d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00017458926d0*cos(4.26349403115d0 + 41.1019810544d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00017458926d0*41.1019810544d0*sin(4.26349403115d0 + 41.1019810544d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00021923572d0*cos(3.20156162709d0 + 35.1640902212d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00021923572d0*35.1640902212d0*sin(3.20156162709d0 + 35.1640902212d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00039261522d0*cos(3.14159265359d0 + 0.0d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00039261522d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00118382753d0*cos(2.88255085978d0 + 76.2660712756d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00118382753d0*76.2660712756d0*sin(2.88255085978d0 + 76.2660712756d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00243112812d0*cos(5.46214905602d0 + 39.6175083461d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00243112812d0*39.6175083461d0*sin(5.46214905602d0 + 39.6175083461d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00255827017d0*cos(2.01935687782d0 + 36.6485629295d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00255827017d0*36.6485629295d0*sin(2.01935687782d0 + 36.6485629295d0 * t)

        r = neptune_x_1+neptune_x_0
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

        neptune_y_0 = neptune_y_0 -(t**0)*0.00012613423d0*112.9146342051d0*sin(1.99783010734d0 + 112.9146342051d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00012822727d0*111.4301614968d0*sin(1.16749515319d0 + 111.4301614968d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00020079747d0*33.6796175129d0*sin(1.19788749777d0 + 33.6796175129d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00028891942d0*42.5864537627d0*sin(3.21848982783d0 + 42.5864537627d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00068788416d0*4.4534181249d0*sin(4.26391987401d0 + 4.4534181249d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00090966163d0*114.3991069134d0*sin(0.11783850542d0 + 114.3991069134d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00135911904d0*77.7505439839d0*sin(3.97565894083d0 + 77.7505439839d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00305149662d0*73.297125859d0*sin(5.11023952334d0 + 73.297125859d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.0056554783d0*41.1019810544d0*sin(4.41843013268d0 + 41.1019810544d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.0058216452d0*35.1640902212d0*sin(6.1963385998d0 + 35.1640902212d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00815165481d0*2.9689454166d0*sin(5.49429738442d0 + 2.9689454166d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00990408083d0*74.7815985673d0*sin(3.80555424385d0 + 74.7815985673d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.02584389323d0*1.4844727083d0*sin(0.42549727257d0 + 1.4844727083d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.13505308635d0*76.2660712756d0*sin(1.92949466968d0 + 76.2660712756d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.14935398681d0*39.6175083461d0*sin(5.79694896309d0 + 39.6175083461d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.15705776296d0*36.6485629295d0*sin(4.82539969469d0 + 36.6485629295d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.30171988148d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*30.05900907352d0*38.1330356378d0*sin(3.74086294715d0 + 38.1330356378d0 * t)

        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.0001299238d0*cos(3.79578633002d0 + 2.9689454166d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.0001299238d0*2.9689454166d0*sin(3.79578633002d0 + 2.9689454166d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.0001746145d0*cos(2.69229907252d0 + 41.1019810544d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.0001746145d0*41.1019810544d0*sin(2.69229907252d0 + 41.1019810544d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00021935569d0*cos(1.63124087146d0 + 35.1640902212d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00021935569d0*35.1640902212d0*sin(1.63124087146d0 + 35.1640902212d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.001184118d0*cos(1.31131262408d0 + 76.2660712756d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.001184118d0*76.2660712756d0*sin(1.31131262408d0 + 76.2660712756d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00243135236d0*cos(3.8909980142d0 + 39.6175083461d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00243135236d0*39.6175083461d0*sin(3.8909980142d0 + 39.6175083461d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00256112241d0*cos(0.44757496381d0 + 36.6485629295d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00256112241d0*36.6485629295d0*sin(0.44757496381d0 + 36.6485629295d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00352941377d0*cos(3.14159265359d0 + 0.0d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00352941377d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        r = neptune_y_1+neptune_y_0
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

        neptune_z_0 = neptune_z_0 -(t**0)*0.00016864457d0*41.1019810544d0*sin(2.13251137546d0 + 41.1019810544d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.00025811465d0*2.9689454166d0*sin(3.1930392971d0 + 2.9689454166d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.00030871862d0*35.1640902212d0*sin(3.29017492215d0 + 35.1640902212d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.00032204313d0*74.7815985673d0*sin(1.48923465055d0 + 74.7815985673d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.00084101913d0*1.4844727083d0*sin(4.38932612685d0 + 1.4844727083d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.00417539868d0*76.2660712756d0*sin(5.9130887139d0 + 76.2660712756d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.00451964646d0*39.6175083461d0*sin(3.50949727943d0 + 39.6175083461d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.00474309033d0*36.6485629295d0*sin(2.52218768352d0 + 36.6485629295d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.01244825806d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.92861252357d0*38.1330356378d0*sin(1.44103930199d0 + 38.1330356378d0 * t)

        neptune_z_1 = neptune_z_1 +(t**(0))*1*0.00154877961d0*cos(2.14239038882d0 + 38.1330356378d0*t)
        neptune_z_1 = neptune_z_1 -(t**1)*0.00154877961d0*38.1330356378d0*sin(2.14239038882d0 + 38.1330356378d0 * t)

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

        saturn_x_0 = saturn_x_0 -(t**0)*0.00012023054d0*351.8165923087d0*sin(5.66372239094d0 + 351.8165923087d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.0001238976d0*490.3340891794d0*sin(4.19747910039d0 + 490.3340891794d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00014727416d0*277.0349937414d0*sin(4.67982458404d0 + 277.0349937414d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00023237024d0*149.5631971346d0*sin(0.10474288122d0 + 149.5631971346d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00023365871d0*647.0108333148d0*sin(5.53492454782d0 + 647.0108333148d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00024058786d0*522.5774180938d0*sin(5.85571939691d0 + 522.5774180938d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00024547484d0*210.1177017003d0*sin(4.53150636994d0 + 210.1177017003d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.0002466993d0*415.5524906121d0*sin(5.60389432714d0 + 415.5524906121d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00025158d0*216.4804891757d0*sin(0.37800583496d0 + 216.4804891757d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00025485006d0*117.3198682202d0*sin(1.63932503888d0 + 117.3198682202d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00031244965d0*735.8765135318d0*sin(4.6293031128d0 + 735.8765135318d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.0003833447d0*199.0720014364d0*sin(4.39817733456d0 + 199.0720014364d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00044537354d0*63.7358983034d0*sin(5.60825622208d0 + 63.7358983034d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00045542953d0*14.2270940016d0*sin(1.882351964d0 + 14.2270940016d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00054006503d0*853.196381752d0*sin(4.90926255487d0 + 853.196381752d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00058306839d0*224.3447957019d0*sin(2.16048044319d0 + 224.3447957019d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00058995712d0*74.7815985673d0*sin(2.33042838103d0 + 74.7815985673d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00065601455d0*202.2533951741d0*sin(2.69726244676d0 + 202.2533951741d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00068836111d0*217.2312487011d0*sin(4.0178812181d0 + 217.2312487011d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00070199356d0*209.3669421749d0*sin(0.88789759781d0 + 209.3669421749d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00074267111d0*632.7837393132d0*sin(2.38212789877d0 + 632.7837393132d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.000806058d0*11.0457002639d0*sin(5.62066478674d0 + 11.0457002639d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00083256484d0*529.6909650946d0*sin(3.06289145446d0 + 529.6909650946d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00083758534d0*227.5261894396d0*sin(0.62038891091d0 + 227.5261894396d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.0009783508d0*323.5054166574d0*sin(1.01502366873d0 + 323.5054166574d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00149659945d0*38.1330356378d0*sin(2.17071100189d0 + 38.1330356378d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00372789068d0*433.7117378768d0*sin(0.00137750888d0 + 433.7117378768d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00509529043d0*103.0927742186d0*sin(4.95879639669d0 + 103.0927742186d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00716112591d0*316.3918696566d0*sin(2.71151505735d0 + 316.3918696566d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.01097374519d0*639.897286314d0*sin(5.65753938643d0 + 639.897286314d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.01115372225d0*419.4846438752d0*sin(3.15690865182d0 + 419.4846438752d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.01255113414d0*110.2063212194d0*sin(2.17347170552d0 + 110.2063212194d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.02335961354d0*7.1135470008d0*sin(2.02227905783d0 + 7.1135470008d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.04274172066d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.06622371284d0*220.4126424388d0*sin(0.75094738122d0 + 220.4126424388d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.06758489145d0*206.1855484372d0*sin(4.16767544586d0 + 206.1855484372d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.26404799161d0*426.598190876d0*sin(0.12391580771d0 + 426.598190876d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*9.51366533422d0*213.299095438d0*sin(0.8744138065d0 + 213.299095438d0 * t)

        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00011058978d0*cos(0.03175095579d0 + 117.3198682202d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00011058978d0*117.3198682202d0*sin(0.03175095579d0 + 117.3198682202d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00014461916d0*cos(3.67449803828d0 + 647.0108333148d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00014461916d0*647.0108333148d0*sin(3.67449803828d0 + 647.0108333148d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.0001588995d0*cos(0.0365352681d0 + 210.1177017003d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.0001588995d0*210.1177017003d0*sin(0.0365352681d0 + 210.1177017003d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00016193213d0*cos(5.60825312945d0 + 323.5054166574d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00016193213d0*323.5054166574d0*sin(5.60825312945d0 + 323.5054166574d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00016291548d0*cos(4.86945682592d0 + 216.4804891757d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00016291548d0*216.4804891757d0*sin(4.86945682592d0 + 216.4804891757d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00017120603d0*cos(4.59542499292d0 + 632.7837393132d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00017120603d0*632.7837393132d0*sin(4.59542499292d0 + 632.7837393132d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00017772775d0*cos(6.10381591303d0 + 217.2312487011d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00017772775d0*217.2312487011d0*sin(6.10381591303d0 + 217.2312487011d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.0001808785d0*cos(5.09162753222d0 + 209.3669421749d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.0001808785d0*209.3669421749d0*sin(5.09162753222d0 + 209.3669421749d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00018933918d0*cos(2.77615609434d0 + 853.196381752d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00018933918d0*853.196381752d0*sin(2.77615609434d0 + 853.196381752d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00022268129d0*cos(6.19542444435d0 + 103.0927742186d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00022268129d0*103.0927742186d0*sin(6.19542444435d0 + 103.0927742186d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00030413111d0*cos(0.18746990038d0 + 14.2270940016d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00030413111d0*14.2270940016d0*sin(0.18746990038d0 + 14.2270940016d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00030991837d0*cos(6.06069383491d0 + 199.0720014364d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00030991837d0*199.0720014364d0*sin(6.06069383491d0 + 199.0720014364d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00066742869d0*cos(3.72347003212d0 + 316.3918696566d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00066742869d0*316.3918696566d0*sin(3.72347003212d0 + 316.3918696566d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00066882235d0*cos(5.20257498551d0 + 227.5261894396d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00066882235d0*227.5261894396d0*sin(5.20257498551d0 + 227.5261894396d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00119517217d0*cos(1.14736396934d0 + 110.2063212194d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00119517217d0*110.2063212194d0*sin(1.14736396934d0 + 110.2063212194d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00189142591d0*cos(4.48642939502d0 + 433.7117378768d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00189142591d0*433.7117378768d0*sin(4.48642939502d0 + 433.7117378768d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00203589147d0*cos(1.10998720016d0 + 213.299095438d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00203589147d0*213.299095438d0*sin(1.10998720016d0 + 213.299095438d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00256488381d0*cos(3.52479443238d0 + 639.897286314d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00256488381d0*639.897286314d0*sin(3.52479443238d0 + 639.897286314d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00312269012d0*cos(4.83002443322d0 + 419.4846438752d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00312269012d0*419.4846438752d0*sin(4.83002443322d0 + 419.4846438752d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00627003445d0*cos(0.32898258729d0 + 7.1135470008d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00627003445d0*7.1135470008d0*sin(0.32898258729d0 + 7.1135470008d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.02642347272d0*cos(5.33291950842d0 + 220.4126424388d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.02642347272d0*220.4126424388d0*sin(5.33291950842d0 + 220.4126424388d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.02714141496d0*cos(5.85229546861d0 + 206.1855484372d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.02714141496d0*206.1855484372d0*sin(5.85229546861d0 + 206.1855484372d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.03084144308d0*cos(4.27565898829d0 + 426.598190876d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.03084144308d0*426.598190876d0*sin(4.27565898829d0 + 426.598190876d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.07573807889d0*cos(0.0d0 + 0.0d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.07573807889d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00010329051d0*cos(4.76949570032d0 + 14.2270940016d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00010329051d0*14.2270940016d0*sin(4.76949570032d0 + 14.2270940016d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00012672501d0*cos(1.45466696358d0 + 199.0720014364d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00012672501d0*199.0720014364d0*sin(1.45466696358d0 + 199.0720014364d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00027145848d0*cos(3.49804001342d0 + 227.5261894396d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00027145848d0*227.5261894396d0*sin(3.49804001342d0 + 227.5261894396d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00032838505d0*cos(1.59210694211d0 + 639.897286314d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00032838505d0*639.897286314d0*sin(1.59210694211d0 + 639.897286314d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.0004510988d0*cos(0.36735560493d0 + 419.4846438752d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.0004510988d0*419.4846438752d0*sin(0.36735560493d0 + 419.4846438752d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00050013864d0*cos(2.70119455991d0 + 433.7117378768d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00050013864d0*433.7117378768d0*sin(2.70119455991d0 + 433.7117378768d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00087156936d0*cos(4.89048703815d0 + 7.1135470008d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00087156936d0*7.1135470008d0*sin(4.89048703815d0 + 7.1135470008d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00224237163d0*cos(2.49151267683d0 + 426.598190876d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00224237163d0*426.598190876d0*sin(2.49151267683d0 + 426.598190876d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00336013651d0*cos(2.4254743221d0 + 213.299095438d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00336013651d0*213.299095438d0*sin(2.4254743221d0 + 213.299095438d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00443297401d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00443297401d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00545678885d0*cos(3.62343709789d0 + 220.4126424388d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00545678885d0*220.4126424388d0*sin(3.62343709789d0 + 220.4126424388d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00560586041d0*cos(1.26401676555d0 + 206.1855484372d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00560586041d0*206.1855484372d0*sin(1.26401676555d0 + 206.1855484372d0 * t)

        saturn_x_3 = saturn_x_3 +(t**(2))*3*0.00010524182d0*cos(0.66368351849d0 + 426.598190876d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*0.00010524182d0*426.598190876d0*sin(0.66368351849d0 + 426.598190876d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*0.00018448888d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*0.00018448888d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*0.00075318954d0*cos(1.89208004954d0 + 220.4126424388d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*0.00075318954d0*220.4126424388d0*sin(1.89208004954d0 + 220.4126424388d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*0.00077093916d0*cos(2.97714400003d0 + 206.1855484372d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*0.00077093916d0*206.1855484372d0*sin(2.97714400003d0 + 206.1855484372d0 * t)

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

        saturn_y_0 = saturn_y_0 -(t**0)*0.00012044624d0*351.8165923087d0*sin(4.09265940857d0 + 351.8165923087d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00012419205d0*490.3340891794d0*sin(2.6255814302d0 + 490.3340891794d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00015379504d0*277.0349937414d0*sin(3.1022791367d0 + 277.0349937414d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00020269405d0*309.2783226558d0*sin(2.34321183269d0 + 309.2783226558d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00020506212d0*522.5774180938d0*sin(1.05154502619d0 + 522.5774180938d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00023261688d0*149.5631971346d0*sin(4.81745174067d0 + 149.5631971346d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00023390138d0*647.0108333148d0*sin(3.96337860167d0 + 647.0108333148d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.000246338d0*210.1177017003d0*sin(2.95445207628d0 + 210.1177017003d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00024828004d0*415.5524906121d0*sin(4.02630021779d0 + 415.5524906121d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.0002519238d0*216.4804891757d0*sin(5.08963506546d0 + 216.4804891757d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00025539506d0*117.3198682202d0*sin(0.06636302741d0 + 117.3198682202d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.0002967171d0*735.8765135318d0*sin(6.09960421165d0 + 735.8765135318d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00041964833d0*199.0720014364d0*sin(2.62589505876d0 + 199.0720014364d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00044692371d0*63.7358983034d0*sin(0.90600229248d0 + 63.7358983034d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00045783362d0*14.2270940016d0*sin(0.30331816441d0 + 14.2270940016d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00054033488d0*853.196381752d0*sin(3.33755971377d0 + 853.196381752d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00058391222d0*224.3447957019d0*sin(0.58871774298d0 + 224.3447957019d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00058932599d0*74.7815985673d0*sin(0.76188426024d0 + 74.7815985673d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00065919181d0*202.2533951741d0*sin(1.25972156533d0 + 202.2533951741d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00068966168d0*217.2312487011d0*sin(2.44460285922d0 + 217.2312487011d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00070138439d0*209.3669421749d0*sin(5.59777958177d0 + 209.3669421749d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00071069917d0*632.7837393132d0*sin(0.88882645933d0 + 632.7837393132d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00080377512d0*529.6909650946d0*sin(1.51715226439d0 + 529.6909650946d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00080576954d0*11.0457002639d0*sin(4.05258308529d0 + 11.0457002639d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00083875875d0*227.5261894396d0*sin(5.33204068233d0 + 227.5261894396d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00097829309d0*323.5054166574d0*sin(5.7286091022d0 + 323.5054166574d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00149675444d0*38.1330356378d0*sin(0.59938943096d0 + 38.1330356378d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00335413797d0*103.0927742186d0*sin(0.66392970394d0 + 103.0927742186d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00373221824d0*433.7117378768d0*sin(4.71309283502d0 + 433.7117378768d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00700636234d0*316.3918696566d0*sin(1.13613024684d0 + 316.3918696566d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.01098442011d0*639.897286314d0*sin(4.08609387384d0 + 639.897286314d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.01183557497d0*419.4846438752d0*sin(1.34637027573d0 + 419.4846438752d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.012455238d0*110.2063212194d0*sin(0.60375781288d0 + 110.2063212194d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.02345226948d0*7.1135470008d0*sin(0.44652393276d0 + 7.1135470008d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.066316792d0*220.4126424388d0*sin(5.46258849076d0 + 220.4126424388d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.06914690347d0*206.1855484372d0*sin(2.55279029588d0 + 206.1855484372d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.26434197609d0*426.598190876d0*sin(4.83528742856d0 + 426.598190876d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.79354119271d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*9.52714696877d0*213.299095438d0*sin(5.58600556072d0 + 213.299095438d0 * t)

        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.0001108147d0*cos(4.74085903299d0 + 117.3198682202d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.0001108147d0*117.3198682202d0*sin(4.74085903299d0 + 117.3198682202d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00014477333d0*cos(2.10298721499d0 + 647.0108333148d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00014477333d0*647.0108333148d0*sin(2.10298721499d0 + 647.0108333148d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00015939705d0*cos(4.74503240139d0 + 210.1177017003d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00015939705d0*210.1177017003d0*sin(4.74503240139d0 + 210.1177017003d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00016150533d0*cos(4.04213724873d0 + 323.5054166574d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00016150533d0*323.5054166574d0*sin(4.04213724873d0 + 323.5054166574d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00016316041d0*cos(3.29784030574d0 + 216.4804891757d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00016316041d0*216.4804891757d0*sin(3.29784030574d0 + 216.4804891757d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00016718004d0*cos(3.00200323762d0 + 632.7837393132d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00016718004d0*632.7837393132d0*sin(3.00200323762d0 + 632.7837393132d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00017786462d0*cos(4.53214139341d0 + 217.2312487011d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00017786462d0*217.2312487011d0*sin(4.53214139341d0 + 217.2312487011d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00018074789d0*cos(3.51566121826d0 + 209.3669421749d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00018074789d0*209.3669421749d0*sin(3.51566121826d0 + 209.3669421749d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00018939541d0*cos(1.20409782475d0 + 853.196381752d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00018939541d0*853.196381752d0*sin(1.20409782475d0 + 853.196381752d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00022227517d0*cos(4.62224969869d0 + 103.0927742186d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00022227517d0*103.0927742186d0*sin(4.62224969869d0 + 103.0927742186d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00030623941d0*cos(4.8886201945d0 + 14.2270940016d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00030623941d0*14.2270940016d0*sin(4.8886201945d0 + 14.2270940016d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00032993193d0*cos(4.35526131741d0 + 199.0720014364d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00032993193d0*199.0720014364d0*sin(4.35526131741d0 + 199.0720014364d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00066984273d0*cos(3.63101074215d0 + 227.5261894396d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00066984273d0*227.5261894396d0*sin(3.63101074215d0 + 227.5261894396d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00067189505d0*cos(2.170429775d0 + 316.3918696566d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00067189505d0*316.3918696566d0*sin(2.170429775d0 + 316.3918696566d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00116775818d0*cos(5.89150757121d0 + 110.2063212194d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00116775818d0*110.2063212194d0*sin(5.89150757121d0 + 110.2063212194d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00164086267d0*cos(5.29239224879d0 + 213.299095438d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00164086267d0*213.299095438d0*sin(5.29239224879d0 + 213.299095438d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00189379568d0*cos(2.9150232868d0 + 433.7117378768d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00189379568d0*433.7117378768d0*sin(2.9150232868d0 + 433.7117378768d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00256727017d0*cos(1.95352327208d0 + 639.897286314d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00256727017d0*639.897286314d0*sin(1.95352327208d0 + 639.897286314d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00312184641d0*cos(3.25850939353d0 + 419.4846438752d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00312184641d0*419.4846438752d0*sin(3.25850939353d0 + 419.4846438752d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00631417689d0*cos(5.03245728319d0 + 7.1135470008d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00631417689d0*7.1135470008d0*sin(5.03245728319d0 + 7.1135470008d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.02646734779d0*cos(3.76132299914d0 + 220.4126424388d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.02646734779d0*220.4126424388d0*sin(3.76132299914d0 + 220.4126424388d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.02740812928d0*cos(4.2666750646d0 + 206.1855484372d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.02740812928d0*206.1855484372d0*sin(4.2666750646d0 + 206.1855484372d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.03089676414d0*cos(2.70347020059d0 + 426.598190876d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.03089676414d0*426.598190876d0*sin(2.70347020059d0 + 426.598190876d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.05373895252d0*cos(0.0d0 + 0.0d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.05373895252d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00010424268d0*cos(3.18247070949d0 + 14.2270940016d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00010424268d0*14.2270940016d0*sin(3.18247070949d0 + 14.2270940016d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00013247777d0*cos(6.07692233033d0 + 199.0720014364d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00013247777d0*199.0720014364d0*sin(6.07692233033d0 + 199.0720014364d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00027192023d0*cos(1.92638417379d0 + 227.5261894396d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00027192023d0*227.5261894396d0*sin(1.92638417379d0 + 227.5261894396d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00032887404d0*cos(0.02089587128d0 + 639.897286314d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00032887404d0*639.897286314d0*sin(0.02089587128d0 + 639.897286314d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00045503682d0*cos(5.07669915666d0 + 419.4846438752d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00045503682d0*419.4846438752d0*sin(5.07669915666d0 + 419.4846438752d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00050087062d0*cos(1.12976577868d0 + 433.7117378768d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00050087062d0*433.7117378768d0*sin(1.12976577868d0 + 433.7117378768d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00088376134d0*cos(3.3028974379d0 + 7.1135470008d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00088376134d0*7.1135470008d0*sin(3.3028974379d0 + 7.1135470008d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00225456249d0*cos(0.91699830789d0 + 426.598190876d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00225456249d0*426.598190876d0*sin(0.91699830789d0 + 426.598190876d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00362190876d0*cos(0.89540102818d0 + 213.299095438d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00362190876d0*213.299095438d0*sin(0.89540102818d0 + 213.299095438d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00458462799d0*cos(0.0d0 + 0.0d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00458462799d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00546856143d0*cos(2.05154974712d0 + 220.4126424388d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00546856143d0*220.4126424388d0*sin(2.05154974712d0 + 220.4126424388d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00563545688d0*cos(5.97115835983d0 + 206.1855484372d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00563545688d0*206.1855484372d0*sin(5.97115835983d0 + 206.1855484372d0 * t)

        saturn_y_3 = saturn_y_3 +(t**(2))*3*0.0001066917d0*cos(5.364956122d0 + 426.598190876d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*0.0001066917d0*426.598190876d0*sin(5.364956122d0 + 426.598190876d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*0.00022841198d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*0.00022841198d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*0.00075542804d0*cos(0.31962897945d0 + 220.4126424388d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*0.00075542804d0*220.4126424388d0*sin(0.31962897945d0 + 220.4126424388d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*0.00077354527d0*cos(1.40391035241d0 + 206.1855484372d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*0.00077354527d0*206.1855484372d0*sin(1.40391035241d0 + 206.1855484372d0 * t)

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

        saturn_z_0 = saturn_z_0 -(t**0)*0.00016180782d0*433.7117378768d0*sin(2.72987541776d0 + 433.7117378768d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.00034555171d0*316.3918696566d0*sin(5.42614764541d0 + 316.3918696566d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.00043448305d0*419.4846438752d0*sin(5.84904880596d0 + 419.4846438752d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.00047724545d0*639.897286314d0*sin(2.1003983837d0 + 639.897286314d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.000573476d0*110.2063212194d0*sin(4.92616271331d0 + 110.2063212194d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.00099054808d0*7.1135470008d0*sin(4.73370561217d0 + 7.1135470008d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.00286852189d0*220.4126424388d0*sin(3.48073528206d0 + 220.4126424388d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.00329186544d0*206.1855484372d0*sin(0.57121482436d0 + 206.1855484372d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.01147953788d0*426.598190876d0*sin(2.85128771957d0 + 426.598190876d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.01213097211d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.41345140292d0*213.299095438d0*sin(3.60234141893d0 + 213.299095438d0 * t)

        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.00016174973d0*cos(1.19988846625d0 + 419.4846438752d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.00016174973d0*419.4846438752d0*sin(1.19988846625d0 + 419.4846438752d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.0002225307d0*cos(3.07685453172d0 + 7.1135470008d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.0002225307d0*7.1135470008d0*sin(3.07685453172d0 + 7.1135470008d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.0008592259d0*cos(0.51612794233d0 + 426.598190876d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.0008592259d0*426.598190876d0*sin(0.51612794233d0 + 426.598190876d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.00101437388d0*cos(1.79095832223d0 + 220.4126424388d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.00101437388d0*220.4126424388d0*sin(1.79095832223d0 + 220.4126424388d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.0013022499d0*cos(2.26141028606d0 + 206.1855484372d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.0013022499d0*206.1855484372d0*sin(2.26141028606d0 + 206.1855484372d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.00528167867d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.00528167867d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.0190595894d0*cos(4.94544746619d0 + 213.299095438d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.0190595894d0*213.299095438d0*sin(4.94544746619d0 + 213.299095438d0 * t)

        saturn_z_2 = saturn_z_2 +(t**(1))*2*0.00019316662d0*cos(0.0922875161d0 + 220.4126424388d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*0.00019316662d0*220.4126424388d0*sin(0.0922875161d0 + 220.4126424388d0 * t)
        saturn_z_2 = saturn_z_2 +(t**(1))*2*0.00030139033d0*cos(3.91396211806d0 + 206.1855484372d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*0.00030139033d0*206.1855484372d0*sin(3.91396211806d0 + 206.1855484372d0 * t)
        saturn_z_2 = saturn_z_2 +(t**(1))*2*0.00131237677d0*cos(0.08868998014d0 + 213.299095438d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*0.00131237677d0*213.299095438d0*sin(0.08868998014d0 + 213.299095438d0 * t)

        r = saturn_z_2+saturn_z_1+saturn_z_0
    end function

    function sun_x(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: sun_x_0
        double precision :: sun_x_1
        double precision :: sun_x_2
        double precision :: sun_x_3
        double precision :: sun_x_4
        double precision :: sun_x_5

        sun_x_0 = 0.0
        sun_x_1 = 0.0
        sun_x_2 = 0.0
        sun_x_3 = 0.0
        sun_x_4 = 0.0
        sun_x_5 = 0.0

        sun_x_0 = sun_x_0 -(t**0)*0.00012013079d0*1059.3819301892d0*sin(4.09073224903d0 + 1059.3819301892d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*0.00029374249d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*0.00083792997d0*74.7815985673d0*sin(2.33967985523d0 + 74.7815985673d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*0.00155435675d0*38.1330356378d0*sin(2.17052050061d0 + 38.1330356378d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*0.00271802376d0*213.299095438d0*sin(4.01601149775d0 + 213.299095438d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*0.00495672739d0*529.6909650946d0*sin(3.74107356792d0 + 529.6909650946d0 * t)

        r = sun_x_0
    end function

    function sun_y(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: sun_y_0
        double precision :: sun_y_1
        double precision :: sun_y_2
        double precision :: sun_y_3
        double precision :: sun_y_4
        double precision :: sun_y_5

        sun_y_0 = 0.0
        sun_y_1 = 0.0
        sun_y_2 = 0.0
        sun_y_3 = 0.0
        sun_y_4 = 0.0
        sun_y_5 = 0.0

        sun_y_0 = sun_y_0 -(t**0)*0.00012011827d0*1059.3819301892d0*sin(2.5200314788d0 + 1059.3819301892d0 * t)
        sun_y_0 = sun_y_0 -(t**0)*0.00033869535d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        sun_y_0 = sun_y_0 -(t**0)*0.00083755792d0*74.7815985673d0*sin(0.7688016471d0 + 74.7815985673d0 * t)
        sun_y_0 = sun_y_0 -(t**0)*0.00155444313d0*38.1330356378d0*sin(0.5992701084d0 + 38.1330356378d0 * t)
        sun_y_0 = sun_y_0 -(t**0)*0.00272185821d0*213.299095438d0*sin(2.44443364925d0 + 213.299095438d0 * t)
        sun_y_0 = sun_y_0 -(t**0)*0.00495536218d0*529.6909650946d0*sin(2.17046712634d0 + 529.6909650946d0 * t)

        r = sun_y_0
    end function

    function sun_z(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: sun_z_0
        double precision :: sun_z_1
        double precision :: sun_z_2
        double precision :: sun_z_3
        double precision :: sun_z_4
        double precision :: sun_z_5

        sun_z_0 = 0.0
        sun_z_1 = 0.0
        sun_z_2 = 0.0
        sun_z_3 = 0.0
        sun_z_4 = 0.0
        sun_z_5 = 0.0

        sun_z_0 = sun_z_0 -(t**0)*0.000112777d0*529.6909650946d0*sin(0.41689943638d0 + 529.6909650946d0 * t)
        sun_z_0 = sun_z_0 -(t**0)*0.00011810648d0*213.299095438d0*sin(0.46078690233d0 + 213.299095438d0 * t)

        r = sun_z_0
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

        uranus_x_0 = uranus_x_0 -(t**0)*0.00010797879d0*77.962992305d0*sin(1.70031895074d0 + 77.962992305d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0001124531d0*71.6002048296d0*sin(6.11597014635d0 + 71.6002048296d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0001144251d0*36.6485629295d0*sin(0.20030247485d0 + 36.6485629295d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00011538642d0*77.2292791221d0*sin(1.77241794539d0 + 77.2292791221d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00012394786d0*72.3339180125d0*sin(6.2189287885d0 + 72.3339180125d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00012884351d0*145.1097790097d0*sin(5.0873799947d0 + 145.1097790097d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00013593381d0*87.3117715395d0*sin(2.55407931798d0 + 87.3117715395d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00013947849d0*221.3758502853d0*sin(6.2754594407d0 + 221.3758502853d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00015199755d0*41.1019810544d0*sin(2.88408510221d0 + 41.1019810544d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0001658787d0*108.4612160802d0*sin(4.86920309163d0 + 108.4612160802d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00018565067d0*52.6901980395d0*sin(0.62225019017d0 + 52.6901980395d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00018577959d0*33.6796175129d0*sin(5.70218580551d0 + 33.6796175129d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00019653015d0*74.8934731519d0*sin(2.28660913421d0 + 74.8934731519d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00019675903d0*74.6697239827d0*sin(5.53431398332d0 + 74.6697239827d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00019925827d0*112.9146342051d0*sin(1.39875506889d0 + 112.9146342051d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00019953738d0*12.5301729722d0*sin(0.57452653801d0 + 12.5301729722d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00020084107d0*22.0914005278d0*sin(4.47297514058d0 + 22.0914005278d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0002296296d0*84.3428261229d0*sin(5.5147524227d0 + 84.3428261229d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0002346678d0*145.6310438715d0*sin(4.09729826283d0 + 145.6310438715d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00025208291d0*9.5612275556d0*sin(5.30270440656d0 + 9.5612275556d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0002576722d0*213.299095438d0*sin(2.64279937947d0 + 213.299095438d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0002665625d0*160.6088973985d0*sin(6.11027934265d0 + 160.6088973985d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00028371102d0*127.4717966068d0*sin(2.58026061716d0 + 127.4717966068d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00028383708d0*184.7272873558d0*sin(6.01785438397d0 + 184.7272873558d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0003182253d0*152.5321425512d0*sin(5.53948530245d0 + 152.5321425512d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00033133106d0*65.2203710117d0*sin(2.54202102521d0 + 65.2203710117d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0003386596d0*70.3281804424d0*sin(5.984183616d0 + 70.3281804424d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00034340286d0*225.8292684102d0*sin(3.03782445102d0 + 225.8292684102d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00034554296d0*79.2350166922d0*sin(1.84698778371d0 + 79.2350166922d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00035938423d0*202.2533951741d0*sin(4.08805817528d0 + 202.2533951741d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00039183521d0*4.4534181249d0*sin(2.68841323459d0 + 4.4534181249d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00053904041d0*3.9321532631d0*sin(3.92590422507d0 + 3.9321532631d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0005993544d0*38.1330356378d0*sin(5.30012287089d0 + 38.1330356378d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00063581767d0*299.1263942692d0*sin(0.29966264689d0 + 299.1263942692d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00065063923d0*109.9456887885d0*sin(3.73008432701d0 + 109.9456887885d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00104615229d0*146.594251718d0*sin(3.90538915195d0 + 146.594251718d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00110162872d0*35.1640902212d0*sin(4.45478121996d0 + 35.1640902212d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00111255099d0*222.8603229936d0*sin(5.12253353573d0 + 222.8603229936d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00120354886d0*39.6175083461d0*sin(4.1021867007d0 + 39.6175083461d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00125099578d0*111.4301614968d0*sin(2.51455157066d0 + 111.4301614968d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00135334157d0*78.7137518304d0*sin(5.51062460646d0 + 78.7137518304d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00145499145d0*70.8494453042d0*sin(2.31759819136d0 + 70.8494453042d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00383608186d0*138.5174968707d0*sin(6.18762167352d0 + 138.5174968707d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0045824226d0*2.9689454166d0*sin(3.90788427382d0 + 2.9689454166d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00547675794d0*85.8272988312d0*sin(3.63127816021d0 + 85.8272988312d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.005851598d0*71.8126531507d0*sin(4.79934731599d0 + 71.8126531507d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00621603101d0*77.7505439839d0*sin(3.05881560775d0 + 77.7505439839d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00633971831d0*63.7358983034d0*sin(4.0955458474d0 + 63.7358983034d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00657496073d0*151.0476698429d0*sin(0.57595186181d0 + 151.0476698429d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00944969862d0*11.0457002639d0*sin(1.65871112189d0 + 11.0457002639d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0144415347d0*148.0787244263d0*sin(2.65117108186d0 + 148.0787244263d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.01542890129d0*224.3447957019d0*sin(4.12122840701d0 + 224.3447957019d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.06200970387d0*1.4844727083d0*sin(5.14043568284d0 + 1.4844727083d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.14129215712d0*76.2660712756d0*sin(4.39576776954d0 + 76.2660712756d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.14667584671d0*73.297125859d0*sin(3.42395875589d0 + 73.297125859d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.44400556159d0*149.5631971346d0*sin(1.65967535182d0 + 149.5631971346d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.32301898121d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*19.17286937362d0*74.7815985673d0*sin(5.48133416758d0 + 74.7815985673d0 * t)

        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00015211071d0*cos(5.5314163314d0 + 3.9321532631d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00015211071d0*3.9321532631d0*sin(5.5314163314d0 + 3.9321532631d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.0001737553d0*cos(0.24607209329d0 + 71.8126531507d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.0001737553d0*71.8126531507d0*sin(0.24607209329d0 + 71.8126531507d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00019441253d0*cos(1.30617221059d0 + 77.7505439839d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00019441253d0*77.7505439839d0*sin(1.30617221059d0 + 77.7505439839d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00021684713d0*cos(4.93711029212d0 + 151.0476698429d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00021684713d0*151.0476698429d0*sin(4.93711029212d0 + 151.0476698429d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00032331648d0*cos(5.06666434496d0 + 74.7815985673d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00032331648d0*74.7815985673d0*sin(5.06666434496d0 + 74.7815985673d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00036156923d0*cos(1.23634800002d0 + 78.7137518304d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00036156923d0*78.7137518304d0*sin(1.23634800002d0 + 78.7137518304d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00038842663d0*cos(0.30724636172d0 + 70.8494453042d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00038842663d0*70.8494453042d0*sin(0.30724636172d0 + 70.8494453042d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00045685509d0*cos(2.29216605538d0 + 138.5174968707d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00045685509d0*138.5174968707d0*sin(2.29216605538d0 + 138.5174968707d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00051382144d0*cos(2.18938250169d0 + 224.3447957019d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00051382144d0*224.3447957019d0*sin(2.18938250169d0 + 224.3447957019d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00081508425d0*cos(1.21058628422d0 + 85.8272988312d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00081508425d0*85.8272988312d0*sin(1.21058628422d0 + 85.8272988312d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00096348588d0*cos(0.35070396367d0 + 63.7358983034d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00096348588d0*63.7358983034d0*sin(0.35070396367d0 + 63.7358983034d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00111041831d0*cos(5.57157483973d0 + 11.0457002639d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00111041831d0*11.0457002639d0*sin(5.57157483973d0 + 11.0457002639d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00229661096d0*cos(2.48203377424d0 + 76.2660712756d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00229661096d0*76.2660712756d0*sin(2.48203377424d0 + 76.2660712756d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00239830578d0*cos(5.33657752107d0 + 73.297125859d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00239830578d0*73.297125859d0*sin(5.33657752107d0 + 73.297125859d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00528174379d0*cos(3.14159265359d0 + 0.0d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00528174379d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00739697937d0*cos(6.01067921255d0 + 149.5631971346d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00739697937d0*149.5631971346d0*sin(6.01067921255d0 + 149.5631971346d0 * t)

        uranus_x_2 = uranus_x_2 +(t**(1))*2*0.00010915299d0*cos(3.0298777627d0 + 149.5631971346d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*0.00010915299d0*149.5631971346d0*sin(3.0298777627d0 + 149.5631971346d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*0.00016015031d0*cos(3.83700030134d0 + 74.7815985673d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*0.00016015031d0*74.7815985673d0*sin(3.83700030134d0 + 74.7815985673d0 * t)

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

        uranus_y_0 = uranus_y_0 -(t**0)*0.00010819255d0*77.962992305d0*sin(0.12807059988d0 + 77.962992305d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0001123853d0*71.6002048296d0*sin(4.54508332436d0 + 71.6002048296d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0001153114d0*77.2292791221d0*sin(0.20190074645d0 + 77.2292791221d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00012407787d0*72.3339180125d0*sin(4.6494578334d0 + 72.3339180125d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00013589092d0*87.3117715395d0*sin(0.98313830596d0 + 87.3117715395d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00013948178d0*221.3758502853d0*sin(4.70475195371d0 + 221.3758502853d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00015203524d0*41.1019810544d0*sin(1.31307053626d0 + 41.1019810544d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00015537967d0*52.6901980395d0*sin(1.8786327546d0 + 52.6901980395d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0001812497d0*33.6796175129d0*sin(0.98477642246d0 + 33.6796175129d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00019642987d0*74.8934731519d0*sin(0.71577796385d0 + 74.8934731519d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00019665349d0*74.6697239827d0*sin(3.96350065335d0 + 74.6697239827d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00019838446d0*12.5301729722d0*sin(5.29115100742d0 + 12.5301729722d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00019900975d0*112.9146342051d0*sin(6.11072709584d0 + 112.9146342051d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00020050993d0*22.0914005278d0*sin(2.90386377392d0 + 22.0914005278d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.000201151d0*127.4717966068d0*sin(3.45473780762d0 + 127.4717966068d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00020715948d0*36.6485629295d0*sin(4.93996485297d0 + 36.6485629295d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00022932162d0*84.3428261229d0*sin(3.94455708202d0 + 84.3428261229d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00023426309d0*145.6310438715d0*sin(2.52740094518d0 + 145.6310438715d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00025235989d0*70.3281804424d0*sin(4.45141520694d0 + 70.3281804424d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0002590259d0*213.299095438d0*sin(1.06899231907d0 + 213.299095438d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00026157159d0*9.5612275556d0*sin(3.74095916304d0 + 9.5612275556d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00026651934d0*160.6088973985d0*sin(4.53944389687d0 + 160.6088973985d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00028371248d0*184.7272873558d0*sin(4.44714636367d0 + 184.7272873558d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00031814882d0*152.5321425512d0*sin(3.9686011734d0 + 152.5321425512d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00034204008d0*65.2203710117d0*sin(0.92405447828d0 + 65.2203710117d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00034332981d0*225.8292684102d0*sin(1.466969538d0 + 225.8292684102d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00034536961d0*79.2350166922d0*sin(0.27613229331d0 + 79.2350166922d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00039220442d0*4.4534181249d0*sin(1.11841144768d0 + 4.4534181249d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00039259031d0*202.2533951741d0*sin(5.75909949077d0 + 202.2533951741d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00053287586d0*3.9321532631d0*sin(2.38436439892d0 + 3.9321532631d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0006079757d0*38.1330356378d0*sin(3.7307078734d0 + 38.1330356378d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00063570927d0*299.1263942692d0*sin(5.01204999475d0 + 299.1263942692d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00063771339d0*109.9456887885d0*sin(2.15607569061d0 + 109.9456887885d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00104503352d0*146.594251718d0*sin(2.33345670641d0 + 146.594251718d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00108550063d0*35.1640902212d0*sin(6.02230047678d0 + 35.1640902212d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00111199717d0*222.8603229936d0*sin(3.55163790142d0 + 222.8603229936d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00120431731d0*39.6175083461d0*sin(2.53138588744d0 + 39.6175083461d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00124862444d0*111.4301614968d0*sin(0.94315799565d0 + 111.4301614968d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00135284941d0*78.7137518304d0*sin(3.93970261854d0 + 78.7137518304d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00144026146d0*70.8494453042d0*sin(0.75015758735d0 + 70.8494453042d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00387905368d0*138.5174968707d0*sin(4.62027047251d0 + 138.5174968707d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00459611215d0*2.9689454166d0*sin(2.33745675699d0 + 2.9689454166d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00541938502d0*71.8126531507d0*sin(3.24476518729d0 + 71.8126531507d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00547449443d0*85.8272988312d0*sin(2.06038015757d0 + 85.8272988312d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00621305207d0*77.7505439839d0*sin(1.48795124826d0 + 77.7505439839d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0065030702d0*63.7358983034d0*sin(2.76144565363d0 + 63.7358983034d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00657314387d0*151.0476698429d0*sin(5.28830720039d0 + 151.0476698429d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00938950136d0*11.0457002639d0*sin(0.09277492739d0 + 11.0457002639d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.01442293466d0*148.0787244263d0*sin(1.08004535633d0 + 148.0787244263d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.01542607086d0*224.3447957019d0*sin(2.5504154317d0 + 224.3447957019d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.06249939655d0*1.4844727083d0*sin(3.56960238469d0 + 1.4844727083d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.14122904825d0*76.2660712756d0*sin(2.82489928705d0 + 76.2660712756d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.14755311401d0*73.297125859d0*sin(1.85423292905d0 + 73.297125859d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.16222255941d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.44388525091d0*149.5631971346d0*sin(0.08884126943d0 + 149.5631971346d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*19.16434475791d0*74.7815985673d0*sin(3.91045677275d0 + 74.7815985673d0 * t)

        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00014991169d0*cos(3.97176856758d0 + 3.9321532631d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00014991169d0*3.9321532631d0*sin(3.97176856758d0 + 3.9321532631d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00017392494d0*cos(4.96098883366d0 + 71.8126531507d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00017392494d0*71.8126531507d0*sin(4.96098883366d0 + 71.8126531507d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.0001942437d0*cos(6.0184191837d0 + 77.7505439839d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.0001942437d0*77.7505439839d0*sin(6.0184191837d0 + 77.7505439839d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00021672326d0*cos(3.3660732442d0 + 151.0476698429d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00021672326d0*151.0476698429d0*sin(3.3660732442d0 + 151.0476698429d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00032419094d0*cos(4.32617246805d0 + 74.7815985673d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00032419094d0*74.7815985673d0*sin(4.32617246805d0 + 74.7815985673d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00036144546d0*cos(5.94859451726d0 + 78.7137518304d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00036144546d0*78.7137518304d0*sin(5.94859451726d0 + 78.7137518304d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00038294306d0*cos(5.01873585224d0 + 70.8494453042d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00038294306d0*70.8494453042d0*sin(5.01873585224d0 + 70.8494453042d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.0004545513d0*cos(0.73292269945d0 + 138.5174968707d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.0004545513d0*138.5174968707d0*sin(0.73292269945d0 + 138.5174968707d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00051366624d0*cos(0.61847245463d0 + 224.3447957019d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00051366624d0*224.3447957019d0*sin(0.61847245463d0 + 224.3447957019d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00081470719d0*cos(5.92275377361d0 + 85.8272988312d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00081470719d0*85.8272988312d0*sin(5.92275377361d0 + 85.8272988312d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00094974903d0*cos(5.07141531968d0 + 63.7358983034d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00094974903d0*63.7358983034d0*sin(5.07141531968d0 + 63.7358983034d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00110133819d0*cos(4.00844673444d0 + 11.0457002639d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00110133819d0*11.0457002639d0*sin(4.00844673444d0 + 11.0457002639d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00229380743d0*cos(0.91089104293d0 + 76.2660712756d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00229380743d0*76.2660712756d0*sin(0.91089104293d0 + 76.2660712756d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00238535521d0*cos(3.76882481679d0 + 73.297125859d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00238535521d0*73.297125859d0*sin(3.76882481679d0 + 73.297125859d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00739195286d0*cos(4.43963987365d0 + 149.5631971346d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00739195286d0*149.5631971346d0*sin(4.43963987365d0 + 149.5631971346d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.02157902502d0*cos(0.0d0 + 0.0d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.02157902502d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        uranus_y_2 = uranus_y_2 +(t**(1))*2*0.00010905147d0*cos(1.45737963668d0 + 149.5631971346d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*0.00010905147d0*149.5631971346d0*sin(1.45737963668d0 + 149.5631971346d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*0.00016588468d0*cos(2.29556740317d0 + 74.7815985673d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*0.00016588468d0*74.7815985673d0*sin(2.29556740317d0 + 74.7815985673d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*0.00034868461d0*cos(3.14159265359d0 + 0.0d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*0.00034868461d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

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

        uranus_z_0 = uranus_z_0 -(t**0)*0.0001253753d0*11.0457002639d0*sin(5.17169051466d0 + 11.0457002639d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00014582183d0*71.8126531507d0*sin(6.14852624696d0 + 71.8126531507d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.0001973341d0*148.0787244263d0*sin(6.04314596336d0 + 148.0787244263d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00020842052d0*224.3447957019d0*sin(1.26054208091d0 + 224.3447957019d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00030733539d0*63.7358983034d0*sin(0.23570745974d0 + 63.7358983034d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00084625392d0*1.4844727083d0*sin(2.26025774942d0 + 1.4844727083d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00190282274d0*76.2660712756d0*sin(1.61654207891d0 + 76.2660712756d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00190873655d0*73.297125859d0*sin(0.57869366179d0 + 73.297125859d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00599290075d0*149.5631971346d0*sin(5.08119534568d0 + 149.5631971346d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.01775471434d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.25876996652d0*74.7815985673d0*sin(2.61861278845d0 + 74.7815985673d0 * t)

        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.00023873149d0*cos(2.73870549601d0 + 149.5631971346d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.00023873149d0*149.5631971346d0*sin(2.73870549601d0 + 149.5631971346d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.00049782349d0*cos(0.0d0 + 0.0d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.00049782349d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.00655887992d0*cos(0.01271946942d0 + 74.7815985673d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.00655887992d0*74.7815985673d0*sin(0.01271946942d0 + 74.7815985673d0 * t)

        uranus_z_2 = uranus_z_2 +(t**(1))*2*0.00014697217d0*cos(1.75149164608d0 + 74.7815985673d0*t)
        uranus_z_2 = uranus_z_2 -(t**2)*0.00014697217d0*74.7815985673d0*sin(1.75149164608d0 + 74.7815985673d0 * t)

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

        venus_x_0 = venus_x_0 -(t**0)*0.00011914665d0*1059.3819301892d0*sin(4.08456666781d0 + 1059.3819301892d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00083791771d0*74.7815985673d0*sin(2.33967946884d0 + 74.7815985673d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00155435209d0*38.1330356378d0*sin(2.1705205205d0 + 38.1330356378d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00244499876d0*20426.571092422d0*sin(4.05566613867d0 + 20426.571092422d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00271754748d0*213.299095438d0*sin(4.01601261142d0 + 213.299095438d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00494908458d0*529.6909650946d0*sin(3.74108234732d0 + 529.6909650946d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00515822267d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.72211104628d0*10213.285546211d0*sin(3.17575836361d0 + 10213.285546211d0 * t)

        venus_x_1 = venus_x_1 +(t**(0))*1*0.0001723495d0*cos(0.92721124604d0 + 20426.571092422d0*t)
        venus_x_1 = venus_x_1 -(t**1)*0.0001723495d0*20426.571092422d0*sin(0.92721124604d0 + 20426.571092422d0 * t)
        venus_x_1 = venus_x_1 +(t**(0))*1*0.0003515871d0*cos(3.14159265359d0 + 0.0d0*t)
        venus_x_1 = venus_x_1 -(t**1)*0.0003515871d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        r = venus_x_1+venus_x_0
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

        venus_y_0 = venus_y_0 -(t**0)*0.00011913202d0*1059.3819301892d0*sin(2.51387064934d0 + 1059.3819301892d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00083754576d0*74.7815985673d0*sin(0.76880143132d0 + 74.7815985673d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00155443844d0*38.1330356378d0*sin(0.59927014146d0 + 38.1330356378d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.0024488419d0*20426.571092422d0*sin(2.48564953999d0 + 20426.571092422d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00272138024d0*213.299095438d0*sin(2.44443638845d0 + 213.299095438d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00494765697d0*529.6909650946d0*sin(2.17048019743d0 + 529.6909650946d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00515636737d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.72324643689d0*10213.285546211d0*sin(1.60573808356d0 + 10213.285546211d0 * t)

        venus_y_1 = venus_y_1 +(t**(0))*1*0.00017282284d0*cos(5.638247359d0 + 20426.571092422d0*t)
        venus_y_1 = venus_y_1 -(t**1)*0.00017282284d0*20426.571092422d0*sin(5.638247359d0 + 20426.571092422d0 * t)
        venus_y_1 = venus_y_1 +(t**(0))*1*0.00039237546d0*cos(0.0d0 + 0.0d0*t)
        venus_y_1 = venus_y_1 -(t**1)*0.00039237546d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        r = venus_y_1+venus_y_0
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

        venus_z_0 = venus_z_0 -(t**0)*0.00011238047d0*529.6909650946d0*sin(0.41541669438d0 + 529.6909650946d0 * t)
        venus_z_0 = venus_z_0 -(t**0)*0.00011808377d0*213.299095438d0*sin(0.46064367724d0 + 213.299095438d0 * t)
        venus_z_0 = venus_z_0 -(t**0)*0.00014501844d0*20426.571092422d0*sin(1.1469691139d0 + 20426.571092422d0 * t)
        venus_z_0 = venus_z_0 -(t**0)*0.00036740999d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        venus_z_0 = venus_z_0 -(t**0)*0.04282979819d0*10213.285546211d0*sin(0.26703856471d0 + 10213.285546211d0 * t)

        venus_z_1 = venus_z_1 +(t**(0))*1*0.00208095894d0*cos(1.88967278742d0 + 10213.285546211d0*t)
        venus_z_1 = venus_z_1 -(t**1)*0.00208095894d0*10213.285546211d0*sin(1.88967278742d0 + 10213.285546211d0 * t)

        r = venus_z_1+venus_z_0
    end function

end module VSOP87E_Micro_Velocities
