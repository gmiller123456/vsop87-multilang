!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87_Nano
    implicit none

    contains
    subroutine VSOP87_Nano_getEmb(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=emb_a(t)
        result(2)=emb_h(t)
        result(3)=emb_k(t)
        result(4)=emb_l(t)
        result(5)=emb_p(t)
        result(6)=emb_q(t)
    end subroutine

    subroutine VSOP87_Nano_getJupiter(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=jupiter_a(t)
        result(2)=jupiter_h(t)
        result(3)=jupiter_k(t)
        result(4)=jupiter_l(t)
        result(5)=jupiter_p(t)
        result(6)=jupiter_q(t)
    end subroutine

    subroutine VSOP87_Nano_getMars(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=mars_a(t)
        result(2)=mars_h(t)
        result(3)=mars_k(t)
        result(4)=mars_l(t)
        result(5)=mars_p(t)
        result(6)=mars_q(t)
    end subroutine

    subroutine VSOP87_Nano_getMercury(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=mercury_a(t)
        result(2)=mercury_h(t)
        result(3)=mercury_k(t)
        result(4)=mercury_l(t)
        result(5)=mercury_p(t)
        result(6)=mercury_q(t)
    end subroutine

    subroutine VSOP87_Nano_getNeptune(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=neptune_a(t)
        result(2)=neptune_h(t)
        result(3)=neptune_k(t)
        result(4)=neptune_l(t)
        result(5)=neptune_p(t)
        result(6)=neptune_q(t)
    end subroutine

    subroutine VSOP87_Nano_getSaturn(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=saturn_a(t)
        result(2)=saturn_h(t)
        result(3)=saturn_k(t)
        result(4)=saturn_l(t)
        result(5)=saturn_p(t)
        result(6)=saturn_q(t)
    end subroutine

    subroutine VSOP87_Nano_getUranus(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=uranus_a(t)
        result(2)=uranus_h(t)
        result(3)=uranus_k(t)
        result(4)=uranus_l(t)
        result(5)=uranus_p(t)
        result(6)=uranus_q(t)
    end subroutine

    subroutine VSOP87_Nano_getVenus(t, result)
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

        r = emb_h_0
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

        r = emb_k_0
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

        r = 0
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

        jupiter_a_0 = jupiter_a_0 + 5.20260319132d0*cos(0.0d0 + 0.0d0 * t)

        r = jupiter_a_0
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

        jupiter_h_0 = jupiter_h_0 + 0.01200385748d0*cos(0.0d0 + 0.0d0 * t)

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

        jupiter_k_0 = jupiter_k_0 + 0.04698572124d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_k_1 = jupiter_k_1 + 0.00113010377d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_k_1=jupiter_k_1*t;

        r = jupiter_k_1+jupiter_k_0
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

        jupiter_l_0 = jupiter_l_0 + 0.00573506125d0*cos(1.4439630642d0 + 7.1135470008d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.59954649739d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_l_1 = jupiter_l_1 + 0.00228875491d0*cos(6.02639570653d0 + 7.1135470008d0 * t)
        jupiter_l_1 = jupiter_l_1 + 529.6909650946d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_l_1=jupiter_l_1*t;

        r = jupiter_l_1+jupiter_l_0
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

        r = jupiter_p_0
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

        r = jupiter_q_0
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

        r = mars_h_1+mars_h_0
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

        r = mars_k_1+mars_k_0
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

        r = mars_q_0
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

        r = mercury_q_0
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

        r = neptune_a_0
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

        neptune_l_0 = neptune_l_0 + 0.00441710236d0*cos(0.00020868462d0 + 491.5579294568d0 * t)
        neptune_l_0 = neptune_l_0 + 0.01017628072d0*cos(0.48586478491d0 + 1.4844727083d0 * t)
        neptune_l_0 = neptune_l_0 + 5.31188628676d0*cos(0.0d0 + 0.0d0 * t)

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

        saturn_a_0 = saturn_a_0 + 0.00142075017d0*cos(2.32273369924d0 + 949.1756089698d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00143605062d0*cos(4.8591750507d0 + 213.299095438d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00146816895d0*cos(0.07437685257d0 + 846.0828347512d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00149912686d0*cos(3.86270340354d0 + 419.4846438752d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00289062242d0*cos(3.01816520038d0 + 7.1135470008d0 * t)
        saturn_a_0 = saturn_a_0 + 0.0030846159d0*cos(2.55488166399d0 + 632.7837393132d0 * t)
        saturn_a_0 = saturn_a_0 + 0.00354492417d0*cos(5.81482665415d0 + 103.0927742186d0 * t)
        saturn_a_0 = saturn_a_0 + 0.03363448736d0*cos(6.0097367346d0 + 316.3918696566d0 * t)
        saturn_a_0 = saturn_a_0 + 9.55490959574d0*cos(0.0d0 + 0.0d0 * t)

        saturn_a_1 = saturn_a_1 + 0.00115108584d0*cos(1.31913907888d0 + 7.1135470008d0 * t)
        saturn_a_1=saturn_a_1*t;

        r = saturn_a_1+saturn_a_0
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

        saturn_h_0 = saturn_h_0 + 0.00124537423d0*cos(5.6029550572d0 + 213.299095438d0 * t)
        saturn_h_0 = saturn_h_0 + 0.00154553684d0*cos(3.5944713223d0 + 7.1135470008d0 * t)
        saturn_h_0 = saturn_h_0 + 0.00196887619d0*cos(5.31528897782d0 + 529.6909650946d0 * t)
        saturn_h_0 = saturn_h_0 + 0.05542964254d0*cos(0.0d0 + 0.0d0 * t)

        saturn_h_1 = saturn_h_1 + 0.00375593887d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_h_1=saturn_h_1*t;

        r = saturn_h_1+saturn_h_0
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

        saturn_k_0 = saturn_k_0 + 0.00126322249d0*cos(0.86230560136d0 + 213.299095438d0 * t)
        saturn_k_0 = saturn_k_0 + 0.00155326496d0*cos(5.16402515606d0 + 7.1135470008d0 * t)
        saturn_k_0 = saturn_k_0 + 0.00197268763d0*cos(0.59616692002d0 + 529.6909650946d0 * t)
        saturn_k_0 = saturn_k_0 + 0.00296003595d0*cos(3.14159265359d0 + 0.0d0 * t)

        saturn_k_1 = saturn_k_1 + 0.00529602626d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_k_1=saturn_k_1*t;

        r = saturn_k_1+saturn_k_0
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

        saturn_l_0 = saturn_l_0 + 0.00149861955d0*cos(0.26851062811d0 + 103.0927742186d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00259784547d0*cos(4.43343036691d0 + 316.3918696566d0 * t)
        saturn_l_0 = saturn_l_0 + 0.01411655077d0*cos(4.58553469006d0 + 7.1135470008d0 * t)
        saturn_l_0 = saturn_l_0 + 0.8740167565d0*cos(0.0d0 + 0.0d0 * t)

        saturn_l_1 = saturn_l_1 + 0.00563352798d0*cos(2.8847856166d0 + 7.1135470008d0 * t)
        saturn_l_1 = saturn_l_1 + 213.299095438d0*cos(0.0d0 + 0.0d0 * t)
        saturn_l_1=saturn_l_1*t;

        saturn_l_2 = saturn_l_2 + 0.00116235667d0*cos(1.17971682406d0 + 7.1135470008d0 * t)
        saturn_l_2=saturn_l_2*t*t;

        r = saturn_l_2+saturn_l_1+saturn_l_0
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

        r = saturn_p_0
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

        r = saturn_q_0
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

        r = uranus_a_0
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

        uranus_h_0 = uranus_h_0 + 0.00116288289d0*cos(3.77434233468d0 + 380.12776796d0 * t)
        uranus_h_0 = uranus_h_0 + 0.00136132837d0*cos(3.91136489012d0 + 74.7815985673d0 * t)
        uranus_h_0 = uranus_h_0 + 0.00210407426d0*cos(0.42744224313d0 + 1.4844727083d0 * t)
        uranus_h_0 = uranus_h_0 + 0.00274676149d0*cos(5.31178834743d0 + 529.6909650946d0 * t)
        uranus_h_0 = uranus_h_0 + 0.00563791307d0*cos(0.0d0 + 0.0d0 * t)

        r = uranus_h_0
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

        uranus_k_0 = uranus_k_0 + 0.0011637991d0*cos(2.20321839185d0 + 380.12776796d0 * t)
        uranus_k_0 = uranus_k_0 + 0.00136013862d0*cos(5.48189691557d0 + 74.7815985673d0 * t)
        uranus_k_0 = uranus_k_0 + 0.00209611522d0*cos(1.99913587697d0 + 1.4844727083d0 * t)
        uranus_k_0 = uranus_k_0 + 0.00274532742d0*cos(0.59960944961d0 + 529.6909650946d0 * t)
        uranus_k_0 = uranus_k_0 + 0.04595132376d0*cos(3.14159265359d0 + 0.0d0 * t)

        r = uranus_k_0
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

        uranus_l_0 = uranus_l_0 + 0.00341045477d0*cos(6.11377091373d0 + 454.9093665273d0 * t)
        uranus_l_0 = uranus_l_0 + 0.01503941337d0*cos(3.62721239702d0 + 1.4844727083d0 * t)
        uranus_l_0 = uranus_l_0 + 5.48129387159d0*cos(0.0d0 + 0.0d0 * t)

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

        r = uranus_p_0
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

        r = uranus_q_0
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

        r = venus_h_0
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

        r = venus_k_0
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

        r = venus_p_0
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

end module VSOP87_Nano
