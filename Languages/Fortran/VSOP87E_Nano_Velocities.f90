!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87E_Nano_Velocities
    implicit none

    contains
    subroutine VSOP87E_Nano_getEarthV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_x(t) / 365250.0
        result(2)=earth_y(t) / 365250.0
        result(3)=earth_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Nano_getJupiterV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_x(t) / 365250.0
        result(2)=jupiter_y(t) / 365250.0
        result(3)=jupiter_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Nano_getMarsV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_x(t) / 365250.0
        result(2)=mars_y(t) / 365250.0
        result(3)=mars_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Nano_getMercuryV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_x(t) / 365250.0
        result(2)=mercury_y(t) / 365250.0
        result(3)=mercury_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Nano_getNeptuneV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_x(t) / 365250.0
        result(2)=neptune_y(t) / 365250.0
        result(3)=neptune_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Nano_getSaturnV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_x(t) / 365250.0
        result(2)=saturn_y(t) / 365250.0
        result(3)=saturn_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Nano_getSunV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=sun_x(t) / 365250.0
        result(2)=sun_y(t) / 365250.0
        result(3)=sun_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Nano_getUranusV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_x(t) / 365250.0
        result(2)=uranus_y(t) / 365250.0
        result(3)=uranus_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Nano_getVenusV(t, result)
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

        earth_x_0 = earth_x_0 -(t**0)*0.0015543422d0*38.1330356378d0*sin(2.17052065758d0 + 38.1330356378d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00271650686d0*213.299095438d0*sin(4.01601440281d0 + 213.299095438d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00493120585d0*529.6909650946d0*sin(3.74115834452d0 + 529.6909650946d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00590518455d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00835254761d0*12566.1516999828d0*sin(1.71034539458d0 + 12566.1516999828d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.99982624851d0*6283.0758499914d0*sin(1.75348568475d0 + 6283.0758499914d0 * t)

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

        earth_y_0 = earth_y_0 -(t**0)*0.00155442849d0*38.1330356378d0*sin(0.59927021065d0 + 38.1330356378d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.00272033033d0*213.299095438d0*sin(2.44443635549d0 + 213.299095438d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.00492966037d0*529.6909650946d0*sin(2.170524584d0 + 529.6909650946d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.00835289774d0*12566.1516999828d0*sin(0.13952879005d0 + 12566.1516999828d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.02408829501d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.99988907017d0*6283.0758499914d0*sin(0.18265890456d0 + 6283.0758499914d0 * t)

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

        earth_z_1 = earth_z_1 +(t**(0))*1*0.0022782175d0*cos(3.41372504278d0 + 6283.0758499914d0*t)
        earth_z_1 = earth_z_1 -(t**1)*0.0022782175d0*6283.0758499914d0*sin(3.41372504278d0 + 6283.0758499914d0 * t)

        r = earth_z_1
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

        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00588595541d0*cos(1.91556289228d0 + 536.8045120954d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00588595541d0*536.8045120954d0*sin(1.91556289228d0 + 536.8045120954d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00599147916d0*cos(2.4299683255d0 + 522.5774180938d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00599147916d0*522.5774180938d0*sin(2.4299683255d0 + 522.5774180938d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00634691138d0*cos(0.10662162351d0 + 1059.3819301892d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00634691138d0*1059.3819301892d0*sin(0.10662162351d0 + 1059.3819301892d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00883685325d0*cos(3.14159265359d0 + 0.0d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00883685325d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00121405454d0*cos(0.21155087534d0 + 536.8045120954d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00121405454d0*536.8045120954d0*sin(0.21155087534d0 + 536.8045120954d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00123746423d0*cos(4.13563340107d0 + 522.5774180938d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00123746423d0*522.5774180938d0*sin(4.13563340107d0 + 522.5774180938d0 * t)

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

        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.005883672d0*cos(0.34491553018d0 + 536.8045120954d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.005883672d0*536.8045120954d0*sin(0.34491553018d0 + 536.8045120954d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.0060058715d0*cos(0.85811137383d0 + 522.5774180938d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.0060058715d0*522.5774180938d0*sin(0.85811137383d0 + 522.5774180938d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00634254247d0*cos(4.81903195356d0 + 1059.3819301892d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00634254247d0*1059.3819301892d0*sin(4.81903195356d0 + 1059.3819301892d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.01694792137d0*cos(3.14159265359d0 + 0.0d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.01694792137d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00121340211d0*cos(4.92398747363d0 + 536.8045120954d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00121340211d0*536.8045120954d0*sin(4.92398747363d0 + 536.8045120954d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00123914193d0*cos(2.56495551373d0 + 522.5774180938d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00123914193d0*522.5774180938d0*sin(2.56495551373d0 + 522.5774180938d0 * t)

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

        jupiter_z_0 = jupiter_z_0 -(t**0)*0.00286288759d0*1059.3819301892d0*sin(3.90812239092d0 + 1059.3819301892d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.00857879296d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.11811822789d0*529.6909650946d0*sin(3.55844641987d0 + 529.6909650946d0 * t)

        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*0.00406683941d0*cos(1.52699356726d0 + 529.6909650946d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*0.00406683941d0*529.6909650946d0*sin(1.52699356726d0 + 529.6909650946d0 * t)

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

        mars_x_0 = mars_x_0 -(t**0)*0.00155429009d0*38.1330356378d0*sin(2.17051900894d0 + 38.1330356378d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00271094292d0*213.299095438d0*sin(4.01586959956d0 + 213.299095438d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00482151285d0*529.6909650946d0*sin(3.74021439144d0 + 529.6909650946d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00494196754d0*10021.8372800994d0*sin(0.59669127752d0 + 10021.8372800994d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.07070917372d0*6681.2248533996d0*sin(0.25870338552d0 + 6681.2248533996d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.19473570996d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.51769887405d0*3340.6124266998d0*sin(6.20403346548d0 + 3340.6124266998d0 * t)

        mars_x_1 = mars_x_1 +(t**(0))*1*0.00552437771d0*cos(5.09565872891d0 + 6681.2248533996d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00552437771d0*6681.2248533996d0*sin(5.09565872891d0 + 6681.2248533996d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*0.00862737448d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00862737448d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

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

        mars_y_0 = mars_y_0 -(t**0)*0.00155437832d0*38.1330356378d0*sin(0.59926749768d0 + 38.1330356378d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00271492455d0*213.299095438d0*sin(2.44409624683d0 + 213.299095438d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00482218424d0*529.6909650946d0*sin(2.16962356915d0 + 529.6909650946d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00493872689d0*10021.8372800994d0*sin(5.30877806678d0 + 10021.8372800994d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.07064547959d0*6681.2248533996d0*sin(4.97051892898d0 + 6681.2248533996d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.08689350637d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.51558927367d0*3340.6124266998d0*sin(4.63212206588d0 + 3340.6124266998d0 * t)

        mars_y_1 = mars_y_1 +(t**(0))*1*0.00551063576d0*cos(3.52128320402d0 + 6681.2248533996d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.00551063576d0*6681.2248533996d0*sin(3.52128320402d0 + 6681.2248533996d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*0.01427318093d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.01427318093d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

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

        mars_z_0 = mars_z_0 -(t**0)*0.00228333831d0*6681.2248533996d0*sin(4.10544022266d0 + 6681.2248533996d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*0.00659516885d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*0.04901205639d0*3340.6124266998d0*sin(3.76712324293d0 + 3340.6124266998d0 * t)

        mars_z_1 = mars_z_1 +(t**(0))*1*0.00331842851d0*cos(6.05027773492d0 + 3340.6124266998d0*t)
        mars_z_1 = mars_z_1 -(t**1)*0.00331842851d0*3340.6124266998d0*sin(6.05027773492d0 + 3340.6124266998d0 * t)

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

        mercury_x_0 = mercury_x_0 -(t**0)*0.00105716677d0*104351.61256629678d0*sin(0.98379033182d0 + 104351.61256629678d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.00155435621d0*38.1330356378d0*sin(2.17052060921d0 + 38.1330356378d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.0027179749d0*213.299095438d0*sin(4.01600769847d0 + 213.299095438d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.00495586029d0*529.6909650946d0*sin(3.74115422358d0 + 529.6909650946d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.00584261236d0*78263.70942472259d0*sin(4.21599394757d0 + 78263.70942472259d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.02596241714d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.03825746037d0*52175.8062831484d0*sin(1.16485604343d0 + 52175.8062831484d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.37546285495d0*26087.9031415742d0*sin(4.39651506942d0 + 26087.9031415742d0 * t)

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

        mercury_y_0 = mercury_y_0 -(t**0)*0.00106235475d0*104351.61256629678d0*sin(5.70550616735d0 + 104351.61256629678d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00155444251d0*38.1330356378d0*sin(0.59927014783d0 + 38.1330356378d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00272177927d0*213.299095438d0*sin(2.44442843667d0 + 213.299095438d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00495452148d0*529.6909650946d0*sin(2.17050902176d0 + 529.6909650946d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00587711171d0*78263.70942472259d0*sin(2.65498896201d0 + 78263.70942472259d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.03854667576d0*52175.8062831484d0*sin(5.88780608961d0 + 52175.8062831484d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.11592262295d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.37953636588d0*26087.9031415742d0*sin(2.83780617821d0 + 26087.9031415742d0 * t)

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

        mercury_z_0 = mercury_z_0 -(t**0)*0.0046917154d0*52175.8062831484d0*sin(5.04215742764d0 + 52175.8062831484d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.00709887021d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.04607664562d0*26087.9031415742d0*sin(1.99295081967d0 + 26087.9031415742d0 * t)

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

        saturn_z_0 = saturn_z_0 -(t**0)*0.00286852189d0*220.4126424388d0*sin(3.48073528206d0 + 220.4126424388d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.00329186544d0*206.1855484372d0*sin(0.57121482436d0 + 206.1855484372d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.01147953788d0*426.598190876d0*sin(2.85128771957d0 + 426.598190876d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.01213097211d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.41345140292d0*213.299095438d0*sin(3.60234141893d0 + 213.299095438d0 * t)

        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.00101437388d0*cos(1.79095832223d0 + 220.4126424388d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.00101437388d0*220.4126424388d0*sin(1.79095832223d0 + 220.4126424388d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.0013022499d0*cos(2.26141028606d0 + 206.1855484372d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.0013022499d0*206.1855484372d0*sin(2.26141028606d0 + 206.1855484372d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.00528167867d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.00528167867d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.0190595894d0*cos(4.94544746619d0 + 213.299095438d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.0190595894d0*213.299095438d0*sin(4.94544746619d0 + 213.299095438d0 * t)

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

        r = 0
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

        r = uranus_x_1+uranus_x_0
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

        r = uranus_y_1+uranus_y_0
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

        uranus_z_0 = uranus_z_0 -(t**0)*0.00190282274d0*76.2660712756d0*sin(1.61654207891d0 + 76.2660712756d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00190873655d0*73.297125859d0*sin(0.57869366179d0 + 73.297125859d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.00599290075d0*149.5631971346d0*sin(5.08119534568d0 + 149.5631971346d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.01775471434d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.25876996652d0*74.7815985673d0*sin(2.61861278845d0 + 74.7815985673d0 * t)

        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.00655887992d0*cos(0.01271946942d0 + 74.7815985673d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.00655887992d0*74.7815985673d0*sin(0.01271946942d0 + 74.7815985673d0 * t)

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

        venus_x_0 = venus_x_0 -(t**0)*0.00155435209d0*38.1330356378d0*sin(2.1705205205d0 + 38.1330356378d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00244499876d0*20426.571092422d0*sin(4.05566613867d0 + 20426.571092422d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00271754748d0*213.299095438d0*sin(4.01601261142d0 + 213.299095438d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00494908458d0*529.6909650946d0*sin(3.74108234732d0 + 529.6909650946d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00515822267d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.72211104628d0*10213.285546211d0*sin(3.17575836361d0 + 10213.285546211d0 * t)

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

        venus_y_0 = venus_y_0 -(t**0)*0.00155443844d0*38.1330356378d0*sin(0.59927014146d0 + 38.1330356378d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.0024488419d0*20426.571092422d0*sin(2.48564953999d0 + 20426.571092422d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00272138024d0*213.299095438d0*sin(2.44443638845d0 + 213.299095438d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00494765697d0*529.6909650946d0*sin(2.17048019743d0 + 529.6909650946d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00515636737d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.72324643689d0*10213.285546211d0*sin(1.60573808356d0 + 10213.285546211d0 * t)

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

        venus_z_0 = venus_z_0 -(t**0)*0.04282979819d0*10213.285546211d0*sin(0.26703856471d0 + 10213.285546211d0 * t)

        venus_z_1 = venus_z_1 +(t**(0))*1*0.00208095894d0*cos(1.88967278742d0 + 10213.285546211d0*t)
        venus_z_1 = venus_z_1 -(t**1)*0.00208095894d0*10213.285546211d0*sin(1.88967278742d0 + 10213.285546211d0 * t)

        r = venus_z_1+venus_z_0
    end function

end module VSOP87E_Nano_Velocities
