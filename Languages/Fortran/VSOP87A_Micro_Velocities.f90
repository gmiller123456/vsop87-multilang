!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87A_Micro_Velocities
    implicit none

    contains
    subroutine VSOP87A_Micro_getEarthV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_x(t) / 365250.0
        result(2)=earth_y(t) / 365250.0
        result(3)=earth_z(t) / 365250.0
    end subroutine

    subroutine VSOP87A_Micro_getEmbV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=emb_x(t) / 365250.0
        result(2)=emb_y(t) / 365250.0
        result(3)=emb_z(t) / 365250.0
    end subroutine

    subroutine VSOP87A_Micro_getJupiterV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_x(t) / 365250.0
        result(2)=jupiter_y(t) / 365250.0
        result(3)=jupiter_z(t) / 365250.0
    end subroutine

    subroutine VSOP87A_Micro_getMarsV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_x(t) / 365250.0
        result(2)=mars_y(t) / 365250.0
        result(3)=mars_z(t) / 365250.0
    end subroutine

    subroutine VSOP87A_Micro_getMercuryV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_x(t) / 365250.0
        result(2)=mercury_y(t) / 365250.0
        result(3)=mercury_z(t) / 365250.0
    end subroutine

    subroutine VSOP87A_Micro_getNeptuneV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_x(t) / 365250.0
        result(2)=neptune_y(t) / 365250.0
        result(3)=neptune_z(t) / 365250.0
    end subroutine

    subroutine VSOP87A_Micro_getSaturnV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_x(t) / 365250.0
        result(2)=saturn_y(t) / 365250.0
        result(3)=saturn_z(t) / 365250.0
    end subroutine

    subroutine VSOP87A_Micro_getUranusV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_x(t) / 365250.0
        result(2)=uranus_y(t) / 365250.0
        result(3)=uranus_z(t) / 365250.0
    end subroutine

    subroutine VSOP87A_Micro_getVenusV(t, result)
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

        earth_x_0 = earth_x_0 -(t**0)*0.00010466628d0*18849.2275499742d0*sin(1.66722645223d0 + 18849.2275499742d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.00561144206d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.008352573d0*12566.1516999828d0*sin(1.7103453945d0 + 12566.1516999828d0 * t)
        earth_x_0 = earth_x_0 -(t**0)*0.99982928844d0*6283.0758499914d0*sin(1.75348568475d0 + 6283.0758499914d0 * t)

        earth_x_1 = earth_x_1 +(t**(0))*1*0.00051500156d0*cos(6.00266267204d0 + 12566.1516999828d0*t)
        earth_x_1 = earth_x_1 -(t**1)*0.00051500156d0*12566.1516999828d0*sin(6.00266267204d0 + 12566.1516999828d0 * t)
        earth_x_1 = earth_x_1 +(t**(0))*1*0.00123403056d0*cos(0.0d0 + 0.0d0*t)
        earth_x_1 = earth_x_1 -(t**1)*0.00123403056d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        earth_y_0 = earth_y_0 -(t**0)*0.00010466965d0*18849.2275499742d0*sin(0.09641690558d0 + 18849.2275499742d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.00835292314d0*12566.1516999828d0*sin(0.13952878991d0 + 12566.1516999828d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.02442699036d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        earth_y_0 = earth_y_0 -(t**0)*0.9998921103d0*6283.0758499914d0*sin(0.18265890456d0 + 6283.0758499914d0 * t)

        earth_y_1 = earth_y_1 +(t**(0))*1*0.00051506609d0*cos(4.43180499286d0 + 12566.1516999828d0*t)
        earth_y_1 = earth_y_1 -(t**1)*0.00051506609d0*12566.1516999828d0*sin(4.43180499286d0 + 12566.1516999828d0 * t)
        earth_y_1 = earth_y_1 +(t**(0))*1*0.00093046324d0*cos(0.0d0 + 0.0d0*t)
        earth_y_1 = earth_y_1 -(t**1)*0.00093046324d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        earth_z_1 = earth_z_1 +(t**(0))*1*0.00227822442d0*cos(3.41372504278d0 + 6283.0758499914d0*t)
        earth_z_1 = earth_z_1 -(t**1)*0.00227822442d0*6283.0758499914d0*sin(3.41372504278d0 + 6283.0758499914d0 * t)

        r = earth_z_1
    end function

    function emb_x(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: emb_x_0
        double precision :: emb_x_1
        double precision :: emb_x_2
        double precision :: emb_x_3
        double precision :: emb_x_4
        double precision :: emb_x_5

        emb_x_0 = 0.0
        emb_x_1 = 0.0
        emb_x_2 = 0.0
        emb_x_3 = 0.0
        emb_x_4 = 0.0
        emb_x_5 = 0.0

        emb_x_0 = emb_x_0 -(t**0)*0.00010466628d0*18849.2275499742d0*sin(1.66722645223d0 + 18849.2275499742d0 * t)
        emb_x_0 = emb_x_0 -(t**0)*0.00561144161d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        emb_x_0 = emb_x_0 -(t**0)*0.008352573d0*12566.1516999828d0*sin(1.7103453945d0 + 12566.1516999828d0 * t)
        emb_x_0 = emb_x_0 -(t**0)*0.9998292746d0*6283.0758499914d0*sin(1.75348568475d0 + 6283.0758499914d0 * t)

        emb_x_1 = emb_x_1 +(t**(0))*1*0.00051500156d0*cos(6.00266267204d0 + 12566.1516999828d0*t)
        emb_x_1 = emb_x_1 -(t**1)*0.00051500156d0*12566.1516999828d0*sin(6.00266267204d0 + 12566.1516999828d0 * t)
        emb_x_1 = emb_x_1 +(t**(0))*1*0.00123403046d0*cos(0.0d0 + 0.0d0*t)
        emb_x_1 = emb_x_1 -(t**1)*0.00123403046d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        r = emb_x_1+emb_x_0
    end function

    function emb_y(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: emb_y_0
        double precision :: emb_y_1
        double precision :: emb_y_2
        double precision :: emb_y_3
        double precision :: emb_y_4
        double precision :: emb_y_5

        emb_y_0 = 0.0
        emb_y_1 = 0.0
        emb_y_2 = 0.0
        emb_y_3 = 0.0
        emb_y_4 = 0.0
        emb_y_5 = 0.0

        emb_y_0 = emb_y_0 -(t**0)*0.00010466965d0*18849.2275499742d0*sin(0.09641690558d0 + 18849.2275499742d0 * t)
        emb_y_0 = emb_y_0 -(t**0)*0.00835292314d0*12566.1516999828d0*sin(0.13952878991d0 + 12566.1516999828d0 * t)
        emb_y_0 = emb_y_0 -(t**0)*0.02442698841d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        emb_y_0 = emb_y_0 -(t**0)*0.99989209645d0*6283.0758499914d0*sin(0.18265890456d0 + 6283.0758499914d0 * t)

        emb_y_1 = emb_y_1 +(t**(0))*1*0.00051506609d0*cos(4.43180499286d0 + 12566.1516999828d0*t)
        emb_y_1 = emb_y_1 -(t**1)*0.00051506609d0*12566.1516999828d0*sin(4.43180499286d0 + 12566.1516999828d0 * t)
        emb_y_1 = emb_y_1 +(t**(0))*1*0.00093046317d0*cos(0.0d0 + 0.0d0*t)
        emb_y_1 = emb_y_1 -(t**1)*0.00093046317d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        r = emb_y_1+emb_y_0
    end function

    function emb_z(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: emb_z_0
        double precision :: emb_z_1
        double precision :: emb_z_2
        double precision :: emb_z_3
        double precision :: emb_z_4
        double precision :: emb_z_5

        emb_z_0 = 0.0
        emb_z_1 = 0.0
        emb_z_2 = 0.0
        emb_z_3 = 0.0
        emb_z_4 = 0.0
        emb_z_5 = 0.0

        emb_z_1 = emb_z_1 +(t**(0))*1*0.00227822442d0*cos(3.41372504278d0 + 6283.0758499914d0*t)
        emb_z_1 = emb_z_1 -(t**1)*0.00227822442d0*6283.0758499914d0*sin(3.41372504278d0 + 6283.0758499914d0 * t)

        r = emb_z_1
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

        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00011423199d0*543.9180590962d0*sin(3.48146108929d0 + 543.9180590962d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00011996271d0*533.6231183577d0*sin(0.58568573729d0 + 533.6231183577d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00012155285d0*525.7588118315d0*sin(3.75229924999d0 + 525.7588118315d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00014209487d0*742.9900605326d0*sin(2.07769621413d0 + 742.9900605326d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00015192516d0*735.8765135318d0*sin(6.25820127906d0 + 735.8765135318d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00016101974d0*515.463871093d0*sin(0.8797315598d0 + 515.463871093d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00016481594d0*316.3918696566d0*sin(1.95150056568d0 + 316.3918696566d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00019727457d0*2118.7638603784d0*sin(1.64891626213d0 + 2118.7638603784d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00026613459d0*323.5054166574d0*sin(4.85169906494d0 + 323.5054166574d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00030623417d0*206.1855484372d0*sin(2.99132321427d0 + 206.1855484372d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00047092251d0*419.4846438752d0*sin(1.44612636451d0 + 419.4846438752d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00059486083d0*949.1756089698d0*sin(4.45769374358d0 + 949.1756089698d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00068284021d0*846.0828347512d0*sin(3.44051122631d0 + 846.0828347512d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00072095575d0*1066.49547719d0*sin(3.96117430643d0 + 1066.49547719d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00103494641d0*1052.2683831884d0*sin(6.1932476912d0 + 1052.2683831884d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00114201562d0*1162.4747044078d0*sin(0.01567084269d0 + 1162.4747044078d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00134226996d0*213.299095438d0*sin(0.87648567011d0 + 213.299095438d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00144867641d0*632.7837393132d0*sin(5.5598057708d0 + 632.7837393132d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00150678793d0*110.2063212194d0*sin(6.12003027739d0 + 110.2063212194d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00194025405d0*426.598190876d0*sin(5.02580363996d0 + 426.598190876d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00301689798d0*7.1135470008d0*sin(5.17372551148d0 + 7.1135470008d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00385975375d0*103.0927742186d0*sin(2.01229910687d0 + 103.0927742186d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.00457752736d0*1589.0728952838d0*sin(1.29883700755d0 + 1589.0728952838d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.01476224578d0*536.8045120954d0*sin(3.61736921122d0 + 536.8045120954d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.01500672056d0*522.5774180938d0*sin(0.7317513461d0 + 522.5774180938d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.12593937922d0*1059.3819301892d0*sin(0.94911583701d0 + 1059.3819301892d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*0.3666264232d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        jupiter_x_0 = jupiter_x_0 -(t**0)*5.19663470114d0*529.6909650946d0*sin(0.59945082355d0 + 529.6909650946d0 * t)

        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00012889505d0*cos(2.57489294062d0 + 515.463871093d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00012889505d0*515.463871093d0*sin(2.57489294062d0 + 515.463871093d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00013577576d0*cos(0.30008010246d0 + 632.7837393132d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00013577576d0*632.7837393132d0*sin(0.30008010246d0 + 632.7837393132d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00018156701d0*cos(4.00572238779d0 + 426.598190876d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00018156701d0*426.598190876d0*sin(4.00572238779d0 + 426.598190876d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00021244363d0*cos(4.36576178953d0 + 110.2063212194d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00021244363d0*110.2063212194d0*sin(4.36576178953d0 + 110.2063212194d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00031234303d0*cos(2.34698051502d0 + 1066.49547719d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00031234303d0*1066.49547719d0*sin(2.34698051502d0 + 1066.49547719d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.0003250859d0*cos(1.74648849928d0 + 1052.2683831884d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.0003250859d0*1052.2683831884d0*sin(1.74648849928d0 + 1052.2683831884d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00033891193d0*cos(4.10113482752d0 + 529.6909650946d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00033891193d0*529.6909650946d0*sin(4.10113482752d0 + 529.6909650946d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00046201898d0*cos(0.45714214032d0 + 1589.0728952838d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00046201898d0*1589.0728952838d0*sin(0.45714214032d0 + 1589.0728952838d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00081697204d0*cos(3.46668108797d0 + 7.1135470008d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00081697204d0*7.1135470008d0*sin(3.46668108797d0 + 7.1135470008d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.0058915706d0*cos(1.91556314637d0 + 536.8045120954d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.0058915706d0*536.8045120954d0*sin(1.91556314637d0 + 536.8045120954d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00599720482d0*cos(2.42996678275d0 + 522.5774180938d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00599720482d0*522.5774180938d0*sin(2.42996678275d0 + 522.5774180938d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00635297172d0*cos(0.10662156868d0 + 1059.3819301892d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00635297172d0*1059.3819301892d0*sin(0.10662156868d0 + 1059.3819301892d0 * t)
        jupiter_x_1 = jupiter_x_1 +(t**(0))*1*0.00882389251d0*cos(3.14159265359d0 + 0.0d0*t)
        jupiter_x_1 = jupiter_x_1 -(t**1)*0.00882389251d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.0001142307d0*cos(1.72917878238d0 + 7.1135470008d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.0001142307d0*7.1135470008d0*sin(1.72917878238d0 + 7.1135470008d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00041410887d0*cos(5.12291589939d0 + 1059.3819301892d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00041410887d0*1059.3819301892d0*sin(5.12291589939d0 + 1059.3819301892d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00077685547d0*cos(5.29776154458d0 + 529.6909650946d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00077685547d0*529.6909650946d0*sin(5.29776154458d0 + 529.6909650946d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00085355503d0*cos(0.0d0 + 0.0d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00085355503d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00121521296d0*cos(0.21155109275d0 + 536.8045120954d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00121521296d0*536.8045120954d0*sin(0.21155109275d0 + 536.8045120954d0 * t)
        jupiter_x_2 = jupiter_x_2 +(t**(1))*2*0.00123864644d0*cos(4.13563277513d0 + 522.5774180938d0*t)
        jupiter_x_2 = jupiter_x_2 -(t**2)*0.00123864644d0*522.5774180938d0*sin(4.13563277513d0 + 522.5774180938d0 * t)

        jupiter_x_3 = jupiter_x_3 +(t**(2))*3*0.00016713548d0*cos(4.77458794485d0 + 536.8045120954d0*t)
        jupiter_x_3 = jupiter_x_3 -(t**3)*0.00016713548d0*536.8045120954d0*sin(4.77458794485d0 + 536.8045120954d0 * t)
        jupiter_x_3 = jupiter_x_3 +(t**(2))*3*0.00017071323d0*cos(5.86133022278d0 + 522.5774180938d0*t)
        jupiter_x_3 = jupiter_x_3 -(t**3)*0.00017071323d0*522.5774180938d0*sin(5.86133022278d0 + 522.5774180938d0 * t)

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

        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00011419853d0*543.9180590962d0*sin(1.91089341468d0 + 543.9180590962d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00011988875d0*533.6231183577d0*sin(5.29687602089d0 + 533.6231183577d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00012153427d0*525.7588118315d0*sin(2.18151972499d0 + 525.7588118315d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00014606858d0*742.9900605326d0*sin(0.47759399145d0 + 742.9900605326d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00016355726d0*515.463871093d0*sin(5.56997881604d0 + 515.463871093d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00018639846d0*316.3918696566d0*sin(0.38751972138d0 + 316.3918696566d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00019727397d0*2118.7638603784d0*sin(0.07818534532d0 + 2118.7638603784d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.0002087378d0*735.8765135318d0*sin(3.79369881757d0 + 735.8765135318d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00026619714d0*323.5054166574d0*sin(3.28203174951d0 + 323.5054166574d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00026933579d0*419.4846438752d0*sin(3.86233956827d0 + 419.4846438752d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00029807369d0*206.1855484372d0*sin(4.5210577274d0 + 206.1855484372d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00059051769d0*949.1756089698d0*sin(2.89529070968d0 + 949.1756089698d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00068374489d0*846.0828347512d0*sin(1.86537074374d0 + 846.0828347512d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00072091178d0*1066.49547719d0*sin(2.39048659148d0 + 1066.49547719d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00101999807d0*1052.2683831884d0*sin(4.57594598884d0 + 1052.2683831884d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.0011404311d0*1162.4747044078d0*sin(4.72982262969d0 + 1162.4747044078d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00132696764d0*213.299095438d0*sin(5.62184581859d0 + 213.299095438d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00139480058d0*632.7837393132d0*sin(4.00075307706d0 + 632.7837393132d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00146104656d0*110.2063212194d0*sin(4.62267224431d0 + 110.2063212194d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00192333128d0*426.598190876d0*sin(3.45690564771d0 + 426.598190876d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00300686679d0*7.1135470008d0*sin(3.6094805074d0 + 7.1135470008d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00378285578d0*103.0927742186d0*sin(3.53006782383d0 + 103.0927742186d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.00457750806d0*1589.0728952838d0*sin(6.01129093501d0 + 1589.0728952838d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.0147580937d0*536.8045120954d0*sin(2.04679566495d0 + 536.8045120954d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.01508275299d0*522.5774180938d0*sin(5.43934968102d0 + 522.5774180938d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.09363670616d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*0.12592862602d0*1059.3819301892d0*sin(5.66160227728d0 + 1059.3819301892d0 * t)
        jupiter_y_0 = jupiter_y_0 -(t**0)*5.19520046589d0*529.6909650946d0*sin(5.31203162731d0 + 529.6909650946d0 * t)

        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00013034616d0*cos(0.98979834442d0 + 515.463871093d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00013034616d0*515.463871093d0*sin(0.98979834442d0 + 515.463871093d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00013701692d0*cos(5.02070197804d0 + 632.7837393132d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00013701692d0*632.7837393132d0*sin(5.02070197804d0 + 632.7837393132d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00017738615d0*cos(2.46531787101d0 + 426.598190876d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00017738615d0*426.598190876d0*sin(2.46531787101d0 + 426.598190876d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00019462096d0*cos(3.0095711947d0 + 110.2063212194d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00019462096d0*110.2063212194d0*sin(3.0095711947d0 + 110.2063212194d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00031231694d0*cos(0.77623645597d0 + 1066.49547719d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00031231694d0*1066.49547719d0*sin(0.77623645597d0 + 1066.49547719d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00032503453d0*cos(0.17640743623d0 + 1052.2683831884d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00032503453d0*1052.2683831884d0*sin(0.17640743623d0 + 1052.2683831884d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00046194129d0*cos(5.16955994561d0 + 1589.0728952838d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00046194129d0*1589.0728952838d0*sin(5.16955994561d0 + 1589.0728952838d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.0004688809d0*cos(1.91294535618d0 + 529.6909650946d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.0004688809d0*529.6909650946d0*sin(1.91294535618d0 + 529.6909650946d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00081187145d0*cos(1.90914316532d0 + 7.1135470008d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00081187145d0*7.1135470008d0*sin(1.90914316532d0 + 7.1135470008d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00588928504d0*cos(0.3449157689d0 + 536.8045120954d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00588928504d0*536.8045120954d0*sin(0.3449157689d0 + 536.8045120954d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00601160431d0*cos(0.8581124994d0 + 522.5774180938d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00601160431d0*522.5774180938d0*sin(0.8581124994d0 + 522.5774180938d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.00634859798d0*cos(4.8190319965d0 + 1059.3819301892d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.00634859798d0*1059.3819301892d0*sin(4.8190319965d0 + 1059.3819301892d0 * t)
        jupiter_y_1 = jupiter_y_1 +(t**(0))*1*0.01694798253d0*cos(3.14159265359d0 + 0.0d0*t)
        jupiter_y_1 = jupiter_y_1 -(t**1)*0.01694798253d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00011277667d0*cos(0.18559902389d0 + 7.1135470008d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00011277667d0*7.1135470008d0*sin(0.18559902389d0 + 7.1135470008d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.000413576d0*cos(3.55228440457d0 + 1059.3819301892d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.000413576d0*1059.3819301892d0*sin(3.55228440457d0 + 1059.3819301892d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00076523263d0*cos(3.75913371793d0 + 529.6909650946d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00076523263d0*529.6909650946d0*sin(3.75913371793d0 + 529.6909650946d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00076943042d0*cos(3.14159265359d0 + 0.0d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00076943042d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00121455991d0*cos(4.9239876638d0 + 536.8045120954d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00121455991d0*536.8045120954d0*sin(4.9239876638d0 + 536.8045120954d0 * t)
        jupiter_y_2 = jupiter_y_2 +(t**(1))*2*0.00124032509d0*cos(2.56495576833d0 + 522.5774180938d0*t)
        jupiter_y_2 = jupiter_y_2 -(t**2)*0.00124032509d0*522.5774180938d0*sin(2.56495576833d0 + 522.5774180938d0 * t)

        jupiter_y_3 = jupiter_y_3 +(t**(2))*3*0.00016701353d0*cos(3.20365737109d0 + 536.8045120954d0*t)
        jupiter_y_3 = jupiter_y_3 -(t**3)*0.00016701353d0*536.8045120954d0*sin(3.20365737109d0 + 536.8045120954d0 * t)
        jupiter_y_3 = jupiter_y_3 +(t**(2))*3*0.00017085516d0*cos(4.29096904063d0 + 522.5774180938d0*t)
        jupiter_y_3 = jupiter_y_3 -(t**3)*0.00017085516d0*522.5774180938d0*sin(4.29096904063d0 + 522.5774180938d0 * t)

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

        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*0.00012730364d0*cos(5.45536715732d0 + 522.5774180938d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*0.00012730364d0*522.5774180938d0*sin(5.45536715732d0 + 522.5774180938d0 * t)
        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*0.00014424953d0*cos(4.85400155025d0 + 536.8045120954d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*0.00014424953d0*536.8045120954d0*sin(4.85400155025d0 + 536.8045120954d0 * t)
        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*0.00015474611d0*cos(0.0d0 + 0.0d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*0.00015474611d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*0.00020307341d0*cos(2.59878269248d0 + 1059.3819301892d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*0.00020307341d0*1059.3819301892d0*sin(2.59878269248d0 + 1059.3819301892d0 * t)
        jupiter_z_1 = jupiter_z_1 +(t**(0))*1*0.00407072175d0*cos(1.52699353482d0 + 529.6909650946d0*t)
        jupiter_z_1 = jupiter_z_1 -(t**1)*0.00407072175d0*529.6909650946d0*sin(1.52699353482d0 + 529.6909650946d0 * t)

        jupiter_z_2 = jupiter_z_2 +(t**(1))*2*0.00028635326d0*cos(3.01374166973d0 + 529.6909650946d0*t)
        jupiter_z_2 = jupiter_z_2 -(t**2)*0.00028635326d0*529.6909650946d0*sin(3.01374166973d0 + 529.6909650946d0 * t)

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

        mars_x_0 = mars_x_0 -(t**0)*0.00011370375d0*1059.3819301892d0*sin(4.83265211109d0 + 1059.3819301892d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00013527976d0*529.6909650946d0*sin(0.63010765169d0 + 529.6909650946d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00021041626d0*3344.1355450488d0*sin(1.17895619474d0 + 3344.1355450488d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00021067199d0*3337.0893083508d0*sin(1.80435656154d0 + 3337.0893083508d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00040938237d0*13362.4497067992d0*sin(0.93473307419d0 + 13362.4497067992d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.00494196914d0*10021.8372800994d0*sin(0.59669127768d0 + 10021.8372800994d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.07070919655d0*6681.2248533996d0*sin(0.25870338558d0 + 6681.2248533996d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*0.19502945246d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mars_x_0 = mars_x_0 -(t**0)*1.51769936383d0*3340.6124266998d0*sin(6.20403346548d0 + 3340.6124266998d0 * t)

        mars_x_1 = mars_x_1 +(t**(0))*1*0.00020467294d0*cos(5.57051812369d0 + 3340.6124266998d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00020467294d0*3340.6124266998d0*sin(5.57051812369d0 + 3340.6124266998d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*0.00077184977d0*cos(5.43315636209d0 + 10021.8372800994d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00077184977d0*10021.8372800994d0*sin(5.43315636209d0 + 10021.8372800994d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*0.00552437949d0*cos(5.09565872891d0 + 6681.2248533996d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00552437949d0*6681.2248533996d0*sin(5.09565872891d0 + 6681.2248533996d0 * t)
        mars_x_1 = mars_x_1 +(t**(0))*1*0.00861441374d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_x_1 = mars_x_1 -(t**1)*0.00861441374d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        mars_x_2 = mars_x_2 +(t**(1))*2*0.00022122528d0*cos(3.54372113272d0 + 6681.2248533996d0*t)
        mars_x_2 = mars_x_2 -(t**2)*0.00022122528d0*6681.2248533996d0*sin(3.54372113272d0 + 6681.2248533996d0 * t)
        mars_x_2 = mars_x_2 +(t**(1))*2*0.00056323939d0*cos(0.0d0 + 0.0d0*t)
        mars_x_2 = mars_x_2 -(t**2)*0.00056323939d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        mars_y_0 = mars_y_0 -(t**0)*0.00011370034d0*1059.3819301892d0*sin(3.26131408801d0 + 1059.3819301892d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00013324177d0*529.6909650946d0*sin(5.34259389724d0 + 529.6909650946d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00021012921d0*3344.1355450488d0*sin(5.89022773653d0 + 3344.1355450488d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00021036784d0*3337.0893083508d0*sin(0.23240270955d0 + 3337.0893083508d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00040917422d0*13362.4497067992d0*sin(5.64698263703d0 + 13362.4497067992d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.00493872848d0*10021.8372800994d0*sin(5.30877806694d0 + 10021.8372800994d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.07064550239d0*6681.2248533996d0*sin(4.97051892902d0 + 6681.2248533996d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*0.08655481102d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mars_y_0 = mars_y_0 -(t**0)*1.51558976277d0*3340.6124266998d0*sin(4.63212206588d0 + 3340.6124266998d0 * t)

        mars_y_1 = mars_y_1 +(t**(0))*1*0.00037310491d0*cos(1.16016958445d0 + 3340.6124266998d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.00037310491d0*3340.6124266998d0*sin(1.16016958445d0 + 3340.6124266998d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*0.00077091913d0*cos(3.86082685753d0 + 10021.8372800994d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.00077091913d0*10021.8372800994d0*sin(3.86082685753d0 + 10021.8372800994d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*0.00551063753d0*cos(3.52128320402d0 + 6681.2248533996d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.00551063753d0*6681.2248533996d0*sin(3.52128320402d0 + 6681.2248533996d0 * t)
        mars_y_1 = mars_y_1 +(t**(0))*1*0.0142732421d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_y_1 = mars_y_1 -(t**1)*0.0142732421d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

        mars_y_2 = mars_y_2 +(t**(1))*2*0.00021950759d0*cos(1.96291594946d0 + 6681.2248533996d0*t)
        mars_y_2 = mars_y_2 -(t**2)*0.00021950759d0*6681.2248533996d0*sin(1.96291594946d0 + 6681.2248533996d0 * t)
        mars_y_2 = mars_y_2 +(t**(1))*2*0.00035396765d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_y_2 = mars_y_2 -(t**2)*0.00035396765d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

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

        mars_z_1 = mars_z_1 +(t**(0))*1*0.00047930411d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_z_1 = mars_z_1 -(t**1)*0.00047930411d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mars_z_1 = mars_z_1 +(t**(0))*1*0.00331842958d0*cos(6.05027773492d0 + 3340.6124266998d0*t)
        mars_z_1 = mars_z_1 -(t**1)*0.00331842958d0*3340.6124266998d0*sin(6.05027773492d0 + 3340.6124266998d0 * t)

        mars_z_2 = mars_z_2 +(t**(1))*2*0.0001370536d0*cos(1.04212852598d0 + 3340.6124266998d0*t)
        mars_z_2 = mars_z_2 -(t**2)*0.0001370536d0*3340.6124266998d0*sin(1.04212852598d0 + 3340.6124266998d0 * t)

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

        mercury_x_0 = mercury_x_0 -(t**0)*0.0002101173d0*130439.51570787099d0*sin(4.03469353923d0 + 130439.51570787099d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.00105716695d0*104351.61256629678d0*sin(0.98379033182d0 + 104351.61256629678d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.00584261333d0*78263.70942472259d0*sin(4.21599394757d0 + 78263.70942472259d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.02625615963d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.03825746672d0*52175.8062831484d0*sin(1.16485604339d0 + 52175.8062831484d0 * t)
        mercury_x_0 = mercury_x_0 -(t**0)*0.37546291728d0*26087.9031415742d0*sin(4.39651506942d0 + 26087.9031415742d0 * t)

        mercury_x_1 = mercury_x_1 +(t**(0))*1*0.00011992889d0*cos(5.81575112963d0 + 26087.9031415742d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*0.00011992889d0*26087.9031415742d0*sin(5.81575112963d0 + 26087.9031415742d0 * t)
        mercury_x_1 = mercury_x_1 +(t**(0))*1*0.00032316001d0*cos(2.68247273347d0 + 78263.70942472259d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*0.00032316001d0*78263.70942472259d0*sin(2.68247273347d0 + 78263.70942472259d0 * t)
        mercury_x_1 = mercury_x_1 +(t**(0))*1*0.00105289019d0*cos(5.91600475006d0 + 52175.8062831484d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*0.00105289019d0*52175.8062831484d0*sin(5.91600475006d0 + 52175.8062831484d0 * t)
        mercury_x_1 = mercury_x_1 +(t**(0))*1*0.00318848034d0*cos(0.0d0 + 0.0d0*t)
        mercury_x_1 = mercury_x_1 -(t**1)*0.00318848034d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        mercury_y_0 = mercury_y_0 -(t**0)*0.00021100828d0*130439.51570787099d0*sin(2.47291315849d0 + 130439.51570787099d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00106235493d0*104351.61256629678d0*sin(5.70550616735d0 + 104351.61256629678d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.00587711268d0*78263.70942472259d0*sin(2.65498896201d0 + 78263.70942472259d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.03854668215d0*52175.8062831484d0*sin(5.88780608966d0 + 52175.8062831484d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.11626131831d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_y_0 = mercury_y_0 -(t**0)*0.37953642888d0*26087.9031415742d0*sin(2.8378061782d0 + 26087.9031415742d0 * t)

        mercury_y_1 = mercury_y_1 +(t**(0))*1*0.00011914709d0*cos(1.2213998634d0 + 26087.9031415742d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*0.00011914709d0*26087.9031415742d0*sin(1.2213998634d0 + 26087.9031415742d0 * t)
        mercury_y_1 = mercury_y_1 +(t**(0))*1*0.00032715354d0*cos(1.11763734425d0 + 78263.70942472259d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*0.00032715354d0*78263.70942472259d0*sin(1.11763734425d0 + 78263.70942472259d0 * t)
        mercury_y_1 = mercury_y_1 +(t**(0))*1*0.00080651544d0*cos(3.14159265359d0 + 0.0d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*0.00080651544d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_y_1 = mercury_y_1 +(t**(0))*1*0.00107803852d0*cos(4.34964793883d0 + 52175.8062831484d0*t)
        mercury_y_1 = mercury_y_1 -(t**1)*0.00107803852d0*52175.8062831484d0*sin(4.34964793883d0 + 52175.8062831484d0 * t)

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

        mercury_z_0 = mercury_z_0 -(t**0)*0.00012957446d0*104351.61256629678d0*sin(4.8592203201d0 + 104351.61256629678d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.00071626395d0*78263.70942472259d0*sin(1.80894256071d0 + 78263.70942472259d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.00469171617d0*52175.8062831484d0*sin(5.04215742764d0 + 52175.8062831484d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.00708734365d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_z_0 = mercury_z_0 -(t**0)*0.04607665326d0*26087.9031415742d0*sin(1.99295081967d0 + 26087.9031415742d0 * t)

        mercury_z_1 = mercury_z_1 +(t**(0))*1*0.00057826621d0*cos(3.14159265359d0 + 0.0d0*t)
        mercury_z_1 = mercury_z_1 -(t**1)*0.00057826621d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_z_1 = mercury_z_1 +(t**(0))*1*0.00108722177d0*cos(3.91134750825d0 + 26087.9031415742d0*t)
        mercury_z_1 = mercury_z_1 -(t**1)*0.00108722177d0*26087.9031415742d0*sin(3.91134750825d0 + 26087.9031415742d0 * t)

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

        neptune_x_0 = neptune_x_0 -(t**0)*0.00012013994d0*1059.3819301892d0*sin(0.94912933496d0 + 1059.3819301892d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00012614732d0*112.9146342051d0*sin(3.57002516434d0 + 112.9146342051d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00012749153d0*111.4301614968d0*sin(2.73719269645d0 + 111.4301614968d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.0002888926d0*42.5864537627d0*sin(4.78966826027d0 + 42.5864537627d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00054690827d0*71.8126531507d0*sin(1.55799996661d0 + 71.8126531507d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00060813556d0*33.6796175129d0*sin(2.6258995838d0 + 33.6796175129d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00069040539d0*4.4534181249d0*sin(5.8346912352d0 + 4.4534181249d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00090965704d0*114.3991069134d0*sin(1.68910246115d0 + 114.3991069134d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00135887219d0*77.7505439839d0*sin(5.54676577816d0 + 77.7505439839d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00272253551d0*213.299095438d0*sin(0.87443494387d0 + 213.299095438d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00307525907d0*73.297125859d0*sin(0.40023311011d0 + 73.297125859d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00495719107d0*529.6909650946d0*sin(0.59948143567d0 + 529.6909650946d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00565534918d0*41.1019810544d0*sin(5.98964907613d0 + 41.1019810544d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00817588813d0*2.9689454166d0*sin(0.78180174031d0 + 2.9689454166d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.00823793287d0*35.1640902212d0*sin(1.43221581862d0 + 35.1640902212d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.01074040708d0*74.7815985673d0*sin(5.38502938672d0 + 74.7815985673d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.02597313814d0*1.4844727083d0*sin(1.99590301412d0 + 1.4844727083d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.13505661755d0*76.2660712756d0*sin(3.50078975634d0 + 76.2660712756d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.14935120126d0*39.6175083461d0*sin(1.08499403018d0 + 39.6175083461d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.15726094556d0*36.6485629295d0*sin(0.11319072675d0 + 36.6485629295d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*0.27080164222d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        neptune_x_0 = neptune_x_0 -(t**0)*30.05890004476d0*38.1330356378d0*sin(5.31211340029d0 + 38.1330356378d0 * t)

        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00013130617d0*cos(5.36424961848d0 + 2.9689454166d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00013130617d0*2.9689454166d0*sin(5.36424961848d0 + 2.9689454166d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00017459808d0*cos(4.26349398817d0 + 41.1019810544d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00017459808d0*41.1019810544d0*sin(4.26349398817d0 + 41.1019810544d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00021924705d0*cos(3.20156164152d0 + 35.1640902212d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00021924705d0*35.1640902212d0*sin(3.20156164152d0 + 35.1640902212d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00037965449d0*cos(3.14159265359d0 + 0.0d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00037965449d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00118398168d0*cos(2.88251845061d0 + 76.2660712756d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00118398168d0*76.2660712756d0*sin(2.88251845061d0 + 76.2660712756d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00243125299d0*cos(5.46214902873d0 + 39.6175083461d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00243125299d0*39.6175083461d0*sin(5.46214902873d0 + 39.6175083461d0 * t)
        neptune_x_1 = neptune_x_1 +(t**(0))*1*0.00255840261d0*cos(2.01935686795d0 + 36.6485629295d0*t)
        neptune_x_1 = neptune_x_1 -(t**1)*0.00255840261d0*36.6485629295d0*sin(2.01935686795d0 + 36.6485629295d0 * t)

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

        neptune_y_0 = neptune_y_0 -(t**0)*0.00012012961d0*1059.3819301892d0*sin(5.66157563804d0 + 1059.3819301892d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00012613583d0*112.9146342051d0*sin(1.99777332934d0 + 112.9146342051d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00012828708d0*111.4301614968d0*sin(1.16740053443d0 + 111.4301614968d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00020081559d0*33.6796175129d0*sin(1.19787916085d0 + 33.6796175129d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00028893355d0*42.5864537627d0*sin(3.21848975032d0 + 42.5864537627d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00068790261d0*4.4534181249d0*sin(4.26391997151d0 + 4.4534181249d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00090970871d0*114.3991069134d0*sin(0.11783619888d0 + 114.3991069134d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00135897385d0*77.7505439839d0*sin(3.97553750964d0 + 77.7505439839d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00272640298d0*213.299095438d0*sin(5.58603690785d0 + 213.299095438d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00304525203d0*73.297125859d0*sin(5.11048113661d0 + 73.297125859d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00495581047d0*529.6909650946d0*sin(5.31205825784d0 + 529.6909650946d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00565576412d0*41.1019810544d0*sin(4.41843009015d0 + 41.1019810544d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00582199295d0*35.1640902212d0*sin(6.19633718936d0 + 35.1640902212d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.00815187583d0*2.9689454166d0*sin(5.49429775826d0 + 2.9689454166d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.01073739772d0*74.7815985673d0*sin(3.81371728533d0 + 74.7815985673d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.02584250749d0*1.4844727083d0*sin(0.42549700754d0 + 1.4844727083d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.13506391797d0*76.2660712756d0*sin(1.92953034883d0 + 76.2660712756d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.14936165806d0*39.6175083461d0*sin(5.79694900665d0 + 39.6175083461d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.15706589373d0*36.6485629295d0*sin(4.82539970129d0 + 36.6485629295d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*0.30205857683d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        neptune_y_0 = neptune_y_0 -(t**0)*30.06056351665d0*38.1330356378d0*sin(3.74086294714d0 + 38.1330356378d0 * t)

        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.0001299238d0*cos(3.79578633002d0 + 2.9689454166d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.0001299238d0*2.9689454166d0*sin(3.79578633002d0 + 2.9689454166d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00017462332d0*cos(2.69229902966d0 + 41.1019810544d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00017462332d0*41.1019810544d0*sin(2.69229902966d0 + 41.1019810544d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00021936702d0*cos(1.63124087591d0 + 35.1640902212d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00021936702d0*35.1640902212d0*sin(1.63124087591d0 + 35.1640902212d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00118427205d0*cos(1.31128027037d0 + 76.2660712756d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00118427205d0*76.2660712756d0*sin(1.31128027037d0 + 76.2660712756d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00243147725d0*cos(3.89099798696d0 + 39.6175083461d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00243147725d0*39.6175083461d0*sin(3.89099798696d0 + 39.6175083461d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00256125493d0*cos(0.44757496817d0 + 36.6485629295d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00256125493d0*36.6485629295d0*sin(0.44757496817d0 + 36.6485629295d0 * t)
        neptune_y_1 = neptune_y_1 +(t**(0))*1*0.00352947493d0*cos(3.14159265359d0 + 0.0d0*t)
        neptune_y_1 = neptune_y_1 -(t**1)*0.00352947493d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

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

        neptune_z_1 = neptune_z_1 +(t**(0))*1*0.00154885971d0*cos(2.14239039664d0 + 38.1330356378d0*t)
        neptune_z_1 = neptune_z_1 -(t**1)*0.00154885971d0*38.1330356378d0*sin(2.14239039664d0 + 38.1330356378d0 * t)

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

        saturn_x_0 = saturn_x_0 -(t**0)*0.00012026472d0*351.8165923087d0*sin(5.66372282839d0 + 351.8165923087d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00012393514d0*490.3340891794d0*sin(4.19747622821d0 + 490.3340891794d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00012427525d0*1059.3819301892d0*sin(1.02995545746d0 + 1059.3819301892d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00014731703d0*277.0349937414d0*sin(4.67981909838d0 + 277.0349937414d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00023355468d0*149.5631971346d0*sin(0.18791490124d0 + 149.5631971346d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00023372467d0*647.0108333148d0*sin(5.53491987276d0 + 647.0108333148d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00024554499d0*210.1177017003d0*sin(4.53150598095d0 + 210.1177017003d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00024673219d0*522.5774180938d0*sin(5.9089157385d0 + 522.5774180938d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.0002467705d0*415.5524906121d0*sin(5.6038938242d0 + 415.5524906121d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00024805815d0*74.7815985673d0*sin(5.50327676733d0 + 74.7815985673d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00025165185d0*216.4804891757d0*sin(0.37800582257d0 + 216.4804891757d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00025491374d0*117.3198682202d0*sin(1.63922423181d0 + 117.3198682202d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00031253049d0*735.8765135318d0*sin(4.62976601833d0 + 735.8765135318d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00038345667d0*199.0720014364d0*sin(4.39815501478d0 + 199.0720014364d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00044551703d0*63.7358983034d0*sin(5.60763553535d0 + 63.7358983034d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00045550446d0*14.2270940016d0*sin(1.8823503783d0 + 14.2270940016d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00054022837d0*853.196381752d0*sin(4.90928184374d0 + 853.196381752d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00058297911d0*224.3447957019d0*sin(2.16155251399d0 + 224.3447957019d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00065620467d0*202.2533951741d0*sin(2.69728593339d0 + 202.2533951741d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00068855792d0*217.2312487011d0*sin(4.01788097627d0 + 217.2312487011d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00070219382d0*209.3669421749d0*sin(0.88789752415d0 + 209.3669421749d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00074150224d0*632.7837393132d0*sin(2.38206066655d0 + 632.7837393132d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00080600536d0*11.0457002639d0*sin(5.62103979796d0 + 11.0457002639d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00083782316d0*227.5261894396d0*sin(0.62038893702d0 + 227.5261894396d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00097843523d0*323.5054166574d0*sin(1.01485750417d0 + 323.5054166574d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00372894461d0*433.7117378768d0*sin(0.00137195497d0 + 433.7117378768d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00433994439d0*529.6909650946d0*sin(0.72012820974d0 + 529.6909650946d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00509313365d0*103.0927742186d0*sin(4.9586562478d0 + 103.0927742186d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.00716328481d0*316.3918696566d0*sin(2.71149993708d0 + 316.3918696566d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.01097683232d0*639.897286314d0*sin(5.65753337256d0 + 639.897286314d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.01115684467d0*419.4846438752d0*sin(3.15686878377d0 + 419.4846438752d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.01255372247d0*110.2063212194d0*sin(2.17338917731d0 + 110.2063212194d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.02336340488d0*7.1135470008d0*sin(2.02227784673d0 + 7.1135470008d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.04244797817d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.06624260115d0*220.4126424388d0*sin(0.7509473778d0 + 220.4126424388d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.06760430339d0*206.1855484372d0*sin(4.16767145778d0 + 206.1855484372d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*0.26412374238d0*426.598190876d0*sin(0.1239089262d0 + 426.598190876d0 * t)
        saturn_x_0 = saturn_x_0 -(t**0)*9.51638335797d0*213.299095438d0*sin(0.87441380794d0 + 213.299095438d0 * t)

        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00011061528d0*cos(0.03163071461d0 + 117.3198682202d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00011061528d0*117.3198682202d0*sin(0.03163071461d0 + 117.3198682202d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.0001446601d0*cos(3.6744938009d0 + 647.0108333148d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.0001446601d0*647.0108333148d0*sin(3.6744938009d0 + 647.0108333148d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00015894491d0*cos(0.03653502304d0 + 210.1177017003d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00015894491d0*210.1177017003d0*sin(0.03653502304d0 + 210.1177017003d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00016192653d0*cos(5.6079801445d0 + 323.5054166574d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00016192653d0*323.5054166574d0*sin(5.6079801445d0 + 323.5054166574d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00016296201d0*cos(4.86945681437d0 + 216.4804891757d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00016296201d0*216.4804891757d0*sin(4.86945681437d0 + 216.4804891757d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.0001712025d0*cos(4.59611664188d0 + 632.7837393132d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.0001712025d0*632.7837393132d0*sin(4.59611664188d0 + 632.7837393132d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00017777854d0*cos(6.10381593351d0 + 217.2312487011d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00017777854d0*217.2312487011d0*sin(6.10381593351d0 + 217.2312487011d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00018093009d0*cos(5.09162723865d0 + 209.3669421749d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00018093009d0*209.3669421749d0*sin(5.09162723865d0 + 209.3669421749d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00018939377d0*cos(2.77618306725d0 + 853.196381752d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00018939377d0*853.196381752d0*sin(2.77618306725d0 + 853.196381752d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.0002227521d0*cos(6.19530878014d0 + 103.0927742186d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.0002227521d0*103.0927742186d0*sin(6.19530878014d0 + 103.0927742186d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.000304181d0*cos(0.18746903351d0 + 14.2270940016d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.000304181d0*14.2270940016d0*sin(0.18746903351d0 + 14.2270940016d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.0003100084d0*cos(6.06067919437d0 + 199.0720014364d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.0003100084d0*199.0720014364d0*sin(6.06067919437d0 + 199.0720014364d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00066764238d0*cos(3.72346596928d0 + 316.3918696566d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00066764238d0*316.3918696566d0*sin(3.72346596928d0 + 316.3918696566d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00066901225d0*cos(5.2025750038d0 + 227.5261894396d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00066901225d0*227.5261894396d0*sin(5.2025750038d0 + 227.5261894396d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00119531145d0*cos(1.14735096078d0 + 110.2063212194d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00119531145d0*110.2063212194d0*sin(1.14735096078d0 + 110.2063212194d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00189196274d0*cos(4.48642453552d0 + 433.7117378768d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00189196274d0*433.7117378768d0*sin(4.48642453552d0 + 433.7117378768d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.0020364657d0*cos(1.10998681782d0 + 213.299095438d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.0020364657d0*213.299095438d0*sin(1.10998681782d0 + 213.299095438d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00256560953d0*cos(3.52478934343d0 + 639.897286314d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00256560953d0*639.897286314d0*sin(3.52478934343d0 + 639.897286314d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.00312356512d0*cos(4.83001724941d0 + 419.4846438752d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.00312356512d0*419.4846438752d0*sin(4.83001724941d0 + 419.4846438752d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.0062710452d0*cos(0.32898307969d0 + 7.1135470008d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.0062710452d0*7.1135470008d0*sin(0.32898307969d0 + 7.1135470008d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.02643100909d0*cos(5.33291950584d0 + 220.4126424388d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.02643100909d0*220.4126424388d0*sin(5.33291950584d0 + 220.4126424388d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.02714918399d0*cos(5.85229412397d0 + 206.1855484372d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.02714918399d0*206.1855484372d0*sin(5.85229412397d0 + 206.1855484372d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.03085041716d0*cos(4.27565749128d0 + 426.598190876d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.03085041716d0*426.598190876d0*sin(4.27565749128d0 + 426.598190876d0 * t)
        saturn_x_1 = saturn_x_1 +(t**(0))*1*0.07575103962d0*cos(0.0d0 + 0.0d0*t)
        saturn_x_1 = saturn_x_1 -(t**1)*0.07575103962d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00010330738d0*cos(4.7694953129d0 + 14.2270940016d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00010330738d0*14.2270940016d0*sin(4.7694953129d0 + 14.2270940016d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00012676167d0*cos(1.4546572953d0 + 199.0720014364d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00012676167d0*199.0720014364d0*sin(1.4546572953d0 + 199.0720014364d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00027153555d0*cos(3.49804002218d0 + 227.5261894396d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00027153555d0*227.5261894396d0*sin(3.49804002218d0 + 227.5261894396d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00032847824d0*cos(1.59210153669d0 + 639.897286314d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00032847824d0*639.897286314d0*sin(1.59210153669d0 + 639.897286314d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.0004512259d0*cos(0.36735068943d0 + 419.4846438752d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.0004512259d0*419.4846438752d0*sin(0.36735068943d0 + 419.4846438752d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00050028094d0*cos(2.70119046081d0 + 433.7117378768d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00050028094d0*433.7117378768d0*sin(2.70119046081d0 + 433.7117378768d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00087170924d0*cos(4.89048951691d0 + 7.1135470008d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00087170924d0*7.1135470008d0*sin(4.89048951691d0 + 7.1135470008d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00224302269d0*cos(2.49151203519d0 + 426.598190876d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00224302269d0*426.598190876d0*sin(2.49151203519d0 + 426.598190876d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00336109713d0*cos(2.4254743246d0 + 213.299095438d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00336109713d0*213.299095438d0*sin(2.4254743246d0 + 213.299095438d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00443342186d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00443342186d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00545834518d0*cos(3.62343709657d0 + 220.4126424388d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00545834518d0*220.4126424388d0*sin(3.62343709657d0 + 220.4126424388d0 * t)
        saturn_x_2 = saturn_x_2 +(t**(1))*2*0.00560746334d0*cos(1.26401632282d0 + 206.1855484372d0*t)
        saturn_x_2 = saturn_x_2 -(t**2)*0.00560746334d0*206.1855484372d0*sin(1.26401632282d0 + 206.1855484372d0 * t)

        saturn_x_3 = saturn_x_3 +(t**(2))*3*0.00010527244d0*cos(0.66368256891d0 + 426.598190876d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*0.00010527244d0*426.598190876d0*sin(0.66368256891d0 + 426.598190876d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*0.00018450895d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*0.00018450895d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*0.00075340436d0*cos(1.89208005248d0 + 220.4126424388d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*0.00075340436d0*220.4126424388d0*sin(1.89208005248d0 + 220.4126424388d0 * t)
        saturn_x_3 = saturn_x_3 +(t**(2))*3*0.00077115952d0*cos(2.97714385362d0 + 206.1855484372d0*t)
        saturn_x_3 = saturn_x_3 -(t**3)*0.00077115952d0*206.1855484372d0*sin(2.97714385362d0 + 206.1855484372d0 * t)

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

        saturn_y_0 = saturn_y_0 -(t**0)*0.0001162921d0*1059.3819301892d0*sin(5.74108283772d0 + 1059.3819301892d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00012048048d0*351.8165923087d0*sin(4.09265980116d0 + 351.8165923087d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00012422966d0*490.3340891794d0*sin(2.62557865743d0 + 490.3340891794d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00015383927d0*277.0349937414d0*sin(3.10227822627d0 + 277.0349937414d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00020099552d0*522.5774180938d0*sin(0.98365186365d0 + 522.5774180938d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00020272215d0*309.2783226558d0*sin(2.34319548198d0 + 309.2783226558d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00023380691d0*149.5631971346d0*sin(4.90051072276d0 + 149.5631971346d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00023396742d0*647.0108333148d0*sin(3.96337393635d0 + 647.0108333148d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00024640836d0*210.1177017003d0*sin(2.95445247282d0 + 210.1177017003d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.0002482795d0*74.7815985673d0*sin(3.926814289d0 + 74.7815985673d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00024835151d0*415.5524906121d0*sin(4.02630190571d0 + 415.5524906121d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00025199575d0*216.4804891757d0*sin(5.08963506006d0 + 216.4804891757d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00025545907d0*117.3198682202d0*sin(0.06626229252d0 + 117.3198682202d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00029666833d0*735.8765135318d0*sin(6.09910638345d0 + 735.8765135318d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00041976402d0*199.0720014364d0*sin(2.62591355948d0 + 199.0720014364d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00044697175d0*63.7358983034d0*sin(0.90661238256d0 + 63.7358983034d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.0004579093d0*14.2270940016d0*sin(0.30331527632d0 + 14.2270940016d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00054049836d0*853.196381752d0*sin(3.33757904879d0 + 853.196381752d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00058382264d0*224.3447957019d0*sin(0.58978766922d0 + 224.3447957019d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00065937657d0*202.2533951741d0*sin(1.25969608208d0 + 202.2533951741d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00068985859d0*217.2312487011d0*sin(2.44460312617d0 + 217.2312487011d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00070158491d0*209.3669421749d0*sin(5.59777963629d0 + 209.3669421749d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00070957225d0*632.7837393132d0*sin(0.88888207567d0 + 632.7837393132d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00080571808d0*11.0457002639d0*sin(4.0529544991d0 + 11.0457002639d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00083899691d0*227.5261894396d0*sin(5.33204070267d0 + 227.5261894396d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00097837745d0*323.5054166574d0*sin(5.72844290173d0 + 323.5054166574d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00335162363d0*103.0927742186d0*sin(0.66422253983d0 + 103.0927742186d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00373327342d0*433.7117378768d0*sin(4.71308726958d0 + 433.7117378768d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00434466176d0*529.6909650946d0*sin(5.42474696262d0 + 529.6909650946d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.00700849336d0*316.3918696566d0*sin(1.13611298025d0 + 316.3918696566d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.01098751131d0*639.897286314d0*sin(4.08608782813d0 + 639.897286314d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.01183874652d0*419.4846438752d0*sin(1.34638298371d0 + 419.4846438752d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.01245790434d0*110.2063212194d0*sin(0.60367177975d0 + 110.2063212194d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.02345609742d0*7.1135470008d0*sin(0.44652132519d0 + 7.1135470008d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.06633570703d0*220.4126424388d0*sin(5.46258848288d0 + 220.4126424388d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.06916653915d0*206.1855484372d0*sin(2.55279408706d0 + 206.1855484372d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.26441781302d0*426.598190876d0*sin(4.83528061849d0 + 426.598190876d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*0.79387988806d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_y_0 = saturn_y_0 -(t**0)*9.52986882699d0*213.299095438d0*sin(5.58600556665d0 + 213.299095438d0 * t)

        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.0001108404d0*cos(4.74073871754d0 + 117.3198682202d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.0001108404d0*117.3198682202d0*sin(4.74073871754d0 + 117.3198682202d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00014481431d0*cos(2.1029829865d0 + 647.0108333148d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00014481431d0*647.0108333148d0*sin(2.1029829865d0 + 647.0108333148d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00015944258d0*cos(4.74503265169d0 + 210.1177017003d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00015944258d0*210.1177017003d0*sin(4.74503265169d0 + 210.1177017003d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00016149947d0*cos(4.04186432517d0 + 323.5054166574d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00016149947d0*323.5054166574d0*sin(4.04186432517d0 + 323.5054166574d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00016320701d0*cos(3.2978403097d0 + 216.4804891757d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00016320701d0*216.4804891757d0*sin(3.2978403097d0 + 216.4804891757d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00016717122d0*cos(3.00270792752d0 + 632.7837393132d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00016717122d0*632.7837393132d0*sin(3.00270792752d0 + 632.7837393132d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00017791543d0*cos(4.53214140649d0 + 217.2312487011d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00017791543d0*217.2312487011d0*sin(4.53214140649d0 + 217.2312487011d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00018079959d0*cos(3.51566153251d0 + 209.3669421749d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00018079959d0*209.3669421749d0*sin(3.51566153251d0 + 209.3669421749d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00018945004d0*cos(1.20412493845d0 + 853.196381752d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00018945004d0*853.196381752d0*sin(1.20412493845d0 + 853.196381752d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00022234714d0*cos(4.62212779231d0 + 103.0927742186d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00022234714d0*103.0927742186d0*sin(4.62212779231d0 + 103.0927742186d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00030628998d0*cos(4.88861760772d0 + 14.2270940016d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00030628998d0*14.2270940016d0*sin(4.88861760772d0 + 14.2270940016d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00033002406d0*cos(4.35527405801d0 + 199.0720014364d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00033002406d0*199.0720014364d0*sin(4.35527405801d0 + 199.0720014364d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00067003292d0*cos(3.63101075514d0 + 227.5261894396d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00067003292d0*227.5261894396d0*sin(3.63101075514d0 + 227.5261894396d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00067210919d0*cos(2.17042636344d0 + 316.3918696566d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00067210919d0*316.3918696566d0*sin(2.17042636344d0 + 316.3918696566d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00116791227d0*cos(5.8914667576d0 + 110.2063212194d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00116791227d0*110.2063212194d0*sin(5.8914667576d0 + 110.2063212194d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00164133553d0*cos(5.29239290066d0 + 213.299095438d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00164133553d0*213.299095438d0*sin(5.29239290066d0 + 213.299095438d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00189433319d0*cos(2.91501840819d0 + 433.7117378768d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00189433319d0*433.7117378768d0*sin(2.91501840819d0 + 433.7117378768d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00256799701d0*cos(1.95351819758d0 + 639.897286314d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00256799701d0*639.897286314d0*sin(1.95351819758d0 + 639.897286314d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.0031227193d0*cos(3.25850205023d0 + 419.4846438752d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.0031227193d0*419.4846438752d0*sin(3.25850205023d0 + 419.4846438752d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.00631520527d0*cos(5.0324550528d0 + 7.1135470008d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.00631520527d0*7.1135470008d0*sin(5.0324550528d0 + 7.1135470008d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.02647489677d0*cos(3.76132298889d0 + 220.4126424388d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.02647489677d0*220.4126424388d0*sin(3.76132298889d0 + 220.4126424388d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.02741594312d0*cos(4.26667636015d0 + 206.1855484372d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.02741594312d0*206.1855484372d0*sin(4.26667636015d0 + 206.1855484372d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.03090575152d0*cos(2.70346890906d0 + 426.598190876d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.03090575152d0*426.598190876d0*sin(2.70346890906d0 + 426.598190876d0 * t)
        saturn_y_1 = saturn_y_1 +(t**(0))*1*0.05373889135d0*cos(0.0d0 + 0.0d0*t)
        saturn_y_1 = saturn_y_1 -(t**1)*0.05373889135d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00010425984d0*cos(3.18246869028d0 + 14.2270940016d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00010425984d0*14.2270940016d0*sin(3.18246869028d0 + 14.2270940016d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00013251505d0*cos(6.07693099404d0 + 199.0720014364d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00013251505d0*199.0720014364d0*sin(6.07693099404d0 + 199.0720014364d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00027199743d0*cos(1.9263841764d0 + 227.5261894396d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00027199743d0*227.5261894396d0*sin(1.9263841764d0 + 227.5261894396d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00032896745d0*cos(0.02089057938d0 + 639.897286314d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00032896745d0*639.897286314d0*sin(0.02089057938d0 + 639.897286314d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00045516403d0*cos(5.07669466539d0 + 419.4846438752d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00045516403d0*419.4846438752d0*sin(5.07669466539d0 + 419.4846438752d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00050101314d0*cos(1.12976163835d0 + 433.7117378768d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00050101314d0*433.7117378768d0*sin(1.12976163835d0 + 433.7117378768d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00088390611d0*cos(3.30289449917d0 + 7.1135470008d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00088390611d0*7.1135470008d0*sin(3.30289449917d0 + 7.1135470008d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00225521642d0*cos(0.91699821445d0 + 426.598190876d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00225521642d0*426.598190876d0*sin(0.91699821445d0 + 426.598190876d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00362294249d0*cos(0.89540100509d0 + 213.299095438d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00362294249d0*213.299095438d0*sin(0.89540100509d0 + 213.299095438d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00458518613d0*cos(0.0d0 + 0.0d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00458518613d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00547012116d0*cos(2.05154973426d0 + 220.4126424388d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00547012116d0*220.4126424388d0*sin(2.05154973426d0 + 220.4126424388d0 * t)
        saturn_y_2 = saturn_y_2 +(t**(1))*2*0.00563706537d0*cos(5.97115878242d0 + 206.1855484372d0*t)
        saturn_y_2 = saturn_y_2 -(t**2)*0.00563706537d0*206.1855484372d0*sin(5.97115878242d0 + 206.1855484372d0 * t)

        saturn_y_3 = saturn_y_3 +(t**(2))*3*0.00010672263d0*cos(5.3649566382d0 + 426.598190876d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*0.00010672263d0*426.598190876d0*sin(5.3649566382d0 + 426.598190876d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*0.00022843837d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*0.00022843837d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*0.00075564351d0*cos(0.31962896379d0 + 220.4126424388d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*0.00075564351d0*220.4126424388d0*sin(0.31962896379d0 + 220.4126424388d0 * t)
        saturn_y_3 = saturn_y_3 +(t**(2))*3*0.00077376615d0*cos(1.40391048961d0 + 206.1855484372d0*t)
        saturn_y_3 = saturn_y_3 -(t**3)*0.00077376615d0*206.1855484372d0*sin(1.40391048961d0 + 206.1855484372d0 * t)

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

        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.00016179946d0*cos(1.19987517506d0 + 419.4846438752d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.00016179946d0*419.4846438752d0*sin(1.19987517506d0 + 419.4846438752d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.00022257446d0*cos(3.07684015656d0 + 7.1135470008d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.00022257446d0*7.1135470008d0*sin(3.07684015656d0 + 7.1135470008d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.00085947578d0*cos(0.51612788497d0 + 426.598190876d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.00085947578d0*426.598190876d0*sin(0.51612788497d0 + 426.598190876d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.00101466332d0*cos(1.79095829545d0 + 220.4126424388d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.00101466332d0*220.4126424388d0*sin(1.79095829545d0 + 220.4126424388d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.00130262284d0*cos(2.26140980879d0 + 206.1855484372d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.00130262284d0*206.1855484372d0*sin(2.26140980879d0 + 206.1855484372d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.00528301265d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.00528301265d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_z_1 = saturn_z_1 +(t**(0))*1*0.01906503283d0*cos(4.94544746116d0 + 213.299095438d0*t)
        saturn_z_1 = saturn_z_1 -(t**1)*0.01906503283d0*213.299095438d0*sin(4.94544746116d0 + 213.299095438d0 * t)

        saturn_z_2 = saturn_z_2 +(t**(1))*2*0.00019322173d0*cos(0.09228748624d0 + 220.4126424388d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*0.00019322173d0*220.4126424388d0*sin(0.09228748624d0 + 220.4126424388d0 * t)
        saturn_z_2 = saturn_z_2 +(t**(1))*2*0.00030147649d0*cos(3.91396203887d0 + 206.1855484372d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*0.00030147649d0*206.1855484372d0*sin(3.91396203887d0 + 206.1855484372d0 * t)
        saturn_z_2 = saturn_z_2 +(t**(1))*2*0.00131275155d0*cos(0.08868998101d0 + 213.299095438d0*t)
        saturn_z_2 = saturn_z_2 -(t**2)*0.00131275155d0*213.299095438d0*sin(0.08868998101d0 + 213.299095438d0 * t)

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

        uranus_x_0 = uranus_x_0 -(t**0)*0.0001079835d0*77.962992305d0*sin(1.70031857078d0 + 77.962992305d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.000112458d0*71.6002048296d0*sin(6.11597016146d0 + 71.6002048296d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00011538642d0*77.2292791221d0*sin(1.77241794539d0 + 77.2292791221d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00011997848d0*1059.3819301892d0*sin(0.94875212305d0 + 1059.3819301892d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00012253318d0*36.6485629295d0*sin(0.19452856525d0 + 36.6485629295d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00012394786d0*72.3339180125d0*sin(6.2189287885d0 + 72.3339180125d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00012884351d0*145.1097790097d0*sin(5.0873799947d0 + 145.1097790097d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00013593955d0*87.3117715395d0*sin(2.55407820633d0 + 87.3117715395d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00013948521d0*221.3758502853d0*sin(6.2754569416d0 + 221.3758502853d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00015171194d0*41.1019810544d0*sin(2.88415453399d0 + 41.1019810544d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0001658787d0*108.4612160802d0*sin(4.86920309163d0 + 108.4612160802d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00018565067d0*52.6901980395d0*sin(0.62225019017d0 + 52.6901980395d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00018575632d0*33.6796175129d0*sin(5.7021747579d0 + 33.6796175129d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00019653873d0*74.8934731519d0*sin(2.28660913421d0 + 74.8934731519d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00019676762d0*74.6697239827d0*sin(5.53431398332d0 + 74.6697239827d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00019926329d0*112.9146342051d0*sin(1.39878194708d0 + 112.9146342051d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0001995428d0*12.5301729722d0*sin(0.57450958037d0 + 12.5301729722d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00020084756d0*22.0914005278d0*sin(4.47297488471d0 + 22.0914005278d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00022963939d0*84.3428261229d0*sin(5.51475073655d0 + 84.3428261229d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00023467802d0*145.6310438715d0*sin(4.09729860322d0 + 145.6310438715d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00025208833d0*9.5612275556d0*sin(5.30272144657d0 + 9.5612275556d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00026657176d0*160.6088973985d0*sin(6.11027939727d0 + 160.6088973985d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00028371614d0*127.4717966068d0*sin(2.58026657123d0 + 127.4717966068d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00028384953d0*184.7272873558d0*sin(6.01785430306d0 + 184.7272873558d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00031823951d0*152.5321425512d0*sin(5.53948583244d0 + 152.5321425512d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00033134636d0*65.2203710117d0*sin(2.54201591218d0 + 65.2203710117d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0003386705d0*70.3281804424d0*sin(5.98418436103d0 + 70.3281804424d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00034341683d0*225.8292684102d0*sin(3.03781661928d0 + 225.8292684102d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00034555652d0*79.2350166922d0*sin(1.84699329257d0 + 79.2350166922d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00035943348d0*202.2533951741d0*sin(4.08754543016d0 + 202.2533951741d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00039181662d0*4.4534181249d0*sin(2.68841280769d0 + 4.4534181249d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00053904041d0*3.9321532631d0*sin(3.92590422507d0 + 3.9321532631d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00063584588d0*299.1263942692d0*sin(0.29966233158d0 + 299.1263942692d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00065066905d0*109.9456887885d0*sin(3.73008452906d0 + 109.9456887885d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00104619827d0*146.594251718d0*sin(3.90538916334d0 + 146.594251718d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00110125387d0*35.1640902212d0*sin(4.45473528724d0 + 35.1640902212d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00111260244d0*222.8603229936d0*sin(5.12252784325d0 + 222.8603229936d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00119593859d0*39.6175083461d0*sin(4.10138544267d0 + 39.6175083461d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00125105686d0*111.4301614968d0*sin(2.51455273063d0 + 111.4301614968d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00135340032d0*78.7137518304d0*sin(5.51062460816d0 + 78.7137518304d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00145505389d0*70.8494453042d0*sin(2.31759757085d0 + 70.8494453042d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00215368005d0*38.1330356378d0*sin(5.30877641428d0 + 38.1330356378d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00267938156d0*213.299095438d0*sin(0.96885660137d0 + 213.299095438d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00383625535d0*138.5174968707d0*sin(6.18762010576d0 + 138.5174968707d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00458219984d0*2.9689454166d0*sin(3.90788284112d0 + 2.9689454166d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00496087649d0*529.6909650946d0*sin(0.59947400861d0 + 529.6909650946d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00547699056d0*85.8272988312d0*sin(3.63127725056d0 + 85.8272988312d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00585182542d0*71.8126531507d0*sin(4.79934779678d0 + 71.8126531507d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00621624676d0*77.7505439839d0*sin(3.05882246638d0 + 77.7505439839d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0063400027d0*63.7358983034d0*sin(4.09556589724d0 + 63.7358983034d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00657524815d0*151.0476698429d0*sin(0.57595170636d0 + 151.0476698429d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.00944995563d0*11.0457002639d0*sin(1.65869338757d0 + 11.0457002639d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.0144421666d0*148.0787244263d0*sin(2.65117115201d0 + 148.0787244263d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.01542951343d0*224.3447957019d0*sin(4.12121838072d0 + 224.3447957019d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.06201106178d0*1.4844727083d0*sin(5.14043574125d0 + 1.4844727083d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.14130269479d0*76.2660712756d0*sin(4.39572927934d0 + 76.2660712756d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.14668209481d0*73.297125859d0*sin(3.42395862804d0 + 73.297125859d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*0.44402496796d0*149.5631971346d0*sin(1.65967519586d0 + 149.5631971346d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*1.32272523872d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        uranus_x_0 = uranus_x_0 -(t**0)*19.17370730359d0*74.7815985673d0*sin(5.48133416489d0 + 74.7815985673d0 * t)

        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00015211071d0*cos(5.5314163314d0 + 3.9321532631d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00015211071d0*3.9321532631d0*sin(5.5314163314d0 + 3.9321532631d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00017376241d0*cos(0.2460722123d0 + 71.8126531507d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00017376241d0*71.8126531507d0*sin(0.2460722123d0 + 71.8126531507d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.0001944197d0*cos(1.30617490304d0 + 77.7505439839d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.0001944197d0*77.7505439839d0*sin(1.30617490304d0 + 77.7505439839d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00021685656d0*cos(4.93710968392d0 + 151.0476698429d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00021685656d0*151.0476698429d0*sin(4.93710968392d0 + 151.0476698429d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00032333094d0*cos(5.06666556704d0 + 74.7815985673d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00032333094d0*74.7815985673d0*sin(5.06666556704d0 + 74.7815985673d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00036158493d0*cos(1.23634798757d0 + 78.7137518304d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00036158493d0*78.7137518304d0*sin(1.23634798757d0 + 78.7137518304d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.0003884433d0*cos(0.30724575951d0 + 70.8494453042d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.0003884433d0*70.8494453042d0*sin(0.30724575951d0 + 70.8494453042d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00045687564d0*cos(2.29216583843d0 + 138.5174968707d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00045687564d0*138.5174968707d0*sin(2.29216583843d0 + 138.5174968707d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00051382501d0*cos(2.1893512526d0 + 224.3447957019d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00051382501d0*224.3447957019d0*sin(2.1893512526d0 + 224.3447957019d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.0008151187d0*cos(1.21058618039d0 + 85.8272988312d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.0008151187d0*85.8272988312d0*sin(1.21058618039d0 + 85.8272988312d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00096352822d0*cos(0.35070389084d0 + 63.7358983034d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00096352822d0*63.7358983034d0*sin(0.35070389084d0 + 63.7358983034d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00111045158d0*cos(5.5715723596d0 + 11.0457002639d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00111045158d0*11.0457002639d0*sin(5.5715723596d0 + 11.0457002639d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00229676787d0*cos(2.48204455775d0 + 76.2660712756d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00229676787d0*76.2660712756d0*sin(2.48204455775d0 + 76.2660712756d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00239840801d0*cos(5.33657762707d0 + 73.297125859d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00239840801d0*73.297125859d0*sin(5.33657762707d0 + 73.297125859d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00526878306d0*cos(3.14159265359d0 + 0.0d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00526878306d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        uranus_x_1 = uranus_x_1 +(t**(0))*1*0.00739730021d0*cos(6.01067825116d0 + 149.5631971346d0*t)
        uranus_x_1 = uranus_x_1 -(t**1)*0.00739730021d0*149.5631971346d0*sin(6.01067825116d0 + 149.5631971346d0 * t)

        uranus_x_2 = uranus_x_2 +(t**(1))*2*0.00010915299d0*cos(3.0298777627d0 + 149.5631971346d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*0.00010915299d0*149.5631971346d0*sin(3.0298777627d0 + 149.5631971346d0 * t)
        uranus_x_2 = uranus_x_2 +(t**(1))*2*0.00016015732d0*cos(3.83700026619d0 + 74.7815985673d0*t)
        uranus_x_2 = uranus_x_2 -(t**2)*0.00016015732d0*74.7815985673d0*sin(3.83700026619d0 + 74.7815985673d0 * t)

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

        uranus_y_0 = uranus_y_0 -(t**0)*0.00010819728d0*77.962992305d0*sin(0.12807029856d0 + 77.962992305d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0001123902d0*71.6002048296d0*sin(4.54508334011d0 + 71.6002048296d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0001153114d0*77.2292791221d0*sin(0.20190074645d0 + 77.2292791221d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00011996772d0*1059.3819301892d0*sin(5.66129275335d0 + 1059.3819301892d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00012407787d0*72.3339180125d0*sin(4.6494578334d0 + 72.3339180125d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00013589665d0*87.3117715395d0*sin(0.9831371993d0 + 87.3117715395d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00013948849d0*221.3758502853d0*sin(4.70474945682d0 + 221.3758502853d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00015174962d0*41.1019810544d0*sin(1.31314034959d0 + 41.1019810544d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00015537967d0*52.6901980395d0*sin(1.8786327546d0 + 52.6901980395d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00018126776d0*33.6796175129d0*sin(0.98478853787d0 + 33.6796175129d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00019643845d0*74.8934731519d0*sin(0.71577796385d0 + 74.8934731519d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00019666208d0*74.6697239827d0*sin(3.96350065335d0 + 74.6697239827d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00019838981d0*12.5301729722d0*sin(5.29113397354d0 + 12.5301729722d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00019901477d0*112.9146342051d0*sin(6.11075402434d0 + 112.9146342051d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00020051641d0*22.0914005278d0*sin(2.90386352937d0 + 22.0914005278d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.000201151d0*127.4717966068d0*sin(3.45473780762d0 + 127.4717966068d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00021523908d0*36.6485629295d0*sin(4.93565132068d0 + 36.6485629295d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00022933138d0*84.3428261229d0*sin(3.9445554035d0 + 84.3428261229d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00023427328d0*145.6310438715d0*sin(2.52740125551d0 + 145.6310438715d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00025237176d0*70.3281804424d0*sin(4.45141413666d0 + 70.3281804424d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00026157754d0*9.5612275556d0*sin(3.74097610798d0 + 9.5612275556d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00026652859d0*160.6088973985d0*sin(4.53944395347d0 + 160.6088973985d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00028372491d0*184.7272873558d0*sin(4.44714627097d0 + 184.7272873558d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00031816303d0*152.5321425512d0*sin(3.96860170484d0 + 152.5321425512d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00034205426d0*65.2203710117d0*sin(0.92405922576d0 + 65.2203710117d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00034334377d0*225.8292684102d0*sin(1.46696169843d0 + 225.8292684102d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00034538316d0*79.2350166922d0*sin(0.27613780697d0 + 79.2350166922d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00039218598d0*4.4534181249d0*sin(1.11841109252d0 + 4.4534181249d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00039256771d0*202.2533951741d0*sin(5.75956853703d0 + 202.2533951741d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00053289771d0*3.9321532631d0*sin(2.38437587876d0 + 3.9321532631d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00063573747d0*299.1263942692d0*sin(5.0120496792d0 + 299.1263942692d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00063774261d0*109.9456887885d0*sin(2.15607602904d0 + 109.9456887885d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00104507929d0*146.594251718d0*sin(2.33345675603d0 + 146.594251718d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00108584454d0*35.1640902212d0*sin(6.02234848388d0 + 35.1640902212d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0011120486d0*222.8603229936d0*sin(3.55163219419d0 + 222.8603229936d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00119670613d0*39.6175083461d0*sin(2.5305878378d0 + 39.6175083461d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00124868545d0*111.4301614968d0*sin(0.94315917319d0 + 111.4301614968d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0013529082d0*78.7137518304d0*sin(3.93970260616d0 + 78.7137518304d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00144032475d0*70.8494453042d0*sin(0.7501570092d0 + 70.8494453042d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00216239629d0*38.1330356378d0*sin(3.7380076758d0 + 38.1330356378d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00268363417d0*213.299095438d0*sin(5.6808529902d0 + 213.299095438d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00387922853d0*138.5174968707d0*sin(4.62026923885d0 + 138.5174968707d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0045958912d0*2.9689454166d0*sin(2.3374553607d0 + 2.9689454166d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00495936105d0*529.6909650946d0*sin(5.3120575374d0 + 529.6909650946d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00541961958d0*71.8126531507d0*sin(3.24476486661d0 + 71.8126531507d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00547472694d0*85.8272988312d0*sin(2.06037924573d0 + 85.8272988312d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0062132677d0*77.7505439839d0*sin(1.48795811387d0 + 77.7505439839d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00650331846d0*63.7358983034d0*sin(2.76142680222d0 + 63.7358983034d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.0065734312d0*151.0476698429d0*sin(5.28830704469d0 + 151.0476698429d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.00938975501d0*11.0457002639d0*sin(0.09275714761d0 + 11.0457002639d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.01442356575d0*148.0787244263d0*sin(1.08004542712d0 + 148.0787244263d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.01542668264d0*224.3447957019d0*sin(2.55040539213d0 + 224.3447957019d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.06250078231d0*1.4844727083d0*sin(3.56960243857d0 + 1.4844727083d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.14123958128d0*76.2660712756d0*sin(2.82486076549d0 + 76.2660712756d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.14755940186d0*73.297125859d0*sin(1.85423280679d0 + 73.297125859d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.16256125476d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*0.44390465203d0*149.5631971346d0*sin(0.08884111329d0 + 149.5631971346d0 * t)
        uranus_y_0 = uranus_y_0 -(t**0)*19.16518231584d0*74.7815985673d0*sin(3.91045677002d0 + 74.7815985673d0 * t)

        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00014991169d0*cos(3.97176856758d0 + 3.9321532631d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00014991169d0*3.9321532631d0*sin(3.97176856758d0 + 3.9321532631d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00017393206d0*cos(4.96098895488d0 + 71.8126531507d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00017393206d0*71.8126531507d0*sin(4.96098895488d0 + 71.8126531507d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00019425087d0*cos(6.01842187783d0 + 77.7505439839d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00019425087d0*77.7505439839d0*sin(6.01842187783d0 + 77.7505439839d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00021673269d0*cos(3.36607263522d0 + 151.0476698429d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00021673269d0*151.0476698429d0*sin(3.36607263522d0 + 151.0476698429d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00032420558d0*cos(4.32617271732d0 + 74.7815985673d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00032420558d0*74.7815985673d0*sin(4.32617271732d0 + 74.7815985673d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00036146116d0*cos(5.94859452787d0 + 78.7137518304d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00036146116d0*78.7137518304d0*sin(5.94859452787d0 + 78.7137518304d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00038296005d0*cos(5.01873578671d0 + 70.8494453042d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00038296005d0*70.8494453042d0*sin(5.01873578671d0 + 70.8494453042d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00045457174d0*cos(0.73292241207d0 + 138.5174968707d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00045457174d0*138.5174968707d0*sin(0.73292241207d0 + 138.5174968707d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00051366974d0*cos(0.61844114994d0 + 224.3447957019d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00051366974d0*224.3447957019d0*sin(0.61844114994d0 + 224.3447957019d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00081474163d0*cos(5.92275367106d0 + 85.8272988312d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00081474163d0*85.8272988312d0*sin(5.92275367106d0 + 85.8272988312d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00094979054d0*cos(5.07141537066d0 + 63.7358983034d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00094979054d0*63.7358983034d0*sin(5.07141537066d0 + 63.7358983034d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00110137111d0*cos(4.00844441616d0 + 11.0457002639d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00110137111d0*11.0457002639d0*sin(4.00844441616d0 + 11.0457002639d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00229396424d0*cos(0.91090183978d0 + 76.2660712756d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00229396424d0*76.2660712756d0*sin(0.91090183978d0 + 76.2660712756d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00238545685d0*cos(3.76882493145d0 + 73.297125859d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00238545685d0*73.297125859d0*sin(3.76882493145d0 + 73.297125859d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.00739227349d0*cos(4.43963890935d0 + 149.5631971346d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.00739227349d0*149.5631971346d0*sin(4.43963890935d0 + 149.5631971346d0 * t)
        uranus_y_1 = uranus_y_1 +(t**(0))*1*0.02157896385d0*cos(0.0d0 + 0.0d0*t)
        uranus_y_1 = uranus_y_1 -(t**1)*0.02157896385d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        uranus_y_2 = uranus_y_2 +(t**(1))*2*0.00010905147d0*cos(1.45737963668d0 + 149.5631971346d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*0.00010905147d0*149.5631971346d0*sin(1.45737963668d0 + 149.5631971346d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*0.00016589194d0*cos(2.2955674062d0 + 74.7815985673d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*0.00016589194d0*74.7815985673d0*sin(2.2955674062d0 + 74.7815985673d0 * t)
        uranus_y_2 = uranus_y_2 +(t**(1))*2*0.00034812647d0*cos(3.14159265359d0 + 0.0d0*t)
        uranus_y_2 = uranus_y_2 -(t**2)*0.00034812647d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

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

        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.00023874178d0*cos(2.7387049122d0 + 149.5631971346d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.00023874178d0*149.5631971346d0*sin(2.7387049122d0 + 149.5631971346d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.00049648951d0*cos(0.0d0 + 0.0d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.00049648951d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        uranus_z_1 = uranus_z_1 +(t**(0))*1*0.00655916626d0*cos(0.0127194766d0 + 74.7815985673d0*t)
        uranus_z_1 = uranus_z_1 -(t**1)*0.00655916626d0*74.7815985673d0*sin(0.0127194766d0 + 74.7815985673d0 * t)

        uranus_z_2 = uranus_z_2 +(t**(1))*2*0.00014697858d0*cos(1.75149165003d0 + 74.7815985673d0*t)
        uranus_z_2 = uranus_z_2 -(t**2)*0.00014697858d0*74.7815985673d0*sin(1.75149165003d0 + 74.7815985673d0 * t)

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

        venus_x_0 = venus_x_0 -(t**0)*0.00244500474d0*20426.571092422d0*sin(4.05566613861d0 + 20426.571092422d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.00486448018d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        venus_x_0 = venus_x_0 -(t**0)*0.72211281391d0*10213.285546211d0*sin(3.17575836361d0 + 10213.285546211d0 * t)

        venus_x_1 = venus_x_1 +(t**(0))*1*0.00017234992d0*cos(0.92721124604d0 + 20426.571092422d0*t)
        venus_x_1 = venus_x_1 -(t**1)*0.00017234992d0*20426.571092422d0*sin(0.92721124604d0 + 20426.571092422d0 * t)
        venus_x_1 = venus_x_1 +(t**(0))*1*0.00033862636d0*cos(3.14159265359d0 + 0.0d0*t)
        venus_x_1 = venus_x_1 -(t**1)*0.00033862636d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)

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

        venus_y_0 = venus_y_0 -(t**0)*0.0024488479d0*20426.571092422d0*sin(2.48564954004d0 + 20426.571092422d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.00549506273d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        venus_y_0 = venus_y_0 -(t**0)*0.72324820731d0*10213.285546211d0*sin(1.60573808356d0 + 10213.285546211d0 * t)

        venus_y_1 = venus_y_1 +(t**(0))*1*0.00017282326d0*cos(5.638247359d0 + 20426.571092422d0*t)
        venus_y_1 = venus_y_1 -(t**1)*0.00017282326d0*20426.571092422d0*sin(5.638247359d0 + 20426.571092422d0 * t)
        venus_y_1 = venus_y_1 +(t**(0))*1*0.0003923143d0*cos(0.0d0 + 0.0d0*t)
        venus_y_1 = venus_y_1 -(t**1)*0.0003923143d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        venus_z_0 = venus_z_0 -(t**0)*0.00014501879d0*20426.571092422d0*sin(1.1469691139d0 + 20426.571092422d0 * t)
        venus_z_0 = venus_z_0 -(t**0)*0.00035588343d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        venus_z_0 = venus_z_0 -(t**0)*0.04282990302d0*10213.285546211d0*sin(0.26703856476d0 + 10213.285546211d0 * t)

        venus_z_1 = venus_z_1 +(t**(0))*1*0.00208096402d0*cos(1.88967278742d0 + 10213.285546211d0*t)
        venus_z_1 = venus_z_1 -(t**1)*0.00208096402d0*10213.285546211d0*sin(1.88967278742d0 + 10213.285546211d0 * t)

        r = venus_z_1+venus_z_0
    end function

end module VSOP87A_Micro_Velocities
