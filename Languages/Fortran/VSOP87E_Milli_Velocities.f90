!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87E_Milli_Velocities
    implicit none

    contains
    subroutine VSOP87E_Milli_getEarthV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_x(t) / 365250.0
        result(2)=earth_y(t) / 365250.0
        result(3)=earth_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Milli_getJupiterV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_x(t) / 365250.0
        result(2)=jupiter_y(t) / 365250.0
        result(3)=jupiter_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Milli_getMarsV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_x(t) / 365250.0
        result(2)=mars_y(t) / 365250.0
        result(3)=mars_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Milli_getMercuryV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_x(t) / 365250.0
        result(2)=mercury_y(t) / 365250.0
        result(3)=mercury_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Milli_getNeptuneV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_x(t) / 365250.0
        result(2)=neptune_y(t) / 365250.0
        result(3)=neptune_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Milli_getSaturnV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_x(t) / 365250.0
        result(2)=saturn_y(t) / 365250.0
        result(3)=saturn_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Milli_getSunV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=sun_x(t) / 365250.0
        result(2)=sun_y(t) / 365250.0
        result(3)=sun_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Milli_getUranusV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_x(t) / 365250.0
        result(2)=uranus_y(t) / 365250.0
        result(3)=uranus_z(t) / 365250.0
    end subroutine

    subroutine VSOP87E_Milli_getVenusV(t, result)
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

        earth_x_0 = earth_x_0 -(t**0)*1.091006d-05*5223.6939198022d0*sin(3.68984782465d0 + 5223.6939198022d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*1.186109d-05*76.2660712756d0*sin(0.77647243459d0 + 76.2660712756d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*1.399119d-05*536.8045120954d0*sin(0.47619416596d0 + 536.8045120954d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*1.427281d-05*522.5774180938d0*sin(3.8690127711d0 + 522.5774180938d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*1.445242d-05*2352.8661537718d0*sin(3.4727278376d0 + 2352.8661537718d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*1.707882d-05*6286.5989683404d0*sin(6.15315547484d0 + 6286.5989683404d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*1.709103d-05*6279.5527316424d0*sin(0.49540223397d0 + 6279.5527316424d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*1.887816d-05*220.4126424388d0*sin(3.89254735986d0 + 220.4126424388d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*1.940284d-05*206.1855484372d0*sin(1.01236647756d0 + 206.1855484372d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*1.941229d-05*149.5631971346d0*sin(4.79891913828d0 + 149.5631971346d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*2.137256d-05*1577.3435424478d0*sin(1.09235189672d0 + 1577.3435424478d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*3.110838d-05*83996.84731811189d0*sin(0.66875185215d0 + 83996.84731811189d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*7.614486d-05*426.598190876d0*sin(3.2405253591d0 + 426.598190876d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00010466596d0*18849.2275499742d0*sin(1.66722645223d0 + 18849.2275499742d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00011821467d0*1059.3819301892d0*sin(4.04599151293d0 + 1059.3819301892d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00083789104d0*74.7815985673d0*sin(2.33967726393d0 + 74.7815985673d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.0015543422d0*38.1330356378d0*sin(2.17052065758d0 + 38.1330356378d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00271650686d0*213.299095438d0*sin(4.01601440281d0 + 213.299095438d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00493120585d0*529.6909650946d0*sin(3.74115834452d0 + 529.6909650946d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00590518455d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00835254761d0*12566.1516999828d0*sin(1.71034539458d0 + 12566.1516999828d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.99982624851d0*6283.0758499914d0*sin(1.75348568475d0 + 6283.0758499914d0 * t)

        earth_x_1 = earth_x_1 +(t**(0))*1*1.068627d-05*cos(2.01554176551d0 + 6283.0758499914d0*t)
        earth_x_1 = earth_x_1 -(t**1)*1.068627d-05*6283.0758499914d0*sin(2.01554176551d0 + 6283.0758499914d0 * t)
        earth_x_1 = earth_x_1 +(t**(0))*1*1.290723d-05*cos(5.95943124583d0 + 18849.2275499742d0*t)
        earth_x_1 = earth_x_1 -(t**1)*1.290723d-05*18849.2275499742d0*sin(5.95943124583d0 + 18849.2275499742d0 * t)
        earth_x_1 = earth_x_1 +(t**(0))*1*0.000515d0*cos(6.00266267204d0 + 12566.1516999828d0*t)
        earth_x_1 = earth_x_1 -(t**1)*0.000515d0*12566.1516999828d0*sin(6.00266267204d0 + 12566.1516999828d0 * t)
        earth_x_1 = earth_x_1 +(t**(0))*1*0.00122106982d0*cos(0.0d0 + 0.0d0*t)
        earth_x_1 = earth_x_1 -(t**1)*0.00122106982d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        earth_x_2 = earth_x_2 +(t**(1))*2*2.175689d-05*cos(4.39999849572d0 + 12566.1516999828d0*t)
        earth_x_2 = earth_x_2 -(t**2)*2.175689d-05*12566.1516999828d0*sin(4.39999849572d0 + 12566.1516999828d0 * t)
        earth_x_2 = earth_x_2 +(t**(1))*2*4.098432d-05*cos(3.14159265359d0 + 0.0d0*t)
        earth_x_2 = earth_x_2 -(t**2)*4.098432d-05*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

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

        earth_y_0 = earth_y_0 -(t**0)*1.135092d-05*5223.6939198022d0*sin(5.2731341522d0 + 5223.6939198022d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*1.185789d-05*76.2660712756d0*sin(5.4884596691d0 + 76.2660712756d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*1.398661d-05*536.8045120954d0*sin(5.18874483163d0 + 536.8045120954d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*1.429933d-05*522.5774180938d0*sin(2.30184513257d0 + 522.5774180938d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*1.440265d-05*2352.8661537718d0*sin(1.90068164664d0 + 2352.8661537718d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*1.707987d-05*6286.5989683404d0*sin(4.58232858766d0 + 6286.5989683404d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*1.709219d-05*6279.5527316424d0*sin(5.20780401071d0 + 6279.5527316424d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*1.890481d-05*220.4126424388d0*sin(2.32098683748d0 + 220.4126424388d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*1.940704d-05*149.5631971346d0*sin(3.22808267633d0 + 149.5631971346d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*1.962913d-05*206.1855484372d0*sin(5.70756734336d0 + 206.1855484372d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*2.147473d-05*1577.3435424478d0*sin(2.66253538905d0 + 1577.3435424478d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*3.110838d-05*83996.84731811189d0*sin(5.38114091484d0 + 83996.84731811189d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*7.623032d-05*426.598190876d0*sin(1.66896617535d0 + 426.598190876d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.00010466933d0*18849.2275499742d0*sin(0.09641690558d0 + 18849.2275499742d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.00011819755d0*1059.3819301892d0*sin(2.47524448851d0 + 1059.3819301892d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.0008375191d0*74.7815985673d0*sin(0.76880010707d0 + 74.7815985673d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.00155442849d0*38.1330356378d0*sin(0.59927021065d0 + 38.1330356378d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.00272033033d0*213.299095438d0*sin(2.44443635549d0 + 213.299095438d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.00492966037d0*529.6909650946d0*sin(2.170524584d0 + 529.6909650946d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.00835289774d0*12566.1516999828d0*sin(0.13952879005d0 + 12566.1516999828d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.02408829501d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.99988907017d0*6283.0758499914d0*sin(0.18265890456d0 + 6283.0758499914d0 * t)

        earth_y_1 = earth_y_1 +(t**(0))*1*1.290796d-05*cos(4.3886054854d0 + 18849.2275499742d0*t)
        earth_y_1 = earth_y_1 -(t**1)*1.290796d-05*18849.2275499742d0*sin(4.3886054854d0 + 18849.2275499742d0 * t)
        earth_y_1 = earth_y_1 +(t**(0))*1*0.00051506453d0*cos(4.43180499286d0 + 12566.1516999828d0*t)
        earth_y_1 = earth_y_1 -(t**1)*0.00051506453d0*12566.1516999828d0*sin(4.43180499286d0 + 12566.1516999828d0 * t)
        earth_y_1 = earth_y_1 +(t**(0))*1*0.00093052441d0*cos(0.0d0 + 0.0d0*t)
        earth_y_1 = earth_y_1 -(t**1)*0.00093052441d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        earth_y_2 = earth_y_2 +(t**(1))*2*1.020487d-05*cos(4.63746718598d0 + 6283.0758499914d0*t)
        earth_y_2 = earth_y_2 -(t**2)*1.020487d-05*6283.0758499914d0*sin(4.63746718598d0 + 6283.0758499914d0 * t)
        earth_y_2 = earth_y_2 +(t**(1))*2*2.178009d-05*cos(2.82957544235d0 + 12566.1516999828d0*t)
        earth_y_2 = earth_y_2 -(t**2)*2.178009d-05*12566.1516999828d0*sin(2.82957544235d0 + 12566.1516999828d0 * t)
        earth_y_2 = earth_y_2 +(t**(1))*2*5.024394d-05*cos(0.0d0 + 0.0d0*t)
        earth_y_2 = earth_y_2 -(t**2)*5.024394d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        earth_z_0 = earth_z_0 -(t**0)*1.131046d-05*74.7815985673d0*sin(5.75877139035d0 + 74.7815985673d0 * t)
        earth_z_0 = earth_z_0 -(t**0)*1.153742d-05*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        earth_z_0 = earth_z_0 -(t**0)*4.802048d-05*38.1330356378d0*sin(4.5826472337d0 + 38.1330356378d0 * t)
        earth_z_0 = earth_z_0 -(t**0)*0.00011270511d0*529.6909650946d0*sin(0.41685732455d0 + 529.6909650946d0 * t)
        earth_z_0 = earth_z_0 -(t**0)*0.00011810174d0*213.299095438d0*sin(0.46078312048d0 + 213.299095438d0 * t)

        earth_z_1 = earth_z_1 +(t**(0))*1*1.903177d-05*cos(3.37061270964d0 + 12566.1516999828d0*t)
        earth_z_1 = earth_z_1 -(t**1)*1.903177d-05*12566.1516999828d0*sin(3.37061270964d0 + 12566.1516999828d0 * t)
        earth_z_1 = earth_z_1 +(t**(0))*1*5.56268d-05*cos(0.0d0 + 0.0d0*t)
        earth_z_1 = earth_z_1 -(t**1)*5.56268d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)
        earth_z_1 = earth_z_1 +(t**(0))*1*0.0022782175d0*cos(3.41372504278d0 + 6283.0758499914d0*t)
        earth_z_1 = earth_z_1 -(t**1)*0.0022782175d0*6283.0758499914d0*sin(3.41372504278d0 + 6283.0758499914d0 * t)

        earth_z_2 = earth_z_2 +(t**(1))*2*9.721959d-05*cos(5.15233725915d0 + 6283.0758499914d0*t)
        earth_z_2 = earth_z_2 -(t**2)*9.721959d-05*6283.0758499914d0*sin(5.15233725915d0 + 6283.0758499914d0 * t)

        r = earth_z_2+earth_z_1+earth_z_0
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

        jupiter_x_0 = jupiter_x_0 -(t**0)*1.032537d-05*1795.258443721d0*sin(0.08907922138d0 + 1795.258443721d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*1.067098d-05*149.5631971346d0*sin(5.07387579789d0 + 149.5631971346d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*1.079612d-05*532.1386456494d0*sin(3.20528367741d0 + 532.1386456494d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*1.087247d-05*527.2432845398d0*sin(1.13406114807d0 + 527.2432845398d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*1.360798d-05*1368.660252845d0*sin(1.34765113779d0 + 1368.660252845d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*1.440172d-05*853.196381752d0*sin(5.76918543554d0 + 853.196381752d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*1.516494d-05*76.2660712756d0*sin(0.81626038026d0 + 76.2660712756d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*1.630097d-05*942.062061969d0*sin(4.41892602527d0 + 942.062061969d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*1.663482d-05*838.9692877504d0*sin(1.94059445684d0 + 838.9692877504d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*1.868284d-05*1155.361157407d0*sin(0.52057031963d0 + 1155.361157407d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*1.936427d-05*625.6701923124d0*sin(5.91866009507d0 + 625.6701923124d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*2.384137d-05*1045.1548361876d0*sin(5.96358219365d0 + 1045.1548361876d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*2.488143d-05*433.7117378768d0*sin(4.20187706224d0 + 433.7117378768d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*2.672563d-05*1169.5882514086d0*sin(3.18723991996d0 + 1169.5882514086d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*2.857648d-05*117.3198682202d0*sin(6.00878402632d0 + 117.3198682202d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*2.951688d-05*309.2783226558d0*sin(3.8599585432d0 + 309.2783226558d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*3.936106d-05*1596.1864422846d0*sin(4.30892684064d0 + 1596.1864422846d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*4.327077d-05*220.4126424388d0*sin(3.89002424313d0 + 220.4126424388d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*4.563043d-05*95.9792272178d0*sin(2.15085906522d0 + 95.9792272178d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*4.618326d-05*1375.7737998458d0*sin(3.75817737683d0 + 1375.7737998458d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*5.213514d-05*532.8723588323d0*sin(3.23235134289d0 + 532.8723588323d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*5.313717d-05*526.5095713569d0*sin(1.10494056939d0 + 526.5095713569d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*5.784803d-05*14.2270940016d0*sin(5.03723192214d0 + 14.2270940016d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*7.420564d-05*956.2891559706d0*sin(5.9837861413d0 + 956.2891559706d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*7.509247d-05*1265.5674786264d0*sin(0.92899131174d0 + 1265.5674786264d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*7.648488d-05*1581.959348283d0*sin(0.14179788518d0 + 1581.959348283d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*8.215382d-05*1478.8665740644d0*sin(5.56679457251d0 + 1478.8665740644d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*8.644882d-05*639.897286314d0*sin(3.44286036345d0 + 639.897286314d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*8.685802d-05*1692.1656695024d0*sin(0.38261930513d0 + 1692.1656695024d0 * t)
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

        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*1.042283d-05*cos(2.52301939233d0 + 433.7117378768d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*1.042283d-05*433.7117378768d0*sin(2.52301939233d0 + 433.7117378768d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*1.054423d-05*cos(2.50841911774d0 + 1265.5674786264d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*1.054423d-05*1265.5674786264d0*sin(2.50841911774d0 + 1265.5674786264d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*1.532798d-05*cos(4.3136930682d0 + 117.3198682202d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*1.532798d-05*117.3198682202d0*sin(4.3136930682d0 + 117.3198682202d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*1.572591d-05*cos(1.43756120627d0 + 639.897286314d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*1.572591d-05*639.897286314d0*sin(1.43756120627d0 + 639.897286314d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*1.630801d-05*cos(1.41506089245d0 + 1045.1548361876d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*1.630801d-05*1045.1548361876d0*sin(1.41506089245d0 + 1045.1548361876d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*1.735409d-05*cos(2.18944094588d0 + 220.4126424388d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*1.735409d-05*220.4126424388d0*sin(2.18944094588d0 + 220.4126424388d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*1.770816d-05*cos(0.72643844818d0 + 742.9900605326d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*1.770816d-05*742.9900605326d0*sin(0.72643844818d0 + 742.9900605326d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*1.810452d-05*cos(3.84597080211d0 + 95.9792272178d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*1.810452d-05*95.9792272178d0*sin(3.84597080211d0 + 95.9792272178d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*1.85191d-05*cos(2.76941008977d0 + 1596.1864422846d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*1.85191d-05*1596.1864422846d0*sin(2.76941008977d0 + 1596.1864422846d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*1.902258d-05*cos(1.85937281972d0 + 1581.959348283d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*1.902258d-05*1581.959348283d0*sin(1.85937281972d0 + 1581.959348283d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*1.975662d-05*cos(5.08913465136d0 + 956.2891559706d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*1.975662d-05*956.2891559706d0*sin(5.08913465136d0 + 956.2891559706d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*2.416946d-05*cos(3.60563658924d0 + 316.3918696566d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*2.416946d-05*316.3918696566d0*sin(3.60563658924d0 + 316.3918696566d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*2.799836d-05*cos(4.89523847324d0 + 103.0927742186d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*2.799836d-05*103.0927742186d0*sin(4.89523847324d0 + 103.0927742186d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*2.984688d-05*cos(2.59503648367d0 + 419.4846438752d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*2.984688d-05*419.4846438752d0*sin(2.59503648367d0 + 419.4846438752d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*2.987393d-05*cos(0.80692150498d0 + 2118.7638603784d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*2.987393d-05*2118.7638603784d0*sin(0.80692150498d0 + 2118.7638603784d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*2.99901d-05*cos(2.68376980775d0 + 533.6231183577d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*2.99901d-05*533.6231183577d0*sin(2.68376980775d0 + 533.6231183577d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*3.041505d-05*cos(1.65428068117d0 + 525.7588118315d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*3.041505d-05*525.7588118315d0*sin(1.65428068117d0 + 525.7588118315d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*3.330163d-05*cos(1.43691666191d0 + 532.8723588323d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*3.330163d-05*532.8723588323d0*sin(1.43691666191d0 + 532.8723588323d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*3.39592d-05*cos(2.90091460302d0 + 526.5095713569d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*3.39592d-05*526.5095713569d0*sin(2.90091460302d0 + 526.5095713569d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*3.878456d-05*cos(3.33647235d0 + 14.2270940016d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*3.878456d-05*14.2270940016d0*sin(3.33647235d0 + 14.2270940016d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*3.998647d-05*cos(4.5758623664d0 + 206.1855484372d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*3.998647d-05*206.1855484372d0*sin(4.5758623664d0 + 206.1855484372d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*4.389657d-05*cos(1.14770871584d0 + 735.8765135318d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*4.389657d-05*735.8765135318d0*sin(1.14770871584d0 + 735.8765135318d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*7.139253d-05*cos(3.17225778048d0 + 323.5054166574d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*7.139253d-05*323.5054166574d0*sin(3.17225778048d0 + 323.5054166574d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*8.078237d-05*cos(6.16137042548d0 + 949.1756089698d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*8.078237d-05*949.1756089698d0*sin(6.16137042548d0 + 949.1756089698d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*9.117208d-05*cos(1.78082300783d0 + 543.9180590962d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*9.117208d-05*543.9180590962d0*sin(1.78082300783d0 + 543.9180590962d0 * t)
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

        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*1.070085d-05*cos(2.35010899461d0 + 426.598190876d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*1.070085d-05*426.598190876d0*sin(2.35010899461d0 + 426.598190876d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*1.32436d-05*cos(1.63141799079d0 + 14.2270940016d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*1.32436d-05*14.2270940016d0*sin(1.63141799079d0 + 14.2270940016d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*1.699253d-05*cos(2.44298781002d0 + 110.2063212194d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*1.699253d-05*110.2063212194d0*sin(2.44298781002d0 + 110.2063212194d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*3.702934d-05*cos(0.07769815851d0 + 543.9180590962d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*3.702934d-05*543.9180590962d0*sin(0.07769815851d0 + 543.9180590962d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*4.035686d-05*cos(5.58417734606d0 + 1589.0728952838d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*4.035686d-05*1589.0728952838d0*sin(5.58417734606d0 + 1589.0728952838d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*5.237617d-05*cos(4.27483099739d0 + 515.463871093d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*5.237617d-05*515.463871093d0*sin(4.27483099739d0 + 515.463871093d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*5.705577d-05*cos(3.63172956803d0 + 1052.2683831884d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*5.705577d-05*1052.2683831884d0*sin(3.63172956803d0 + 1052.2683831884d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*7.04479d-05*cos(0.74164610282d0 + 1066.49547719d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*7.04479d-05*1066.49547719d0*sin(0.74164610282d0 + 1066.49547719d0 * t)
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

        jupiter_x_3 = jupiter_x_3 +(t**(2))*3*1.013242d-05*cos(4.64773742759d0 + 543.9180590962d0*t)
        jupiter_x_3 = jupiter_x_3 -(t**3)*1.013242d-05*543.9180590962d0*sin(4.64773742759d0 + 543.9180590962d0 * t)
        jupiter_x_3 = jupiter_x_3 +(t**(2))*3*1.074445d-05*cos(6.22324523848d0 + 7.1135470008d0*t)
        jupiter_x_3 = jupiter_x_3 -(t**3)*1.074445d-05*7.1135470008d0*sin(6.22324523848d0 + 7.1135470008d0 * t)
        jupiter_x_3 = jupiter_x_3 +(t**(2))*3*1.079157d-05*cos(5.42531629895d0 + 1066.49547719d0*t)
        jupiter_x_3 = jupiter_x_3 -(t**3)*1.079157d-05*1066.49547719d0*sin(5.42531629895d0 + 1066.49547719d0 * t)
        jupiter_x_3 = jupiter_x_3 +(t**(2))*3*1.434074d-05*cos(5.98502536112d0 + 515.463871093d0*t)
        jupiter_x_3 = jupiter_x_3 -(t**3)*1.434074d-05*515.463871093d0*sin(5.98502536112d0 + 515.463871093d0 * t)
        jupiter_x_3 = jupiter_x_3 +(t**(2))*3*1.786132d-05*cos(3.56550369113d0 + 1059.3819301892d0*t)
        jupiter_x_3 = jupiter_x_3 -(t**3)*1.786132d-05*1059.3819301892d0*sin(3.56550369113d0 + 1059.3819301892d0 * t)
        jupiter_x_3 = jupiter_x_3 +(t**(2))*3*3.350618d-05*cos(0.0d0 + 0.0d0*t)
        jupiter_x_3 = jupiter_x_3 -(t**3)*3.350618d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)
        jupiter_x_3 = jupiter_x_3 +(t**(2))*3*0.00016697614d0*cos(4.77458774773d0 + 536.8045120954d0*t)
        jupiter_x_3 = jupiter_x_3 -(t**3)*0.00016697614d0*536.8045120954d0*sin(4.77458774773d0 + 536.8045120954d0 * t)
        jupiter_x_3 = jupiter_x_3 +(t**(2))*3*0.00017055031d0*cos(5.86133054086d0 + 522.5774180938d0*t)
        jupiter_x_3 = jupiter_x_3 -(t**3)*0.00017055031d0*522.5774180938d0*sin(5.86133054086d0 + 522.5774180938d0 * t)

        jupiter_x_4 = jupiter_x_4 +(t**(3))*4*1.716208d-05*cos(3.03331509801d0 + 536.8045120954d0*t)
        jupiter_x_4 = jupiter_x_4 -(t**4)*1.716208d-05*536.8045120954d0*sin(3.03331509801d0 + 536.8045120954d0 * t)
        jupiter_x_4 = jupiter_x_4 +(t**(3))*4*1.76072d-05*cos(1.32863064568d0 + 522.5774180938d0*t)
        jupiter_x_4 = jupiter_x_4 -(t**4)*1.76072d-05*522.5774180938d0*sin(1.32863064568d0 + 522.5774180938d0 * t)

        r = jupiter_x_4+jupiter_x_3+jupiter_x_2+jupiter_x_1+jupiter_x_0
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

        jupiter_y_0 = jupiter_y_0 -(t**0)*1.001392d-05*1272.6810256272d0*sin(1.50933910971d0 + 1272.6810256272d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*1.04924d-05*1795.258443721d0*sin(4.83710121026d0 + 1795.258443721d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*1.068309d-05*149.5631971346d0*sin(3.50234523972d0 + 149.5631971346d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*1.078483d-05*532.1386456494d0*sin(1.63448489409d0 + 532.1386456494d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*1.086691d-05*527.2432845398d0*sin(5.84673086007d0 + 527.2432845398d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*1.430793d-05*942.062061969d0*sin(3.24847402298d0 + 942.062061969d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*1.446641d-05*853.196381752d0*sin(4.1956324899d0 + 853.196381752d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*1.515123d-05*76.2660712756d0*sin(5.52831163402d0 + 76.2660712756d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*2.253179d-05*838.9692877504d0*sin(4.2843830951d0 + 838.9692877504d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*2.360832d-05*1155.361157407d0*sin(4.60394012299d0 + 1155.361157407d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*2.407297d-05*1045.1548361876d0*sin(4.3319316302d0 + 1045.1548361876d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*2.493551d-05*433.7117378768d0*sin(2.63229075589d0 + 433.7117378768d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*2.669715d-05*1169.5882514086d0*sin(1.6185860291d0 + 1169.5882514086d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*2.855098d-05*117.3198682202d0*sin(4.44236932266d0 + 117.3198682202d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*3.143497d-05*309.2783226558d0*sin(5.59546424392d0 + 309.2783226558d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*3.233079d-05*625.6701923124d0*sin(4.76624918569d0 + 625.6701923124d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*3.936117d-05*1596.1864422846d0*sin(2.73830533792d0 + 1596.1864422846d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*4.315104d-05*220.4126424388d0*sin(2.32571714706d0 + 220.4126424388d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*4.523994d-05*1375.7737998458d0*sin(2.18377830705d0 + 1375.7737998458d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*4.560167d-05*95.9792272178d0*sin(3.71314128422d0 + 95.9792272178d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*5.212049d-05*532.8723588323d0*sin(1.66178652182d0 + 532.8723588323d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*5.317804d-05*526.5095713569d0*sin(5.81740415262d0 + 526.5095713569d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*5.779694d-05*14.2270940016d0*sin(3.46910255172d0 + 14.2270940016d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*7.407157d-05*956.2891559706d0*sin(4.41139821796d0 + 956.2891559706d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*7.612244d-05*1265.5674786264d0*sin(5.59551514884d0 + 1265.5674786264d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*7.77181d-05*1581.959348283d0*sin(4.83345042174d0 + 1581.959348283d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*8.15525d-05*1478.8665740644d0*sin(4.00303466226d0 + 1478.8665740644d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*8.616295d-05*639.897286314d0*sin(1.88432673589d0 + 639.897286314d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*8.724471d-05*1692.1656695024d0*sin(5.09607077968d0 + 1692.1656695024d0 * t)
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

        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*1.034932d-05*cos(0.98276277734d0 + 1265.5674786264d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*1.034932d-05*1265.5674786264d0*sin(0.98276277734d0 + 1265.5674786264d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*1.046522d-05*cos(0.95429910486d0 + 433.7117378768d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*1.046522d-05*433.7117378768d0*sin(0.95429910486d0 + 433.7117378768d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*1.259066d-05*cos(0.07170674498d0 + 625.6701923124d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*1.259066d-05*625.6701923124d0*sin(0.07170674498d0 + 625.6701923124d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*1.530303d-05*cos(2.74905823262d0 + 117.3198682202d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*1.530303d-05*117.3198682202d0*sin(2.74905823262d0 + 117.3198682202d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*1.54833d-05*cos(6.1741748383d0 + 639.897286314d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*1.54833d-05*639.897286314d0*sin(6.1741748383d0 + 639.897286314d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*1.635354d-05*cos(6.09268929177d0 + 1045.1548361876d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*1.635354d-05*1045.1548361876d0*sin(6.09268929177d0 + 1045.1548361876d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*1.727332d-05*cos(0.63018404294d0 + 220.4126424388d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*1.727332d-05*220.4126424388d0*sin(0.63018404294d0 + 220.4126424388d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*1.805775d-05*cos(5.40302012288d0 + 95.9792272178d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*1.805775d-05*95.9792272178d0*sin(5.40302012288d0 + 95.9792272178d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*1.852299d-05*cos(1.19908749676d0 + 1596.1864422846d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*1.852299d-05*1596.1864422846d0*sin(1.19908749676d0 + 1596.1864422846d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*1.873488d-05*cos(5.3265615562d0 + 742.9900605326d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*1.873488d-05*742.9900605326d0*sin(5.3265615562d0 + 742.9900605326d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*1.883583d-05*cos(0.29906423084d0 + 1581.959348283d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*1.883583d-05*1581.959348283d0*sin(0.29906423084d0 + 1581.959348283d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*1.966492d-05*cos(3.51895000316d0 + 956.2891559706d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*1.966492d-05*956.2891559706d0*sin(3.51895000316d0 + 956.2891559706d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*2.325776d-05*cos(2.06697271149d0 + 316.3918696566d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*2.325776d-05*316.3918696566d0*sin(2.06697271149d0 + 316.3918696566d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*2.972552d-05*cos(3.35303238649d0 + 103.0927742186d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*2.972552d-05*103.0927742186d0*sin(3.35303238649d0 + 103.0927742186d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*2.98734d-05*cos(5.51944851941d0 + 2118.7638603784d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*2.98734d-05*2118.7638603784d0*sin(5.51944851941d0 + 2118.7638603784d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*2.99862d-05*cos(1.11280597644d0 + 533.6231183577d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*2.99862d-05*533.6231183577d0*sin(1.11280597644d0 + 533.6231183577d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*3.041302d-05*cos(0.08329755674d0 + 525.7588118315d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*3.041302d-05*525.7588118315d0*sin(0.08329755674d0 + 525.7588118315d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*3.148193d-05*cos(0.98470202558d0 + 419.4846438752d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*3.148193d-05*419.4846438752d0*sin(0.98470202558d0 + 419.4846438752d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*3.328707d-05*cos(6.14951855343d0 + 532.8723588323d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*3.328707d-05*532.8723588323d0*sin(6.14951855343d0 + 532.8723588323d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*3.39849d-05*cos(1.3303316918d0 + 526.5095713569d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*3.39849d-05*526.5095713569d0*sin(1.3303316918d0 + 526.5095713569d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*3.871201d-05*cos(1.76872695106d0 + 14.2270940016d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*3.871201d-05*14.2270940016d0*sin(1.76872695106d0 + 14.2270940016d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*4.284393d-05*cos(0.0749044422d0 + 206.1855484372d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*4.284393d-05*206.1855484372d0*sin(0.0749044422d0 + 206.1855484372d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*4.343053d-05*cos(5.85522747181d0 + 735.8765135318d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*4.343053d-05*735.8765135318d0*sin(5.85522747181d0 + 735.8765135318d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*7.141932d-05*cos(1.60339474172d0 + 323.5054166574d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*7.141932d-05*323.5054166574d0*sin(1.60339474172d0 + 323.5054166574d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*8.101295d-05*cos(4.58123045927d0 + 949.1756089698d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*8.101295d-05*949.1756089698d0*sin(4.58123045927d0 + 949.1756089698d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*9.113996d-05*cos(0.21022418619d0 + 543.9180590962d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*9.113996d-05*543.9180590962d0*sin(0.21022418619d0 + 543.9180590962d0 * t)
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

        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*1.280839d-05*cos(1.47520232403d0 + 110.2063212194d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*1.280839d-05*110.2063212194d0*sin(1.47520232403d0 + 110.2063212194d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*1.322342d-05*cos(0.05782252396d0 + 14.2270940016d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*1.322342d-05*14.2270940016d0*sin(0.05782252396d0 + 14.2270940016d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*3.701007d-05*cos(4.79029127004d0 + 543.9180590962d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*3.701007d-05*543.9180590962d0*sin(4.79029127004d0 + 543.9180590962d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*4.035186d-05*cos(4.01341034017d0 + 1589.0728952838d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*4.035186d-05*1589.0728952838d0*sin(4.01341034017d0 + 1589.0728952838d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*5.281117d-05*cos(2.69489901888d0 + 515.463871093d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*5.281117d-05*515.463871093d0*sin(2.69489901888d0 + 515.463871093d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*5.713988d-05*cos(2.05969938998d0 + 1052.2683831884d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*5.713988d-05*1052.2683831884d0*sin(2.05969938998d0 + 1052.2683831884d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*7.044308d-05*cos(5.45405276738d0 + 1066.49547719d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*7.044308d-05*1066.49547719d0*sin(5.45405276738d0 + 1066.49547719d0 * t)
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

        jupiter_y_3 = jupiter_y_3 +(t**(2))*3*1.012194d-05*cos(3.07729472515d0 + 543.9180590962d0*t)
        jupiter_y_3 = jupiter_y_3 -(t**3)*1.012194d-05*543.9180590962d0*sin(3.07729472515d0 + 543.9180590962d0 * t)
        jupiter_y_3 = jupiter_y_3 +(t**(2))*3*1.056925d-05*cos(4.7017633538d0 + 7.1135470008d0*t)
        jupiter_y_3 = jupiter_y_3 -(t**3)*1.056925d-05*7.1135470008d0*sin(4.7017633538d0 + 7.1135470008d0 * t)
        jupiter_y_3 = jupiter_y_3 +(t**(2))*3*1.078368d-05*cos(3.85452121689d0 + 1066.49547719d0*t)
        jupiter_y_3 = jupiter_y_3 -(t**3)*1.078368d-05*1066.49547719d0*sin(3.85452121689d0 + 1066.49547719d0 * t)
        jupiter_y_3 = jupiter_y_3 +(t**(2))*3*1.442439d-05*cos(4.40866193494d0 + 515.463871093d0*t)
        jupiter_y_3 = jupiter_y_3 -(t**3)*1.442439d-05*515.463871093d0*sin(4.40866193494d0 + 515.463871093d0 * t)
        jupiter_y_3 = jupiter_y_3 +(t**(2))*3*1.780751d-05*cos(1.99283006102d0 + 1059.3819301892d0*t)
        jupiter_y_3 = jupiter_y_3 -(t**3)*1.780751d-05*1059.3819301892d0*sin(1.99283006102d0 + 1059.3819301892d0 * t)
        jupiter_y_3 = jupiter_y_3 +(t**(2))*3*4.008677d-05*cos(0.0d0 + 0.0d0*t)
        jupiter_y_3 = jupiter_y_3 -(t**3)*4.008677d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)
        jupiter_y_3 = jupiter_y_3 +(t**(2))*3*0.0001668543d0*cos(3.20365723177d0 + 536.8045120954d0*t)
        jupiter_y_3 = jupiter_y_3 -(t**3)*0.0001668543d0*536.8045120954d0*sin(3.20365723177d0 + 536.8045120954d0 * t)
        jupiter_y_3 = jupiter_y_3 +(t**(2))*3*0.00017069216d0*cos(4.29096907367d0 + 522.5774180938d0*t)
        jupiter_y_3 = jupiter_y_3 -(t**3)*0.00017069216d0*522.5774180938d0*sin(4.29096907367d0 + 522.5774180938d0 * t)

        jupiter_y_4 = jupiter_y_4 +(t**(3))*4*1.714409d-05*cos(1.4620628571d0 + 536.8045120954d0*t)
        jupiter_y_4 = jupiter_y_4 -(t**4)*1.714409d-05*536.8045120954d0*sin(1.4620628571d0 + 536.8045120954d0 * t)
        jupiter_y_4 = jupiter_y_4 +(t**(3))*4*1.760963d-05*cos(6.04159397216d0 + 522.5774180938d0*t)
        jupiter_y_4 = jupiter_y_4 -(t**4)*1.760963d-05*522.5774180938d0*sin(6.04159397216d0 + 522.5774180938d0 * t)

        r = jupiter_y_4+jupiter_y_3+jupiter_y_2+jupiter_y_1+jupiter_y_0
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

        jupiter_z_0 = jupiter_z_0 -(t**0)*1.100709d-05*74.7815985673d0*sin(5.7706615919d0 + 74.7815985673d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*1.449341d-05*949.1756089698d0*sin(1.1710665509d0 + 949.1756089698d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*1.632059d-05*1066.49547719d0*sin(0.64194850627d0 + 1066.49547719d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*2.011946d-05*419.4846438752d0*sin(2.68549472534d0 + 419.4846438752d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*2.161688d-05*846.0828347512d0*sin(6.26716569996d0 + 846.0828347512d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*2.453014d-05*1052.2683831884d0*sin(2.96909485714d0 + 1052.2683831884d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*2.459093d-05*1162.4747044078d0*sin(2.99891481019d0 + 1162.4747044078d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*3.790459d-05*110.2063212194d0*sin(2.71176055906d0 + 110.2063212194d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*3.795419d-05*632.7837393132d0*sin(2.16708753358d0 + 632.7837393132d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*4.791578d-05*38.1330356378d0*sin(4.58130928279d0 + 38.1330356378d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*5.167573d-05*426.598190876d0*sin(1.62389733122d0 + 426.598190876d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*6.931444d-05*7.1135470008d0*sin(1.74968626255d0 + 7.1135470008d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*7.444124d-05*103.0927742186d0*sin(5.24190365992d0 + 103.0927742186d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*7.533929d-05*213.299095438d0*sin(0.40110943079d0 + 213.299095438d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.00010406225d0*1589.0728952838d0*sin(4.25764578777d0 + 1589.0728952838d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.00033263796d0*536.8045120954d0*sin(0.3029697193d0 + 536.8045120954d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.00042347799d0*522.5774180938d0*sin(3.60144639424d0 + 522.5774180938d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.00286288759d0*1059.3819301892d0*sin(3.90812239092d0 + 1059.3819301892d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.00857879296d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        jupiter_z_0 = jupiter_z_0 -(t**0)*0.11811822789d0*529.6909650946d0*sin(3.55844641987d0 + 529.6909650946d0 * t)

        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*1.229252d-05*cos(3.14222500244d0 + 1589.0728952838d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*1.229252d-05*1589.0728952838d0*sin(3.14222500244d0 + 1589.0728952838d0 * t)
        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*2.105152d-05*cos(0.09490717318d0 + 7.1135470008d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*2.105152d-05*7.1135470008d0*sin(0.09490717318d0 + 7.1135470008d0 * t)
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

        jupiter_z_2 = jupiter_z_2 +(t**(1))*2*1.308861d-05*cos(2.05263727229d0 + 1059.3819301892d0*t)
        jupiter_z_2 = jupiter_z_2 -(t**2)*1.308861d-05*1059.3819301892d0*sin(2.05263727229d0 + 1059.3819301892d0 * t)
        jupiter_z_2 = jupiter_z_2 +(t**(1))*2*2.377492d-05*cos(0.9557445523d0 + 522.5774180938d0*t)
        jupiter_z_2 = jupiter_z_2 -(t**2)*2.377492d-05*522.5774180938d0*sin(0.9557445523d0 + 522.5774180938d0 * t)
        jupiter_z_2 = jupiter_z_2 +(t**(1))*2*3.111783d-05*cos(3.13228615794d0 + 536.8045120954d0*t)
        jupiter_z_2 = jupiter_z_2 -(t**2)*3.111783d-05*536.8045120954d0*sin(3.13228615794d0 + 536.8045120954d0 * t)
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

        mars_x_0 = mars_x_0 -(t**0)*1.202216d-05*76.2660712756d0*sin(0.79285185429d0 + 76.2660712756d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.289804d-05*1194.4470102246d0*sin(4.70970778621d0 + 1194.4470102246d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.29017d-05*2810.9214616052d0*sin(0.43596325296d0 + 2810.9214616052d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.364897d-05*536.8045120954d0*sin(0.47624575868d0 + 536.8045120954d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.37847d-05*1751.539531416d0*sin(2.18011900021d0 + 1751.539531416d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.395167d-05*522.5774180938d0*sin(3.86838914853d0 + 522.5774180938d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.468124d-05*3870.3033917944d0*sin(1.87869730543d0 + 3870.3033917944d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.630482d-05*4136.9104335162d0*sin(0.24117974845d0 + 4136.9104335162d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.677693d-05*5884.9268465832d0*sin(3.14442612046d0 + 5884.9268465832d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.878785d-05*6283.0758499914d0*sin(1.68734377004d0 + 6283.0758499914d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.882589d-05*220.4126424388d0*sin(3.89281844329d0 + 220.4126424388d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.89923d-05*149.5631971346d0*sin(4.79118006044d0 + 149.5631971346d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.93564d-05*206.1855484372d0*sin(1.01281554555d0 + 206.1855484372d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.958162d-05*6684.7479717486d0*sin(1.51914544555d0 + 6684.7479717486d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.977579d-05*6677.7017350506d0*sin(2.1408782611d0 + 6677.7017350506d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.980977d-05*1589.0728952838d0*sin(4.76060234423d0 + 1589.0728952838d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*2.229117d-05*3340.6797370026d0*sin(1.28739323821d0 + 3340.6797370026d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*2.229176d-05*3340.545116397d0*sin(1.69588962513d0 + 3340.545116397d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*2.24101d-05*8962.4553499102d0*sin(4.82218655311d0 + 8962.4553499102d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*2.274646d-05*3532.0606928114d0*sin(2.35708328853d0 + 3532.0606928114d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*2.368513d-05*2544.3144198834d0*sin(2.9684189536d0 + 2544.3144198834d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*2.397865d-05*3149.1641605882d0*sin(0.63553674054d0 + 3149.1641605882d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*3.636667d-05*796.2980068164d0*sin(6.11397592106d0 + 796.2980068164d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*3.725823d-05*16703.062133499d0*sin(1.27280182943d0 + 16703.062133499d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*3.729746d-05*398.1490034082d0*sin(1.21398323637d0 + 398.1490034082d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*4.817134d-05*3738.761430108d0*sin(1.85091045536d0 + 3738.761430108d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*4.937579d-05*5621.8429232104d0*sin(4.43241440654d0 + 5621.8429232104d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*5.27626d-05*6151.533888305d0*sin(2.33148083116d0 + 6151.533888305d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*5.469046d-05*2942.4634232916d0*sin(1.13324429003d0 + 2942.4634232916d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*6.77406d-05*3340.629680352d0*sin(5.64862211431d0 + 3340.629680352d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*6.774107d-05*3340.5951730476d0*sin(3.61785048282d0 + 3340.5951730476d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*7.117418d-05*426.598190876d0*sin(3.35582835022d0 + 426.598190876d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*8.226069d-05*2281.2304965106d0*sin(1.86843519535d0 + 2281.2304965106d0 * t)
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

        mars_x_1 = mars_x_1 +(t**(0))*1*1.163612d-05*cos(6.10909257097d0 + 16703.062133499d0*t)
        mars_x_1 = mars_x_1 -(t**1)*1.163612d-05*16703.062133499d0*sin(6.10909257097d0 + 16703.062133499d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*1.506382d-05*cos(3.2886369908d0 + 1059.3819301892d0*t)
        mars_x_1 = mars_x_1 -(t**1)*1.506382d-05*1059.3819301892d0*sin(3.2886369908d0 + 1059.3819301892d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*2.620537d-05*cos(3.04172154436d0 + 3337.0893083508d0*t)
        mars_x_1 = mars_x_1 -(t**1)*2.620537d-05*3337.0893083508d0*sin(3.04172154436d0 + 3337.0893083508d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*2.62061d-05*cos(6.22441295122d0 + 3344.1355450488d0*t)
        mars_x_1 = mars_x_1 -(t**1)*2.62061d-05*3344.1355450488d0*sin(6.22441295122d0 + 3344.1355450488d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*9.589581d-05*cos(5.77107234791d0 + 13362.4497067992d0*t)
        mars_x_1 = mars_x_1 -(t**1)*9.589581d-05*13362.4497067992d0*sin(5.77107234791d0 + 13362.4497067992d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*0.00020467294d0*cos(5.57051812369d0 + 3340.6124266998d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00020467294d0*3340.6124266998d0*sin(5.57051812369d0 + 3340.6124266998d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*0.00077184951d0*cos(5.43315636209d0 + 10021.8372800994d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00077184951d0*10021.8372800994d0*sin(5.43315636209d0 + 10021.8372800994d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*0.00552437771d0*cos(5.09565872891d0 + 6681.2248533996d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00552437771d0*6681.2248533996d0*sin(5.09565872891d0 + 6681.2248533996d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*0.00862737448d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00862737448d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        mars_x_2 = mars_x_2 +(t**(1))*2*1.130613d-05*cos(4.28827023222d0 + 13362.4497067992d0*t)
        mars_x_2 = mars_x_2 -(t**2)*1.130613d-05*13362.4497067992d0*sin(4.28827023222d0 + 13362.4497067992d0 * t)
        mars_x_2 = mars_x_2 +(t**(1))*2*1.451998d-05*cos(3.6465566646d0 + 3340.6124266998d0*t)
        mars_x_2 = mars_x_2 -(t**2)*1.451998d-05*3340.6124266998d0*sin(3.6465566646d0 + 3340.6124266998d0 * t)
        mars_x_2 = mars_x_2 +(t**(1))*2*6.091409d-05*cos(3.93272649649d0 + 10021.8372800994d0*t)
        mars_x_2 = mars_x_2 -(t**2)*6.091409d-05*10021.8372800994d0*sin(3.93272649649d0 + 10021.8372800994d0 * t)
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

        mars_y_0 = mars_y_0 -(t**0)*1.201901d-05*76.2660712756d0*sin(5.5048551356d0 + 76.2660712756d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.28189d-05*1194.4470102246d0*sin(3.13035275682d0 + 1194.4470102246d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.365144d-05*536.8045120954d0*sin(5.18887775599d0 + 536.8045120954d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.385946d-05*1751.539531416d0*sin(3.73437191158d0 + 1751.539531416d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.398506d-05*522.5774180938d0*sin(2.29986358218d0 + 522.5774180938d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.439619d-05*2810.9214616052d0*sin(5.19505958438d0 + 2810.9214616052d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.469783d-05*3870.3033917944d0*sin(0.30415060688d0 + 3870.3033917944d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.575854d-05*5092.1519581158d0*sin(2.78266835243d0 + 5092.1519581158d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.628395d-05*4136.9104335162d0*sin(4.95250906888d0 + 4136.9104335162d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.690439d-05*5884.9268465832d0*sin(1.58331163985d0 + 5884.9268465832d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.697214d-05*2544.3144198834d0*sin(0.81869636263d0 + 2544.3144198834d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.8742d-05*6283.0758499914d0*sin(0.11372848779d0 + 6283.0758499914d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.885394d-05*220.4126424388d0*sin(2.32103716064d0 + 220.4126424388d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.898728d-05*149.5631971346d0*sin(3.22034182982d0 + 149.5631971346d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.956411d-05*6684.7479717486d0*sin(6.23095843554d0 + 6684.7479717486d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.959001d-05*206.1855484372d0*sin(5.70640609056d0 + 206.1855484372d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.975769d-05*6677.7017350506d0*sin(0.56949816579d0 + 6677.7017350506d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.980388d-05*1589.0728952838d0*sin(3.18938664693d0 + 1589.0728952838d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*2.22603d-05*3340.6797370026d0*sin(5.99867316288d0 + 3340.6797370026d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*2.226089d-05*3340.545116397d0*sin(0.12398424247d0 + 3340.545116397d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*2.234121d-05*8962.4553499102d0*sin(3.24909113765d0 + 8962.4553499102d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*2.251027d-05*3532.0606928114d0*sin(0.76938193892d0 + 3532.0606928114d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*2.39449d-05*3149.1641605882d0*sin(5.34678816191d0 + 3149.1641605882d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*3.609527d-05*796.2980068164d0*sin(4.53244488294d0 + 796.2980068164d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*3.724293d-05*16703.062133499d0*sin(5.98516013322d0 + 16703.062133499d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*3.805073d-05*398.1490034082d0*sin(5.94234296399d0 + 398.1490034082d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*4.809528d-05*3738.761430108d0*sin(0.27875310553d0 + 3738.761430108d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*4.849523d-05*5621.8429232104d0*sin(2.8519098755d0 + 5621.8429232104d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*5.263268d-05*6151.533888305d0*sin(0.75811089992d0 + 6151.533888305d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*5.400042d-05*2942.4634232916d0*sin(5.81507793194d0 + 2942.4634232916d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*6.764653d-05*3340.629680352d0*sin(4.07671230062d0 + 3340.629680352d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*6.7647d-05*3340.5951730476d0*sin(2.04594066912d0 + 3340.5951730476d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*7.124907d-05*426.598190876d0*sin(1.78378681583d0 + 426.598190876d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*8.34622d-05*2281.2304965106d0*sin(3.42464704002d0 + 2281.2304965106d0 * t)
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

        mars_y_1 = mars_y_1 +(t**(0))*1*1.162955d-05*cos(4.53778503576d0 + 16703.062133499d0*t)
        mars_y_1 = mars_y_1 -(t**1)*1.162955d-05*16703.062133499d0*sin(4.53778503576d0 + 16703.062133499d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*1.505462d-05*cos(1.71640125299d0 + 1059.3819301892d0*t)
        mars_y_1 = mars_y_1 -(t**1)*1.505462d-05*1059.3819301892d0*sin(1.71640125299d0 + 1059.3819301892d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*2.611572d-05*cos(4.65030772498d0 + 3344.1355450488d0*t)
        mars_y_1 = mars_y_1 -(t**1)*2.611572d-05*3344.1355450488d0*sin(4.65030772498d0 + 3344.1355450488d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*2.617695d-05*cos(1.4728455552d0 + 3337.0893083508d0*t)
        mars_y_1 = mars_y_1 -(t**1)*2.617695d-05*3337.0893083508d0*sin(1.4728455552d0 + 3337.0893083508d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*9.582122d-05*cos(4.19942354479d0 + 13362.4497067992d0*t)
        mars_y_1 = mars_y_1 -(t**1)*9.582122d-05*13362.4497067992d0*sin(4.19942354479d0 + 13362.4497067992d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*0.00037310479d0*cos(1.16016958445d0 + 3340.6124266998d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.00037310479d0*3340.6124266998d0*sin(1.16016958445d0 + 3340.6124266998d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*0.00077091888d0*cos(3.86082685753d0 + 10021.8372800994d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.00077091888d0*10021.8372800994d0*sin(3.86082685753d0 + 10021.8372800994d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*0.00551063576d0*cos(3.52128320402d0 + 6681.2248533996d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.00551063576d0*6681.2248533996d0*sin(3.52128320402d0 + 6681.2248533996d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*0.01427318093d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.01427318093d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        mars_y_2 = mars_y_2 +(t**(1))*2*1.129099d-05*cos(2.71576248963d0 + 13362.4497067992d0*t)
        mars_y_2 = mars_y_2 -(t**2)*1.129099d-05*13362.4497067992d0*sin(2.71576248963d0 + 13362.4497067992d0 * t)
        mars_y_2 = mars_y_2 +(t**(1))*2*2.571425d-05*cos(5.64795745327d0 + 3340.6124266998d0*t)
        mars_y_2 = mars_y_2 -(t**2)*2.571425d-05*3340.6124266998d0*sin(5.64795745327d0 + 3340.6124266998d0 * t)
        mars_y_2 = mars_y_2 +(t**(1))*2*6.07599d-05*cos(2.35864321001d0 + 10021.8372800994d0*t)
        mars_y_2 = mars_y_2 -(t**2)*6.07599d-05*10021.8372800994d0*sin(2.35864321001d0 + 10021.8372800994d0 * t)
        mars_y_2 = mars_y_2 +(t**(1))*2*0.00021950751d0*cos(1.96291594946d0 + 6681.2248533996d0*t)
        mars_y_2 = mars_y_2 -(t**2)*0.00021950751d0*6681.2248533996d0*sin(1.96291594946d0 + 6681.2248533996d0 * t)
        mars_y_2 = mars_y_2 +(t**(1))*2*0.00035452579d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_y_2 = mars_y_2 -(t**2)*0.00035452579d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        mars_y_3 = mars_y_3 +(t**(2))*3*1.451417d-05*cos(0.0d0 + 0.0d0*t)
        mars_y_3 = mars_y_3 -(t**3)*1.451417d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)

        r = mars_y_3+mars_y_2+mars_y_1+mars_y_0
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

        mars_z_0 = mars_z_0 -(t**0)*1.130585d-05*74.7815985673d0*sin(5.75854380515d0 + 74.7815985673d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*1.321976d-05*13362.4497067992d0*sin(4.78186604114d0 + 13362.4497067992d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*4.80193d-05*38.1330356378d0*sin(4.58262362363d0 + 38.1330356378d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*0.00011012894d0*529.6909650946d0*sin(0.3930742899d0 + 529.6909650946d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*0.00011803129d0*213.299095438d0*sin(0.45922638235d0 + 213.299095438d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*0.00015958402d0*10021.8372800994d0*sin(4.44367058261d0 + 10021.8372800994d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*0.00228333831d0*6681.2248533996d0*sin(4.10544022266d0 + 6681.2248533996d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*0.00659516885d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mars_z_0 = mars_z_0 -(t**0)*0.04901205639d0*3340.6124266998d0*sin(3.76712324293d0 + 3340.6124266998d0 * t)

        mars_z_1 = mars_z_1 +(t**(0))*1*1.700147d-05*cos(2.63703242065d0 + 10021.8372800994d0*t)
        mars_z_1 = mars_z_1 -(t**1)*1.700147d-05*10021.8372800994d0*sin(2.63703242065d0 + 10021.8372800994d0 * t)
        mars_z_1 = mars_z_1 +(t**(0))*1*9.896501d-05*cos(1.61155844715d0 + 6681.2248533996d0*t)
        mars_z_1 = mars_z_1 -(t**1)*9.896501d-05*6681.2248533996d0*sin(1.61155844715d0 + 6681.2248533996d0 * t)
        mars_z_1 = mars_z_1 +(t**(0))*1*0.00047797013d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_z_1 = mars_z_1 -(t**1)*0.00047797013d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mars_z_1 = mars_z_1 +(t**(0))*1*0.00331842851d0*cos(6.05027773492d0 + 3340.6124266998d0*t)
        mars_z_1 = mars_z_1 -(t**1)*0.00331842851d0*3340.6124266998d0*sin(6.05027773492d0 + 3340.6124266998d0 * t)

        mars_z_2 = mars_z_2 +(t**(1))*2*5.933274d-05*cos(3.14159265359d0 + 0.0d0*t)
        mars_z_2 = mars_z_2 -(t**2)*5.933274d-05*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
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

        mercury_x_0 = mercury_x_0 -(t**0)*1.186821d-05*76.2660712756d0*sin(0.77658632871d0 + 76.2660712756d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*1.406213d-05*536.8045120954d0*sin(0.47615061971d0 + 536.8045120954d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*1.434125d-05*522.5774180938d0*sin(3.86895692507d0 + 522.5774180938d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*1.888858d-05*220.4126424388d0*sin(3.89255617078d0 + 220.4126424388d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*1.940365d-05*149.5631971346d0*sin(4.79909733719d0 + 149.5631971346d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*1.941401d-05*206.1855484372d0*sin(1.01217625416d0 + 206.1855484372d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*4.433373d-05*156527.41884944518d0*sin(0.80236674527d0 + 156527.41884944518d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*7.626285d-05*426.598190876d0*sin(3.24347023009d0 + 426.598190876d0 * t)
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

        mercury_x_1 = mercury_x_1 +(t**(0))*1*2.329042d-05*cos(2.50023793407d0 + 130439.51570787099d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*2.329042d-05*130439.51570787099d0*sin(2.50023793407d0 + 130439.51570787099d0 * t)
        mercury_x_1 = mercury_x_1 +(t**(0))*1*8.783198d-05*cos(5.73285747425d0 + 104351.61256629678d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*8.783198d-05*104351.61256629678d0*sin(5.73285747425d0 + 104351.61256629678d0 * t)
        mercury_x_1 = mercury_x_1 +(t**(0))*1*0.00011992887d0*cos(5.81575112963d0 + 26087.9031415742d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*0.00011992887d0*26087.9031415742d0*sin(5.81575112963d0 + 26087.9031415742d0 * t)
        mercury_x_1 = mercury_x_1 +(t**(0))*1*0.00032315996d0*cos(2.68247273347d0 + 78263.70942472259d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*0.00032315996d0*78263.70942472259d0*sin(2.68247273347d0 + 78263.70942472259d0 * t)
        mercury_x_1 = mercury_x_1 +(t**(0))*1*0.00105289001d0*cos(5.91600475006d0 + 52175.8062831484d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*0.00105289001d0*52175.8062831484d0*sin(5.91600475006d0 + 52175.8062831484d0 * t)
        mercury_x_1 = mercury_x_1 +(t**(0))*1*0.0031755196d0*cos(0.0d0 + 0.0d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*0.0031755196d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mercury_x_2 = mercury_x_2 +(t**(1))*2*1.25978d-05*cos(0.0d0 + 0.0d0*t)
        mercury_x_2 = mercury_x_2 -(t**2)*1.25978d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mercury_x_2 = mercury_x_2 +(t**(1))*2*1.484185d-05*cos(4.35401210269d0 + 52175.8062831484d0*t)
        mercury_x_2 = mercury_x_2 -(t**2)*1.484185d-05*52175.8062831484d0*sin(4.35401210269d0 + 52175.8062831484d0 * t)

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

        mercury_y_0 = mercury_y_0 -(t**0)*1.186503d-05*76.2660712756d0*sin(5.48857209638d0 + 76.2660712756d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*1.405828d-05*536.8045120954d0*sin(5.18871358903d0 + 536.8045120954d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*1.436593d-05*522.5774180938d0*sin(2.30163308407d0 + 522.5774180938d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*1.891507d-05*220.4126424388d0*sin(2.32099579498d0 + 220.4126424388d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*1.939835d-05*149.5631971346d0*sin(3.22826367093d0 + 149.5631971346d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*1.963685d-05*206.1855484372d0*sin(5.7077185041d0 + 206.1855484372d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*4.450056d-05*156527.41884944518d0*sin(5.52354907071d0 + 156527.41884944518d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*7.634888d-05*426.598190876d0*sin(1.67192689093d0 + 426.598190876d0 * t)
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

        mercury_y_1 = mercury_y_1 +(t**(0))*1*2.344469d-05*cos(0.93615372641d0 + 130439.51570787099d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*2.344469d-05*130439.51570787099d0*sin(0.93615372641d0 + 130439.51570787099d0 * t)
        mercury_y_1 = mercury_y_1 +(t**(0))*1*8.858156d-05*cos(4.16852401867d0 + 104351.61256629678d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*8.858156d-05*104351.61256629678d0*sin(4.16852401867d0 + 104351.61256629678d0 * t)
        mercury_y_1 = mercury_y_1 +(t**(0))*1*0.00011914707d0*cos(1.2213998634d0 + 26087.9031415742d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*0.00011914707d0*26087.9031415742d0*sin(1.2213998634d0 + 26087.9031415742d0 * t)
        mercury_y_1 = mercury_y_1 +(t**(0))*1*0.00032715349d0*cos(1.11763734425d0 + 78263.70942472259d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*0.00032715349d0*78263.70942472259d0*sin(1.11763734425d0 + 78263.70942472259d0 * t)
        mercury_y_1 = mercury_y_1 +(t**(0))*1*0.00080645427d0*cos(3.14159265359d0 + 0.0d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*0.00080645427d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_y_1 = mercury_y_1 +(t**(0))*1*0.00107803834d0*cos(4.34964793883d0 + 52175.8062831484d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*0.00107803834d0*52175.8062831484d0*sin(4.34964793883d0 + 52175.8062831484d0 * t)

        mercury_y_2 = mercury_y_2 +(t**(1))*2*1.57567d-05*cos(2.81172733349d0 + 52175.8062831484d0*t)
        mercury_y_2 = mercury_y_2 -(t**2)*1.57567d-05*52175.8062831484d0*sin(2.81172733349d0 + 52175.8062831484d0 * t)
        mercury_y_2 = mercury_y_2 +(t**(1))*2*4.556343d-05*cos(0.0d0 + 0.0d0*t)
        mercury_y_2 = mercury_y_2 -(t**2)*4.556343d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        mercury_z_0 = mercury_z_0 -(t**0)*1.131032d-05*74.7815985673d0*sin(5.75872803701d0 + 74.7815985673d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*2.575002d-05*130439.51570787099d0*sin(1.62646731545d0 + 130439.51570787099d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*4.802047d-05*38.1330356378d0*sin(4.5826462509d0 + 38.1330356378d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.00011268745d0*529.6909650946d0*sin(0.4166999186d0 + 529.6909650946d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.00011810801d0*213.299095438d0*sin(0.46073218799d0 + 213.299095438d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.00012957444d0*104351.61256629678d0*sin(4.8592203201d0 + 104351.61256629678d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.00071626383d0*78263.70942472259d0*sin(1.80894256071d0 + 78263.70942472259d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.0046917154d0*52175.8062831484d0*sin(5.04215742764d0 + 52175.8062831484d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.00709887021d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.04607664562d0*26087.9031415742d0*sin(1.99295081967d0 + 26087.9031415742d0 * t)

        mercury_z_1 = mercury_z_1 +(t**(0))*1*2.435833d-05*cos(0.05112640506d0 + 78263.70942472259d0*t)
        mercury_z_1 = mercury_z_1 -(t**1)*2.435833d-05*78263.70942472259d0*sin(0.05112640506d0 + 78263.70942472259d0 * t)
        mercury_z_1 = mercury_z_1 +(t**(0))*1*4.297352d-05*cos(2.56373047177d0 + 52175.8062831484d0*t)
        mercury_z_1 = mercury_z_1 -(t**1)*4.297352d-05*52175.8062831484d0*sin(2.56373047177d0 + 52175.8062831484d0 * t)
        mercury_z_1 = mercury_z_1 +(t**(0))*1*0.00057693223d0*cos(3.14159265359d0 + 0.0d0*t)
        mercury_z_1 = mercury_z_1 -(t**1)*0.00057693223d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_z_1 = mercury_z_1 +(t**(0))*1*0.00108722159d0*cos(3.91134750825d0 + 26087.9031415742d0*t)
        mercury_z_1 = mercury_z_1 -(t**1)*0.00108722159d0*26087.9031415742d0*sin(3.91134750825d0 + 26087.9031415742d0 * t)

        mercury_z_2 = mercury_z_2 +(t**(1))*2*1.053118d-05*cos(5.37979214357d0 + 26087.9031415742d0*t)
        mercury_z_2 = mercury_z_2 -(t**2)*1.053118d-05*26087.9031415742d0*sin(5.37979214357d0 + 26087.9031415742d0 * t)
        mercury_z_2 = mercury_z_2 +(t**(1))*2*1.183345d-05*cos(0.0d0 + 0.0d0*t)
        mercury_z_2 = mercury_z_2 -(t**2)*1.183345d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)

        r = mercury_z_2+mercury_z_1+mercury_z_0
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

        neptune_x_0 = neptune_x_0 -(t**0)*1.080795d-05*42.3258213318d0*sin(4.75485636019d0 + 42.3258213318d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*1.157153d-05*148.0787244263d0*sin(2.64764912073d0 + 148.0787244263d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*1.170078d-05*8.0767548473d0*sin(3.98594689041d0 + 8.0767548473d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*1.228939d-05*72.0732855816d0*sin(2.78878211792d0 + 72.0732855816d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*1.265797d-05*46.2097904851d0*sin(3.42037275447d0 + 46.2097904851d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*1.271543d-05*33.9402499438d0*sin(2.74412981229d0 + 33.9402499438d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*1.387922d-05*115.8835796217d0*sin(3.71814330952d0 + 115.8835796217d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*1.448439d-05*181.7583419392d0*sin(1.98814317259d0 + 181.7583419392d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*1.527526d-05*38.2449102224d0*sin(0.02173640246d0 + 38.2449102224d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*1.533383d-05*38.0211610532d0*sin(1.17732211665d0 + 38.0211610532d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*1.545705d-05*38.3936680687d0*sin(0.64028780672d0 + 38.3936680687d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*1.560429d-05*37.8724032069d0*sin(0.55865739143d0 + 37.8724032069d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*1.615063d-05*106.9767433719d0*sin(2.9106383501d0 + 106.9767433719d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*1.648985d-05*30.0562807905d0*sin(4.06990666591d0 + 30.0562807905d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*1.681255d-05*40.5807161926d0*sin(4.27560304282d0 + 40.5807161926d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*1.8267d-05*44.070926471d0*sin(3.58024318649d0 + 44.070926471d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*1.88743d-05*35.685355083d0*sin(3.20485417792d0 + 35.685355083d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*2.084772d-05*137.0330241624d0*sin(2.83683424533d0 + 137.0330241624d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*2.522938d-05*312.1990839626d0*sin(4.66296126912d0 + 312.1990839626d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*2.720471d-05*109.9456887885d0*sin(3.82305971632d0 + 109.9456887885d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*3.108292d-05*47.6942631934d0*sin(1.84434543409d0 + 47.6942631934d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*3.260095d-05*145.1097790097d0*sin(1.81839652878d0 + 145.1097790097d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*3.322735d-05*4.192785694d0*sin(4.68798591938d0 + 4.192785694d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*3.920412d-05*39.0962434843d0*sin(5.49263784865d0 + 39.0962434843d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*3.951848d-05*98.8999885246d0*sin(2.2999693411d0 + 98.8999885246d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*4.089036d-05*37.1698277913d0*sin(1.99429048244d0 + 37.1698277913d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*4.249674d-05*28.5718080822d0*sin(5.63324475823d0 + 28.5718080822d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*4.315539d-05*38.1812197476d0*sin(5.10473142056d0 + 38.1812197476d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*4.32255d-05*38.084851528d0*sin(2.37744780188d0 + 38.084851528d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*4.557247d-05*38.6543004996d0*sin(1.09712669317d0 + 38.6543004996d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*4.654361d-05*37.611770776d0*sin(0.1038588798d0 + 37.611770776d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*4.733138d-05*79.2350166922d0*sin(4.09748778484d0 + 79.2350166922d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*5.56586d-05*32.1951448046d0*sin(3.82502185953d0 + 32.1951448046d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*6.464842d-05*5.9378908332d0*sin(4.62580066013d0 + 5.9378908332d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*7.541736d-05*70.3281804424d0*sin(2.77784746848d0 + 70.3281804424d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*8.004318d-05*108.4612160802d0*sin(1.6396562626d0 + 108.4612160802d0 * t)
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

        neptune_x_1 = neptune_x_1 +(t**(0))*1*1.284677d-05*cos(6.02457823347d0 + 74.7815985673d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*1.284677d-05*74.7815985673d0*sin(6.02457823347d0 + 74.7815985673d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*1.344022d-05*cos(3.03802059051d0 + 42.5864537627d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*1.344022d-05*42.5864537627d0*sin(3.03802059051d0 + 42.5864537627d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*1.572202d-05*cos(1.07606611589d0 + 114.3991069134d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*1.572202d-05*114.3991069134d0*sin(1.07606611589d0 + 114.3991069134d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*2.168719d-05*cos(4.11768012563d0 + 4.4534181249d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*2.168719d-05*4.4534181249d0*sin(4.11768012563d0 + 4.4534181249d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*2.204414d-05*cos(4.38855639521d0 + 33.6796175129d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*2.204414d-05*33.6796175129d0*sin(4.38855639521d0 + 33.6796175129d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*2.745912d-05*cos(4.06264400609d0 + 77.7505439839d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*2.745912d-05*77.7505439839d0*sin(4.06264400609d0 + 77.7505439839d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*4.909885d-05*cos(2.09371107061d0 + 73.297125859d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*4.909885d-05*73.297125859d0*sin(2.09371107061d0 + 73.297125859d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*5.086527d-05*cos(1.92377354729d0 + 38.1330356378d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*5.086527d-05*38.1330356378d0*sin(1.92377354729d0 + 38.1330356378d0 * t)
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

        neptune_x_2 = neptune_x_2 +(t**(1))*2*2.163703d-05*cos(1.79218168368d0 + 76.2660712756d0*t)
        neptune_x_2 = neptune_x_2 -(t**2)*2.163703d-05*76.2660712756d0*sin(1.79218168368d0 + 76.2660712756d0 * t)
        neptune_x_2 = neptune_x_2 +(t**(1))*2*3.092965d-05*cos(0.62250463031d0 + 38.1330356378d0*t)
        neptune_x_2 = neptune_x_2 -(t**2)*3.092965d-05*38.1330356378d0*sin(0.62250463031d0 + 38.1330356378d0 * t)
        neptune_x_2 = neptune_x_2 +(t**(1))*2*4.350766d-05*cos(2.45420254304d0 + 39.6175083461d0*t)
        neptune_x_2 = neptune_x_2 -(t**2)*4.350766d-05*39.6175083461d0*sin(2.45420254304d0 + 39.6175083461d0 * t)
        neptune_x_2 = neptune_x_2 +(t**(1))*2*4.536283d-05*cos(5.02700751836d0 + 36.6485629295d0*t)
        neptune_x_2 = neptune_x_2 -(t**2)*4.536283d-05*36.6485629295d0*sin(5.02700751836d0 + 36.6485629295d0 * t)
        neptune_x_2 = neptune_x_2 +(t**(1))*2*5.415923d-05*cos(0.0d0 + 0.0d0*t)
        neptune_x_2 = neptune_x_2 -(t**2)*5.415923d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        neptune_y_0 = neptune_y_0 -(t**0)*1.080807d-05*42.3258213318d0*sin(3.18401661435d0 + 42.3258213318d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.111708d-05*8.0767548473d0*sin(5.51669920239d0 + 8.0767548473d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.173918d-05*148.0787244263d0*sin(1.08646707548d0 + 148.0787244263d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.227926d-05*72.0732855816d0*sin(1.21334651843d0 + 72.0732855816d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.242929d-05*33.9402499438d0*sin(1.10242173566d0 + 33.9402499438d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.314116d-05*46.2097904851d0*sin(1.80386443362d0 + 46.2097904851d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.388024d-05*115.8835796217d0*sin(2.14792830412d0 + 115.8835796217d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.467042d-05*181.7583419392d0*sin(3.5622646377d0 + 181.7583419392d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.527526d-05*38.2449102224d0*sin(4.73412534395d0 + 38.2449102224d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.533383d-05*38.0211610532d0*sin(5.8897111359d0 + 38.0211610532d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.545705d-05*38.3936680687d0*sin(5.35267669439d0 + 38.3936680687d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.559193d-05*37.8724032069d0*sin(5.27114846878d0 + 37.8724032069d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.647474d-05*30.0562807905d0*sin(2.50010254963d0 + 30.0562807905d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.681258d-05*40.5807161926d0*sin(2.70480318579d0 + 40.5807161926d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.720954d-05*106.9767433719d0*sin(4.49400805134d0 + 106.9767433719d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.731599d-05*70.3281804424d0*sin(4.14499314089d0 + 70.3281804424d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.82639d-05*44.070926471d0*sin(2.00938305966d0 + 44.070926471d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*1.888827d-05*35.685355083d0*sin(1.63364331324d0 + 35.685355083d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*2.058823d-05*137.0330241624d0*sin(4.38545017091d0 + 137.0330241624d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*2.523042d-05*312.1990839626d0*sin(6.23400745185d0 + 312.1990839626d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*2.668054d-05*109.9456887885d0*sin(2.31251521781d0 + 109.9456887885d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*3.112636d-05*47.6942631934d0*sin(0.27319642944d0 + 47.6942631934d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*3.323991d-05*4.192785694d0*sin(3.11674274385d0 + 4.192785694d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*3.373281d-05*145.1097790097d0*sin(3.3961625565d0 + 145.1097790097d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*3.930135d-05*98.8999885246d0*sin(3.86614178174d0 + 98.8999885246d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*3.932515d-05*39.0962434843d0*sin(3.91607592815d0 + 39.0962434843d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*4.089036d-05*37.1698277913d0*sin(0.42349446479d0 + 37.1698277913d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*4.247643d-05*28.5718080822d0*sin(4.06355336504d0 + 28.5718080822d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*4.315539d-05*38.1812197476d0*sin(3.53393506841d0 + 38.1812197476d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*4.32255d-05*38.084851528d0*sin(0.80665145881d0 + 38.084851528d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*4.557247d-05*38.6543004996d0*sin(5.80951552318d0 + 38.6543004996d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*4.650708d-05*37.611770776d0*sin(4.81540983294d0 + 37.611770776d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*4.734186d-05*79.2350166922d0*sin(2.52644981654d0 + 79.2350166922d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*5.316026d-05*71.8126531507d0*sin(0.78719997386d0 + 71.8126531507d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*6.439265d-05*5.9378908332d0*sin(3.05453259951d0 + 5.9378908332d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*8.76858d-05*108.4612160802d0*sin(3.2348715695d0 + 108.4612160802d0 * t)
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

        neptune_y_1 = neptune_y_1 +(t**(0))*1*1.292006d-05*cos(4.45882418895d0 + 74.7815985673d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*1.292006d-05*74.7815985673d0*sin(4.45882418895d0 + 74.7815985673d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*1.343731d-05*cos(1.46712622109d0 + 42.5864537627d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*1.343731d-05*42.5864537627d0*sin(1.46712622109d0 + 42.5864537627d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*1.458269d-05*cos(1.61835542699d0 + 38.1330356378d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*1.458269d-05*38.1330356378d0*sin(1.61835542699d0 + 38.1330356378d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*1.565725d-05*cos(2.89846266272d0 + 33.6796175129d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*1.565725d-05*33.6796175129d0*sin(2.89846266272d0 + 33.6796175129d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*1.572289d-05*cos(5.78853350711d0 + 114.3991069134d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*1.572289d-05*114.3991069134d0*sin(5.78853350711d0 + 114.3991069134d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*2.145481d-05*cos(2.54768447291d0 + 4.4534181249d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*2.145481d-05*4.4534181249d0*sin(2.54768447291d0 + 4.4534181249d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*2.746565d-05*cos(2.49189874649d0 + 77.7505439839d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*2.746565d-05*77.7505439839d0*sin(2.49189874649d0 + 77.7505439839d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*4.955216d-05*cos(0.51750137679d0 + 73.297125859d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*4.955216d-05*73.297125859d0*sin(0.51750137679d0 + 73.297125859d0 * t)
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

        neptune_y_2 = neptune_y_2 +(t**(1))*2*2.163809d-05*cos(0.22086532214d0 + 76.2660712756d0*t)
        neptune_y_2 = neptune_y_2 -(t**2)*2.163809d-05*76.2660712756d0*sin(0.22086532214d0 + 76.2660712756d0 * t)
        neptune_y_2 = neptune_y_2 +(t**(1))*2*3.058647d-05*cos(5.31956613665d0 + 38.1330356378d0*t)
        neptune_y_2 = neptune_y_2 -(t**2)*3.058647d-05*38.1330356378d0*sin(5.31956613665d0 + 38.1330356378d0 * t)
        neptune_y_2 = neptune_y_2 +(t**(1))*2*3.651208d-05*cos(3.14159265359d0 + 0.0d0*t)
        neptune_y_2 = neptune_y_2 -(t**2)*3.651208d-05*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        neptune_y_2 = neptune_y_2 +(t**(1))*2*4.347956d-05*cos(0.88317230351d0 + 39.6175083461d0*t)
        neptune_y_2 = neptune_y_2 -(t**2)*4.347956d-05*39.6175083461d0*sin(0.88317230351d0 + 39.6175083461d0 * t)
        neptune_y_2 = neptune_y_2 +(t**(1))*2*4.539421d-05*cos(3.45613207922d0 + 36.6485629295d0*t)
        neptune_y_2 = neptune_y_2 -(t**2)*4.539421d-05*36.6485629295d0*sin(3.45613207922d0 + 36.6485629295d0 * t)

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

        neptune_z_0 = neptune_z_0 -(t**0)*1.865261d-05*71.8126531507d0*sin(5.05510390418d0 + 71.8126531507d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*2.213464d-05*4.4534181249d0*sin(1.96045135168d0 + 4.4534181249d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*2.818034d-05*114.3991069134d0*sin(4.10661077794d0 + 114.3991069134d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*2.868677d-05*33.6796175129d0*sin(4.27011526203d0 + 33.6796175129d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*4.119576d-05*77.7505439839d0*sin(1.6794281346d0 + 77.7505439839d0 * t)
        neptune_z_0 = neptune_z_0 -(t**0)*9.77468d-05*73.297125859d0*sin(2.80201767484d0 + 73.297125859d0 * t)
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

        neptune_z_1 = neptune_z_1 +(t**(0))*1*3.89134d-05*cos(5.46760868569d0 + 76.2660712756d0*t)
        neptune_z_1 = neptune_z_1 -(t**1)*3.89134d-05*76.2660712756d0*sin(5.46760868569d0 + 76.2660712756d0 * t)
        neptune_z_1 = neptune_z_1 +(t**(0))*1*6.862414d-05*cos(1.6593016061d0 + 39.6175083461d0*t)
        neptune_z_1 = neptune_z_1 -(t**1)*6.862414d-05*39.6175083461d0*sin(1.6593016061d0 + 39.6175083461d0 * t)
        neptune_z_1 = neptune_z_1 +(t**(0))*1*7.783708d-05*cos(4.40146905905d0 + 36.6485629295d0*t)
        neptune_z_1 = neptune_z_1 -(t**1)*7.783708d-05*36.6485629295d0*sin(4.40146905905d0 + 36.6485629295d0 * t)
        neptune_z_1 = neptune_z_1 +(t**(0))*1*9.597674d-05*cos(0.0d0 + 0.0d0*t)
        neptune_z_1 = neptune_z_1 -(t**1)*9.597674d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)
        neptune_z_1 = neptune_z_1 +(t**(0))*1*0.00154877961d0*cos(2.14239038882d0 + 38.1330356378d0*t)
        neptune_z_1 = neptune_z_1 -(t**1)*0.00154877961d0*38.1330356378d0*sin(2.14239038882d0 + 38.1330356378d0 * t)

        neptune_z_2 = neptune_z_2 +(t**(1))*2*1.26484d-05*cos(1.91401498992d0 + 38.1330356378d0*t)
        neptune_z_2 = neptune_z_2 -(t**2)*1.26484d-05*38.1330356378d0*sin(1.91401498992d0 + 38.1330356378d0 * t)

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

        saturn_x_0 = saturn_x_0 -(t**0)*1.008026d-05*225.8292684102d0*sin(1.088257035d0 + 225.8292684102d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.00919d-05*265.9892934775d0*sin(1.34289487761d0 + 265.9892934775d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.019407d-05*1471.7530270636d0*sin(5.00697904753d0 + 1471.7530270636d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.070652d-05*1059.3819301892d0*sin(2.16320626061d0 + 1059.3819301892d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.089142d-05*362.8622925726d0*sin(5.82690567831d0 + 362.8622925726d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.092d-05*173.9422195228d0*sin(1.13562597855d0 + 173.9422195228d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.11139d-05*234.6397364404d0*sin(0.47907481744d0 + 234.6397364404d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.118048d-05*703.6331846174d0*sin(3.4662421687d0 + 703.6331846174d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.148005d-05*942.062061969d0*sin(0.192671349d0 + 942.062061969d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.150262d-05*200.7689224658d0*sin(3.7470411025d0 + 200.7689224658d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.173633d-05*1685.0521225016d0*sin(3.79592491893d0 + 1685.0521225016d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.41771d-05*350.3321196004d0*sin(5.4141990081d0 + 350.3321196004d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.4608d-05*429.7795846137d0*sin(5.92457418931d0 + 429.7795846137d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.465687d-05*949.1756089698d0*sin(5.69105697536d0 + 949.1756089698d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.499061d-05*52.6901980395d0*sin(3.60176796862d0 + 52.6901980395d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.537964d-05*860.3099287528d0*sin(4.78543539924d0 + 860.3099287528d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.632293d-05*213.8203602998d0*sin(2.69164822165d0 + 213.8203602998d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.63438d-05*12.5301729722d0*sin(4.54319346061d0 + 12.5301729722d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*1.635508d-05*212.7778305762d0*sin(2.1996886978d0 + 212.7778305762d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.094767d-05*423.4167971383d0*sin(3.55759987109d0 + 423.4167971383d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.099584d-05*1.4844727083d0*sin(2.04767412721d0 + 1.4844727083d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.162294d-05*340.7708920448d0*sin(3.26942373483d0 + 340.7708920448d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.308453d-05*430.5303441391d0*sin(3.67822395107d0 + 430.5303441391d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.334618d-05*388.4651552382d0*sin(5.86791070843d0 + 388.4651552382d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.424948d-05*222.8603229936d0*sin(3.97128259353d0 + 222.8603229936d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.469402d-05*1155.361157407d0*sin(5.27363716895d0 + 1155.361157407d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.507576d-05*9.5612275556d0*sin(1.49473969257d0 + 9.5612275556d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.527038d-05*628.8515860501d0*sin(5.09752990899d0 + 628.8515860501d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.619094d-05*127.4717966068d0*sin(5.49345540359d0 + 127.4717966068d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.633264d-05*288.0806940053d0*sin(5.40645069358d0 + 288.0806940053d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.712559d-05*203.7378678824d0*sin(0.9681400918d0 + 203.7378678824d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.827199d-05*330.6189636582d0*sin(0.73271261848d0 + 330.6189636582d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.904839d-05*85.8272988312d0*sin(1.13559078868d0 + 85.8272988312d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.912305d-05*3.1813937377d0*sin(1.76894623285d0 + 3.1813937377d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.921516d-05*1066.49547719d0*sin(4.16131118972d0 + 1066.49547719d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.953858d-05*138.5174968707d0*sin(5.3916510386d0 + 138.5174968707d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*2.987869d-05*625.6701923124d0*sin(0.04173236626d0 + 625.6701923124d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*3.112752d-05*213.3472795478d0*sin(4.04410367056d0 + 213.3472795478d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*3.113686d-05*213.2509113282d0*sin(0.84631897443d0 + 213.2509113282d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*3.12861d-05*1368.660252845d0*sin(4.05501447962d0 + 1368.660252845d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*3.362357d-05*437.6438911399d0*sin(1.42090450141d0 + 437.6438911399d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*3.674488d-05*76.2660712756d0*sin(6.08210209796d0 + 76.2660712756d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*3.746363d-05*214.2623032845d0*sin(1.16965138821d0 + 214.2623032845d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*3.76176d-05*212.3358875915d0*sin(3.72112918055d0 + 212.3358875915d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*3.79145d-05*422.6660376129d0*sin(5.99767294831d0 + 422.6660376129d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*4.110608d-05*137.0330241624d0*sin(5.96149429852d0 + 137.0330241624d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*5.151002d-05*215.7467759928d0*sin(0.34669532534d0 + 215.7467759928d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*5.192695d-05*210.8514148832d0*sin(4.54584457909d0 + 210.8514148832d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*5.342763d-05*412.3710968744d0*sin(3.60061388095d0 + 412.3710968744d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*6.073312d-05*440.8252848776d0*sin(6.15905920767d0 + 440.8252848776d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*6.195302d-05*846.0828347512d0*sin(2.44963609645d0 + 846.0828347512d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*6.242626d-05*536.8045120954d0*sin(0.31189331943d0 + 536.8045120954d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*6.322091d-05*309.2783226558d0*sin(0.83910039496d0 + 309.2783226558d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*6.717261d-05*838.9692877504d0*sin(5.51887462475d0 + 838.9692877504d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*7.155271d-05*95.9792272178d0*sin(2.18154617097d0 + 95.9792272178d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*8.207194d-05*742.9900605326d0*sin(2.47939755305d0 + 742.9900605326d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*9.112965d-05*1052.2683831884d0*sin(4.32466741251d0 + 1052.2683831884d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*9.943629d-05*3.9321532631d0*sin(0.84628173449d0 + 3.9321532631d0 * t)
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

        saturn_x_1 = saturn_x_1 +(t**(0))*1*1.100929d-05*cos(4.07698729757d0 + 429.7795846137d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*1.100929d-05*429.7795846137d0*sin(4.07698729757d0 + 429.7795846137d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*1.126065d-05*cos(2.88172300482d0 + 860.3099287528d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*1.126065d-05*860.3099287528d0*sin(2.88172300482d0 + 860.3099287528d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*1.128732d-05*cos(5.45795307607d0 + 423.4167971383d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*1.128732d-05*423.4167971383d0*sin(5.45795307607d0 + 423.4167971383d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*1.270679d-05*cos(2.40338510736d0 + 415.5524906121d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*1.270679d-05*415.5524906121d0*sin(2.40338510736d0 + 415.5524906121d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*1.271587d-05*cos(0.09494045392d0 + 742.9900605326d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*1.271587d-05*742.9900605326d0*sin(0.09494045392d0 + 742.9900605326d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*1.330039d-05*cos(5.06312198727d0 + 234.6397364404d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*1.330039d-05*234.6397364404d0*sin(5.06312198727d0 + 234.6397364404d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*1.330665d-05*cos(1.90899526877d0 + 215.7467759928d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*1.330665d-05*215.7467759928d0*sin(1.90899526877d0 + 215.7467759928d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*1.341894d-05*cos(2.98929529398d0 + 210.8514148832d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*1.341894d-05*210.8514148832d0*sin(2.98929529398d0 + 210.8514148832d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*1.366833d-05*cos(2.02865467887d0 + 1066.49547719d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*1.366833d-05*1066.49547719d0*sin(2.02865467887d0 + 1066.49547719d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*1.467039d-05*cos(0.00015438412d0 + 529.6909650946d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*1.467039d-05*529.6909650946d0*sin(0.00015438412d0 + 529.6909650946d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*1.511486d-05*cos(6.23276511633d0 + 3.1813937377d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*1.511486d-05*3.1813937377d0*sin(6.23276511633d0 + 3.1813937377d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*1.544657d-05*cos(5.30307291724d0 + 330.6189636582d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*1.544657d-05*330.6189636582d0*sin(5.30307291724d0 + 330.6189636582d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*1.688471d-05*cos(3.98271487594d0 + 422.6660376129d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*1.688471d-05*422.6660376129d0*sin(3.98271487594d0 + 422.6660376129d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*1.692588d-05*cos(4.74243609118d0 + 536.8045120954d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*1.692588d-05*536.8045120954d0*sin(4.74243609118d0 + 536.8045120954d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*1.765306d-05*cos(0.75684456614d0 + 277.0349937414d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*1.765306d-05*277.0349937414d0*sin(0.75684456614d0 + 277.0349937414d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*1.876093d-05*cos(2.5238111389d0 + 3.9321532631d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*1.876093d-05*3.9321532631d0*sin(2.5238111389d0 + 3.9321532631d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*2.741305d-05*cos(4.09776900851d0 + 149.5631971346d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*2.741305d-05*149.5631971346d0*sin(4.09776900851d0 + 149.5631971346d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*2.761279d-05*cos(3.96260867581d0 + 95.9792272178d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*2.761279d-05*95.9792272178d0*sin(3.96260867581d0 + 95.9792272178d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*3.570311d-05*cos(5.10832701277d0 + 412.3710968744d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*3.570311d-05*412.3710968744d0*sin(5.10832701277d0 + 412.3710968744d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*3.699033d-05*cos(1.36420047437d0 + 522.5774180938d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*3.699033d-05*522.5774180938d0*sin(1.36420047437d0 + 522.5774180938d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*5.497618d-05*cos(4.40350640238d0 + 440.8252848776d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*5.497618d-05*440.8252848776d0*sin(4.40350640238d0 + 440.8252848776d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*5.515449d-05*cos(2.60541189759d0 + 11.0457002639d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*5.515449d-05*11.0457002639d0*sin(2.60541189759d0 + 11.0457002639d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*8.70684d-05*cos(6.03495025016d0 + 224.3447957019d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*8.70684d-05*224.3447957019d0*sin(6.03495025016d0 + 224.3447957019d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*9.87035d-05*cos(5.20065401876d0 + 202.2533951741d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*9.87035d-05*202.2533951741d0*sin(5.20065401876d0 + 202.2533951741d0 * t)
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

        saturn_x_2 = saturn_x_2 +(t**(1))*2*1.22819d-05*cos(0.42913693726d0 + 412.3710968744d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*1.22819d-05*412.3710968744d0*sin(0.42913693726d0 + 412.3710968744d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*1.842235d-05*cos(3.99299720318d0 + 323.5054166574d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*1.842235d-05*323.5054166574d0*sin(3.99299720318d0 + 323.5054166574d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*2.128734d-05*cos(0.28416516589d0 + 632.7837393132d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*2.128734d-05*632.7837393132d0*sin(0.28416516589d0 + 632.7837393132d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*2.502759d-05*cos(4.69464279172d0 + 117.3198682202d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*2.502759d-05*117.3198682202d0*sin(4.69464279172d0 + 117.3198682202d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*2.506135d-05*cos(1.74809205533d0 + 103.0927742186d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*2.506135d-05*103.0927742186d0*sin(1.74809205533d0 + 103.0927742186d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*2.537339d-05*cos(2.65097652412d0 + 440.8252848776d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*2.537339d-05*440.8252848776d0*sin(2.65097652412d0 + 440.8252848776d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*2.567381d-05*cos(1.74024227844d0 + 217.2312487011d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*2.567381d-05*217.2312487011d0*sin(1.74024227844d0 + 217.2312487011d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*2.659711d-05*cos(3.16731450403d0 + 209.3669421749d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*2.659711d-05*209.3669421749d0*sin(3.16731450403d0 + 209.3669421749d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*3.507416d-05*cos(0.78248949398d0 + 853.196381752d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*3.507416d-05*853.196381752d0*sin(0.78248949398d0 + 853.196381752d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*4.165287d-05*cos(5.32887778584d0 + 316.3918696566d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*4.165287d-05*316.3918696566d0*sin(5.32887778584d0 + 316.3918696566d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*4.651894d-05*cos(1.83710425038d0 + 647.0108333148d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*4.651894d-05*647.0108333148d0*sin(1.83710425038d0 + 647.0108333148d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*4.775993d-05*cos(1.81695167893d0 + 210.1177017003d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*4.775993d-05*210.1177017003d0*sin(1.81695167893d0 + 210.1177017003d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*4.92218d-05*cos(3.08463039042d0 + 216.4804891757d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*4.92218d-05*216.4804891757d0*sin(3.08463039042d0 + 216.4804891757d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*7.248688d-05*cos(5.70261917802d0 + 110.2063212194d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*7.248688d-05*110.2063212194d0*sin(5.70261917802d0 + 110.2063212194d0 * t)
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

        saturn_x_3 = saturn_x_3 +(t**(2))*3*1.023597d-05*cos(0.01138890289d0 + 647.0108333148d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*1.023597d-05*647.0108333148d0*sin(0.01138890289d0 + 647.0108333148d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*1.230371d-05*cos(4.38195871546d0 + 213.299095438d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*1.230371d-05*213.299095438d0*sin(4.38195871546d0 + 213.299095438d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*2.341707d-05*cos(3.06091721419d0 + 14.2270940016d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*2.341707d-05*14.2270940016d0*sin(3.06091721419d0 + 14.2270940016d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*2.973756d-05*cos(6.00031256382d0 + 639.897286314d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*2.973756d-05*639.897286314d0*sin(6.00031256382d0 + 639.897286314d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*3.467011d-05*cos(3.14591173603d0 + 199.0720014364d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*3.467011d-05*199.0720014364d0*sin(3.14591173603d0 + 199.0720014364d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*4.503883d-05*cos(2.24531651241d0 + 419.4846438752d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*4.503883d-05*419.4846438752d0*sin(2.24531651241d0 + 419.4846438752d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*7.401493d-05*cos(1.78627385772d0 + 227.5261894396d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*7.401493d-05*227.5261894396d0*sin(1.78627385772d0 + 227.5261894396d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*8.043886d-05*cos(3.12863814419d0 + 7.1135470008d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*8.043886d-05*7.1135470008d0*sin(3.12863814419d0 + 7.1135470008d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*8.992383d-05*cos(0.91696888396d0 + 433.7117378768d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*8.992383d-05*433.7117378768d0*sin(0.91696888396d0 + 433.7117378768d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*0.00010524182d0*cos(0.66368351849d0 + 426.598190876d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*0.00010524182d0*426.598190876d0*sin(0.66368351849d0 + 426.598190876d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*0.00018448888d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*0.00018448888d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*0.00075318954d0*cos(1.89208004954d0 + 220.4126424388d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*0.00075318954d0*220.4126424388d0*sin(1.89208004954d0 + 220.4126424388d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*0.00077093916d0*cos(2.97714400003d0 + 206.1855484372d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*0.00077093916d0*206.1855484372d0*sin(2.97714400003d0 + 206.1855484372d0 * t)

        saturn_x_4 = saturn_x_4 +(t**(3))*4*1.222718d-05*cos(5.41618706626d0 + 433.7117378768d0*t)
        saturn_x_4 = saturn_x_4 -(t**4)*1.222718d-05*433.7117378768d0*sin(5.41618706626d0 + 433.7117378768d0 * t)
        saturn_x_4 = saturn_x_4 +(t**(3))*4*1.510766d-05*cos(0.06561562614d0 + 227.5261894396d0*t)
        saturn_x_4 = saturn_x_4 -(t**4)*1.510766d-05*227.5261894396d0*sin(0.06561562614d0 + 227.5261894396d0 * t)
        saturn_x_4 = saturn_x_4 +(t**(3))*4*7.834416d-05*cos(0.13981692944d0 + 220.4126424388d0*t)
        saturn_x_4 = saturn_x_4 -(t**4)*7.834416d-05*220.4126424388d0*sin(0.13981692944d0 + 220.4126424388d0 * t)
        saturn_x_4 = saturn_x_4 +(t**(3))*4*7.957649d-05*cos(4.70523623227d0 + 206.1855484372d0*t)
        saturn_x_4 = saturn_x_4 -(t**4)*7.957649d-05*206.1855484372d0*sin(4.70523623227d0 + 206.1855484372d0 * t)

        r = saturn_x_4+saturn_x_3+saturn_x_2+saturn_x_1+saturn_x_0
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

        saturn_y_0 = saturn_y_0 -(t**0)*1.009165d-05*225.8292684102d0*sin(5.79971867848d0 + 225.8292684102d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.011157d-05*1471.7530270636d0*sin(0.27252410682d0 + 1471.7530270636d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.013844d-05*1059.3819301892d0*sin(1.37562258871d0 + 1059.3819301892d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.090434d-05*173.9422195228d0*sin(5.85087641969d0 + 173.9422195228d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.090717d-05*362.8622925726d0*sin(4.2563826302d0 + 362.8622925726d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.112304d-05*234.6397364404d0*sin(5.19114179785d0 + 234.6397364404d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.120498d-05*703.6331846174d0*sin(1.89478747163d0 + 703.6331846174d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.151687d-05*942.062061969d0*sin(1.78618989351d0 + 942.062061969d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.162485d-05*200.7689224658d0*sin(2.35044095493d0 + 200.7689224658d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.186448d-05*1685.0521225016d0*sin(5.38322854424d0 + 1685.0521225016d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.276111d-05*340.7708920448d0*sin(2.98754780759d0 + 340.7708920448d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.436654d-05*350.3321196004d0*sin(3.84293514986d0 + 350.3321196004d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.46249d-05*429.7795846137d0*sin(4.35286393311d0 + 429.7795846137d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.499907d-05*52.6901980395d0*sin(5.16859292196d0 + 52.6901980395d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.53978d-05*860.3099287528d0*sin(3.21449237414d0 + 860.3099287528d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.633768d-05*213.8203602998d0*sin(1.12043073218d0 + 213.8203602998d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.636695d-05*12.5301729722d0*sin(2.97402097142d0 + 12.5301729722d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.638713d-05*212.7778305762d0*sin(0.62823227849d0 + 212.7778305762d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*1.640707d-05*949.1756089698d0*sin(2.04694637546d0 + 949.1756089698d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*2.077451d-05*423.4167971383d0*sin(1.95682583751d0 + 423.4167971383d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*2.127828d-05*1.4844727083d0*sin(0.42532134789d0 + 1.4844727083d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*2.268608d-05*430.5303441391d0*sin(2.12403236555d0 + 430.5303441391d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*2.339111d-05*388.4651552382d0*sin(4.29619046322d0 + 388.4651552382d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*2.428822d-05*222.8603229936d0*sin(2.3993979858d0 + 222.8603229936d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*2.449132d-05*1155.361157407d0*sin(0.54252658898d0 + 1155.361157407d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*2.501957d-05*9.5612275556d0*sin(6.19958027393d0 + 9.5612275556d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*2.520223d-05*138.5174968707d0*sin(3.89344117733d0 + 138.5174968707d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*2.531663d-05*628.8515860501d0*sin(3.52630260061d0 + 628.8515860501d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*2.620709d-05*127.4717966068d0*sin(0.69738696032d0 + 127.4717966068d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*2.637903d-05*288.0806940053d0*sin(3.83678037157d0 + 288.0806940053d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*2.67026d-05*3.1813937377d0*sin(0.18164077956d0 + 3.1813937377d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*2.773819d-05*203.7378678824d0*sin(5.61593446938d0 + 203.7378678824d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*2.829614d-05*330.6189636582d0*sin(5.44452944307d0 + 330.6189636582d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*2.909579d-05*85.8272988312d0*sin(5.84815497128d0 + 85.8272988312d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*2.913908d-05*1066.49547719d0*sin(2.5899193557d0 + 1066.49547719d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*3.117166d-05*213.3472795478d0*sin(2.47259779969d0 + 213.3472795478d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*3.118048d-05*213.2509113282d0*sin(5.55799397309d0 + 213.2509113282d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*3.138264d-05*1368.660252845d0*sin(5.63040781132d0 + 1368.660252845d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*3.366302d-05*437.6438911399d0*sin(6.13299715431d0 + 437.6438911399d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*3.676804d-05*76.2660712756d0*sin(4.51090470038d0 + 76.2660712756d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*3.750939d-05*214.2623032845d0*sin(5.88125435107d0 + 214.2623032845d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*3.767674d-05*212.3358875915d0*sin(2.14954245794d0 + 212.3358875915d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*3.791258d-05*422.6660376129d0*sin(4.41806594234d0 + 422.6660376129d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*3.816713d-05*625.6701923124d0*sin(2.44107897815d0 + 625.6701923124d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*3.879403d-05*3.9321532631d0*sin(3.38065334501d0 + 3.9321532631d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*4.041434d-05*137.0330241624d0*sin(1.2447504583d0 + 137.0330241624d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*4.987241d-05*846.0828347512d0*sin(0.92163133661d0 + 846.0828347512d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*5.155105d-05*215.7467759928d0*sin(5.05796992379d0 + 215.7467759928d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*5.200364d-05*210.8514148832d0*sin(2.97482811217d0 + 210.8514148832d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*6.080448d-05*440.8252848776d0*sin(4.58758307965d0 + 440.8252848776d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*6.221723d-05*536.8045120954d0*sin(5.03120156259d0 + 536.8045120954d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*6.536938d-05*838.9692877504d0*sin(0.84256190288d0 + 838.9692877504d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*6.918461d-05*412.3710968744d0*sin(1.17089073634d0 + 412.3710968744d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*7.657437d-05*742.9900605326d0*sin(1.16709831318d0 + 742.9900605326d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*9.006036d-05*1052.2683831884d0*sin(5.87854541021d0 + 1052.2683831884d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*9.544823d-05*95.9792272178d0*sin(3.48777857215d0 + 95.9792272178d0 * t)
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

        saturn_y_1 = saturn_y_1 +(t**(0))*1*1.102045d-05*cos(2.50535926173d0 + 429.7795846137d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*1.102045d-05*429.7795846137d0*sin(2.50535926173d0 + 429.7795846137d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*1.127311d-05*cos(1.31087998856d0 + 860.3099287528d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*1.127311d-05*860.3099287528d0*sin(1.31087998856d0 + 860.3099287528d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*1.127628d-05*cos(3.8731011349d0 + 423.4167971383d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*1.127628d-05*423.4167971383d0*sin(3.8731011349d0 + 423.4167971383d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*1.173958d-05*cos(2.72608805865d0 + 846.0828347512d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*1.173958d-05*846.0828347512d0*sin(2.72608805865d0 + 846.0828347512d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*1.300561d-05*cos(0.8372757643d0 + 415.5524906121d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*1.300561d-05*415.5524906121d0*sin(0.8372757643d0 + 415.5524906121d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*1.314212d-05*cos(4.38807267093d0 + 625.6701923124d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*1.314212d-05*625.6701923124d0*sin(4.38807267093d0 + 625.6701923124d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*1.331406d-05*cos(0.33834520814d0 + 215.7467759928d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*1.331406d-05*215.7467759928d0*sin(0.33834520814d0 + 215.7467759928d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*1.332178d-05*cos(3.49199811942d0 + 234.6397364404d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*1.332178d-05*234.6397364404d0*sin(3.49199811942d0 + 234.6397364404d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*1.344507d-05*cos(1.41793614164d0 + 210.8514148832d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*1.344507d-05*210.8514148832d0*sin(1.41793614164d0 + 210.8514148832d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*1.360664d-05*cos(0.45530625979d0 + 1066.49547719d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*1.360664d-05*1066.49547719d0*sin(0.45530625979d0 + 1066.49547719d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*1.393361d-05*cos(4.62211146668d0 + 3.1813937377d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*1.393361d-05*3.1813937377d0*sin(4.62211146668d0 + 3.1813937377d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*1.519756d-05*cos(6.1290909803d0 + 3.9321532631d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*1.519756d-05*3.9321532631d0*sin(6.1290909803d0 + 3.9321532631d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*1.545875d-05*cos(3.73180287915d0 + 330.6189636582d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*1.545875d-05*330.6189636582d0*sin(3.73180287915d0 + 330.6189636582d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*1.672526d-05*cos(3.18810844159d0 + 536.8045120954d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*1.672526d-05*536.8045120954d0*sin(3.18810844159d0 + 536.8045120954d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*1.692304d-05*cos(2.39926742035d0 + 422.6660376129d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*1.692304d-05*422.6660376129d0*sin(2.39926742035d0 + 422.6660376129d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*1.744754d-05*cos(5.50576132273d0 + 277.0349937414d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*1.744754d-05*277.0349937414d0*sin(5.50576132273d0 + 277.0349937414d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*2.423372d-05*cos(2.64373010772d0 + 522.5774180938d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*2.423372d-05*522.5774180938d0*sin(2.64373010772d0 + 522.5774180938d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*2.745113d-05*cos(2.52862121261d0 + 149.5631971346d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*2.745113d-05*149.5631971346d0*sin(2.52862121261d0 + 149.5631971346d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*4.047069d-05*cos(5.17479134124d0 + 95.9792272178d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*4.047069d-05*95.9792272178d0*sin(5.17479134124d0 + 95.9792272178d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*4.177277d-05*cos(3.01038599928d0 + 412.3710968744d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*4.177277d-05*412.3710968744d0*sin(3.01038599928d0 + 412.3710968744d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*5.427246d-05*cos(1.03183073701d0 + 11.0457002639d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*5.427246d-05*11.0457002639d0*sin(1.03183073701d0 + 11.0457002639d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*5.504485d-05*cos(2.83207431701d0 + 440.8252848776d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*5.504485d-05*440.8252848776d0*sin(2.83207431701d0 + 440.8252848776d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*6.584549d-05*cos(4.07328504513d0 + 309.2783226558d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*6.584549d-05*309.2783226558d0*sin(4.07328504513d0 + 309.2783226558d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*8.725278d-05*cos(4.46324685676d0 + 224.3447957019d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*8.725278d-05*224.3447957019d0*sin(4.46324685676d0 + 224.3447957019d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*9.902653d-05*cos(3.60258639503d0 + 202.2533951741d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*9.902653d-05*202.2533951741d0*sin(3.60258639503d0 + 202.2533951741d0 * t)
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

        saturn_y_2 = saturn_y_2 +(t**(1))*2*1.177094d-05*cos(5.84487292439d0 + 309.2783226558d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*1.177094d-05*309.2783226558d0*sin(5.84487292439d0 + 309.2783226558d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*1.351292d-05*cos(4.81674779715d0 + 412.3710968744d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*1.351292d-05*412.3710968744d0*sin(4.81674779715d0 + 412.3710968744d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*1.828667d-05*cos(2.43398377331d0 + 323.5054166574d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*1.828667d-05*323.5054166574d0*sin(2.43398377331d0 + 323.5054166574d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*2.158545d-05*cos(4.99876489338d0 + 632.7837393132d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*2.158545d-05*632.7837393132d0*sin(4.99876489338d0 + 632.7837393132d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*2.507213d-05*cos(3.11896693485d0 + 117.3198682202d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*2.507213d-05*117.3198682202d0*sin(3.11896693485d0 + 117.3198682202d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*2.540502d-05*cos(1.07964699287d0 + 440.8252848776d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*2.540502d-05*440.8252848776d0*sin(1.07964699287d0 + 440.8252848776d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*2.567284d-05*cos(0.16811215438d0 + 217.2312487011d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*2.567284d-05*217.2312487011d0*sin(0.16811215438d0 + 217.2312487011d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*2.660411d-05*cos(1.58795353685d0 + 209.3669421749d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*2.660411d-05*209.3669421749d0*sin(1.58795353685d0 + 209.3669421749d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*2.742669d-05*cos(6.2194241061d0 + 103.0927742186d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*2.742669d-05*103.0927742186d0*sin(6.2194241061d0 + 103.0927742186d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*3.508567d-05*cos(5.49278691726d0 + 853.196381752d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*3.508567d-05*853.196381752d0*sin(5.49278691726d0 + 853.196381752d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*4.165917d-05*cos(3.7320357174d0 + 316.3918696566d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*4.165917d-05*316.3918696566d0*sin(3.7320357174d0 + 316.3918696566d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*4.657269d-05*cos(0.26558212048d0 + 647.0108333148d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*4.657269d-05*647.0108333148d0*sin(0.26558212048d0 + 647.0108333148d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*4.788186d-05*cos(0.24337888601d0 + 210.1177017003d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*4.788186d-05*210.1177017003d0*sin(0.24337888601d0 + 210.1177017003d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*4.932685d-05*cos(1.51301176465d0 + 216.4804891757d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*4.932685d-05*216.4804891757d0*sin(1.51301176465d0 + 216.4804891757d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*6.672789d-05*cos(4.24754247893d0 + 110.2063212194d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*6.672789d-05*110.2063212194d0*sin(4.24754247893d0 + 110.2063212194d0 * t)
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

        saturn_y_3 = saturn_y_3 +(t**(2))*3*1.023972d-05*cos(4.72338150445d0 + 647.0108333148d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*1.023972d-05*647.0108333148d0*sin(4.72338150445d0 + 647.0108333148d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*2.375829d-05*cos(1.46232991989d0 + 14.2270940016d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*2.375829d-05*14.2270940016d0*sin(1.46232991989d0 + 14.2270940016d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*2.98112d-05*cos(4.42869532103d0 + 639.897286314d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*2.98112d-05*639.897286314d0*sin(4.42869532103d0 + 639.897286314d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*3.58067d-05*cos(1.5146619824d0 + 199.0720014364d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*3.58067d-05*199.0720014364d0*sin(1.5146619824d0 + 199.0720014364d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*4.505795d-05*cos(0.67249306339d0 + 419.4846438752d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*4.505795d-05*419.4846438752d0*sin(0.67249306339d0 + 419.4846438752d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*7.415913d-05*cos(0.21442311819d0 + 227.5261894396d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*7.415913d-05*227.5261894396d0*sin(0.21442311819d0 + 227.5261894396d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*8.29736d-05*cos(1.52263020988d0 + 7.1135470008d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*8.29736d-05*7.1135470008d0*sin(1.52263020988d0 + 7.1135470008d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*9.007608d-05*cos(5.62865492125d0 + 433.7117378768d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*9.007608d-05*433.7117378768d0*sin(5.62865492125d0 + 433.7117378768d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*0.0001066917d0*cos(5.364956122d0 + 426.598190876d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*0.0001066917d0*426.598190876d0*sin(5.364956122d0 + 426.598190876d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*0.00022841198d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*0.00022841198d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*0.00075542804d0*cos(0.31962897945d0 + 220.4126424388d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*0.00075542804d0*220.4126424388d0*sin(0.31962897945d0 + 220.4126424388d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*0.00077354527d0*cos(1.40391035241d0 + 206.1855484372d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*0.00077354527d0*206.1855484372d0*sin(1.40391035241d0 + 206.1855484372d0 * t)

        saturn_y_4 = saturn_y_4 +(t**(3))*4*1.22522d-05*cos(3.84500353256d0 + 433.7117378768d0*t)
        saturn_y_4 = saturn_y_4 -(t**4)*1.22522d-05*433.7117378768d0*sin(3.84500353256d0 + 433.7117378768d0 * t)
        saturn_y_4 = saturn_y_4 +(t**(3))*4*1.514404d-05*cos(4.77675736118d0 + 227.5261894396d0*t)
        saturn_y_4 = saturn_y_4 -(t**4)*1.514404d-05*227.5261894396d0*sin(4.77675736118d0 + 227.5261894396d0 * t)
        saturn_y_4 = saturn_y_4 +(t**(3))*4*7.866134d-05*cos(4.84940259473d0 + 220.4126424388d0*t)
        saturn_y_4 = saturn_y_4 -(t**4)*7.866134d-05*220.4126424388d0*sin(4.84940259473d0 + 220.4126424388d0 * t)
        saturn_y_4 = saturn_y_4 +(t**(3))*4*7.976609d-05*cos(3.13229267905d0 + 206.1855484372d0*t)
        saturn_y_4 = saturn_y_4 -(t**4)*7.976609d-05*206.1855484372d0*sin(3.13229267905d0 + 206.1855484372d0 * t)

        r = saturn_y_4+saturn_y_3+saturn_y_2+saturn_y_1+saturn_y_0
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

        saturn_z_0 = saturn_z_0 -(t**0)*1.014889d-05*647.0108333148d0*sin(1.97897277665d0 + 647.0108333148d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*1.028445d-05*415.5524906121d0*sin(2.11933097909d0 + 415.5524906121d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*1.092497d-05*216.4804891757d0*sin(3.10679381209d0 + 216.4804891757d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*1.097941d-05*210.1177017003d0*sin(0.96097709156d0 + 210.1177017003d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*1.148029d-05*117.3198682202d0*sin(4.41145011466d0 + 117.3198682202d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*1.423982d-05*522.5774180938d0*sin(3.11558318997d0 + 522.5774180938d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*1.701916d-05*735.8765135318d0*sin(1.89892525654d0 + 735.8765135318d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*1.800493d-05*529.6909650946d0*sin(5.12194244143d0 + 529.6909650946d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*1.940777d-05*14.2270940016d0*sin(4.59422357831d0 + 14.2270940016d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*1.989569d-05*199.0720014364d0*sin(0.73166484127d0 + 199.0720014364d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*2.342675d-05*853.196381752d0*sin(1.34556621598d0 + 853.196381752d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*2.42418d-05*63.7358983034d0*sin(2.92931088398d0 + 63.7358983034d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*2.683108d-05*224.3447957019d0*sin(4.87673933693d0 + 224.3447957019d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*2.962647d-05*217.2312487011d0*sin(0.46490184985d0 + 217.2312487011d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*3.088992d-05*209.3669421749d0*sin(3.62572857085d0 + 209.3669421749d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*3.379535d-05*11.0457002639d0*sin(2.13867177875d0 + 11.0457002639d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*3.613072d-05*227.5261894396d0*sin(3.35210458559d0 + 227.5261894396d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*3.711659d-05*632.7837393132d0*sin(5.055737955d0 + 632.7837393132d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*3.901809d-05*323.5054166574d0*sin(3.71512735501d0 + 323.5054166574d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*4.577011d-05*38.1330356378d0*sin(4.56990158929d0 + 38.1330356378d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*5.397142d-05*202.2533951741d0*sin(5.13204682732d0 + 202.2533951741d0 * t)
        saturn_z_0 = saturn_z_0 -(t**0)*9.004046d-05*103.0927742186d0*sin(1.38192071602d0 + 103.0927742186d0 * t)
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

        saturn_z_1 = saturn_z_1 +(t**(0))*1*1.209044d-05*cos(2.91141318291d0 + 14.2270940016d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*1.209044d-05*14.2270940016d0*sin(2.91141318291d0 + 14.2270940016d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*1.541549d-05*cos(2.42323929864d0 + 199.0720014364d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*1.541549d-05*199.0720014364d0*sin(2.42323929864d0 + 199.0720014364d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*1.734454d-05*cos(3.51648726804d0 + 103.0927742186d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*1.734454d-05*103.0927742186d0*sin(3.51648726804d0 + 103.0927742186d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*2.723345d-05*cos(1.65580153042d0 + 227.5261894396d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*2.723345d-05*227.5261894396d0*sin(1.65580153042d0 + 227.5261894396d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*3.816033d-05*cos(4.38281692683d0 + 110.2063212194d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*3.816033d-05*110.2063212194d0*sin(4.38281692683d0 + 110.2063212194d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*4.96511d-05*cos(0.19046416304d0 + 316.3918696566d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*4.96511d-05*316.3918696566d0*sin(0.19046416304d0 + 316.3918696566d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*7.468572d-05*cos(0.93135975352d0 + 433.7117378768d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*7.468572d-05*433.7117378768d0*sin(0.93135975352d0 + 433.7117378768d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*9.114816d-05*cos(6.17205939393d0 + 639.897286314d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*9.114816d-05*639.897286314d0*sin(6.17205939393d0 + 639.897286314d0 * t)
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

        saturn_z_2 = saturn_z_2 +(t**(1))*2*1.036141d-05*cos(4.33916742809d0 + 639.897286314d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*1.036141d-05*639.897286314d0*sin(4.33916742809d0 + 639.897286314d0 * t)
        saturn_z_2 = saturn_z_2 +(t**(1))*2*1.055082d-05*cos(6.23890821882d0 + 227.5261894396d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*1.055082d-05*227.5261894396d0*sin(6.23890821882d0 + 227.5261894396d0 * t)
        saturn_z_2 = saturn_z_2 +(t**(1))*2*1.844271d-05*cos(5.43612384912d0 + 433.7117378768d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*1.844271d-05*433.7117378768d0*sin(5.43612384912d0 + 433.7117378768d0 * t)
        saturn_z_2 = saturn_z_2 +(t**(1))*2*2.645589d-05*cos(2.94607374034d0 + 419.4846438752d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*2.645589d-05*419.4846438752d0*sin(2.94607374034d0 + 419.4846438752d0 * t)
        saturn_z_2 = saturn_z_2 +(t**(1))*2*2.825589d-05*cos(1.36584703698d0 + 7.1135470008d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*2.825589d-05*7.1135470008d0*sin(1.36584703698d0 + 7.1135470008d0 * t)
        saturn_z_2 = saturn_z_2 +(t**(1))*2*3.136555d-05*cos(0.0d0 + 0.0d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*3.136555d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_z_2 = saturn_z_2 +(t**(1))*2*6.866944d-05*cos(5.48420260868d0 + 426.598190876d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*6.866944d-05*426.598190876d0*sin(5.48420260868d0 + 426.598190876d0 * t)
        saturn_z_2 = saturn_z_2 +(t**(1))*2*0.00019316662d0*cos(0.0922875161d0 + 220.4126424388d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*0.00019316662d0*220.4126424388d0*sin(0.0922875161d0 + 220.4126424388d0 * t)
        saturn_z_2 = saturn_z_2 +(t**(1))*2*0.00030139033d0*cos(3.91396211806d0 + 206.1855484372d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*0.00030139033d0*206.1855484372d0*sin(3.91396211806d0 + 206.1855484372d0 * t)
        saturn_z_2 = saturn_z_2 +(t**(1))*2*0.00131237677d0*cos(0.08868998014d0 + 213.299095438d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*0.00131237677d0*213.299095438d0*sin(0.08868998014d0 + 213.299095438d0 * t)

        saturn_z_3 = saturn_z_3 +(t**(2))*3*2.507526d-05*cos(4.64959056313d0 + 220.4126424388d0*t)
        saturn_z_3 = saturn_z_3 -(t**3)*2.507526d-05*220.4126424388d0*sin(4.64959056313d0 + 220.4126424388d0 * t)
        saturn_z_3 = saturn_z_3 +(t**(2))*3*3.964164d-05*cos(0.0d0 + 0.0d0*t)
        saturn_z_3 = saturn_z_3 -(t**3)*3.964164d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_z_3 = saturn_z_3 +(t**(2))*3*4.558118d-05*cos(1.70646871501d0 + 213.299095438d0*t)
        saturn_z_3 = saturn_z_3 -(t**3)*4.558118d-05*213.299095438d0*sin(1.70646871501d0 + 213.299095438d0 * t)
        saturn_z_3 = saturn_z_3 +(t**(2))*3*4.77771d-05*cos(5.5772375633d0 + 206.1855484372d0*t)
        saturn_z_3 = saturn_z_3 -(t**3)*4.77771d-05*206.1855484372d0*sin(5.5772375633d0 + 206.1855484372d0 * t)

        r = saturn_z_3+saturn_z_2+saturn_z_1+saturn_z_0
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

        sun_x_0 = sun_x_0 -(t**0)*1.185835d-05*76.2660712756d0*sin(0.77770585045d0 + 76.2660712756d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*1.406367d-05*536.8045120954d0*sin(0.4759833515d0 + 536.8045120954d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*1.434208d-05*522.5774180938d0*sin(3.86895363775d0 + 522.5774180938d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*1.888831d-05*220.4126424388d0*sin(3.89252804366d0 + 220.4126424388d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*1.940649d-05*149.5631971346d0*sin(4.79769963661d0 + 149.5631971346d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*1.94138d-05*206.1855484372d0*sin(1.01219474101d0 + 206.1855484372d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*7.577257d-05*426.598190876d0*sin(3.24151897354d0 + 426.598190876d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*0.00012013079d0*1059.3819301892d0*sin(4.09073224903d0 + 1059.3819301892d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*0.00029374249d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*0.00083792997d0*74.7815985673d0*sin(2.33967985523d0 + 74.7815985673d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*0.00155435675d0*38.1330356378d0*sin(2.17052050061d0 + 38.1330356378d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*0.00271802376d0*213.299095438d0*sin(4.01601149775d0 + 213.299095438d0 * t)
        sun_x_0 = sun_x_0 -(t**0)*0.00495672739d0*529.6909650946d0*sin(3.74107356792d0 + 529.6909650946d0 * t)

        sun_x_1 = sun_x_1 +(t**(0))*1*1.296073d-05*cos(3.14159265359d0 + 0.0d0*t)
        sun_x_1 = sun_x_1 -(t**1)*1.296073d-05*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        r = sun_x_1+sun_x_0
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

        sun_y_0 = sun_y_0 -(t**0)*1.185515d-05*76.2660712756d0*sin(5.48969329104d0 + 76.2660712756d0 * t)
        sun_y_0 = sun_y_0 -(t**0)*1.405975d-05*536.8045120954d0*sin(5.18858607879d0 + 536.8045120954d0 * t)
        sun_y_0 = sun_y_0 -(t**0)*1.436841d-05*522.5774180938d0*sin(2.30161968078d0 + 522.5774180938d0 * t)
        sun_y_0 = sun_y_0 -(t**0)*1.891503d-05*220.4126424388d0*sin(2.32096821003d0 + 220.4126424388d0 * t)
        sun_y_0 = sun_y_0 -(t**0)*1.940124d-05*149.5631971346d0*sin(3.22686130461d0 + 149.5631971346d0 * t)
        sun_y_0 = sun_y_0 -(t**0)*1.963743d-05*206.1855484372d0*sin(5.70773655842d0 + 206.1855484372d0 * t)
        sun_y_0 = sun_y_0 -(t**0)*7.58583d-05*426.598190876d0*sin(1.66995483217d0 + 426.598190876d0 * t)
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

        sun_z_0 = sun_z_0 -(t**0)*1.131046d-05*74.7815985673d0*sin(5.75877139035d0 + 74.7815985673d0 * t)
        sun_z_0 = sun_z_0 -(t**0)*1.152656d-05*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        sun_z_0 = sun_z_0 -(t**0)*4.802048d-05*38.1330356378d0*sin(4.5826472337d0 + 38.1330356378d0 * t)
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

        uranus_x_0 = uranus_x_0 -(t**0)*1.009252d-05*74.0308390419d0*sin(2.02320517037d0 + 74.0308390419d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.040948d-05*5.4166259714d0*sin(2.74644165501d0 + 5.4166259714d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.056848d-05*14.0146456805d0*sin(5.53440854164d0 + 14.0146456805d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.07781d-05*128.9562693151d0*sin(1.0568590092d0 + 128.9562693151d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.077916d-05*181.7583419392d0*sin(5.01417740021d0 + 181.7583419392d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.093678d-05*230.5645708254d0*sin(3.94451812233d0 + 230.5645708254d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.144565d-05*296.1574488526d0*sin(2.42148845239d0 + 296.1574488526d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.164218d-05*81.8951455681d0*sin(2.08302637541d0 + 81.8951455681d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.192274d-05*50.4025761791d0*sin(5.58661990233d0 + 50.4025761791d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.212025d-05*211.8146227297d0*sin(3.4157783266d0 + 211.8146227297d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.221506d-05*54.1746707478d0*sin(5.20012455894d0 + 54.1746707478d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.223648d-05*187.6962327724d0*sin(3.8437351464d0 + 187.6962327724d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.241589d-05*134.5853436076d0*sin(1.81282962357d0 + 134.5853436076d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.256867d-05*67.6680515665d0*sin(5.61684736425d0 + 67.6680515665d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.263032d-05*404.5067903482d0*sin(5.63689596853d0 + 404.5067903482d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.269686d-05*142.4496501338d0*sin(2.66330104031d0 + 142.4496501338d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.335202d-05*380.12776796d0*sin(2.17623376867d0 + 380.12776796d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.346494d-05*288.0806940053d0*sin(5.46766563529d0 + 288.0806940053d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.4183d-05*235.3904959658d0*sin(2.29718712012d0 + 235.3904959658d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.42718d-05*92.940845832d0*sin(0.38786175669d0 + 92.940845832d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.467268d-05*2.4476805548d0*sin(2.10975578758d0 + 2.4476805548d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.495017d-05*220.4126424388d0*sin(0.22268077239d0 + 220.4126424388d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.52918d-05*191.2076949102d0*sin(2.0520410482d0 + 191.2076949102d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.558489d-05*59.8037450403d0*sin(6.16891070489d0 + 59.8037450403d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.574905d-05*39.3568759152d0*sin(5.72297800263d0 + 39.3568759152d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.672893d-05*143.6253063014d0*sin(0.01232646186d0 + 143.6253063014d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.677659d-05*8.0767548473d0*sin(0.42525121334d0 + 8.0767548473d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.744555d-05*56.6223513026d0*sin(0.82022450313d0 + 56.6223513026d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.768763d-05*219.891377577d0*sin(1.1925448162d0 + 219.891377577d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.792522d-05*74.9416572617d0*sin(2.08789166984d0 + 74.9416572617d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.796558d-05*74.6215398729d0*sin(5.73271543335d0 + 74.6215398729d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.797047d-05*227.3137411185d0*sin(1.73417465594d0 + 227.3137411185d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.862003d-05*42.5864537627d0*sin(1.67534522569d0 + 42.5864537627d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.891213d-05*300.6108669775d0*sin(5.49941424248d0 + 300.6108669775d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.892359d-05*154.0166152595d0*sin(4.32128621847d0 + 154.0166152595d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.912582d-05*14.977853527d0*sin(5.83091918696d0 + 14.977853527d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.927679d-05*159.1244246902d0*sin(1.29228021932d0 + 159.1244246902d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.933814d-05*74.7334144575d0*sin(5.75490033864d0 + 74.7334144575d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.933817d-05*74.8297826771d0*sin(2.06557585395d0 + 74.8297826771d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.965145d-05*20.6069278195d0*sin(0.09207526632d0 + 20.6069278195d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*2.064173d-05*835.0371344873d0*sin(3.6020860641d0 + 835.0371344873d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*2.075591d-05*131.4039498699d0*sin(3.15586933464d0 + 131.4039498699d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*2.126427d-05*75.0422309982d0*sin(3.61171465436d0 + 75.0422309982d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*2.138391d-05*74.5209661364d0*sin(4.20897429922d0 + 74.5209661364d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*2.182901d-05*479.2883889155d0*sin(1.23755478345d0 + 479.2883889155d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*2.215516d-05*259.5088859231d0*sin(2.18613112875d0 + 259.5088859231d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*2.232022d-05*80.7194894005d0*sin(0.63571664756d0 + 80.7194894005d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*2.241129d-05*3.1813937377d0*sin(5.22377697501d0 + 3.1813937377d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*2.528025d-05*68.8437077341d0*sin(0.89508396542d0 + 68.8437077341d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*2.541716d-05*32.1951448046d0*sin(0.64495056482d0 + 32.1951448046d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*2.560744d-05*80.1982245387d0*sin(4.4423622345d0 + 80.1982245387d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*2.576509d-05*277.0349937414d0*sin(3.8466342321d0 + 277.0349937414d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*2.597765d-05*96.8729990951d0*sin(0.22409539936d0 + 96.8729990951d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*2.631138d-05*305.3461693927d0*sin(0.04831552531d0 + 305.3461693927d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*2.722745d-05*106.9767433719d0*sin(6.09456175016d0 + 106.9767433719d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*2.882392d-05*373.9079928365d0*sin(2.76136583899d0 + 373.9079928365d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*3.31234d-05*82.8583534146d0*sin(0.52418923788d0 + 82.8583534146d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*3.383674d-05*7.1135470008d0*sin(5.12516331582d0 + 7.1135470008d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*3.559276d-05*5.9378908332d0*sin(1.47627607503d0 + 5.9378908332d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*3.577938d-05*137.0330241624d0*sin(1.11558436434d0 + 137.0330241624d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*4.233075d-05*265.9892934775d0*sin(3.94913608184d0 + 265.9892934775d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*4.447622d-05*114.3991069134d0*sin(0.29332757659d0 + 114.3991069134d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*4.478123d-05*66.70484372d0*sin(1.11838191479d0 + 66.70484372d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*4.515952d-05*75.7448064138d0*sin(2.8857630312d0 + 75.7448064138d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*4.57047d-05*183.2428146475d0*sin(0.97536665751d0 + 183.2428146475d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*4.751325d-05*73.8183907208d0*sin(4.95762395337d0 + 73.8183907208d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*5.038353d-05*18.1592472647d0*sin(4.68664376918d0 + 18.1592472647d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*5.354242d-05*74.2603337055d0*sin(3.69263973447d0 + 74.2603337055d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*5.372927d-05*75.3028634291d0*sin(4.12498282863d0 + 75.3028634291d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*5.505358d-05*140.001969579d0*sin(3.31282108025d0 + 140.001969579d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*6.262602d-05*153.4953503977d0*sin(1.71385983783d0 + 153.4953503977d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*6.669249d-05*62.2514255951d0*sin(5.08626589612d0 + 62.2514255951d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*7.095608d-05*297.6419215609d0*sin(1.30384750044d0 + 297.6419215609d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*7.798974d-05*340.7708920448d0*sin(5.82410372587d0 + 340.7708920448d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*8.738409d-05*186.2117600641d0*sin(4.96956808452d0 + 186.2117600641d0 * t)
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

        uranus_x_1 = uranus_x_1 +(t**(0))*1*1.029261d-05*cos(5.42434597865d0 + 109.9456887885d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*1.029261d-05*109.9456887885d0*sin(5.42434597865d0 + 109.9456887885d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*1.061312d-05*cos(5.0012510538d0 + 131.4039498699d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*1.061312d-05*131.4039498699d0*sin(5.0012510538d0 + 131.4039498699d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*1.099691d-05*cos(1.35138854505d0 + 62.2514255951d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*1.099691d-05*62.2514255951d0*sin(1.35138854505d0 + 62.2514255951d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*1.239315d-05*cos(0.98221206501d0 + 4.4534181249d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*1.239315d-05*4.4534181249d0*sin(0.98221206501d0 + 4.4534181249d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*1.427088d-05*cos(1.45690759014d0 + 70.3281804424d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*1.427088d-05*70.3281804424d0*sin(1.45690759014d0 + 70.3281804424d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*1.476317d-05*cos(3.67283851029d0 + 75.7448064138d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*1.476317d-05*75.7448064138d0*sin(3.67283851029d0 + 75.7448064138d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*1.476617d-05*cos(3.53047075439d0 + 3.1813937377d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*1.476617d-05*3.1813937377d0*sin(3.53047075439d0 + 3.1813937377d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*1.533469d-05*cos(3.71776498048d0 + 152.5321425512d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*1.533469d-05*152.5321425512d0*sin(3.71776498048d0 + 152.5321425512d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*1.555444d-05*cos(4.13741667297d0 + 73.8183907208d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*1.555444d-05*73.8183907208d0*sin(4.13741667297d0 + 73.8183907208d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*1.600865d-05*cos(0.08376247543d0 + 79.2350166922d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*1.600865d-05*79.2350166922d0*sin(0.08376247543d0 + 79.2350166922d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*1.624493d-05*cos(3.75817281127d0 + 153.4953503977d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*1.624493d-05*153.4953503977d0*sin(3.75817281127d0 + 153.4953503977d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*1.707504d-05*cos(1.11296012106d0 + 225.8292684102d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*1.707504d-05*225.8292684102d0*sin(1.11296012106d0 + 225.8292684102d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*1.716831d-05*cos(3.39415662657d0 + 222.8603229936d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*1.716831d-05*222.8603229936d0*sin(3.39415662657d0 + 222.8603229936d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*1.734228d-05*cos(5.39619902298d0 + 146.594251718d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*1.734228d-05*146.594251718d0*sin(5.39619902298d0 + 146.594251718d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*1.747266d-05*cos(3.24870046809d0 + 77.2292791221d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*1.747266d-05*77.2292791221d0*sin(3.24870046809d0 + 77.2292791221d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*1.941329d-05*cos(2.39889176495d0 + 39.6175083461d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*1.941329d-05*39.6175083461d0*sin(2.39889176495d0 + 39.6175083461d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*2.216987d-05*cos(4.78338909951d0 + 72.3339180125d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*2.216987d-05*72.3339180125d0*sin(4.78338909951d0 + 72.3339180125d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*2.228396d-05*cos(0.18087986338d0 + 87.3117715395d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*2.228396d-05*87.3117715395d0*sin(0.18087986338d0 + 87.3117715395d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*2.525203d-05*cos(2.83821144961d0 + 18.1592472647d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*2.525203d-05*18.1592472647d0*sin(2.83821144961d0 + 18.1592472647d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*2.545264d-05*cos(3.36768337628d0 + 9.5612275556d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*2.545264d-05*9.5612275556d0*sin(3.36768337628d0 + 9.5612275556d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*2.647073d-05*cos(4.53813176345d0 + 12.5301729722d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*2.647073d-05*12.5301729722d0*sin(4.53813176345d0 + 12.5301729722d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*2.802392d-05*cos(3.76505436434d0 + 52.6901980395d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*2.802392d-05*52.6901980395d0*sin(3.76505436434d0 + 52.6901980395d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*2.824668d-05*cos(3.40143685673d0 + 84.3428261229d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*2.824668d-05*84.3428261229d0*sin(3.40143685673d0 + 84.3428261229d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*2.834328d-05*cos(4.88889623484d0 + 213.299095438d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*2.834328d-05*213.299095438d0*sin(4.88889623484d0 + 213.299095438d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*2.910312d-05*cos(5.9194133305d0 + 127.4717966068d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*2.910312d-05*127.4717966068d0*sin(5.9194133305d0 + 127.4717966068d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*3.177614d-05*cos(4.65226634926d0 + 299.1263942692d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*3.177614d-05*299.1263942692d0*sin(4.65226634926d0 + 299.1263942692d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*3.933541d-05*cos(4.73864204208d0 + 65.2203710117d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*3.933541d-05*65.2203710117d0*sin(4.73864204208d0 + 65.2203710117d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*4.127713d-05*cos(1.48475181305d0 + 22.0914005278d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*4.127713d-05*22.0914005278d0*sin(1.48475181305d0 + 22.0914005278d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*4.378335d-05*cos(3.7429632224d0 + 160.6088973985d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*4.378335d-05*160.6088973985d0*sin(3.7429632224d0 + 160.6088973985d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*6.995857d-05*cos(2.40633283814d0 + 145.6310438715d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*6.995857d-05*145.6310438715d0*sin(2.40633283814d0 + 145.6310438715d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*7.291691d-05*cos(2.23597571444d0 + 2.9689454166d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*7.291691d-05*2.9689454166d0*sin(2.23597571444d0 + 2.9689454166d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*7.425078d-05*cos(6.20357977116d0 + 77.962992305d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*7.425078d-05*77.962992305d0*sin(6.20357977116d0 + 77.962992305d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*7.585264d-05*cos(2.7607421833d0 + 148.0787244263d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*7.585264d-05*148.0787244263d0*sin(2.7607421833d0 + 148.0787244263d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*7.735984d-05*cos(1.61349552789d0 + 71.6002048296d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*7.735984d-05*71.6002048296d0*sin(1.61349552789d0 + 71.6002048296d0 * t)
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

        uranus_x_2 = uranus_x_2 +(t**(1))*2*1.04025d-05*cos(0.73133408837d0 + 145.6310438715d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*1.04025d-05*145.6310438715d0*sin(0.73133408837d0 + 145.6310438715d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*1.0461d-05*cos(5.85311910228d0 + 224.3447957019d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*1.0461d-05*224.3447957019d0*sin(5.85311910228d0 + 224.3447957019d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*2.221373d-05*cos(0.87427485235d0 + 3.9321532631d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*2.221373d-05*3.9321532631d0*sin(0.87427485235d0 + 3.9321532631d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*2.336552d-05*cos(0.0d0 + 0.0d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*2.336552d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*2.413832d-05*cos(4.4586522569d0 + 77.962992305d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*2.413832d-05*77.962992305d0*sin(4.4586522569d0 + 77.962992305d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*2.521797d-05*cos(3.36028253173d0 + 71.6002048296d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*2.521797d-05*71.6002048296d0*sin(3.36028253173d0 + 71.6002048296d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*3.002124d-05*cos(4.07944398452d0 + 138.5174968707d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*3.002124d-05*138.5174968707d0*sin(4.07944398452d0 + 138.5174968707d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*4.874936d-05*cos(5.68616132176d0 + 76.2660712756d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*4.874936d-05*76.2660712756d0*sin(5.68616132176d0 + 76.2660712756d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*5.021971d-05*cos(3.04632772928d0 + 78.7137518304d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*5.021971d-05*78.7137518304d0*sin(3.04632772928d0 + 78.7137518304d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*5.284684d-05*cos(2.11901942097d0 + 73.297125859d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*5.284684d-05*73.297125859d0*sin(2.11901942097d0 + 73.297125859d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*5.408033d-05*cos(4.78033642303d0 + 70.8494453042d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*5.408033d-05*70.8494453042d0*sin(4.78033642303d0 + 70.8494453042d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*6.717313d-05*cos(5.31264214501d0 + 85.8272988312d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*6.717313d-05*85.8272988312d0*sin(5.31264214501d0 + 85.8272988312d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*7.497619d-05*cos(3.83429136661d0 + 11.0457002639d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*7.497619d-05*11.0457002639d0*sin(3.83429136661d0 + 11.0457002639d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*8.053623d-05*cos(2.54646146122d0 + 63.7358983034d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*8.053623d-05*63.7358983034d0*sin(2.54646146122d0 + 63.7358983034d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*0.00010915299d0*cos(3.0298777627d0 + 149.5631971346d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*0.00010915299d0*149.5631971346d0*sin(3.0298777627d0 + 149.5631971346d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*0.00016015031d0*cos(3.83700030134d0 + 74.7815985673d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*0.00016015031d0*74.7815985673d0*sin(3.83700030134d0 + 74.7815985673d0 * t)

        uranus_x_3 = uranus_x_3 +(t**(2))*3*1.309056d-05*cos(0.0d0 + 0.0d0*t)
        uranus_x_3 = uranus_x_3 -(t**3)*1.309056d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)

        r = uranus_x_3+uranus_x_2+uranus_x_1+uranus_x_0
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

        uranus_y_0 = uranus_y_0 -(t**0)*1.009454d-05*74.0308390419d0*sin(0.45375065997d0 + 74.0308390419d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.015998d-05*35.4247226521d0*sin(1.00290501307d0 + 35.4247226521d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.035262d-05*5.4166259714d0*sin(1.20639876458d0 + 5.4166259714d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.051606d-05*14.0146456805d0*sin(3.96907647535d0 + 14.0146456805d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.149114d-05*296.1574488526d0*sin(0.85101218281d0 + 296.1574488526d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.151286d-05*67.6680515665d0*sin(4.01147735438d0 + 67.6680515665d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.151803d-05*128.9562693151d0*sin(0.46579056125d0 + 128.9562693151d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.163762d-05*230.5645708254d0*sin(5.51157783762d0 + 230.5645708254d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.165315d-05*81.8951455681d0*sin(0.51071041452d0 + 81.8951455681d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.189801d-05*50.4025761791d0*sin(4.01778306134d0 + 50.4025761791d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.192292d-05*99.1606209555d0*sin(0.68084398426d0 + 99.1606209555d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.220696d-05*211.8146227297d0*sin(1.84988185963d0 + 211.8146227297d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.222886d-05*187.6962327724d0*sin(2.27306099902d0 + 187.6962327724d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.267766d-05*404.5067903482d0*sin(0.92771324396d0 + 404.5067903482d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.269786d-05*142.4496501338d0*sin(1.09685727529d0 + 142.4496501338d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.291065d-05*68.8437077341d0*sin(5.67425699047d0 + 68.8437077341d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.337666d-05*380.12776796d0*sin(3.74890794163d0 + 380.12776796d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.346599d-05*288.0806940053d0*sin(3.89240128209d0 + 288.0806940053d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.416917d-05*235.3904959658d0*sin(0.72597245494d0 + 235.3904959658d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.424804d-05*92.940845832d0*sin(5.10004758033d0 + 92.940845832d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.489632d-05*220.4126424388d0*sin(4.93446380217d0 + 220.4126424388d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.572826d-05*219.891377577d0*sin(5.93367812903d0 + 219.891377577d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.588897d-05*39.3568759152d0*sin(4.15115668974d0 + 39.3568759152d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.626134d-05*191.2076949102d0*sin(3.70023731184d0 + 191.2076949102d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.787737d-05*2.4476805548d0*sin(0.32096699926d0 + 2.4476805548d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.794754d-05*227.3137411185d0*sin(0.16290844853d0 + 227.3137411185d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.796292d-05*74.9416572617d0*sin(0.51761494342d0 + 74.9416572617d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.802494d-05*74.6215398729d0*sin(4.16218259902d0 + 74.6215398729d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.862236d-05*42.5864537627d0*sin(0.10443785448d0 + 42.5864537627d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.887812d-05*154.0166152595d0*sin(2.75000237791d0 + 154.0166152595d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.889369d-05*300.6108669775d0*sin(3.92852240171d0 + 300.6108669775d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.896184d-05*14.977853527d0*sin(4.26975898003d0 + 14.977853527d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.925946d-05*159.1244246902d0*sin(6.00527473515d0 + 159.1244246902d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.937871d-05*74.7334144575d0*sin(4.18462288684d0 + 74.7334144575d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.937874d-05*74.8297826771d0*sin(0.49529839431d0 + 74.8297826771d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*1.958711d-05*20.6069278195d0*sin(4.80807045815d0 + 20.6069278195d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*2.045249d-05*835.0371344873d0*sin(5.17400788104d0 + 835.0371344873d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*2.060991d-05*56.6223513026d0*sin(6.24178596384d0 + 56.6223513026d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*2.130909d-05*75.0422309982d0*sin(2.04143912495d0 + 75.0422309982d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*2.138407d-05*74.5209661364d0*sin(2.63817804331d0 + 74.5209661364d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*2.164382d-05*3.1813937377d0*sin(0.47581392325d0 + 3.1813937377d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*2.177437d-05*479.2883889155d0*sin(2.80437422101d0 + 479.2883889155d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*2.212861d-05*259.5088859231d0*sin(0.61491281306d0 + 259.5088859231d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*2.227451d-05*80.7194894005d0*sin(5.34765264557d0 + 80.7194894005d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*2.240648d-05*181.7583419392d0*sin(0.47739127862d0 + 181.7583419392d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*2.24653d-05*108.4612160802d0*sin(5.80081898763d0 + 108.4612160802d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*2.275258d-05*131.4039498699d0*sin(1.55666401505d0 + 131.4039498699d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*2.474483d-05*32.1951448046d0*sin(2.21173751117d0 + 32.1951448046d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*2.559357d-05*80.1982245387d0*sin(2.87184237678d0 + 80.1982245387d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*2.594155d-05*96.8729990951d0*sin(4.93691413537d0 + 96.8729990951d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*2.676616d-05*305.3461693927d0*sin(1.61805362044d0 + 305.3461693927d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*2.880734d-05*373.9079928365d0*sin(1.1903842433d0 + 373.9079928365d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*3.267474d-05*7.1135470008d0*sin(3.5109179323d0 + 7.1135470008d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*3.314154d-05*82.8583534146d0*sin(5.23054574329d0 + 82.8583534146d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*3.553107d-05*5.9378908332d0*sin(6.18906516846d0 + 5.9378908332d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*3.575402d-05*137.0330241624d0*sin(5.83965751946d0 + 137.0330241624d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*4.290374d-05*265.9892934775d0*sin(5.54490766551d0 + 265.9892934775d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*4.326138d-05*183.2428146475d0*sin(5.70135056853d0 + 183.2428146475d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*4.444318d-05*114.3991069134d0*sin(5.00535023482d0 + 114.3991069134d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*4.508794d-05*66.70484372d0*sin(5.82224064821d0 + 66.70484372d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*4.509054d-05*75.7448064138d0*sin(1.31254342829d0 + 75.7448064138d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*4.750018d-05*73.8183907208d0*sin(3.38678300054d0 + 73.8183907208d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*5.013871d-05*18.1592472647d0*sin(3.11907749268d0 + 18.1592472647d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*5.350948d-05*74.2603337055d0*sin(2.12171493922d0 + 74.2603337055d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*5.368405d-05*75.3028634291d0*sin(2.55422957958d0 + 75.3028634291d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*5.516018d-05*140.001969579d0*sin(1.73758326119d0 + 140.001969579d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*5.556643d-05*145.1097790097d0*sin(3.68095215063d0 + 145.1097790097d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*6.261153d-05*153.4953503977d0*sin(0.14258542752d0 + 153.4953503977d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*6.408245d-05*62.2514255951d0*sin(3.93246367895d0 + 62.2514255951d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*7.093587d-05*297.6419215609d0*sin(6.01613487245d0 + 297.6419215609d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*7.856014d-05*340.7708920448d0*sin(1.12354254831d0 + 340.7708920448d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*8.73615d-05*186.2117600641d0*sin(3.39874828293d0 + 186.2117600641d0 * t)
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

        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.035661d-05*cos(6.12642568708d0 + 62.2514255951d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.035661d-05*62.2514255951d0*sin(6.12642568708d0 + 62.2514255951d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.050191d-05*cos(3.84176879347d0 + 109.9456887885d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.050191d-05*109.9456887885d0*sin(3.84176879347d0 + 109.9456887885d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.075108d-05*cos(1.76286452034d0 + 56.6223513026d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.075108d-05*56.6223513026d0*sin(1.76286452034d0 + 56.6223513026d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.114523d-05*cos(3.41304662369d0 + 131.4039498699d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.114523d-05*131.4039498699d0*sin(3.41304662369d0 + 131.4039498699d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.234914d-05*cos(5.69239889831d0 + 4.4534181249d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.234914d-05*4.4534181249d0*sin(5.69239889831d0 + 4.4534181249d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.291753d-05*cos(6.19666243545d0 + 70.3281804424d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.291753d-05*70.3281804424d0*sin(6.19666243545d0 + 70.3281804424d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.458526d-05*cos(5.10147126404d0 + 3.1813937377d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.458526d-05*3.1813937377d0*sin(5.10147126404d0 + 3.1813937377d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.47655d-05*cos(2.10111459539d0 + 75.7448064138d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.47655d-05*75.7448064138d0*sin(2.10111459539d0 + 75.7448064138d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.531355d-05*cos(2.14701519407d0 + 152.5321425512d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.531355d-05*152.5321425512d0*sin(2.14701519407d0 + 152.5321425512d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.555611d-05*cos(2.56681954823d0 + 73.8183907208d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.555611d-05*73.8183907208d0*sin(2.56681954823d0 + 73.8183907208d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.595703d-05*cos(4.7955805786d0 + 79.2350166922d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.595703d-05*79.2350166922d0*sin(4.7955805786d0 + 79.2350166922d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.620819d-05*cos(2.18676505386d0 + 153.4953503977d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.620819d-05*153.4953503977d0*sin(2.18676505386d0 + 153.4953503977d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.705184d-05*cos(5.82532917611d0 + 225.8292684102d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.705184d-05*225.8292684102d0*sin(5.82532917611d0 + 225.8292684102d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.707606d-05*cos(5.60415260609d0 + 127.4717966068d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.707606d-05*127.4717966068d0*sin(5.60415260609d0 + 127.4717966068d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.713945d-05*cos(1.82334975258d0 + 222.8603229936d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.713945d-05*222.8603229936d0*sin(1.82334975258d0 + 222.8603229936d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.739019d-05*cos(3.82452086292d0 + 146.594251718d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.739019d-05*146.594251718d0*sin(3.82452086292d0 + 146.594251718d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.744564d-05*cos(1.67897185084d0 + 77.2292791221d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.744564d-05*77.2292791221d0*sin(1.67897185084d0 + 77.2292791221d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.929662d-05*cos(4.68383962079d0 + 52.6901980395d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.929662d-05*52.6901980395d0*sin(4.68383962079d0 + 52.6901980395d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*1.939375d-05*cos(0.82770216932d0 + 39.6175083461d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*1.939375d-05*39.6175083461d0*sin(0.82770216932d0 + 39.6175083461d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*2.224655d-05*cos(3.21541108798d0 + 72.3339180125d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*2.224655d-05*72.3339180125d0*sin(3.21541108798d0 + 72.3339180125d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*2.22751d-05*cos(4.89407437055d0 + 87.3117715395d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*2.22751d-05*87.3117715395d0*sin(4.89407437055d0 + 87.3117715395d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*2.510693d-05*cos(1.27166561854d0 + 18.1592472647d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*2.510693d-05*18.1592472647d0*sin(1.27166561854d0 + 18.1592472647d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*2.628159d-05*cos(2.97459067399d0 + 12.5301729722d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*2.628159d-05*12.5301729722d0*sin(2.97459067399d0 + 12.5301729722d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*2.690065d-05*cos(1.78946471198d0 + 9.5612275556d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*2.690065d-05*9.5612275556d0*sin(1.78946471198d0 + 9.5612275556d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*2.821206d-05*cos(1.83130010947d0 + 84.3428261229d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*2.821206d-05*84.3428261229d0*sin(1.83130010947d0 + 84.3428261229d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*2.8482d-05*cos(3.32823493525d0 + 213.299095438d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*2.8482d-05*213.299095438d0*sin(3.32823493525d0 + 213.299095438d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*3.174617d-05*cos(3.08131638838d0 + 299.1263942692d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*3.174617d-05*299.1263942692d0*sin(3.08131638838d0 + 299.1263942692d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*3.962568d-05*cos(3.18042711824d0 + 65.2203710117d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*3.962568d-05*65.2203710117d0*sin(3.18042711824d0 + 65.2203710117d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*4.117202d-05*cos(6.1993161279d0 + 22.0914005278d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*4.117202d-05*22.0914005278d0*sin(6.1993161279d0 + 22.0914005278d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*4.376824d-05*cos(2.17182724016d0 + 160.6088973985d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*4.376824d-05*160.6088973985d0*sin(2.17182724016d0 + 160.6088973985d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*6.979238d-05*cos(0.83723520791d0 + 145.6310438715d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*6.979238d-05*145.6310438715d0*sin(0.83723520791d0 + 145.6310438715d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*7.321559d-05*cos(0.66348425538d0 + 2.9689454166d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*7.321559d-05*2.9689454166d0*sin(0.66348425538d0 + 2.9689454166d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*7.438492d-05*cos(4.63165436478d0 + 77.962992305d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*7.438492d-05*77.962992305d0*sin(4.63165436478d0 + 77.962992305d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*7.595636d-05*cos(1.19807643487d0 + 148.0787244263d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*7.595636d-05*148.0787244263d0*sin(1.19807643487d0 + 148.0787244263d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*7.732367d-05*cos(0.04256630122d0 + 71.6002048296d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*7.732367d-05*71.6002048296d0*sin(0.04256630122d0 + 71.6002048296d0 * t)
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

        uranus_y_2 = uranus_y_2 +(t**(1))*2*1.035578d-05*cos(5.44752448275d0 + 145.6310438715d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*1.035578d-05*145.6310438715d0*sin(5.44752448275d0 + 145.6310438715d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*1.044459d-05*cos(4.2797223936d0 + 224.3447957019d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*1.044459d-05*224.3447957019d0*sin(4.2797223936d0 + 224.3447957019d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*2.185856d-05*cos(5.58862614977d0 + 3.9321532631d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*2.185856d-05*3.9321532631d0*sin(5.58862614977d0 + 3.9321532631d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*2.418371d-05*cos(2.88675006488d0 + 77.962992305d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*2.418371d-05*77.962992305d0*sin(2.88675006488d0 + 77.962992305d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*2.519021d-05*cos(1.78896824345d0 + 71.6002048296d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*2.519021d-05*71.6002048296d0*sin(1.78896824345d0 + 71.6002048296d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*2.995853d-05*cos(2.49432193549d0 + 138.5174968707d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*2.995853d-05*138.5174968707d0*sin(2.49432193549d0 + 138.5174968707d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*4.864822d-05*cos(4.11367426823d0 + 76.2660712756d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*4.864822d-05*76.2660712756d0*sin(4.11367426823d0 + 76.2660712756d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*5.018595d-05*cos(1.47518527303d0 + 78.7137518304d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*5.018595d-05*78.7137518304d0*sin(1.47518527303d0 + 78.7137518304d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*5.26517d-05*cos(0.54901216905d0 + 73.297125859d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*5.26517d-05*73.297125859d0*sin(0.54901216905d0 + 73.297125859d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*5.3071d-05*cos(3.20519221878d0 + 70.8494453042d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*5.3071d-05*70.8494453042d0*sin(3.20519221878d0 + 70.8494453042d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*6.713255d-05*cos(3.74148881189d0 + 85.8272988312d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*6.713255d-05*85.8272988312d0*sin(3.74148881189d0 + 85.8272988312d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*7.484633d-05*cos(2.27968076918d0 + 11.0457002639d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*7.484633d-05*11.0457002639d0*sin(2.27968076918d0 + 11.0457002639d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*7.964298d-05*cos(0.97230247087d0 + 63.7358983034d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*7.964298d-05*63.7358983034d0*sin(0.97230247087d0 + 63.7358983034d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*0.00010905147d0*cos(1.45737963668d0 + 149.5631971346d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*0.00010905147d0*149.5631971346d0*sin(1.45737963668d0 + 149.5631971346d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*0.00016588468d0*cos(2.29556740317d0 + 74.7815985673d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*0.00016588468d0*74.7815985673d0*sin(2.29556740317d0 + 74.7815985673d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*0.00034868461d0*cos(3.14159265359d0 + 0.0d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*0.00034868461d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        uranus_y_3 = uranus_y_3 +(t**(2))*3*1.214019d-05*cos(0.0d0 + 0.0d0*t)
        uranus_y_3 = uranus_y_3 -(t**3)*1.214019d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)

        r = uranus_y_3+uranus_y_2+uranus_y_1+uranus_y_0
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

        uranus_z_0 = uranus_z_0 -(t**0)*1.051968d-05*109.9456887885d0*sin(0.7556075384d0 + 109.9456887885d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*1.082736d-05*108.4612160802d0*sin(2.62872874057d0 + 108.4612160802d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*1.215921d-05*38.1330356378d0*sin(3.32019275533d0 + 38.1330356378d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*1.508924d-05*222.8603229936d0*sin(2.26195448553d0 + 222.8603229936d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*1.512017d-05*213.299095438d0*sin(0.10355104309d0 + 213.299095438d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*1.743154d-05*146.594251718d0*sin(1.20586281789d0 + 146.594251718d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*1.884104d-05*78.7137518304d0*sin(2.61192472648d0 + 78.7137518304d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*2.006709d-05*39.6175083461d0*sin(0.7595940719d0 + 39.6175083461d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*2.037011d-05*70.3281804424d0*sin(0.95353587037d0 + 70.3281804424d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*2.330304d-05*70.8494453042d0*sin(5.7264022615d0 + 70.8494453042d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*2.578399d-05*111.4301614968d0*sin(5.1969644739d0 + 111.4301614968d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*2.965471d-05*35.1640902212d0*sin(6.1435411188d0 + 35.1640902212d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*5.64872d-05*138.5174968707d0*sin(3.45324719543d0 + 138.5174968707d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*6.868135d-05*2.9689454166d0*sin(0.81403748021d0 + 2.9689454166d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*7.950169d-05*85.8272988312d0*sin(0.72564903051d0 + 85.8272988312d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*8.239051d-05*77.7505439839d0*sin(0.34223137462d0 + 77.7505439839d0 * t)
        uranus_z_0 = uranus_z_0 -(t**0)*8.855669d-05*151.0476698429d0*sin(4.03774505739d0 + 151.0476698429d0 * t)
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

        uranus_z_1 = uranus_z_1 +(t**(0))*1*1.15825d-05*cos(5.31913504112d0 + 224.3447957019d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*1.15825d-05*224.3447957019d0*sin(5.31913504112d0 + 224.3447957019d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*1.305063d-05*cos(4.52337002195d0 + 85.8272988312d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*1.305063d-05*85.8272988312d0*sin(4.52337002195d0 + 85.8272988312d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*1.827697d-05*cos(2.71810813335d0 + 11.0457002639d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*1.827697d-05*11.0457002639d0*sin(2.71810813335d0 + 11.0457002639d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*2.087455d-05*cos(5.97858625817d0 + 1.4844727083d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*2.087455d-05*1.4844727083d0*sin(5.97858625817d0 + 1.4844727083d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*2.868429d-05*cos(4.17954157878d0 + 63.7358983034d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*2.868429d-05*63.7358983034d0*sin(4.17954157878d0 + 63.7358983034d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*5.941304d-05*cos(3.61254073304d0 + 73.297125859d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*5.941304d-05*73.297125859d0*sin(3.61254073304d0 + 73.297125859d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*7.551644d-05*cos(5.49304247639d0 + 76.2660712756d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*7.551644d-05*76.2660712756d0*sin(5.49304247639d0 + 76.2660712756d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.00023873149d0*cos(2.73870549601d0 + 149.5631971346d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.00023873149d0*149.5631971346d0*sin(2.73870549601d0 + 149.5631971346d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.00049782349d0*cos(0.0d0 + 0.0d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.00049782349d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.00655887992d0*cos(0.01271946942d0 + 74.7815985673d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.00655887992d0*74.7815985673d0*sin(0.01271946942d0 + 74.7815985673d0 * t)

        uranus_z_2 = uranus_z_2 +(t**(1))*2*1.601722d-05*cos(3.14159265359d0 + 0.0d0*t)
        uranus_z_2 = uranus_z_2 -(t**2)*1.601722d-05*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
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

        venus_x_0 = venus_x_0 -(t**0)*1.162258d-05*18073.7049386502d0*sin(2.87958246189d0 + 18073.7049386502d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*1.18575d-05*76.2660712756d0*sin(0.77749524757d0 + 76.2660712756d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*1.241717d-05*30639.856638633d0*sin(4.93573787058d0 + 30639.856638633d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*1.404162d-05*536.8045120954d0*sin(0.47599536907d0 + 536.8045120954d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*1.432104d-05*522.5774180938d0*sin(3.86896784957d0 + 522.5774180938d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*1.888495d-05*220.4126424388d0*sin(3.89252933583d0 + 220.4126424388d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*1.94089d-05*149.5631971346d0*sin(4.79784874503d0 + 149.5631971346d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*1.941046d-05*206.1855484372d0*sin(1.01223495801d0 + 206.1855484372d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*1.949669d-05*1577.3435424478d0*sin(4.23196016801d0 + 1577.3435424478d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*2.800281d-05*2352.8661537718d0*sin(0.33147492492d0 + 2352.8661537718d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*7.580097d-05*426.598190876d0*sin(3.24082423116d0 + 426.598190876d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00011914665d0*1059.3819301892d0*sin(4.08456666781d0 + 1059.3819301892d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00083791771d0*74.7815985673d0*sin(2.33967946884d0 + 74.7815985673d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00155435209d0*38.1330356378d0*sin(2.1705205205d0 + 38.1330356378d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00244499876d0*20426.571092422d0*sin(4.05566613867d0 + 20426.571092422d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00271754748d0*213.299095438d0*sin(4.01601261142d0 + 213.299095438d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00494908458d0*529.6909650946d0*sin(3.74108234732d0 + 529.6909650946d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00515822267d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.72211104628d0*10213.285546211d0*sin(3.17575836361d0 + 10213.285546211d0 * t)

        venus_x_1 = venus_x_1 +(t**(0))*1*6.5104d-05*cos(2.19289888883d0 + 10213.285546211d0*t)
        venus_x_1 = venus_x_1 -(t**1)*6.5104d-05*10213.285546211d0*sin(2.19289888883d0 + 10213.285546211d0 * t)
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

        venus_y_0 = venus_y_0 -(t**0)*1.16448d-05*18073.7049386502d0*sin(1.30970620277d0 + 18073.7049386502d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*1.18543d-05*76.2660712756d0*sin(5.48948269493d0 + 76.2660712756d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*1.243658d-05*30639.856638633d0*sin(3.36573697344d0 + 30639.856638633d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*1.403769d-05*536.8045120954d0*sin(5.18861278314d0 + 536.8045120954d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*1.434763d-05*522.5774180938d0*sin(2.30169867665d0 + 522.5774180938d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*1.891167d-05*220.4126424388d0*sin(2.32097062559d0 + 220.4126424388d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*1.933868d-05*1577.3435424478d0*sin(5.80597990261d0 + 1577.3435424478d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*1.940366d-05*149.5631971346d0*sin(3.22701063208d0 + 149.5631971346d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*1.963479d-05*206.1855484372d0*sin(5.7077024922d0 + 206.1855484372d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*2.789807d-05*2352.8661537718d0*sin(5.04214523606d0 + 2352.8661537718d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*7.588666d-05*426.598190876d0*sin(1.66926320091d0 + 426.598190876d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00011913202d0*1059.3819301892d0*sin(2.51387064934d0 + 1059.3819301892d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00083754576d0*74.7815985673d0*sin(0.76880143132d0 + 74.7815985673d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00155443844d0*38.1330356378d0*sin(0.59927014146d0 + 38.1330356378d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.0024488419d0*20426.571092422d0*sin(2.48564953999d0 + 20426.571092422d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00272138024d0*213.299095438d0*sin(2.44443638845d0 + 213.299095438d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00494765697d0*529.6909650946d0*sin(2.17048019743d0 + 529.6909650946d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00515636737d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.72324643689d0*10213.285546211d0*sin(1.60573808356d0 + 10213.285546211d0 * t)

        venus_y_1 = venus_y_1 +(t**(0))*1*5.968061d-05*cos(3.60854941167d0 + 10213.285546211d0*t)
        venus_y_1 = venus_y_1 -(t**1)*5.968061d-05*10213.285546211d0*sin(3.60854941167d0 + 10213.285546211d0 * t)
        venus_y_1 = venus_y_1 +(t**(0))*1*0.00017282284d0*cos(5.638247359d0 + 20426.571092422d0*t)
        venus_y_1 = venus_y_1 -(t**1)*0.00017282284d0*20426.571092422d0*sin(5.638247359d0 + 20426.571092422d0 * t)
        venus_y_1 = venus_y_1 +(t**(0))*1*0.00039237546d0*cos(0.0d0 + 0.0d0*t)
        venus_y_1 = venus_y_1 -(t**1)*0.00039237546d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        venus_y_2 = venus_y_2 +(t**(1))*2*2.062969d-05*cos(3.14159265359d0 + 0.0d0*t)
        venus_y_2 = venus_y_2 -(t**2)*2.062969d-05*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

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

        venus_z_0 = venus_z_0 -(t**0)*1.130978d-05*74.7815985673d0*sin(5.75878690645d0 + 74.7815985673d0 * t)
        venus_z_0 = venus_z_0 -(t**0)*4.802048d-05*38.1330356378d0*sin(4.5826472337d0 + 38.1330356378d0 * t)
        venus_z_0 = venus_z_0 -(t**0)*0.00011238047d0*529.6909650946d0*sin(0.41541669438d0 + 529.6909650946d0 * t)
        venus_z_0 = venus_z_0 -(t**0)*0.00011808377d0*213.299095438d0*sin(0.46064367724d0 + 213.299095438d0 * t)
        venus_z_0 = venus_z_0 -(t**0)*0.00014501844d0*20426.571092422d0*sin(1.1469691139d0 + 20426.571092422d0 * t)
        venus_z_0 = venus_z_0 -(t**0)*0.00036740999d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        venus_z_0 = venus_z_0 -(t**0)*0.04282979819d0*10213.285546211d0*sin(0.26703856471d0 + 10213.285546211d0 * t)

        venus_z_1 = venus_z_1 +(t**(0))*1*1.264986d-05*cos(3.71037501321d0 + 20426.571092422d0*t)
        venus_z_1 = venus_z_1 -(t**1)*1.264986d-05*20426.571092422d0*sin(3.71037501321d0 + 20426.571092422d0 * t)
        venus_z_1 = venus_z_1 +(t**(0))*1*1.497542d-05*cos(0.0d0 + 0.0d0*t)
        venus_z_1 = venus_z_1 -(t**1)*1.497542d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)
        venus_z_1 = venus_z_1 +(t**(0))*1*0.00208095894d0*cos(1.88967278742d0 + 10213.285546211d0*t)
        venus_z_1 = venus_z_1 -(t**1)*0.00208095894d0*10213.285546211d0*sin(1.88967278742d0 + 10213.285546211d0 * t)

        venus_z_2 = venus_z_2 +(t**(1))*2*9.148022d-05*cos(3.34791005272d0 + 10213.285546211d0*t)
        venus_z_2 = venus_z_2 -(t**2)*9.148022d-05*10213.285546211d0*sin(3.34791005272d0 + 10213.285546211d0 * t)

        r = venus_z_2+venus_z_1+venus_z_0
    end function

end module VSOP87E_Milli_Velocities
