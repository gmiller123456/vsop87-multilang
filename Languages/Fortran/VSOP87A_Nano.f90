!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87A_Nano
    implicit none

    contains
    subroutine VSOP87A_Nano_getEarth(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_x(t)
        result(2)=earth_y(t)
        result(3)=earth_z(t)
    end subroutine

    subroutine VSOP87A_Nano_getEmb(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=emb_x(t)
        result(2)=emb_y(t)
        result(3)=emb_z(t)
    end subroutine

    subroutine VSOP87A_Nano_getJupiter(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_x(t)
        result(2)=jupiter_y(t)
        result(3)=jupiter_z(t)
    end subroutine

    subroutine VSOP87A_Nano_getMars(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_x(t)
        result(2)=mars_y(t)
        result(3)=mars_z(t)
    end subroutine

    subroutine VSOP87A_Nano_getMercury(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_x(t)
        result(2)=mercury_y(t)
        result(3)=mercury_z(t)
    end subroutine

    subroutine VSOP87A_Nano_getNeptune(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_x(t)
        result(2)=neptune_y(t)
        result(3)=neptune_z(t)
    end subroutine

    subroutine VSOP87A_Nano_getSaturn(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_x(t)
        result(2)=saturn_y(t)
        result(3)=saturn_z(t)
    end subroutine

    subroutine VSOP87A_Nano_getUranus(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_x(t)
        result(2)=uranus_y(t)
        result(3)=uranus_z(t)
    end subroutine

    subroutine VSOP87A_Nano_getVenus(t, result)
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

        earth_x_0 = earth_x_0 + 0.00561144206d0*cos(0.0d0 + 0.0d0 * t)
        earth_x_0 = earth_x_0 + 0.008352573d0*cos(1.7103453945d0 + 12566.1516999828d0 * t)
        earth_x_0 = earth_x_0 + 0.99982928844d0*cos(1.75348568475d0 + 6283.0758499914d0 * t)

        earth_x_1 = earth_x_1 + 0.00123403056d0*cos(0.0d0 + 0.0d0 * t)
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

        earth_y_0 = earth_y_0 + 0.00835292314d0*cos(0.13952878991d0 + 12566.1516999828d0 * t)
        earth_y_0 = earth_y_0 + 0.02442699036d0*cos(3.14159265359d0 + 0.0d0 * t)
        earth_y_0 = earth_y_0 + 0.9998921103d0*cos(0.18265890456d0 + 6283.0758499914d0 * t)

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

        earth_z_1 = earth_z_1 + 0.00227822442d0*cos(3.41372504278d0 + 6283.0758499914d0 * t)
        earth_z_1=earth_z_1*t;

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

        emb_x_0 = emb_x_0 + 0.00561144161d0*cos(0.0d0 + 0.0d0 * t)
        emb_x_0 = emb_x_0 + 0.008352573d0*cos(1.7103453945d0 + 12566.1516999828d0 * t)
        emb_x_0 = emb_x_0 + 0.9998292746d0*cos(1.75348568475d0 + 6283.0758499914d0 * t)

        emb_x_1 = emb_x_1 + 0.00123403046d0*cos(0.0d0 + 0.0d0 * t)
        emb_x_1=emb_x_1*t;

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

        emb_y_0 = emb_y_0 + 0.00835292314d0*cos(0.13952878991d0 + 12566.1516999828d0 * t)
        emb_y_0 = emb_y_0 + 0.02442698841d0*cos(3.14159265359d0 + 0.0d0 * t)
        emb_y_0 = emb_y_0 + 0.99989209645d0*cos(0.18265890456d0 + 6283.0758499914d0 * t)

        r = emb_y_0
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

        emb_z_1 = emb_z_1 + 0.00227822442d0*cos(3.41372504278d0 + 6283.0758499914d0 * t)
        emb_z_1=emb_z_1*t;

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

        jupiter_x_1 = jupiter_x_1 + 0.0058915706d0*cos(1.91556314637d0 + 536.8045120954d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.00599720482d0*cos(2.42996678275d0 + 522.5774180938d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.00635297172d0*cos(0.10662156868d0 + 1059.3819301892d0 * t)
        jupiter_x_1 = jupiter_x_1 + 0.00882389251d0*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_x_1=jupiter_x_1*t;

        jupiter_x_2 = jupiter_x_2 + 0.00121521296d0*cos(0.21155109275d0 + 536.8045120954d0 * t)
        jupiter_x_2 = jupiter_x_2 + 0.00123864644d0*cos(4.13563277513d0 + 522.5774180938d0 * t)
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

        jupiter_y_1 = jupiter_y_1 + 0.00588928504d0*cos(0.3449157689d0 + 536.8045120954d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.00601160431d0*cos(0.8581124994d0 + 522.5774180938d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.00634859798d0*cos(4.8190319965d0 + 1059.3819301892d0 * t)
        jupiter_y_1 = jupiter_y_1 + 0.01694798253d0*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_y_1=jupiter_y_1*t;

        jupiter_y_2 = jupiter_y_2 + 0.00121455991d0*cos(4.9239876638d0 + 536.8045120954d0 * t)
        jupiter_y_2 = jupiter_y_2 + 0.00124032509d0*cos(2.56495576833d0 + 522.5774180938d0 * t)
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

        jupiter_z_1 = jupiter_z_1 + 0.00407072175d0*cos(1.52699353482d0 + 529.6909650946d0 * t)
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

        mars_x_0 = mars_x_0 + 0.00494196914d0*cos(0.59669127768d0 + 10021.8372800994d0 * t)
        mars_x_0 = mars_x_0 + 0.07070919655d0*cos(0.25870338558d0 + 6681.2248533996d0 * t)
        mars_x_0 = mars_x_0 + 0.19502945246d0*cos(3.14159265359d0 + 0.0d0 * t)
        mars_x_0 = mars_x_0 + 1.51769936383d0*cos(6.20403346548d0 + 3340.6124266998d0 * t)

        mars_x_1 = mars_x_1 + 0.00552437949d0*cos(5.09565872891d0 + 6681.2248533996d0 * t)
        mars_x_1 = mars_x_1 + 0.00861441374d0*cos(3.14159265359d0 + 0.0d0 * t)
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

        mars_y_0 = mars_y_0 + 0.00493872848d0*cos(5.30877806694d0 + 10021.8372800994d0 * t)
        mars_y_0 = mars_y_0 + 0.07064550239d0*cos(4.97051892902d0 + 6681.2248533996d0 * t)
        mars_y_0 = mars_y_0 + 0.08655481102d0*cos(0.0d0 + 0.0d0 * t)
        mars_y_0 = mars_y_0 + 1.51558976277d0*cos(4.63212206588d0 + 3340.6124266998d0 * t)

        mars_y_1 = mars_y_1 + 0.00551063753d0*cos(3.52128320402d0 + 6681.2248533996d0 * t)
        mars_y_1 = mars_y_1 + 0.0142732421d0*cos(3.14159265359d0 + 0.0d0 * t)
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

        mars_z_1 = mars_z_1 + 0.00331842958d0*cos(6.05027773492d0 + 3340.6124266998d0 * t)
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

        mercury_x_0 = mercury_x_0 + 0.00105716695d0*cos(0.98379033182d0 + 104351.61256629678d0 * t)
        mercury_x_0 = mercury_x_0 + 0.00584261333d0*cos(4.21599394757d0 + 78263.70942472259d0 * t)
        mercury_x_0 = mercury_x_0 + 0.02625615963d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_x_0 = mercury_x_0 + 0.03825746672d0*cos(1.16485604339d0 + 52175.8062831484d0 * t)
        mercury_x_0 = mercury_x_0 + 0.37546291728d0*cos(4.39651506942d0 + 26087.9031415742d0 * t)

        mercury_x_1 = mercury_x_1 + 0.00105289019d0*cos(5.91600475006d0 + 52175.8062831484d0 * t)
        mercury_x_1 = mercury_x_1 + 0.00318848034d0*cos(0.0d0 + 0.0d0 * t)
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

        mercury_y_0 = mercury_y_0 + 0.00106235493d0*cos(5.70550616735d0 + 104351.61256629678d0 * t)
        mercury_y_0 = mercury_y_0 + 0.00587711268d0*cos(2.65498896201d0 + 78263.70942472259d0 * t)
        mercury_y_0 = mercury_y_0 + 0.03854668215d0*cos(5.88780608966d0 + 52175.8062831484d0 * t)
        mercury_y_0 = mercury_y_0 + 0.11626131831d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_y_0 = mercury_y_0 + 0.37953642888d0*cos(2.8378061782d0 + 26087.9031415742d0 * t)

        mercury_y_1 = mercury_y_1 + 0.00107803852d0*cos(4.34964793883d0 + 52175.8062831484d0 * t)
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

        mercury_z_1 = mercury_z_1 + 0.00108722177d0*cos(3.91134750825d0 + 26087.9031415742d0 * t)
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

        neptune_x_1 = neptune_x_1 + 0.00118398168d0*cos(2.88251845061d0 + 76.2660712756d0 * t)
        neptune_x_1 = neptune_x_1 + 0.00243125299d0*cos(5.46214902873d0 + 39.6175083461d0 * t)
        neptune_x_1 = neptune_x_1 + 0.00255840261d0*cos(2.01935686795d0 + 36.6485629295d0 * t)
        neptune_x_1=neptune_x_1*t;

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

        neptune_y_1 = neptune_y_1 + 0.00118427205d0*cos(1.31128027037d0 + 76.2660712756d0 * t)
        neptune_y_1 = neptune_y_1 + 0.00243147725d0*cos(3.89099798696d0 + 39.6175083461d0 * t)
        neptune_y_1 = neptune_y_1 + 0.00256125493d0*cos(0.44757496817d0 + 36.6485629295d0 * t)
        neptune_y_1 = neptune_y_1 + 0.00352947493d0*cos(3.14159265359d0 + 0.0d0 * t)
        neptune_y_1=neptune_y_1*t;

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

        neptune_z_0 = neptune_z_0 + 0.00417558068d0*cos(5.91310695421d0 + 76.2660712756d0 * t)
        neptune_z_0 = neptune_z_0 + 0.00451987936d0*cos(3.50949720541d0 + 39.6175083461d0 * t)
        neptune_z_0 = neptune_z_0 + 0.00474333567d0*cos(2.52218774238d0 + 36.6485629295d0 * t)
        neptune_z_0 = neptune_z_0 + 0.01245978462d0*cos(0.0d0 + 0.0d0 * t)
        neptune_z_0 = neptune_z_0 + 0.92866054405d0*cos(1.44103930278d0 + 38.1330356378d0 * t)

        neptune_z_1 = neptune_z_1 + 0.00154885971d0*cos(2.14239039664d0 + 38.1330356378d0 * t)
        neptune_z_1=neptune_z_1*t;

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

        saturn_x_2 = saturn_x_2 + 0.00224302269d0*cos(2.49151203519d0 + 426.598190876d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00336109713d0*cos(2.4254743246d0 + 213.299095438d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00443342186d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00545834518d0*cos(3.62343709657d0 + 220.4126424388d0 * t)
        saturn_x_2 = saturn_x_2 + 0.00560746334d0*cos(1.26401632282d0 + 206.1855484372d0 * t)
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

        saturn_y_2 = saturn_y_2 + 0.00225521642d0*cos(0.91699821445d0 + 426.598190876d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00362294249d0*cos(0.89540100509d0 + 213.299095438d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00458518613d0*cos(0.0d0 + 0.0d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00547012116d0*cos(2.05154973426d0 + 220.4126424388d0 * t)
        saturn_y_2 = saturn_y_2 + 0.00563706537d0*cos(5.97115878242d0 + 206.1855484372d0 * t)
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

        saturn_z_1 = saturn_z_1 + 0.00101466332d0*cos(1.79095829545d0 + 220.4126424388d0 * t)
        saturn_z_1 = saturn_z_1 + 0.00130262284d0*cos(2.26140980879d0 + 206.1855484372d0 * t)
        saturn_z_1 = saturn_z_1 + 0.00528301265d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_z_1 = saturn_z_1 + 0.01906503283d0*cos(4.94544746116d0 + 213.299095438d0 * t)
        saturn_z_1=saturn_z_1*t;

        saturn_z_2 = saturn_z_2 + 0.00131275155d0*cos(0.08868998101d0 + 213.299095438d0 * t)
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

        uranus_x_1 = uranus_x_1 + 0.00111045158d0*cos(5.5715723596d0 + 11.0457002639d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00229676787d0*cos(2.48204455775d0 + 76.2660712756d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00239840801d0*cos(5.33657762707d0 + 73.297125859d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00526878306d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_x_1 = uranus_x_1 + 0.00739730021d0*cos(6.01067825116d0 + 149.5631971346d0 * t)
        uranus_x_1=uranus_x_1*t;

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

        uranus_y_1 = uranus_y_1 + 0.00110137111d0*cos(4.00844441616d0 + 11.0457002639d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00229396424d0*cos(0.91090183978d0 + 76.2660712756d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00238545685d0*cos(3.76882493145d0 + 73.297125859d0 * t)
        uranus_y_1 = uranus_y_1 + 0.00739227349d0*cos(4.43963890935d0 + 149.5631971346d0 * t)
        uranus_y_1 = uranus_y_1 + 0.02157896385d0*cos(0.0d0 + 0.0d0 * t)
        uranus_y_1=uranus_y_1*t;

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

        uranus_z_0 = uranus_z_0 + 0.0019028189d0*cos(1.61643841193d0 + 76.2660712756d0 * t)
        uranus_z_0 = uranus_z_0 + 0.00190881685d0*cos(0.57869575952d0 + 73.297125859d0 * t)
        uranus_z_0 = uranus_z_0 + 0.00599316131d0*cos(5.08119500585d0 + 149.5631971346d0 * t)
        uranus_z_0 = uranus_z_0 + 0.01774318778d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_z_0 = uranus_z_0 + 0.25878127698d0*cos(2.61861272578d0 + 74.7815985673d0 * t)

        uranus_z_1 = uranus_z_1 + 0.00655916626d0*cos(0.0127194766d0 + 74.7815985673d0 * t)
        uranus_z_1=uranus_z_1*t;

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

        venus_x_0 = venus_x_0 + 0.00244500474d0*cos(4.05566613861d0 + 20426.571092422d0 * t)
        venus_x_0 = venus_x_0 + 0.00486448018d0*cos(0.0d0 + 0.0d0 * t)
        venus_x_0 = venus_x_0 + 0.72211281391d0*cos(3.17575836361d0 + 10213.285546211d0 * t)

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

        venus_y_0 = venus_y_0 + 0.0024488479d0*cos(2.48564954004d0 + 20426.571092422d0 * t)
        venus_y_0 = venus_y_0 + 0.00549506273d0*cos(3.14159265359d0 + 0.0d0 * t)
        venus_y_0 = venus_y_0 + 0.72324820731d0*cos(1.60573808356d0 + 10213.285546211d0 * t)

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

        venus_z_1 = venus_z_1 + 0.00208096402d0*cos(1.88967278742d0 + 10213.285546211d0 * t)
        venus_z_1=venus_z_1*t;

        r = venus_z_1+venus_z_0
    end function

end module VSOP87A_Nano
