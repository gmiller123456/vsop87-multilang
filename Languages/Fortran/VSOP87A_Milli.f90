!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87A_Milli
    implicit none

    contains
    subroutine VSOP87A_Milli_getEarth(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_x(t)
        result(2)=earth_y(t)
        result(3)=earth_z(t)
    end subroutine

    subroutine VSOP87A_Milli_getEmb(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=emb_x(t)
        result(2)=emb_y(t)
        result(3)=emb_z(t)
    end subroutine

    subroutine VSOP87A_Milli_getJupiter(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_x(t)
        result(2)=jupiter_y(t)
        result(3)=jupiter_z(t)
    end subroutine

    subroutine VSOP87A_Milli_getMars(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_x(t)
        result(2)=mars_y(t)
        result(3)=mars_z(t)
    end subroutine

    subroutine VSOP87A_Milli_getMercury(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_x(t)
        result(2)=mercury_y(t)
        result(3)=mercury_z(t)
    end subroutine

    subroutine VSOP87A_Milli_getNeptune(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_x(t)
        result(2)=neptune_y(t)
        result(3)=neptune_z(t)
    end subroutine

    subroutine VSOP87A_Milli_getSaturn(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_x(t)
        result(2)=saturn_y(t)
        result(3)=saturn_z(t)
    end subroutine

    subroutine VSOP87A_Milli_getUranus(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_x(t)
        result(2)=uranus_y(t)
        result(3)=uranus_z(t)
    end subroutine

    subroutine VSOP87A_Milli_getVenus(t, result)
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

        earth_x_0 = earth_x_0 + 1.091006d-05*cos(3.68984782465d0 + 5223.6939198022d0 * t)
        earth_x_0 = earth_x_0 + 1.445242d-05*cos(3.4727278376d0 + 2352.8661537718d0 * t)
        earth_x_0 = earth_x_0 + 1.707882d-05*cos(6.15315547484d0 + 6286.5989683404d0 * t)
        earth_x_0 = earth_x_0 + 1.709103d-05*cos(0.49540223397d0 + 6279.5527316424d0 * t)
        earth_x_0 = earth_x_0 + 2.137256d-05*cos(1.09235189672d0 + 1577.3435424478d0 * t)
        earth_x_0 = earth_x_0 + 2.552498d-05*cos(0.58310207301d0 + 529.6909650946d0 * t)
        earth_x_0 = earth_x_0 + 3.110838d-05*cos(0.66875185215d0 + 83996.84731811189d0 * t)
        earth_x_0 = earth_x_0 + 0.00010466628d0*cos(1.66722645223d0 + 18849.2275499742d0 * t)
        earth_x_0 = earth_x_0 + 0.00561144206d0*cos(0.0d0 + 0.0d0 * t)
        earth_x_0 = earth_x_0 + 0.008352573d0*cos(1.7103453945d0 + 12566.1516999828d0 * t)
        earth_x_0 = earth_x_0 + 0.99982928844d0*cos(1.75348568475d0 + 6283.0758499914d0 * t)

        earth_x_1 = earth_x_1 + 1.068627d-05*cos(2.01554176551d0 + 6283.0758499914d0 * t)
        earth_x_1 = earth_x_1 + 1.290726d-05*cos(5.95943124583d0 + 18849.2275499742d0 * t)
        earth_x_1 = earth_x_1 + 0.00051500156d0*cos(6.00266267204d0 + 12566.1516999828d0 * t)
        earth_x_1 = earth_x_1 + 0.00123403056d0*cos(0.0d0 + 0.0d0 * t)
        earth_x_1=earth_x_1*t;

        earth_x_2 = earth_x_2 + 2.175695d-05*cos(4.39999849572d0 + 12566.1516999828d0 * t)
        earth_x_2 = earth_x_2 + 4.143217d-05*cos(3.14159265359d0 + 0.0d0 * t)
        earth_x_2=earth_x_2*t*t;

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

        earth_y_0 = earth_y_0 + 1.135092d-05*cos(5.2731341522d0 + 5223.6939198022d0 * t)
        earth_y_0 = earth_y_0 + 1.440265d-05*cos(1.90068164664d0 + 2352.8661537718d0 * t)
        earth_y_0 = earth_y_0 + 1.707987d-05*cos(4.58232858766d0 + 6286.5989683404d0 * t)
        earth_y_0 = earth_y_0 + 1.709219d-05*cos(5.20780401071d0 + 6279.5527316424d0 * t)
        earth_y_0 = earth_y_0 + 2.147473d-05*cos(2.66253538905d0 + 1577.3435424478d0 * t)
        earth_y_0 = earth_y_0 + 2.570338d-05*cos(5.3010397336d0 + 529.6909650946d0 * t)
        earth_y_0 = earth_y_0 + 3.110838d-05*cos(5.38114091484d0 + 83996.84731811189d0 * t)
        earth_y_0 = earth_y_0 + 0.00010466965d0*cos(0.09641690558d0 + 18849.2275499742d0 * t)
        earth_y_0 = earth_y_0 + 0.00835292314d0*cos(0.13952878991d0 + 12566.1516999828d0 * t)
        earth_y_0 = earth_y_0 + 0.02442699036d0*cos(3.14159265359d0 + 0.0d0 * t)
        earth_y_0 = earth_y_0 + 0.9998921103d0*cos(0.18265890456d0 + 6283.0758499914d0 * t)

        earth_y_1 = earth_y_1 + 1.2908d-05*cos(4.3886054854d0 + 18849.2275499742d0 * t)
        earth_y_1 = earth_y_1 + 0.00051506609d0*cos(4.43180499286d0 + 12566.1516999828d0 * t)
        earth_y_1 = earth_y_1 + 0.00093046324d0*cos(0.0d0 + 0.0d0 * t)
        earth_y_1=earth_y_1*t;

        earth_y_2 = earth_y_2 + 1.020487d-05*cos(4.63746718598d0 + 6283.0758499914d0 * t)
        earth_y_2 = earth_y_2 + 2.178016d-05*cos(2.82957544235d0 + 12566.1516999828d0 * t)
        earth_y_2 = earth_y_2 + 5.080208d-05*cos(0.0d0 + 0.0d0 * t)
        earth_y_2=earth_y_2*t*t;

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

        earth_z_1 = earth_z_1 + 1.903183d-05*cos(3.37061270964d0 + 12566.1516999828d0 * t)
        earth_z_1 = earth_z_1 + 5.429282d-05*cos(0.0d0 + 0.0d0 * t)
        earth_z_1 = earth_z_1 + 0.00227822442d0*cos(3.41372504278d0 + 6283.0758499914d0 * t)
        earth_z_1=earth_z_1*t;

        earth_z_2 = earth_z_2 + 9.721989d-05*cos(5.15233725915d0 + 6283.0758499914d0 * t)
        earth_z_2=earth_z_2*t*t;

        r = earth_z_2+earth_z_1
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

        emb_x_0 = emb_x_0 + 1.091006d-05*cos(3.68984782465d0 + 5223.6939198022d0 * t)
        emb_x_0 = emb_x_0 + 1.445242d-05*cos(3.4727278376d0 + 2352.8661537718d0 * t)
        emb_x_0 = emb_x_0 + 1.707882d-05*cos(6.15315547484d0 + 6286.5989683404d0 * t)
        emb_x_0 = emb_x_0 + 1.709103d-05*cos(0.49540223397d0 + 6279.5527316424d0 * t)
        emb_x_0 = emb_x_0 + 2.137256d-05*cos(1.09235189672d0 + 1577.3435424478d0 * t)
        emb_x_0 = emb_x_0 + 2.552498d-05*cos(0.58310207301d0 + 529.6909650946d0 * t)
        emb_x_0 = emb_x_0 + 0.00010466628d0*cos(1.66722645223d0 + 18849.2275499742d0 * t)
        emb_x_0 = emb_x_0 + 0.00561144161d0*cos(0.0d0 + 0.0d0 * t)
        emb_x_0 = emb_x_0 + 0.008352573d0*cos(1.7103453945d0 + 12566.1516999828d0 * t)
        emb_x_0 = emb_x_0 + 0.9998292746d0*cos(1.75348568475d0 + 6283.0758499914d0 * t)

        emb_x_1 = emb_x_1 + 1.068627d-05*cos(2.01554176551d0 + 6283.0758499914d0 * t)
        emb_x_1 = emb_x_1 + 1.290726d-05*cos(5.95943124583d0 + 18849.2275499742d0 * t)
        emb_x_1 = emb_x_1 + 0.00051500156d0*cos(6.00266267204d0 + 12566.1516999828d0 * t)
        emb_x_1 = emb_x_1 + 0.00123403046d0*cos(0.0d0 + 0.0d0 * t)
        emb_x_1=emb_x_1*t;

        emb_x_2 = emb_x_2 + 2.175695d-05*cos(4.39999849572d0 + 12566.1516999828d0 * t)
        emb_x_2 = emb_x_2 + 4.143217d-05*cos(3.14159265359d0 + 0.0d0 * t)
        emb_x_2=emb_x_2*t*t;

        r = emb_x_2+emb_x_1+emb_x_0
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

        emb_y_0 = emb_y_0 + 1.135092d-05*cos(5.2731341522d0 + 5223.6939198022d0 * t)
        emb_y_0 = emb_y_0 + 1.440265d-05*cos(1.90068164664d0 + 2352.8661537718d0 * t)
        emb_y_0 = emb_y_0 + 1.707987d-05*cos(4.58232858766d0 + 6286.5989683404d0 * t)
        emb_y_0 = emb_y_0 + 1.709219d-05*cos(5.20780401071d0 + 6279.5527316424d0 * t)
        emb_y_0 = emb_y_0 + 2.147473d-05*cos(2.66253538905d0 + 1577.3435424478d0 * t)
        emb_y_0 = emb_y_0 + 2.570338d-05*cos(5.3010397336d0 + 529.6909650946d0 * t)
        emb_y_0 = emb_y_0 + 0.00010466965d0*cos(0.09641690558d0 + 18849.2275499742d0 * t)
        emb_y_0 = emb_y_0 + 0.00835292314d0*cos(0.13952878991d0 + 12566.1516999828d0 * t)
        emb_y_0 = emb_y_0 + 0.02442698841d0*cos(3.14159265359d0 + 0.0d0 * t)
        emb_y_0 = emb_y_0 + 0.99989209645d0*cos(0.18265890456d0 + 6283.0758499914d0 * t)

        emb_y_1 = emb_y_1 + 1.2908d-05*cos(4.3886054854d0 + 18849.2275499742d0 * t)
        emb_y_1 = emb_y_1 + 0.00051506609d0*cos(4.43180499286d0 + 12566.1516999828d0 * t)
        emb_y_1 = emb_y_1 + 0.00093046317d0*cos(0.0d0 + 0.0d0 * t)
        emb_y_1=emb_y_1*t;

        emb_y_2 = emb_y_2 + 1.020487d-05*cos(4.63746718598d0 + 6283.0758499914d0 * t)
        emb_y_2 = emb_y_2 + 2.178016d-05*cos(2.82957544235d0 + 12566.1516999828d0 * t)
        emb_y_2 = emb_y_2 + 5.080208d-05*cos(0.0d0 + 0.0d0 * t)
        emb_y_2=emb_y_2*t*t;

        r = emb_y_2+emb_y_1+emb_y_0
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

        emb_z_1 = emb_z_1 + 1.903183d-05*cos(3.37061270964d0 + 12566.1516999828d0 * t)
        emb_z_1 = emb_z_1 + 5.429282d-05*cos(0.0d0 + 0.0d0 * t)
        emb_z_1 = emb_z_1 + 0.00227822442d0*cos(3.41372504278d0 + 6283.0758499914d0 * t)
        emb_z_1=emb_z_1*t;

        emb_z_2 = emb_z_2 + 9.721989d-05*cos(5.15233725915d0 + 6283.0758499914d0 * t)
        emb_z_2=emb_z_2*t*t;

        r = emb_z_2+emb_z_1
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

        jupiter_x_0 = jupiter_x_0 + 1.03357d-05*cos(0.08907208789d0 + 1795.258443721d0 * t)
        jupiter_x_0 = jupiter_x_0 + 1.080643d-05*cos(3.20528362573d0 + 532.1386456494d0 * t)
        jupiter_x_0 = jupiter_x_0 + 1.088284d-05*cos(1.1340610419d0 + 527.2432845398d0 * t)
        jupiter_x_0 = jupiter_x_0 + 1.361286d-05*cos(1.34792748837d0 + 1368.660252845d0 * t)
        jupiter_x_0 = jupiter_x_0 + 1.451667d-05*cos(5.7611270604d0 + 853.196381752d0 * t)
        jupiter_x_0 = jupiter_x_0 + 1.611229d-05*cos(5.49324974845d0 + 74.7815985673d0 * t)
        jupiter_x_0 = jupiter_x_0 + 1.6315d-05*cos(4.41910383466d0 + 942.062061969d0 * t)
        jupiter_x_0 = jupiter_x_0 + 1.663331d-05*cos(1.94010629194d0 + 838.9692877504d0 * t)
        jupiter_x_0 = jupiter_x_0 + 1.870097d-05*cos(0.52019313301d0 + 1155.361157407d0 * t)
        jupiter_x_0 = jupiter_x_0 + 1.93906d-05*cos(5.91883412864d0 + 625.6701923124d0 * t)
        jupiter_x_0 = jupiter_x_0 + 2.386425d-05*cos(5.96354994324d0 + 1045.1548361876d0 * t)
        jupiter_x_0 = jupiter_x_0 + 2.438257d-05*cos(3.88808463822d0 + 220.4126424388d0 * t)
        jupiter_x_0 = jupiter_x_0 + 2.440094d-05*cos(4.23995765702d0 + 433.7117378768d0 * t)
        jupiter_x_0 = jupiter_x_0 + 2.675112d-05*cos(3.18723449094d0 + 1169.5882514086d0 * t)
        jupiter_x_0 = jupiter_x_0 + 2.857935d-05*cos(6.01118473739d0 + 117.3198682202d0 * t)
        jupiter_x_0 = jupiter_x_0 + 2.952712d-05*cos(3.85988483947d0 + 309.2783226558d0 * t)
        jupiter_x_0 = jupiter_x_0 + 3.939864d-05*cos(4.30892687511d0 + 1596.1864422846d0 * t)
        jupiter_x_0 = jupiter_x_0 + 4.569444d-05*cos(2.1508728171d0 + 95.9792272178d0 * t)
        jupiter_x_0 = jupiter_x_0 + 4.622685d-05*cos(3.75817086099d0 + 1375.7737998458d0 * t)
        jupiter_x_0 = jupiter_x_0 + 5.218492d-05*cos(3.23235129224d0 + 532.8723588323d0 * t)
        jupiter_x_0 = jupiter_x_0 + 5.318791d-05*cos(1.10494016349d0 + 526.5095713569d0 * t)
        jupiter_x_0 = jupiter_x_0 + 5.777311d-05*cos(5.03726165628d0 + 14.2270940016d0 * t)
        jupiter_x_0 = jupiter_x_0 + 7.427517d-05*cos(5.98380751196d0 + 956.2891559706d0 * t)
        jupiter_x_0 = jupiter_x_0 + 7.51647d-05*cos(0.92896448412d0 + 1265.5674786264d0 * t)
        jupiter_x_0 = jupiter_x_0 + 7.655867d-05*cos(0.14178789086d0 + 1581.959348283d0 * t)
        jupiter_x_0 = jupiter_x_0 + 8.223302d-05*cos(5.56680447143d0 + 1478.8665740644d0 * t)
        jupiter_x_0 = jupiter_x_0 + 8.468556d-05*cos(3.47248751739d0 + 639.897286314d0 * t)
        jupiter_x_0 = jupiter_x_0 + 8.694124d-05*cos(0.38262009411d0 + 1692.1656695024d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00011423199d0*cos(3.48146108929d0 + 543.9180590962d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00011996271d0*cos(0.58568573729d0 + 533.6231183577d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00012155285d0*cos(3.75229924999d0 + 525.7588118315d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00014209487d0*cos(2.07769621413d0 + 742.9900605326d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00015192516d0*cos(6.25820127906d0 + 735.8765135318d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00016101974d0*cos(0.8797315598d0 + 515.463871093d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00016481594d0*cos(1.95150056568d0 + 316.3918696566d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00019727457d0*cos(1.64891626213d0 + 2118.7638603784d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00026613459d0*cos(4.85169906494d0 + 323.5054166574d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00030623417d0*cos(2.99132321427d0 + 206.1855484372d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00047092251d0*cos(1.44612636451d0 + 419.4846438752d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00059486083d0*cos(4.45769374358d0 + 949.1756089698d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00068284021d0*cos(3.44051122631d0 + 846.0828347512d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00072095575d0*cos(3.96117430643d0 + 1066.49547719d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00103494641d0*cos(6.1932476912d0 + 1052.2683831884d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00114201562d0*cos(0.01567084269d0 + 1162.4747044078d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00134226996d0*cos(0.87648567011d0 + 213.299095438d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00144867641d0*cos(5.5598057708d0 + 632.7837393132d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00150678793d0*cos(6.12003027739d0 + 110.2063212194d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00194025405d0*cos(5.02580363996d0 + 426.598190876d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00301689798d0*cos(5.17372551148d0 + 7.1135470008d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00385975375d0*cos(2.01229910687d0 + 103.0927742186d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.00457752736d0*cos(1.29883700755d0 + 1589.0728952838d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.01476224578d0*cos(3.61736921122d0 + 536.8045120954d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.01500672056d0*cos(0.7317513461d0 + 522.5774180938d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.12593937922d0*cos(0.94911583701d0 + 1059.3819301892d0 * t)
        jupiter_x_0 = jupiter_x_0 + 0.3666264232d0*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_x_0 = jupiter_x_0 + 5.19663470114d0*cos(0.59945082355d0 + 529.6909650946d0 * t)

        jupiter_x_1 = jupiter_x_1 + 1.023812d-05*cos(2.57182697715d0 + 433.7117378768d0 * t)
        jupiter_x_1 = jupiter_x_1 + 1.055422d-05*cos(2.50844222977d0 + 1265.5674786264d0 * t)
        jupiter_x_1 = jupiter_x_1 + 1.532945d-05*cos(4.31556714501d0 + 117.3198682202d0 * t)
        jupiter_x_1 = jupiter_x_1 + 1.539212d-05*cos(1.47899172821d0 + 639.897286314d0 * t)
        jupiter_x_1 = jupiter_x_1 + 1.632362d-05*cos(1.41504212408d0 + 1045.1548361876d0 * t)
        jupiter_x_1 = jupiter_x_1 + 1.7728d-05*cos(0.72631739446d0 + 742.9900605326d0 * t)
        jupiter_x_1 = jupiter_x_1 + 1.812965d-05*cos(3.84602148747d0 + 95.9792272178d0 * t)
        jupiter_x_1 = jupiter_x_1 + 1.853679d-05*cos(2.76941001747d0 + 1596.1864422846d0 * t)
        jupiter_x_1 = jupiter_x_1 + 1.904067d-05*cos(1.85937873703d0 + 1581.959348283d0 * t)
        jupiter_x_1 = jupiter_x_1 + 1.977572d-05*cos(5.08915489088d0 + 956.2891559706d0 * t)
        jupiter_x_1 = jupiter_x_1 + 2.438199d-05*cos(3.60655644537d0 + 316.3918696566d0 * t)
        jupiter_x_1 = jupiter_x_1 + 2.804218d-05*cos(4.8974259132d0 + 103.0927742186d0 * t)
        jupiter_x_1 = jupiter_x_1 + 2.933359d-05*cos(2.61899855005d0 + 419.4846438752d0 * t)
        jupiter_x_1 = jupiter_x_1 + 2.990245d-05*cos(0.80692155639d0 + 2118.7638603784d0 * t)
        jupiter_x_1 = jupiter_x_1 + 3.001874d-05*cos(2.68376982746d0 + 533.6231183577d0 * t)
        jupiter_x_1 = jupiter_x_1 + 3.044408d-05*cos(1.65428048669d0 + 525.7588118315d0 * t)
        jupiter_x_1 = jupiter_x_1 + 3.333344d-05*cos(1.43691652967d0 + 532.8723588323d0 * t)
        jupiter_x_1 = jupiter_x_1 + 3.399164d-05*cos(2.90091450747d0 + 526.5095713569d0 * t)
        jupiter_x_1 = jupiter_x_1 + 3.873467d-05*cos(3.33648870101d0 + 14.2270940016d0 * t)
        jupiter_x_1 = jupiter_x_1 + 4.29224d-05*cos(4.74970626655d0 + 206.1855484372d0 * t)
        jupiter_x_1 = jupiter_x_1 + 4.393977d-05*cos(1.14770788063d0 + 735.8765135318d0 * t)
        jupiter_x_1 = jupiter_x_1 + 7.142547d-05*cos(3.17267801203d0 + 323.5054166574d0 * t)
        jupiter_x_1 = jupiter_x_1 + 8.085991d-05*cos(6.16136518902d0 + 949.1756089698d0 * t)
        jupiter_x_1 = jupiter_x_1 + 9.125875d-05*cos(1.78082469962d0 + 543.9180590962d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.00012889505d0*cos(2.57489294062d0 + 515.463871093d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.00013577576d0*cos(0.30008010246d0 + 632.7837393132d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.00018156701d0*cos(4.00572238779d0 + 426.598190876d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.00021244363d0*cos(4.36576178953d0 + 110.2063212194d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.00031234303d0*cos(2.34698051502d0 + 1066.49547719d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.0003250859d0*cos(1.74648849928d0 + 1052.2683831884d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.00033891193d0*cos(4.10113482752d0 + 529.6909650946d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.00046201898d0*cos(0.45714214032d0 + 1589.0728952838d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.00081697204d0*cos(3.46668108797d0 + 7.1135470008d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.0058915706d0*cos(1.91556314637d0 + 536.8045120954d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.00599720482d0*cos(2.42996678275d0 + 522.5774180938d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.00635297172d0*cos(0.10662156868d0 + 1059.3819301892d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.00882389251d0*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_x_1=jupiter_x_1*t;

        jupiter_x_2 = jupiter_x_2 + 1.134598d-05*cos(2.35807061809d0 + 426.598190876d0 * t)
        jupiter_x_2 = jupiter_x_2 + 1.322673d-05*cos(1.6314254998d0 + 14.2270940016d0 * t)
        jupiter_x_2 = jupiter_x_2 + 1.698817d-05*cos(2.44284418066d0 + 110.2063212194d0 * t)
        jupiter_x_2 = jupiter_x_2 + 3.706457d-05*cos(0.07769981349d0 + 543.9180590962d0 * t)
        jupiter_x_2 = jupiter_x_2 + 4.03954d-05*cos(5.58417732117d0 + 1589.0728952838d0 * t)
        jupiter_x_2 = jupiter_x_2 + 5.242644d-05*cos(4.27482379441d0 + 515.463871093d0 * t)
        jupiter_x_2 = jupiter_x_2 + 5.711029d-05*cos(3.63172846494d0 + 1052.2683831884d0 * t)
        jupiter_x_2 = jupiter_x_2 + 7.051587d-05*cos(0.74163703419d0 + 1066.49547719d0 * t)
        jupiter_x_2 = jupiter_x_2 + 0.0001142307d0*cos(1.72917878238d0 + 7.1135470008d0 * t)
        jupiter_x_2 = jupiter_x_2 + 0.00041410887d0*cos(5.12291589939d0 + 1059.3819301892d0 * t)
        jupiter_x_2 = jupiter_x_2 + 0.00077685547d0*cos(5.29776154458d0 + 529.6909650946d0 * t)
        jupiter_x_2 = jupiter_x_2 + 0.00085355503d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_x_2 = jupiter_x_2 + 0.00121521296d0*cos(0.21155109275d0 + 536.8045120954d0 * t)
        jupiter_x_2 = jupiter_x_2 + 0.00123864644d0*cos(4.13563277513d0 + 522.5774180938d0 * t)
        jupiter_x_2=jupiter_x_2*t*t;

        jupiter_x_3 = jupiter_x_3 + 1.014206d-05*cos(4.64773902077d0 + 543.9180590962d0 * t)
        jupiter_x_3 = jupiter_x_3 + 1.073175d-05*cos(6.22314467964d0 + 7.1135470008d0 * t)
        jupiter_x_3 = jupiter_x_3 + 1.080194d-05*cos(5.42530305914d0 + 1066.49547719d0 * t)
        jupiter_x_3 = jupiter_x_3 + 1.435449d-05*cos(5.98502036587d0 + 515.463871093d0 * t)
        jupiter_x_3 = jupiter_x_3 + 1.787838d-05*cos(3.56550298031d0 + 1059.3819301892d0 * t)
        jupiter_x_3 = jupiter_x_3 + 3.34861d-05*cos(0.0d0 + 0.0d0 * t)
        jupiter_x_3 = jupiter_x_3 + 0.00016713548d0*cos(4.77458794485d0 + 536.8045120954d0 * t)
        jupiter_x_3 = jupiter_x_3 + 0.00017071323d0*cos(5.86133022278d0 + 522.5774180938d0 * t)
        jupiter_x_3=jupiter_x_3*t*t*t;

        jupiter_x_4 = jupiter_x_4 + 1.717846d-05*cos(3.03331531843d0 + 536.8045120954d0 * t)
        jupiter_x_4 = jupiter_x_4 + 1.762402d-05*cos(1.32863039757d0 + 522.5774180938d0 * t)
        jupiter_x_4=jupiter_x_4*t*t*t*t;

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

        jupiter_y_0 = jupiter_y_0 + 1.002355d-05*cos(1.5093193987d0 + 1272.6810256272d0 * t)
        jupiter_y_0 = jupiter_y_0 + 1.05027d-05*cos(4.83706014327d0 + 1795.258443721d0 * t)
        jupiter_y_0 = jupiter_y_0 + 1.079512d-05*cos(1.63448507346d0 + 532.1386456494d0 * t)
        jupiter_y_0 = jupiter_y_0 + 1.087727d-05*cos(5.84673086939d0 + 527.2432845398d0 * t)
        jupiter_y_0 = jupiter_y_0 + 1.432195d-05*cos(3.248245545d0 + 942.062061969d0 * t)
        jupiter_y_0 = jupiter_y_0 + 1.458169d-05*cos(4.18761881277d0 + 853.196381752d0 * t)
        jupiter_y_0 = jupiter_y_0 + 1.646568d-05*cos(3.91965876562d0 + 74.7815985673d0 * t)
        jupiter_y_0 = jupiter_y_0 + 2.253545d-05*cos(4.28462825722d0 + 838.9692877504d0 * t)
        jupiter_y_0 = jupiter_y_0 + 2.362662d-05*cos(4.60417580207d0 + 1155.361157407d0 * t)
        jupiter_y_0 = jupiter_y_0 + 2.409581d-05*cos(4.33196301609d0 + 1045.1548361876d0 * t)
        jupiter_y_0 = jupiter_y_0 + 2.423639d-05*cos(2.32942339839d0 + 220.4126424388d0 * t)
        jupiter_y_0 = jupiter_y_0 + 2.445625d-05*cos(2.6703695223d0 + 433.7117378768d0 * t)
        jupiter_y_0 = jupiter_y_0 + 2.672262d-05*cos(1.61857897069d0 + 1169.5882514086d0 * t)
        jupiter_y_0 = jupiter_y_0 + 2.855423d-05*cos(4.44478286006d0 + 117.3198682202d0 * t)
        jupiter_y_0 = jupiter_y_0 + 3.14074d-05*cos(5.59566796922d0 + 309.2783226558d0 * t)
        jupiter_y_0 = jupiter_y_0 + 3.235419d-05*cos(4.76600347062d0 + 625.6701923124d0 * t)
        jupiter_y_0 = jupiter_y_0 + 3.939875d-05*cos(2.73830531054d0 + 1596.1864422846d0 * t)
        jupiter_y_0 = jupiter_y_0 + 4.528355d-05*cos(2.18377558038d0 + 1375.7737998458d0 * t)
        jupiter_y_0 = jupiter_y_0 + 4.567181d-05*cos(3.71300776935d0 + 95.9792272178d0 * t)
        jupiter_y_0 = jupiter_y_0 + 5.217025d-05*cos(1.66178643542d0 + 532.8723588323d0 * t)
        jupiter_y_0 = jupiter_y_0 + 5.322882d-05*cos(5.81740472645d0 + 526.5095713569d0 * t)
        jupiter_y_0 = jupiter_y_0 + 5.772132d-05*cos(3.46915716927d0 + 14.2270940016d0 * t)
        jupiter_y_0 = jupiter_y_0 + 7.414115d-05*cos(4.41141990461d0 + 956.2891559706d0 * t)
        jupiter_y_0 = jupiter_y_0 + 7.619486d-05*cos(5.59554151997d0 + 1265.5674786264d0 * t)
        jupiter_y_0 = jupiter_y_0 + 7.779184d-05*cos(4.83346300662d0 + 1581.959348283d0 * t)
        jupiter_y_0 = jupiter_y_0 + 8.163163d-05*cos(4.00303742375d0 + 1478.8665740644d0 * t)
        jupiter_y_0 = jupiter_y_0 + 8.443107d-05*cos(1.91435801697d0 + 639.897286314d0 * t)
        jupiter_y_0 = jupiter_y_0 + 8.732789d-05*cos(5.09607066097d0 + 1692.1656695024d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00011419853d0*cos(1.91089341468d0 + 543.9180590962d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00011988875d0*cos(5.29687602089d0 + 533.6231183577d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00012153427d0*cos(2.18151972499d0 + 525.7588118315d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00014606858d0*cos(0.47759399145d0 + 742.9900605326d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00016355726d0*cos(5.56997881604d0 + 515.463871093d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00018639846d0*cos(0.38751972138d0 + 316.3918696566d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00019727397d0*cos(0.07818534532d0 + 2118.7638603784d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.0002087378d0*cos(3.79369881757d0 + 735.8765135318d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00026619714d0*cos(3.28203174951d0 + 323.5054166574d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00026933579d0*cos(3.86233956827d0 + 419.4846438752d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00029807369d0*cos(4.5210577274d0 + 206.1855484372d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00059051769d0*cos(2.89529070968d0 + 949.1756089698d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00068374489d0*cos(1.86537074374d0 + 846.0828347512d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00072091178d0*cos(2.39048659148d0 + 1066.49547719d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00101999807d0*cos(4.57594598884d0 + 1052.2683831884d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.0011404311d0*cos(4.72982262969d0 + 1162.4747044078d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00132696764d0*cos(5.62184581859d0 + 213.299095438d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00139480058d0*cos(4.00075307706d0 + 632.7837393132d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00146104656d0*cos(4.62267224431d0 + 110.2063212194d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00192333128d0*cos(3.45690564771d0 + 426.598190876d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00300686679d0*cos(3.6094805074d0 + 7.1135470008d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00378285578d0*cos(3.53006782383d0 + 103.0927742186d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.00457750806d0*cos(6.01129093501d0 + 1589.0728952838d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.0147580937d0*cos(2.04679566495d0 + 536.8045120954d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.01508275299d0*cos(5.43934968102d0 + 522.5774180938d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.09363670616d0*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_y_0 = jupiter_y_0 + 0.12592862602d0*cos(5.66160227728d0 + 1059.3819301892d0 * t)
        jupiter_y_0 = jupiter_y_0 + 5.19520046589d0*cos(5.31203162731d0 + 529.6909650946d0 * t)

        jupiter_y_1 = jupiter_y_1 + 1.028165d-05*cos(1.00301485824d0 + 433.7117378768d0 * t)
        jupiter_y_1 = jupiter_y_1 + 1.035933d-05*cos(0.98273794152d0 + 1265.5674786264d0 * t)
        jupiter_y_1 = jupiter_y_1 + 1.260123d-05*cos(0.07143173954d0 + 625.6701923124d0 * t)
        jupiter_y_1 = jupiter_y_1 + 1.516541d-05*cos(6.21684203571d0 + 639.897286314d0 * t)
        jupiter_y_1 = jupiter_y_1 + 1.530472d-05*cos(2.75094722237d0 + 117.3198682202d0 * t)
        jupiter_y_1 = jupiter_y_1 + 1.636913d-05*cos(6.09270756447d0 + 1045.1548361876d0 * t)
        jupiter_y_1 = jupiter_y_1 + 1.808627d-05*cos(5.40287543026d0 + 95.9792272178d0 * t)
        jupiter_y_1 = jupiter_y_1 + 1.854067d-05*cos(1.19908734197d0 + 1596.1864422846d0 * t)
        jupiter_y_1 = jupiter_y_1 + 1.875464d-05*cos(5.32657356489d0 + 742.9900605326d0 * t)
        jupiter_y_1 = jupiter_y_1 + 1.885393d-05*cos(0.2990597371d0 + 1581.959348283d0 * t)
        jupiter_y_1 = jupiter_y_1 + 1.968401d-05*cos(3.51896739844d0 + 956.2891559706d0 * t)
        jupiter_y_1 = jupiter_y_1 + 2.3471d-05*cos(2.0678177539d0 + 316.3918696566d0 * t)
        jupiter_y_1 = jupiter_y_1 + 2.977284d-05*cos(3.35507028507d0 + 103.0927742186d0 * t)
        jupiter_y_1 = jupiter_y_1 + 2.990192d-05*cos(5.51944830506d0 + 2118.7638603784d0 * t)
        jupiter_y_1 = jupiter_y_1 + 3.001484d-05*cos(1.11280606283d0 + 533.6231183577d0 * t)
        jupiter_y_1 = jupiter_y_1 + 3.044205d-05*cos(0.08329779827d0 + 525.7588118315d0 * t)
        jupiter_y_1 = jupiter_y_1 + 3.094257d-05*cos(1.00670454701d0 + 419.4846438752d0 * t)
        jupiter_y_1 = jupiter_y_1 + 3.331887d-05*cos(6.14951835712d0 + 532.8723588323d0 * t)
        jupiter_y_1 = jupiter_y_1 + 3.401735d-05*cos(1.33033225252d0 + 526.5095713569d0 * t)
        jupiter_y_1 = jupiter_y_1 + 3.866147d-05*cos(1.76877582038d0 + 14.2270940016d0 * t)
        jupiter_y_1 = jupiter_y_1 + 3.957592d-05*cos(6.18550697817d0 + 206.1855484372d0 * t)
        jupiter_y_1 = jupiter_y_1 + 4.347346d-05*cos(5.85522835488d0 + 735.8765135318d0 * t)
        jupiter_y_1 = jupiter_y_1 + 7.145229d-05*cos(1.60381236094d0 + 323.5054166574d0 * t)
        jupiter_y_1 = jupiter_y_1 + 8.10905d-05*cos(4.58123811601d0 + 949.1756089698d0 * t)
        jupiter_y_1 = jupiter_y_1 + 9.12266d-05*cos(0.21022587969d0 + 543.9180590962d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.00013034616d0*cos(0.98979834442d0 + 515.463871093d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.00013701692d0*cos(5.02070197804d0 + 632.7837393132d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.00017738615d0*cos(2.46531787101d0 + 426.598190876d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.00019462096d0*cos(3.0095711947d0 + 110.2063212194d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.00031231694d0*cos(0.77623645597d0 + 1066.49547719d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.00032503453d0*cos(0.17640743623d0 + 1052.2683831884d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.00046194129d0*cos(5.16955994561d0 + 1589.0728952838d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.0004688809d0*cos(1.91294535618d0 + 529.6909650946d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.00081187145d0*cos(1.90914316532d0 + 7.1135470008d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.00588928504d0*cos(0.3449157689d0 + 536.8045120954d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.00601160431d0*cos(0.8581124994d0 + 522.5774180938d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.00634859798d0*cos(4.8190319965d0 + 1059.3819301892d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.01694798253d0*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_y_1=jupiter_y_1*t;

        jupiter_y_2 = jupiter_y_2 + 1.059783d-05*cos(0.89610748176d0 + 426.598190876d0 * t)
        jupiter_y_2 = jupiter_y_2 + 1.280283d-05*cos(1.47574006861d0 + 110.2063212194d0 * t)
        jupiter_y_2 = jupiter_y_2 + 1.320627d-05*cos(0.05786048417d0 + 14.2270940016d0 * t)
        jupiter_y_2 = jupiter_y_2 + 3.704528d-05*cos(4.79029292271d0 + 543.9180590962d0 * t)
        jupiter_y_2 = jupiter_y_2 + 4.039038d-05*cos(4.01341034637d0 + 1589.0728952838d0 * t)
        jupiter_y_2 = jupiter_y_2 + 5.286157d-05*cos(2.69490465064d0 + 515.463871093d0 * t)
        jupiter_y_2 = jupiter_y_2 + 5.71944d-05*cos(2.0597000023d0 + 1052.2683831884d0 * t)
        jupiter_y_2 = jupiter_y_2 + 7.051103d-05*cos(5.4540436857d0 + 1066.49547719d0 * t)
        jupiter_y_2 = jupiter_y_2 + 0.00011277667d0*cos(0.18559902389d0 + 7.1135470008d0 * t)
        jupiter_y_2 = jupiter_y_2 + 0.000413576d0*cos(3.55228440457d0 + 1059.3819301892d0 * t)
        jupiter_y_2 = jupiter_y_2 + 0.00076523263d0*cos(3.75913371793d0 + 529.6909650946d0 * t)
        jupiter_y_2 = jupiter_y_2 + 0.00076943042d0*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_y_2 = jupiter_y_2 + 0.00121455991d0*cos(4.9239876638d0 + 536.8045120954d0 * t)
        jupiter_y_2 = jupiter_y_2 + 0.00124032509d0*cos(2.56495576833d0 + 522.5774180938d0 * t)
        jupiter_y_2=jupiter_y_2*t*t;

        jupiter_y_3 = jupiter_y_3 + 1.013157d-05*cos(3.07729621279d0 + 543.9180590962d0 * t)
        jupiter_y_3 = jupiter_y_3 + 1.055565d-05*cos(4.70184773789d0 + 7.1135470008d0 * t)
        jupiter_y_3 = jupiter_y_3 + 1.079405d-05*cos(3.85450799252d0 + 1066.49547719d0 * t)
        jupiter_y_3 = jupiter_y_3 + 1.443816d-05*cos(4.40866555269d0 + 515.463871093d0 * t)
        jupiter_y_3 = jupiter_y_3 + 1.782451d-05*cos(1.99283071153d0 + 1059.3819301892d0 * t)
        jupiter_y_3 = jupiter_y_3 + 4.006038d-05*cos(0.0d0 + 0.0d0 * t)
        jupiter_y_3 = jupiter_y_3 + 0.00016701353d0*cos(3.20365737109d0 + 536.8045120954d0 * t)
        jupiter_y_3 = jupiter_y_3 + 0.00017085516d0*cos(4.29096904063d0 + 522.5774180938d0 * t)
        jupiter_y_3=jupiter_y_3*t*t*t;

        jupiter_y_4 = jupiter_y_4 + 1.716045d-05*cos(1.4620628571d0 + 536.8045120954d0 * t)
        jupiter_y_4 = jupiter_y_4 + 1.762645d-05*cos(6.04159386554d0 + 522.5774180938d0 * t)
        jupiter_y_4=jupiter_y_4*t*t*t*t;

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

        jupiter_z_0 = jupiter_z_0 + 1.450672d-05*cos(1.17108416193d0 + 949.1756089698d0 * t)
        jupiter_z_0 = jupiter_z_0 + 1.633653d-05*cos(0.64194743493d0 + 1066.49547719d0 * t)
        jupiter_z_0 = jupiter_z_0 + 2.001451d-05*cos(2.68535838309d0 + 419.4846438752d0 * t)
        jupiter_z_0 = jupiter_z_0 + 2.163471d-05*cos(6.26718259854d0 + 846.0828347512d0 * t)
        jupiter_z_0 = jupiter_z_0 + 2.455385d-05*cos(2.96904135659d0 + 1052.2683831884d0 * t)
        jupiter_z_0 = jupiter_z_0 + 2.461547d-05*cos(2.99889460411d0 + 1162.4747044078d0 * t)
        jupiter_z_0 = jupiter_z_0 + 3.784265d-05*cos(2.71522544491d0 + 110.2063212194d0 * t)
        jupiter_z_0 = jupiter_z_0 + 3.798016d-05*cos(2.16715743175d0 + 632.7837393132d0 * t)
        jupiter_z_0 = jupiter_z_0 + 4.313598d-05*cos(3.70673689841d0 + 213.299095438d0 * t)
        jupiter_z_0 = jupiter_z_0 + 5.292012d-05*cos(1.68231447192d0 + 426.598190876d0 * t)
        jupiter_z_0 = jupiter_z_0 + 6.910102d-05*cos(1.75032945752d0 + 7.1135470008d0 * t)
        jupiter_z_0 = jupiter_z_0 + 7.449294d-05*cos(5.2421310415d0 + 103.0927742186d0 * t)
        jupiter_z_0 = jupiter_z_0 + 0.0001041616d0*cos(4.25764593061d0 + 1589.0728952838d0 * t)
        jupiter_z_0 = jupiter_z_0 + 0.00033295491d0*cos(0.30297050585d0 + 536.8045120954d0 * t)
        jupiter_z_0 = jupiter_z_0 + 0.00042388592d0*cos(3.60144191032d0 + 522.5774180938d0 * t)
        jupiter_z_0 = jupiter_z_0 + 0.00286562094d0*cos(3.90812238338d0 + 1059.3819301892d0 * t)
        jupiter_z_0 = jupiter_z_0 + 0.00859031952d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_z_0 = jupiter_z_0 + 0.11823100489d0*cos(3.55844646343d0 + 529.6909650946d0 * t)

        jupiter_z_1 = jupiter_z_1 + 1.230425d-05*cos(3.14222500244d0 + 1589.0728952838d0 * t)
        jupiter_z_1 = jupiter_z_1 + 2.100882d-05*cos(0.09538864287d0 + 7.1135470008d0 * t)
        jupiter_z_1 = jupiter_z_1 + 0.00012730364d0*cos(5.45536715732d0 + 522.5774180938d0 * t)
        jupiter_z_1 = jupiter_z_1 + 0.00014424953d0*cos(4.85400155025d0 + 536.8045120954d0 * t)
        jupiter_z_1 = jupiter_z_1 + 0.00015474611d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_z_1 = jupiter_z_1 + 0.00020307341d0*cos(2.59878269248d0 + 1059.3819301892d0 * t)
        jupiter_z_1 = jupiter_z_1 + 0.00407072175d0*cos(1.52699353482d0 + 529.6909650946d0 * t)
        jupiter_z_1=jupiter_z_1*t;

        jupiter_z_2 = jupiter_z_2 + 1.310111d-05*cos(2.05263704913d0 + 1059.3819301892d0 * t)
        jupiter_z_2 = jupiter_z_2 + 2.379765d-05*cos(0.9557434534d0 + 522.5774180938d0 * t)
        jupiter_z_2 = jupiter_z_2 + 3.114752d-05*cos(3.13228646176d0 + 536.8045120954d0 * t)
        jupiter_z_2 = jupiter_z_2 + 0.00028635326d0*cos(3.01374166973d0 + 529.6909650946d0 * t)
        jupiter_z_2=jupiter_z_2*t*t;

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

        mars_x_0 = mars_x_0 + 1.289804d-05*cos(4.70970778621d0 + 1194.4470102246d0 * t)
        mars_x_0 = mars_x_0 + 1.29017d-05*cos(0.43596325296d0 + 2810.9214616052d0 * t)
        mars_x_0 = mars_x_0 + 1.37847d-05*cos(2.18011900021d0 + 1751.539531416d0 * t)
        mars_x_0 = mars_x_0 + 1.468124d-05*cos(1.87869730543d0 + 3870.3033917944d0 * t)
        mars_x_0 = mars_x_0 + 1.57254d-05*cos(4.84809921789d0 + 1589.0728952838d0 * t)
        mars_x_0 = mars_x_0 + 1.630482d-05*cos(0.24117974845d0 + 4136.9104335162d0 * t)
        mars_x_0 = mars_x_0 + 1.677693d-05*cos(3.14442612046d0 + 5884.9268465832d0 * t)
        mars_x_0 = mars_x_0 + 1.958162d-05*cos(1.51914544555d0 + 6684.7479717486d0 * t)
        mars_x_0 = mars_x_0 + 1.977579d-05*cos(2.1408782611d0 + 6677.7017350506d0 * t)
        mars_x_0 = mars_x_0 + 2.182206d-05*cos(1.69655112969d0 + 6283.0758499914d0 * t)
        mars_x_0 = mars_x_0 + 2.229117d-05*cos(1.28739323821d0 + 3340.6797370026d0 * t)
        mars_x_0 = mars_x_0 + 2.229176d-05*cos(1.69588962513d0 + 3340.545116397d0 * t)
        mars_x_0 = mars_x_0 + 2.24101d-05*cos(4.82218655311d0 + 8962.4553499102d0 * t)
        mars_x_0 = mars_x_0 + 2.274646d-05*cos(2.35708328853d0 + 3532.0606928114d0 * t)
        mars_x_0 = mars_x_0 + 2.368513d-05*cos(2.9684189536d0 + 2544.3144198834d0 * t)
        mars_x_0 = mars_x_0 + 2.397865d-05*cos(0.63553674054d0 + 3149.1641605882d0 * t)
        mars_x_0 = mars_x_0 + 3.636667d-05*cos(6.11397592106d0 + 796.2980068164d0 * t)
        mars_x_0 = mars_x_0 + 3.725823d-05*cos(1.27280182943d0 + 16703.062133499d0 * t)
        mars_x_0 = mars_x_0 + 3.729746d-05*cos(1.21398323637d0 + 398.1490034082d0 * t)
        mars_x_0 = mars_x_0 + 4.817134d-05*cos(1.85091045536d0 + 3738.761430108d0 * t)
        mars_x_0 = mars_x_0 + 4.937579d-05*cos(4.43241440654d0 + 5621.8429232104d0 * t)
        mars_x_0 = mars_x_0 + 5.27626d-05*cos(2.33148083116d0 + 6151.533888305d0 * t)
        mars_x_0 = mars_x_0 + 5.469046d-05*cos(1.13324429003d0 + 2942.4634232916d0 * t)
        mars_x_0 = mars_x_0 + 6.77406d-05*cos(5.64862211431d0 + 3340.629680352d0 * t)
        mars_x_0 = mars_x_0 + 6.774107d-05*cos(3.61785048282d0 + 3340.5951730476d0 * t)
        mars_x_0 = mars_x_0 + 8.226069d-05*cos(1.86843519535d0 + 2281.2304965106d0 * t)
        mars_x_0 = mars_x_0 + 0.00011370375d0*cos(4.83265211109d0 + 1059.3819301892d0 * t)
        mars_x_0 = mars_x_0 + 0.00013527976d0*cos(0.63010765169d0 + 529.6909650946d0 * t)
        mars_x_0 = mars_x_0 + 0.00021041626d0*cos(1.17895619474d0 + 3344.1355450488d0 * t)
        mars_x_0 = mars_x_0 + 0.00021067199d0*cos(1.80435656154d0 + 3337.0893083508d0 * t)
        mars_x_0 = mars_x_0 + 0.00040938237d0*cos(0.93473307419d0 + 13362.4497067992d0 * t)
        mars_x_0 = mars_x_0 + 0.00494196914d0*cos(0.59669127768d0 + 10021.8372800994d0 * t)
        mars_x_0 = mars_x_0 + 0.07070919655d0*cos(0.25870338558d0 + 6681.2248533996d0 * t)
        mars_x_0 = mars_x_0 + 0.19502945246d0*cos(3.14159265359d0 + 0.0d0 * t)
        mars_x_0 = mars_x_0 + 1.51769936383d0*cos(6.20403346548d0 + 3340.6124266998d0 * t)

        mars_x_1 = mars_x_1 + 1.163612d-05*cos(6.10909257097d0 + 16703.062133499d0 * t)
        mars_x_1 = mars_x_1 + 2.620537d-05*cos(3.04172154436d0 + 3337.0893083508d0 * t)
        mars_x_1 = mars_x_1 + 2.62061d-05*cos(6.22441295122d0 + 3344.1355450488d0 * t)
        mars_x_1 = mars_x_1 + 9.589581d-05*cos(5.77107234791d0 + 13362.4497067992d0 * t)
        mars_x_1 = mars_x_1 + 0.00020467294d0*cos(5.57051812369d0 + 3340.6124266998d0 * t)
        mars_x_1 = mars_x_1 + 0.00077184977d0*cos(5.43315636209d0 + 10021.8372800994d0 * t)
        mars_x_1 = mars_x_1 + 0.00552437949d0*cos(5.09565872891d0 + 6681.2248533996d0 * t)
        mars_x_1 = mars_x_1 + 0.00861441374d0*cos(3.14159265359d0 + 0.0d0 * t)
        mars_x_1=mars_x_1*t;

        mars_x_2 = mars_x_2 + 1.130613d-05*cos(4.28827023222d0 + 13362.4497067992d0 * t)
        mars_x_2 = mars_x_2 + 1.451998d-05*cos(3.6465566646d0 + 3340.6124266998d0 * t)
        mars_x_2 = mars_x_2 + 6.091409d-05*cos(3.93272649649d0 + 10021.8372800994d0 * t)
        mars_x_2 = mars_x_2 + 0.00022122528d0*cos(3.54372113272d0 + 6681.2248533996d0 * t)
        mars_x_2 = mars_x_2 + 0.00056323939d0*cos(0.0d0 + 0.0d0 * t)
        mars_x_2=mars_x_2*t*t;

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

        mars_y_0 = mars_y_0 + 1.28189d-05*cos(3.13035275682d0 + 1194.4470102246d0 * t)
        mars_y_0 = mars_y_0 + 1.385946d-05*cos(3.73437191158d0 + 1751.539531416d0 * t)
        mars_y_0 = mars_y_0 + 1.439619d-05*cos(5.19505958438d0 + 2810.9214616052d0 * t)
        mars_y_0 = mars_y_0 + 1.469783d-05*cos(0.30415060688d0 + 3870.3033917944d0 * t)
        mars_y_0 = mars_y_0 + 1.57188d-05*cos(3.2767949865d0 + 1589.0728952838d0 * t)
        mars_y_0 = mars_y_0 + 1.575854d-05*cos(2.78266835243d0 + 5092.1519581158d0 * t)
        mars_y_0 = mars_y_0 + 1.628395d-05*cos(4.95250906888d0 + 4136.9104335162d0 * t)
        mars_y_0 = mars_y_0 + 1.690439d-05*cos(1.58331163985d0 + 5884.9268465832d0 * t)
        mars_y_0 = mars_y_0 + 1.697214d-05*cos(0.81869636263d0 + 2544.3144198834d0 * t)
        mars_y_0 = mars_y_0 + 1.956411d-05*cos(6.23095843554d0 + 6684.7479717486d0 * t)
        mars_y_0 = mars_y_0 + 1.975769d-05*cos(0.56949816579d0 + 6677.7017350506d0 * t)
        mars_y_0 = mars_y_0 + 2.177591d-05*cos(0.12334436516d0 + 6283.0758499914d0 * t)
        mars_y_0 = mars_y_0 + 2.22603d-05*cos(5.99867316288d0 + 3340.6797370026d0 * t)
        mars_y_0 = mars_y_0 + 2.226089d-05*cos(0.12398424247d0 + 3340.545116397d0 * t)
        mars_y_0 = mars_y_0 + 2.234121d-05*cos(3.24909113765d0 + 8962.4553499102d0 * t)
        mars_y_0 = mars_y_0 + 2.251027d-05*cos(0.76938193892d0 + 3532.0606928114d0 * t)
        mars_y_0 = mars_y_0 + 2.39449d-05*cos(5.34678816191d0 + 3149.1641605882d0 * t)
        mars_y_0 = mars_y_0 + 3.609527d-05*cos(4.53244488294d0 + 796.2980068164d0 * t)
        mars_y_0 = mars_y_0 + 3.724293d-05*cos(5.98516013322d0 + 16703.062133499d0 * t)
        mars_y_0 = mars_y_0 + 3.805073d-05*cos(5.94234296399d0 + 398.1490034082d0 * t)
        mars_y_0 = mars_y_0 + 4.809528d-05*cos(0.27875310553d0 + 3738.761430108d0 * t)
        mars_y_0 = mars_y_0 + 4.849523d-05*cos(2.8519098755d0 + 5621.8429232104d0 * t)
        mars_y_0 = mars_y_0 + 5.263268d-05*cos(0.75811089992d0 + 6151.533888305d0 * t)
        mars_y_0 = mars_y_0 + 5.400042d-05*cos(5.81507793194d0 + 2942.4634232916d0 * t)
        mars_y_0 = mars_y_0 + 6.764653d-05*cos(4.07671230062d0 + 3340.629680352d0 * t)
        mars_y_0 = mars_y_0 + 6.7647d-05*cos(2.04594066912d0 + 3340.5951730476d0 * t)
        mars_y_0 = mars_y_0 + 8.34622d-05*cos(3.42464704002d0 + 2281.2304965106d0 * t)
        mars_y_0 = mars_y_0 + 0.00011370034d0*cos(3.26131408801d0 + 1059.3819301892d0 * t)
        mars_y_0 = mars_y_0 + 0.00013324177d0*cos(5.34259389724d0 + 529.6909650946d0 * t)
        mars_y_0 = mars_y_0 + 0.00021012921d0*cos(5.89022773653d0 + 3344.1355450488d0 * t)
        mars_y_0 = mars_y_0 + 0.00021036784d0*cos(0.23240270955d0 + 3337.0893083508d0 * t)
        mars_y_0 = mars_y_0 + 0.00040917422d0*cos(5.64698263703d0 + 13362.4497067992d0 * t)
        mars_y_0 = mars_y_0 + 0.00493872848d0*cos(5.30877806694d0 + 10021.8372800994d0 * t)
        mars_y_0 = mars_y_0 + 0.07064550239d0*cos(4.97051892902d0 + 6681.2248533996d0 * t)
        mars_y_0 = mars_y_0 + 0.08655481102d0*cos(0.0d0 + 0.0d0 * t)
        mars_y_0 = mars_y_0 + 1.51558976277d0*cos(4.63212206588d0 + 3340.6124266998d0 * t)

        mars_y_1 = mars_y_1 + 1.162955d-05*cos(4.53778503576d0 + 16703.062133499d0 * t)
        mars_y_1 = mars_y_1 + 2.611572d-05*cos(4.65030772498d0 + 3344.1355450488d0 * t)
        mars_y_1 = mars_y_1 + 2.617695d-05*cos(1.4728455552d0 + 3337.0893083508d0 * t)
        mars_y_1 = mars_y_1 + 9.582122d-05*cos(4.19942354479d0 + 13362.4497067992d0 * t)
        mars_y_1 = mars_y_1 + 0.00037310491d0*cos(1.16016958445d0 + 3340.6124266998d0 * t)
        mars_y_1 = mars_y_1 + 0.00077091913d0*cos(3.86082685753d0 + 10021.8372800994d0 * t)
        mars_y_1 = mars_y_1 + 0.00551063753d0*cos(3.52128320402d0 + 6681.2248533996d0 * t)
        mars_y_1 = mars_y_1 + 0.0142732421d0*cos(3.14159265359d0 + 0.0d0 * t)
        mars_y_1=mars_y_1*t;

        mars_y_2 = mars_y_2 + 1.129099d-05*cos(2.71576248963d0 + 13362.4497067992d0 * t)
        mars_y_2 = mars_y_2 + 2.571425d-05*cos(5.64795745327d0 + 3340.6124266998d0 * t)
        mars_y_2 = mars_y_2 + 6.07599d-05*cos(2.35864321001d0 + 10021.8372800994d0 * t)
        mars_y_2 = mars_y_2 + 0.00021950759d0*cos(1.96291594946d0 + 6681.2248533996d0 * t)
        mars_y_2 = mars_y_2 + 0.00035396765d0*cos(3.14159265359d0 + 0.0d0 * t)
        mars_y_2=mars_y_2*t*t;

        mars_y_3 = mars_y_3 + 1.448778d-05*cos(0.0d0 + 0.0d0 * t)
        mars_y_3=mars_y_3*t*t*t;

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

        mars_z_0 = mars_z_0 + 1.321976d-05*cos(4.78186604114d0 + 13362.4497067992d0 * t)
        mars_z_0 = mars_z_0 + 0.00015958402d0*cos(4.44367058261d0 + 10021.8372800994d0 * t)
        mars_z_0 = mars_z_0 + 0.00228333904d0*cos(4.10544022266d0 + 6681.2248533996d0 * t)
        mars_z_0 = mars_z_0 + 0.00660669541d0*cos(0.0d0 + 0.0d0 * t)
        mars_z_0 = mars_z_0 + 0.0490120722d0*cos(3.76712324286d0 + 3340.6124266998d0 * t)

        mars_z_1 = mars_z_1 + 1.700147d-05*cos(2.63703242065d0 + 10021.8372800994d0 * t)
        mars_z_1 = mars_z_1 + 9.896501d-05*cos(1.61155844715d0 + 6681.2248533996d0 * t)
        mars_z_1 = mars_z_1 + 0.00047930411d0*cos(3.14159265359d0 + 0.0d0 * t)
        mars_z_1 = mars_z_1 + 0.00331842958d0*cos(6.05027773492d0 + 3340.6124266998d0 * t)
        mars_z_1=mars_z_1*t;

        mars_z_2 = mars_z_2 + 5.931596d-05*cos(3.14159265359d0 + 0.0d0 * t)
        mars_z_2 = mars_z_2 + 0.0001370536d0*cos(1.04212852598d0 + 3340.6124266998d0 * t)
        mars_z_2=mars_z_2*t*t;

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

        mercury_x_0 = mercury_x_0 + 4.433373d-05*cos(0.80236674527d0 + 156527.41884944518d0 * t)
        mercury_x_0 = mercury_x_0 + 0.0002101173d0*cos(4.03469353923d0 + 130439.51570787099d0 * t)
        mercury_x_0 = mercury_x_0 + 0.00105716695d0*cos(0.98379033182d0 + 104351.61256629678d0 * t)
        mercury_x_0 = mercury_x_0 + 0.00584261333d0*cos(4.21599394757d0 + 78263.70942472259d0 * t)
        mercury_x_0 = mercury_x_0 + 0.02625615963d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_x_0 = mercury_x_0 + 0.03825746672d0*cos(1.16485604339d0 + 52175.8062831484d0 * t)
        mercury_x_0 = mercury_x_0 + 0.37546291728d0*cos(4.39651506942d0 + 26087.9031415742d0 * t)

        mercury_x_1 = mercury_x_1 + 2.329042d-05*cos(2.50023793407d0 + 130439.51570787099d0 * t)
        mercury_x_1 = mercury_x_1 + 8.7832d-05*cos(5.73285747425d0 + 104351.61256629678d0 * t)
        mercury_x_1 = mercury_x_1 + 0.00011992889d0*cos(5.81575112963d0 + 26087.9031415742d0 * t)
        mercury_x_1 = mercury_x_1 + 0.00032316001d0*cos(2.68247273347d0 + 78263.70942472259d0 * t)
        mercury_x_1 = mercury_x_1 + 0.00105289019d0*cos(5.91600475006d0 + 52175.8062831484d0 * t)
        mercury_x_1 = mercury_x_1 + 0.00318848034d0*cos(0.0d0 + 0.0d0 * t)
        mercury_x_1=mercury_x_1*t;

        mercury_x_2 = mercury_x_2 + 1.214995d-05*cos(0.0d0 + 0.0d0 * t)
        mercury_x_2 = mercury_x_2 + 1.484185d-05*cos(4.35401210269d0 + 52175.8062831484d0 * t)
        mercury_x_2=mercury_x_2*t*t;

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

        mercury_y_0 = mercury_y_0 + 4.450056d-05*cos(5.52354907071d0 + 156527.41884944518d0 * t)
        mercury_y_0 = mercury_y_0 + 0.00021100828d0*cos(2.47291315849d0 + 130439.51570787099d0 * t)
        mercury_y_0 = mercury_y_0 + 0.00106235493d0*cos(5.70550616735d0 + 104351.61256629678d0 * t)
        mercury_y_0 = mercury_y_0 + 0.00587711268d0*cos(2.65498896201d0 + 78263.70942472259d0 * t)
        mercury_y_0 = mercury_y_0 + 0.03854668215d0*cos(5.88780608966d0 + 52175.8062831484d0 * t)
        mercury_y_0 = mercury_y_0 + 0.11626131831d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_y_0 = mercury_y_0 + 0.37953642888d0*cos(2.8378061782d0 + 26087.9031415742d0 * t)

        mercury_y_1 = mercury_y_1 + 2.344469d-05*cos(0.93615372641d0 + 130439.51570787099d0 * t)
        mercury_y_1 = mercury_y_1 + 8.858158d-05*cos(4.16852401867d0 + 104351.61256629678d0 * t)
        mercury_y_1 = mercury_y_1 + 0.00011914709d0*cos(1.2213998634d0 + 26087.9031415742d0 * t)
        mercury_y_1 = mercury_y_1 + 0.00032715354d0*cos(1.11763734425d0 + 78263.70942472259d0 * t)
        mercury_y_1 = mercury_y_1 + 0.00080651544d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_y_1 = mercury_y_1 + 0.00107803852d0*cos(4.34964793883d0 + 52175.8062831484d0 * t)
        mercury_y_1=mercury_y_1*t;

        mercury_y_2 = mercury_y_2 + 1.57567d-05*cos(2.81172733349d0 + 52175.8062831484d0 * t)
        mercury_y_2 = mercury_y_2 + 4.612157d-05*cos(0.0d0 + 0.0d0 * t)
        mercury_y_2=mercury_y_2*t*t;

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

        mercury_z_0 = mercury_z_0 + 2.575002d-05*cos(1.62646731545d0 + 130439.51570787099d0 * t)
        mercury_z_0 = mercury_z_0 + 0.00012957446d0*cos(4.8592203201d0 + 104351.61256629678d0 * t)
        mercury_z_0 = mercury_z_0 + 0.00071626395d0*cos(1.80894256071d0 + 78263.70942472259d0 * t)
        mercury_z_0 = mercury_z_0 + 0.00469171617d0*cos(5.04215742764d0 + 52175.8062831484d0 * t)
        mercury_z_0 = mercury_z_0 + 0.00708734365d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_z_0 = mercury_z_0 + 0.04607665326d0*cos(1.99295081967d0 + 26087.9031415742d0 * t)

        mercury_z_1 = mercury_z_1 + 2.435833d-05*cos(0.05112640506d0 + 78263.70942472259d0 * t)
        mercury_z_1 = mercury_z_1 + 4.297352d-05*cos(2.56373047177d0 + 52175.8062831484d0 * t)
        mercury_z_1 = mercury_z_1 + 0.00057826621d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_z_1 = mercury_z_1 + 0.00108722177d0*cos(3.91134750825d0 + 26087.9031415742d0 * t)
        mercury_z_1=mercury_z_1*t;

        mercury_z_2 = mercury_z_2 + 1.053118d-05*cos(5.37979214357d0 + 26087.9031415742d0 * t)
        mercury_z_2 = mercury_z_2 + 1.185024d-05*cos(0.0d0 + 0.0d0 * t)
        mercury_z_2=mercury_z_2*t*t;

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

        neptune_x_0 = neptune_x_0 + 1.080795d-05*cos(4.75485636019d0 + 42.3258213318d0 * t)
        neptune_x_0 = neptune_x_0 + 1.170078d-05*cos(3.98594689041d0 + 8.0767548473d0 * t)
        neptune_x_0 = neptune_x_0 + 1.220341d-05*cos(2.64791449584d0 + 148.0787244263d0 * t)
        neptune_x_0 = neptune_x_0 + 1.228939d-05*cos(2.78878211792d0 + 72.0732855816d0 * t)
        neptune_x_0 = neptune_x_0 + 1.265797d-05*cos(3.42037275447d0 + 46.2097904851d0 * t)
        neptune_x_0 = neptune_x_0 + 1.271543d-05*cos(2.74412981229d0 + 33.9402499438d0 * t)
        neptune_x_0 = neptune_x_0 + 1.387922d-05*cos(3.71814330952d0 + 115.8835796217d0 * t)
        neptune_x_0 = neptune_x_0 + 1.407422d-05*cos(3.61743288666d0 + 536.8045120954d0 * t)
        neptune_x_0 = neptune_x_0 + 1.434798d-05*cos(0.72658718863d0 + 522.5774180938d0 * t)
        neptune_x_0 = neptune_x_0 + 1.448439d-05*cos(1.98814317259d0 + 181.7583419392d0 * t)
        neptune_x_0 = neptune_x_0 + 1.527526d-05*cos(0.02173640246d0 + 38.2449102224d0 * t)
        neptune_x_0 = neptune_x_0 + 1.533383d-05*cos(1.17732211665d0 + 38.0211610532d0 * t)
        neptune_x_0 = neptune_x_0 + 1.545705d-05*cos(0.64028780672d0 + 38.3936680687d0 * t)
        neptune_x_0 = neptune_x_0 + 1.560429d-05*cos(0.55865739143d0 + 37.8724032069d0 * t)
        neptune_x_0 = neptune_x_0 + 1.615063d-05*cos(2.9106383501d0 + 106.9767433719d0 * t)
        neptune_x_0 = neptune_x_0 + 1.648985d-05*cos(4.06990666591d0 + 30.0562807905d0 * t)
        neptune_x_0 = neptune_x_0 + 1.681255d-05*cos(4.27560304282d0 + 40.5807161926d0 * t)
        neptune_x_0 = neptune_x_0 + 1.8267d-05*cos(3.58024318649d0 + 44.070926471d0 * t)
        neptune_x_0 = neptune_x_0 + 1.88743d-05*cos(3.20485417792d0 + 35.685355083d0 * t)
        neptune_x_0 = neptune_x_0 + 1.891892d-05*cos(0.74998855536d0 + 220.4126424388d0 * t)
        neptune_x_0 = neptune_x_0 + 1.945462d-05*cos(4.15326825288d0 + 206.1855484372d0 * t)
        neptune_x_0 = neptune_x_0 + 2.083682d-05*cos(2.83676961811d0 + 137.0330241624d0 * t)
        neptune_x_0 = neptune_x_0 + 2.084477d-05*cos(1.56821671369d0 + 149.5631971346d0 * t)
        neptune_x_0 = neptune_x_0 + 2.522938d-05*cos(4.66296126912d0 + 312.1990839626d0 * t)
        neptune_x_0 = neptune_x_0 + 2.723442d-05*cos(3.82296285941d0 + 109.9456887885d0 * t)
        neptune_x_0 = neptune_x_0 + 3.108292d-05*cos(1.84434543409d0 + 47.6942631934d0 * t)
        neptune_x_0 = neptune_x_0 + 3.260095d-05*cos(1.81839652878d0 + 145.1097790097d0 * t)
        neptune_x_0 = neptune_x_0 + 3.322735d-05*cos(4.68798591938d0 + 4.192785694d0 * t)
        neptune_x_0 = neptune_x_0 + 3.920412d-05*cos(5.49263784865d0 + 39.0962434843d0 * t)
        neptune_x_0 = neptune_x_0 + 3.951848d-05*cos(2.2999693411d0 + 98.8999885246d0 * t)
        neptune_x_0 = neptune_x_0 + 4.089036d-05*cos(1.99429048244d0 + 37.1698277913d0 * t)
        neptune_x_0 = neptune_x_0 + 4.249674d-05*cos(5.63324475823d0 + 28.5718080822d0 * t)
        neptune_x_0 = neptune_x_0 + 4.315539d-05*cos(5.10473142056d0 + 38.1812197476d0 * t)
        neptune_x_0 = neptune_x_0 + 4.32255d-05*cos(2.37744780188d0 + 38.084851528d0 * t)
        neptune_x_0 = neptune_x_0 + 4.557247d-05*cos(1.09712669317d0 + 38.6543004996d0 * t)
        neptune_x_0 = neptune_x_0 + 4.654361d-05*cos(0.1038588798d0 + 37.611770776d0 * t)
        neptune_x_0 = neptune_x_0 + 4.732434d-05*cos(4.09723977191d0 + 79.2350166922d0 * t)
        neptune_x_0 = neptune_x_0 + 5.56586d-05*cos(3.82502185953d0 + 32.1951448046d0 * t)
        neptune_x_0 = neptune_x_0 + 6.464842d-05*cos(4.62580066013d0 + 5.9378908332d0 * t)
        neptune_x_0 = neptune_x_0 + 7.54065d-05*cos(2.77783477855d0 + 70.3281804424d0 * t)
        neptune_x_0 = neptune_x_0 + 7.573383d-05*cos(0.10011329853d0 + 426.598190876d0 * t)
        neptune_x_0 = neptune_x_0 + 8.004318d-05*cos(1.6396562626d0 + 108.4612160802d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00012013994d0*cos(0.94912933496d0 + 1059.3819301892d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00012614732d0*cos(3.57002516434d0 + 112.9146342051d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00012749153d0*cos(2.73719269645d0 + 111.4301614968d0 * t)
        neptune_x_0 = neptune_x_0 + 0.0002888926d0*cos(4.78966826027d0 + 42.5864537627d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00054690827d0*cos(1.55799996661d0 + 71.8126531507d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00060813556d0*cos(2.6258995838d0 + 33.6796175129d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00069040539d0*cos(5.8346912352d0 + 4.4534181249d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00090965704d0*cos(1.68910246115d0 + 114.3991069134d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00135887219d0*cos(5.54676577816d0 + 77.7505439839d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00272253551d0*cos(0.87443494387d0 + 213.299095438d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00307525907d0*cos(0.40023311011d0 + 73.297125859d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00495719107d0*cos(0.59948143567d0 + 529.6909650946d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00565534918d0*cos(5.98964907613d0 + 41.1019810544d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00817588813d0*cos(0.78180174031d0 + 2.9689454166d0 * t)
        neptune_x_0 = neptune_x_0 + 0.00823793287d0*cos(1.43221581862d0 + 35.1640902212d0 * t)
        neptune_x_0 = neptune_x_0 + 0.01074040708d0*cos(5.38502938672d0 + 74.7815985673d0 * t)
        neptune_x_0 = neptune_x_0 + 0.02597313814d0*cos(1.99590301412d0 + 1.4844727083d0 * t)
        neptune_x_0 = neptune_x_0 + 0.13505661755d0*cos(3.50078975634d0 + 76.2660712756d0 * t)
        neptune_x_0 = neptune_x_0 + 0.14935120126d0*cos(1.08499403018d0 + 39.6175083461d0 * t)
        neptune_x_0 = neptune_x_0 + 0.15726094556d0*cos(0.11319072675d0 + 36.6485629295d0 * t)
        neptune_x_0 = neptune_x_0 + 0.27080164222d0*cos(3.14159265359d0 + 0.0d0 * t)
        neptune_x_0 = neptune_x_0 + 30.05890004476d0*cos(5.31211340029d0 + 38.1330356378d0 * t)

        neptune_x_1 = neptune_x_1 + 1.285542d-05*cos(6.02367554997d0 + 74.7815985673d0 * t)
        neptune_x_1 = neptune_x_1 + 1.344022d-05*cos(3.03802059051d0 + 42.5864537627d0 * t)
        neptune_x_1 = neptune_x_1 + 1.572202d-05*cos(1.07606611589d0 + 114.3991069134d0 * t)
        neptune_x_1 = neptune_x_1 + 2.168719d-05*cos(4.11768012563d0 + 4.4534181249d0 * t)
        neptune_x_1 = neptune_x_1 + 2.204414d-05*cos(4.38855639521d0 + 33.6796175129d0 * t)
        neptune_x_1 = neptune_x_1 + 2.745267d-05*cos(4.06252818667d0 + 77.7505439839d0 * t)
        neptune_x_1 = neptune_x_1 + 4.899718d-05*cos(2.09349497813d0 + 73.297125859d0 * t)
        neptune_x_1 = neptune_x_1 + 5.086527d-05*cos(1.92377354729d0 + 38.1330356378d0 * t)
        neptune_x_1 = neptune_x_1 + 0.00013130617d0*cos(5.36424961848d0 + 2.9689454166d0 * t)
        neptune_x_1 = neptune_x_1 + 0.00017459808d0*cos(4.26349398817d0 + 41.1019810544d0 * t)
        neptune_x_1 = neptune_x_1 + 0.00021924705d0*cos(3.20156164152d0 + 35.1640902212d0 * t)
        neptune_x_1 = neptune_x_1 + 0.00037965449d0*cos(3.14159265359d0 + 0.0d0 * t)
        neptune_x_1 = neptune_x_1 + 0.00118398168d0*cos(2.88251845061d0 + 76.2660712756d0 * t)
        neptune_x_1 = neptune_x_1 + 0.00243125299d0*cos(5.46214902873d0 + 39.6175083461d0 * t)
        neptune_x_1 = neptune_x_1 + 0.00255840261d0*cos(2.01935686795d0 + 36.6485629295d0 * t)
        neptune_x_1=neptune_x_1*t;

        neptune_x_2 = neptune_x_2 + 2.163703d-05*cos(1.79218168368d0 + 76.2660712756d0 * t)
        neptune_x_2 = neptune_x_2 + 3.092965d-05*cos(0.62250463031d0 + 38.1330356378d0 * t)
        neptune_x_2 = neptune_x_2 + 4.350766d-05*cos(2.45420254304d0 + 39.6175083461d0 * t)
        neptune_x_2 = neptune_x_2 + 4.536283d-05*cos(5.02700751836d0 + 36.6485629295d0 * t)
        neptune_x_2 = neptune_x_2 + 5.371138d-05*cos(0.0d0 + 0.0d0 * t)
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

        neptune_y_0 = neptune_y_0 + 1.080807d-05*cos(3.18401661435d0 + 42.3258213318d0 * t)
        neptune_y_0 = neptune_y_0 + 1.111708d-05*cos(5.51669920239d0 + 8.0767548473d0 * t)
        neptune_y_0 = neptune_y_0 + 1.227926d-05*cos(1.21334651843d0 + 72.0732855816d0 * t)
        neptune_y_0 = neptune_y_0 + 1.237027d-05*cos(1.08622199668d0 + 148.0787244263d0 * t)
        neptune_y_0 = neptune_y_0 + 1.242929d-05*cos(1.10242173566d0 + 33.9402499438d0 * t)
        neptune_y_0 = neptune_y_0 + 1.314116d-05*cos(1.80386443362d0 + 46.2097904851d0 * t)
        neptune_y_0 = neptune_y_0 + 1.388024d-05*cos(2.14792830412d0 + 115.8835796217d0 * t)
        neptune_y_0 = neptune_y_0 + 1.404991d-05*cos(2.04611088339d0 + 536.8045120954d0 * t)
        neptune_y_0 = neptune_y_0 + 1.435274d-05*cos(5.44292013172d0 + 522.5774180938d0 * t)
        neptune_y_0 = neptune_y_0 + 1.467042d-05*cos(3.5622646377d0 + 181.7583419392d0 * t)
        neptune_y_0 = neptune_y_0 + 1.527526d-05*cos(4.73412534395d0 + 38.2449102224d0 * t)
        neptune_y_0 = neptune_y_0 + 1.533383d-05*cos(5.8897111359d0 + 38.0211610532d0 * t)
        neptune_y_0 = neptune_y_0 + 1.545705d-05*cos(5.35267669439d0 + 38.3936680687d0 * t)
        neptune_y_0 = neptune_y_0 + 1.559193d-05*cos(5.27114846878d0 + 37.8724032069d0 * t)
        neptune_y_0 = neptune_y_0 + 1.647474d-05*cos(2.50010254963d0 + 30.0562807905d0 * t)
        neptune_y_0 = neptune_y_0 + 1.681258d-05*cos(2.70480318579d0 + 40.5807161926d0 * t)
        neptune_y_0 = neptune_y_0 + 1.720954d-05*cos(4.49400805134d0 + 106.9767433719d0 * t)
        neptune_y_0 = neptune_y_0 + 1.732739d-05*cos(4.14518500834d0 + 70.3281804424d0 * t)
        neptune_y_0 = neptune_y_0 + 1.82639d-05*cos(2.00938305966d0 + 44.070926471d0 * t)
        neptune_y_0 = neptune_y_0 + 1.888827d-05*cos(1.63364331324d0 + 35.685355083d0 * t)
        neptune_y_0 = neptune_y_0 + 1.894261d-05*cos(5.46274825258d0 + 220.4126424388d0 * t)
        neptune_y_0 = neptune_y_0 + 1.967147d-05*cos(2.56634772532d0 + 206.1855484372d0 * t)
        neptune_y_0 = neptune_y_0 + 2.057794d-05*cos(4.38552505781d0 + 137.0330241624d0 * t)
        neptune_y_0 = neptune_y_0 + 2.086907d-05*cos(6.28313624461d0 + 149.5631971346d0 * t)
        neptune_y_0 = neptune_y_0 + 2.523042d-05*cos(6.23400745185d0 + 312.1990839626d0 * t)
        neptune_y_0 = neptune_y_0 + 2.670944d-05*cos(2.31235275416d0 + 109.9456887885d0 * t)
        neptune_y_0 = neptune_y_0 + 3.112636d-05*cos(0.27319642944d0 + 47.6942631934d0 * t)
        neptune_y_0 = neptune_y_0 + 3.323991d-05*cos(3.11674274385d0 + 4.192785694d0 * t)
        neptune_y_0 = neptune_y_0 + 3.373281d-05*cos(3.3961625565d0 + 145.1097790097d0 * t)
        neptune_y_0 = neptune_y_0 + 3.930135d-05*cos(3.86614178174d0 + 98.8999885246d0 * t)
        neptune_y_0 = neptune_y_0 + 3.932515d-05*cos(3.91607592815d0 + 39.0962434843d0 * t)
        neptune_y_0 = neptune_y_0 + 4.089036d-05*cos(0.42349446479d0 + 37.1698277913d0 * t)
        neptune_y_0 = neptune_y_0 + 4.247643d-05*cos(4.06355336504d0 + 28.5718080822d0 * t)
        neptune_y_0 = neptune_y_0 + 4.315539d-05*cos(3.53393506841d0 + 38.1812197476d0 * t)
        neptune_y_0 = neptune_y_0 + 4.32255d-05*cos(0.80665145881d0 + 38.084851528d0 * t)
        neptune_y_0 = neptune_y_0 + 4.557247d-05*cos(5.80951552318d0 + 38.6543004996d0 * t)
        neptune_y_0 = neptune_y_0 + 4.650708d-05*cos(4.81540983294d0 + 37.611770776d0 * t)
        neptune_y_0 = neptune_y_0 + 4.733483d-05*cos(2.52620194642d0 + 79.2350166922d0 * t)
        neptune_y_0 = neptune_y_0 + 5.297978d-05*cos(0.7900231399d0 + 71.8126531507d0 * t)
        neptune_y_0 = neptune_y_0 + 6.439265d-05*cos(3.05453259951d0 + 5.9378908332d0 * t)
        neptune_y_0 = neptune_y_0 + 7.581788d-05*cos(4.81169168396d0 + 426.598190876d0 * t)
        neptune_y_0 = neptune_y_0 + 8.76858d-05*cos(3.2348715695d0 + 108.4612160802d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00012012961d0*cos(5.66157563804d0 + 1059.3819301892d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00012613583d0*cos(1.99777332934d0 + 112.9146342051d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00012828708d0*cos(1.16740053443d0 + 111.4301614968d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00020081559d0*cos(1.19787916085d0 + 33.6796175129d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00028893355d0*cos(3.21848975032d0 + 42.5864537627d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00068790261d0*cos(4.26391997151d0 + 4.4534181249d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00090970871d0*cos(0.11783619888d0 + 114.3991069134d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00135897385d0*cos(3.97553750964d0 + 77.7505439839d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00272640298d0*cos(5.58603690785d0 + 213.299095438d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00304525203d0*cos(5.11048113661d0 + 73.297125859d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00495581047d0*cos(5.31205825784d0 + 529.6909650946d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00565576412d0*cos(4.41843009015d0 + 41.1019810544d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00582199295d0*cos(6.19633718936d0 + 35.1640902212d0 * t)
        neptune_y_0 = neptune_y_0 + 0.00815187583d0*cos(5.49429775826d0 + 2.9689454166d0 * t)
        neptune_y_0 = neptune_y_0 + 0.01073739772d0*cos(3.81371728533d0 + 74.7815985673d0 * t)
        neptune_y_0 = neptune_y_0 + 0.02584250749d0*cos(0.42549700754d0 + 1.4844727083d0 * t)
        neptune_y_0 = neptune_y_0 + 0.13506391797d0*cos(1.92953034883d0 + 76.2660712756d0 * t)
        neptune_y_0 = neptune_y_0 + 0.14936165806d0*cos(5.79694900665d0 + 39.6175083461d0 * t)
        neptune_y_0 = neptune_y_0 + 0.15706589373d0*cos(4.82539970129d0 + 36.6485629295d0 * t)
        neptune_y_0 = neptune_y_0 + 0.30205857683d0*cos(3.14159265359d0 + 0.0d0 * t)
        neptune_y_0 = neptune_y_0 + 30.06056351665d0*cos(3.74086294714d0 + 38.1330356378d0 * t)

        neptune_y_1 = neptune_y_1 + 1.293459d-05*cos(4.45868061082d0 + 74.7815985673d0 * t)
        neptune_y_1 = neptune_y_1 + 1.343731d-05*cos(1.46712622109d0 + 42.5864537627d0 * t)
        neptune_y_1 = neptune_y_1 + 1.458269d-05*cos(1.61835542699d0 + 38.1330356378d0 * t)
        neptune_y_1 = neptune_y_1 + 1.565725d-05*cos(2.89846266272d0 + 33.6796175129d0 * t)
        neptune_y_1 = neptune_y_1 + 1.572289d-05*cos(5.78853350711d0 + 114.3991069134d0 * t)
        neptune_y_1 = neptune_y_1 + 2.145481d-05*cos(2.54768447291d0 + 4.4534181249d0 * t)
        neptune_y_1 = neptune_y_1 + 2.745921d-05*cos(2.49178311082d0 + 77.7505439839d0 * t)
        neptune_y_1 = neptune_y_1 + 4.945117d-05*cos(0.51727080684d0 + 73.297125859d0 * t)
        neptune_y_1 = neptune_y_1 + 0.0001299238d0*cos(3.79578633002d0 + 2.9689454166d0 * t)
        neptune_y_1 = neptune_y_1 + 0.00017462332d0*cos(2.69229902966d0 + 41.1019810544d0 * t)
        neptune_y_1 = neptune_y_1 + 0.00021936702d0*cos(1.63124087591d0 + 35.1640902212d0 * t)
        neptune_y_1 = neptune_y_1 + 0.00118427205d0*cos(1.31128027037d0 + 76.2660712756d0 * t)
        neptune_y_1 = neptune_y_1 + 0.00243147725d0*cos(3.89099798696d0 + 39.6175083461d0 * t)
        neptune_y_1 = neptune_y_1 + 0.00256125493d0*cos(0.44757496817d0 + 36.6485629295d0 * t)
        neptune_y_1 = neptune_y_1 + 0.00352947493d0*cos(3.14159265359d0 + 0.0d0 * t)
        neptune_y_1=neptune_y_1*t;

        neptune_y_2 = neptune_y_2 + 2.163809d-05*cos(0.22086532214d0 + 76.2660712756d0 * t)
        neptune_y_2 = neptune_y_2 + 3.058647d-05*cos(5.31956613665d0 + 38.1330356378d0 * t)
        neptune_y_2 = neptune_y_2 + 3.595394d-05*cos(3.14159265359d0 + 0.0d0 * t)
        neptune_y_2 = neptune_y_2 + 4.347956d-05*cos(0.88317230351d0 + 39.6175083461d0 * t)
        neptune_y_2 = neptune_y_2 + 4.539421d-05*cos(3.45613207922d0 + 36.6485629295d0 * t)
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

        neptune_z_0 = neptune_z_0 + 1.86565d-05*cos(5.05540709577d0 + 71.8126531507d0 * t)
        neptune_z_0 = neptune_z_0 + 2.213464d-05*cos(1.96045135168d0 + 4.4534181249d0 * t)
        neptune_z_0 = neptune_z_0 + 2.818034d-05*cos(4.10661077794d0 + 114.3991069134d0 * t)
        neptune_z_0 = neptune_z_0 + 2.868677d-05*cos(4.27011526203d0 + 33.6796175129d0 * t)
        neptune_z_0 = neptune_z_0 + 4.119873d-05*cos(1.67934316836d0 + 77.7505439839d0 * t)
        neptune_z_0 = neptune_z_0 + 9.770125d-05*cos(2.80133971586d0 + 73.297125859d0 * t)
        neptune_z_0 = neptune_z_0 + 0.0001127968d0*cos(3.55816676334d0 + 529.6909650946d0 * t)
        neptune_z_0 = neptune_z_0 + 0.00011789909d0*cos(3.60001877675d0 + 213.299095438d0 * t)
        neptune_z_0 = neptune_z_0 + 0.00016865319d0*cos(2.13251104425d0 + 41.1019810544d0 * t)
        neptune_z_0 = neptune_z_0 + 0.00025812584d0*cos(3.19303128782d0 + 2.9689454166d0 * t)
        neptune_z_0 = neptune_z_0 + 0.00030873335d0*cos(3.29017611456d0 + 35.1640902212d0 * t)
        neptune_z_0 = neptune_z_0 + 0.00032704958d0*cos(1.52048692001d0 + 74.7815985673d0 * t)
        neptune_z_0 = neptune_z_0 + 0.00084104329d0*cos(4.38928900096d0 + 1.4844727083d0 * t)
        neptune_z_0 = neptune_z_0 + 0.00417558068d0*cos(5.91310695421d0 + 76.2660712756d0 * t)
        neptune_z_0 = neptune_z_0 + 0.00451987936d0*cos(3.50949720541d0 + 39.6175083461d0 * t)
        neptune_z_0 = neptune_z_0 + 0.00474333567d0*cos(2.52218774238d0 + 36.6485629295d0 * t)
        neptune_z_0 = neptune_z_0 + 0.01245978462d0*cos(0.0d0 + 0.0d0 * t)
        neptune_z_0 = neptune_z_0 + 0.92866054405d0*cos(1.44103930278d0 + 38.1330356378d0 * t)

        neptune_z_1 = neptune_z_1 + 3.891873d-05*cos(5.46761139427d0 + 76.2660712756d0 * t)
        neptune_z_1 = neptune_z_1 + 6.862414d-05*cos(1.6593016061d0 + 39.6175083461d0 * t)
        neptune_z_1 = neptune_z_1 + 7.783708d-05*cos(4.40146905905d0 + 36.6485629295d0 * t)
        neptune_z_1 = neptune_z_1 + 9.464276d-05*cos(0.0d0 + 0.0d0 * t)
        neptune_z_1 = neptune_z_1 + 0.00154885971d0*cos(2.14239039664d0 + 38.1330356378d0 * t)
        neptune_z_1=neptune_z_1*t;

        neptune_z_2 = neptune_z_2 + 1.26484d-05*cos(1.91401498992d0 + 38.1330356378d0 * t)
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

        saturn_x_0 = saturn_x_0 + 1.007761d-05*cos(1.08964371328d0 + 225.8292684102d0 * t)
        saturn_x_0 = saturn_x_0 + 1.00919d-05*cos(1.34289487761d0 + 265.9892934775d0 * t)
        saturn_x_0 = saturn_x_0 + 1.019566d-05*cos(5.00707811029d0 + 1471.7530270636d0 * t)
        saturn_x_0 = saturn_x_0 + 1.08945d-05*cos(5.8269067271d0 + 362.8622925726d0 * t)
        saturn_x_0 = saturn_x_0 + 1.092244d-05*cos(1.13561107749d0 + 173.9422195228d0 * t)
        saturn_x_0 = saturn_x_0 + 1.111703d-05*cos(0.47907488492d0 + 234.6397364404d0 * t)
        saturn_x_0 = saturn_x_0 + 1.118369d-05*cos(3.46624149583d0 + 703.6331846174d0 * t)
        saturn_x_0 = saturn_x_0 + 1.147607d-05*cos(0.19147238521d0 + 942.062061969d0 * t)
        saturn_x_0 = saturn_x_0 + 1.150595d-05*cos(3.74707160019d0 + 200.7689224658d0 * t)
        saturn_x_0 = saturn_x_0 + 1.173456d-05*cos(3.79591687208d0 + 1685.0521225016d0 * t)
        saturn_x_0 = saturn_x_0 + 1.418116d-05*cos(5.41419993599d0 + 350.3321196004d0 * t)
        saturn_x_0 = saturn_x_0 + 1.461217d-05*cos(5.92456743836d0 + 429.7795846137d0 * t)
        saturn_x_0 = saturn_x_0 + 1.485856d-05*cos(5.65501463408d0 + 949.1756089698d0 * t)
        saturn_x_0 = saturn_x_0 + 1.498689d-05*cos(3.60168057129d0 + 52.6901980395d0 * t)
        saturn_x_0 = saturn_x_0 + 1.538425d-05*cos(4.78544077085d0 + 860.3099287528d0 * t)
        saturn_x_0 = saturn_x_0 + 1.632759d-05*cos(2.69164822165d0 + 213.8203602998d0 * t)
        saturn_x_0 = saturn_x_0 + 1.634262d-05*cos(4.54357767539d0 + 12.5301729722d0 * t)
        saturn_x_0 = saturn_x_0 + 1.635975d-05*cos(2.1996886978d0 + 212.7778305762d0 * t)
        saturn_x_0 = saturn_x_0 + 1.963947d-05*cos(2.0508648718d0 + 1.4844727083d0 * t)
        saturn_x_0 = saturn_x_0 + 2.095366d-05*cos(3.55759089756d0 + 423.4167971383d0 * t)
        saturn_x_0 = saturn_x_0 + 2.162629d-05*cos(3.26951119901d0 + 340.7708920448d0 * t)
        saturn_x_0 = saturn_x_0 + 2.309076d-05*cos(3.67821438247d0 + 430.5303441391d0 * t)
        saturn_x_0 = saturn_x_0 + 2.33527d-05*cos(5.86791072516d0 + 388.4651552382d0 * t)
        saturn_x_0 = saturn_x_0 + 2.427626d-05*cos(3.97311214231d0 + 222.8603229936d0 * t)
        saturn_x_0 = saturn_x_0 + 2.470181d-05*cos(5.27435870056d0 + 1155.361157407d0 * t)
        saturn_x_0 = saturn_x_0 + 2.507415d-05*cos(1.49447138038d0 + 9.5612275556d0 * t)
        saturn_x_0 = saturn_x_0 + 2.527746d-05*cos(5.09752068381d0 + 628.8515860501d0 * t)
        saturn_x_0 = saturn_x_0 + 2.618634d-05*cos(5.49334837098d0 + 127.4717966068d0 * t)
        saturn_x_0 = saturn_x_0 + 2.634075d-05*cos(5.40645201521d0 + 288.0806940053d0 * t)
        saturn_x_0 = saturn_x_0 + 2.713354d-05*cos(0.96812639712d0 + 203.7378678824d0 * t)
        saturn_x_0 = saturn_x_0 + 2.827527d-05*cos(0.73252555642d0 + 330.6189636582d0 * t)
        saturn_x_0 = saturn_x_0 + 2.886599d-05*cos(1.14057922619d0 + 85.8272988312d0 * t)
        saturn_x_0 = saturn_x_0 + 2.912676d-05*cos(1.76893577106d0 + 3.1813937377d0 * t)
        saturn_x_0 = saturn_x_0 + 2.96645d-05*cos(5.39568820046d0 + 138.5174968707d0 * t)
        saturn_x_0 = saturn_x_0 + 2.989778d-05*cos(4.15673836604d0 + 1066.49547719d0 * t)
        saturn_x_0 = saturn_x_0 + 2.990421d-05*cos(0.04148806852d0 + 625.6701923124d0 * t)
        saturn_x_0 = saturn_x_0 + 3.113641d-05*cos(4.0441036719d0 + 213.3472795478d0 * t)
        saturn_x_0 = saturn_x_0 + 3.114576d-05*cos(0.84631897292d0 + 213.2509113282d0 * t)
        saturn_x_0 = saturn_x_0 + 3.128325d-05*cos(4.05483976553d0 + 1368.660252845d0 * t)
        saturn_x_0 = saturn_x_0 + 3.16939d-05*cos(5.76640408988d0 + 76.2660712756d0 * t)
        saturn_x_0 = saturn_x_0 + 3.363323d-05*cos(1.42089586686d0 + 437.6438911399d0 * t)
        saturn_x_0 = saturn_x_0 + 3.747433d-05*cos(1.16965137714d0 + 214.2623032845d0 * t)
        saturn_x_0 = saturn_x_0 + 3.762834d-05*cos(3.72112920226d0 + 212.3358875915d0 * t)
        saturn_x_0 = saturn_x_0 + 3.79254d-05*cos(5.99766568983d0 + 422.6660376129d0 * t)
        saturn_x_0 = saturn_x_0 + 4.111695d-05*cos(5.96153153046d0 + 137.0330241624d0 * t)
        saturn_x_0 = saturn_x_0 + 4.860582d-05*cos(0.26461045175d0 + 536.8045120954d0 * t)
        saturn_x_0 = saturn_x_0 + 5.152474d-05*cos(0.3466951715d0 + 215.7467759928d0 * t)
        saturn_x_0 = saturn_x_0 + 5.194178d-05*cos(4.54584467686d0 + 210.8514148832d0 * t)
        saturn_x_0 = saturn_x_0 + 5.343894d-05*cos(3.60046273598d0 + 412.3710968744d0 * t)
        saturn_x_0 = saturn_x_0 + 5.775802d-05*cos(5.30717695229d0 + 38.1330356378d0 * t)
        saturn_x_0 = saturn_x_0 + 6.074958d-05*cos(6.15905897331d0 + 440.8252848776d0 * t)
        saturn_x_0 = saturn_x_0 + 6.232999d-05*cos(2.45837758015d0 + 846.0828347512d0 * t)
        saturn_x_0 = saturn_x_0 + 6.321101d-05*cos(0.8391540877d0 + 309.2783226558d0 * t)
        saturn_x_0 = saturn_x_0 + 6.717741d-05*cos(5.51897460997d0 + 838.9692877504d0 * t)
        saturn_x_0 = saturn_x_0 + 7.161671d-05*cos(2.18152751738d0 + 95.9792272178d0 * t)
        saturn_x_0 = saturn_x_0 + 8.222014d-05*cos(2.47875301104d0 + 742.9900605326d0 * t)
        saturn_x_0 = saturn_x_0 + 9.087093d-05*cos(4.33505326762d0 + 1052.2683831884d0 * t)
        saturn_x_0 = saturn_x_0 + 9.943329d-05*cos(0.84628387596d0 + 3.9321532631d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00012026472d0*cos(5.66372282839d0 + 351.8165923087d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00012393514d0*cos(4.19747622821d0 + 490.3340891794d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00012427525d0*cos(1.02995545746d0 + 1059.3819301892d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00014731703d0*cos(4.67981909838d0 + 277.0349937414d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00023355468d0*cos(0.18791490124d0 + 149.5631971346d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00023372467d0*cos(5.53491987276d0 + 647.0108333148d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00024554499d0*cos(4.53150598095d0 + 210.1177017003d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00024673219d0*cos(5.9089157385d0 + 522.5774180938d0 * t)
        saturn_x_0 = saturn_x_0 + 0.0002467705d0*cos(5.6038938242d0 + 415.5524906121d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00024805815d0*cos(5.50327676733d0 + 74.7815985673d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00025165185d0*cos(0.37800582257d0 + 216.4804891757d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00025491374d0*cos(1.63922423181d0 + 117.3198682202d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00031253049d0*cos(4.62976601833d0 + 735.8765135318d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00038345667d0*cos(4.39815501478d0 + 199.0720014364d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00044551703d0*cos(5.60763553535d0 + 63.7358983034d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00045550446d0*cos(1.8823503783d0 + 14.2270940016d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00054022837d0*cos(4.90928184374d0 + 853.196381752d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00058297911d0*cos(2.16155251399d0 + 224.3447957019d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00065620467d0*cos(2.69728593339d0 + 202.2533951741d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00068855792d0*cos(4.01788097627d0 + 217.2312487011d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00070219382d0*cos(0.88789752415d0 + 209.3669421749d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00074150224d0*cos(2.38206066655d0 + 632.7837393132d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00080600536d0*cos(5.62103979796d0 + 11.0457002639d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00083782316d0*cos(0.62038893702d0 + 227.5261894396d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00097843523d0*cos(1.01485750417d0 + 323.5054166574d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00372894461d0*cos(0.00137195497d0 + 433.7117378768d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00433994439d0*cos(0.72012820974d0 + 529.6909650946d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00509313365d0*cos(4.9586562478d0 + 103.0927742186d0 * t)
        saturn_x_0 = saturn_x_0 + 0.00716328481d0*cos(2.71149993708d0 + 316.3918696566d0 * t)
        saturn_x_0 = saturn_x_0 + 0.01097683232d0*cos(5.65753337256d0 + 639.897286314d0 * t)
        saturn_x_0 = saturn_x_0 + 0.01115684467d0*cos(3.15686878377d0 + 419.4846438752d0 * t)
        saturn_x_0 = saturn_x_0 + 0.01255372247d0*cos(2.17338917731d0 + 110.2063212194d0 * t)
        saturn_x_0 = saturn_x_0 + 0.02336340488d0*cos(2.02227784673d0 + 7.1135470008d0 * t)
        saturn_x_0 = saturn_x_0 + 0.04244797817d0*cos(0.0d0 + 0.0d0 * t)
        saturn_x_0 = saturn_x_0 + 0.06624260115d0*cos(0.7509473778d0 + 220.4126424388d0 * t)
        saturn_x_0 = saturn_x_0 + 0.06760430339d0*cos(4.16767145778d0 + 206.1855484372d0 * t)
        saturn_x_0 = saturn_x_0 + 0.26412374238d0*cos(0.1239089262d0 + 426.598190876d0 * t)
        saturn_x_0 = saturn_x_0 + 9.51638335797d0*cos(0.87441380794d0 + 213.299095438d0 * t)

        saturn_x_1 = saturn_x_1 + 1.101245d-05*cos(4.07698108824d0 + 429.7795846137d0 * t)
        saturn_x_1 = saturn_x_1 + 1.1264d-05*cos(2.88173213734d0 + 860.3099287528d0 * t)
        saturn_x_1 = saturn_x_1 + 1.129056d-05*cos(5.45794529295d0 + 423.4167971383d0 * t)
        saturn_x_1 = saturn_x_1 + 1.17168d-05*cos(4.59341412127d0 + 536.8045120954d0 * t)
        saturn_x_1 = saturn_x_1 + 1.27105d-05*cos(2.40338468675d0 + 415.5524906121d0 * t)
        saturn_x_1 = saturn_x_1 + 1.273315d-05*cos(0.09572429396d0 + 742.9900605326d0 * t)
        saturn_x_1 = saturn_x_1 + 1.330413d-05*cos(5.06312203212d0 + 234.6397364404d0 * t)
        saturn_x_1 = saturn_x_1 + 1.331045d-05*cos(1.90899526877d0 + 215.7467759928d0 * t)
        saturn_x_1 = saturn_x_1 + 1.342277d-05*cos(2.98929557875d0 + 210.8514148832d0 * t)
        saturn_x_1 = saturn_x_1 + 1.395551d-05*cos(2.03533642541d0 + 1066.49547719d0 * t)
        saturn_x_1 = saturn_x_1 + 1.449143d-05*cos(6.26507179861d0 + 529.6909650946d0 * t)
        saturn_x_1 = saturn_x_1 + 1.511648d-05*cos(6.23274598777d0 + 3.1813937377d0 * t)
        saturn_x_1 = saturn_x_1 + 1.544787d-05*cos(5.30283923836d0 + 330.6189636582d0 * t)
        saturn_x_1 = saturn_x_1 + 1.688957d-05*cos(3.98270950731d0 + 422.6660376129d0 * t)
        saturn_x_1 = saturn_x_1 + 1.765816d-05*cos(0.75684544353d0 + 277.0349937414d0 * t)
        saturn_x_1 = saturn_x_1 + 1.875862d-05*cos(2.52384080586d0 + 3.9321532631d0 * t)
        saturn_x_1 = saturn_x_1 + 2.731381d-05*cos(4.1089222366d0 + 149.5631971346d0 * t)
        saturn_x_1 = saturn_x_1 + 2.763786d-05*cos(3.96253590209d0 + 95.9792272178d0 * t)
        saturn_x_1 = saturn_x_1 + 3.571196d-05*cos(5.10821908379d0 + 412.3710968744d0 * t)
        saturn_x_1 = saturn_x_1 + 4.008257d-05*cos(1.48942966807d0 + 522.5774180938d0 * t)
        saturn_x_1 = saturn_x_1 + 5.499109d-05*cos(4.40350603415d0 + 440.8252848776d0 * t)
        saturn_x_1 = saturn_x_1 + 5.512222d-05*cos(2.60556642348d0 + 11.0457002639d0 * t)
        saturn_x_1 = saturn_x_1 + 8.707608d-05*cos(6.03511731637d0 + 224.3447957019d0 * t)
        saturn_x_1 = saturn_x_1 + 9.873183d-05*cos(5.20065307357d0 + 202.2533951741d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00011061528d0*cos(0.03163071461d0 + 117.3198682202d0 * t)
        saturn_x_1 = saturn_x_1 + 0.0001446601d0*cos(3.6744938009d0 + 647.0108333148d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00015894491d0*cos(0.03653502304d0 + 210.1177017003d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00016192653d0*cos(5.6079801445d0 + 323.5054166574d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00016296201d0*cos(4.86945681437d0 + 216.4804891757d0 * t)
        saturn_x_1 = saturn_x_1 + 0.0001712025d0*cos(4.59611664188d0 + 632.7837393132d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00017777854d0*cos(6.10381593351d0 + 217.2312487011d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00018093009d0*cos(5.09162723865d0 + 209.3669421749d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00018939377d0*cos(2.77618306725d0 + 853.196381752d0 * t)
        saturn_x_1 = saturn_x_1 + 0.0002227521d0*cos(6.19530878014d0 + 103.0927742186d0 * t)
        saturn_x_1 = saturn_x_1 + 0.000304181d0*cos(0.18746903351d0 + 14.2270940016d0 * t)
        saturn_x_1 = saturn_x_1 + 0.0003100084d0*cos(6.06067919437d0 + 199.0720014364d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00066764238d0*cos(3.72346596928d0 + 316.3918696566d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00066901225d0*cos(5.2025750038d0 + 227.5261894396d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00119531145d0*cos(1.14735096078d0 + 110.2063212194d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00189196274d0*cos(4.48642453552d0 + 433.7117378768d0 * t)
        saturn_x_1 = saturn_x_1 + 0.0020364657d0*cos(1.10998681782d0 + 213.299095438d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00256560953d0*cos(3.52478934343d0 + 639.897286314d0 * t)
        saturn_x_1 = saturn_x_1 + 0.00312356512d0*cos(4.83001724941d0 + 419.4846438752d0 * t)
        saturn_x_1 = saturn_x_1 + 0.0062710452d0*cos(0.32898307969d0 + 7.1135470008d0 * t)
        saturn_x_1 = saturn_x_1 + 0.02643100909d0*cos(5.33291950584d0 + 220.4126424388d0 * t)
        saturn_x_1 = saturn_x_1 + 0.02714918399d0*cos(5.85229412397d0 + 206.1855484372d0 * t)
        saturn_x_1 = saturn_x_1 + 0.03085041716d0*cos(4.27565749128d0 + 426.598190876d0 * t)
        saturn_x_1 = saturn_x_1 + 0.07575103962d0*cos(0.0d0 + 0.0d0 * t)
        saturn_x_1=saturn_x_1*t;

        saturn_x_2 = saturn_x_2 + 1.228511d-05*cos(0.42906039519d0 + 412.3710968744d0 * t)
        saturn_x_2 = saturn_x_2 + 1.841989d-05*cos(3.99269872894d0 + 323.5054166574d0 * t)
        saturn_x_2 = saturn_x_2 + 2.129256d-05*cos(0.28453141367d0 + 632.7837393132d0 * t)
        saturn_x_2 = saturn_x_2 + 2.503277d-05*cos(4.69450368911d0 + 117.3198682202d0 * t)
        saturn_x_2 = saturn_x_2 + 2.506986d-05*cos(1.74781817701d0 + 103.0927742186d0 * t)
        saturn_x_2 = saturn_x_2 + 2.538027d-05*cos(2.65097612407d0 + 440.8252848776d0 * t)
        saturn_x_2 = saturn_x_2 + 2.568114d-05*cos(1.74024228572d0 + 217.2312487011d0 * t)
        saturn_x_2 = saturn_x_2 + 2.66047d-05*cos(3.16731393212d0 + 209.3669421749d0 * t)
        saturn_x_2 = saturn_x_2 + 3.508385d-05*cos(0.78251653369d0 + 853.196381752d0 * t)
        saturn_x_2 = saturn_x_2 + 4.166633d-05*cos(5.32887874226d0 + 316.3918696566d0 * t)
        saturn_x_2 = saturn_x_2 + 4.653214d-05*cos(1.83710048213d0 + 647.0108333148d0 * t)
        saturn_x_2 = saturn_x_2 + 4.777358d-05*cos(1.81695155349d0 + 210.1177017003d0 * t)
        saturn_x_2 = saturn_x_2 + 4.923585d-05*cos(3.08463039042d0 + 216.4804891757d0 * t)
        saturn_x_2 = saturn_x_2 + 7.249149d-05*cos(5.70264553247d0 + 110.2063212194d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00010330738d0*cos(4.7694953129d0 + 14.2270940016d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00012676167d0*cos(1.4546572953d0 + 199.0720014364d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00027153555d0*cos(3.49804002218d0 + 227.5261894396d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00032847824d0*cos(1.59210153669d0 + 639.897286314d0 * t)
        saturn_x_2 = saturn_x_2 + 0.0004512259d0*cos(0.36735068943d0 + 419.4846438752d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00050028094d0*cos(2.70119046081d0 + 433.7117378768d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00087170924d0*cos(4.89048951691d0 + 7.1135470008d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00224302269d0*cos(2.49151203519d0 + 426.598190876d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00336109713d0*cos(2.4254743246d0 + 213.299095438d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00443342186d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00545834518d0*cos(3.62343709657d0 + 220.4126424388d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00560746334d0*cos(1.26401632282d0 + 206.1855484372d0 * t)
        saturn_x_2=saturn_x_2*t*t;

        saturn_x_3 = saturn_x_3 + 1.023888d-05*cos(0.01138655869d0 + 647.0108333148d0 * t)
        saturn_x_3 = saturn_x_3 + 1.230715d-05*cos(4.38196130069d0 + 213.299095438d0 * t)
        saturn_x_3 = saturn_x_3 + 2.342089d-05*cos(3.06091771643d0 + 14.2270940016d0 * t)
        saturn_x_3 = saturn_x_3 + 2.974601d-05*cos(6.00030641555d0 + 639.897286314d0 * t)
        saturn_x_3 = saturn_x_3 + 3.46801d-05*cos(3.14590544446d0 + 199.0720014364d0 * t)
        saturn_x_3 = saturn_x_3 + 4.505149d-05*cos(2.24531319187d0 + 419.4846438752d0 * t)
        saturn_x_3 = saturn_x_3 + 7.403594d-05*cos(1.7862738587d0 + 227.5261894396d0 * t)
        saturn_x_3 = saturn_x_3 + 8.04516d-05*cos(3.12864412887d0 + 7.1135470008d0 * t)
        saturn_x_3 = saturn_x_3 + 8.994946d-05*cos(0.91696559755d0 + 433.7117378768d0 * t)
        saturn_x_3 = saturn_x_3 + 0.00010527244d0*cos(0.66368256891d0 + 426.598190876d0 * t)
        saturn_x_3 = saturn_x_3 + 0.00018450895d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_x_3 = saturn_x_3 + 0.00075340436d0*cos(1.89208005248d0 + 220.4126424388d0 * t)
        saturn_x_3 = saturn_x_3 + 0.00077115952d0*cos(2.97714385362d0 + 206.1855484372d0 * t)
        saturn_x_3=saturn_x_3*t*t*t;

        saturn_x_4 = saturn_x_4 + 1.223066d-05*cos(5.41618485361d0 + 433.7117378768d0 * t)
        saturn_x_4 = saturn_x_4 + 1.511196d-05*cos(0.06561560462d0 + 227.5261894396d0 * t)
        saturn_x_4 = saturn_x_4 + 7.836652d-05*cos(0.13981693631d0 + 220.4126424388d0 * t)
        saturn_x_4 = saturn_x_4 + 7.959921d-05*cos(4.70523623364d0 + 206.1855484372d0 * t)
        saturn_x_4=saturn_x_4*t*t*t*t;

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

        saturn_y_0 = saturn_y_0 + 1.008898d-05*cos(5.8011030245d0 + 225.8292684102d0 * t)
        saturn_y_0 = saturn_y_0 + 1.011023d-05*cos(0.27242160432d0 + 1471.7530270636d0 * t)
        saturn_y_0 = saturn_y_0 + 1.090678d-05*cos(5.85086226218d0 + 173.9422195228d0 * t)
        saturn_y_0 = saturn_y_0 + 1.091025d-05*cos(4.25638370205d0 + 362.8622925726d0 * t)
        saturn_y_0 = saturn_y_0 + 1.112617d-05*cos(5.19114183145d0 + 234.6397364404d0 * t)
        saturn_y_0 = saturn_y_0 + 1.120819d-05*cos(1.89478696683d0 + 703.6331846174d0 * t)
        saturn_y_0 = saturn_y_0 + 1.152164d-05*cos(1.78736848302d0 + 942.062061969d0 * t)
        saturn_y_0 = saturn_y_0 + 1.162807d-05*cos(2.35040840317d0 + 200.7689224658d0 * t)
        saturn_y_0 = saturn_y_0 + 1.186647d-05*cos(5.38323620554d0 + 1685.0521225016d0 * t)
        saturn_y_0 = saturn_y_0 + 1.276377d-05*cos(2.9872898777d0 + 340.7708920448d0 * t)
        saturn_y_0 = saturn_y_0 + 1.437063d-05*cos(3.84293543293d0 + 350.3321196004d0 * t)
        saturn_y_0 = saturn_y_0 + 1.462908d-05*cos(4.35285690993d0 + 429.7795846137d0 * t)
        saturn_y_0 = saturn_y_0 + 1.499665d-05*cos(5.16865990579d0 + 52.6901980395d0 * t)
        saturn_y_0 = saturn_y_0 + 1.540242d-05*cos(3.21449770483d0 + 860.3099287528d0 * t)
        saturn_y_0 = saturn_y_0 + 1.634235d-05*cos(1.12043073218d0 + 213.8203602998d0 * t)
        saturn_y_0 = saturn_y_0 + 1.63658d-05*cos(2.97440139727d0 + 12.5301729722d0 * t)
        saturn_y_0 = saturn_y_0 + 1.639181d-05*cos(0.62823227849d0 + 212.7778305762d0 * t)
        saturn_y_0 = saturn_y_0 + 1.678952d-05*cos(2.07211719214d0 + 949.1756089698d0 * t)
        saturn_y_0 = saturn_y_0 + 1.989253d-05*cos(0.42496478369d0 + 1.4844727083d0 * t)
        saturn_y_0 = saturn_y_0 + 2.078049d-05*cos(1.95682348964d0 + 423.4167971383d0 * t)
        saturn_y_0 = saturn_y_0 + 2.269226d-05*cos(2.12401905105d0 + 430.5303441391d0 * t)
        saturn_y_0 = saturn_y_0 + 2.339764d-05*cos(4.29619053852d0 + 388.4651552382d0 * t)
        saturn_y_0 = saturn_y_0 + 2.431496d-05*cos(2.40122451395d0 + 222.8603229936d0 * t)
        saturn_y_0 = saturn_y_0 + 2.448467d-05*cos(0.54179432209d0 + 1155.361157407d0 * t)
        saturn_y_0 = saturn_y_0 + 2.501775d-05*cos(6.19929274396d0 + 9.5612275556d0 * t)
        saturn_y_0 = saturn_y_0 + 2.532374d-05*cos(3.52629372341d0 + 628.8515860501d0 * t)
        saturn_y_0 = saturn_y_0 + 2.533632d-05*cos(3.89788590926d0 + 138.5174968707d0 * t)
        saturn_y_0 = saturn_y_0 + 2.620642d-05*cos(0.69751279148d0 + 127.4717966068d0 * t)
        saturn_y_0 = saturn_y_0 + 2.638715d-05*cos(3.83678156812d0 + 288.0806940053d0 * t)
        saturn_y_0 = saturn_y_0 + 2.67075d-05*cos(0.18165311734d0 + 3.1813937377d0 * t)
        saturn_y_0 = saturn_y_0 + 2.774595d-05*cos(5.61594351302d0 + 203.7378678824d0 * t)
        saturn_y_0 = saturn_y_0 + 2.829944d-05*cos(5.44434225998d0 + 330.6189636582d0 * t)
        saturn_y_0 = saturn_y_0 + 2.891352d-05*cos(5.85313497106d0 + 85.8272988312d0 * t)
        saturn_y_0 = saturn_y_0 + 2.982174d-05*cos(2.58535107213d0 + 1066.49547719d0 * t)
        saturn_y_0 = saturn_y_0 + 3.118056d-05*cos(2.47259780102d0 + 213.3472795478d0 * t)
        saturn_y_0 = saturn_y_0 + 3.118938d-05*cos(5.55799397159d0 + 213.2509113282d0 * t)
        saturn_y_0 = saturn_y_0 + 3.138628d-05*cos(5.63058455924d0 + 1368.660252845d0 * t)
        saturn_y_0 = saturn_y_0 + 3.17168d-05*cos(4.19553075395d0 + 76.2660712756d0 * t)
        saturn_y_0 = saturn_y_0 + 3.36727d-05*cos(6.13298847057d0 + 437.6438911399d0 * t)
        saturn_y_0 = saturn_y_0 + 3.75201d-05*cos(5.88125434018d0 + 214.2623032845d0 * t)
        saturn_y_0 = saturn_y_0 + 3.768751d-05*cos(2.1495424736d0 + 212.3358875915d0 * t)
        saturn_y_0 = saturn_y_0 + 3.792348d-05*cos(4.41806046981d0 + 422.6660376129d0 * t)
        saturn_y_0 = saturn_y_0 + 3.815691d-05*cos(2.44166851155d0 + 625.6701923124d0 * t)
        saturn_y_0 = saturn_y_0 + 3.881104d-05*cos(3.38026646963d0 + 3.9321532631d0 * t)
        saturn_y_0 = saturn_y_0 + 4.042463d-05*cos(1.24471211016d0 + 137.0330241624d0 * t)
        saturn_y_0 = saturn_y_0 + 4.838146d-05*cos(4.98563812475d0 + 536.8045120954d0 * t)
        saturn_y_0 = saturn_y_0 + 5.027211d-05*cos(0.93213690546d0 + 846.0828347512d0 * t)
        saturn_y_0 = saturn_y_0 + 5.156578d-05*cos(5.05796998564d0 + 215.7467759928d0 * t)
        saturn_y_0 = saturn_y_0 + 5.201849d-05*cos(2.9748280243d0 + 210.8514148832d0 * t)
        saturn_y_0 = saturn_y_0 + 5.768897d-05*cos(3.73776690402d0 + 38.1330356378d0 * t)
        saturn_y_0 = saturn_y_0 + 6.082097d-05*cos(4.58758280729d0 + 440.8252848776d0 * t)
        saturn_y_0 = saturn_y_0 + 6.536751d-05*cos(0.84246459392d0 + 838.9692877504d0 * t)
        saturn_y_0 = saturn_y_0 + 6.919946d-05*cos(1.17090063883d0 + 412.3710968744d0 * t)
        saturn_y_0 = saturn_y_0 + 7.670379d-05*cos(1.16594276164d0 + 742.9900605326d0 * t)
        saturn_y_0 = saturn_y_0 + 9.034877d-05*cos(5.86816144198d0 + 1052.2683831884d0 * t)
        saturn_y_0 = saturn_y_0 + 9.551796d-05*cos(3.48788042094d0 + 95.9792272178d0 * t)
        saturn_y_0 = saturn_y_0 + 0.0001162921d0*cos(5.74108283772d0 + 1059.3819301892d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00012048048d0*cos(4.09265980116d0 + 351.8165923087d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00012422966d0*cos(2.62557865743d0 + 490.3340891794d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00015383927d0*cos(3.10227822627d0 + 277.0349937414d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00020099552d0*cos(0.98365186365d0 + 522.5774180938d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00020272215d0*cos(2.34319548198d0 + 309.2783226558d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00023380691d0*cos(4.90051072276d0 + 149.5631971346d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00023396742d0*cos(3.96337393635d0 + 647.0108333148d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00024640836d0*cos(2.95445247282d0 + 210.1177017003d0 * t)
        saturn_y_0 = saturn_y_0 + 0.0002482795d0*cos(3.926814289d0 + 74.7815985673d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00024835151d0*cos(4.02630190571d0 + 415.5524906121d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00025199575d0*cos(5.08963506006d0 + 216.4804891757d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00025545907d0*cos(0.06626229252d0 + 117.3198682202d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00029666833d0*cos(6.09910638345d0 + 735.8765135318d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00041976402d0*cos(2.62591355948d0 + 199.0720014364d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00044697175d0*cos(0.90661238256d0 + 63.7358983034d0 * t)
        saturn_y_0 = saturn_y_0 + 0.0004579093d0*cos(0.30331527632d0 + 14.2270940016d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00054049836d0*cos(3.33757904879d0 + 853.196381752d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00058382264d0*cos(0.58978766922d0 + 224.3447957019d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00065937657d0*cos(1.25969608208d0 + 202.2533951741d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00068985859d0*cos(2.44460312617d0 + 217.2312487011d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00070158491d0*cos(5.59777963629d0 + 209.3669421749d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00070957225d0*cos(0.88888207567d0 + 632.7837393132d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00080571808d0*cos(4.0529544991d0 + 11.0457002639d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00083899691d0*cos(5.33204070267d0 + 227.5261894396d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00097837745d0*cos(5.72844290173d0 + 323.5054166574d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00335162363d0*cos(0.66422253983d0 + 103.0927742186d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00373327342d0*cos(4.71308726958d0 + 433.7117378768d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00434466176d0*cos(5.42474696262d0 + 529.6909650946d0 * t)
        saturn_y_0 = saturn_y_0 + 0.00700849336d0*cos(1.13611298025d0 + 316.3918696566d0 * t)
        saturn_y_0 = saturn_y_0 + 0.01098751131d0*cos(4.08608782813d0 + 639.897286314d0 * t)
        saturn_y_0 = saturn_y_0 + 0.01183874652d0*cos(1.34638298371d0 + 419.4846438752d0 * t)
        saturn_y_0 = saturn_y_0 + 0.01245790434d0*cos(0.60367177975d0 + 110.2063212194d0 * t)
        saturn_y_0 = saturn_y_0 + 0.02345609742d0*cos(0.44652132519d0 + 7.1135470008d0 * t)
        saturn_y_0 = saturn_y_0 + 0.06633570703d0*cos(5.46258848288d0 + 220.4126424388d0 * t)
        saturn_y_0 = saturn_y_0 + 0.06916653915d0*cos(2.55279408706d0 + 206.1855484372d0 * t)
        saturn_y_0 = saturn_y_0 + 0.26441781302d0*cos(4.83528061849d0 + 426.598190876d0 * t)
        saturn_y_0 = saturn_y_0 + 0.79387988806d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_y_0 = saturn_y_0 + 9.52986882699d0*cos(5.58600556665d0 + 213.299095438d0 * t)

        saturn_y_1 = saturn_y_1 + 1.102361d-05*cos(2.50535306014d0 + 429.7795846137d0 * t)
        saturn_y_1 = saturn_y_1 + 1.127646d-05*cos(1.31088906213d0 + 860.3099287528d0 * t)
        saturn_y_1 = saturn_y_1 + 1.127952d-05*cos(3.87309692307d0 + 423.4167971383d0 * t)
        saturn_y_1 = saturn_y_1 + 1.14801d-05*cos(3.04374738882d0 + 536.8045120954d0 * t)
        saturn_y_1 = saturn_y_1 + 1.174319d-05*cos(2.72609984335d0 + 846.0828347512d0 * t)
        saturn_y_1 = saturn_y_1 + 1.300934d-05*cos(0.83727681906d0 + 415.5524906121d0 * t)
        saturn_y_1 = saturn_y_1 + 1.314125d-05*cos(4.388916566d0 + 625.6701923124d0 * t)
        saturn_y_1 = saturn_y_1 + 1.331786d-05*cos(0.33834520814d0 + 215.7467759928d0 * t)
        saturn_y_1 = saturn_y_1 + 1.332553d-05*cos(3.49199812296d0 + 234.6397364404d0 * t)
        saturn_y_1 = saturn_y_1 + 1.344891d-05*cos(1.41793593685d0 + 210.8514148832d0 * t)
        saturn_y_1 = saturn_y_1 + 1.389354d-05*cos(0.46207025895d0 + 1066.49547719d0 * t)
        saturn_y_1 = saturn_y_1 + 1.393622d-05*cos(4.62214277175d0 + 3.1813937377d0 * t)
        saturn_y_1 = saturn_y_1 + 1.519732d-05*cos(6.12880664637d0 + 3.9321532631d0 * t)
        saturn_y_1 = saturn_y_1 + 1.546006d-05*cos(3.73156925599d0 + 330.6189636582d0 * t)
        saturn_y_1 = saturn_y_1 + 1.69279d-05*cos(2.39926502529d0 + 422.6660376129d0 * t)
        saturn_y_1 = saturn_y_1 + 1.745258d-05*cos(5.50576015456d0 + 277.0349937414d0 * t)
        saturn_y_1 = saturn_y_1 + 2.369024d-05*cos(2.40497927917d0 + 522.5774180938d0 * t)
        saturn_y_1 = saturn_y_1 + 2.735256d-05*cos(2.53975850409d0 + 149.5631971346d0 * t)
        saturn_y_1 = saturn_y_1 + 4.049905d-05*cos(5.17488767645d0 + 95.9792272178d0 * t)
        saturn_y_1 = saturn_y_1 + 4.178266d-05*cos(3.01038512076d0 + 412.3710968744d0 * t)
        saturn_y_1 = saturn_y_1 + 5.424041d-05*cos(1.0319768441d0 + 11.0457002639d0 * t)
        saturn_y_1 = saturn_y_1 + 5.505978d-05*cos(2.8320739024d0 + 440.8252848776d0 * t)
        saturn_y_1 = saturn_y_1 + 6.585597d-05*cos(4.07326320487d0 + 309.2783226558d0 * t)
        saturn_y_1 = saturn_y_1 + 8.726051d-05*cos(4.46341342877d0 + 224.3447957019d0 * t)
        saturn_y_1 = saturn_y_1 + 9.905491d-05*cos(3.60258599375d0 + 202.2533951741d0 * t)
        saturn_y_1 = saturn_y_1 + 0.0001108404d0*cos(4.74073871754d0 + 117.3198682202d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00014481431d0*cos(2.1029829865d0 + 647.0108333148d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00015944258d0*cos(4.74503265169d0 + 210.1177017003d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00016149947d0*cos(4.04186432517d0 + 323.5054166574d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00016320701d0*cos(3.2978403097d0 + 216.4804891757d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00016717122d0*cos(3.00270792752d0 + 632.7837393132d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00017791543d0*cos(4.53214140649d0 + 217.2312487011d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00018079959d0*cos(3.51566153251d0 + 209.3669421749d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00018945004d0*cos(1.20412493845d0 + 853.196381752d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00022234714d0*cos(4.62212779231d0 + 103.0927742186d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00030628998d0*cos(4.88861760772d0 + 14.2270940016d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00033002406d0*cos(4.35527405801d0 + 199.0720014364d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00067003292d0*cos(3.63101075514d0 + 227.5261894396d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00067210919d0*cos(2.17042636344d0 + 316.3918696566d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00116791227d0*cos(5.8914667576d0 + 110.2063212194d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00164133553d0*cos(5.29239290066d0 + 213.299095438d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00189433319d0*cos(2.91501840819d0 + 433.7117378768d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00256799701d0*cos(1.95351819758d0 + 639.897286314d0 * t)
        saturn_y_1 = saturn_y_1 + 0.0031227193d0*cos(3.25850205023d0 + 419.4846438752d0 * t)
        saturn_y_1 = saturn_y_1 + 0.00631520527d0*cos(5.0324550528d0 + 7.1135470008d0 * t)
        saturn_y_1 = saturn_y_1 + 0.02647489677d0*cos(3.76132298889d0 + 220.4126424388d0 * t)
        saturn_y_1 = saturn_y_1 + 0.02741594312d0*cos(4.26667636015d0 + 206.1855484372d0 * t)
        saturn_y_1 = saturn_y_1 + 0.03090575152d0*cos(2.70346890906d0 + 426.598190876d0 * t)
        saturn_y_1 = saturn_y_1 + 0.05373889135d0*cos(0.0d0 + 0.0d0 * t)
        saturn_y_1=saturn_y_1*t;

        saturn_y_2 = saturn_y_2 + 1.177305d-05*cos(5.84484412189d0 + 309.2783226558d0 * t)
        saturn_y_2 = saturn_y_2 + 1.351629d-05*cos(4.81673889364d0 + 412.3710968744d0 * t)
        saturn_y_2 = saturn_y_2 + 1.828412d-05*cos(2.4336865059d0 + 323.5054166574d0 * t)
        saturn_y_2 = saturn_y_2 + 2.159089d-05*cos(4.99912567024d0 + 632.7837393132d0 * t)
        saturn_y_2 = saturn_y_2 + 2.507738d-05*cos(3.1188274629d0 + 117.3198682202d0 * t)
        saturn_y_2 = saturn_y_2 + 2.541191d-05*cos(1.07964653574d0 + 440.8252848776d0 * t)
        saturn_y_2 = saturn_y_2 + 2.568018d-05*cos(0.16811216098d0 + 217.2312487011d0 * t)
        saturn_y_2 = saturn_y_2 + 2.661172d-05*cos(1.58795412736d0 + 209.3669421749d0 * t)
        saturn_y_2 = saturn_y_2 + 2.74347d-05*cos(6.21939083886d0 + 103.0927742186d0 * t)
        saturn_y_2 = saturn_y_2 + 3.509537d-05*cos(5.49281440568d0 + 853.196381752d0 * t)
        saturn_y_2 = saturn_y_2 + 4.167268d-05*cos(3.73203671391d0 + 316.3918696566d0 * t)
        saturn_y_2 = saturn_y_2 + 4.658591d-05*cos(0.26557833758d0 + 647.0108333148d0 * t)
        saturn_y_2 = saturn_y_2 + 4.789554d-05*cos(0.24337901916d0 + 210.1177017003d0 * t)
        saturn_y_2 = saturn_y_2 + 4.934094d-05*cos(1.51301179516d0 + 216.4804891757d0 * t)
        saturn_y_2 = saturn_y_2 + 6.673556d-05*cos(4.24747633887d0 + 110.2063212194d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00010425984d0*cos(3.18246869028d0 + 14.2270940016d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00013251505d0*cos(6.07693099404d0 + 199.0720014364d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00027199743d0*cos(1.9263841764d0 + 227.5261894396d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00032896745d0*cos(0.02089057938d0 + 639.897286314d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00045516403d0*cos(5.07669466539d0 + 419.4846438752d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00050101314d0*cos(1.12976163835d0 + 433.7117378768d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00088390611d0*cos(3.30289449917d0 + 7.1135470008d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00225521642d0*cos(0.91699821445d0 + 426.598190876d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00362294249d0*cos(0.89540100509d0 + 213.299095438d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00458518613d0*cos(0.0d0 + 0.0d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00547012116d0*cos(2.05154973426d0 + 220.4126424388d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00563706537d0*cos(5.97115878242d0 + 206.1855484372d0 * t)
        saturn_y_2=saturn_y_2*t*t;

        saturn_y_3 = saturn_y_3 + 1.024263d-05*cos(4.72337917196d0 + 647.0108333148d0 * t)
        saturn_y_3 = saturn_y_3 + 2.376221d-05*cos(1.4623277918d0 + 14.2270940016d0 * t)
        saturn_y_3 = saturn_y_3 + 2.981969d-05*cos(4.42868951627d0 + 639.897286314d0 * t)
        saturn_y_3 = saturn_y_3 + 3.581682d-05*cos(1.5146678603d0 + 199.0720014364d0 * t)
        saturn_y_3 = saturn_y_3 + 4.507061d-05*cos(0.6724896948d0 + 419.4846438752d0 * t)
        saturn_y_3 = saturn_y_3 + 7.418018d-05*cos(0.21442310101d0 + 227.5261894396d0 * t)
        saturn_y_3 = saturn_y_3 + 8.298723d-05*cos(1.52262563519d0 + 7.1135470008d0 * t)
        saturn_y_3 = saturn_y_3 + 9.010175d-05*cos(5.62865146645d0 + 433.7117378768d0 * t)
        saturn_y_3 = saturn_y_3 + 0.00010672263d0*cos(5.3649566382d0 + 426.598190876d0 * t)
        saturn_y_3 = saturn_y_3 + 0.00022843837d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_y_3 = saturn_y_3 + 0.00075564351d0*cos(0.31962896379d0 + 220.4126424388d0 * t)
        saturn_y_3 = saturn_y_3 + 0.00077376615d0*cos(1.40391048961d0 + 206.1855484372d0 * t)
        saturn_y_3=saturn_y_3*t*t*t;

        saturn_y_4 = saturn_y_4 + 1.225569d-05*cos(3.84500138574d0 + 433.7117378768d0 * t)
        saturn_y_4 = saturn_y_4 + 1.514835d-05*cos(4.77675733867d0 + 227.5261894396d0 * t)
        saturn_y_4 = saturn_y_4 + 7.868379d-05*cos(4.84940260021d0 + 220.4126424388d0 * t)
        saturn_y_4 = saturn_y_4 + 7.978886d-05*cos(3.13229268011d0 + 206.1855484372d0 * t)
        saturn_y_4=saturn_y_4*t*t*t*t;

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

        saturn_z_0 = saturn_z_0 + 1.015179d-05*cos(1.97897195994d0 + 647.0108333148d0 * t)
        saturn_z_0 = saturn_z_0 + 1.028743d-05*cos(2.11933059243d0 + 415.5524906121d0 * t)
        saturn_z_0 = saturn_z_0 + 1.092809d-05*cos(3.10679381209d0 + 216.4804891757d0 * t)
        saturn_z_0 = saturn_z_0 + 1.098254d-05*cos(0.96097709156d0 + 210.1177017003d0 * t)
        saturn_z_0 = saturn_z_0 + 1.148341d-05*cos(4.41139213915d0 + 117.3198682202d0 * t)
        saturn_z_0 = saturn_z_0 + 1.460265d-05*cos(3.12851339724d0 + 522.5774180938d0 * t)
        saturn_z_0 = saturn_z_0 + 1.701916d-05*cos(1.89892525654d0 + 735.8765135318d0 * t)
        saturn_z_0 = saturn_z_0 + 1.941205d-05*cos(4.59421314662d0 + 14.2270940016d0 * t)
        saturn_z_0 = saturn_z_0 + 1.990145d-05*cos(0.73166053611d0 + 199.0720014364d0 * t)
        saturn_z_0 = saturn_z_0 + 2.343367d-05*cos(1.3455827834d0 + 853.196381752d0 * t)
        saturn_z_0 = saturn_z_0 + 2.423663d-05*cos(2.9290709476d0 + 63.7358983034d0 * t)
        saturn_z_0 = saturn_z_0 + 2.683064d-05*cos(4.87689555581d0 + 224.3447957019d0 * t)
        saturn_z_0 = saturn_z_0 + 2.963493d-05*cos(0.46490184985d0 + 217.2312487011d0 * t)
        saturn_z_0 = saturn_z_0 + 3.089874d-05*cos(3.62572857085d0 + 209.3669421749d0 * t)
        saturn_z_0 = saturn_z_0 + 3.379953d-05*cos(2.13868919206d0 + 11.0457002639d0 * t)
        saturn_z_0 = saturn_z_0 + 3.6141d-05*cos(3.35210451276d0 + 227.5261894396d0 * t)
        saturn_z_0 = saturn_z_0 + 3.709212d-05*cos(5.05549348785d0 + 632.7837393132d0 * t)
        saturn_z_0 = saturn_z_0 + 3.902467d-05*cos(3.71499738796d0 + 323.5054166574d0 * t)
        saturn_z_0 = saturn_z_0 + 5.398708d-05*cos(5.13204892363d0 + 202.2533951741d0 * t)
        saturn_z_0 = saturn_z_0 + 9.00127d-05*cos(1.38140102737d0 + 103.0927742186d0 * t)
        saturn_z_0 = saturn_z_0 + 0.00011433574d0*cos(3.71662021072d0 + 529.6909650946d0 * t)
        saturn_z_0 = saturn_z_0 + 0.00016185391d0*cos(2.72987173675d0 + 433.7117378768d0 * t)
        saturn_z_0 = saturn_z_0 + 0.00034565673d0*cos(5.4261422959d0 + 316.3918696566d0 * t)
        saturn_z_0 = saturn_z_0 + 0.00043458803d0*cos(5.84904978051d0 + 419.4846438752d0 * t)
        saturn_z_0 = saturn_z_0 + 0.00047738127d0*cos(2.10039779728d0 + 639.897286314d0 * t)
        saturn_z_0 = saturn_z_0 + 0.0005736182d0*cos(4.92611225093d0 + 110.2063212194d0 * t)
        saturn_z_0 = saturn_z_0 + 0.00099076584d0*cos(4.73369511264d0 + 7.1135470008d0 * t)
        saturn_z_0 = saturn_z_0 + 0.00286934048d0*cos(3.48073526693d0 + 220.4126424388d0 * t)
        saturn_z_0 = saturn_z_0 + 0.00329280791d0*cos(0.57121407104d0 + 206.1855484372d0 * t)
        saturn_z_0 = saturn_z_0 + 0.01148283576d0*cos(2.85128367469d0 + 426.598190876d0 * t)
        saturn_z_0 = saturn_z_0 + 0.01214249867d0*cos(0.0d0 + 0.0d0 * t)
        saturn_z_0 = saturn_z_0 + 0.4135695094d0*cos(3.60234142982d0 + 213.299095438d0 * t)

        saturn_z_1 = saturn_z_1 + 1.209302d-05*cos(2.91140089093d0 + 14.2270940016d0 * t)
        saturn_z_1 = saturn_z_1 + 1.541995d-05*cos(2.42323572812d0 + 199.0720014364d0 * t)
        saturn_z_1 = saturn_z_1 + 1.73454d-05*cos(3.51628075636d0 + 103.0927742186d0 * t)
        saturn_z_1 = saturn_z_1 + 2.72412d-05*cos(1.65580138665d0 + 227.5261894396d0 * t)
        saturn_z_1 = saturn_z_1 + 3.816564d-05*cos(4.38284565245d0 + 110.2063212194d0 * t)
        saturn_z_1 = saturn_z_1 + 4.966668d-05*cos(0.19044864213d0 + 316.3918696566d0 * t)
        saturn_z_1 = saturn_z_1 + 7.470703d-05*cos(0.93135621171d0 + 433.7117378768d0 * t)
        saturn_z_1 = saturn_z_1 + 9.117402d-05*cos(6.17205626814d0 + 639.897286314d0 * t)
        saturn_z_1 = saturn_z_1 + 0.00016179946d0*cos(1.19987517506d0 + 419.4846438752d0 * t)
        saturn_z_1 = saturn_z_1 + 0.00022257446d0*cos(3.07684015656d0 + 7.1135470008d0 * t)
        saturn_z_1 = saturn_z_1 + 0.00085947578d0*cos(0.51612788497d0 + 426.598190876d0 * t)
        saturn_z_1 = saturn_z_1 + 0.00101466332d0*cos(1.79095829545d0 + 220.4126424388d0 * t)
        saturn_z_1 = saturn_z_1 + 0.00130262284d0*cos(2.26140980879d0 + 206.1855484372d0 * t)
        saturn_z_1 = saturn_z_1 + 0.00528301265d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_z_1 = saturn_z_1 + 0.01906503283d0*cos(4.94544746116d0 + 213.299095438d0 * t)
        saturn_z_1=saturn_z_1*t;

        saturn_z_2 = saturn_z_2 + 1.036435d-05*cos(4.33916308552d0 + 639.897286314d0 * t)
        saturn_z_2 = saturn_z_2 + 1.055383d-05*cos(6.23890785179d0 + 227.5261894396d0 * t)
        saturn_z_2 = saturn_z_2 + 1.844798d-05*cos(5.43612062856d0 + 433.7117378768d0 * t)
        saturn_z_2 = saturn_z_2 + 2.646332d-05*cos(2.94607395955d0 + 419.4846438752d0 * t)
        saturn_z_2 = saturn_z_2 + 2.826107d-05*cos(1.36583318555d0 + 7.1135470008d0 * t)
        saturn_z_2 = saturn_z_2 + 3.138233d-05*cos(0.0d0 + 0.0d0 * t)
        saturn_z_2 = saturn_z_2 + 6.868926d-05*cos(5.48420255395d0 + 426.598190876d0 * t)
        saturn_z_2 = saturn_z_2 + 0.00019322173d0*cos(0.09228748624d0 + 220.4126424388d0 * t)
        saturn_z_2 = saturn_z_2 + 0.00030147649d0*cos(3.91396203887d0 + 206.1855484372d0 * t)
        saturn_z_2 = saturn_z_2 + 0.00131275155d0*cos(0.08868998101d0 + 213.299095438d0 * t)
        saturn_z_2=saturn_z_2*t*t;

        saturn_z_3 = saturn_z_3 + 2.508242d-05*cos(4.64959056313d0 + 220.4126424388d0 * t)
        saturn_z_3 = saturn_z_3 + 3.965402d-05*cos(0.0d0 + 0.0d0 * t)
        saturn_z_3 = saturn_z_3 + 4.559419d-05*cos(1.70646871501d0 + 213.299095438d0 * t)
        saturn_z_3 = saturn_z_3 + 4.779074d-05*cos(5.5772375633d0 + 206.1855484372d0 * t)
        saturn_z_3=saturn_z_3*t*t*t;

        r = saturn_z_3+saturn_z_2+saturn_z_1+saturn_z_0
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

        uranus_x_0 = uranus_x_0 + 1.009252d-05*cos(2.02320517037d0 + 74.0308390419d0 * t)
        uranus_x_0 = uranus_x_0 + 1.040948d-05*cos(2.74644165501d0 + 5.4166259714d0 * t)
        uranus_x_0 = uranus_x_0 + 1.056848d-05*cos(5.53440854164d0 + 14.0146456805d0 * t)
        uranus_x_0 = uranus_x_0 + 1.07781d-05*cos(1.0568590092d0 + 128.9562693151d0 * t)
        uranus_x_0 = uranus_x_0 + 1.077916d-05*cos(5.01417740021d0 + 181.7583419392d0 * t)
        uranus_x_0 = uranus_x_0 + 1.093678d-05*cos(3.94451812233d0 + 230.5645708254d0 * t)
        uranus_x_0 = uranus_x_0 + 1.144565d-05*cos(2.42148845239d0 + 296.1574488526d0 * t)
        uranus_x_0 = uranus_x_0 + 1.164218d-05*cos(2.08302637541d0 + 81.8951455681d0 * t)
        uranus_x_0 = uranus_x_0 + 1.166898d-05*cos(2.02955848543d0 + 110.2063212194d0 * t)
        uranus_x_0 = uranus_x_0 + 1.192274d-05*cos(5.58661990233d0 + 50.4025761791d0 * t)
        uranus_x_0 = uranus_x_0 + 1.212025d-05*cos(3.4157783266d0 + 211.8146227297d0 * t)
        uranus_x_0 = uranus_x_0 + 1.221506d-05*cos(5.20012455894d0 + 54.1746707478d0 * t)
        uranus_x_0 = uranus_x_0 + 1.223648d-05*cos(3.8437351464d0 + 187.6962327724d0 * t)
        uranus_x_0 = uranus_x_0 + 1.241589d-05*cos(1.81282962357d0 + 134.5853436076d0 * t)
        uranus_x_0 = uranus_x_0 + 1.256867d-05*cos(5.61684736425d0 + 67.6680515665d0 * t)
        uranus_x_0 = uranus_x_0 + 1.263032d-05*cos(5.63689596853d0 + 404.5067903482d0 * t)
        uranus_x_0 = uranus_x_0 + 1.269686d-05*cos(2.66330104031d0 + 142.4496501338d0 * t)
        uranus_x_0 = uranus_x_0 + 1.334371d-05*cos(2.17621743689d0 + 380.12776796d0 * t)
        uranus_x_0 = uranus_x_0 + 1.347303d-05*cos(5.46763140224d0 + 288.0806940053d0 * t)
        uranus_x_0 = uranus_x_0 + 1.408997d-05*cos(3.61751904356d0 + 536.8045120954d0 * t)
        uranus_x_0 = uranus_x_0 + 1.4183d-05*cos(2.29718712012d0 + 235.3904959658d0 * t)
        uranus_x_0 = uranus_x_0 + 1.42718d-05*cos(0.38786175669d0 + 92.940845832d0 * t)
        uranus_x_0 = uranus_x_0 + 1.438869d-05*cos(0.72633739717d0 + 522.5774180938d0 * t)
        uranus_x_0 = uranus_x_0 + 1.467268d-05*cos(2.10975578758d0 + 2.4476805548d0 * t)
        uranus_x_0 = uranus_x_0 + 1.52918d-05*cos(2.0520410482d0 + 191.2076949102d0 * t)
        uranus_x_0 = uranus_x_0 + 1.558489d-05*cos(6.16891070489d0 + 59.8037450403d0 * t)
        uranus_x_0 = uranus_x_0 + 1.574905d-05*cos(5.72297800263d0 + 39.3568759152d0 * t)
        uranus_x_0 = uranus_x_0 + 1.672893d-05*cos(0.01232646186d0 + 143.6253063014d0 * t)
        uranus_x_0 = uranus_x_0 + 1.677659d-05*cos(0.42525121334d0 + 8.0767548473d0 * t)
        uranus_x_0 = uranus_x_0 + 1.744555d-05*cos(0.82022450313d0 + 56.6223513026d0 * t)
        uranus_x_0 = uranus_x_0 + 1.768763d-05*cos(1.1925448162d0 + 219.891377577d0 * t)
        uranus_x_0 = uranus_x_0 + 1.792522d-05*cos(2.08789166984d0 + 74.9416572617d0 * t)
        uranus_x_0 = uranus_x_0 + 1.796558d-05*cos(5.73271543335d0 + 74.6215398729d0 * t)
        uranus_x_0 = uranus_x_0 + 1.797047d-05*cos(1.73417465594d0 + 227.3137411185d0 * t)
        uranus_x_0 = uranus_x_0 + 1.860591d-05*cos(1.67536711716d0 + 42.5864537627d0 * t)
        uranus_x_0 = uranus_x_0 + 1.873542d-05*cos(4.23391867169d0 + 206.1855484372d0 * t)
        uranus_x_0 = uranus_x_0 + 1.891213d-05*cos(5.49941424248d0 + 300.6108669775d0 * t)
        uranus_x_0 = uranus_x_0 + 1.892359d-05*cos(4.32128621847d0 + 154.0166152595d0 * t)
        uranus_x_0 = uranus_x_0 + 1.912582d-05*cos(5.83091918696d0 + 14.977853527d0 * t)
        uranus_x_0 = uranus_x_0 + 1.927679d-05*cos(1.29228021932d0 + 159.1244246902d0 * t)
        uranus_x_0 = uranus_x_0 + 1.933814d-05*cos(5.75490033864d0 + 74.7334144575d0 * t)
        uranus_x_0 = uranus_x_0 + 1.933817d-05*cos(2.06557585395d0 + 74.8297826771d0 * t)
        uranus_x_0 = uranus_x_0 + 1.965145d-05*cos(0.09207526632d0 + 20.6069278195d0 * t)
        uranus_x_0 = uranus_x_0 + 2.064173d-05*cos(3.6020860641d0 + 835.0371344873d0 * t)
        uranus_x_0 = uranus_x_0 + 2.075591d-05*cos(3.15586933464d0 + 131.4039498699d0 * t)
        uranus_x_0 = uranus_x_0 + 2.126427d-05*cos(3.61171465436d0 + 75.0422309982d0 * t)
        uranus_x_0 = uranus_x_0 + 2.138391d-05*cos(4.20897429922d0 + 74.5209661364d0 * t)
        uranus_x_0 = uranus_x_0 + 2.182901d-05*cos(1.23755478345d0 + 479.2883889155d0 * t)
        uranus_x_0 = uranus_x_0 + 2.215516d-05*cos(2.18613112875d0 + 259.5088859231d0 * t)
        uranus_x_0 = uranus_x_0 + 2.232022d-05*cos(0.63571664756d0 + 80.7194894005d0 * t)
        uranus_x_0 = uranus_x_0 + 2.241129d-05*cos(5.22377697501d0 + 3.1813937377d0 * t)
        uranus_x_0 = uranus_x_0 + 2.528025d-05*cos(0.89508396542d0 + 68.8437077341d0 * t)
        uranus_x_0 = uranus_x_0 + 2.541716d-05*cos(0.64495056482d0 + 32.1951448046d0 * t)
        uranus_x_0 = uranus_x_0 + 2.560744d-05*cos(4.4423622345d0 + 80.1982245387d0 * t)
        uranus_x_0 = uranus_x_0 + 2.579454d-05*cos(3.84784330333d0 + 277.0349937414d0 * t)
        uranus_x_0 = uranus_x_0 + 2.597765d-05*cos(0.22409539936d0 + 96.8729990951d0 * t)
        uranus_x_0 = uranus_x_0 + 2.631138d-05*cos(0.04831552531d0 + 305.3461693927d0 * t)
        uranus_x_0 = uranus_x_0 + 2.722745d-05*cos(6.09456175016d0 + 106.9767433719d0 * t)
        uranus_x_0 = uranus_x_0 + 2.882392d-05*cos(2.76136583899d0 + 373.9079928365d0 * t)
        uranus_x_0 = uranus_x_0 + 3.004737d-05*cos(5.12122132051d0 + 7.1135470008d0 * t)
        uranus_x_0 = uranus_x_0 + 3.268117d-05*cos(0.51827231333d0 + 220.4126424388d0 * t)
        uranus_x_0 = uranus_x_0 + 3.31234d-05*cos(0.52418923788d0 + 82.8583534146d0 * t)
        uranus_x_0 = uranus_x_0 + 3.559276d-05*cos(1.47627607503d0 + 5.9378908332d0 * t)
        uranus_x_0 = uranus_x_0 + 3.578235d-05*cos(1.11528903208d0 + 137.0330241624d0 * t)
        uranus_x_0 = uranus_x_0 + 4.233075d-05*cos(3.94913608184d0 + 265.9892934775d0 * t)
        uranus_x_0 = uranus_x_0 + 4.448651d-05*cos(0.29436142982d0 + 114.3991069134d0 * t)
        uranus_x_0 = uranus_x_0 + 4.478123d-05*cos(1.11838191479d0 + 66.70484372d0 * t)
        uranus_x_0 = uranus_x_0 + 4.515952d-05*cos(2.8857630312d0 + 75.7448064138d0 * t)
        uranus_x_0 = uranus_x_0 + 4.57047d-05*cos(0.97536665751d0 + 183.2428146475d0 * t)
        uranus_x_0 = uranus_x_0 + 4.751325d-05*cos(4.95762395337d0 + 73.8183907208d0 * t)
        uranus_x_0 = uranus_x_0 + 5.038353d-05*cos(4.68664376918d0 + 18.1592472647d0 * t)
        uranus_x_0 = uranus_x_0 + 5.354242d-05*cos(3.69263973447d0 + 74.2603337055d0 * t)
        uranus_x_0 = uranus_x_0 + 5.372927d-05*cos(4.12498282863d0 + 75.3028634291d0 * t)
        uranus_x_0 = uranus_x_0 + 5.505358d-05*cos(3.31282108025d0 + 140.001969579d0 * t)
        uranus_x_0 = uranus_x_0 + 6.262602d-05*cos(1.71385983783d0 + 153.4953503977d0 * t)
        uranus_x_0 = uranus_x_0 + 6.669249d-05*cos(5.08626589612d0 + 62.2514255951d0 * t)
        uranus_x_0 = uranus_x_0 + 7.095608d-05*cos(1.30384750044d0 + 297.6419215609d0 * t)
        uranus_x_0 = uranus_x_0 + 7.487302d-05*cos(0.11408470667d0 + 426.598190876d0 * t)
        uranus_x_0 = uranus_x_0 + 7.798974d-05*cos(5.82410372587d0 + 340.7708920448d0 * t)
        uranus_x_0 = uranus_x_0 + 8.738409d-05*cos(4.96956808452d0 + 186.2117600641d0 * t)
        uranus_x_0 = uranus_x_0 + 0.0001079835d0*cos(1.70031857078d0 + 77.962992305d0 * t)
        uranus_x_0 = uranus_x_0 + 0.000112458d0*cos(6.11597016146d0 + 71.6002048296d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00011538642d0*cos(1.77241794539d0 + 77.2292791221d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00011997848d0*cos(0.94875212305d0 + 1059.3819301892d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00012253318d0*cos(0.19452856525d0 + 36.6485629295d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00012394786d0*cos(6.2189287885d0 + 72.3339180125d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00012884351d0*cos(5.0873799947d0 + 145.1097790097d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00013593955d0*cos(2.55407820633d0 + 87.3117715395d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00013948521d0*cos(6.2754569416d0 + 221.3758502853d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00015171194d0*cos(2.88415453399d0 + 41.1019810544d0 * t)
        uranus_x_0 = uranus_x_0 + 0.0001658787d0*cos(4.86920309163d0 + 108.4612160802d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00018565067d0*cos(0.62225019017d0 + 52.6901980395d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00018575632d0*cos(5.7021747579d0 + 33.6796175129d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00019653873d0*cos(2.28660913421d0 + 74.8934731519d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00019676762d0*cos(5.53431398332d0 + 74.6697239827d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00019926329d0*cos(1.39878194708d0 + 112.9146342051d0 * t)
        uranus_x_0 = uranus_x_0 + 0.0001995428d0*cos(0.57450958037d0 + 12.5301729722d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00020084756d0*cos(4.47297488471d0 + 22.0914005278d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00022963939d0*cos(5.51475073655d0 + 84.3428261229d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00023467802d0*cos(4.09729860322d0 + 145.6310438715d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00025208833d0*cos(5.30272144657d0 + 9.5612275556d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00026657176d0*cos(6.11027939727d0 + 160.6088973985d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00028371614d0*cos(2.58026657123d0 + 127.4717966068d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00028384953d0*cos(6.01785430306d0 + 184.7272873558d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00031823951d0*cos(5.53948583244d0 + 152.5321425512d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00033134636d0*cos(2.54201591218d0 + 65.2203710117d0 * t)
        uranus_x_0 = uranus_x_0 + 0.0003386705d0*cos(5.98418436103d0 + 70.3281804424d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00034341683d0*cos(3.03781661928d0 + 225.8292684102d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00034555652d0*cos(1.84699329257d0 + 79.2350166922d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00035943348d0*cos(4.08754543016d0 + 202.2533951741d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00039181662d0*cos(2.68841280769d0 + 4.4534181249d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00053904041d0*cos(3.92590422507d0 + 3.9321532631d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00063584588d0*cos(0.29966233158d0 + 299.1263942692d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00065066905d0*cos(3.73008452906d0 + 109.9456887885d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00104619827d0*cos(3.90538916334d0 + 146.594251718d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00110125387d0*cos(4.45473528724d0 + 35.1640902212d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00111260244d0*cos(5.12252784325d0 + 222.8603229936d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00119593859d0*cos(4.10138544267d0 + 39.6175083461d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00125105686d0*cos(2.51455273063d0 + 111.4301614968d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00135340032d0*cos(5.51062460816d0 + 78.7137518304d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00145505389d0*cos(2.31759757085d0 + 70.8494453042d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00215368005d0*cos(5.30877641428d0 + 38.1330356378d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00267938156d0*cos(0.96885660137d0 + 213.299095438d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00383625535d0*cos(6.18762010576d0 + 138.5174968707d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00458219984d0*cos(3.90788284112d0 + 2.9689454166d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00496087649d0*cos(0.59947400861d0 + 529.6909650946d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00547699056d0*cos(3.63127725056d0 + 85.8272988312d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00585182542d0*cos(4.79934779678d0 + 71.8126531507d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00621624676d0*cos(3.05882246638d0 + 77.7505439839d0 * t)
        uranus_x_0 = uranus_x_0 + 0.0063400027d0*cos(4.09556589724d0 + 63.7358983034d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00657524815d0*cos(0.57595170636d0 + 151.0476698429d0 * t)
        uranus_x_0 = uranus_x_0 + 0.00944995563d0*cos(1.65869338757d0 + 11.0457002639d0 * t)
        uranus_x_0 = uranus_x_0 + 0.0144421666d0*cos(2.65117115201d0 + 148.0787244263d0 * t)
        uranus_x_0 = uranus_x_0 + 0.01542951343d0*cos(4.12121838072d0 + 224.3447957019d0 * t)
        uranus_x_0 = uranus_x_0 + 0.06201106178d0*cos(5.14043574125d0 + 1.4844727083d0 * t)
        uranus_x_0 = uranus_x_0 + 0.14130269479d0*cos(4.39572927934d0 + 76.2660712756d0 * t)
        uranus_x_0 = uranus_x_0 + 0.14668209481d0*cos(3.42395862804d0 + 73.297125859d0 * t)
        uranus_x_0 = uranus_x_0 + 0.44402496796d0*cos(1.65967519586d0 + 149.5631971346d0 * t)
        uranus_x_0 = uranus_x_0 + 1.32272523872d0*cos(0.0d0 + 0.0d0 * t)
        uranus_x_0 = uranus_x_0 + 19.17370730359d0*cos(5.48133416489d0 + 74.7815985673d0 * t)

        uranus_x_1 = uranus_x_1 + 1.029261d-05*cos(5.42434597865d0 + 109.9456887885d0 * t)
        uranus_x_1 = uranus_x_1 + 1.061312d-05*cos(5.0012510538d0 + 131.4039498699d0 * t)
        uranus_x_1 = uranus_x_1 + 1.099691d-05*cos(1.35138854505d0 + 62.2514255951d0 * t)
        uranus_x_1 = uranus_x_1 + 1.179645d-05*cos(5.13953276367d0 + 220.4126424388d0 * t)
        uranus_x_1 = uranus_x_1 + 1.239315d-05*cos(0.98221206501d0 + 4.4534181249d0 * t)
        uranus_x_1 = uranus_x_1 + 1.427088d-05*cos(1.45690759014d0 + 70.3281804424d0 * t)
        uranus_x_1 = uranus_x_1 + 1.476317d-05*cos(3.67283851029d0 + 75.7448064138d0 * t)
        uranus_x_1 = uranus_x_1 + 1.476617d-05*cos(3.53047075439d0 + 3.1813937377d0 * t)
        uranus_x_1 = uranus_x_1 + 1.533469d-05*cos(3.71776498048d0 + 152.5321425512d0 * t)
        uranus_x_1 = uranus_x_1 + 1.555444d-05*cos(4.13741667297d0 + 73.8183907208d0 * t)
        uranus_x_1 = uranus_x_1 + 1.600865d-05*cos(0.08376247543d0 + 79.2350166922d0 * t)
        uranus_x_1 = uranus_x_1 + 1.624493d-05*cos(3.75817281127d0 + 153.4953503977d0 * t)
        uranus_x_1 = uranus_x_1 + 1.707504d-05*cos(1.11296012106d0 + 225.8292684102d0 * t)
        uranus_x_1 = uranus_x_1 + 1.716831d-05*cos(3.39415662657d0 + 222.8603229936d0 * t)
        uranus_x_1 = uranus_x_1 + 1.734228d-05*cos(5.39619902298d0 + 146.594251718d0 * t)
        uranus_x_1 = uranus_x_1 + 1.747266d-05*cos(3.24870046809d0 + 77.2292791221d0 * t)
        uranus_x_1 = uranus_x_1 + 1.928881d-05*cos(2.39940180311d0 + 39.6175083461d0 * t)
        uranus_x_1 = uranus_x_1 + 2.216987d-05*cos(4.78338909951d0 + 72.3339180125d0 * t)
        uranus_x_1 = uranus_x_1 + 2.228396d-05*cos(0.18087986338d0 + 87.3117715395d0 * t)
        uranus_x_1 = uranus_x_1 + 2.525203d-05*cos(2.83821144961d0 + 18.1592472647d0 * t)
        uranus_x_1 = uranus_x_1 + 2.545264d-05*cos(3.36768337628d0 + 9.5612275556d0 * t)
        uranus_x_1 = uranus_x_1 + 2.647073d-05*cos(4.53813176345d0 + 12.5301729722d0 * t)
        uranus_x_1 = uranus_x_1 + 2.788434d-05*cos(4.90117297196d0 + 213.299095438d0 * t)
        uranus_x_1 = uranus_x_1 + 2.802392d-05*cos(3.76505436434d0 + 52.6901980395d0 * t)
        uranus_x_1 = uranus_x_1 + 2.824668d-05*cos(3.40143685673d0 + 84.3428261229d0 * t)
        uranus_x_1 = uranus_x_1 + 2.910312d-05*cos(5.9194133305d0 + 127.4717966068d0 * t)
        uranus_x_1 = uranus_x_1 + 3.177614d-05*cos(4.65226634926d0 + 299.1263942692d0 * t)
        uranus_x_1 = uranus_x_1 + 3.933541d-05*cos(4.73864204208d0 + 65.2203710117d0 * t)
        uranus_x_1 = uranus_x_1 + 4.127713d-05*cos(1.48475181305d0 + 22.0914005278d0 * t)
        uranus_x_1 = uranus_x_1 + 4.378335d-05*cos(3.7429632224d0 + 160.6088973985d0 * t)
        uranus_x_1 = uranus_x_1 + 6.995857d-05*cos(2.40633283814d0 + 145.6310438715d0 * t)
        uranus_x_1 = uranus_x_1 + 7.291691d-05*cos(2.23597571444d0 + 2.9689454166d0 * t)
        uranus_x_1 = uranus_x_1 + 7.425078d-05*cos(6.20357977116d0 + 77.962992305d0 * t)
        uranus_x_1 = uranus_x_1 + 7.585264d-05*cos(2.7607421833d0 + 148.0787244263d0 * t)
        uranus_x_1 = uranus_x_1 + 7.735984d-05*cos(1.61349552789d0 + 71.6002048296d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00015211071d0*cos(5.5314163314d0 + 3.9321532631d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00017376241d0*cos(0.2460722123d0 + 71.8126531507d0 * t)
        uranus_x_1 = uranus_x_1 + 0.0001944197d0*cos(1.30617490304d0 + 77.7505439839d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00021685656d0*cos(4.93710968392d0 + 151.0476698429d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00032333094d0*cos(5.06666556704d0 + 74.7815985673d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00036158493d0*cos(1.23634798757d0 + 78.7137518304d0 * t)
        uranus_x_1 = uranus_x_1 + 0.0003884433d0*cos(0.30724575951d0 + 70.8494453042d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00045687564d0*cos(2.29216583843d0 + 138.5174968707d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00051382501d0*cos(2.1893512526d0 + 224.3447957019d0 * t)
        uranus_x_1 = uranus_x_1 + 0.0008151187d0*cos(1.21058618039d0 + 85.8272988312d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00096352822d0*cos(0.35070389084d0 + 63.7358983034d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00111045158d0*cos(5.5715723596d0 + 11.0457002639d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00229676787d0*cos(2.48204455775d0 + 76.2660712756d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00239840801d0*cos(5.33657762707d0 + 73.297125859d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00526878306d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00739730021d0*cos(6.01067825116d0 + 149.5631971346d0 * t)
        uranus_x_1=uranus_x_1*t;

        uranus_x_2 = uranus_x_2 + 1.04025d-05*cos(0.73133408837d0 + 145.6310438715d0 * t)
        uranus_x_2 = uranus_x_2 + 1.0461d-05*cos(5.85311910228d0 + 224.3447957019d0 * t)
        uranus_x_2 = uranus_x_2 + 2.221373d-05*cos(0.87427485235d0 + 3.9321532631d0 * t)
        uranus_x_2 = uranus_x_2 + 2.291767d-05*cos(0.0d0 + 0.0d0 * t)
        uranus_x_2 = uranus_x_2 + 2.413832d-05*cos(4.4586522569d0 + 77.962992305d0 * t)
        uranus_x_2 = uranus_x_2 + 2.521797d-05*cos(3.36028253173d0 + 71.6002048296d0 * t)
        uranus_x_2 = uranus_x_2 + 3.002124d-05*cos(4.07944398452d0 + 138.5174968707d0 * t)
        uranus_x_2 = uranus_x_2 + 4.874936d-05*cos(5.68616132176d0 + 76.2660712756d0 * t)
        uranus_x_2 = uranus_x_2 + 5.021971d-05*cos(3.04632772928d0 + 78.7137518304d0 * t)
        uranus_x_2 = uranus_x_2 + 5.284684d-05*cos(2.11901942097d0 + 73.297125859d0 * t)
        uranus_x_2 = uranus_x_2 + 5.408033d-05*cos(4.78033642303d0 + 70.8494453042d0 * t)
        uranus_x_2 = uranus_x_2 + 6.717313d-05*cos(5.31264214501d0 + 85.8272988312d0 * t)
        uranus_x_2 = uranus_x_2 + 7.497619d-05*cos(3.83429136661d0 + 11.0457002639d0 * t)
        uranus_x_2 = uranus_x_2 + 8.053623d-05*cos(2.54646146122d0 + 63.7358983034d0 * t)
        uranus_x_2 = uranus_x_2 + 0.00010915299d0*cos(3.0298777627d0 + 149.5631971346d0 * t)
        uranus_x_2 = uranus_x_2 + 0.00016015732d0*cos(3.83700026619d0 + 74.7815985673d0 * t)
        uranus_x_2=uranus_x_2*t*t;

        uranus_x_3 = uranus_x_3 + 1.307049d-05*cos(0.0d0 + 0.0d0 * t)
        uranus_x_3=uranus_x_3*t*t*t;

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

        uranus_y_0 = uranus_y_0 + 1.009454d-05*cos(0.45375065997d0 + 74.0308390419d0 * t)
        uranus_y_0 = uranus_y_0 + 1.015998d-05*cos(1.00290501307d0 + 35.4247226521d0 * t)
        uranus_y_0 = uranus_y_0 + 1.035262d-05*cos(1.20639876458d0 + 5.4166259714d0 * t)
        uranus_y_0 = uranus_y_0 + 1.051606d-05*cos(3.96907647535d0 + 14.0146456805d0 * t)
        uranus_y_0 = uranus_y_0 + 1.149114d-05*cos(0.85101218281d0 + 296.1574488526d0 * t)
        uranus_y_0 = uranus_y_0 + 1.151286d-05*cos(4.01147735438d0 + 67.6680515665d0 * t)
        uranus_y_0 = uranus_y_0 + 1.151803d-05*cos(0.46579056125d0 + 128.9562693151d0 * t)
        uranus_y_0 = uranus_y_0 + 1.163762d-05*cos(5.51157783762d0 + 230.5645708254d0 * t)
        uranus_y_0 = uranus_y_0 + 1.165315d-05*cos(0.51071041452d0 + 81.8951455681d0 * t)
        uranus_y_0 = uranus_y_0 + 1.174953d-05*cos(0.45683512473d0 + 110.2063212194d0 * t)
        uranus_y_0 = uranus_y_0 + 1.189801d-05*cos(4.01778306134d0 + 50.4025761791d0 * t)
        uranus_y_0 = uranus_y_0 + 1.192292d-05*cos(0.68084398426d0 + 99.1606209555d0 * t)
        uranus_y_0 = uranus_y_0 + 1.220696d-05*cos(1.84988185963d0 + 211.8146227297d0 * t)
        uranus_y_0 = uranus_y_0 + 1.222886d-05*cos(2.27306099902d0 + 187.6962327724d0 * t)
        uranus_y_0 = uranus_y_0 + 1.267766d-05*cos(0.92771324396d0 + 404.5067903482d0 * t)
        uranus_y_0 = uranus_y_0 + 1.269786d-05*cos(1.09685727529d0 + 142.4496501338d0 * t)
        uranus_y_0 = uranus_y_0 + 1.291065d-05*cos(5.67425699047d0 + 68.8437077341d0 * t)
        uranus_y_0 = uranus_y_0 + 1.336792d-05*cos(3.74888989756d0 + 380.12776796d0 * t)
        uranus_y_0 = uranus_y_0 + 1.34741d-05*cos(3.89237011696d0 + 288.0806940053d0 * t)
        uranus_y_0 = uranus_y_0 + 1.405564d-05*cos(2.04677392527d0 + 536.8045120954d0 * t)
        uranus_y_0 = uranus_y_0 + 1.416917d-05*cos(0.72597245494d0 + 235.3904959658d0 * t)
        uranus_y_0 = uranus_y_0 + 1.424804d-05*cos(5.10004758033d0 + 92.940845832d0 * t)
        uranus_y_0 = uranus_y_0 + 1.43685d-05*cos(5.4431219835d0 + 522.5774180938d0 * t)
        uranus_y_0 = uranus_y_0 + 1.572826d-05*cos(5.93367812903d0 + 219.891377577d0 * t)
        uranus_y_0 = uranus_y_0 + 1.588897d-05*cos(4.15115668974d0 + 39.3568759152d0 * t)
        uranus_y_0 = uranus_y_0 + 1.626134d-05*cos(3.70023731184d0 + 191.2076949102d0 * t)
        uranus_y_0 = uranus_y_0 + 1.787737d-05*cos(0.32096699926d0 + 2.4476805548d0 * t)
        uranus_y_0 = uranus_y_0 + 1.794754d-05*cos(0.16290844853d0 + 227.3137411185d0 * t)
        uranus_y_0 = uranus_y_0 + 1.796292d-05*cos(0.51761494342d0 + 74.9416572617d0 * t)
        uranus_y_0 = uranus_y_0 + 1.802494d-05*cos(4.16218259902d0 + 74.6215398729d0 * t)
        uranus_y_0 = uranus_y_0 + 1.860824d-05*cos(0.10445996392d0 + 42.5864537627d0 * t)
        uranus_y_0 = uranus_y_0 + 1.887812d-05*cos(2.75000237791d0 + 154.0166152595d0 * t)
        uranus_y_0 = uranus_y_0 + 1.889369d-05*cos(3.92852240171d0 + 300.6108669775d0 * t)
        uranus_y_0 = uranus_y_0 + 1.896184d-05*cos(4.26975898003d0 + 14.977853527d0 * t)
        uranus_y_0 = uranus_y_0 + 1.924499d-05*cos(2.64284880495d0 + 206.1855484372d0 * t)
        uranus_y_0 = uranus_y_0 + 1.925946d-05*cos(6.00527473515d0 + 159.1244246902d0 * t)
        uranus_y_0 = uranus_y_0 + 1.937871d-05*cos(4.18462288684d0 + 74.7334144575d0 * t)
        uranus_y_0 = uranus_y_0 + 1.937874d-05*cos(0.49529839431d0 + 74.8297826771d0 * t)
        uranus_y_0 = uranus_y_0 + 1.958711d-05*cos(4.80807045815d0 + 20.6069278195d0 * t)
        uranus_y_0 = uranus_y_0 + 2.045249d-05*cos(5.17400788104d0 + 835.0371344873d0 * t)
        uranus_y_0 = uranus_y_0 + 2.060991d-05*cos(6.24178596384d0 + 56.6223513026d0 * t)
        uranus_y_0 = uranus_y_0 + 2.130909d-05*cos(2.04143912495d0 + 75.0422309982d0 * t)
        uranus_y_0 = uranus_y_0 + 2.138407d-05*cos(2.63817804331d0 + 74.5209661364d0 * t)
        uranus_y_0 = uranus_y_0 + 2.164382d-05*cos(0.47581392325d0 + 3.1813937377d0 * t)
        uranus_y_0 = uranus_y_0 + 2.177437d-05*cos(2.80437422101d0 + 479.2883889155d0 * t)
        uranus_y_0 = uranus_y_0 + 2.212861d-05*cos(0.61491281306d0 + 259.5088859231d0 * t)
        uranus_y_0 = uranus_y_0 + 2.227451d-05*cos(5.34765264557d0 + 80.7194894005d0 * t)
        uranus_y_0 = uranus_y_0 + 2.240648d-05*cos(0.47739127862d0 + 181.7583419392d0 * t)
        uranus_y_0 = uranus_y_0 + 2.24653d-05*cos(5.80081898763d0 + 108.4612160802d0 * t)
        uranus_y_0 = uranus_y_0 + 2.275258d-05*cos(1.55666401505d0 + 131.4039498699d0 * t)
        uranus_y_0 = uranus_y_0 + 2.474483d-05*cos(2.21173751117d0 + 32.1951448046d0 * t)
        uranus_y_0 = uranus_y_0 + 2.559357d-05*cos(2.87184237678d0 + 80.1982245387d0 * t)
        uranus_y_0 = uranus_y_0 + 2.594155d-05*cos(4.93691413537d0 + 96.8729990951d0 * t)
        uranus_y_0 = uranus_y_0 + 2.676616d-05*cos(1.61805362044d0 + 305.3461693927d0 * t)
        uranus_y_0 = uranus_y_0 + 2.880734d-05*cos(1.1903842433d0 + 373.9079928365d0 * t)
        uranus_y_0 = uranus_y_0 + 2.885443d-05*cos(3.50279993038d0 + 7.1135470008d0 * t)
        uranus_y_0 = uranus_y_0 + 3.265634d-05*cos(5.23063560176d0 + 220.4126424388d0 * t)
        uranus_y_0 = uranus_y_0 + 3.314154d-05*cos(5.23054574329d0 + 82.8583534146d0 * t)
        uranus_y_0 = uranus_y_0 + 3.553107d-05*cos(6.18906516846d0 + 5.9378908332d0 * t)
        uranus_y_0 = uranus_y_0 + 3.575435d-05*cos(5.83994849224d0 + 137.0330241624d0 * t)
        uranus_y_0 = uranus_y_0 + 4.290374d-05*cos(5.54490766551d0 + 265.9892934775d0 * t)
        uranus_y_0 = uranus_y_0 + 4.326138d-05*cos(5.70135056853d0 + 183.2428146475d0 * t)
        uranus_y_0 = uranus_y_0 + 4.445347d-05*cos(5.00638490308d0 + 114.3991069134d0 * t)
        uranus_y_0 = uranus_y_0 + 4.508794d-05*cos(5.82224064821d0 + 66.70484372d0 * t)
        uranus_y_0 = uranus_y_0 + 4.509054d-05*cos(1.31254342829d0 + 75.7448064138d0 * t)
        uranus_y_0 = uranus_y_0 + 4.750018d-05*cos(3.38678300054d0 + 73.8183907208d0 * t)
        uranus_y_0 = uranus_y_0 + 5.013871d-05*cos(3.11907749268d0 + 18.1592472647d0 * t)
        uranus_y_0 = uranus_y_0 + 5.350948d-05*cos(2.12171493922d0 + 74.2603337055d0 * t)
        uranus_y_0 = uranus_y_0 + 5.368405d-05*cos(2.55422957958d0 + 75.3028634291d0 * t)
        uranus_y_0 = uranus_y_0 + 5.516018d-05*cos(1.73758326119d0 + 140.001969579d0 * t)
        uranus_y_0 = uranus_y_0 + 5.556643d-05*cos(3.68095215063d0 + 145.1097790097d0 * t)
        uranus_y_0 = uranus_y_0 + 6.261153d-05*cos(0.14258542752d0 + 153.4953503977d0 * t)
        uranus_y_0 = uranus_y_0 + 6.408245d-05*cos(3.93246367895d0 + 62.2514255951d0 * t)
        uranus_y_0 = uranus_y_0 + 7.093587d-05*cos(6.01613487245d0 + 297.6419215609d0 * t)
        uranus_y_0 = uranus_y_0 + 7.494d-05*cos(4.82565771386d0 + 426.598190876d0 * t)
        uranus_y_0 = uranus_y_0 + 7.856014d-05*cos(1.12354254831d0 + 340.7708920448d0 * t)
        uranus_y_0 = uranus_y_0 + 8.73615d-05*cos(3.39874828293d0 + 186.2117600641d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00010819728d0*cos(0.12807029856d0 + 77.962992305d0 * t)
        uranus_y_0 = uranus_y_0 + 0.0001123902d0*cos(4.54508334011d0 + 71.6002048296d0 * t)
        uranus_y_0 = uranus_y_0 + 0.0001153114d0*cos(0.20190074645d0 + 77.2292791221d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00011996772d0*cos(5.66129275335d0 + 1059.3819301892d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00012407787d0*cos(4.6494578334d0 + 72.3339180125d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00013589665d0*cos(0.9831371993d0 + 87.3117715395d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00013948849d0*cos(4.70474945682d0 + 221.3758502853d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00015174962d0*cos(1.31314034959d0 + 41.1019810544d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00015537967d0*cos(1.8786327546d0 + 52.6901980395d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00018126776d0*cos(0.98478853787d0 + 33.6796175129d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00019643845d0*cos(0.71577796385d0 + 74.8934731519d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00019666208d0*cos(3.96350065335d0 + 74.6697239827d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00019838981d0*cos(5.29113397354d0 + 12.5301729722d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00019901477d0*cos(6.11075402434d0 + 112.9146342051d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00020051641d0*cos(2.90386352937d0 + 22.0914005278d0 * t)
        uranus_y_0 = uranus_y_0 + 0.000201151d0*cos(3.45473780762d0 + 127.4717966068d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00021523908d0*cos(4.93565132068d0 + 36.6485629295d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00022933138d0*cos(3.9445554035d0 + 84.3428261229d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00023427328d0*cos(2.52740125551d0 + 145.6310438715d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00025237176d0*cos(4.45141413666d0 + 70.3281804424d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00026157754d0*cos(3.74097610798d0 + 9.5612275556d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00026652859d0*cos(4.53944395347d0 + 160.6088973985d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00028372491d0*cos(4.44714627097d0 + 184.7272873558d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00031816303d0*cos(3.96860170484d0 + 152.5321425512d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00034205426d0*cos(0.92405922576d0 + 65.2203710117d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00034334377d0*cos(1.46696169843d0 + 225.8292684102d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00034538316d0*cos(0.27613780697d0 + 79.2350166922d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00039218598d0*cos(1.11841109252d0 + 4.4534181249d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00039256771d0*cos(5.75956853703d0 + 202.2533951741d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00053289771d0*cos(2.38437587876d0 + 3.9321532631d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00063573747d0*cos(5.0120496792d0 + 299.1263942692d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00063774261d0*cos(2.15607602904d0 + 109.9456887885d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00104507929d0*cos(2.33345675603d0 + 146.594251718d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00108584454d0*cos(6.02234848388d0 + 35.1640902212d0 * t)
        uranus_y_0 = uranus_y_0 + 0.0011120486d0*cos(3.55163219419d0 + 222.8603229936d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00119670613d0*cos(2.5305878378d0 + 39.6175083461d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00124868545d0*cos(0.94315917319d0 + 111.4301614968d0 * t)
        uranus_y_0 = uranus_y_0 + 0.0013529082d0*cos(3.93970260616d0 + 78.7137518304d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00144032475d0*cos(0.7501570092d0 + 70.8494453042d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00216239629d0*cos(3.7380076758d0 + 38.1330356378d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00268363417d0*cos(5.6808529902d0 + 213.299095438d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00387922853d0*cos(4.62026923885d0 + 138.5174968707d0 * t)
        uranus_y_0 = uranus_y_0 + 0.0045958912d0*cos(2.3374553607d0 + 2.9689454166d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00495936105d0*cos(5.3120575374d0 + 529.6909650946d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00541961958d0*cos(3.24476486661d0 + 71.8126531507d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00547472694d0*cos(2.06037924573d0 + 85.8272988312d0 * t)
        uranus_y_0 = uranus_y_0 + 0.0062132677d0*cos(1.48795811387d0 + 77.7505439839d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00650331846d0*cos(2.76142680222d0 + 63.7358983034d0 * t)
        uranus_y_0 = uranus_y_0 + 0.0065734312d0*cos(5.28830704469d0 + 151.0476698429d0 * t)
        uranus_y_0 = uranus_y_0 + 0.00938975501d0*cos(0.09275714761d0 + 11.0457002639d0 * t)
        uranus_y_0 = uranus_y_0 + 0.01442356575d0*cos(1.08004542712d0 + 148.0787244263d0 * t)
        uranus_y_0 = uranus_y_0 + 0.01542668264d0*cos(2.55040539213d0 + 224.3447957019d0 * t)
        uranus_y_0 = uranus_y_0 + 0.06250078231d0*cos(3.56960243857d0 + 1.4844727083d0 * t)
        uranus_y_0 = uranus_y_0 + 0.14123958128d0*cos(2.82486076549d0 + 76.2660712756d0 * t)
        uranus_y_0 = uranus_y_0 + 0.14755940186d0*cos(1.85423280679d0 + 73.297125859d0 * t)
        uranus_y_0 = uranus_y_0 + 0.16256125476d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_y_0 = uranus_y_0 + 0.44390465203d0*cos(0.08884111329d0 + 149.5631971346d0 * t)
        uranus_y_0 = uranus_y_0 + 19.16518231584d0*cos(3.91045677002d0 + 74.7815985673d0 * t)

        uranus_y_1 = uranus_y_1 + 1.035661d-05*cos(6.12642568708d0 + 62.2514255951d0 * t)
        uranus_y_1 = uranus_y_1 + 1.050191d-05*cos(3.84176879347d0 + 109.9456887885d0 * t)
        uranus_y_1 = uranus_y_1 + 1.075108d-05*cos(1.76286452034d0 + 56.6223513026d0 * t)
        uranus_y_1 = uranus_y_1 + 1.114523d-05*cos(3.41304662369d0 + 131.4039498699d0 * t)
        uranus_y_1 = uranus_y_1 + 1.179966d-05*cos(3.56807126055d0 + 220.4126424388d0 * t)
        uranus_y_1 = uranus_y_1 + 1.234914d-05*cos(5.69239889831d0 + 4.4534181249d0 * t)
        uranus_y_1 = uranus_y_1 + 1.291753d-05*cos(6.19666243545d0 + 70.3281804424d0 * t)
        uranus_y_1 = uranus_y_1 + 1.458526d-05*cos(5.10147126404d0 + 3.1813937377d0 * t)
        uranus_y_1 = uranus_y_1 + 1.47655d-05*cos(2.10111459539d0 + 75.7448064138d0 * t)
        uranus_y_1 = uranus_y_1 + 1.531355d-05*cos(2.14701519407d0 + 152.5321425512d0 * t)
        uranus_y_1 = uranus_y_1 + 1.555611d-05*cos(2.56681954823d0 + 73.8183907208d0 * t)
        uranus_y_1 = uranus_y_1 + 1.595703d-05*cos(4.7955805786d0 + 79.2350166922d0 * t)
        uranus_y_1 = uranus_y_1 + 1.620819d-05*cos(2.18676505386d0 + 153.4953503977d0 * t)
        uranus_y_1 = uranus_y_1 + 1.705184d-05*cos(5.82532917611d0 + 225.8292684102d0 * t)
        uranus_y_1 = uranus_y_1 + 1.707606d-05*cos(5.60415260609d0 + 127.4717966068d0 * t)
        uranus_y_1 = uranus_y_1 + 1.713945d-05*cos(1.82334975258d0 + 222.8603229936d0 * t)
        uranus_y_1 = uranus_y_1 + 1.739019d-05*cos(3.82452086292d0 + 146.594251718d0 * t)
        uranus_y_1 = uranus_y_1 + 1.744564d-05*cos(1.67897185084d0 + 77.2292791221d0 * t)
        uranus_y_1 = uranus_y_1 + 1.926926d-05*cos(0.82821252139d0 + 39.6175083461d0 * t)
        uranus_y_1 = uranus_y_1 + 1.929662d-05*cos(4.68383962079d0 + 52.6901980395d0 * t)
        uranus_y_1 = uranus_y_1 + 2.224655d-05*cos(3.21541108798d0 + 72.3339180125d0 * t)
        uranus_y_1 = uranus_y_1 + 2.22751d-05*cos(4.89407437055d0 + 87.3117715395d0 * t)
        uranus_y_1 = uranus_y_1 + 2.510693d-05*cos(1.27166561854d0 + 18.1592472647d0 * t)
        uranus_y_1 = uranus_y_1 + 2.628159d-05*cos(2.97459067399d0 + 12.5301729722d0 * t)
        uranus_y_1 = uranus_y_1 + 2.690065d-05*cos(1.78946471198d0 + 9.5612275556d0 * t)
        uranus_y_1 = uranus_y_1 + 2.821206d-05*cos(1.83130010947d0 + 84.3428261229d0 * t)
        uranus_y_1 = uranus_y_1 + 2.830313d-05*cos(3.34365222278d0 + 213.299095438d0 * t)
        uranus_y_1 = uranus_y_1 + 3.174617d-05*cos(3.08131638838d0 + 299.1263942692d0 * t)
        uranus_y_1 = uranus_y_1 + 3.962568d-05*cos(3.18042711824d0 + 65.2203710117d0 * t)
        uranus_y_1 = uranus_y_1 + 4.117202d-05*cos(6.1993161279d0 + 22.0914005278d0 * t)
        uranus_y_1 = uranus_y_1 + 4.376824d-05*cos(2.17182724016d0 + 160.6088973985d0 * t)
        uranus_y_1 = uranus_y_1 + 6.979238d-05*cos(0.83723520791d0 + 145.6310438715d0 * t)
        uranus_y_1 = uranus_y_1 + 7.321559d-05*cos(0.66348425538d0 + 2.9689454166d0 * t)
        uranus_y_1 = uranus_y_1 + 7.438492d-05*cos(4.63165436478d0 + 77.962992305d0 * t)
        uranus_y_1 = uranus_y_1 + 7.595636d-05*cos(1.19807643487d0 + 148.0787244263d0 * t)
        uranus_y_1 = uranus_y_1 + 7.732367d-05*cos(0.04256630122d0 + 71.6002048296d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00014991169d0*cos(3.97176856758d0 + 3.9321532631d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00017393206d0*cos(4.96098895488d0 + 71.8126531507d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00019425087d0*cos(6.01842187783d0 + 77.7505439839d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00021673269d0*cos(3.36607263522d0 + 151.0476698429d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00032420558d0*cos(4.32617271732d0 + 74.7815985673d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00036146116d0*cos(5.94859452787d0 + 78.7137518304d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00038296005d0*cos(5.01873578671d0 + 70.8494453042d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00045457174d0*cos(0.73292241207d0 + 138.5174968707d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00051366974d0*cos(0.61844114994d0 + 224.3447957019d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00081474163d0*cos(5.92275367106d0 + 85.8272988312d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00094979054d0*cos(5.07141537066d0 + 63.7358983034d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00110137111d0*cos(4.00844441616d0 + 11.0457002639d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00229396424d0*cos(0.91090183978d0 + 76.2660712756d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00238545685d0*cos(3.76882493145d0 + 73.297125859d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00739227349d0*cos(4.43963890935d0 + 149.5631971346d0 * t)
        uranus_y_1 = uranus_y_1 + 0.02157896385d0*cos(0.0d0 + 0.0d0 * t)
        uranus_y_1=uranus_y_1*t;

        uranus_y_2 = uranus_y_2 + 1.035578d-05*cos(5.44752448275d0 + 145.6310438715d0 * t)
        uranus_y_2 = uranus_y_2 + 1.044459d-05*cos(4.2797223936d0 + 224.3447957019d0 * t)
        uranus_y_2 = uranus_y_2 + 2.185856d-05*cos(5.58862614977d0 + 3.9321532631d0 * t)
        uranus_y_2 = uranus_y_2 + 2.418371d-05*cos(2.88675006488d0 + 77.962992305d0 * t)
        uranus_y_2 = uranus_y_2 + 2.519021d-05*cos(1.78896824345d0 + 71.6002048296d0 * t)
        uranus_y_2 = uranus_y_2 + 2.995853d-05*cos(2.49432193549d0 + 138.5174968707d0 * t)
        uranus_y_2 = uranus_y_2 + 4.864822d-05*cos(4.11367426823d0 + 76.2660712756d0 * t)
        uranus_y_2 = uranus_y_2 + 5.018595d-05*cos(1.47518527303d0 + 78.7137518304d0 * t)
        uranus_y_2 = uranus_y_2 + 5.26517d-05*cos(0.54901216905d0 + 73.297125859d0 * t)
        uranus_y_2 = uranus_y_2 + 5.3071d-05*cos(3.20519221878d0 + 70.8494453042d0 * t)
        uranus_y_2 = uranus_y_2 + 6.713255d-05*cos(3.74148881189d0 + 85.8272988312d0 * t)
        uranus_y_2 = uranus_y_2 + 7.484633d-05*cos(2.27968076918d0 + 11.0457002639d0 * t)
        uranus_y_2 = uranus_y_2 + 7.964298d-05*cos(0.97230247087d0 + 63.7358983034d0 * t)
        uranus_y_2 = uranus_y_2 + 0.00010905147d0*cos(1.45737963668d0 + 149.5631971346d0 * t)
        uranus_y_2 = uranus_y_2 + 0.00016589194d0*cos(2.2955674062d0 + 74.7815985673d0 * t)
        uranus_y_2 = uranus_y_2 + 0.00034812647d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_y_2=uranus_y_2*t*t;

        uranus_y_3 = uranus_y_3 + 1.21138d-05*cos(0.0d0 + 0.0d0 * t)
        uranus_y_3=uranus_y_3*t*t*t;

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

        uranus_z_0 = uranus_z_0 + 1.051968d-05*cos(0.7556075384d0 + 109.9456887885d0 * t)
        uranus_z_0 = uranus_z_0 + 1.082736d-05*cos(2.62872874057d0 + 108.4612160802d0 * t)
        uranus_z_0 = uranus_z_0 + 1.508924d-05*cos(2.26195448553d0 + 222.8603229936d0 * t)
        uranus_z_0 = uranus_z_0 + 1.743154d-05*cos(1.20586281789d0 + 146.594251718d0 * t)
        uranus_z_0 = uranus_z_0 + 1.884104d-05*cos(2.61192472648d0 + 78.7137518304d0 * t)
        uranus_z_0 = uranus_z_0 + 1.985215d-05*cos(0.76408839812d0 + 39.6175083461d0 * t)
        uranus_z_0 = uranus_z_0 + 2.037011d-05*cos(0.95353587037d0 + 70.3281804424d0 * t)
        uranus_z_0 = uranus_z_0 + 2.330304d-05*cos(5.7264022615d0 + 70.8494453042d0 * t)
        uranus_z_0 = uranus_z_0 + 2.578399d-05*cos(5.1969644739d0 + 111.4301614968d0 * t)
        uranus_z_0 = uranus_z_0 + 2.96407d-05*cos(6.14338802239d0 + 35.1640902212d0 * t)
        uranus_z_0 = uranus_z_0 + 4.581938d-05*cos(1.69668682344d0 + 38.1330356378d0 * t)
        uranus_z_0 = uranus_z_0 + 5.64872d-05*cos(3.45324719543d0 + 138.5174968707d0 * t)
        uranus_z_0 = uranus_z_0 + 6.867469d-05*cos(0.81417174224d0 + 2.9689454166d0 * t)
        uranus_z_0 = uranus_z_0 + 7.950169d-05*cos(0.72564903051d0 + 85.8272988312d0 * t)
        uranus_z_0 = uranus_z_0 + 8.23946d-05*cos(0.34225652715d0 + 77.7505439839d0 * t)
        uranus_z_0 = uranus_z_0 + 8.855669d-05*cos(4.03774505739d0 + 151.0476698429d0 * t)
        uranus_z_0 = uranus_z_0 + 0.00010407529d0*cos(3.65320417038d0 + 213.299095438d0 * t)
        uranus_z_0 = uranus_z_0 + 0.00011261541d0*cos(3.55973769686d0 + 529.6909650946d0 * t)
        uranus_z_0 = uranus_z_0 + 0.0001253753d0*cos(5.17169051466d0 + 11.0457002639d0 * t)
        uranus_z_0 = uranus_z_0 + 0.00014582864d0*cos(6.14852037212d0 + 71.8126531507d0 * t)
        uranus_z_0 = uranus_z_0 + 0.00019734273d0*cos(6.04314677688d0 + 148.0787244263d0 * t)
        uranus_z_0 = uranus_z_0 + 0.00020842052d0*cos(1.26054208091d0 + 224.3447957019d0 * t)
        uranus_z_0 = uranus_z_0 + 0.00030734257d0*cos(0.23571721555d0 + 63.7358983034d0 * t)
        uranus_z_0 = uranus_z_0 + 0.00084626761d0*cos(2.26030150166d0 + 1.4844727083d0 * t)
        uranus_z_0 = uranus_z_0 + 0.0019028189d0*cos(1.61643841193d0 + 76.2660712756d0 * t)
        uranus_z_0 = uranus_z_0 + 0.00190881685d0*cos(0.57869575952d0 + 73.297125859d0 * t)
        uranus_z_0 = uranus_z_0 + 0.00599316131d0*cos(5.08119500585d0 + 149.5631971346d0 * t)
        uranus_z_0 = uranus_z_0 + 0.01774318778d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_z_0 = uranus_z_0 + 0.25878127698d0*cos(2.61861272578d0 + 74.7815985673d0 * t)

        uranus_z_1 = uranus_z_1 + 1.15825d-05*cos(5.31913504112d0 + 224.3447957019d0 * t)
        uranus_z_1 = uranus_z_1 + 1.305063d-05*cos(4.52337002195d0 + 85.8272988312d0 * t)
        uranus_z_1 = uranus_z_1 + 1.827697d-05*cos(2.71810813335d0 + 11.0457002639d0 * t)
        uranus_z_1 = uranus_z_1 + 2.087455d-05*cos(5.97858625817d0 + 1.4844727083d0 * t)
        uranus_z_1 = uranus_z_1 + 2.868429d-05*cos(4.17954157878d0 + 63.7358983034d0 * t)
        uranus_z_1 = uranus_z_1 + 5.941304d-05*cos(3.61254073304d0 + 73.297125859d0 * t)
        uranus_z_1 = uranus_z_1 + 7.552177d-05*cos(5.493042077d0 + 76.2660712756d0 * t)
        uranus_z_1 = uranus_z_1 + 0.00023874178d0*cos(2.7387049122d0 + 149.5631971346d0 * t)
        uranus_z_1 = uranus_z_1 + 0.00049648951d0*cos(0.0d0 + 0.0d0 * t)
        uranus_z_1 = uranus_z_1 + 0.00655916626d0*cos(0.0127194766d0 + 74.7815985673d0 * t)
        uranus_z_1=uranus_z_1*t;

        uranus_z_2 = uranus_z_2 + 1.600044d-05*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_z_2 = uranus_z_2 + 0.00014697858d0*cos(1.75149165003d0 + 74.7815985673d0 * t)
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

        venus_x_0 = venus_x_0 + 1.04669d-05*cos(1.75434920413d0 + 6283.0758499914d0 * t)
        venus_x_0 = venus_x_0 + 1.162258d-05*cos(2.87958246189d0 + 18073.7049386502d0 * t)
        venus_x_0 = venus_x_0 + 1.241717d-05*cos(4.93573787058d0 + 30639.856638633d0 * t)
        venus_x_0 = venus_x_0 + 1.949669d-05*cos(4.23196016801d0 + 1577.3435424478d0 * t)
        venus_x_0 = venus_x_0 + 2.800281d-05*cos(0.33147492492d0 + 2352.8661537718d0 * t)
        venus_x_0 = venus_x_0 + 0.00244500474d0*cos(4.05566613861d0 + 20426.571092422d0 * t)
        venus_x_0 = venus_x_0 + 0.00486448018d0*cos(0.0d0 + 0.0d0 * t)
        venus_x_0 = venus_x_0 + 0.72211281391d0*cos(3.17575836361d0 + 10213.285546211d0 * t)

        venus_x_1 = venus_x_1 + 6.510416d-05*cos(2.19289889733d0 + 10213.285546211d0 * t)
        venus_x_1 = venus_x_1 + 0.00017234992d0*cos(0.92721124604d0 + 20426.571092422d0 * t)
        venus_x_1 = venus_x_1 + 0.00033862636d0*cos(3.14159265359d0 + 0.0d0 * t)
        venus_x_1=venus_x_1*t;

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

        venus_y_0 = venus_y_0 + 1.041872d-05*cos(0.18129136925d0 + 6283.0758499914d0 * t)
        venus_y_0 = venus_y_0 + 1.16448d-05*cos(1.30970620277d0 + 18073.7049386502d0 * t)
        venus_y_0 = venus_y_0 + 1.243658d-05*cos(3.36573697344d0 + 30639.856638633d0 * t)
        venus_y_0 = venus_y_0 + 1.933868d-05*cos(5.80597990261d0 + 1577.3435424478d0 * t)
        venus_y_0 = venus_y_0 + 2.789807d-05*cos(5.04214523606d0 + 2352.8661537718d0 * t)
        venus_y_0 = venus_y_0 + 0.0024488479d0*cos(2.48564954004d0 + 20426.571092422d0 * t)
        venus_y_0 = venus_y_0 + 0.00549506273d0*cos(3.14159265359d0 + 0.0d0 * t)
        venus_y_0 = venus_y_0 + 0.72324820731d0*cos(1.60573808356d0 + 10213.285546211d0 * t)

        venus_y_1 = venus_y_1 + 5.968075d-05*cos(3.60854944086d0 + 10213.285546211d0 * t)
        venus_y_1 = venus_y_1 + 0.00017282326d0*cos(5.638247359d0 + 20426.571092422d0 * t)
        venus_y_1 = venus_y_1 + 0.0003923143d0*cos(0.0d0 + 0.0d0 * t)
        venus_y_1=venus_y_1*t;

        venus_y_2 = venus_y_2 + 2.007155d-05*cos(3.14159265359d0 + 0.0d0 * t)
        venus_y_2=venus_y_2*t*t;

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

        venus_z_0 = venus_z_0 + 0.00014501879d0*cos(1.1469691139d0 + 20426.571092422d0 * t)
        venus_z_0 = venus_z_0 + 0.00035588343d0*cos(3.14159265359d0 + 0.0d0 * t)
        venus_z_0 = venus_z_0 + 0.04282990302d0*cos(0.26703856476d0 + 10213.285546211d0 * t)

        venus_z_1 = venus_z_1 + 1.264989d-05*cos(3.71037501321d0 + 20426.571092422d0 * t)
        venus_z_1 = venus_z_1 + 1.364144d-05*cos(0.0d0 + 0.0d0 * t)
        venus_z_1 = venus_z_1 + 0.00208096402d0*cos(1.88967278742d0 + 10213.285546211d0 * t)
        venus_z_1=venus_z_1*t;

        venus_z_2 = venus_z_2 + 9.148044d-05*cos(3.34791005272d0 + 10213.285546211d0 * t)
        venus_z_2=venus_z_2*t*t;

        r = venus_z_2+venus_z_1+venus_z_0
    end function

end module VSOP87A_Milli
