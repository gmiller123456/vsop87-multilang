!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87_Micro
    implicit none

    contains
    subroutine VSOP87_Micro_getEmb(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=emb_a(t)
        result(2)=emb_h(t)
        result(3)=emb_k(t)
        result(4)=emb_l(t)
        result(5)=emb_p(t)
        result(6)=emb_q(t)
    end subroutine

    subroutine VSOP87_Micro_getJupiter(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=jupiter_a(t)
        result(2)=jupiter_h(t)
        result(3)=jupiter_k(t)
        result(4)=jupiter_l(t)
        result(5)=jupiter_p(t)
        result(6)=jupiter_q(t)
    end subroutine

    subroutine VSOP87_Micro_getMars(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=mars_a(t)
        result(2)=mars_h(t)
        result(3)=mars_k(t)
        result(4)=mars_l(t)
        result(5)=mars_p(t)
        result(6)=mars_q(t)
    end subroutine

    subroutine VSOP87_Micro_getMercury(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=mercury_a(t)
        result(2)=mercury_h(t)
        result(3)=mercury_k(t)
        result(4)=mercury_l(t)
        result(5)=mercury_p(t)
        result(6)=mercury_q(t)
    end subroutine

    subroutine VSOP87_Micro_getNeptune(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=neptune_a(t)
        result(2)=neptune_h(t)
        result(3)=neptune_k(t)
        result(4)=neptune_l(t)
        result(5)=neptune_p(t)
        result(6)=neptune_q(t)
    end subroutine

    subroutine VSOP87_Micro_getSaturn(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=saturn_a(t)
        result(2)=saturn_h(t)
        result(3)=saturn_k(t)
        result(4)=saturn_l(t)
        result(5)=saturn_p(t)
        result(6)=saturn_q(t)
    end subroutine

    subroutine VSOP87_Micro_getUranus(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=uranus_a(t)
        result(2)=uranus_h(t)
        result(3)=uranus_k(t)
        result(4)=uranus_l(t)
        result(5)=uranus_p(t)
        result(6)=uranus_q(t)
    end subroutine

    subroutine VSOP87_Micro_getVenus(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=venus_a(t)
        result(2)=venus_h(t)
        result(3)=venus_k(t)
        result(4)=venus_l(t)
        result(5)=venus_p(t)
        result(6)=venus_q(t)
    end subroutine

    function emb_a(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: emb_a_0
        double precision :: emb_a_1
        double precision :: emb_a_2
        double precision :: emb_a_3
        double precision :: emb_a_4
        double precision :: emb_a_5

        emb_a_0 = 0.0
        emb_a_1 = 0.0
        emb_a_2 = 0.0
        emb_a_3 = 0.0
        emb_a_4 = 0.0
        emb_a_5 = 0.0

        emb_a_0 = emb_a_0 + 1.00000101778d0*cos(0.0d0 + 0.0d0 * t)

        r = emb_a_0
    end function

    function emb_h(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: emb_h_0
        double precision :: emb_h_1
        double precision :: emb_h_2
        double precision :: emb_h_3
        double precision :: emb_h_4
        double precision :: emb_h_5

        emb_h_0 = 0.0
        emb_h_1 = 0.0
        emb_h_2 = 0.0
        emb_h_3 = 0.0
        emb_h_4 = 0.0
        emb_h_5 = 0.0

        emb_h_0 = emb_h_0 + 0.01628447663d0*cos(0.0d0 + 0.0d0 * t)

        emb_h_1 = emb_h_1 + 0.00062029655d0*cos(3.14159265359d0 + 0.0d0 * t)
        emb_h_1=emb_h_1*t;

        r = emb_h_1+emb_h_0
    end function

    function emb_k(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: emb_k_0
        double precision :: emb_k_1
        double precision :: emb_k_2
        double precision :: emb_k_3
        double precision :: emb_k_4
        double precision :: emb_k_5

        emb_k_0 = 0.0
        emb_k_1 = 0.0
        emb_k_2 = 0.0
        emb_k_3 = 0.0
        emb_k_4 = 0.0
        emb_k_5 = 0.0

        emb_k_0 = emb_k_0 + 0.0037408165d0*cos(3.14159265359d0 + 0.0d0 * t)

        emb_k_1 = emb_k_1 + 0.00082267418d0*cos(3.14159265359d0 + 0.0d0 * t)
        emb_k_1=emb_k_1*t;

        r = emb_k_1+emb_k_0
    end function

    function emb_l(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: emb_l_0
        double precision :: emb_l_1
        double precision :: emb_l_2
        double precision :: emb_l_3
        double precision :: emb_l_4
        double precision :: emb_l_5

        emb_l_0 = 0.0
        emb_l_1 = 0.0
        emb_l_2 = 0.0
        emb_l_3 = 0.0
        emb_l_4 = 0.0
        emb_l_5 = 0.0

        emb_l_0 = emb_l_0 + 1.75347045953d0*cos(0.0d0 + 0.0d0 * t)

        emb_l_1 = emb_l_1 + 6283.0758499914d0*cos(0.0d0 + 0.0d0 * t)
        emb_l_1=emb_l_1*t;

        r = emb_l_1+emb_l_0
    end function

    function emb_p(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: emb_p_0
        double precision :: emb_p_1
        double precision :: emb_p_2
        double precision :: emb_p_3
        double precision :: emb_p_4
        double precision :: emb_p_5

        emb_p_0 = 0.0
        emb_p_1 = 0.0
        emb_p_2 = 0.0
        emb_p_3 = 0.0
        emb_p_4 = 0.0
        emb_p_5 = 0.0

        emb_p_1 = emb_p_1 + 0.00010180375d0*cos(0.0d0 + 0.0d0 * t)
        emb_p_1=emb_p_1*t;

        r = emb_p_1
    end function

    function emb_q(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: emb_q_0
        double precision :: emb_q_1
        double precision :: emb_q_2
        double precision :: emb_q_3
        double precision :: emb_q_4
        double precision :: emb_q_5

        emb_q_0 = 0.0
        emb_q_1 = 0.0
        emb_q_2 = 0.0
        emb_q_3 = 0.0
        emb_q_4 = 0.0
        emb_q_5 = 0.0

        emb_q_1 = emb_q_1 + 0.00113468869d0*cos(3.14159265359d0 + 0.0d0 * t)
        emb_q_1=emb_q_1*t;

        r = emb_q_1
    end function

    function jupiter_a(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: jupiter_a_0
        double precision :: jupiter_a_1
        double precision :: jupiter_a_2
        double precision :: jupiter_a_3
        double precision :: jupiter_a_4
        double precision :: jupiter_a_5

        jupiter_a_0 = 0.0
        jupiter_a_1 = 0.0
        jupiter_a_2 = 0.0
        jupiter_a_3 = 0.0
        jupiter_a_4 = 0.0
        jupiter_a_5 = 0.0

        jupiter_a_0 = jupiter_a_0 + 0.00011836569d0*cos(0.41496888665d0 + 735.8765135318d0 * t)
        jupiter_a_0 = jupiter_a_0 + 0.00014633106d0*cos(5.20240925402d0 + 1265.5674786264d0 * t)
        jupiter_a_0 = jupiter_a_0 + 0.00020585372d0*cos(5.98131661466d0 + 316.3918696566d0 * t)
        jupiter_a_0 = jupiter_a_0 + 0.0002181433d0*cos(0.70025220178d0 + 419.4846438752d0 * t)
        jupiter_a_0 = jupiter_a_0 + 0.00025558941d0*cos(6.15962426898d0 + 7.1135470008d0 * t)
        jupiter_a_0 = jupiter_a_0 + 0.00031138634d0*cos(5.46486196547d0 + 949.1756089698d0 * t)
        jupiter_a_0 = jupiter_a_0 + 0.00032272046d0*cos(1.90381613358d0 + 103.0927742186d0 * t)
        jupiter_a_0 = jupiter_a_0 + 0.00069070151d0*cos(5.72686174779d0 + 632.7837393132d0 * t)
        jupiter_a_0 = jupiter_a_0 + 5.20260319132d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_a_1 = jupiter_a_1 + 0.00010177614d0*cos(4.46063225487d0 + 7.1135470008d0 * t)
        jupiter_a_1=jupiter_a_1*t;

        r = jupiter_a_1+jupiter_a_0
    end function

    function jupiter_h(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: jupiter_h_0
        double precision :: jupiter_h_1
        double precision :: jupiter_h_2
        double precision :: jupiter_h_3
        double precision :: jupiter_h_4
        double precision :: jupiter_h_5

        jupiter_h_0 = 0.0
        jupiter_h_1 = 0.0
        jupiter_h_2 = 0.0
        jupiter_h_3 = 0.0
        jupiter_h_4 = 0.0
        jupiter_h_5 = 0.0

        jupiter_h_0 = jupiter_h_0 + 0.00010468075d0*cos(0.14414631816d0 + 419.4846438752d0 * t)
        jupiter_h_0 = jupiter_h_0 + 0.00012686502d0*cos(1.52173271472d0 + 110.2063212194d0 * t)
        jupiter_h_0 = jupiter_h_0 + 0.00037689163d0*cos(0.46902799622d0 + 7.1135470008d0 * t)
        jupiter_h_0 = jupiter_h_0 + 0.00064278139d0*cos(0.39928981461d0 + 103.0927742186d0 * t)
        jupiter_h_0 = jupiter_h_0 + 0.01200385748d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_h_1 = jupiter_h_1 + 0.00010164439d0*cos(5.05135857516d0 + 7.1135470008d0 * t)
        jupiter_h_1 = jupiter_h_1 + 0.0021714936d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_h_1=jupiter_h_1*t;

        r = jupiter_h_1+jupiter_h_0
    end function

    function jupiter_k(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: jupiter_k_0
        double precision :: jupiter_k_1
        double precision :: jupiter_k_2
        double precision :: jupiter_k_3
        double precision :: jupiter_k_4
        double precision :: jupiter_k_5

        jupiter_k_0 = 0.0
        jupiter_k_1 = 0.0
        jupiter_k_2 = 0.0
        jupiter_k_3 = 0.0
        jupiter_k_4 = 0.0
        jupiter_k_5 = 0.0

        jupiter_k_0 = jupiter_k_0 + 0.00010740857d0*cos(4.85106997988d0 + 419.4846438752d0 * t)
        jupiter_k_0 = jupiter_k_0 + 0.00013518804d0*cos(2.94820975394d0 + 110.2063212194d0 * t)
        jupiter_k_0 = jupiter_k_0 + 0.00038006128d0*cos(2.03714771852d0 + 7.1135470008d0 * t)
        jupiter_k_0 = jupiter_k_0 + 0.0006528701d0*cos(5.14135675663d0 + 103.0927742186d0 * t)
        jupiter_k_0 = jupiter_k_0 + 0.04698572124d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_k_1 = jupiter_k_1 + 0.00010303903d0*cos(0.33250058601d0 + 7.1135470008d0 * t)
        jupiter_k_1 = jupiter_k_1 + 0.00113010377d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_k_1=jupiter_k_1*t;

        jupiter_k_2 = jupiter_k_2 + 0.00010930126d0*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_k_2=jupiter_k_2*t*t;

        r = jupiter_k_2+jupiter_k_1+jupiter_k_0
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

        jupiter_l_0 = jupiter_l_0 + 0.0001173059d0*cos(0.74641135653d0 + 949.1756089698d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00013391386d0*cos(2.32518571601d0 + 419.4846438752d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00023791184d0*cos(1.27622244841d0 + 316.3918696566d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00032251188d0*cos(1.01358443926d0 + 632.7837393132d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00062308554d0*cos(3.41857056095d0 + 103.0927742186d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00573506125d0*cos(1.4439630642d0 + 7.1135470008d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.59954649739d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_l_1 = jupiter_l_1 + 0.00228875491d0*cos(6.02639570653d0 + 7.1135470008d0 * t)
        jupiter_l_1 = jupiter_l_1 + 529.6909650946d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_l_1=jupiter_l_1*t;

        jupiter_l_2 = jupiter_l_2 + 0.00014837133d0*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_l_2 = jupiter_l_2 + 0.00047224495d0*cos(4.32142959829d0 + 7.1135470008d0 * t)
        jupiter_l_2=jupiter_l_2*t*t;

        r = jupiter_l_2+jupiter_l_1+jupiter_l_0
    end function

    function jupiter_p(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: jupiter_p_0
        double precision :: jupiter_p_1
        double precision :: jupiter_p_2
        double precision :: jupiter_p_3
        double precision :: jupiter_p_4
        double precision :: jupiter_p_5

        jupiter_p_0 = 0.0
        jupiter_p_1 = 0.0
        jupiter_p_2 = 0.0
        jupiter_p_3 = 0.0
        jupiter_p_4 = 0.0
        jupiter_p_5 = 0.0

        jupiter_p_0 = jupiter_p_0 + 0.01118377157d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_p_1 = jupiter_p_1 + 0.00023427562d0*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_p_1=jupiter_p_1*t;

        r = jupiter_p_1+jupiter_p_0
    end function

    function jupiter_q(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: jupiter_q_0
        double precision :: jupiter_q_1
        double precision :: jupiter_q_2
        double precision :: jupiter_q_3
        double precision :: jupiter_q_4
        double precision :: jupiter_q_5

        jupiter_q_0 = 0.0
        jupiter_q_1 = 0.0
        jupiter_q_2 = 0.0
        jupiter_q_3 = 0.0
        jupiter_q_4 = 0.0
        jupiter_q_5 = 0.0

        jupiter_q_0 = jupiter_q_0 + 0.00206561098d0*cos(3.14159265359d0 + 0.0d0 * t)

        jupiter_q_1 = jupiter_q_1 + 0.00031340156d0*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_q_1=jupiter_q_1*t;

        r = jupiter_q_1+jupiter_q_0
    end function

    function mars_a(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mars_a_0
        double precision :: mars_a_1
        double precision :: mars_a_2
        double precision :: mars_a_3
        double precision :: mars_a_4
        double precision :: mars_a_5

        mars_a_0 = 0.0
        mars_a_1 = 0.0
        mars_a_2 = 0.0
        mars_a_3 = 0.0
        mars_a_4 = 0.0
        mars_a_5 = 0.0

        mars_a_0 = mars_a_0 + 1.52367934191d0*cos(0.0d0 + 0.0d0 * t)

        r = mars_a_0
    end function

    function mars_h(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mars_h_0
        double precision :: mars_h_1
        double precision :: mars_h_2
        double precision :: mars_h_3
        double precision :: mars_h_4
        double precision :: mars_h_5

        mars_h_0 = 0.0
        mars_h_1 = 0.0
        mars_h_2 = 0.0
        mars_h_3 = 0.0
        mars_h_4 = 0.0
        mars_h_5 = 0.0

        mars_h_0 = mars_h_0 + 0.03789973236d0*cos(3.14159265359d0 + 0.0d0 * t)

        mars_h_1 = mars_h_1 + 0.00624657465d0*cos(0.0d0 + 0.0d0 * t)
        mars_h_1=mars_h_1*t;

        mars_h_2 = mars_h_2 + 0.00015529482d0*cos(0.0d0 + 0.0d0 * t)
        mars_h_2=mars_h_2*t*t;

        r = mars_h_2+mars_h_1+mars_h_0
    end function

    function mars_k(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mars_k_0
        double precision :: mars_k_1
        double precision :: mars_k_2
        double precision :: mars_k_3
        double precision :: mars_k_4
        double precision :: mars_k_5

        mars_k_0 = 0.0
        mars_k_1 = 0.0
        mars_k_2 = 0.0
        mars_k_3 = 0.0
        mars_k_4 = 0.0
        mars_k_5 = 0.0

        mars_k_0 = mars_k_0 + 0.08536560252d0*cos(0.0d0 + 0.0d0 * t)

        mars_k_1 = mars_k_1 + 0.00376330152d0*cos(0.0d0 + 0.0d0 * t)
        mars_k_1=mars_k_1*t;

        mars_k_2 = mars_k_2 + 0.00024657776d0*cos(3.14159265359d0 + 0.0d0 * t)
        mars_k_2=mars_k_2*t*t;

        r = mars_k_2+mars_k_1+mars_k_0
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

        mars_l_0 = mars_l_0 + 0.00027745033d0*cos(5.97049541372d0 + 3.523118349d0 * t)
        mars_l_0 = mars_l_0 + 6.20347611291d0*cos(0.0d0 + 0.0d0 * t)

        mars_l_1 = mars_l_1 + 3340.61242669981d0*cos(0.0d0 + 0.0d0 * t)
        mars_l_1=mars_l_1*t;

        r = mars_l_1+mars_l_0
    end function

    function mars_p(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mars_p_0
        double precision :: mars_p_1
        double precision :: mars_p_2
        double precision :: mars_p_3
        double precision :: mars_p_4
        double precision :: mars_p_5

        mars_p_0 = 0.0
        mars_p_1 = 0.0
        mars_p_2 = 0.0
        mars_p_3 = 0.0
        mars_p_4 = 0.0
        mars_p_5 = 0.0

        mars_p_0 = mars_p_0 + 0.01228449307d0*cos(0.0d0 + 0.0d0 * t)

        mars_p_1 = mars_p_1 + 0.00108020083d0*cos(3.14159265359d0 + 0.0d0 * t)
        mars_p_1=mars_p_1*t;

        r = mars_p_1+mars_p_0
    end function

    function mars_q(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mars_q_0
        double precision :: mars_q_1
        double precision :: mars_q_2
        double precision :: mars_q_3
        double precision :: mars_q_4
        double precision :: mars_q_5

        mars_q_0 = 0.0
        mars_q_1 = 0.0
        mars_q_2 = 0.0
        mars_q_3 = 0.0
        mars_q_4 = 0.0
        mars_q_5 = 0.0

        mars_q_0 = mars_q_0 + 0.01047042574d0*cos(0.0d0 + 0.0d0 * t)

        mars_q_1 = mars_q_1 + 0.00017138526d0*cos(0.0d0 + 0.0d0 * t)
        mars_q_1=mars_q_1*t;

        r = mars_q_1+mars_q_0
    end function

    function mercury_a(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mercury_a_0
        double precision :: mercury_a_1
        double precision :: mercury_a_2
        double precision :: mercury_a_3
        double precision :: mercury_a_4
        double precision :: mercury_a_5

        mercury_a_0 = 0.0
        mercury_a_1 = 0.0
        mercury_a_2 = 0.0
        mercury_a_3 = 0.0
        mercury_a_4 = 0.0
        mercury_a_5 = 0.0

        mercury_a_0 = mercury_a_0 + 0.38709830982d0*cos(0.0d0 + 0.0d0 * t)

        r = mercury_a_0
    end function

    function mercury_h(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mercury_h_0
        double precision :: mercury_h_1
        double precision :: mercury_h_2
        double precision :: mercury_h_3
        double precision :: mercury_h_4
        double precision :: mercury_h_5

        mercury_h_0 = 0.0
        mercury_h_1 = 0.0
        mercury_h_2 = 0.0
        mercury_h_3 = 0.0
        mercury_h_4 = 0.0
        mercury_h_5 = 0.0

        mercury_h_0 = mercury_h_0 + 0.20072331368d0*cos(0.0d0 + 0.0d0 * t)

        mercury_h_1 = mercury_h_1 + 0.00143750118d0*cos(0.0d0 + 0.0d0 * t)
        mercury_h_1=mercury_h_1*t;

        r = mercury_h_1+mercury_h_0
    end function

    function mercury_k(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mercury_k_0
        double precision :: mercury_k_1
        double precision :: mercury_k_2
        double precision :: mercury_k_3
        double precision :: mercury_k_4
        double precision :: mercury_k_5

        mercury_k_0 = 0.0
        mercury_k_1 = 0.0
        mercury_k_2 = 0.0
        mercury_k_3 = 0.0
        mercury_k_4 = 0.0
        mercury_k_5 = 0.0

        mercury_k_0 = mercury_k_0 + 0.0446605976d0*cos(0.0d0 + 0.0d0 * t)

        mercury_k_1 = mercury_k_1 + 0.00552114624d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_k_1=mercury_k_1*t;

        r = mercury_k_1+mercury_k_0
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

        mercury_l_0 = mercury_l_0 + 4.4026088424d0*cos(0.0d0 + 0.0d0 * t)

        mercury_l_1 = mercury_l_1 + 26087.9031415742d0*cos(0.0d0 + 0.0d0 * t)
        mercury_l_1=mercury_l_1*t;

        r = mercury_l_1+mercury_l_0
    end function

    function mercury_p(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mercury_p_0
        double precision :: mercury_p_1
        double precision :: mercury_p_2
        double precision :: mercury_p_3
        double precision :: mercury_p_4
        double precision :: mercury_p_5

        mercury_p_0 = 0.0
        mercury_p_1 = 0.0
        mercury_p_2 = 0.0
        mercury_p_3 = 0.0
        mercury_p_4 = 0.0
        mercury_p_5 = 0.0

        mercury_p_0 = mercury_p_0 + 0.04563550461d0*cos(0.0d0 + 0.0d0 * t)

        mercury_p_1 = mercury_p_1 + 0.00127633657d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_p_1=mercury_p_1*t;

        r = mercury_p_1+mercury_p_0
    end function

    function mercury_q(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: mercury_q_0
        double precision :: mercury_q_1
        double precision :: mercury_q_2
        double precision :: mercury_q_3
        double precision :: mercury_q_4
        double precision :: mercury_q_5

        mercury_q_0 = 0.0
        mercury_q_1 = 0.0
        mercury_q_2 = 0.0
        mercury_q_3 = 0.0
        mercury_q_4 = 0.0
        mercury_q_5 = 0.0

        mercury_q_0 = mercury_q_0 + 0.04061563384d0*cos(0.0d0 + 0.0d0 * t)

        mercury_q_1 = mercury_q_1 + 0.00065433117d0*cos(0.0d0 + 0.0d0 * t)
        mercury_q_1=mercury_q_1*t;

        r = mercury_q_1+mercury_q_0
    end function

    function neptune_a(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: neptune_a_0
        double precision :: neptune_a_1
        double precision :: neptune_a_2
        double precision :: neptune_a_3
        double precision :: neptune_a_4
        double precision :: neptune_a_5

        neptune_a_0 = 0.0
        neptune_a_1 = 0.0
        neptune_a_2 = 0.0
        neptune_a_3 = 0.0
        neptune_a_4 = 0.0
        neptune_a_5 = 0.0

        neptune_a_0 = neptune_a_0 + 0.00010396544d0*cos(4.15850491413d0 + 219.891377577d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00011035877d0*cos(0.32439741096d0 + 601.7642506762d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00011159386d0*cos(4.90170178578d0 + 108.4612160802d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00013243147d0*cos(1.48517883768d0 + 454.9093665273d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00014186982d0*cos(0.39055348945d0 + 38.1330356378d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00017526509d0*cos(3.41680716222d0 + 666.723989257d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00017669174d0*cos(6.07111527239d0 + 173.6815870919d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00017938336d0*cos(3.98996043594d0 + 183.2428146475d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00018971774d0*cos(0.76073169118d0 + 176.6505325085d0 * t)
        neptune_a_0 = neptune_a_0 + 0.0001988739d0*cos(4.72200680846d0 + 71.8126531507d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00021792087d0*cos(2.62371458707d0 + 111.4301614968d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00024649447d0*cos(6.00875947773d0 + 316.3918696566d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00025130259d0*cos(5.11703371894d0 + 168.0525127994d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00025671325d0*cos(1.72232760443d0 + 182.279606801d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00026057248d0*cos(0.60013829511d0 + 350.3321196004d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00031426284d0*cos(3.82119024473d0 + 146.594251718d0 * t)
        neptune_a_0 = neptune_a_0 + 0.0003179202d0*cos(3.25530033905d0 + 983.1158589136d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00037417236d0*cos(2.27030739588d0 + 1550.939859646d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00042415052d0*cos(1.70067649012d0 + 484.444382456d0 * t)
        neptune_a_0 = neptune_a_0 + 0.0004253901d0*cos(4.58925849638d0 + 498.6714764576d0 * t)
        neptune_a_0 = neptune_a_0 + 0.0004687645d0*cos(3.85081593965d0 + 137.0330241624d0 * t)
        neptune_a_0 = neptune_a_0 + 0.0005078132d0*cos(4.51488159732d0 + 35.1640902212d0 * t)
        neptune_a_0 = neptune_a_0 + 0.000569767d0*cos(3.65157409569d0 + 109.9456887885d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00069569587d0*cos(3.84742919656d0 + 2.9689454166d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00072554259d0*cos(5.79767484989d0 + 490.0734567485d0 * t)
        neptune_a_0 = neptune_a_0 + 0.0007839139d0*cos(0.48629941459d0 + 493.0424021651d0 * t)
        neptune_a_0 = neptune_a_0 + 0.0009553057d0*cos(4.14819625611d0 + 10175.1525105732d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00101174992d0*cos(2.72476929716d0 + 6244.9428143536d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00105687575d0*cos(3.4844777292d0 + 73.297125859d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00144701407d0*cos(3.3696710207d0 + 453.424893819d0 * t)
        neptune_a_0 = neptune_a_0 + 0.0018566634d0*cos(1.07141029917d0 + 388.4651552382d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00462318447d0*cos(0.16921610518d0 + 36.6485629295d0 * t)
        neptune_a_0 = neptune_a_0 + 0.0069430399d0*cos(1.92062235445d0 + 1021.2488945514d0 * t)
        neptune_a_0 = neptune_a_0 + 0.00832345688d0*cos(5.19528065894d0 + 1.4844727083d0 * t)
        neptune_a_0 = neptune_a_0 + 0.03597274341d0*cos(1.84552690821d0 + 175.1660598002d0 * t)
        neptune_a_0 = neptune_a_0 + 0.14818172119d0*cos(1.57105922541d0 + 491.5579294568d0 * t)
        neptune_a_0 = neptune_a_0 + 30.11038686942d0*cos(0.0d0 + 0.0d0 * t)

        neptune_a_1 = neptune_a_1 + 0.00010028658d0*cos(0.53331428424d0 + 168.0525127994d0 * t)
        neptune_a_1 = neptune_a_1 + 0.00010242826d0*cos(0.02106658542d0 + 182.279606801d0 * t)
        neptune_a_1 = neptune_a_1 + 0.00013646732d0*cos(3.31887794551d0 + 1.4844727083d0 * t)
        neptune_a_1 = neptune_a_1 + 0.00016926224d0*cos(3.40079518197d0 + 484.444382456d0 * t)
        neptune_a_1 = neptune_a_1 + 0.0001698372d0*cos(2.88749614679d0 + 498.6714764576d0 * t)
        neptune_a_1 = neptune_a_1 + 0.00021981792d0*cos(5.24159938374d0 + 388.4651552382d0 * t)
        neptune_a_1 = neptune_a_1 + 0.00035017221d0*cos(1.07792431879d0 + 1021.2488945514d0 * t)
        neptune_a_1=neptune_a_1*t;

        r = neptune_a_1+neptune_a_0
    end function

    function neptune_h(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: neptune_h_0
        double precision :: neptune_h_1
        double precision :: neptune_h_2
        double precision :: neptune_h_3
        double precision :: neptune_h_4
        double precision :: neptune_h_5

        neptune_h_0 = 0.0
        neptune_h_1 = 0.0
        neptune_h_2 = 0.0
        neptune_h_3 = 0.0
        neptune_h_4 = 0.0
        neptune_h_5 = 0.0

        neptune_h_0 = neptune_h_0 + 0.00015834646d0*cos(2.35068672532d0 + 2.9689454166d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00016671327d0*cos(5.66175544286d0 + 1059.3819301892d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00034070791d0*cos(4.38749299404d0 + 137.0330241624d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00059736086d0*cos(3.56479788019d0 + 1.4844727083d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00076068364d0*cos(5.58664660018d0 + 213.299095438d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00131043136d0*cos(4.11313570675d0 + 453.424893819d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00136278888d0*cos(3.74103613444d0 + 38.1330356378d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00344034784d0*cos(5.31201105782d0 + 529.6909650946d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00669242413d0*cos(0.0d0 + 0.0d0 * t)

        r = neptune_h_0
    end function

    function neptune_k(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: neptune_k_0
        double precision :: neptune_k_1
        double precision :: neptune_k_2
        double precision :: neptune_k_3
        double precision :: neptune_k_4
        double precision :: neptune_k_5

        neptune_k_0 = 0.0
        neptune_k_1 = 0.0
        neptune_k_2 = 0.0
        neptune_k_3 = 0.0
        neptune_k_4 = 0.0
        neptune_k_5 = 0.0

        neptune_k_0 = neptune_k_0 + 0.00015893727d0*cos(3.92171062449d0 + 2.9689454166d0 * t)
        neptune_k_0 = neptune_k_0 + 0.00016663303d0*cos(0.94954464976d0 + 1059.3819301892d0 * t)
        neptune_k_0 = neptune_k_0 + 0.00034074986d0*cos(2.81681245358d0 + 137.0330241624d0 * t)
        neptune_k_0 = neptune_k_0 + 0.00059960933d0*cos(5.1374603101d0 + 1.4844727083d0 * t)
        neptune_k_0 = neptune_k_0 + 0.00076137558d0*cos(0.87421757435d0 + 213.299095438d0 * t)
        neptune_k_0 = neptune_k_0 + 0.00131042161d0*cos(2.54238248127d0 + 453.424893819d0 * t)
        neptune_k_0 = neptune_k_0 + 0.0013623298d0*cos(5.31190360139d0 + 38.1330356378d0 * t)
        neptune_k_0 = neptune_k_0 + 0.00343810387d0*cos(0.59989432818d0 + 529.6909650946d0 * t)
        neptune_k_0 = neptune_k_0 + 0.00599977571d0*cos(0.0d0 + 0.0d0 * t)

        r = neptune_k_0
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

        neptune_l_0 = neptune_l_0 + 0.00016297466d0*cos(4.88440388945d0 + 36.6485629295d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00021806166d0*cos(0.34972092081d0 + 1021.2488945514d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00041703723d0*cos(5.41098453927d0 + 2.9689454166d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00092919548d0*cos(0.27470534254d0 + 175.1660598002d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00441710236d0*cos(0.00020868462d0 + 491.5579294568d0 * t)
        neptune_l_0 = neptune_l_0 + 0.01017628072d0*cos(0.48586478491d0 + 1.4844727083d0 * t)
        neptune_l_0 = neptune_l_0 + 5.31188628676d0*cos(0.0d0 + 0.0d0 * t)

        neptune_l_1 = neptune_l_1 + 0.00016569412d0*cos(4.86311838543d0 + 1.4844727083d0 * t)
        neptune_l_1 = neptune_l_1 + 38.1330356378d0*cos(0.0d0 + 0.0d0 * t)
        neptune_l_1=neptune_l_1*t;

        r = neptune_l_1+neptune_l_0
    end function

    function neptune_p(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: neptune_p_0
        double precision :: neptune_p_1
        double precision :: neptune_p_2
        double precision :: neptune_p_3
        double precision :: neptune_p_4
        double precision :: neptune_p_5

        neptune_p_0 = 0.0
        neptune_p_1 = 0.0
        neptune_p_2 = 0.0
        neptune_p_3 = 0.0
        neptune_p_4 = 0.0
        neptune_p_5 = 0.0

        neptune_p_0 = neptune_p_0 + 0.01151683985d0*cos(0.0d0 + 0.0d0 * t)

        r = neptune_p_0
    end function

    function neptune_q(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: neptune_q_0
        double precision :: neptune_q_1
        double precision :: neptune_q_2
        double precision :: neptune_q_3
        double precision :: neptune_q_4
        double precision :: neptune_q_5

        neptune_q_0 = 0.0
        neptune_q_1 = 0.0
        neptune_q_2 = 0.0
        neptune_q_3 = 0.0
        neptune_q_4 = 0.0
        neptune_q_5 = 0.0

        neptune_q_0 = neptune_q_0 + 0.01029147819d0*cos(3.14159265359d0 + 0.0d0 * t)

        r = neptune_q_0
    end function

    function saturn_a(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: saturn_a_0
        double precision :: saturn_a_1
        double precision :: saturn_a_2
        double precision :: saturn_a_3
        double precision :: saturn_a_4
        double precision :: saturn_a_5

        saturn_a_0 = 0.0
        saturn_a_1 = 0.0
        saturn_a_2 = 0.0
        saturn_a_3 = 0.0
        saturn_a_4 = 0.0
        saturn_a_5 = 0.0

        saturn_a_0 = saturn_a_0 + 0.00011535604d0*cos(2.74021432418d0 + 1685.0521225016d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00013277748d0*cos(3.34520712627d0 + 277.0349937414d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00013849443d0*cos(4.65107330724d0 + 838.9692877504d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00015605088d0*cos(1.55158323786d0 + 1898.3512179396d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00017342295d0*cos(2.30290130287d0 + 9999.986450773d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00018549188d0*cos(0.87944999842d0 + 6069.7767545534d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00020860007d0*cos(3.01028862668d0 + 1368.660252845d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00024471393d0*cos(4.81178790264d0 + 522.5774180938d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00032196433d0*cos(1.80319862777d0 + 1581.959348283d0 * t)
        saturn_a_0 = saturn_a_0 + 0.0003786136d0*cos(2.71073622362d0 + 323.5054166574d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00038450594d0*cos(3.28109764968d0 + 1052.2683831884d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00040372154d0*cos(6.12336876226d0 + 309.2783226558d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00054284469d0*cos(5.12517048023d0 + 206.1855484372d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00067160409d0*cos(2.06145646779d0 + 1265.5674786264d0 * t)
        saturn_a_0 = saturn_a_0 + 0.0007341234d0*cos(3.55846055429d0 + 735.8765135318d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00081821669d0*cos(3.45006412768d0 + 110.2063212194d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00142075017d0*cos(2.32273369924d0 + 949.1756089698d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00143605062d0*cos(4.8591750507d0 + 213.299095438d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00146816895d0*cos(0.07437685257d0 + 846.0828347512d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00149912686d0*cos(3.86270340354d0 + 419.4846438752d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00289062242d0*cos(3.01816520038d0 + 7.1135470008d0 * t)
        saturn_a_0 = saturn_a_0 + 0.0030846159d0*cos(2.55488166399d0 + 632.7837393132d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00354492417d0*cos(5.81482665415d0 + 103.0927742186d0 * t)
        saturn_a_0 = saturn_a_0 + 0.03363448736d0*cos(6.0097367346d0 + 316.3918696566d0 * t)
        saturn_a_0 = saturn_a_0 + 9.55490959574d0*cos(0.0d0 + 0.0d0 * t)

        saturn_a_1 = saturn_a_1 + 0.00014543221d0*cos(0.53828819496d0 + 206.1855484372d0 * t)
        saturn_a_1 = saturn_a_1 + 0.00014944585d0*cos(1.01717765228d0 + 323.5054166574d0 * t)
        saturn_a_1 = saturn_a_1 + 0.00016133051d0*cos(1.54311529056d0 + 309.2783226558d0 * t)
        saturn_a_1 = saturn_a_1 + 0.00017963494d0*cos(1.85653949491d0 + 110.2063212194d0 * t)
        saturn_a_1 = saturn_a_1 + 0.00019395929d0*cos(3.30487092881d0 + 213.299095438d0 * t)
        saturn_a_1 = saturn_a_1 + 0.00020477409d0*cos(5.54887034001d0 + 419.4846438752d0 * t)
        saturn_a_1 = saturn_a_1 + 0.00115108584d0*cos(1.31913907888d0 + 7.1135470008d0 * t)
        saturn_a_1=saturn_a_1*t;

        saturn_a_2 = saturn_a_2 + 0.00023754277d0*cos(5.89931397638d0 + 7.1135470008d0 * t)
        saturn_a_2=saturn_a_2*t*t;

        r = saturn_a_2+saturn_a_1+saturn_a_0
    end function

    function saturn_h(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: saturn_h_0
        double precision :: saturn_h_1
        double precision :: saturn_h_2
        double precision :: saturn_h_3
        double precision :: saturn_h_4
        double precision :: saturn_h_5

        saturn_h_0 = 0.0
        saturn_h_1 = 0.0
        saturn_h_2 = 0.0
        saturn_h_3 = 0.0
        saturn_h_4 = 0.0
        saturn_h_5 = 0.0

        saturn_h_0 = saturn_h_0 + 0.00016256954d0*cos(3.02503473426d0 + 735.8765135318d0 * t)
        saturn_h_0 = saturn_h_0 + 0.00026520042d0*cos(4.52478837442d0 + 206.1855484372d0 * t)
        saturn_h_0 = saturn_h_0 + 0.0003298126d0*cos(4.13131540179d0 + 110.2063212194d0 * t)
        saturn_h_0 = saturn_h_0 + 0.00044695611d0*cos(3.26423001884d0 + 419.4846438752d0 * t)
        saturn_h_0 = saturn_h_0 + 0.00068728896d0*cos(0.46796586407d0 + 103.0927742186d0 * t)
        saturn_h_0 = saturn_h_0 + 0.00124537423d0*cos(5.6029550572d0 + 213.299095438d0 * t)
        saturn_h_0 = saturn_h_0 + 0.00154553684d0*cos(3.5944713223d0 + 7.1135470008d0 * t)
        saturn_h_0 = saturn_h_0 + 0.00196887619d0*cos(5.31528897782d0 + 529.6909650946d0 * t)
        saturn_h_0 = saturn_h_0 + 0.05542964254d0*cos(0.0d0 + 0.0d0 * t)

        saturn_h_1 = saturn_h_1 + 0.00041501368d0*cos(1.90158625579d0 + 7.1135470008d0 * t)
        saturn_h_1 = saturn_h_1 + 0.00375593887d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_h_1=saturn_h_1*t;

        saturn_h_2 = saturn_h_2 + 0.00031990236d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_h_2=saturn_h_2*t*t;

        r = saturn_h_2+saturn_h_1+saturn_h_0
    end function

    function saturn_k(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: saturn_k_0
        double precision :: saturn_k_1
        double precision :: saturn_k_2
        double precision :: saturn_k_3
        double precision :: saturn_k_4
        double precision :: saturn_k_5

        saturn_k_0 = 0.0
        saturn_k_1 = 0.0
        saturn_k_2 = 0.0
        saturn_k_3 = 0.0
        saturn_k_4 = 0.0
        saturn_k_5 = 0.0

        saturn_k_0 = saturn_k_0 + 0.0001247418d0*cos(1.09305375439d0 + 316.3918696566d0 * t)
        saturn_k_0 = saturn_k_0 + 0.00016225491d0*cos(1.4279916691d0 + 735.8765135318d0 * t)
        saturn_k_0 = saturn_k_0 + 0.00027272443d0*cos(3.0089088392d0 + 206.1855484372d0 * t)
        saturn_k_0 = saturn_k_0 + 0.00031292923d0*cos(5.75285406117d0 + 110.2063212194d0 * t)
        saturn_k_0 = saturn_k_0 + 0.00045181084d0*cos(1.69923556056d0 + 419.4846438752d0 * t)
        saturn_k_0 = saturn_k_0 + 0.00065050158d0*cos(5.14656256627d0 + 103.0927742186d0 * t)
        saturn_k_0 = saturn_k_0 + 0.00126322249d0*cos(0.86230560136d0 + 213.299095438d0 * t)
        saturn_k_0 = saturn_k_0 + 0.00155326496d0*cos(5.16402515606d0 + 7.1135470008d0 * t)
        saturn_k_0 = saturn_k_0 + 0.00197268763d0*cos(0.59616692002d0 + 529.6909650946d0 * t)
        saturn_k_0 = saturn_k_0 + 0.00296003595d0*cos(3.14159265359d0 + 0.0d0 * t)

        saturn_k_1 = saturn_k_1 + 0.00041825363d0*cos(3.46891617076d0 + 7.1135470008d0 * t)
        saturn_k_1 = saturn_k_1 + 0.00529602626d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_k_1=saturn_k_1*t;

        saturn_k_2 = saturn_k_2 + 0.00030928405d0*cos(0.0d0 + 0.0d0 * t)
        saturn_k_2=saturn_k_2*t*t;

        r = saturn_k_2+saturn_k_1+saturn_k_0
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

        saturn_l_0 = saturn_l_0 + 0.00010143831d0*cos(4.81233412109d0 + 846.0828347512d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00011053979d0*cos(3.62184165245d0 + 1265.5674786264d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00012172375d0*cos(2.85599565676d0 + 213.299095438d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00012249591d0*cos(5.17809413714d0 + 735.8765135318d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00012478276d0*cos(4.43427037492d0 + 110.2063212194d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00012994507d0*cos(5.98000018071d0 + 11.0457002639d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00013067003d0*cos(4.44777987188d0 + 14.2270940016d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00014601573d0*cos(1.56514416532d0 + 3.9321532631d0 * t)
        saturn_l_0 = saturn_l_0 + 0.0001464809d0*cos(0.80489143062d0 + 529.6909650946d0 * t)
        saturn_l_0 = saturn_l_0 + 0.000166785d0*cos(0.46554866763d0 + 206.1855484372d0 * t)
        saturn_l_0 = saturn_l_0 + 0.0002654809d0*cos(3.88757160092d0 + 949.1756089698d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00031452707d0*cos(5.46081855509d0 + 419.4846438752d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00071179955d0*cos(4.15641496284d0 + 632.7837393132d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00149861955d0*cos(0.26851062811d0 + 103.0927742186d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00259784547d0*cos(4.43343036691d0 + 316.3918696566d0 * t)
        saturn_l_0 = saturn_l_0 + 0.01411655077d0*cos(4.58553469006d0 + 7.1135470008d0 * t)
        saturn_l_0 = saturn_l_0 + 0.8740167565d0*cos(0.0d0 + 0.0d0 * t)

        saturn_l_1 = saturn_l_1 + 0.00010437362d0*cos(2.74781046876d0 + 14.2270940016d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00014171331d0*cos(1.28319722079d0 + 103.0927742186d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00563352798d0*cos(2.8847856166d0 + 7.1135470008d0 * t)
        saturn_l_1 = saturn_l_1 + 213.299095438d0*cos(0.0d0 + 0.0d0 * t)
        saturn_l_1=saturn_l_1*t;

        saturn_l_2 = saturn_l_2 + 0.00036659741d0*cos(0.0d0 + 0.0d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00116235667d0*cos(1.17971682406d0 + 7.1135470008d0 * t)
        saturn_l_2=saturn_l_2*t*t;

        saturn_l_3 = saturn_l_3 + 0.00016010484d0*cos(5.73932776276d0 + 7.1135470008d0 * t)
        saturn_l_3=saturn_l_3*t*t*t;

        r = saturn_l_3+saturn_l_2+saturn_l_1+saturn_l_0
    end function

    function saturn_p(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: saturn_p_0
        double precision :: saturn_p_1
        double precision :: saturn_p_2
        double precision :: saturn_p_3
        double precision :: saturn_p_4
        double precision :: saturn_p_5

        saturn_p_0 = 0.0
        saturn_p_1 = 0.0
        saturn_p_2 = 0.0
        saturn_p_3 = 0.0
        saturn_p_4 = 0.0
        saturn_p_5 = 0.0

        saturn_p_0 = saturn_p_0 + 0.01989147301d0*cos(0.0d0 + 0.0d0 * t)

        saturn_p_1 = saturn_p_1 + 0.00059439766d0*cos(0.0d0 + 0.0d0 * t)
        saturn_p_1=saturn_p_1*t;

        r = saturn_p_1+saturn_p_0
    end function

    function saturn_q(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: saturn_q_0
        double precision :: saturn_q_1
        double precision :: saturn_q_2
        double precision :: saturn_q_3
        double precision :: saturn_q_4
        double precision :: saturn_q_5

        saturn_q_0 = 0.0
        saturn_q_1 = 0.0
        saturn_q_2 = 0.0
        saturn_q_3 = 0.0
        saturn_q_4 = 0.0
        saturn_q_5 = 0.0

        saturn_q_0 = saturn_q_0 + 0.00871747436d0*cos(3.14159265359d0 + 0.0d0 * t)

        saturn_q_1 = saturn_q_1 + 0.00080171499d0*cos(0.0d0 + 0.0d0 * t)
        saturn_q_1=saturn_q_1*t;

        r = saturn_q_1+saturn_q_0
    end function

    function uranus_a(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: uranus_a_0
        double precision :: uranus_a_1
        double precision :: uranus_a_2
        double precision :: uranus_a_3
        double precision :: uranus_a_4
        double precision :: uranus_a_5

        uranus_a_0 = 0.0
        uranus_a_1 = 0.0
        uranus_a_2 = 0.0
        uranus_a_3 = 0.0
        uranus_a_4 = 0.0
        uranus_a_5 = 0.0

        uranus_a_0 = uranus_a_0 + 0.00010515353d0*cos(1.70301075392d0 + 479.2883889155d0 * t)
        uranus_a_0 = uranus_a_0 + 0.0001101356d0*cos(3.543073512d0 + 835.0371344873d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00011020208d0*cos(3.19000442755d0 + 3.9321532631d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00011334332d0*cos(5.9796356063d0 + 316.3918696566d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00012687891d0*cos(1.58735697797d0 + 71.8126531507d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00012998808d0*cos(2.85105295526d0 + 127.4717966068d0 * t)
        uranus_a_0 = uranus_a_0 + 0.0001307766d0*cos(4.23675214362d0 + 381.6122406683d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00014478423d0*cos(4.9498312979d0 + 131.4039498699d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00014762015d0*cos(1.55212266318d0 + 145.6310438715d0 * t)
        uranus_a_0 = uranus_a_0 + 0.0001515997d0*cos(2.76239188887d0 + 137.0330241624d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00015930221d0*cos(3.73134883667d0 + 140.001969579d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00016880093d0*cos(0.8479805848d0 + 183.2428146475d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00018767795d0*cos(4.43338724151d0 + 149.5631971346d0 * t)
        uranus_a_0 = uranus_a_0 + 0.0001947827d0*cos(2.1004139056d0 + 1514.2912967165d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00020141604d0*cos(2.67711439002d0 + 305.3461693927d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00021391939d0*cos(0.02845030511d0 + 340.7708920448d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00021559916d0*cos(3.58530830565d0 + 554.0699874828d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00022997542d0*cos(1.53103267798d0 + 447.7958195265d0 * t)
        uranus_a_0 = uranus_a_0 + 0.0002303434d0*cos(4.41961897942d0 + 462.0229135281d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00028704578d0*cos(1.39041828806d0 + 35.1640902212d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00029696881d0*cos(0.67903436338d0 + 146.594251718d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00032917894d0*cos(0.70483800006d0 + 2.9689454166d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00034892404d0*cos(5.75418250485d0 + 909.8187330546d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00036972301d0*cos(0.17475135689d0 + 36.6485629295d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00045935079d0*cos(4.6428671115d0 + 202.2533951741d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00048838076d0*cos(3.97801797335d0 + 10138.5039476437d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00050469671d0*cos(1.89418222433d0 + 415.5524906121d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00051844499d0*cos(2.55536031544d0 + 6208.2942514241d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00053293996d0*cos(0.5099564439d0 + 109.9456887885d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00058841165d0*cos(2.48705383463d0 + 453.424893819d0 * t)
        uranus_a_0 = uranus_a_0 + 0.0006192097d0*cos(3.4581808792d0 + 456.3938392356d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00090078269d0*cos(0.33585778387d0 + 73.297125859d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00102755162d0*cos(0.89451486294d0 + 351.8165923087d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00120436873d0*cos(0.15931700196d0 + 277.0349937414d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00124336026d0*cos(1.34101096123d0 + 11.0457002639d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00148020073d0*cos(4.84763548983d0 + 63.7358983034d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00313720406d0*cos(2.19852745462d0 + 74.7815985673d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00365190162d0*cos(1.75064255586d0 + 984.6003316219d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00391818405d0*cos(2.05935807638d0 + 1.4844727083d0 * t)
        uranus_a_0 = uranus_a_0 + 0.00406413575d0*cos(5.21303965129d0 + 380.12776796d0 * t)
        uranus_a_0 = uranus_a_0 + 0.02068375131d0*cos(1.67626096637d0 + 138.5174968707d0 * t)
        uranus_a_0 = uranus_a_0 + 0.0803047624d0*cos(1.40140954803d0 + 454.9093665273d0 * t)
        uranus_a_0 = uranus_a_0 + 19.21844606178d0*cos(0.0d0 + 0.0d0 * t)

        uranus_a_1 = uranus_a_1 + 0.00011411513d0*cos(0.08109503303d0 + 63.7358983034d0 * t)
        uranus_a_1 = uranus_a_1 + 0.00012155731d0*cos(5.07129450662d0 + 351.8165923087d0 * t)
        uranus_a_1 = uranus_a_1 + 0.00018428974d0*cos(0.90876002089d0 + 984.6003316219d0 * t)
        uranus_a_1 = uranus_a_1 + 0.00018892174d0*cos(5.14166599806d0 + 11.0457002639d0 * t)
        uranus_a_1=uranus_a_1*t;

        r = uranus_a_1+uranus_a_0
    end function

    function uranus_h(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: uranus_h_0
        double precision :: uranus_h_1
        double precision :: uranus_h_2
        double precision :: uranus_h_3
        double precision :: uranus_h_4
        double precision :: uranus_h_5

        uranus_h_0 = 0.0
        uranus_h_1 = 0.0
        uranus_h_2 = 0.0
        uranus_h_3 = 0.0
        uranus_h_4 = 0.0
        uranus_h_5 = 0.0

        uranus_h_0 = uranus_h_0 + 0.00013315732d0*cos(5.66170904346d0 + 1059.3819301892d0 * t)
        uranus_h_0 = uranus_h_0 + 0.00014988819d0*cos(5.47840346834d0 + 2.9689454166d0 * t)
        uranus_h_0 = uranus_h_0 + 0.00025966791d0*cos(3.35174050484d0 + 11.0457002639d0 * t)
        uranus_h_0 = uranus_h_0 + 0.00028214307d0*cos(4.05785385739d0 + 63.7358983034d0 * t)
        uranus_h_0 = uranus_h_0 + 0.00061308823d0*cos(5.58629337039d0 + 213.299095438d0 * t)
        uranus_h_0 = uranus_h_0 + 0.00116288289d0*cos(3.77434233468d0 + 380.12776796d0 * t)
        uranus_h_0 = uranus_h_0 + 0.00136132837d0*cos(3.91136489012d0 + 74.7815985673d0 * t)
        uranus_h_0 = uranus_h_0 + 0.00210407426d0*cos(0.42744224313d0 + 1.4844727083d0 * t)
        uranus_h_0 = uranus_h_0 + 0.00274676149d0*cos(5.31178834743d0 + 529.6909650946d0 * t)
        uranus_h_0 = uranus_h_0 + 0.00563791307d0*cos(0.0d0 + 0.0d0 * t)

        uranus_h_1 = uranus_h_1 + 0.0007496435d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_h_1=uranus_h_1*t;

        r = uranus_h_1+uranus_h_0
    end function

    function uranus_k(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: uranus_k_0
        double precision :: uranus_k_1
        double precision :: uranus_k_2
        double precision :: uranus_k_3
        double precision :: uranus_k_4
        double precision :: uranus_k_5

        uranus_k_0 = 0.0
        uranus_k_1 = 0.0
        uranus_k_2 = 0.0
        uranus_k_3 = 0.0
        uranus_k_4 = 0.0
        uranus_k_5 = 0.0

        uranus_k_0 = uranus_k_0 + 0.00013311384d0*cos(0.94943515364d0 + 1059.3819301892d0 * t)
        uranus_k_0 = uranus_k_0 + 0.00015021315d0*cos(0.76594621932d0 + 2.9689454166d0 * t)
        uranus_k_0 = uranus_k_0 + 0.00025955084d0*cos(4.91660280043d0 + 11.0457002639d0 * t)
        uranus_k_0 = uranus_k_0 + 0.00028383762d0*cos(2.48454325825d0 + 63.7358983034d0 * t)
        uranus_k_0 = uranus_k_0 + 0.00061367654d0*cos(0.87377399008d0 + 213.299095438d0 * t)
        uranus_k_0 = uranus_k_0 + 0.0011637991d0*cos(2.20321839185d0 + 380.12776796d0 * t)
        uranus_k_0 = uranus_k_0 + 0.00136013862d0*cos(5.48189691557d0 + 74.7815985673d0 * t)
        uranus_k_0 = uranus_k_0 + 0.00209611522d0*cos(1.99913587697d0 + 1.4844727083d0 * t)
        uranus_k_0 = uranus_k_0 + 0.00274532742d0*cos(0.59960944961d0 + 529.6909650946d0 * t)
        uranus_k_0 = uranus_k_0 + 0.04595132376d0*cos(3.14159265359d0 + 0.0d0 * t)

        uranus_k_1 = uranus_k_1 + 0.00018344115d0*cos(0.0d0 + 0.0d0 * t)
        uranus_k_1=uranus_k_1*t;

        r = uranus_k_1+uranus_k_0
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

        uranus_l_0 = uranus_l_0 + 0.00012930477d0*cos(1.77673119432d0 + 277.0349937414d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00013047912d0*cos(1.74402938964d0 + 36.6485629295d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00014437567d0*cos(1.91368590597d0 + 73.297125859d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00014543819d0*cos(4.7364457576d0 + 3.9321532631d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00016468518d0*cos(5.36717518314d0 + 63.7358983034d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00017129222d0*cos(0.18104766503d0 + 984.6003316219d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00018867012d0*cos(5.43708395337d0 + 529.6909650946d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00059722283d0*cos(2.84455045894d0 + 11.0457002639d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00061937506d0*cos(2.26973190883d0 + 2.9689454166d0 * t)
        uranus_l_0 = uranus_l_0 + 0.0007557155d0*cos(0.10254572902d0 + 138.5174968707d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00341045477d0*cos(6.11377091373d0 + 454.9093665273d0 * t)
        uranus_l_0 = uranus_l_0 + 0.01503941337d0*cos(3.62721239702d0 + 1.4844727083d0 * t)
        uranus_l_0 = uranus_l_0 + 5.48129387159d0*cos(0.0d0 + 0.0d0 * t)

        uranus_l_1 = uranus_l_1 + 0.00024451511d0*cos(1.71261369505d0 + 1.4844727083d0 * t)
        uranus_l_1 = uranus_l_1 + 74.7815985673d0*cos(0.0d0 + 0.0d0 * t)
        uranus_l_1=uranus_l_1*t;

        r = uranus_l_1+uranus_l_0
    end function

    function uranus_p(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: uranus_p_0
        double precision :: uranus_p_1
        double precision :: uranus_p_2
        double precision :: uranus_p_3
        double precision :: uranus_p_4
        double precision :: uranus_p_5

        uranus_p_0 = 0.0
        uranus_p_1 = 0.0
        uranus_p_2 = 0.0
        uranus_p_3 = 0.0
        uranus_p_4 = 0.0
        uranus_p_5 = 0.0

        uranus_p_0 = uranus_p_0 + 0.00648617008d0*cos(0.0d0 + 0.0d0 * t)

        uranus_p_1 = uranus_p_1 + 0.00011744733d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_p_1=uranus_p_1*t;

        r = uranus_p_1+uranus_p_0
    end function

    function uranus_q(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: uranus_q_0
        double precision :: uranus_q_1
        double precision :: uranus_q_2
        double precision :: uranus_q_3
        double precision :: uranus_q_4
        double precision :: uranus_q_5

        uranus_q_0 = 0.0
        uranus_q_1 = 0.0
        uranus_q_2 = 0.0
        uranus_q_3 = 0.0
        uranus_q_4 = 0.0
        uranus_q_5 = 0.0

        uranus_q_0 = uranus_q_0 + 0.00185915075d0*cos(0.0d0 + 0.0d0 * t)

        uranus_q_1 = uranus_q_1 + 0.00012449382d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_q_1=uranus_q_1*t;

        r = uranus_q_1+uranus_q_0
    end function

    function venus_a(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: venus_a_0
        double precision :: venus_a_1
        double precision :: venus_a_2
        double precision :: venus_a_3
        double precision :: venus_a_4
        double precision :: venus_a_5

        venus_a_0 = 0.0
        venus_a_1 = 0.0
        venus_a_2 = 0.0
        venus_a_3 = 0.0
        venus_a_4 = 0.0
        venus_a_5 = 0.0

        venus_a_0 = venus_a_0 + 0.72332981996d0*cos(0.0d0 + 0.0d0 * t)

        r = venus_a_0
    end function

    function venus_h(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: venus_h_0
        double precision :: venus_h_1
        double precision :: venus_h_2
        double precision :: venus_h_3
        double precision :: venus_h_4
        double precision :: venus_h_5

        venus_h_0 = 0.0
        venus_h_1 = 0.0
        venus_h_2 = 0.0
        venus_h_3 = 0.0
        venus_h_4 = 0.0
        venus_h_5 = 0.0

        venus_h_0 = venus_h_0 + 0.00506684726d0*cos(0.0d0 + 0.0d0 * t)

        venus_h_1 = venus_h_1 + 0.00036121239d0*cos(3.14159265359d0 + 0.0d0 * t)
        venus_h_1=venus_h_1*t;

        r = venus_h_1+venus_h_0
    end function

    function venus_k(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: venus_k_0
        double precision :: venus_k_1
        double precision :: venus_k_2
        double precision :: venus_k_3
        double precision :: venus_k_4
        double precision :: venus_k_5

        venus_k_0 = 0.0
        venus_k_1 = 0.0
        venus_k_2 = 0.0
        venus_k_3 = 0.0
        venus_k_4 = 0.0
        venus_k_5 = 0.0

        venus_k_0 = venus_k_0 + 0.00449282133d0*cos(3.14159265359d0 + 0.0d0 * t)

        venus_k_1 = venus_k_1 + 0.00031259019d0*cos(0.0d0 + 0.0d0 * t)
        venus_k_1=venus_k_1*t;

        r = venus_k_1+venus_k_0
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

        venus_l_0 = venus_l_0 + 3.17614669689d0*cos(0.0d0 + 0.0d0 * t)

        venus_l_1 = venus_l_1 + 10213.285546211d0*cos(0.0d0 + 0.0d0 * t)
        venus_l_1=venus_l_1*t;

        r = venus_l_1+venus_l_0
    end function

    function venus_p(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: venus_p_0
        double precision :: venus_p_1
        double precision :: venus_p_2
        double precision :: venus_p_3
        double precision :: venus_p_4
        double precision :: venus_p_5

        venus_p_0 = 0.0
        venus_p_1 = 0.0
        venus_p_2 = 0.0
        venus_p_3 = 0.0
        venus_p_4 = 0.0
        venus_p_5 = 0.0

        venus_p_0 = venus_p_0 + 0.02882285775d0*cos(0.0d0 + 0.0d0 * t)

        venus_p_1 = venus_p_1 + 0.00040384791d0*cos(3.14159265359d0 + 0.0d0 * t)
        venus_p_1=venus_p_1*t;

        r = venus_p_1+venus_p_0
    end function

    function venus_q(t) result(r)
        double precision :: t
        double precision :: r
        double precision :: venus_q_0
        double precision :: venus_q_1
        double precision :: venus_q_2
        double precision :: venus_q_3
        double precision :: venus_q_4
        double precision :: venus_q_5

        venus_q_0 = 0.0
        venus_q_1 = 0.0
        venus_q_2 = 0.0
        venus_q_3 = 0.0
        venus_q_4 = 0.0
        venus_q_5 = 0.0

        venus_q_0 = venus_q_0 + 0.00682410142d0*cos(0.0d0 + 0.0d0 * t)

        venus_q_1 = venus_q_1 + 0.00138133826d0*cos(0.0d0 + 0.0d0 * t)
        venus_q_1=venus_q_1*t;

        r = venus_q_1+venus_q_0
    end function

end module VSOP87_Micro
