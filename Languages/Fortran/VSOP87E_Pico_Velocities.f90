!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87E_Pico_Velocities
    implicit none

    contains
    subroutine VSOP87E_Pico_getEarthV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_x(t) / 365250.0
        result(2)=earth_y(t) / 365250.0
        result(3)=earth_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Pico_getJupiterV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_x(t) / 365250.0
        result(2)=jupiter_y(t) / 365250.0
        result(3)=jupiter_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Pico_getMarsV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_x(t) / 365250.0
        result(2)=mars_y(t) / 365250.0
        result(3)=mars_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Pico_getMercuryV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_x(t) / 365250.0
        result(2)=mercury_y(t) / 365250.0
        result(3)=mercury_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Pico_getNeptuneV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_x(t) / 365250.0
        result(2)=neptune_y(t) / 365250.0
        result(3)=neptune_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Pico_getSaturnV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_x(t) / 365250.0
        result(2)=saturn_y(t) / 365250.0
        result(3)=saturn_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Pico_getSunV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=sun_x(t) / 365250.0
        result(2)=sun_y(t) / 365250.0
        result(3)=sun_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Pico_getUranusV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_x(t) / 365250.0
        result(2)=uranus_y(t) / 365250.0
        result(3)=uranus_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Pico_getVenusV(t, result)
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

        earth_x_0 = earth_x_0 -(t**0)*0.99982624851d0*6283.0758499914d0*sin(1.75348568475d0 + 6283.0758499914d0 * t)

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

        jupiter_x_0 = jupiter_x_0 -(t**0)*0.01474818211d0*536.8045120954d0*sin(3.61736901402d0 + 536.8045120954d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.01499237862d0*522.5774180938d0*sin(0.73175554601d0 + 522.5774180938d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.12581924842d0*1059.3819301892d0*sin(0.94911581432d0 + 1059.3819301892d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.3663326807d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*5.19167797375d0*529.6909650946d0*sin(0.59945079482d0 + 529.6909650946d0 * t)

        r = jupiter_x_0
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

        jupiter_y_0 = jupiter_y_0 -(t**0)*0.01474403395d0*536.8045120954d0*sin(2.04679547637d0 + 536.8045120954d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.01506838468d0*522.5774180938d0*sin(5.43934599781d0 + 522.5774180938d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.09329801081d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.12580850775d0*1059.3819301892d0*sin(5.66160225641d0 + 1059.3819301892d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*5.19024510371d0*529.6909650946d0*sin(5.31203160043d0 + 529.6909650946d0 * t)

        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.01694792137d0*cos(3.14159265359d0 + 0.0d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.01694792137d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

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

        jupiter_z_0 = jupiter_z_0 -(t**0)*0.11811822789d0*529.6909650946d0*sin(3.55844641987d0 + 529.6909650946d0 * t)

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

        mars_x_0 = mars_x_0 -(t**0)*0.07070917372d0*6681.2248533996d0*sin(0.25870338552d0 + 6681.2248533996d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.19473570996d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.51769887405d0*3340.6124266998d0*sin(6.20403346548d0 + 3340.6124266998d0 * t)

        r = mars_x_0
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

        mars_y_0 = mars_y_0 -(t**0)*0.07064547959d0*6681.2248533996d0*sin(4.97051892898d0 + 6681.2248533996d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.08689350637d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.51558927367d0*3340.6124266998d0*sin(4.63212206588d0 + 3340.6124266998d0 * t)

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

        mars_z_0 = mars_z_0 -(t**0)*0.04901205639d0*3340.6124266998d0*sin(3.76712324293d0 + 3340.6124266998d0 * t)

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

        mercury_x_0 = mercury_x_0 -(t**0)*0.02596241714d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.03825746037d0*52175.8062831484d0*sin(1.16485604343d0 + 52175.8062831484d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.37546285495d0*26087.9031415742d0*sin(4.39651506942d0 + 26087.9031415742d0 * t)

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

        mercury_y_0 = mercury_y_0 -(t**0)*0.03854667576d0*52175.8062831484d0*sin(5.88780608961d0 + 52175.8062831484d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.11592262295d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.37953636588d0*26087.9031415742d0*sin(2.83780617821d0 + 26087.9031415742d0 * t)

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

        mercury_z_0 = mercury_z_0 -(t**0)*0.04607664562d0*26087.9031415742d0*sin(1.99295081967d0 + 26087.9031415742d0 * t)

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

        neptune_x_0 = neptune_x_0 -(t**0)*0.02597449604d0*1.4844727083d0*sin(1.99590330725d0 + 1.4844727083d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.1350457827d0*76.2660712756d0*sin(3.50075407055d0 + 76.2660712756d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.14934353052d0*39.6175083461d0*sin(1.08499398649d0 + 39.6175083461d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.15725280871d0*36.6485629295d0*sin(0.11319072402d0 + 36.6485629295d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.27050789973d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*30.05734568801d0*38.1330356378d0*sin(5.3121134003d0 + 38.1330356378d0 * t)

        r = neptune_x_0
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

        neptune_y_0 = neptune_y_0 -(t**0)*0.02584389323d0*1.4844727083d0*sin(0.42549727257d0 + 1.4844727083d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.13505308635d0*76.2660712756d0*sin(1.92949466968d0 + 76.2660712756d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.14935398681d0*39.6175083461d0*sin(5.79694896309d0 + 39.6175083461d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.15705776296d0*36.6485629295d0*sin(4.82539969469d0 + 36.6485629295d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.30171988148d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*30.05900907352d0*38.1330356378d0*sin(3.74086294715d0 + 38.1330356378d0 * t)

        r = neptune_y_0
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

        neptune_z_0 = neptune_z_0 -(t**0)*0.01244825806d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*0.92861252357d0*38.1330356378d0*sin(1.44103930199d0 + 38.1330356378d0 * t)

        r = neptune_z_0
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

        saturn_x_0 = saturn_x_0 -(t**0)*0.01097374519d0*639.897286314d0*sin(5.65753938643d0 + 639.897286314d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.01115372225d0*419.4846438752d0*sin(3.15690865182d0 + 419.4846438752d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.01255113414d0*110.2063212194d0*sin(2.17347170552d0 + 110.2063212194d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.02335961354d0*7.1135470008d0*sin(2.02227905783d0 + 7.1135470008d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.04274172066d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.06622371284d0*220.4126424388d0*sin(0.75094738122d0 + 220.4126424388d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.06758489145d0*206.1855484372d0*sin(4.16767544586d0 + 206.1855484372d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.26404799161d0*426.598190876d0*sin(0.12391580771d0 + 426.598190876d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*9.51366533422d0*213.299095438d0*sin(0.8744138065d0 + 213.299095438d0 * t)

        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.02642347272d0*cos(5.33291950842d0 + 220.4126424388d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.02642347272d0*220.4126424388d0*sin(5.33291950842d0 + 220.4126424388d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.02714141496d0*cos(5.85229546861d0 + 206.1855484372d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.02714141496d0*206.1855484372d0*sin(5.85229546861d0 + 206.1855484372d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.03084144308d0*cos(4.27565898829d0 + 426.598190876d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.03084144308d0*426.598190876d0*sin(4.27565898829d0 + 426.598190876d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.07573807889d0*cos(0.0d0 + 0.0d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.07573807889d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        saturn_y_0 = saturn_y_0 -(t**0)*0.01098442011d0*639.897286314d0*sin(4.08609387384d0 + 639.897286314d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.01183557497d0*419.4846438752d0*sin(1.34637027573d0 + 419.4846438752d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.012455238d0*110.2063212194d0*sin(0.60375781288d0 + 110.2063212194d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.02345226948d0*7.1135470008d0*sin(0.44652393276d0 + 7.1135470008d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.066316792d0*220.4126424388d0*sin(5.46258849076d0 + 220.4126424388d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.06914690347d0*206.1855484372d0*sin(2.55279029588d0 + 206.1855484372d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.26434197609d0*426.598190876d0*sin(4.83528742856d0 + 426.598190876d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.79354119271d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*9.52714696877d0*213.299095438d0*sin(5.58600556072d0 + 213.299095438d0 * t)

        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.02646734779d0*cos(3.76132299914d0 + 220.4126424388d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.02646734779d0*220.4126424388d0*sin(3.76132299914d0 + 220.4126424388d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.02740812928d0*cos(4.2666750646d0 + 206.1855484372d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.02740812928d0*206.1855484372d0*sin(4.2666750646d0 + 206.1855484372d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.03089676414d0*cos(2.70347020059d0 + 426.598190876d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.03089676414d0*426.598190876d0*sin(2.70347020059d0 + 426.598190876d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.05373895252d0*cos(0.0d0 + 0.0d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.05373895252d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        saturn_z_0 = saturn_z_0 -(t**0)*0.01147953788d0*426.598190876d0*sin(2.85128771957d0 + 426.598190876d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.01213097211d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*0.41345140292d0*213.299095438d0*sin(3.60234141893d0 + 213.299095438d0 * t)

        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.0190595894d0*cos(4.94544746619d0 + 213.299095438d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.0190595894d0*213.299095438d0*sin(4.94544746619d0 + 213.299095438d0 * t)

        r = saturn_z_1+saturn_z_0
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

        r = 0
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

        r = 0
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

        uranus_x_0 = uranus_x_0 -(t**0)*0.0144415347d0*148.0787244263d0*sin(2.65117108186d0 + 148.0787244263d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.01542890129d0*224.3447957019d0*sin(4.12122840701d0 + 224.3447957019d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.06200970387d0*1.4844727083d0*sin(5.14043568284d0 + 1.4844727083d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.14129215712d0*76.2660712756d0*sin(4.39576776954d0 + 76.2660712756d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.14667584671d0*73.297125859d0*sin(3.42395875589d0 + 73.297125859d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.44400556159d0*149.5631971346d0*sin(1.65967535182d0 + 149.5631971346d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.32301898121d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*19.17286937362d0*74.7815985673d0*sin(5.48133416758d0 + 74.7815985673d0 * t)

        r = uranus_x_0
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

        uranus_y_0 = uranus_y_0 -(t**0)*0.01442293466d0*148.0787244263d0*sin(1.08004535633d0 + 148.0787244263d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.01542607086d0*224.3447957019d0*sin(2.5504154317d0 + 224.3447957019d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.06249939655d0*1.4844727083d0*sin(3.56960238469d0 + 1.4844727083d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.14122904825d0*76.2660712756d0*sin(2.82489928705d0 + 76.2660712756d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.14755311401d0*73.297125859d0*sin(1.85423292905d0 + 73.297125859d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.16222255941d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.44388525091d0*149.5631971346d0*sin(0.08884126943d0 + 149.5631971346d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*19.16434475791d0*74.7815985673d0*sin(3.91045677275d0 + 74.7815985673d0 * t)

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

        uranus_z_0 = uranus_z_0 -(t**0)*0.01775471434d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*0.25876996652d0*74.7815985673d0*sin(2.61861278845d0 + 74.7815985673d0 * t)

        r = uranus_z_0
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

        r = venus_z_0
    end function

end module VSOP87E_Pico_Velocities
