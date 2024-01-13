!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87B_Milli
    implicit none

    contains
    subroutine VSOP87B_Milli_getEarth(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_b(t)
        result(2)=earth_l(t)
        result(3)=earth_r(t)
    end subroutine

    subroutine VSOP87B_Milli_getJupiter(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_b(t)
        result(2)=jupiter_l(t)
        result(3)=jupiter_r(t)
    end subroutine

    subroutine VSOP87B_Milli_getMars(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_b(t)
        result(2)=mars_l(t)
        result(3)=mars_r(t)
    end subroutine

    subroutine VSOP87B_Milli_getMercury(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_b(t)
        result(2)=mercury_l(t)
        result(3)=mercury_r(t)
    end subroutine

    subroutine VSOP87B_Milli_getNeptune(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_b(t)
        result(2)=neptune_l(t)
        result(3)=neptune_r(t)
    end subroutine

    subroutine VSOP87B_Milli_getSaturn(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_b(t)
        result(2)=saturn_l(t)
        result(3)=saturn_r(t)
    end subroutine

    subroutine VSOP87B_Milli_getUranus(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_b(t)
        result(2)=uranus_l(t)
        result(3)=uranus_r(t)
    end subroutine

    subroutine VSOP87B_Milli_getVenus(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=venus_b(t)
        result(2)=venus_l(t)
        result(3)=venus_r(t)
    end subroutine

    function earth_b(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: earth_b_0
        double precision :: earth_b_1
        double precision :: earth_b_2
        double precision :: earth_b_3
        double precision :: earth_b_4
        double precision :: earth_b_5

        earth_b_0 = 0.0
        earth_b_1 = 0.0
        earth_b_2 = 0.0
        earth_b_3 = 0.0
        earth_b_4 = 0.0
        earth_b_5 = 0.0

        earth_b_1 = earth_b_1 + 3.619589d-05*cos(0.0d0 + 0.0d0 * t)
        earth_b_1 = earth_b_1 + 3.805678d-05*cos(3.37063423795d0 + 12566.1516999828d0 * t)
        earth_b_1 = earth_b_1 + 0.00227777722d0*cos(3.4137662053d0 + 6283.0758499914d0 * t)
        earth_b_1=earth_b_1*t;

        earth_b_2 = earth_b_2 + 9.721424d-05*cos(5.1519280992d0 + 6283.0758499914d0 * t)
        earth_b_2=earth_b_2*t*t;

        r = earth_b_2+earth_b_1
    end function

    function earth_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: earth_l_0
        double precision :: earth_l_1
        double precision :: earth_l_2
        double precision :: earth_l_3
        double precision :: earth_l_4
        double precision :: earth_l_5

        earth_l_0 = 0.0
        earth_l_1 = 0.0
        earth_l_2 = 0.0
        earth_l_3 = 0.0
        earth_l_4 = 0.0
        earth_l_5 = 0.0

        earth_l_0 = earth_l_0 + 1.199167d-05*cos(1.10962946234d0 + 1577.3435424478d0 * t)
        earth_l_0 = earth_l_0 + 1.273165d-05*cos(2.03709657878d0 + 529.6909650946d0 * t)
        earth_l_0 = earth_l_0 + 1.324294d-05*cos(0.74246341673d0 + 11506.7697697936d0 * t)
        earth_l_0 = earth_l_0 + 2.342691d-05*cos(6.13516214446d0 + 3930.2096962196d0 * t)
        earth_l_0 = earth_l_0 + 2.676218d-05*cos(4.41808345438d0 + 7860.4193924392d0 * t)
        earth_l_0 = earth_l_0 + 3.135899d-05*cos(3.62767041756d0 + 77713.7714681205d0 * t)
        earth_l_0 = earth_l_0 + 3.417572d-05*cos(2.82886579754d0 + 3.523118349d0 * t)
        earth_l_0 = earth_l_0 + 3.497056d-05*cos(2.74411783405d0 + 5753.3848848968d0 * t)
        earth_l_0 = earth_l_0 + 0.00034894275d0*cos(4.62610242189d0 + 12566.1516999828d0 * t)
        earth_l_0 = earth_l_0 + 0.03341656453d0*cos(4.66925680415d0 + 6283.0758499914d0 * t)
        earth_l_0 = earth_l_0 + 1.75347045673d0*cos(0.0d0 + 0.0d0 * t)

        earth_l_1 = earth_l_1 + 4.303419d-05*cos(2.63512233481d0 + 12566.1516999828d0 * t)
        earth_l_1 = earth_l_1 + 0.00206058863d0*cos(2.67823455808d0 + 6283.0758499914d0 * t)
        earth_l_1 = earth_l_1 + 6283.0758499914d0*cos(0.0d0 + 0.0d0 * t)
        earth_l_1=earth_l_1*t;

        earth_l_2 = earth_l_2 + 8.721859d-05*cos(1.07253635559d0 + 6283.0758499914d0 * t)
        earth_l_2=earth_l_2*t*t;

        r = earth_l_2+earth_l_1+earth_l_0
    end function

    function earth_r(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: earth_r_0
        double precision :: earth_r_1
        double precision :: earth_r_2
        double precision :: earth_r_3
        double precision :: earth_r_4
        double precision :: earth_r_5

        earth_r_0 = 0.0
        earth_r_1 = 0.0
        earth_r_2 = 0.0
        earth_r_3 = 0.0
        earth_r_4 = 0.0
        earth_r_5 = 0.0

        earth_r_0 = earth_r_0 + 1.575572d-05*cos(2.84685214877d0 + 7860.4193924392d0 * t)
        earth_r_0 = earth_r_0 + 1.628463d-05*cos(1.17387558054d0 + 5753.3848848968d0 * t)
        earth_r_0 = earth_r_0 + 3.08372d-05*cos(5.19846674381d0 + 77713.7714681205d0 * t)
        earth_r_0 = earth_r_0 + 0.00013956024d0*cos(3.05524609456d0 + 12566.1516999828d0 * t)
        earth_r_0 = earth_r_0 + 0.01670699632d0*cos(3.09846350258d0 + 6283.0758499914d0 * t)
        earth_r_0 = earth_r_0 + 1.00013988784d0*cos(0.0d0 + 0.0d0 * t)

        earth_r_1 = earth_r_1 + 1.721238d-05*cos(1.06442300386d0 + 12566.1516999828d0 * t)
        earth_r_1 = earth_r_1 + 0.00103018607d0*cos(1.10748968172d0 + 6283.0758499914d0 * t)
        earth_r_1=earth_r_1*t;

        earth_r_2 = earth_r_2 + 4.359385d-05*cos(5.78455133808d0 + 6283.0758499914d0 * t)
        earth_r_2=earth_r_2*t*t;

        r = earth_r_2+earth_r_1+earth_r_0
    end function

    function jupiter_b(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: jupiter_b_0
        double precision :: jupiter_b_1
        double precision :: jupiter_b_2
        double precision :: jupiter_b_3
        double precision :: jupiter_b_4
        double precision :: jupiter_b_5

        jupiter_b_0 = 0.0
        jupiter_b_1 = 0.0
        jupiter_b_2 = 0.0
        jupiter_b_3 = 0.0
        jupiter_b_4 = 0.0
        jupiter_b_5 = 0.0

        jupiter_b_0 = jupiter_b_0 + 1.10688d-05*cos(2.9853440952d0 + 1162.4747044078d0 * t)
        jupiter_b_0 = jupiter_b_0 + 6.043996d-05*cos(4.25883108339d0 + 1589.0728952838d0 * t)
        jupiter_b_0 = jupiter_b_0 + 6.437782d-05*cos(0.30627119215d0 + 536.8045120954d0 * t)
        jupiter_b_0 = jupiter_b_0 + 8.101428d-05*cos(3.60509572885d0 + 522.5774180938d0 * t)
        jupiter_b_0 = jupiter_b_0 + 0.00109971634d0*cos(3.90809347197d0 + 1059.3819301892d0 * t)
        jupiter_b_0 = jupiter_b_0 + 0.00110090358d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_b_0 = jupiter_b_0 + 0.02268615702d0*cos(3.55852606721d0 + 529.6909650946d0 * t)

        jupiter_b_1 = jupiter_b_1 + 1.985777d-05*cos(0.0d0 + 0.0d0 * t)
        jupiter_b_1 = jupiter_b_1 + 2.429728d-05*cos(5.45947255041d0 + 522.5774180938d0 * t)
        jupiter_b_1 = jupiter_b_1 + 2.788602d-05*cos(4.85622679819d0 + 536.8045120954d0 * t)
        jupiter_b_1 = jupiter_b_1 + 7.789905d-05*cos(2.59734071843d0 + 1059.3819301892d0 * t)
        jupiter_b_1 = jupiter_b_1 + 0.00078203446d0*cos(1.52377859742d0 + 529.6909650946d0 * t)
        jupiter_b_1=jupiter_b_1*t;

        jupiter_b_2 = jupiter_b_2 + 5.49832d-05*cos(3.01596270062d0 + 529.6909650946d0 * t)
        jupiter_b_2=jupiter_b_2*t*t;

        r = jupiter_b_2+jupiter_b_1+jupiter_b_0
    end function

    function jupiter_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: jupiter_l_0
        double precision :: jupiter_l_1
        double precision :: jupiter_l_2
        double precision :: jupiter_l_3
        double precision :: jupiter_l_4
        double precision :: jupiter_l_5

        jupiter_l_0 = 0.0
        jupiter_l_1 = 0.0
        jupiter_l_2 = 0.0
        jupiter_l_3 = 0.0
        jupiter_l_4 = 0.0
        jupiter_l_5 = 0.0

        jupiter_l_0 = jupiter_l_0 + 1.431999d-05*cos(4.29685556046d0 + 625.6701923124d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.633223d-05*cos(3.58201833555d0 + 515.463871093d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.722972d-05*cos(3.88036268267d0 + 1265.5674786264d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.764763d-05*cos(2.14148655117d0 + 1066.49547719d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.920945d-05*cos(0.97168196472d0 + 639.897286314d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.028191d-05*cos(1.06376530715d0 + 3.1813937377d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.609999d-05*cos(1.56667394063d0 + 846.0828347512d0 * t)
        jupiter_l_0 = jupiter_l_0 + 3.045023d-05*cos(4.31676431084d0 + 426.598190876d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.647248d-05*cos(4.69958103684d0 + 3.9321532631d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.905396d-05*cos(1.32084470588d0 + 110.2063212194d0 * t)
        jupiter_l_0 = jupiter_l_0 + 5.305285d-05*cos(1.30671216791d0 + 14.2270940016d0 * t)
        jupiter_l_0 = jupiter_l_0 + 5.305441d-05*cos(4.18625634012d0 + 1052.2683831884d0 * t)
        jupiter_l_0 = jupiter_l_0 + 6.114062d-05*cos(4.51319998626d0 + 1162.4747044078d0 * t)
        jupiter_l_0 = jupiter_l_0 + 6.26315d-05*cos(0.02497628807d0 + 213.299095438d0 * t)
        jupiter_l_0 = jupiter_l_0 + 7.368042d-05*cos(5.0810119427d0 + 735.8765135318d0 * t)
        jupiter_l_0 = jupiter_l_0 + 8.246349d-05*cos(3.5822792584d0 + 206.1855484372d0 * t)
        jupiter_l_0 = jupiter_l_0 + 8.768704d-05*cos(3.63000308199d0 + 949.1756089698d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.0001358973d0*cos(5.7748104079d0 + 1589.0728952838d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00027964629d0*cos(1.7845459182d0 + 536.8045120954d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00038857767d0*cos(1.27231755835d0 + 316.3918696566d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00039806064d0*cos(2.29376740788d0 + 419.4846438752d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00064263975d0*cos(3.41145165351d0 + 103.0927742186d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00072903078d0*cos(3.64042916389d0 + 522.5774180938d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00097178296d0*cos(4.14264726552d0 + 632.7837393132d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00306389205d0*cos(5.41734730184d0 + 1059.3819301892d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00573610142d0*cos(1.44406205629d0 + 7.1135470008d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.09695898719d0*cos(5.06191793158d0 + 529.6909650946d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.59954691494d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_l_1 = jupiter_l_1 + 1.003864d-05*cos(3.14841622246d0 + 426.598190876d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.007167d-05*cos(0.46474690033d0 + 735.8765135318d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.09873d-05*cos(5.30705242117d0 + 515.463871093d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.163416d-05*cos(0.51450634873d0 + 3.9321532631d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.174094d-05*cos(5.84238857133d0 + 1052.2683831884d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.295769d-05*cos(5.55132752171d0 + 3.1813937377d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.983502d-05*cos(4.88600705699d0 + 1589.0728952838d0 * t)
        jupiter_l_1 = jupiter_l_1 + 2.211974d-05*cos(5.26766687382d0 + 206.1855484372d0 * t)
        jupiter_l_1 = jupiter_l_1 + 4.237744d-05*cos(5.89008707199d0 + 14.2270940016d0 * t)
        jupiter_l_1 = jupiter_l_1 + 5.433968d-05*cos(3.98480737746d0 + 419.4846438752d0 * t)
        jupiter_l_1 = jupiter_l_1 + 6.067987d-05*cos(4.42422292017d0 + 103.0927742186d0 * t)
        jupiter_l_1 = jupiter_l_1 + 0.00012103653d0*cos(0.16994816098d0 + 536.8045120954d0 * t)
        jupiter_l_1 = jupiter_l_1 + 0.0002072092d0*cos(5.45943156902d0 + 522.5774180938d0 * t)
        jupiter_l_1 = jupiter_l_1 + 0.00030099479d0*cos(4.54540782858d0 + 1059.3819301892d0 * t)
        jupiter_l_1 = jupiter_l_1 + 0.00228917222d0*cos(6.02646855621d0 + 7.1135470008d0 * t)
        jupiter_l_1 = jupiter_l_1 + 0.00489503243d0*cos(4.2208293947d0 + 529.6909650946d0 * t)
        jupiter_l_1 = jupiter_l_1 + 529.69096508814d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_l_1=jupiter_l_1*t;

        jupiter_l_2 = jupiter_l_2 + 1.721046d-05*cos(4.18734600902d0 + 14.2270940016d0 * t)
        jupiter_l_2 = jupiter_l_2 + 2.54744d-05*cos(3.42720888976d0 + 1059.3819301892d0 * t)
        jupiter_l_2 = jupiter_l_2 + 2.728901d-05*cos(4.84555421873d0 + 536.8045120954d0 * t)
        jupiter_l_2 = jupiter_l_2 + 3.189359d-05*cos(1.05515491122d0 + 522.5774180938d0 * t)
        jupiter_l_2 = jupiter_l_2 + 0.00014837605d0*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_l_2 = jupiter_l_2 + 0.00030649436d0*cos(2.929777887d0 + 529.6909650946d0 * t)
        jupiter_l_2 = jupiter_l_2 + 0.00047233601d0*cos(4.32148536482d0 + 7.1135470008d0 * t)
        jupiter_l_2=jupiter_l_2*t*t;

        jupiter_l_3 = jupiter_l_3 + 1.355012d-05*cos(1.34692775915d0 + 529.6909650946d0 * t)
        jupiter_l_3 = jupiter_l_3 + 6.501673d-05*cos(2.5986292365d0 + 7.1135470008d0 * t)
        jupiter_l_3=jupiter_l_3*t*t*t;

        r = jupiter_l_3+jupiter_l_2+jupiter_l_1+jupiter_l_0
    end function

    function jupiter_r(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: jupiter_r_0
        double precision :: jupiter_r_1
        double precision :: jupiter_r_2
        double precision :: jupiter_r_3
        double precision :: jupiter_r_4
        double precision :: jupiter_r_5

        jupiter_r_0 = 0.0
        jupiter_r_1 = 0.0
        jupiter_r_2 = 0.0
        jupiter_r_3 = 0.0
        jupiter_r_4 = 0.0
        jupiter_r_5 = 0.0

        jupiter_r_0 = jupiter_r_0 + 1.014733d-05*cos(1.38675822271d0 + 454.9093665273d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.216895d-05*cos(1.80176263029d0 + 110.2063212194d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.23063d-05*cos(1.89052048109d0 + 323.5054166574d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.479513d-05*cos(2.68021307468d0 + 1478.8665740644d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.610567d-05*cos(3.08871452594d0 + 1368.660252845d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.912009d-05*cos(0.85621128851d0 + 412.3710968744d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.127681d-05*cos(6.12755221002d0 + 742.9900605326d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.499967d-05*cos(4.55181655381d0 + 838.9692877504d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.616976d-05*cos(2.00994012876d0 + 1581.959348283d0 * t)
        jupiter_r_0 = jupiter_r_0 + 3.502493d-05*cos(0.56532365822d0 + 1066.49547719d0 * t)
        jupiter_r_0 = jupiter_r_0 + 4.136822d-05*cos(2.722208724d0 + 625.6701923124d0 * t)
        jupiter_r_0 = jupiter_r_0 + 4.169954d-05*cos(2.01603822251d0 + 515.463871093d0 * t)
        jupiter_r_0 = jupiter_r_0 + 5.477001d-05*cos(5.65729989857d0 + 639.897286314d0 * t)
        jupiter_r_0 = jupiter_r_0 + 6.137703d-05*cos(6.26418240033d0 + 846.0828347512d0 * t)
        jupiter_r_0 = jupiter_r_0 + 7.057931d-05*cos(2.18184839926d0 + 1265.5674786264d0 * t)
        jupiter_r_0 = jupiter_r_0 + 7.894511d-05*cos(2.47907592482d0 + 426.598190876d0 * t)
        jupiter_r_0 = jupiter_r_0 + 9.161393d-05*cos(4.41352953117d0 + 213.299095438d0 * t)
        jupiter_r_0 = jupiter_r_0 + 9.70336d-05*cos(1.90669633585d0 + 206.1855484372d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00012749023d0*cos(2.71550286592d0 + 1052.2683831884d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00013032614d0*cos(2.96042965363d0 + 1162.4747044078d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00022283743d0*cos(4.19362594399d0 + 1589.0728952838d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00023453271d0*cos(3.54023522184d0 + 735.8765135318d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00023947298d0*cos(0.2745803748d0 + 7.1135470008d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00029134542d0*cos(1.67759379655d0 + 103.0927742186d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00030135335d0*cos(2.16132003734d0 + 949.1756089698d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00065517248d0*cos(5.9799588479d0 + 316.3918696566d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00072062974d0*cos(0.21465724607d0 + 536.8045120954d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00086792905d0*cos(0.71001145545d0 + 419.4846438752d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00187647346d0*cos(2.07590383214d0 + 522.5774180938d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00282029458d0*cos(2.57419881293d0 + 632.7837393132d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00610599976d0*cos(3.84115365948d0 + 1059.3819301892d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.25209327119d0*cos(3.49108639871d0 + 529.6909650946d0 * t)
        jupiter_r_0 = jupiter_r_0 + 5.20887429326d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_r_1 = jupiter_r_1 + 1.024703d-05*cos(2.55437897122d0 + 412.3710968744d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.049766d-05*cos(3.16115576687d0 + 213.299095438d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.641093d-05*cos(4.41628521235d0 + 625.6701923124d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.64616d-05*cos(5.30947626153d0 + 1066.49547719d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.100392d-05*cos(3.92772817188d0 + 639.897286314d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.412127d-05*cos(1.46948314626d0 + 426.598190876d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.599925d-05*cos(3.63439058628d0 + 206.1855484372d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.676611d-05*cos(4.33051702874d0 + 1052.2683831884d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.80607d-05*cos(3.74227009702d0 + 515.463871093d0 * t)
        jupiter_r_1 = jupiter_r_1 + 3.175595d-05*cos(2.79298354393d0 + 103.0927742186d0 * t)
        jupiter_r_1 = jupiter_r_1 + 3.203481d-05*cos(5.21084121495d0 + 735.8765135318d0 * t)
        jupiter_r_1 = jupiter_r_1 + 3.403577d-05*cos(3.34689633223d0 + 1589.0728952838d0 * t)
        jupiter_r_1 = jupiter_r_1 + 9.166454d-05*cos(4.75978553741d0 + 7.1135470008d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.00011847263d0*cos(2.41328764459d0 + 419.4846438752d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.00031185171d0*cos(4.88276958012d0 + 536.8045120954d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.00041390269d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.00053443713d0*cos(3.89717383175d0 + 522.5774180938d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.00061661816d0*cos(3.00076460387d0 + 1059.3819301892d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.0127180152d0*cos(2.64937512894d0 + 529.6909650946d0 * t)
        jupiter_r_1=jupiter_r_1*t;

        jupiter_r_2 = jupiter_r_2 + 1.861184d-05*cos(2.97686957956d0 + 7.1135470008d0 * t)
        jupiter_r_2 = jupiter_r_2 + 5.314031d-05*cos(1.83835031247d0 + 1059.3819301892d0 * t)
        jupiter_r_2 = jupiter_r_2 + 7.02994d-05*cos(3.27477392111d0 + 536.8045120954d0 * t)
        jupiter_r_2 = jupiter_r_2 + 8.251645d-05*cos(5.777744604d0 + 522.5774180938d0 * t)
        jupiter_r_2 = jupiter_r_2 + 0.00079644957d0*cos(1.35865949884d0 + 529.6909650946d0 * t)
        jupiter_r_2=jupiter_r_2*t*t;

        jupiter_r_3 = jupiter_r_3 + 1.073281d-05*cos(1.67319166156d0 + 536.8045120954d0 * t)
        jupiter_r_3 = jupiter_r_3 + 3.519277d-05*cos(6.05800355513d0 + 529.6909650946d0 * t)
        jupiter_r_3=jupiter_r_3*t*t*t;

        r = jupiter_r_3+jupiter_r_2+jupiter_r_1+jupiter_r_0
    end function

    function mars_b(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mars_b_0
        double precision :: mars_b_1
        double precision :: mars_b_2
        double precision :: mars_b_3
        double precision :: mars_b_4
        double precision :: mars_b_5

        mars_b_0 = 0.0
        mars_b_1 = 0.0
        mars_b_2 = 0.0
        mars_b_3 = 0.0
        mars_b_4 = 0.0
        mars_b_5 = 0.0

        mars_b_0 = mars_b_0 + 3.4841d-05*cos(4.7881254926d0 + 13362.4497067992d0 * t)
        mars_b_0 = mars_b_0 + 0.00031365539d0*cos(4.4465105309d0 + 10021.8372800994d0 * t)
        mars_b_0 = mars_b_0 + 0.00289104742d0*cos(0.0d0 + 0.0d0 * t)
        mars_b_0 = mars_b_0 + 0.00298033234d0*cos(4.10616996305d0 + 6681.2248533996d0 * t)
        mars_b_0 = mars_b_0 + 0.03197134986d0*cos(3.76832042431d0 + 3340.6124266998d0 * t)

        mars_b_1 = mars_b_1 + 3.320981d-05*cos(2.62947004077d0 + 10021.8372800994d0 * t)
        mars_b_1 = mars_b_1 + 0.00012834709d0*cos(1.60810667915d0 + 6681.2248533996d0 * t)
        mars_b_1 = mars_b_1 + 0.00020976948d0*cos(3.14159265359d0 + 0.0d0 * t)
        mars_b_1 = mars_b_1 + 0.00217310991d0*cos(6.04472194776d0 + 3340.6124266998d0 * t)
        mars_b_1=mars_b_1*t;

        mars_b_2 = mars_b_2 + 2.595393d-05*cos(3.14159265359d0 + 0.0d0 * t)
        mars_b_2 = mars_b_2 + 8.888446d-05*cos(1.06196052751d0 + 3340.6124266998d0 * t)
        mars_b_2=mars_b_2*t*t;

        r = mars_b_2+mars_b_1+mars_b_0
    end function

    function mars_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mars_l_0
        double precision :: mars_l_1
        double precision :: mars_l_2
        double precision :: mars_l_3
        double precision :: mars_l_4
        double precision :: mars_l_5

        mars_l_0 = 0.0
        mars_l_1 = 0.0
        mars_l_2 = 0.0
        mars_l_3 = 0.0
        mars_l_4 = 0.0
        mars_l_5 = 0.0

        mars_l_0 = mars_l_0 + 1.024902d-05*cos(3.69334099279d0 + 8962.4553499102d0 * t)
        mars_l_0 = mars_l_0 + 1.264357d-05*cos(3.62275122593d0 + 5092.1519581158d0 * t)
        mars_l_0 = mars_l_0 + 1.286228d-05*cos(3.06796065034d0 + 2146.1654164752d0 * t)
        mars_l_0 = mars_l_0 + 1.528141d-05*cos(1.14979301996d0 + 6151.533888305d0 * t)
        mars_l_0 = mars_l_0 + 1.546404d-05*cos(2.91579701718d0 + 1751.539531416d0 * t)
        mars_l_0 = mars_l_0 + 1.798806d-05*cos(0.65634057445d0 + 529.6909650946d0 * t)
        mars_l_0 = mars_l_0 + 2.389414d-05*cos(5.03896442664d0 + 796.2980068164d0 * t)
        mars_l_0 = mars_l_0 + 2.579844d-05*cos(0.02996736156d0 + 3344.1355450488d0 * t)
        mars_l_0 = mars_l_0 + 2.628117d-05*cos(0.64806124465d0 + 3337.0893083508d0 * t)
        mars_l_0 = mars_l_0 + 2.937546d-05*cos(6.07893711402d0 + 0.0673103028d0 * t)
        mars_l_0 = mars_l_0 + 3.075252d-05*cos(0.85696614132d0 + 191.4482661116d0 * t)
        mars_l_0 = mars_l_0 + 3.575078d-05*cos(1.6618650571d0 + 2544.3144198834d0 * t)
        mars_l_0 = mars_l_0 + 4.161108d-05*cos(0.22814971327d0 + 2942.4634232916d0 * t)
        mars_l_0 = mars_l_0 + 6.797556d-05*cos(0.36462229657d0 + 398.1490034082d0 * t)
        mars_l_0 = mars_l_0 + 7.774872d-05*cos(3.33968761376d0 + 5621.8429232104d0 * t)
        mars_l_0 = mars_l_0 + 8.715691d-05*cos(6.11005153139d0 + 13362.4497067992d0 * t)
        mars_l_0 = mars_l_0 + 8.926784d-05*cos(4.15697846427d0 + 0.0172536522d0 * t)
        mars_l_0 = mars_l_0 + 0.00010610235d0*cos(2.93958560338d0 + 2281.2304965106d0 * t)
        mars_l_0 = mars_l_0 + 0.00012315897d0*cos(0.84956094002d0 + 2810.9214616052d0 * t)
        mars_l_0 = mars_l_0 + 0.00027744987d0*cos(5.97049513147d0 + 3.523118349d0 * t)
        mars_l_0 = mars_l_0 + 0.00091798406d0*cos(5.75478744667d0 + 10021.8372800994d0 * t)
        mars_l_0 = mars_l_0 + 0.01108216816d0*cos(5.40099836344d0 + 6681.2248533996d0 * t)
        mars_l_0 = mars_l_0 + 0.18656368093d0*cos(5.0503710027d0 + 3340.6124266998d0 * t)
        mars_l_0 = mars_l_0 + 6.20347711581d0*cos(0.0d0 + 0.0d0 * t)

        mars_l_1 = mars_l_1 + 2.586332d-05*cos(4.60670058555d0 + 13362.4497067992d0 * t)
        mars_l_1 = mars_l_1 + 3.452392d-05*cos(4.7321039319d0 + 3.523118349d0 * t)
        mars_l_1 = mars_l_1 + 0.00020622975d0*cos(4.26108844583d0 + 10021.8372800994d0 * t)
        mars_l_1 = mars_l_1 + 0.00168414711d0*cos(3.92318567804d0 + 6681.2248533996d0 * t)
        mars_l_1 = mars_l_1 + 0.01457554523d0*cos(3.60433733236d0 + 3340.6124266998d0 * t)
        mars_l_1 = mars_l_1 + 3340.61242700512d0*cos(0.0d0 + 0.0d0 * t)
        mars_l_1=mars_l_1*t;

        mars_l_2 = mars_l_2 + 2.432575d-05*cos(2.79737979284d0 + 10021.8372800994d0 * t)
        mars_l_2 = mars_l_2 + 0.00013459579d0*cos(2.45738706163d0 + 6681.2248533996d0 * t)
        mars_l_2 = mars_l_2 + 0.00058152577d0*cos(2.04961712429d0 + 3340.6124266998d0 * t)
        mars_l_2=mars_l_2*t*t;

        mars_l_3 = mars_l_3 + 1.467867d-05*cos(0.4442983946d0 + 3340.6124266998d0 * t)
        mars_l_3=mars_l_3*t*t*t;

        r = mars_l_3+mars_l_2+mars_l_1+mars_l_0
    end function

    function mars_r(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mars_r_0
        double precision :: mars_r_1
        double precision :: mars_r_2
        double precision :: mars_r_3
        double precision :: mars_r_4
        double precision :: mars_r_5

        mars_r_0 = 0.0
        mars_r_1 = 0.0
        mars_r_2 = 0.0
        mars_r_3 = 0.0
        mars_r_4 = 0.0
        mars_r_5 = 0.0

        mars_r_0 = mars_r_0 + 1.102816d-05*cos(5.00908403998d0 + 398.1490034082d0 * t)
        mars_r_0 = mars_r_0 + 1.167119d-05*cos(2.11260868341d0 + 5092.1519581158d0 * t)
        mars_r_0 = mars_r_0 + 1.960195d-05*cos(4.74249437639d0 + 3344.1355450488d0 * t)
        mars_r_0 = mars_r_0 + 1.999396d-05*cos(5.36059617709d0 + 3337.0893083508d0 * t)
        mars_r_0 = mars_r_0 + 2.306537d-05*cos(0.09081579001d0 + 2544.3144198834d0 * t)
        mars_r_0 = mars_r_0 + 2.484394d-05*cos(4.9254563992d0 + 2942.4634232916d0 * t)
        mars_r_0 = mars_r_0 + 3.82516d-05*cos(4.49407183687d0 + 13362.4497067992d0 * t)
        mars_r_0 = mars_r_0 + 5.523191d-05*cos(1.3643630377d0 + 2281.2304965106d0 * t)
        mars_r_0 = mars_r_0 + 7.485318d-05*cos(1.77239078402d0 + 5621.8429232104d0 * t)
        mars_r_0 = mars_r_0 + 8.109733d-05*cos(5.55958416318d0 + 2810.9214616052d0 * t)
        mars_r_0 = mars_r_0 + 0.00046179117d0*cos(4.15595316782d0 + 10021.8372800994d0 * t)
        mars_r_0 = mars_r_0 + 0.00660776362d0*cos(3.81783443019d0 + 6681.2248533996d0 * t)
        mars_r_0 = mars_r_0 + 0.1418495316d0*cos(3.47971283528d0 + 3340.6124266998d0 * t)
        mars_r_0 = mars_r_0 + 1.53033488271d0*cos(0.0d0 + 0.0d0 * t)

        mars_r_1 = mars_r_1 + 1.19455d-05*cos(3.04702256206d0 + 13362.4497067992d0 * t)
        mars_r_1 = mars_r_1 + 0.0001081588d0*cos(2.70888095665d0 + 10021.8372800994d0 * t)
        mars_r_1 = mars_r_1 + 0.000128772d0*cos(0.0d0 + 0.0d0 * t)
        mars_r_1 = mars_r_1 + 0.00103175887d0*cos(2.37071847807d0 + 6681.2248533996d0 * t)
        mars_r_1 = mars_r_1 + 0.01107433345d0*cos(2.03250524857d0 + 3340.6124266998d0 * t)
        mars_r_1=mars_r_1*t;

        mars_r_2 = mars_r_2 + 1.274915d-05*cos(1.22593985222d0 + 10021.8372800994d0 * t)
        mars_r_2 = mars_r_2 + 8.138042d-05*cos(0.86998389204d0 + 6681.2248533996d0 * t)
        mars_r_2 = mars_r_2 + 0.00044242249d0*cos(0.47930604954d0 + 3340.6124266998d0 * t)
        mars_r_2=mars_r_2*t*t;

        mars_r_3 = mars_r_3 + 1.113108d-05*cos(5.14987305093d0 + 3340.6124266998d0 * t)
        mars_r_3=mars_r_3*t*t*t;

        r = mars_r_3+mars_r_2+mars_r_1+mars_r_0
    end function

    function mercury_b(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mercury_b_0
        double precision :: mercury_b_1
        double precision :: mercury_b_2
        double precision :: mercury_b_3
        double precision :: mercury_b_4
        double precision :: mercury_b_5

        mercury_b_0 = 0.0
        mercury_b_1 = 0.0
        mercury_b_2 = 0.0
        mercury_b_3 = 0.0
        mercury_b_4 = 0.0
        mercury_b_5 = 0.0

        mercury_b_0 = mercury_b_0 + 2.014189d-05*cos(1.35324164377d0 + 182615.3219910194d0 * t)
        mercury_b_0 = mercury_b_0 + 7.963301d-05*cos(4.60972126127d0 + 156527.41884944518d0 * t)
        mercury_b_0 = mercury_b_0 + 0.00031866927d0*cos(1.58088495658d0 + 130439.51570787099d0 * t)
        mercury_b_0 = mercury_b_0 + 0.0012977877d0*cos(4.83232503958d0 + 104351.61256629678d0 * t)
        mercury_b_0 = mercury_b_0 + 0.0054325181d0*cos(1.79644363964d0 + 78263.70942472259d0 * t)
        mercury_b_0 = mercury_b_0 + 0.01222839532d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_b_0 = mercury_b_0 + 0.02388076996d0*cos(5.03738959686d0 + 52175.8062831484d0 * t)
        mercury_b_0 = mercury_b_0 + 0.11737528961d0*cos(1.98357498767d0 + 26087.9031415742d0 * t)

        mercury_b_1 = mercury_b_1 + 2.890729d-05*cos(0.00943621371d0 + 130439.51570787099d0 * t)
        mercury_b_1 = mercury_b_1 + 8.097508d-05*cos(3.20946389315d0 + 104351.61256629678d0 * t)
        mercury_b_1 = mercury_b_1 + 0.00018772047d0*cos(0.05141288887d0 + 78263.70942472259d0 * t)
        mercury_b_1 = mercury_b_1 + 0.00023970726d0*cos(2.53272082947d0 + 52175.8062831484d0 * t)
        mercury_b_1 = mercury_b_1 + 0.00099737713d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_b_1 = mercury_b_1 + 0.00274646065d0*cos(3.95008450011d0 + 26087.9031415742d0 * t)
        mercury_b_1=mercury_b_1*t;

        mercury_b_2 = mercury_b_2 + 2.047257d-05*cos(0.0d0 + 0.0d0 * t)
        mercury_b_2 = mercury_b_2 + 2.747165d-05*cos(5.24567337999d0 + 26087.9031415742d0 * t)
        mercury_b_2=mercury_b_2*t*t;

        r = mercury_b_2+mercury_b_1+mercury_b_0
    end function

    function mercury_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mercury_l_0
        double precision :: mercury_l_1
        double precision :: mercury_l_2
        double precision :: mercury_l_3
        double precision :: mercury_l_4
        double precision :: mercury_l_5

        mercury_l_0 = 0.0
        mercury_l_1 = 0.0
        mercury_l_2 = 0.0
        mercury_l_3 = 0.0
        mercury_l_4 = 0.0
        mercury_l_5 = 0.0

        mercury_l_0 = mercury_l_0 + 1.017332d-05*cos(0.88031393824d0 + 31749.2351907264d0 * t)
        mercury_l_0 = mercury_l_0 + 1.364681d-05*cos(4.59918328256d0 + 27197.2816936676d0 * t)
        mercury_l_0 = mercury_l_0 + 1.589923d-05*cos(2.9951042356d0 + 25028.521211385d0 * t)
        mercury_l_0 = mercury_l_0 + 1.726011d-05*cos(0.35832267096d0 + 182615.3219910194d0 * t)
        mercury_l_0 = mercury_l_0 + 1.803464d-05*cos(4.10333184211d0 + 5661.3320491522d0 * t)
        mercury_l_0 = mercury_l_0 + 3.559745d-05*cos(1.51202675145d0 + 1109.3785520934d0 * t)
        mercury_l_0 = mercury_l_0 + 7.583476d-05*cos(3.71348404924d0 + 156527.41884944518d0 * t)
        mercury_l_0 = mercury_l_0 + 0.00034561897d0*cos(0.77930768443d0 + 130439.51570787099d0 * t)
        mercury_l_0 = mercury_l_0 + 0.00165590362d0*cos(4.11969163423d0 + 104351.61256629678d0 * t)
        mercury_l_0 = mercury_l_0 + 0.00855346844d0*cos(1.16520322459d0 + 78263.70942472259d0 * t)
        mercury_l_0 = mercury_l_0 + 0.050462942d0*cos(4.47785489551d0 + 52175.8062831484d0 * t)
        mercury_l_0 = mercury_l_0 + 0.40989414977d0*cos(1.48302034195d0 + 26087.9031415742d0 * t)
        mercury_l_0 = mercury_l_0 + 4.40250710144d0*cos(0.0d0 + 0.0d0 * t)

        mercury_l_1 = mercury_l_1 + 1.336324d-05*cos(2.47909947012d0 + 156527.41884944518d0 * t)
        mercury_l_1 = mercury_l_1 + 5.119883d-05*cos(5.79432353574d0 + 130439.51570787099d0 * t)
        mercury_l_1 = mercury_l_1 + 0.00019676525d0*cos(2.80965111777d0 + 104351.61256629678d0 * t)
        mercury_l_1 = mercury_l_1 + 0.00075775081d0*cos(6.08568821653d0 + 78263.70942472259d0 * t)
        mercury_l_1 = mercury_l_1 + 0.00292242298d0*cos(3.04449355541d0 + 52175.8062831484d0 * t)
        mercury_l_1 = mercury_l_1 + 0.01131199811d0*cos(6.21874197797d0 + 26087.9031415742d0 * t)
        mercury_l_1 = mercury_l_1 + 26087.90313685529d0*cos(0.0d0 + 0.0d0 * t)
        mercury_l_1=mercury_l_1*t;

        mercury_l_2 = mercury_l_2 + 1.128209d-05*cos(1.27901273779d0 + 104351.61256629678d0 * t)
        mercury_l_2 = mercury_l_2 + 3.20817d-05*cos(4.49577853102d0 + 78263.70942472259d0 * t)
        mercury_l_2 = mercury_l_2 + 8.123865d-05*cos(1.40305644134d0 + 52175.8062831484d0 * t)
        mercury_l_2 = mercury_l_2 + 0.00016395129d0*cos(4.67759555504d0 + 26087.9031415742d0 * t)
        mercury_l_2=mercury_l_2*t*t;

        r = mercury_l_2+mercury_l_1+mercury_l_0
    end function

    function mercury_r(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mercury_r_0
        double precision :: mercury_r_1
        double precision :: mercury_r_2
        double precision :: mercury_r_3
        double precision :: mercury_r_4
        double precision :: mercury_r_5

        mercury_r_0 = 0.0
        mercury_r_1 = 0.0
        mercury_r_2 = 0.0
        mercury_r_3 = 0.0
        mercury_r_4 = 0.0
        mercury_r_5 = 0.0

        mercury_r_0 = mercury_r_0 + 4.354065d-05*cos(5.82894543774d0 + 130439.51570787099d0 * t)
        mercury_r_0 = mercury_r_0 + 0.00021921969d0*cos(2.77820093972d0 + 104351.61256629678d0 * t)
        mercury_r_0 = mercury_r_0 + 0.00121281764d0*cos(6.01064153797d0 + 78263.70942472259d0 * t)
        mercury_r_0 = mercury_r_0 + 0.00795525558d0*cos(2.95989690104d0 + 52175.8062831484d0 * t)
        mercury_r_0 = mercury_r_0 + 0.07834131818d0*cos(6.19233722598d0 + 26087.9031415742d0 * t)
        mercury_r_0 = mercury_r_0 + 0.39528271651d0*cos(0.0d0 + 0.0d0 * t)

        mercury_r_1 = mercury_r_1 + 1.624367d-05*cos(0.0d0 + 0.0d0 * t)
        mercury_r_1 = mercury_r_1 + 2.432805d-05*cos(1.24226083323d0 + 104351.61256629678d0 * t)
        mercury_r_1 = mercury_r_1 + 0.00010094479d0*cos(4.47466326327d0 + 78263.70942472259d0 * t)
        mercury_r_1 = mercury_r_1 + 0.00044141826d0*cos(1.42385544001d0 + 52175.8062831484d0 * t)
        mercury_r_1 = mercury_r_1 + 0.0021734774d0*cos(4.65617158665d0 + 26087.9031415742d0 * t)
        mercury_r_1=mercury_r_1*t;

        mercury_r_2 = mercury_r_2 + 1.245397d-05*cos(6.1518331681d0 + 52175.8062831484d0 * t)
        mercury_r_2 = mercury_r_2 + 3.117867d-05*cos(3.08231840294d0 + 26087.9031415742d0 * t)
        mercury_r_2=mercury_r_2*t*t;

        r = mercury_r_2+mercury_r_1+mercury_r_0
    end function

    function neptune_b(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: neptune_b_0
        double precision :: neptune_b_1
        double precision :: neptune_b_2
        double precision :: neptune_b_3
        double precision :: neptune_b_4
        double precision :: neptune_b_5

        neptune_b_0 = 0.0
        neptune_b_1 = 0.0
        neptune_b_2 = 0.0
        neptune_b_3 = 0.0
        neptune_b_4 = 0.0
        neptune_b_5 = 0.0

        neptune_b_0 = neptune_b_0 + 1.015137d-05*cos(3.21560997434d0 + 35.1640902212d0 * t)
        neptune_b_0 = neptune_b_0 + 1.96754d-05*cos(4.37778196626d0 + 1.4844727083d0 * t)
        neptune_b_0 = neptune_b_0 + 1.999918d-05*cos(1.50998668632d0 + 74.7815985673d0 * t)
        neptune_b_0 = neptune_b_0 + 0.00015355489d0*cos(2.52123799551d0 + 36.6485629295d0 * t)
        neptune_b_0 = neptune_b_0 + 0.00015448133d0*cos(3.50877079215d0 + 39.6175083461d0 * t)
        neptune_b_0 = neptune_b_0 + 0.00027623609d0*cos(0.0d0 + 0.0d0 * t)
        neptune_b_0 = neptune_b_0 + 0.00027780087d0*cos(5.91271884599d0 + 76.2660712756d0 * t)
        neptune_b_0 = neptune_b_0 + 0.03088622933d0*cos(1.44104372644d0 + 38.1330356378d0 * t)

        neptune_b_1 = neptune_b_1 + 5.150897d-05*cos(2.14270496419d0 + 38.1330356378d0 * t)
        neptune_b_1=neptune_b_1*t;

        r = neptune_b_1+neptune_b_0
    end function

    function neptune_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: neptune_l_0
        double precision :: neptune_l_1
        double precision :: neptune_l_2
        double precision :: neptune_l_3
        double precision :: neptune_l_4
        double precision :: neptune_l_5

        neptune_l_0 = 0.0
        neptune_l_1 = 0.0
        neptune_l_2 = 0.0
        neptune_l_3 = 0.0
        neptune_l_4 = 0.0
        neptune_l_5 = 0.0

        neptune_l_0 = neptune_l_0 + 1.433516d-05*cos(2.78339802539d0 + 74.7815985673d0 * t)
        neptune_l_0 = neptune_l_0 + 2.2848d-05*cos(4.20606949415d0 + 4.4534181249d0 * t)
        neptune_l_0 = neptune_l_0 + 3.364807d-05*cos(1.03590060915d0 + 33.6796175129d0 * t)
        neptune_l_0 = neptune_l_0 + 4.216242d-05*cos(1.98711875978d0 + 73.297125859d0 * t)
        neptune_l_0 = neptune_l_0 + 8.99425d-05*cos(0.27462171806d0 + 175.1660598002d0 * t)
        neptune_l_0 = neptune_l_0 + 9.198584d-05*cos(4.93747051954d0 + 39.6175083461d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00016482741d0*cos(7.727998d-05 + 491.5579294568d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00033784738d0*cos(1.24488874087d0 + 76.2660712756d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00037714584d0*cos(6.09221808686d0 + 35.1640902212d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00042064466d0*cos(5.41054993053d0 + 2.9689454166d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00124531845d0*cos(4.83008090676d0 + 36.6485629295d0 * t)
        neptune_l_0 = neptune_l_0 + 0.01019727652d0*cos(0.48580922867d0 + 1.4844727083d0 * t)
        neptune_l_0 = neptune_l_0 + 0.0179847553d0*cos(2.9010127389d0 + 38.1330356378d0 * t)
        neptune_l_0 = neptune_l_0 + 5.31188633046d0*cos(0.0d0 + 0.0d0 * t)

        neptune_l_1 = neptune_l_1 + 1.306261d-05*cos(3.6728520962d0 + 2.9689454166d0 * t)
        neptune_l_1 = neptune_l_1 + 0.00015744045d0*cos(2.27887427527d0 + 38.1330356378d0 * t)
        neptune_l_1 = neptune_l_1 + 0.00016604172d0*cos(4.86323329249d0 + 1.4844727083d0 * t)
        neptune_l_1 = neptune_l_1 + 38.13303563957d0*cos(0.0d0 + 0.0d0 * t)
        neptune_l_1=neptune_l_1*t;

        r = neptune_l_1+neptune_l_0
    end function

    function neptune_r(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: neptune_r_0
        double precision :: neptune_r_1
        double precision :: neptune_r_2
        double precision :: neptune_r_3
        double precision :: neptune_r_4
        double precision :: neptune_r_5

        neptune_r_0 = 0.0
        neptune_r_1 = 0.0
        neptune_r_2 = 0.0
        neptune_r_3 = 0.0
        neptune_r_4 = 0.0
        neptune_r_5 = 0.0

        neptune_r_0 = neptune_r_0 + 1.128278d-05*cos(5.96666460978d0 + 9.5612275556d0 * t)
        neptune_r_0 = neptune_r_0 + 1.228058d-05*cos(1.59915900158d0 + 77.7505439839d0 * t)
        neptune_r_0 = neptune_r_0 + 1.397976d-05*cos(0.76199761055d0 + 176.6505325085d0 * t)
        neptune_r_0 = neptune_r_0 + 1.402764d-05*cos(6.07659120736d0 + 173.6815870919d0 * t)
        neptune_r_0 = neptune_r_0 + 1.403029d-05*cos(4.58914203187d0 + 498.6714764576d0 * t)
        neptune_r_0 = neptune_r_0 + 1.434507d-05*cos(1.69985856533d0 + 484.444382456d0 * t)
        neptune_r_0 = neptune_r_0 + 1.499989d-05*cos(1.01619882251d0 + 219.891377577d0 * t)
        neptune_r_0 = neptune_r_0 + 1.653525d-05*cos(1.9278198756d0 + 145.1097790097d0 * t)
        neptune_r_0 = neptune_r_0 + 1.904055d-05*cos(1.72165893329d0 + 182.279606801d0 * t)
        neptune_r_0 = neptune_r_0 + 1.976522d-05*cos(5.1170304456d0 + 168.0525127994d0 * t)
        neptune_r_0 = neptune_r_0 + 2.085926d-05*cos(0.61853857468d0 + 33.9402499438d0 * t)
        neptune_r_0 = neptune_r_0 + 2.306505d-05*cos(2.80964587883d0 + 70.3281804424d0 * t)
        neptune_r_0 = neptune_r_0 + 2.522868d-05*cos(0.48612122962d0 + 493.0424021651d0 * t)
        neptune_r_0 = neptune_r_0 + 2.529939d-05*cos(5.79822254729d0 + 490.0734567485d0 * t)
        neptune_r_0 = neptune_r_0 + 2.635535d-05*cos(3.09755951044d0 + 213.299095438d0 * t)
        neptune_r_0 = neptune_r_0 + 2.877511d-05*cos(3.67417203197d0 + 350.3321196004d0 * t)
        neptune_r_0 = neptune_r_0 + 2.879755d-05*cos(1.98627174527d0 + 137.0330241624d0 * t)
        neptune_r_0 = neptune_r_0 + 3.381113d-05*cos(0.84810966225d0 + 183.2428146475d0 * t)
        neptune_r_0 = neptune_r_0 + 4.269595d-05*cos(3.4133352687d0 + 453.424893819d0 * t)
        neptune_r_0 = neptune_r_0 + 4.353588d-05*cos(0.67984856103d0 + 32.1951448046d0 * t)
        neptune_r_0 = neptune_r_0 + 4.420549d-05*cos(1.74990681127d0 + 108.4612160802d0 * t)
        neptune_r_0 = neptune_r_0 + 4.483493d-05*cos(2.90573464537d0 + 529.6909650946d0 * t)
        neptune_r_0 = neptune_r_0 + 4.84021d-05*cos(1.90681013048d0 + 41.1019810544d0 * t)
        neptune_r_0 = neptune_r_0 + 5.720872d-05*cos(2.59061733345d0 + 4.4534181249d0 * t)
        neptune_r_0 = neptune_r_0 + 7.571796d-05*cos(1.07149207335d0 + 388.4651552382d0 * t)
        neptune_r_0 = neptune_r_0 + 8.394349d-05*cos(0.67818233586d0 + 146.594251718d0 * t)
        neptune_r_0 = neptune_r_0 + 0.0001201232d0*cos(1.92059384991d0 + 1021.2488945514d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00014229808d0*cos(1.07785898723d0 + 74.7815985673d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00016939478d0*cos(1.59422512526d0 + 71.8126531507d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00024594531d0*cos(0.50801745878d0 + 109.9456887885d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00046687836d0*cos(5.74938034313d0 + 33.6796175129d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00069791331d0*cos(3.79616637768d0 + 2.9689454166d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00100896068d0*cos(0.3770272493d0 + 73.297125859d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00121801746d0*cos(5.79754470298d0 + 76.2660712756d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00135134092d0*cos(3.37220609835d0 + 39.6175083461d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00274571975d0*cos(1.84552258866d0 + 175.1660598002d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00495725141d0*cos(1.5710564165d0 + 491.5579294568d0 * t)
        neptune_r_0 = neptune_r_0 + 0.0053776051d0*cos(4.52113935896d0 + 35.1640902212d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00807830553d0*cos(5.18592878704d0 + 1.4844727083d0 * t)
        neptune_r_0 = neptune_r_0 + 0.01691764014d0*cos(3.25186135653d0 + 36.6485629295d0 * t)
        neptune_r_0 = neptune_r_0 + 0.27062259632d0*cos(1.32999459377d0 + 38.1330356378d0 * t)
        neptune_r_0 = neptune_r_0 + 30.07013205828d0*cos(0.0d0 + 0.0d0 * t)

        neptune_r_1 = neptune_r_1 + 1.135663d-05*cos(3.91905853528d0 + 36.6485629295d0 * t)
        neptune_r_1 = neptune_r_1 + 1.463314d-05*cos(1.18410155089d0 + 33.6796175129d0 * t)
        neptune_r_1 = neptune_r_1 + 1.603164d-05*cos(0.0d0 + 0.0d0 * t)
        neptune_r_1 = neptune_r_1 + 2.15306d-05*cos(5.16877044933d0 + 76.2660712756d0 * t)
        neptune_r_1 = neptune_r_1 + 2.15417d-05*cos(2.0943033339d0 + 2.9689454166d0 * t)
        neptune_r_1 = neptune_r_1 + 2.701587d-05*cos(1.88124996531d0 + 39.6175083461d0 * t)
        neptune_r_1 = neptune_r_1 + 8.621779d-05*cos(6.21626927537d0 + 35.1640902212d0 * t)
        neptune_r_1 = neptune_r_1 + 0.00013220034d0*cos(3.3201438793d0 + 1.4844727083d0 * t)
        neptune_r_1 = neptune_r_1 + 0.00236338618d0*cos(0.70497954792d0 + 38.1330356378d0 * t)
        neptune_r_1=neptune_r_1*t;

        neptune_r_2 = neptune_r_2 + 4.247776d-05*cos(5.89911844921d0 + 38.1330356378d0 * t)
        neptune_r_2=neptune_r_2*t*t;

        r = neptune_r_2+neptune_r_1+neptune_r_0
    end function

    function saturn_b(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: saturn_b_0
        double precision :: saturn_b_1
        double precision :: saturn_b_2
        double precision :: saturn_b_3
        double precision :: saturn_b_4
        double precision :: saturn_b_5

        saturn_b_0 = 0.0
        saturn_b_1 = 0.0
        saturn_b_2 = 0.0
        saturn_b_3 = 0.0
        saturn_b_4 = 0.0
        saturn_b_5 = 0.0

        saturn_b_0 = saturn_b_0 + 1.060298d-05*cos(5.6309929646d0 + 529.6909650946d0 * t)
        saturn_b_0 = saturn_b_0 + 1.506129d-05*cos(6.01304519391d0 + 103.0927742186d0 * t)
        saturn_b_0 = saturn_b_0 + 3.432125d-05*cos(2.732557466d0 + 433.7117378768d0 * t)
        saturn_b_0 = saturn_b_0 + 4.788392d-05*cos(4.96512926584d0 + 110.2063212194d0 * t)
        saturn_b_0 = saturn_b_0 + 4.807588d-05*cos(5.43305312061d0 + 316.3918696566d0 * t)
        saturn_b_0 = saturn_b_0 + 6.993564d-05*cos(4.7360468972d0 + 7.1135470008d0 * t)
        saturn_b_0 = saturn_b_0 + 9.916667d-05*cos(5.79003188904d0 + 419.4846438752d0 * t)
        saturn_b_0 = saturn_b_0 + 0.0001473407d0*cos(2.11846596715d0 + 639.897286314d0 * t)
        saturn_b_0 = saturn_b_0 + 0.00030863357d0*cos(3.48441504555d0 + 220.4126424388d0 * t)
        saturn_b_0 = saturn_b_0 + 0.00034116062d0*cos(0.57297307557d0 + 206.1855484372d0 * t)
        saturn_b_0 = saturn_b_0 + 0.00084745939d0*cos(0.0d0 + 0.0d0 * t)
        saturn_b_0 = saturn_b_0 + 0.00240348302d0*cos(2.85238489373d0 + 426.598190876d0 * t)
        saturn_b_0 = saturn_b_0 + 0.04330678039d0*cos(3.60284428399d0 + 213.299095438d0 * t)

        saturn_b_1 = saturn_b_1 + 1.580666d-05*cos(3.08171717435d0 + 7.1135470008d0 * t)
        saturn_b_1 = saturn_b_1 + 1.584712d-05*cos(0.9341639713d0 + 433.7117378768d0 * t)
        saturn_b_1 = saturn_b_1 + 2.900519d-05*cos(6.17033461979d0 + 639.897286314d0 * t)
        saturn_b_1 = saturn_b_1 + 3.243428d-05*cos(1.21094033148d0 + 419.4846438752d0 * t)
        saturn_b_1 = saturn_b_1 + 0.00010919721d0*cos(1.79463271368d0 + 220.4126424388d0 * t)
        saturn_b_1 = saturn_b_1 + 0.00013320265d0*cos(2.26481519893d0 + 206.1855484372d0 * t)
        saturn_b_1 = saturn_b_1 + 0.00017966989d0*cos(0.5197943111d0 + 426.598190876d0 * t)
        saturn_b_1 = saturn_b_1 + 0.00036947916d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_b_1 = saturn_b_1 + 0.00198927992d0*cos(4.93901017903d0 + 213.299095438d0 * t)
        saturn_b_1=saturn_b_1*t;

        saturn_b_2 = saturn_b_2 + 1.452574d-05*cos(5.48867576013d0 + 426.598190876d0 * t)
        saturn_b_2 = saturn_b_2 + 2.081666d-05*cos(0.09631968077d0 + 220.4126424388d0 * t)
        saturn_b_2 = saturn_b_2 + 3.075713d-05*cos(3.9161093762d0 + 206.1855484372d0 * t)
        saturn_b_2 = saturn_b_2 + 0.00013884264d0*cos(0.08994998691d0 + 213.299095438d0 * t)
        saturn_b_2=saturn_b_2*t*t;

        r = saturn_b_2+saturn_b_1+saturn_b_0
    end function

    function saturn_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: saturn_l_0
        double precision :: saturn_l_1
        double precision :: saturn_l_2
        double precision :: saturn_l_3
        double precision :: saturn_l_4
        double precision :: saturn_l_5

        saturn_l_0 = 0.0
        saturn_l_1 = 0.0
        saturn_l_2 = 0.0
        saturn_l_3 = 0.0
        saturn_l_4 = 0.0
        saturn_l_5 = 0.0

        saturn_l_0 = saturn_l_0 + 1.017275d-05*cos(3.71700135395d0 + 227.5261894396d0 * t)
        saturn_l_0 = saturn_l_0 + 1.087229d-05*cos(4.1834325756d0 + 2.4476805548d0 * t)
        saturn_l_0 = saturn_l_0 + 1.123498d-05*cos(2.83726798446d0 + 415.5524906121d0 * t)
        saturn_l_0 = saturn_l_0 + 1.391327d-05*cos(4.02333150505d0 + 323.5054166574d0 * t)
        saturn_l_0 = saturn_l_0 + 1.580648d-05*cos(4.37265307169d0 + 309.2783226558d0 * t)
        saturn_l_0 = saturn_l_0 + 1.640172d-05*cos(5.5050445305d0 + 846.0828347512d0 * t)
        saturn_l_0 = saturn_l_0 + 1.758145d-05*cos(3.2658010994d0 + 522.5774180938d0 * t)
        saturn_l_0 = saturn_l_0 + 2.461186d-05*cos(2.03163875071d0 + 735.8765135318d0 * t)
        saturn_l_0 = saturn_l_0 + 2.953796d-05*cos(0.98280366998d0 + 95.9792272178d0 * t)
        saturn_l_0 = saturn_l_0 + 3.269484d-05*cos(0.77492638211d0 + 949.1756089698d0 * t)
        saturn_l_0 = saturn_l_0 + 3.87367d-05*cos(3.22283226966d0 + 138.5174968707d0 * t)
        saturn_l_0 = saturn_l_0 + 4.005867d-05*cos(2.24479718502d0 + 63.7358983034d0 * t)
        saturn_l_0 = saturn_l_0 + 4.59255d-05*cos(0.61977744975d0 + 199.0720014364d0 * t)
        saturn_l_0 = saturn_l_0 + 5.019687d-05*cos(3.17787728405d0 + 433.7117378768d0 * t)
        saturn_l_0 = saturn_l_0 + 5.227757d-05*cos(4.20783365759d0 + 3.1813937377d0 * t)
        saturn_l_0 = saturn_l_0 + 5.863206d-05*cos(0.23656938524d0 + 529.6909650946d0 * t)
        saturn_l_0 = saturn_l_0 + 6.126317d-05*cos(1.76328667907d0 + 277.0349937414d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00010725067d0*cos(3.12939523827d0 + 202.2533951741d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00013005299d0*cos(5.98119023644d0 + 11.0457002639d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00013160301d0*cos(4.44891291899d0 + 14.2270940016d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00014609559d0*cos(1.56518472d0 + 3.9321532631d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00014906995d0*cos(5.76903183869d0 + 316.3918696566d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00015053543d0*cos(2.71669915667d0 + 639.897286314d0 * t)
        saturn_l_0 = saturn_l_0 + 0.0001582029d0*cos(0.93809155235d0 + 632.7837393132d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00016573588d0*cos(0.43719228296d0 + 419.4846438752d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00023990355d0*cos(4.66976924553d0 + 110.2063212194d0 * t)
        saturn_l_0 = saturn_l_0 + 0.000792713d0*cos(3.84007056878d0 + 220.4126424388d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00206816305d0*cos(0.24658372002d0 + 103.0927742186d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00350769243d0*cos(3.30329907896d0 + 426.598190876d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00398379389d0*cos(0.52112032699d0 + 206.1855484372d0 * t)
        saturn_l_0 = saturn_l_0 + 0.01414150957d0*cos(4.58581516874d0 + 7.1135470008d0 * t)
        saturn_l_0 = saturn_l_0 + 0.11107659762d0*cos(3.96205090159d0 + 213.299095438d0 * t)
        saturn_l_0 = saturn_l_0 + 0.87401354025d0*cos(0.0d0 + 0.0d0 * t)

        saturn_l_1 = saturn_l_1 + 1.249468d-05*cos(2.62810757084d0 + 95.9792272178d0 * t)
        saturn_l_1 = saturn_l_1 + 1.953179d-05*cos(3.56378136497d0 + 11.0457002639d0 * t)
        saturn_l_1 = saturn_l_1 + 3.071405d-05*cos(2.32739504783d0 + 199.0720014364d0 * t)
        saturn_l_1 = saturn_l_1 + 3.231693d-05*cos(1.26149969158d0 + 433.7117378768d0 * t)
        saturn_l_1 = saturn_l_1 + 3.384691d-05*cos(2.41694503459d0 + 3.1813937377d0 * t)
        saturn_l_1 = saturn_l_1 + 3.768635d-05*cos(3.6496533078d0 + 3.9321532631d0 * t)
        saturn_l_1 = saturn_l_1 + 4.056892d-05*cos(2.92133209468d0 + 110.2063212194d0 * t)
        saturn_l_1 = saturn_l_1 + 4.848994d-05*cos(2.43037610229d0 + 419.4846438752d0 * t)
        saturn_l_1 = saturn_l_1 + 6.416106d-05*cos(0.38238295041d0 + 639.897286314d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00010511678d0*cos(2.7488034213d0 + 14.2270940016d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00019941774d0*cos(1.2795439047d0 + 103.0927742186d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00040244455d0*cos(2.04108104671d0 + 220.4126424388d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00093734369d0*cos(1.06311793502d0 + 426.598190876d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00107674962d0*cos(2.27769131009d0 + 206.1855484372d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00564345393d0*cos(2.88499717272d0 + 7.1135470008d0 * t)
        saturn_l_1 = saturn_l_1 + 0.01297370862d0*cos(1.82834923978d0 + 213.299095438d0 * t)
        saturn_l_1 = saturn_l_1 + 213.2990952169d0*cos(0.0d0 + 0.0d0 * t)
        saturn_l_1=saturn_l_1*t;

        saturn_l_2 = saturn_l_2 + 1.020102d-05*cos(0.6336845725d0 + 3.1813937377d0 * t)
        saturn_l_2 = saturn_l_2 + 1.044759d-05*cos(4.04202827818d0 + 199.0720014364d0 * t)
        saturn_l_2 = saturn_l_2 + 1.061494d-05*cos(5.68896768215d0 + 433.7117378768d0 * t)
        saturn_l_2 = saturn_l_2 + 1.142595d-05*cos(4.63711665368d0 + 639.897286314d0 * t)
        saturn_l_2 = saturn_l_2 + 1.215447d-05*cos(2.91866579609d0 + 103.0927742186d0 * t)
        saturn_l_2 = saturn_l_2 + 4.265404d-05*cos(1.04596041482d0 + 14.2270940016d0 * t)
        saturn_l_2 = saturn_l_2 + 0.0001062983d0*cos(0.25764306189d0 + 220.4126424388d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00010987259d0*cos(5.4447918831d0 + 426.598190876d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00015274496d0*cos(4.06493179167d0 + 206.1855484372d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00036661728d0*cos(0.0d0 + 0.0d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00091841837d0*cos(0.0732519584d0 + 213.299095438d0 * t)
        saturn_l_2 = saturn_l_2 + 0.0011644133d0*cos(1.17988132879d0 + 7.1135470008d0 * t)
        saturn_l_2=saturn_l_2*t*t;

        saturn_l_3 = saturn_l_3 + 1.044765d-05*cos(3.57813061587d0 + 426.598190876d0 * t)
        saturn_l_3 = saturn_l_3 + 1.162062d-05*cos(5.61974313217d0 + 14.2270940016d0 * t)
        saturn_l_3 = saturn_l_3 + 1.464959d-05*cos(5.91328884284d0 + 206.1855484372d0 * t)
        saturn_l_3 = saturn_l_3 + 1.906379d-05*cos(4.7607084357d0 + 220.4126424388d0 * t)
        saturn_l_3 = saturn_l_3 + 4.254737d-05*cos(4.58877599687d0 + 213.299095438d0 * t)
        saturn_l_3 = saturn_l_3 + 0.00016038732d0*cos(5.73945573267d0 + 7.1135470008d0 * t)
        saturn_l_3=saturn_l_3*t*t*t;

        saturn_l_4 = saturn_l_4 + 1.661877d-05*cos(3.99824447634d0 + 7.1135470008d0 * t)
        saturn_l_4=saturn_l_4*t*t*t*t;

        r = saturn_l_4+saturn_l_3+saturn_l_2+saturn_l_1+saturn_l_0
    end function

    function saturn_r(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: saturn_r_0
        double precision :: saturn_r_1
        double precision :: saturn_r_2
        double precision :: saturn_r_3
        double precision :: saturn_r_4
        double precision :: saturn_r_5

        saturn_r_0 = 0.0
        saturn_r_1 = 0.0
        saturn_r_2 = 0.0
        saturn_r_3 = 0.0
        saturn_r_4 = 0.0
        saturn_r_5 = 0.0

        saturn_r_0 = saturn_r_0 + 1.020836d-05*cos(5.912164079d0 + 1685.0521225016d0 * t)
        saturn_r_0 = saturn_r_0 + 1.071373d-05*cos(1.13559402672d0 + 1155.361157407d0 * t)
        saturn_r_0 = saturn_r_0 + 1.099067d-05*cos(1.81772713286d0 + 149.5631971346d0 * t)
        saturn_r_0 = saturn_r_0 + 1.12666d-05*cos(4.46695542616d0 + 265.9892934775d0 * t)
        saturn_r_0 = saturn_r_0 + 1.149625d-05*cos(5.74018465658d0 + 1162.4747044078d0 * t)
        saturn_r_0 = saturn_r_0 + 1.207069d-05*cos(0.75304212507d0 + 351.8165923087d0 * t)
        saturn_r_0 = saturn_r_0 + 1.277624d-05*cos(2.98416387533d0 + 1059.3819301892d0 * t)
        saturn_r_0 = saturn_r_0 + 1.295446d-05*cos(4.69181789263d0 + 1898.3512179396d0 * t)
        saturn_r_0 = saturn_r_0 + 1.304238d-05*cos(0.77242217158d0 + 647.0108333148d0 * t)
        saturn_r_0 = saturn_r_0 + 1.314853d-05*cos(5.11211291628d0 + 211.8146227297d0 * t)
        saturn_r_0 = saturn_r_0 + 1.395118d-05*cos(5.93681366484d0 + 127.4717966068d0 * t)
        saturn_r_0 = saturn_r_0 + 1.462651d-05*cos(1.92592107843d0 + 216.4804891757d0 * t)
        saturn_r_0 = saturn_r_0 + 1.472651d-05*cos(1.40074361969d0 + 137.0330241624d0 * t)
        saturn_r_0 = saturn_r_0 + 1.474674d-05*cos(5.67670456599d0 + 203.7378678824d0 * t)
        saturn_r_0 = saturn_r_0 + 1.610962d-05*cos(1.17294612833d0 + 74.7815985673d0 * t)
        saturn_r_0 = saturn_r_0 + 1.740284d-05*cos(2.34658553206d0 + 309.2783226558d0 * t)
        saturn_r_0 = saturn_r_0 + 1.781073d-05*cos(0.76321113173d0 + 217.2312487011d0 * t)
        saturn_r_0 = saturn_r_0 + 1.817173d-05*cos(5.77721016746d0 + 490.3340891794d0 * t)
        saturn_r_0 = saturn_r_0 + 1.861491d-05*cos(5.93369815396d0 + 625.6701923124d0 * t)
        saturn_r_0 = saturn_r_0 + 1.888373d-05*cos(0.02965674854d0 + 3.9321532631d0 * t)
        saturn_r_0 = saturn_r_0 + 2.024755d-05*cos(5.05404443168d0 + 11.0457002639d0 * t)
        saturn_r_0 = saturn_r_0 + 2.173933d-05*cos(0.01504273441d0 + 340.7708920448d0 * t)
        saturn_r_0 = saturn_r_0 + 2.406134d-05*cos(2.96557066697d0 + 117.3198682202d0 * t)
        saturn_r_0 = saturn_r_0 + 2.448261d-05*cos(6.18411000897d0 + 1368.660252845d0 * t)
        saturn_r_0 = saturn_r_0 + 2.507656d-05*cos(3.53854849756d0 + 742.9900605326d0 * t)
        saturn_r_0 = saturn_r_0 + 2.8811d-05*cos(0.17962517668d0 + 853.196381752d0 * t)
        saturn_r_0 = saturn_r_0 + 2.885428d-05*cos(1.38764476428d0 + 838.9692877504d0 * t)
        saturn_r_0 = saturn_r_0 + 2.975955d-05*cos(5.6846913175d0 + 210.1177017003d0 * t)
        saturn_r_0 = saturn_r_0 + 3.376576d-05*cos(3.69526804193d0 + 224.3447957019d0 * t)
        saturn_r_0 = saturn_r_0 + 3.400702d-05*cos(0.55385265588d0 + 350.3321196004d0 * t)
        saturn_r_0 = saturn_r_0 + 3.419618d-05*cos(4.94550542171d0 + 1581.959348283d0 * t)
        saturn_r_0 = saturn_r_0 + 3.460944d-05*cos(1.8508869805d0 + 175.1660598002d0 * t)
        saturn_r_0 = saturn_r_0 + 3.688237d-05*cos(0.78017261355d0 + 412.3710968744d0 * t)
        saturn_r_0 = saturn_r_0 + 4.044055d-05*cos(1.64006628713d0 + 209.3669421749d0 * t)
        saturn_r_0 = saturn_r_0 + 4.695487d-05*cos(2.14913875148d0 + 227.5261894396d0 * t)
        saturn_r_0 = saturn_r_0 + 5.30742d-05*cos(0.597422002d0 + 63.7358983034d0 * t)
        saturn_r_0 = saturn_r_0 + 5.850459d-05*cos(1.45520063003d0 + 415.5524906121d0 * t)
        saturn_r_0 = saturn_r_0 + 6.465823d-05*cos(0.17732249942d0 + 1052.2683831884d0 * t)
        saturn_r_0 = saturn_r_0 + 6.770608d-05*cos(3.00432308205d0 + 14.2270940016d0 * t)
        saturn_r_0 = saturn_r_0 + 7.752664d-05*cos(5.85190720634d0 + 95.9792272178d0 * t)
        saturn_r_0 = saturn_r_0 + 9.796004d-05*cos(5.20477537945d0 + 1265.5674786264d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00011380257d0*cos(1.7310542704d0 + 522.5774180938d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00011993338d0*cos(5.98050967385d0 + 846.0828347512d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00012884624d0*cos(1.64890652873d0 + 138.5174968707d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00014296484d0*cos(2.60433479142d0 + 323.5054166574d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00015298404d0*cos(3.0594381494d0 + 529.6909650946d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00020746751d0*cos(5.33255457763d0 + 199.0720014364d0 * t)
        saturn_r_0 = saturn_r_0 + 0.000208393d0*cos(1.52102476129d0 + 433.7117378768d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00020936596d0*cos(0.46349251129d0 + 735.8765135318d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00032401773d0*cos(5.47084567016d0 + 949.1756089698d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00034143772d0*cos(0.19519102597d0 + 277.0349937414d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00048913294d0*cos(1.55733638681d0 + 202.2533951741d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00061053367d0*cos(0.94037691801d0 + 639.897286314d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00069006962d0*cos(5.94099540992d0 + 419.4846438752d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00108974848d0*cos(3.29313390175d0 + 110.2063212194d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00140617506d0*cos(5.70406606781d0 + 632.7837393132d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00361778765d0*cos(3.13904301847d0 + 7.1135470008d0 * t)
        saturn_r_0 = saturn_r_0 + 0.0037168465d0*cos(2.27114821115d0 + 220.4126424388d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00547506923d0*cos(5.0153261898d0 + 103.0927742186d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00821891141d0*cos(5.93520042303d0 + 316.3918696566d0 * t)
        saturn_r_0 = saturn_r_0 + 0.01464663929d0*cos(1.64763042902d0 + 426.598190876d0 * t)
        saturn_r_0 = saturn_r_0 + 0.01873679867d0*cos(5.2354960466d0 + 206.1855484372d0 * t)
        saturn_r_0 = saturn_r_0 + 0.52921382865d0*cos(2.39226219573d0 + 213.299095438d0 * t)
        saturn_r_0 = saturn_r_0 + 9.55758135486d0*cos(0.0d0 + 0.0d0 * t)

        saturn_r_1 = saturn_r_1 + 1.090827d-05*cos(0.07529636493d0 + 216.4804891757d0 * t)
        saturn_r_1 = saturn_r_1 + 1.202869d-05*cos(1.86661895487d0 + 316.3918696566d0 * t)
        saturn_r_1 = saturn_r_1 + 1.315459d-05*cos(1.25295611814d0 + 117.3198682202d0 * t)
        saturn_r_1 = saturn_r_1 + 1.339521d-05*cos(4.30812522038d0 + 853.196381752d0 * t)
        saturn_r_1 = saturn_r_1 + 1.581782d-05*cos(1.29189091556d0 + 210.1177017003d0 * t)
        saturn_r_1 = saturn_r_1 + 1.941443d-05*cos(6.02392296904d0 + 209.3669421749d0 * t)
        saturn_r_1 = saturn_r_1 + 1.987731d-05*cos(2.45053765034d0 + 412.3710968744d0 * t)
        saturn_r_1 = saturn_r_1 + 2.856066d-05*cos(2.1673128387d0 + 735.8765135318d0 * t)
        saturn_r_1 = saturn_r_1 + 2.90954d-05*cos(4.60680719251d0 + 202.2533951741d0 * t)
        saturn_r_1 = saturn_r_1 + 3.08141d-05*cos(3.43662543526d0 + 522.5774180938d0 * t)
        saturn_r_1 = saturn_r_1 + 3.252331d-05*cos(1.2585015433d0 + 95.9792272178d0 * t)
        saturn_r_1 = saturn_r_1 + 4.247221d-05*cos(0.39294984732d0 + 227.5261894396d0 * t)
        saturn_r_1 = saturn_r_1 + 4.869289d-05*cos(0.86797227054d0 + 323.5054166574d0 * t)
        saturn_r_1 = saturn_r_1 + 5.396842d-05*cos(1.28853589711d0 + 14.2270940016d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00012892843d0*cos(5.9432943302d0 + 433.7117378768d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00013876849d0*cos(0.75884928866d0 + 199.0720014364d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00018839544d0*cos(1.60818334043d0 + 110.2063212194d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00019952564d0*cos(1.1756060613d0 + 419.4846438752d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00020928426d0*cos(5.09244947411d0 + 639.897286314d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00049621208d0*cos(6.0174427982d0 + 103.0927742186d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00143891146d0*cos(1.40744822888d0 + 7.1135470008d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00186261486d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00188491195d0*cos(0.47215589652d0 + 220.4126424388d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00341394029d0*cos(5.79635741658d0 + 426.598190876d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00506577242d0*cos(0.71114625261d0 + 206.1855484372d0 * t)
        saturn_r_1 = saturn_r_1 + 0.0618298134d0*cos(0.2584351148d0 + 213.299095438d0 * t)
        saturn_r_1=saturn_r_1*t;

        saturn_r_2 = saturn_r_2 + 1.956779d-05*cos(4.92451269861d0 + 227.5261894396d0 * t)
        saturn_r_2 = saturn_r_2 + 2.187311d-05*cos(5.8554501714d0 + 14.2270940016d0 * t)
        saturn_r_2 = saturn_r_2 + 2.208473d-05*cos(6.27590108662d0 + 110.2063212194d0 * t)
        saturn_r_2 = saturn_r_2 + 2.326777d-05*cos(0.0d0 + 0.0d0 * t)
        saturn_r_2 = saturn_r_2 + 2.556403d-05*cos(2.85066948131d0 + 419.4846438752d0 * t)
        saturn_r_2 = saturn_r_2 + 2.963981d-05*cos(1.37198670946d0 + 103.0927742186d0 * t)
        saturn_r_2 = saturn_r_2 + 3.789321d-05*cos(3.0977118974d0 + 639.897286314d0 * t)
        saturn_r_2 = saturn_r_2 + 4.141687d-05*cos(4.10673009419d0 + 433.7117378768d0 * t)
        saturn_r_2 = saturn_r_2 + 4.720822d-05*cos(2.47524028389d0 + 199.0720014364d0 * t)
        saturn_r_2 = saturn_r_2 + 0.00029645766d0*cos(5.96309886479d0 + 7.1135470008d0 * t)
        saturn_r_2 = saturn_r_2 + 0.00043220783d0*cos(3.86941044212d0 + 426.598190876d0 * t)
        saturn_r_2 = saturn_r_2 + 0.00049766872d0*cos(4.97167777235d0 + 220.4126424388d0 * t)
        saturn_r_2 = saturn_r_2 + 0.00071922498d0*cos(2.5007006993d0 + 206.1855484372d0 * t)
        saturn_r_2 = saturn_r_2 + 0.00436902572d0*cos(4.78671677509d0 + 213.299095438d0 * t)
        saturn_r_2=saturn_r_2*t*t;

        saturn_r_3 = saturn_r_3 + 1.070754d-05*cos(4.20372656114d0 + 199.0720014364d0 * t)
        saturn_r_3 = saturn_r_3 + 3.878848d-05*cos(2.01051759517d0 + 426.598190876d0 * t)
        saturn_r_3 = saturn_r_3 + 4.087056d-05*cos(4.22398596149d0 + 7.1135470008d0 * t)
        saturn_r_3 = saturn_r_3 + 6.908768d-05*cos(4.35175288182d0 + 206.1855484372d0 * t)
        saturn_r_3 = saturn_r_3 + 8.923679d-05*cos(3.19144467228d0 + 220.4126424388d0 * t)
        saturn_r_3 = saturn_r_3 + 0.00020315239d0*cos(3.02186068237d0 + 213.299095438d0 * t)
        saturn_r_3=saturn_r_3*t*t*t;

        saturn_r_4 = saturn_r_4 + 1.202117d-05*cos(1.41498340225d0 + 220.4126424388d0 * t)
        saturn_r_4=saturn_r_4*t*t*t*t;

        r = saturn_r_4+saturn_r_3+saturn_r_2+saturn_r_1+saturn_r_0
    end function

    function uranus_b(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: uranus_b_0
        double precision :: uranus_b_1
        double precision :: uranus_b_2
        double precision :: uranus_b_3
        double precision :: uranus_b_4
        double precision :: uranus_b_5

        uranus_b_0 = 0.0
        uranus_b_1 = 0.0
        uranus_b_2 = 0.0
        uranus_b_3 = 0.0
        uranus_b_4 = 0.0
        uranus_b_5 = 0.0

        uranus_b_0 = uranus_b_0 + 1.522163d-05*cos(0.27959645002d0 + 63.7358983034d0 * t)
        uranus_b_0 = uranus_b_0 + 2.010275d-05*cos(6.05550884547d0 + 148.0787244263d0 * t)
        uranus_b_0 = uranus_b_0 + 2.972303d-05*cos(2.24367206357d0 + 1.4844727083d0 * t)
        uranus_b_0 = uranus_b_0 + 3.259466d-05*cos(1.26119342526d0 + 224.3447957019d0 * t)
        uranus_b_0 = uranus_b_0 + 9.92616d-05*cos(0.57630380333d0 + 73.297125859d0 * t)
        uranus_b_0 = uranus_b_0 + 9.963722d-05*cos(1.61603805646d0 + 76.2660712756d0 * t)
        uranus_b_0 = uranus_b_0 + 0.00061601196d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_b_0 = uranus_b_0 + 0.000623414d0*cos(5.08111189648d0 + 149.5631971346d0 * t)
        uranus_b_0 = uranus_b_0 + 0.01346277648d0*cos(2.61877810547d0 + 74.7815985673d0 * t)

        uranus_b_1 = uranus_b_1 + 1.719377d-05*cos(0.0d0 + 0.0d0 * t)
        uranus_b_1 = uranus_b_1 + 2.480115d-05*cos(2.73961370453d0 + 149.5631971346d0 * t)
        uranus_b_1 = uranus_b_1 + 0.00034101978d0*cos(0.01321929936d0 + 74.7815985673d0 * t)
        uranus_b_1=uranus_b_1*t;

        r = uranus_b_1+uranus_b_0
    end function

    function uranus_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: uranus_l_0
        double precision :: uranus_l_1
        double precision :: uranus_l_2
        double precision :: uranus_l_3
        double precision :: uranus_l_4
        double precision :: uranus_l_5

        uranus_l_0 = 0.0
        uranus_l_1 = 0.0
        uranus_l_2 = 0.0
        uranus_l_3 = 0.0
        uranus_l_4 = 0.0
        uranus_l_5 = 0.0

        uranus_l_0 = uranus_l_0 + 1.072013d-05*cos(0.23566016888d0 + 62.2514255951d0 * t)
        uranus_l_0 = uranus_l_0 + 1.090463d-05*cos(1.77501500531d0 + 12.5301729722d0 * t)
        uranus_l_0 = uranus_l_0 + 1.150429d-05*cos(0.93343589092d0 + 3.1813937377d0 * t)
        uranus_l_0 = uranus_l_0 + 1.150989d-05*cos(4.17898916639d0 + 33.6796175129d0 * t)
        uranus_l_0 = uranus_l_0 + 1.221029d-05*cos(0.1990065003d0 + 108.4612160802d0 * t)
        uranus_l_0 = uranus_l_0 + 1.244347d-05*cos(0.91614441731d0 + 2.4476805548d0 * t)
        uranus_l_0 = uranus_l_0 + 1.281604d-05*cos(0.54271272721d0 + 222.8603229936d0 * t)
        uranus_l_0 = uranus_l_0 + 1.284107d-05*cos(3.11347961505d0 + 202.2533951741d0 * t)
        uranus_l_0 = uranus_l_0 + 1.372139d-05*cos(4.19641530878d0 + 111.4301614968d0 * t)
        uranus_l_0 = uranus_l_0 + 1.376226d-05*cos(2.04283539351d0 + 65.2203710117d0 * t)
        uranus_l_0 = uranus_l_0 + 1.533221d-05*cos(2.58594681212d0 + 52.6901980395d0 * t)
        uranus_l_0 = uranus_l_0 + 1.666902d-05*cos(3.62744066769d0 + 380.12776796d0 * t)
        uranus_l_0 = uranus_l_0 + 1.991643d-05*cos(4.92437588682d0 + 277.0349937414d0 * t)
        uranus_l_0 = uranus_l_0 + 2.051219d-05*cos(1.51773566586d0 + 0.1118745846d0 * t)
        uranus_l_0 = uranus_l_0 + 2.148602d-05*cos(0.60745949945d0 + 38.1330356378d0 * t)
        uranus_l_0 = uranus_l_0 + 2.272788d-05*cos(4.36600400036d0 + 70.3281804424d0 * t)
        uranus_l_0 = uranus_l_0 + 2.922333d-05*cos(5.35235361027d0 + 85.8272988312d0 * t)
        uranus_l_0 = uranus_l_0 + 2.926718d-05*cos(4.62903718891d0 + 9.5612275556d0 * t)
        uranus_l_0 = uranus_l_0 + 3.144069d-05*cos(4.75199570434d0 + 77.7505439839d0 * t)
        uranus_l_0 = uranus_l_0 + 3.354596d-05*cos(1.0654900738d0 + 4.4534181249d0 * t)
        uranus_l_0 = uranus_l_0 + 3.49034d-05*cos(5.48306144511d0 + 146.594251718d0 * t)
        uranus_l_0 = uranus_l_0 + 4.0519d-05*cos(2.277550173d0 + 151.0476698429d0 * t)
        uranus_l_0 = uranus_l_0 + 4.220241d-05*cos(3.23328220918d0 + 70.8494453042d0 * t)
        uranus_l_0 = uranus_l_0 + 7.545601d-05*cos(5.236265824d0 + 109.9456887885d0 * t)
        uranus_l_0 = uranus_l_0 + 9.527478d-05*cos(2.95516862826d0 + 35.1640902212d0 * t)
        uranus_l_0 = uranus_l_0 + 0.0001099791d0*cos(0.48865004018d0 + 138.5174968707d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00011162509d0*cos(5.8268179635d0 + 224.3447957019d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00014613507d0*cos(4.73732166022d0 + 3.9321532631d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00017818647d0*cos(1.74436930289d0 + 36.6485629295d0 * t)
        uranus_l_0 = uranus_l_0 + 0.0002107885d0*cos(4.36059339067d0 + 148.0787244263d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00025710476d0*cos(6.11379840493d0 + 454.9093665273d0 * t)
        uranus_l_0 = uranus_l_0 + 0.0002646877d0*cos(3.14152083966d0 + 71.8126531507d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00061950719d0*cos(2.85098872691d0 + 11.0457002639d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00061998615d0*cos(2.26952066061d0 + 2.9689454166d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00068892678d0*cos(6.09292483287d0 + 76.2660712756d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00070328461d0*cos(5.39254450063d0 + 63.7358983034d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00272328168d0*cos(3.35823706307d0 + 149.5631971346d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00365981674d0*cos(1.89962179044d0 + 73.297125859d0 * t)
        uranus_l_0 = uranus_l_0 + 0.01504247898d0*cos(3.6271926092d0 + 1.4844727083d0 * t)
        uranus_l_0 = uranus_l_0 + 0.09260408234d0*cos(0.89106421507d0 + 74.7815985673d0 * t)
        uranus_l_0 = uranus_l_0 + 5.48129294297d0*cos(0.0d0 + 0.0d0 * t)

        uranus_l_1 = uranus_l_1 + 1.232725d-05*cos(1.58632088145d0 + 70.8494453042d0 * t)
        uranus_l_1 = uranus_l_1 + 1.92747d-05*cos(0.52976188479d0 + 2.9689454166d0 * t)
        uranus_l_1 = uranus_l_1 + 2.277065d-05*cos(4.17199181523d0 + 76.2660712756d0 * t)
        uranus_l_1 = uranus_l_1 + 3.899108d-05*cos(0.4648357916d0 + 3.9321532631d0 * t)
        uranus_l_1 = uranus_l_1 + 8.265977d-05*cos(1.50218091379d0 + 63.7358983034d0 * t)
        uranus_l_1 = uranus_l_1 + 9.15016d-05*cos(1.41213765216d0 + 149.5631971346d0 * t)
        uranus_l_1 = uranus_l_1 + 9.258442d-05*cos(0.4282973235d0 + 11.0457002639d0 * t)
        uranus_l_1 = uranus_l_1 + 0.00024456474d0*cos(1.71260334156d0 + 1.4844727083d0 * t)
        uranus_l_1 = uranus_l_1 + 0.00154332863d0*cos(5.24158770553d0 + 74.7815985673d0 * t)
        uranus_l_1 = uranus_l_1 + 74.7815986091d0*cos(0.0d0 + 0.0d0 * t)
        uranus_l_1=uranus_l_1*t;

        uranus_l_2 = uranus_l_2 + 2.349469d-05*cos(2.26708640433d0 + 74.7815985673d0 * t)
        uranus_l_2=uranus_l_2*t*t;

        r = uranus_l_2+uranus_l_1+uranus_l_0
    end function

    function uranus_r(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: uranus_r_0
        double precision :: uranus_r_1
        double precision :: uranus_r_2
        double precision :: uranus_r_3
        double precision :: uranus_r_4
        double precision :: uranus_r_5

        uranus_r_0 = 0.0
        uranus_r_1 = 0.0
        uranus_r_2 = 0.0
        uranus_r_3 = 0.0
        uranus_r_4 = 0.0
        uranus_r_5 = 0.0

        uranus_r_0 = uranus_r_0 + 1.071649d-05*cos(1.74298201693d0 + 528.2064923863d0 * t)
        uranus_r_0 = uranus_r_0 + 1.090686d-05*cos(4.15394319904d0 + 77.962992305d0 * t)
        uranus_r_0 = uranus_r_0 + 1.197649d-05*cos(2.52152454056d0 + 145.6310438715d0 * t)
        uranus_r_0 = uranus_r_0 + 1.228234d-05*cos(5.97697848866d0 + 59.8037450403d0 * t)
        uranus_r_0 = uranus_r_0 + 1.248478d-05*cos(5.44008558936d0 + 54.1746707478d0 * t)
        uranus_r_0 = uranus_r_0 + 1.248513d-05*cos(4.88964506527d0 + 479.2883889155d0 * t)
        uranus_r_0 = uranus_r_0 + 1.249895d-05*cos(6.24480493841d0 + 160.6088973985d0 * t)
        uranus_r_0 = uranus_r_0 + 1.402196d-05*cos(1.3910671015d0 + 265.9892934775d0 * t)
        uranus_r_0 = uranus_r_0 + 1.404021d-05*cos(5.63567908789d0 + 4.4534181249d0 * t)
        uranus_r_0 = uranus_r_0 + 1.408871d-05*cos(4.41921152932d0 + 462.0229135281d0 * t)
        uranus_r_0 = uranus_r_0 + 1.439115d-05*cos(1.53047702403d0 + 447.7958195265d0 * t)
        uranus_r_0 = uranus_r_0 + 1.477003d-05*cos(4.32173218344d0 + 256.5399405065d0 * t)
        uranus_r_0 = uranus_r_0 + 1.481952d-05*cos(5.66201356223d0 + 152.5321425512d0 * t)
        uranus_r_0 = uranus_r_0 + 1.506943d-05*cos(5.2418542036d0 + 181.7583419392d0 * t)
        uranus_r_0 = uranus_r_0 + 1.563396d-05*cos(1.47919498164d0 + 112.9146342051d0 * t)
        uranus_r_0 = uranus_r_0 + 1.584876d-05*cos(3.16265838848d0 + 225.8292684102d0 * t)
        uranus_r_0 = uranus_r_0 + 1.632263d-05*cos(4.23038575372d0 + 22.0914005278d0 * t)
        uranus_r_0 = uranus_r_0 + 1.64292d-05*cos(0.35558129224d0 + 67.6680515665d0 * t)
        uranus_r_0 = uranus_r_0 + 1.656488d-05*cos(1.96436491067d0 + 79.2350166922d0 * t)
        uranus_r_0 = uranus_r_0 + 1.829781d-05*cos(4.01105197128d0 + 68.8437077341d0 * t)
        uranus_r_0 = uranus_r_0 + 1.848022d-05*cos(2.91116293131d0 + 909.8187330546d0 * t)
        uranus_r_0 = uranus_r_0 + 1.962787d-05*cos(5.24326793681d0 + 84.3428261229d0 * t)
        uranus_r_0 = uranus_r_0 + 1.963255d-05*cos(0.04114614586d0 + 221.3758502853d0 * t)
        uranus_r_0 = uranus_r_0 + 1.978408d-05*cos(6.12838999163d0 + 106.9767433719d0 * t)
        uranus_r_0 = uranus_r_0 + 2.182603d-05*cos(2.94042519396d0 + 305.3461693927d0 * t)
        uranus_r_0 = uranus_r_0 + 2.363719d-05*cos(0.44244699485d0 + 554.0699874828d0 * t)
        uranus_r_0 = uranus_r_0 + 2.53811d-05*cos(4.85443168231d0 + 131.4039498699d0 * t)
        uranus_r_0 = uranus_r_0 + 2.864793d-05*cos(0.30998964462d0 + 12.5301729722d0 * t)
        uranus_r_0 = uranus_r_0 + 2.937579d-05*cos(3.67652211319d0 + 140.001969579d0 * t)
        uranus_r_0 = uranus_r_0 + 2.940764d-05*cos(2.14649735789d0 + 137.0330241624d0 * t)
        uranus_r_0 = uranus_r_0 + 2.942224d-05*cos(0.42392830457d0 + 299.1263942692d0 * t)
        uranus_r_0 = uranus_r_0 + 2.962643d-05*cos(0.82981906774d0 + 56.6223513026d0 * t)
        uranus_r_0 = uranus_r_0 + 3.101496d-05*cos(4.14028619712d0 + 219.891377577d0 * t)
        uranus_r_0 = uranus_r_0 + 3.686324d-05*cos(2.48725993956d0 + 453.424893819d0 * t)
        uranus_r_0 = uranus_r_0 + 3.781197d-05*cos(3.45840366912d0 + 456.3938392356d0 * t)
        uranus_r_0 = uranus_r_0 + 3.801645d-05*cos(6.10982670905d0 + 184.7272873558d0 * t)
        uranus_r_0 = uranus_r_0 + 3.918728d-05*cos(4.25017709085d0 + 39.6175083461d0 * t)
        uranus_r_0 = uranus_r_0 + 4.079523d-05*cos(3.22064116734d0 + 340.7708920448d0 * t)
        uranus_r_0 = uranus_r_0 + 5.238203d-05*cos(2.62960535651d0 + 33.6796175129d0 * t)
        uranus_r_0 = uranus_r_0 + 5.44457d-05*cos(5.10574758517d0 + 145.1097790097d0 * t)
        uranus_r_0 = uranus_r_0 + 5.524411d-05*cos(3.11493320824d0 + 9.5612275556d0 * t)
        uranus_r_0 = uranus_r_0 + 6.046221d-05*cos(5.67958564987d0 + 78.7137518304d0 * t)
        uranus_r_0 = uranus_r_0 + 7.329301d-05*cos(3.97276588872d0 + 183.2428146475d0 * t)
        uranus_r_0 = uranus_r_0 + 7.448995d-05*cos(0.79495503123d0 + 351.8165923087d0 * t)
        uranus_r_0 = uranus_r_0 + 8.402384d-05*cos(5.03876467031d0 + 415.5524906121d0 * t)
        uranus_r_0 = uranus_r_0 + 8.420792d-05*cos(5.25351368389d0 + 222.8603229936d0 * t)
        uranus_r_0 = uranus_r_0 + 9.111621d-05*cos(4.99633582839d0 + 62.2514255951d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00010792498d0*cos(1.42106296264d0 + 213.299095438d0 * t)
        uranus_r_0 = uranus_r_0 + 0.0001149468d0*cos(0.43772043395d0 + 65.2203710117d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00011695693d0*cos(3.29824190199d0 + 3.9321532631d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00011852959d0*cos(0.99344161196d0 + 52.6901980395d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00011959076d0*cos(1.7504339214d0 + 984.6003316219d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00012328114d0*cos(5.96037276805d0 + 127.4717966068d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00012896452d0*cos(2.62154084288d0 + 111.4301614968d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00014701666d0*cos(4.90434516516d0 + 108.4612160802d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00015502375d0*cos(5.35405396163d0 + 38.1330356378d0 * t)
        uranus_r_0 = uranus_r_0 + 0.000179013d0*cos(0.55455066863d0 + 2.9689454166d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00020471591d0*cos(1.55587964879d0 + 202.2533951741d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00020473534d0*cos(2.79640244248d0 + 70.3281804424d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00022637073d0*cos(0.72518687029d0 + 529.6909650946d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00025620756d0*cos(5.25656086672d0 + 380.12776796d0 * t)
        uranus_r_0 = uranus_r_0 + 0.0002578588d0*cos(3.7853770987d0 + 85.8272988312d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00029156413d0*cos(3.180563367d0 + 77.7505439839d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00030348723d0*cos(0.70100838798d0 + 151.0476698429d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00036755274d0*cos(3.88649278513d0 + 146.594251718d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00039009723d0*cos(1.66971401684d0 + 70.8494453042d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00039025624d0*cos(3.36234773834d0 + 277.0349937414d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00046677296d0*cos(1.39976401694d0 + 35.1640902212d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00071424548d0*cos(4.24509236074d0 + 224.3447957019d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00089806014d0*cos(3.66105364565d0 + 109.9456887885d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00093192405d0*cos(0.17437220467d0 + 36.6485629295d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00143706183d0*cos(1.38368544947d0 + 11.0457002639d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00161858838d0*cos(2.79137786799d0 + 148.0787244263d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00190522303d0*cos(1.99809394714d0 + 1.4844727083d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00243509114d0*cos(1.57086606044d0 + 71.8126531507d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00338525369d0*cos(1.58002770318d0 + 138.5174968707d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00496404167d0*cos(1.40139935333d0 + 454.9093665273d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00602247865d0*cos(3.86003823674d0 + 63.7358983034d0 * t)
        uranus_r_0 = uranus_r_0 + 0.0064932241d0*cos(4.52247285911d0 + 76.2660712756d0 * t)
        uranus_r_0 = uranus_r_0 + 0.0205565386d0*cos(1.7829515933d0 + 149.5631971346d0 * t)
        uranus_r_0 = uranus_r_0 + 0.03440836062d0*cos(0.32836099706d0 + 73.297125859d0 * t)
        uranus_r_0 = uranus_r_0 + 0.88784984413d0*cos(5.60377527014d0 + 74.7815985673d0 * t)
        uranus_r_0 = uranus_r_0 + 19.21264847206d0*cos(0.0d0 + 0.0d0 * t)

        uranus_r_1 = uranus_r_1 + 1.032728d-05*cos(0.26473484111d0 + 131.4039498699d0 * t)
        uranus_r_1 = uranus_r_1 + 1.227894d-05*cos(1.04699377171d0 + 62.2514255951d0 * t)
        uranus_r_1 = uranus_r_1 + 1.40328d-05*cos(1.36986207457d0 + 77.7505439839d0 * t)
        uranus_r_1 = uranus_r_1 + 1.41338d-05*cos(4.57461623347d0 + 202.2533951741d0 * t)
        uranus_r_1 = uranus_r_1 + 1.489724d-05*cos(2.67568435302d0 + 56.6223513026d0 * t)
        uranus_r_1 = uranus_r_1 + 1.507836d-05*cos(5.06019185241d0 + 151.0476698429d0 * t)
        uranus_r_1 = uranus_r_1 + 1.583569d-05*cos(1.4304953436d0 + 78.7137518304d0 * t)
        uranus_r_1 = uranus_r_1 + 1.64483d-05*cos(2.65310351864d0 + 127.4717966068d0 * t)
        uranus_r_1 = uranus_r_1 + 2.429191d-05*cos(3.99450740432d0 + 52.6901980395d0 * t)
        uranus_r_1 = uranus_r_1 + 2.564235d-05*cos(0.98078549108d0 + 148.0787244263d0 * t)
        uranus_r_1 = uranus_r_1 + 3.059899d-05*cos(0.15323842112d0 + 1.4844727083d0 * t)
        uranus_r_1 = uranus_r_1 + 3.2288d-05*cos(5.25495561645d0 + 3.9321532631d0 * t)
        uranus_r_1 = uranus_r_1 + 3.505951d-05*cos(2.58348117401d0 + 138.5174968707d0 * t)
        uranus_r_1 = uranus_r_1 + 3.578254d-05*cos(2.31157935775d0 + 224.3447957019d0 * t)
        uranus_r_1 = uranus_r_1 + 3.926833d-05*cos(3.15526349399d0 + 71.8126531507d0 * t)
        uranus_r_1 = uranus_r_1 + 4.243606d-05*cos(1.41691058162d0 + 85.8272988312d0 * t)
        uranus_r_1 = uranus_r_1 + 7.496797d-05*cos(0.42361355955d0 + 73.297125859d0 * t)
        uranus_r_1 = uranus_r_1 + 0.00011405056d0*cos(0.01849738017d0 + 70.8494453042d0 * t)
        uranus_r_1 = uranus_r_1 + 0.00020857554d0*cos(5.2462584896d0 + 11.0457002639d0 * t)
        uranus_r_1 = uranus_r_1 + 0.00021468362d0*cos(2.60175716374d0 + 76.2660712756d0 * t)
        uranus_r_1 = uranus_r_1 + 0.00024059369d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_r_1 = uranus_r_1 + 0.0006862716d0*cos(6.13411179902d0 + 149.5631971346d0 * t)
        uranus_r_1 = uranus_r_1 + 0.00071212143d0*cos(6.22600975161d0 + 63.7358983034d0 * t)
        uranus_r_1 = uranus_r_1 + 0.01479896629d0*cos(3.67205697578d0 + 74.7815985673d0 * t)
        uranus_r_1=uranus_r_1*t;

        uranus_r_2 = uranus_r_2 + 1.433633d-05*cos(3.52135281258d0 + 149.5631971346d0 * t)
        uranus_r_2 = uranus_r_2 + 1.649477d-05*cos(3.09669484042d0 + 11.0457002639d0 * t)
        uranus_r_2 = uranus_r_2 + 1.681383d-05*cos(4.64842242588d0 + 70.8494453042d0 * t)
        uranus_r_2 = uranus_r_2 + 4.726838d-05*cos(1.69896897296d0 + 63.7358983034d0 * t)
        uranus_r_2 = uranus_r_2 + 0.00022439899d0*cos(0.69953310903d0 + 74.7815985673d0 * t)
        uranus_r_2=uranus_r_2*t*t;

        uranus_r_3 = uranus_r_3 + 1.164663d-05*cos(4.73440180792d0 + 74.7815985673d0 * t)
        uranus_r_3=uranus_r_3*t*t*t;

        r = uranus_r_3+uranus_r_2+uranus_r_1+uranus_r_0
    end function

    function venus_b(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: venus_b_0
        double precision :: venus_b_1
        double precision :: venus_b_2
        double precision :: venus_b_3
        double precision :: venus_b_4
        double precision :: venus_b_5

        venus_b_0 = 0.0
        venus_b_1 = 0.0
        venus_b_2 = 0.0
        venus_b_3 = 0.0
        venus_b_4 = 0.0
        venus_b_5 = 0.0

        venus_b_0 = venus_b_0 + 1.011392d-05*cos(1.0894611973d0 + 30639.856638633d0 * t)
        venus_b_0 = venus_b_0 + 0.00032814918d0*cos(3.14159265359d0 + 0.0d0 * t)
        venus_b_0 = venus_b_0 + 0.00040107978d0*cos(1.14737178112d0 + 20426.571092422d0 * t)
        venus_b_0 = venus_b_0 + 0.05923638472d0*cos(0.26702775812d0 + 10213.285546211d0 * t)

        venus_b_1 = venus_b_1 + 1.257844d-05*cos(0.0d0 + 0.0d0 * t)
        venus_b_1 = venus_b_1 + 3.499578d-05*cos(3.71117560516d0 + 20426.571092422d0 * t)
        venus_b_1 = venus_b_1 + 0.00287821243d0*cos(1.88964962838d0 + 10213.285546211d0 * t)
        venus_b_1=venus_b_1*t;

        venus_b_2 = venus_b_2 + 0.00012657745d0*cos(3.34796457029d0 + 10213.285546211d0 * t)
        venus_b_2=venus_b_2*t*t;

        r = venus_b_2+venus_b_1+venus_b_0
    end function

    function venus_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: venus_l_0
        double precision :: venus_l_1
        double precision :: venus_l_2
        double precision :: venus_l_3
        double precision :: venus_l_4
        double precision :: venus_l_5

        venus_l_0 = 0.0
        venus_l_1 = 0.0
        venus_l_2 = 0.0
        venus_l_3 = 0.0
        venus_l_4 = 0.0
        venus_l_5 = 0.0

        venus_l_0 = venus_l_0 + 1.200521d-05*cos(6.15357116043d0 + 30639.856638633d0 * t)
        venus_l_0 = venus_l_0 + 1.317168d-05*cos(5.18668228402d0 + 26.2983197998d0 * t)
        venus_l_0 = venus_l_0 + 1.438387d-05*cos(4.15745084182d0 + 9683.5945811164d0 * t)
        venus_l_0 = venus_l_0 + 1.664146d-05*cos(4.25018630147d0 + 1577.3435424478d0 * t)
        venus_l_0 = venus_l_0 + 2.372061d-05*cos(2.99377542079d0 + 3930.2096962196d0 * t)
        venus_l_0 = venus_l_0 + 3.455741d-05*cos(2.6996444782d0 + 11790.6290886588d0 * t)
        venus_l_0 = venus_l_0 + 5.477194d-05*cos(4.41630661466d0 + 7860.4193924392d0 * t)
        venus_l_0 = venus_l_0 + 0.00089891645d0*cos(5.30650047764d0 + 20426.571092422d0 * t)
        venus_l_0 = venus_l_0 + 0.01353968419d0*cos(5.59313319619d0 + 10213.285546211d0 * t)
        venus_l_0 = venus_l_0 + 3.17614666774d0*cos(0.0d0 + 0.0d0 * t)

        venus_l_1 = venus_l_1 + 7.787201d-05*cos(0.6247848222d0 + 20426.571092422d0 * t)
        venus_l_1 = venus_l_1 + 0.00095617813d0*cos(2.4640651111d0 + 10213.285546211d0 * t)
        venus_l_1 = venus_l_1 + 10213.28554621638d0*cos(0.0d0 + 0.0d0 * t)
        venus_l_1=venus_l_1*t;

        venus_l_2 = venus_l_2 + 3.894209d-05*cos(0.34823650721d0 + 10213.285546211d0 * t)
        venus_l_2=venus_l_2*t*t;

        r = venus_l_2+venus_l_1+venus_l_0
    end function

    function venus_r(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: venus_r_0
        double precision :: venus_r_1
        double precision :: venus_r_2
        double precision :: venus_r_3
        double precision :: venus_r_4
        double precision :: venus_r_5

        venus_r_0 = 0.0
        venus_r_1 = 0.0
        venus_r_2 = 0.0
        venus_r_3 = 0.0
        venus_r_4 = 0.0
        venus_r_5 = 0.0

        venus_r_0 = venus_r_0 + 1.378043d-05*cos(1.12846591367d0 + 11790.6290886588d0 * t)
        venus_r_0 = venus_r_0 + 1.632096d-05*cos(2.84548795207d0 + 7860.4193924392d0 * t)
        venus_r_0 = venus_r_0 + 1.658058d-05*cos(4.90206728031d0 + 20426.571092422d0 * t)
        venus_r_0 = venus_r_0 + 0.00489824182d0*cos(4.02151831717d0 + 10213.285546211d0 * t)
        venus_r_0 = venus_r_0 + 0.72334820891d0*cos(0.0d0 + 0.0d0 * t)

        venus_r_1 = venus_r_1 + 0.00034551041d0*cos(0.89198706276d0 + 10213.285546211d0 * t)
        venus_r_1=venus_r_1*t;

        venus_r_2 = venus_r_2 + 1.406587d-05*cos(5.06366395112d0 + 10213.285546211d0 * t)
        venus_r_2=venus_r_2*t*t;

        r = venus_r_2+venus_r_1+venus_r_0
    end function

end module VSOP87B_Milli
