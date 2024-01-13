!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87_Milli
    implicit none

    contains
    subroutine VSOP87_Milli_getEmb(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=emb_a(t)
        result(2)=emb_h(t)
        result(3)=emb_k(t)
        result(4)=emb_l(t)
        result(5)=emb_p(t)
        result(6)=emb_q(t)
    end subroutine

    subroutine VSOP87_Milli_getJupiter(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=jupiter_a(t)
        result(2)=jupiter_h(t)
        result(3)=jupiter_k(t)
        result(4)=jupiter_l(t)
        result(5)=jupiter_p(t)
        result(6)=jupiter_q(t)
    end subroutine

    subroutine VSOP87_Milli_getMars(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=mars_a(t)
        result(2)=mars_h(t)
        result(3)=mars_k(t)
        result(4)=mars_l(t)
        result(5)=mars_p(t)
        result(6)=mars_q(t)
    end subroutine

    subroutine VSOP87_Milli_getMercury(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=mercury_a(t)
        result(2)=mercury_h(t)
        result(3)=mercury_k(t)
        result(4)=mercury_l(t)
        result(5)=mercury_p(t)
        result(6)=mercury_q(t)
    end subroutine

    subroutine VSOP87_Milli_getNeptune(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=neptune_a(t)
        result(2)=neptune_h(t)
        result(3)=neptune_k(t)
        result(4)=neptune_l(t)
        result(5)=neptune_p(t)
        result(6)=neptune_q(t)
    end subroutine

    subroutine VSOP87_Milli_getSaturn(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=saturn_a(t)
        result(2)=saturn_h(t)
        result(3)=saturn_k(t)
        result(4)=saturn_l(t)
        result(5)=saturn_p(t)
        result(6)=saturn_q(t)
    end subroutine

    subroutine VSOP87_Milli_getUranus(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=uranus_a(t)
        result(2)=uranus_h(t)
        result(3)=uranus_k(t)
        result(4)=uranus_l(t)
        result(5)=uranus_p(t)
        result(6)=uranus_q(t)
    end subroutine

    subroutine VSOP87_Milli_getVenus(t, result)
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

        emb_a_0 = emb_a_0 + 1.120473d-05*cos(2.30855131827d0 + 11506.7697697936d0 * t)
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

        emb_h_0 = emb_h_0 + 1.510978d-05*cos(2.16070229051d0 + 529.6909650946d0 * t)
        emb_h_0 = emb_h_0 + 1.864029d-05*cos(2.12650300196d0 + 5223.6939198022d0 * t)
        emb_h_0 = emb_h_0 + 1.986929d-05*cos(5.80464886318d0 + 1577.3435424478d0 * t)
        emb_h_0 = emb_h_0 + 0.01628447663d0*cos(0.0d0 + 0.0d0 * t)

        emb_h_1 = emb_h_1 + 0.00062029655d0*cos(3.14159265359d0 + 0.0d0 * t)
        emb_h_1=emb_h_1*t;

        emb_h_2 = emb_h_2 + 3.382631d-05*cos(3.14159265359d0 + 0.0d0 * t)
        emb_h_2=emb_h_2*t*t;

        r = emb_h_2+emb_h_1+emb_h_0
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

        emb_k_0 = emb_k_0 + 1.497439d-05*cos(3.72409379834d0 + 529.6909650946d0 * t)
        emb_k_0 = emb_k_0 + 1.859231d-05*cos(0.55463591479d0 + 5223.6939198022d0 * t)
        emb_k_0 = emb_k_0 + 1.988852d-05*cos(4.23374621009d0 + 1577.3435424478d0 * t)
        emb_k_0 = emb_k_0 + 0.0037408165d0*cos(3.14159265359d0 + 0.0d0 * t)

        emb_k_1 = emb_k_1 + 0.00082267418d0*cos(3.14159265359d0 + 0.0d0 * t)
        emb_k_1=emb_k_1*t;

        emb_k_2 = emb_k_2 + 2.762465d-05*cos(0.0d0 + 0.0d0 * t)
        emb_k_2=emb_k_2*t*t;

        r = emb_k_2+emb_k_1+emb_k_0
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

        emb_l_0 = emb_l_0 + 1.089612d-05*cos(1.10654596593d0 + 1577.3435424478d0 * t)
        emb_l_0 = emb_l_0 + 1.263517d-05*cos(2.03240137643d0 + 529.6909650946d0 * t)
        emb_l_0 = emb_l_0 + 1.268612d-05*cos(1.27476353113d0 + 7860.4193924392d0 * t)
        emb_l_0 = emb_l_0 + 1.664099d-05*cos(6.13527980181d0 + 3930.2096962196d0 * t)
        emb_l_0 = emb_l_0 + 2.056367d-05*cos(3.87949142209d0 + 11506.7697697936d0 * t)
        emb_l_0 = emb_l_0 + 3.417568d-05*cos(2.82887613695d0 + 3.523118349d0 * t)
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

        emb_p_2 = emb_p_2 + 4.701998d-05*cos(0.0d0 + 0.0d0 * t)
        emb_p_2=emb_p_2*t*t;

        r = emb_p_2+emb_p_1
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

        emb_q_2 = emb_q_2 + 1.237314d-05*cos(0.0d0 + 0.0d0 * t)
        emb_q_2=emb_q_2*t*t;

        r = emb_q_2+emb_q_1
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

        jupiter_a_0 = jupiter_a_0 + 1.103727d-05*cos(6.066784314d0 + 1795.258443721d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.186903d-05*cos(2.64995167523d0 + 846.0828347512d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.213593d-05*cos(1.06750572685d0 + 1155.361157407d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.214418d-05*cos(5.61722097881d0 + 2001.4439921582d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.269999d-05*cos(3.71806964818d0 + 426.598190876d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.312912d-05*cos(2.44966148532d0 + 639.897286314d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.629945d-05*cos(0.03571048023d0 + 1478.8665740644d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.661953d-05*cos(4.44977785904d0 + 2214.7430875962d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.907151d-05*cos(1.3857317786d0 + 838.9692877504d0 * t)
        jupiter_a_0 = jupiter_a_0 + 2.098973d-05*cos(0.26695969427d0 + 1162.4747044078d0 * t)
        jupiter_a_0 = jupiter_a_0 + 2.137176d-05*cos(4.12641996837d0 + 529.6909650946d0 * t)
        jupiter_a_0 = jupiter_a_0 + 2.159445d-05*cos(5.88093480007d0 + 1685.0521225016d0 * t)
        jupiter_a_0 = jupiter_a_0 + 3.161638d-05*cos(1.66903371591d0 + 522.5774180938d0 * t)
        jupiter_a_0 = jupiter_a_0 + 3.403855d-05*cos(4.69439311157d0 + 1898.3512179396d0 * t)
        jupiter_a_0 = jupiter_a_0 + 3.812238d-05*cos(6.1488951165d0 + 1368.660252845d0 * t)
        jupiter_a_0 = jupiter_a_0 + 5.492322d-05*cos(6.22811858833d0 + 110.2063212194d0 * t)
        jupiter_a_0 = jupiter_a_0 + 6.545032d-05*cos(1.97539564312d0 + 206.1855484372d0 * t)
        jupiter_a_0 = jupiter_a_0 + 6.702248d-05*cos(0.13787303369d0 + 1052.2683831884d0 * t)
        jupiter_a_0 = jupiter_a_0 + 7.016965d-05*cos(4.94542752265d0 + 1581.959348283d0 * t)
        jupiter_a_0 = jupiter_a_0 + 7.170006d-05*cos(2.57687162897d0 + 9683.5945811164d0 * t)
        jupiter_a_0 = jupiter_a_0 + 7.808378d-05*cos(1.1539218525d0 + 5753.3848848968d0 * t)
        jupiter_a_0 = jupiter_a_0 + 0.00011836569d0*cos(0.41496888665d0 + 735.8765135318d0 * t)
        jupiter_a_0 = jupiter_a_0 + 0.00014633106d0*cos(5.20240925402d0 + 1265.5674786264d0 * t)
        jupiter_a_0 = jupiter_a_0 + 0.00020585372d0*cos(5.98131661466d0 + 316.3918696566d0 * t)
        jupiter_a_0 = jupiter_a_0 + 0.0002181433d0*cos(0.70025220178d0 + 419.4846438752d0 * t)
        jupiter_a_0 = jupiter_a_0 + 0.00025558941d0*cos(6.15962426898d0 + 7.1135470008d0 * t)
        jupiter_a_0 = jupiter_a_0 + 0.00031138634d0*cos(5.46486196547d0 + 949.1756089698d0 * t)
        jupiter_a_0 = jupiter_a_0 + 0.00032272046d0*cos(1.90381613358d0 + 103.0927742186d0 * t)
        jupiter_a_0 = jupiter_a_0 + 0.00069070151d0*cos(5.72686174779d0 + 632.7837393132d0 * t)
        jupiter_a_0 = jupiter_a_0 + 5.20260319132d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_a_1 = jupiter_a_1 + 1.611596d-05*cos(2.13915074201d0 + 735.8765135318d0 * t)
        jupiter_a_1 = jupiter_a_1 + 1.760156d-05*cos(3.67637229071d0 + 206.1855484372d0 * t)
        jupiter_a_1 = jupiter_a_1 + 2.846542d-05*cos(2.88143856615d0 + 103.0927742186d0 * t)
        jupiter_a_1 = jupiter_a_1 + 2.974577d-05*cos(2.40984161552d0 + 419.4846438752d0 * t)
        jupiter_a_1 = jupiter_a_1 + 0.00010177614d0*cos(4.46063225487d0 + 7.1135470008d0 * t)
        jupiter_a_1=jupiter_a_1*t;

        jupiter_a_2 = jupiter_a_2 + 2.100381d-05*cos(2.75770207184d0 + 7.1135470008d0 * t)
        jupiter_a_2=jupiter_a_2*t*t;

        r = jupiter_a_2+jupiter_a_1+jupiter_a_0
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

        jupiter_h_0 = jupiter_h_0 + 1.03816d-05*cos(0.18273665816d0 + 6283.0758499914d0 * t)
        jupiter_h_0 = jupiter_h_0 + 1.205591d-05*cos(3.58200423326d0 + 316.3918696566d0 * t)
        jupiter_h_0 = jupiter_h_0 + 1.251514d-05*cos(0.53303247088d0 + 426.598190876d0 * t)
        jupiter_h_0 = jupiter_h_0 + 1.501758d-05*cos(4.71935111593d0 + 1162.4747044078d0 * t)
        jupiter_h_0 = jupiter_h_0 + 1.580155d-05*cos(5.93627628914d0 + 1052.2683831884d0 * t)
        jupiter_h_0 = jupiter_h_0 + 2.032835d-05*cos(1.12581931301d0 + 522.5774180938d0 * t)
        jupiter_h_0 = jupiter_h_0 + 2.842733d-05*cos(2.22519565559d0 + 529.6909650946d0 * t)
        jupiter_h_0 = jupiter_h_0 + 3.749183d-05*cos(6.17601797762d0 + 735.8765135318d0 * t)
        jupiter_h_0 = jupiter_h_0 + 6.402161d-05*cos(1.39213151486d0 + 206.1855484372d0 * t)
        jupiter_h_0 = jupiter_h_0 + 7.91439d-05*cos(2.52216677357d0 + 213.299095438d0 * t)
        jupiter_h_0 = jupiter_h_0 + 0.00010468075d0*cos(0.14414631816d0 + 419.4846438752d0 * t)
        jupiter_h_0 = jupiter_h_0 + 0.00012686502d0*cos(1.52173271472d0 + 110.2063212194d0 * t)
        jupiter_h_0 = jupiter_h_0 + 0.00037689163d0*cos(0.46902799622d0 + 7.1135470008d0 * t)
        jupiter_h_0 = jupiter_h_0 + 0.00064278139d0*cos(0.39928981461d0 + 103.0927742186d0 * t)
        jupiter_h_0 = jupiter_h_0 + 0.01200385748d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_h_1 = jupiter_h_1 + 1.666197d-05*cos(6.26691415094d0 + 110.2063212194d0 * t)
        jupiter_h_1 = jupiter_h_1 + 0.00010164439d0*cos(5.05135857516d0 + 7.1135470008d0 * t)
        jupiter_h_1 = jupiter_h_1 + 0.0021714936d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_h_1=jupiter_h_1*t;

        jupiter_h_2 = jupiter_h_2 + 1.409659d-05*cos(3.32663555725d0 + 7.1135470008d0 * t)
        jupiter_h_2 = jupiter_h_2 + 9.858539d-05*cos(0.0d0 + 0.0d0 * t)
        jupiter_h_2=jupiter_h_2*t*t;

        r = jupiter_h_2+jupiter_h_1+jupiter_h_0
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

        jupiter_k_0 = jupiter_k_0 + 1.038475d-05*cos(1.75340907792d0 + 6283.0758499914d0 * t)
        jupiter_k_0 = jupiter_k_0 + 1.472174d-05*cos(0.0738901965d0 + 1162.4747044078d0 * t)
        jupiter_k_0 = jupiter_k_0 + 1.558179d-05*cos(4.27725789559d0 + 1052.2683831884d0 * t)
        jupiter_k_0 = jupiter_k_0 + 1.747828d-05*cos(1.94483888566d0 + 426.598190876d0 * t)
        jupiter_k_0 = jupiter_k_0 + 2.035004d-05*cos(5.81350208632d0 + 522.5774180938d0 * t)
        jupiter_k_0 = jupiter_k_0 + 2.959813d-05*cos(3.68441778896d0 + 529.6909650946d0 * t)
        jupiter_k_0 = jupiter_k_0 + 3.765858d-05*cos(4.56504910618d0 + 735.8765135318d0 * t)
        jupiter_k_0 = jupiter_k_0 + 6.494479d-05*cos(6.11501213894d0 + 206.1855484372d0 * t)
        jupiter_k_0 = jupiter_k_0 + 8.220806d-05*cos(3.97331004047d0 + 213.299095438d0 * t)
        jupiter_k_0 = jupiter_k_0 + 0.00010740857d0*cos(4.85106997988d0 + 419.4846438752d0 * t)
        jupiter_k_0 = jupiter_k_0 + 0.00013518804d0*cos(2.94820975394d0 + 110.2063212194d0 * t)
        jupiter_k_0 = jupiter_k_0 + 0.00038006128d0*cos(2.03714771852d0 + 7.1135470008d0 * t)
        jupiter_k_0 = jupiter_k_0 + 0.0006528701d0*cos(5.14135675663d0 + 103.0927742186d0 * t)
        jupiter_k_0 = jupiter_k_0 + 0.04698572124d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_k_1 = jupiter_k_1 + 1.978042d-05*cos(1.13748818129d0 + 110.2063212194d0 * t)
        jupiter_k_1 = jupiter_k_1 + 0.00010303903d0*cos(0.33250058601d0 + 7.1135470008d0 * t)
        jupiter_k_1 = jupiter_k_1 + 0.00113010377d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_k_1=jupiter_k_1*t;

        jupiter_k_2 = jupiter_k_2 + 1.442597d-05*cos(4.88233039271d0 + 7.1135470008d0 * t)
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

        jupiter_l_0 = jupiter_l_0 + 1.238477d-05*cos(1.47069491582d0 + 1368.660252845d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.277074d-05*cos(1.00600288328d0 + 9683.5945811164d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.327642d-05*cos(5.86632120612d0 + 5753.3848848968d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.712597d-05*cos(3.32169437274d0 + 522.5774180938d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.8247d-05*cos(5.72883078185d0 + 529.6909650946d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.028225d-05*cos(1.06374295158d0 + 3.1813937377d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.129932d-05*cos(0.2186774321d0 + 1581.959348283d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.441576d-05*cos(1.7497498297d0 + 1052.2683831884d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.646804d-05*cos(4.69958744435d0 + 3.9321532631d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.844502d-05*cos(0.48003774299d0 + 1265.5674786264d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.874926d-05*cos(0.14125173816d0 + 213.299095438d0 * t)
        jupiter_l_0 = jupiter_l_0 + 5.02848d-05*cos(1.30119547663d0 + 110.2063212194d0 * t)
        jupiter_l_0 = jupiter_l_0 + 5.167226d-05*cos(2.03396982022d0 + 735.8765135318d0 * t)
        jupiter_l_0 = jupiter_l_0 + 5.301368d-05*cos(1.30630311058d0 + 14.2270940016d0 * t)
        jupiter_l_0 = jupiter_l_0 + 6.812004d-05*cos(3.60956583595d0 + 206.1855484372d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.0001173059d0*cos(0.74641135653d0 + 949.1756089698d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00013391386d0*cos(2.32518571601d0 + 419.4846438752d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00023791184d0*cos(1.27622244841d0 + 316.3918696566d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00032251188d0*cos(1.01358443926d0 + 632.7837393132d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00062308554d0*cos(3.41857056095d0 + 103.0927742186d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00573506125d0*cos(1.4439630642d0 + 7.1135470008d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.59954649739d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_l_1 = jupiter_l_1 + 1.163261d-05*cos(0.51449095629d0 + 3.9321532631d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.295763d-05*cos(5.55131472287d0 + 3.1813937377d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.825678d-05*cos(5.28404506455d0 + 206.1855484372d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.827425d-05*cos(3.98800487338d0 + 419.4846438752d0 * t)
        jupiter_l_1 = jupiter_l_1 + 4.234649d-05*cos(5.88973718187d0 + 14.2270940016d0 * t)
        jupiter_l_1 = jupiter_l_1 + 5.840251d-05*cos(4.4273475525d0 + 103.0927742186d0 * t)
        jupiter_l_1 = jupiter_l_1 + 0.00228875491d0*cos(6.02639570653d0 + 7.1135470008d0 * t)
        jupiter_l_1 = jupiter_l_1 + 529.6909650946d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_l_1=jupiter_l_1*t;

        jupiter_l_2 = jupiter_l_2 + 1.71976d-05*cos(4.18704068143d0 + 14.2270940016d0 * t)
        jupiter_l_2 = jupiter_l_2 + 0.00014837133d0*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_l_2 = jupiter_l_2 + 0.00047224495d0*cos(4.32142959829d0 + 7.1135470008d0 * t)
        jupiter_l_2=jupiter_l_2*t*t;

        jupiter_l_3 = jupiter_l_3 + 6.500387d-05*cos(2.5985888016d0 + 7.1135470008d0 * t)
        jupiter_l_3=jupiter_l_3*t*t*t;

        r = jupiter_l_3+jupiter_l_2+jupiter_l_1+jupiter_l_0
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

        jupiter_p_2 = jupiter_p_2 + 2.08676d-05*cos(0.0d0 + 0.0d0 * t)
        jupiter_p_2=jupiter_p_2*t*t;

        r = jupiter_p_2+jupiter_p_1+jupiter_p_0
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

        jupiter_q_2 = jupiter_q_2 + 1.667392d-05*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_q_2=jupiter_q_2*t*t;

        r = jupiter_q_2+jupiter_q_1+jupiter_q_0
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

        mars_a_0 = mars_a_0 + 1.039285d-05*cos(5.5584889074d0 + 2810.9214616052d0 * t)
        mars_a_0 = mars_a_0 + 1.214966d-05*cos(5.01404770046d0 + 398.1490034082d0 * t)
        mars_a_0 = mars_a_0 + 1.412662d-05*cos(3.2553877172d0 + 6872.6731195112d0 * t)
        mars_a_0 = mars_a_0 + 1.580816d-05*cos(1.832327862d0 + 2942.4634232916d0 * t)
        mars_a_0 = mars_a_0 + 1.639879d-05*cos(4.27793460842d0 + 8432.7643848156d0 * t)
        mars_a_0 = mars_a_0 + 2.201786d-05*cos(1.39247552912d0 + 2281.2304965106d0 * t)
        mars_a_0 = mars_a_0 + 6.601698d-05*cos(4.92149777465d0 + 5621.8429232104d0 * t)
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

        mars_h_0 = mars_h_0 + 1.024786d-05*cos(1.39271679546d0 + 796.2980068164d0 * t)
        mars_h_0 = mars_h_0 + 1.168491d-05*cos(0.61541102304d0 + 1751.539531416d0 * t)
        mars_h_0 = mars_h_0 + 1.376104d-05*cos(5.91426857264d0 + 5092.1519581158d0 * t)
        mars_h_0 = mars_h_0 + 1.767646d-05*cos(2.80798995472d0 + 398.1490034082d0 * t)
        mars_h_0 = mars_h_0 + 2.592276d-05*cos(0.12646371989d0 + 1059.3819301892d0 * t)
        mars_h_0 = mars_h_0 + 4.516507d-05*cos(2.19998239682d0 + 529.6909650946d0 * t)
        mars_h_0 = mars_h_0 + 8.158391d-05*cos(0.29399378947d0 + 2281.2304965106d0 * t)
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

        mars_k_0 = mars_k_0 + 1.023098d-05*cos(2.96623191194d0 + 796.2980068164d0 * t)
        mars_k_0 = mars_k_0 + 1.174163d-05*cos(5.31228741951d0 + 1751.539531416d0 * t)
        mars_k_0 = mars_k_0 + 1.30058d-05*cos(4.32747267803d0 + 5092.1519581158d0 * t)
        mars_k_0 = mars_k_0 + 1.710954d-05*cos(4.34158755371d0 + 398.1490034082d0 * t)
        mars_k_0 = mars_k_0 + 2.590017d-05*cos(1.69837709855d0 + 1059.3819301892d0 * t)
        mars_k_0 = mars_k_0 + 4.631835d-05*cos(3.76981942051d0 + 529.6909650946d0 * t)
        mars_k_0 = mars_k_0 + 8.228685d-05*cos(4.99515670335d0 + 2281.2304965106d0 * t)
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

        mars_l_0 = mars_l_0 + 1.044992d-05*cos(0.65472060539d0 + 5092.1519581158d0 * t)
        mars_l_0 = mars_l_0 + 1.124144d-05*cos(2.94366443964d0 + 1751.539531416d0 * t)
        mars_l_0 = mars_l_0 + 1.238027d-05*cos(1.66209647251d0 + 2544.3144198834d0 * t)
        mars_l_0 = mars_l_0 + 1.262899d-05*cos(0.26625922905d0 + 2942.4634232916d0 * t)
        mars_l_0 = mars_l_0 + 1.686484d-05*cos(0.77141234937d0 + 529.6909650946d0 * t)
        mars_l_0 = mars_l_0 + 1.733875d-05*cos(5.83752078998d0 + 8432.7643848156d0 * t)
        mars_l_0 = mars_l_0 + 2.124413d-05*cos(5.04195951157d0 + 796.2980068164d0 * t)
        mars_l_0 = mars_l_0 + 2.93759d-05*cos(6.07893711376d0 + 0.0673103028d0 * t)
        mars_l_0 = mars_l_0 + 3.054393d-05*cos(0.85670458531d0 + 191.4482661116d0 * t)
        mars_l_0 = mars_l_0 + 3.321877d-05*cos(0.85790353464d0 + 2810.9214616052d0 * t)
        mars_l_0 = mars_l_0 + 5.745457d-05*cos(2.94479034922d0 + 2281.2304965106d0 * t)
        mars_l_0 = mars_l_0 + 6.592291d-05*cos(0.3679227134d0 + 398.1490034082d0 * t)
        mars_l_0 = mars_l_0 + 8.395541d-05*cos(0.20835197721d0 + 5621.8429232104d0 * t)
        mars_l_0 = mars_l_0 + 8.926849d-05*cos(4.15697846934d0 + 0.0172536522d0 * t)
        mars_l_0 = mars_l_0 + 0.00027745033d0*cos(5.97049541372d0 + 3.523118349d0 * t)
        mars_l_0 = mars_l_0 + 6.20347611291d0*cos(0.0d0 + 0.0d0 * t)

        mars_l_1 = mars_l_1 + 3.452439d-05*cos(4.73210379431d0 + 3.523118349d0 * t)
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

        mars_p_2 = mars_p_2 + 1.922224d-05*cos(3.14159265359d0 + 0.0d0 * t)
        mars_p_2=mars_p_2*t*t;

        r = mars_p_2+mars_p_1+mars_p_0
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

        mars_q_2 = mars_q_2 + 4.077491d-05*cos(3.14159265359d0 + 0.0d0 * t)
        mars_q_2=mars_q_2*t*t;

        r = mars_q_2+mars_q_1+mars_q_0
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

        mercury_h_2 = mercury_h_2 + 7.97412d-05*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_h_2=mercury_h_2*t*t;

        r = mercury_h_2+mercury_h_1+mercury_h_0
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

        mercury_k_2 = mercury_k_2 + 1.860568d-05*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_k_2=mercury_k_2*t*t;

        r = mercury_k_2+mercury_k_1+mercury_k_0
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

        mercury_l_0 = mercury_l_0 + 1.732389d-05*cos(4.10404056787d0 + 5661.3320491522d0 * t)
        mercury_l_0 = mercury_l_0 + 3.557754d-05*cos(1.51229384945d0 + 1109.3785520934d0 * t)
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

        mercury_q_2 = mercury_q_2 + 1.071215d-05*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_q_2=mercury_q_2*t*t;

        r = mercury_q_2+mercury_q_1+mercury_q_0
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

        neptune_a_0 = neptune_a_0 + 1.003414d-05*cos(3.30114109938d0 + 31.019488637d0 * t)
        neptune_a_0 = neptune_a_0 + 1.009977d-05*cos(5.10943006583d0 + 98.8999885246d0 * t)
        neptune_a_0 = neptune_a_0 + 1.048012d-05*cos(5.77490234485d0 + 291.7040307277d0 * t)
        neptune_a_0 = neptune_a_0 + 1.051232d-05*cos(5.05228678509d0 + 564.8550553158d0 * t)
        neptune_a_0 = neptune_a_0 + 1.128798d-05*cos(6.1764413465d0 + 251.4321310758d0 * t)
        neptune_a_0 = neptune_a_0 + 1.166454d-05*cos(0.07504784936d0 + 846.0828347512d0 * t)
        neptune_a_0 = neptune_a_0 + 1.259933d-05*cos(4.82781905172d0 + 366.485629295d0 * t)
        neptune_a_0 = neptune_a_0 + 1.297766d-05*cos(0.47959536188d0 + 103.0927742186d0 * t)
        neptune_a_0 = neptune_a_0 + 1.385383d-05*cos(1.54908001242d0 + 1474.6737883704d0 * t)
        neptune_a_0 = neptune_a_0 + 1.433109d-05*cos(1.33180211256d0 + 451.9404211107d0 * t)
        neptune_a_0 = neptune_a_0 + 1.599634d-05*cos(6.13584178809d0 + 106.9767433719d0 * t)
        neptune_a_0 = neptune_a_0 + 1.625124d-05*cos(5.18800512745d0 + 415.2918581812d0 * t)
        neptune_a_0 = neptune_a_0 + 1.646734d-05*cos(5.60253199044d0 + 255.0554677982d0 * t)
        neptune_a_0 = neptune_a_0 + 1.685284d-05*cos(2.6816552433d0 + 12528.018664345d0 * t)
        neptune_a_0 = neptune_a_0 + 1.749735d-05*cos(1.73835044368d0 + 528.2064923863d0 * t)
        neptune_a_0 = neptune_a_0 + 1.75293d-05*cos(2.14333475172d0 + 52137.67324751059d0 * t)
        neptune_a_0 = neptune_a_0 + 2.121509d-05*cos(4.66119138983d0 + 329.8370663655d0 * t)
        neptune_a_0 = neptune_a_0 + 2.137597d-05*cos(2.6204097208d0 + 2080.6308247406d0 * t)
        neptune_a_0 = neptune_a_0 + 2.141554d-05*cos(4.23262734613d0 + 700.6642392008d0 * t)
        neptune_a_0 = neptune_a_0 + 2.189863d-05*cos(2.76170836241d0 + 72.0732855816d0 * t)
        neptune_a_0 = neptune_a_0 + 2.504618d-05*cos(0.44310110215d0 + 312.1990839626d0 * t)
        neptune_a_0 = neptune_a_0 + 2.598581d-05*cos(5.42929247282d0 + 218.4069048687d0 * t)
        neptune_a_0 = neptune_a_0 + 2.620355d-05*cos(0.95334129551d0 + 395.578702239d0 * t)
        neptune_a_0 = neptune_a_0 + 2.699023d-05*cos(0.89541716557d0 + 488.5889840402d0 * t)
        neptune_a_0 = neptune_a_0 + 2.717873d-05*cos(2.38333001564d0 + 74.7815985673d0 * t)
        neptune_a_0 = neptune_a_0 + 2.776207d-05*cos(5.94937385502d0 + 70.3281804424d0 * t)
        neptune_a_0 = neptune_a_0 + 2.846186d-05*cos(0.20239512935d0 + 456.3938392356d0 * t)
        neptune_a_0 = neptune_a_0 + 2.951694d-05*cos(5.433836195d0 + 911.042573332d0 * t)
        neptune_a_0 = neptune_a_0 + 2.98295d-05*cos(4.38693444607d0 + 807.9497991134d0 * t)
        neptune_a_0 = neptune_a_0 + 3.3533d-05*cos(1.79815387525d0 + 138.5174968707d0 * t)
        neptune_a_0 = neptune_a_0 + 3.38612d-05*cos(6.14643908326d0 + 1019.7644218431d0 * t)
        neptune_a_0 = neptune_a_0 + 3.392909d-05*cos(3.54659671932d0 + 1512.8068240082d0 * t)
        neptune_a_0 = neptune_a_0 + 3.543495d-05*cos(5.42973911153d0 + 494.5268748734d0 * t)
        neptune_a_0 = neptune_a_0 + 3.583908d-05*cos(4.49408030978d0 + 293.188503436d0 * t)
        neptune_a_0 = neptune_a_0 + 3.677143d-05*cos(0.83586785926d0 + 1022.7333672597d0 * t)
        neptune_a_0 = neptune_a_0 + 3.927886d-05*cos(3.58953387923d0 + 278.2588340188d0 * t)
        neptune_a_0 = neptune_a_0 + 4.046438d-05*cos(4.93509230909d0 + 1028.3624415522d0 * t)
        neptune_a_0 = neptune_a_0 + 4.057513d-05*cos(0.25568522011d0 + 594.6507036754d0 * t)
        neptune_a_0 = neptune_a_0 + 4.133043d-05*cos(5.2548493513d0 + 181.7583419392d0 * t)
        neptune_a_0 = neptune_a_0 + 4.369251d-05*cos(4.06194785498d0 + 39.6175083461d0 * t)
        neptune_a_0 = neptune_a_0 + 4.544908d-05*cos(2.35139605515d0 + 567.8240007324d0 * t)
        neptune_a_0 = neptune_a_0 + 4.934813d-05*cos(0.36064784582d0 + 529.6909650946d0 * t)
        neptune_a_0 = neptune_a_0 + 5.62918d-05*cos(0.85835852864d0 + 1014.1353475506d0 * t)
        neptune_a_0 = neptune_a_0 + 5.773397d-05*cos(2.64610145306d0 + 4.4534181249d0 * t)
        neptune_a_0 = neptune_a_0 + 6.08335d-05*cos(4.32651626591d0 + 256.5399405065d0 * t)
        neptune_a_0 = neptune_a_0 + 6.376652d-05*cos(5.76130274516d0 + 33.6796175129d0 * t)
        neptune_a_0 = neptune_a_0 + 6.67486d-05*cos(5.07928918413d0 + 145.1097790097d0 * t)
        neptune_a_0 = neptune_a_0 + 6.895671d-05*cos(0.98793536426d0 + 1124.34166877d0 * t)
        neptune_a_0 = neptune_a_0 + 7.632319d-05*cos(3.96168072784d0 + 381.3516082374d0 * t)
        neptune_a_0 = neptune_a_0 + 7.782789d-05*cos(2.39187318497d0 + 525.4981794006d0 * t)
        neptune_a_0 = neptune_a_0 + 8.622145d-05*cos(5.37576545499d0 + 26049.7701059364d0 * t)
        neptune_a_0 = neptune_a_0 + 8.707313d-05*cos(0.89208438481d0 + 3302.479391062d0 * t)
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

        neptune_a_1 = neptune_a_1 + 1.10546d-05*cos(4.8830643462d0 + 491.5579294568d0 * t)
        neptune_a_1 = neptune_a_1 + 1.181676d-05*cos(1.42716610982d0 + 490.0734567485d0 * t)
        neptune_a_1 = neptune_a_1 + 1.279417d-05*cos(4.85952483354d0 + 493.0424021651d0 * t)
        neptune_a_1 = neptune_a_1 + 1.294918d-05*cos(0.1025818495d0 + 137.0330241624d0 * t)
        neptune_a_1 = neptune_a_1 + 1.334471d-05*cos(5.44088442936d0 + 395.578702239d0 * t)
        neptune_a_1 = neptune_a_1 + 1.396569d-05*cos(3.9522429184d0 + 453.424893819d0 * t)
        neptune_a_1 = neptune_a_1 + 1.753956d-05*cos(3.31444002417d0 + 1028.3624415522d0 * t)
        neptune_a_1 = neptune_a_1 + 1.78129d-05*cos(2.71816195692d0 + 1014.1353475506d0 * t)
        neptune_a_1 = neptune_a_1 + 2.1102d-05*cos(5.77549830815d0 + 381.3516082374d0 * t)
        neptune_a_1 = neptune_a_1 + 2.161942d-05*cos(2.11259824319d0 + 2.9689454166d0 * t)
        neptune_a_1 = neptune_a_1 + 2.59404d-05*cos(4.47823296834d0 + 601.7642506762d0 * t)
        neptune_a_1 = neptune_a_1 + 3.075458d-05*cos(4.97970096897d0 + 38.1330356378d0 * t)
        neptune_a_1 = neptune_a_1 + 3.776476d-05*cos(1.42851534633d0 + 1550.939859646d0 * t)
        neptune_a_1 = neptune_a_1 + 0.00010028658d0*cos(0.53331428424d0 + 168.0525127994d0 * t)
        neptune_a_1 = neptune_a_1 + 0.00010242826d0*cos(0.02106658542d0 + 182.279606801d0 * t)
        neptune_a_1 = neptune_a_1 + 0.00013646732d0*cos(3.31887794551d0 + 1.4844727083d0 * t)
        neptune_a_1 = neptune_a_1 + 0.00016926224d0*cos(3.40079518197d0 + 484.444382456d0 * t)
        neptune_a_1 = neptune_a_1 + 0.0001698372d0*cos(2.88749614679d0 + 498.6714764576d0 * t)
        neptune_a_1 = neptune_a_1 + 0.00021981792d0*cos(5.24159938374d0 + 388.4651552382d0 * t)
        neptune_a_1 = neptune_a_1 + 0.00035017221d0*cos(1.07792431879d0 + 1021.2488945514d0 * t)
        neptune_a_1=neptune_a_1*t;

        neptune_a_2 = neptune_a_2 + 1.31513d-05*cos(3.42363937604d0 + 175.1660598002d0 * t)
        neptune_a_2 = neptune_a_2 + 1.59701d-05*cos(3.46010091566d0 + 388.4651552382d0 * t)
        neptune_a_2 = neptune_a_2 + 2.066951d-05*cos(2.23303786678d0 + 168.0525127994d0 * t)
        neptune_a_2 = neptune_a_2 + 2.115677d-05*cos(4.59469314887d0 + 182.279606801d0 * t)
        neptune_a_2 = neptune_a_2 + 2.216295d-05*cos(0.00738785922d0 + 491.5579294568d0 * t)
        neptune_a_2 = neptune_a_2 + 2.282135d-05*cos(6.09486118766d0 + 1021.2488945514d0 * t)
        neptune_a_2 = neptune_a_2 + 3.493966d-05*cos(5.10707633632d0 + 484.444382456d0 * t)
        neptune_a_2 = neptune_a_2 + 3.503585d-05*cos(1.18344352637d0 + 498.6714764576d0 * t)
        neptune_a_2=neptune_a_2*t*t;

        r = neptune_a_2+neptune_a_1+neptune_a_0
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

        neptune_h_0 = neptune_h_0 + 1.135355d-05*cos(4.85626290641d0 + 36.6485629295d0 * t)
        neptune_h_0 = neptune_h_0 + 1.142076d-05*cos(0.98492427695d0 + 33.6796175129d0 * t)
        neptune_h_0 = neptune_h_0 + 1.184075d-05*cos(0.08056022972d0 + 108.4612160802d0 * t)
        neptune_h_0 = neptune_h_0 + 1.246945d-05*cos(1.12070201833d0 + 4.4534181249d0 * t)
        neptune_h_0 = neptune_h_0 + 1.331561d-05*cos(2.05769294802d0 + 451.9404211107d0 * t)
        neptune_h_0 = neptune_h_0 + 1.340035d-05*cos(3.02916883266d0 + 454.9093665273d0 * t)
        neptune_h_0 = neptune_h_0 + 1.677116d-05*cos(5.77508123167d0 + 491.5579294568d0 * t)
        neptune_h_0 = neptune_h_0 + 1.685035d-05*cos(3.61864095194d0 + 350.3321196004d0 * t)
        neptune_h_0 = neptune_h_0 + 1.961993d-05*cos(5.89537496236d0 + 415.2918581812d0 * t)
        neptune_h_0 = neptune_h_0 + 2.367379d-05*cos(1.60551412353d0 + 10213.285546211d0 * t)
        neptune_h_0 = neptune_h_0 + 2.501304d-05*cos(0.18292649334d0 + 6283.0758499914d0 * t)
        neptune_h_0 = neptune_h_0 + 2.507622d-05*cos(6.19465876991d0 + 71.8126531507d0 * t)
        neptune_h_0 = neptune_h_0 + 4.234919d-05*cos(4.81228455925d0 + 426.598190876d0 * t)
        neptune_h_0 = neptune_h_0 + 5.954962d-05*cos(4.46229789809d0 + 983.1158589136d0 * t)
        neptune_h_0 = neptune_h_0 + 6.86858d-05*cos(6.02685250841d0 + 35.1640902212d0 * t)
        neptune_h_0 = neptune_h_0 + 8.735589d-05*cos(3.91135863579d0 + 74.7815985673d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00015834646d0*cos(2.35068672532d0 + 2.9689454166d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00016671327d0*cos(5.66175544286d0 + 1059.3819301892d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00034070791d0*cos(4.38749299404d0 + 137.0330241624d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00059736086d0*cos(3.56479788019d0 + 1.4844727083d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00076068364d0*cos(5.58664660018d0 + 213.299095438d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00131043136d0*cos(4.11313570675d0 + 453.424893819d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00136278888d0*cos(3.74103613444d0 + 38.1330356378d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00344034784d0*cos(5.31201105782d0 + 529.6909650946d0 * t)
        neptune_h_0 = neptune_h_0 + 0.00669242413d0*cos(0.0d0 + 0.0d0 * t)

        neptune_h_1 = neptune_h_1 + 7.824336d-05*cos(0.0d0 + 0.0d0 * t)
        neptune_h_1=neptune_h_1*t;

        r = neptune_h_1+neptune_h_0
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

        neptune_k_0 = neptune_k_0 + 1.146706d-05*cos(5.69699174151d0 + 33.6796175129d0 * t)
        neptune_k_0 = neptune_k_0 + 1.205329d-05*cos(4.794655076d0 + 108.4612160802d0 * t)
        neptune_k_0 = neptune_k_0 + 1.253789d-05*cos(2.69174021181d0 + 4.4534181249d0 * t)
        neptune_k_0 = neptune_k_0 + 1.331545d-05*cos(0.48693991119d0 + 451.9404211107d0 * t)
        neptune_k_0 = neptune_k_0 + 1.3393d-05*cos(1.45875695517d0 + 454.9093665273d0 * t)
        neptune_k_0 = neptune_k_0 + 1.660368d-05*cos(2.04259826446d0 + 350.3321196004d0 * t)
        neptune_k_0 = neptune_k_0 + 1.78782d-05*cos(3.54792002715d0 + 491.5579294568d0 * t)
        neptune_k_0 = neptune_k_0 + 1.961981d-05*cos(4.32459826389d0 + 415.2918581812d0 * t)
        neptune_k_0 = neptune_k_0 + 2.367417d-05*cos(3.1774841957d0 + 10213.285546211d0 * t)
        neptune_k_0 = neptune_k_0 + 2.501595d-05*cos(1.75321813791d0 + 6283.0758499914d0 * t)
        neptune_k_0 = neptune_k_0 + 2.537316d-05*cos(4.6245678947d0 + 71.8126531507d0 * t)
        neptune_k_0 = neptune_k_0 + 4.237518d-05*cos(0.09987056189d0 + 426.598190876d0 * t)
        neptune_k_0 = neptune_k_0 + 5.959757d-05*cos(2.8919574042d0 + 983.1158589136d0 * t)
        neptune_k_0 = neptune_k_0 + 6.85341d-05*cos(4.45483856472d0 + 35.1640902212d0 * t)
        neptune_k_0 = neptune_k_0 + 8.693527d-05*cos(5.48153407016d0 + 74.7815985673d0 * t)
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

        neptune_l_0 = neptune_l_0 + 1.095165d-05*cos(1.53739829302d0 + 213.299095438d0 * t)
        neptune_l_0 = neptune_l_0 + 1.181561d-05*cos(1.89487772228d0 + 453.424893819d0 * t)
        neptune_l_0 = neptune_l_0 + 1.19645d-05*cos(0.69928495249d0 + 1550.939859646d0 * t)
        neptune_l_0 = neptune_l_0 + 1.262634d-05*cos(0.12984088183d0 + 484.444382456d0 * t)
        neptune_l_0 = neptune_l_0 + 1.269673d-05*cos(3.01840568374d0 + 498.6714764576d0 * t)
        neptune_l_0 = neptune_l_0 + 1.404152d-05*cos(6.2802571865d0 + 71.8126531507d0 * t)
        neptune_l_0 = neptune_l_0 + 1.659134d-05*cos(2.11418238398d0 + 350.3321196004d0 * t)
        neptune_l_0 = neptune_l_0 + 1.735754d-05*cos(5.54936890835d0 + 38.1330356378d0 * t)
        neptune_l_0 = neptune_l_0 + 1.859332d-05*cos(5.39275689304d0 + 146.594251718d0 * t)
        neptune_l_0 = neptune_l_0 + 2.219849d-05*cos(4.22711801112d0 + 490.0734567485d0 * t)
        neptune_l_0 = neptune_l_0 + 2.240383d-05*cos(4.20707088869d0 + 4.4534181249d0 * t)
        neptune_l_0 = neptune_l_0 + 2.281838d-05*cos(5.19871056223d0 + 493.0424021651d0 * t)
        neptune_l_0 = neptune_l_0 + 3.147352d-05*cos(2.57721133604d0 + 10175.1525105732d0 * t)
        neptune_l_0 = neptune_l_0 + 3.322163d-05*cos(1.15397315005d0 + 6244.9428143536d0 * t)
        neptune_l_0 = neptune_l_0 + 3.802349d-05*cos(5.22333208877d0 + 109.9456887885d0 * t)
        neptune_l_0 = neptune_l_0 + 4.659994d-05*cos(1.33477314139d0 + 529.6909650946d0 * t)
        neptune_l_0 = neptune_l_0 + 4.680334d-05*cos(6.09321391056d0 + 35.1640902212d0 * t)
        neptune_l_0 = neptune_l_0 + 5.377245d-05*cos(5.78272041689d0 + 388.4651552382d0 * t)
        neptune_l_0 = neptune_l_0 + 8.886033d-05*cos(5.05361823928d0 + 73.297125859d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00016297466d0*cos(4.88440388945d0 + 36.6485629295d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00021806166d0*cos(0.34972092081d0 + 1021.2488945514d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00041703723d0*cos(5.41098453927d0 + 2.9689454166d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00092919548d0*cos(0.27470534254d0 + 175.1660598002d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00441710236d0*cos(0.00020868462d0 + 491.5579294568d0 * t)
        neptune_l_0 = neptune_l_0 + 0.01017628072d0*cos(0.48586478491d0 + 1.4844727083d0 * t)
        neptune_l_0 = neptune_l_0 + 5.31188628676d0*cos(0.0d0 + 0.0d0 * t)

        neptune_l_1 = neptune_l_1 + 1.099574d-05*cos(5.79033065445d0 + 1021.2488945514d0 * t)
        neptune_l_1 = neptune_l_1 + 1.295022d-05*cos(3.67289349677d0 + 2.9689454166d0 * t)
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

        neptune_p_0 = neptune_p_0 + 1.009343d-05*cos(3.18233913691d0 + 491.5579294568d0 * t)
        neptune_p_0 = neptune_p_0 + 0.01151683985d0*cos(0.0d0 + 0.0d0 * t)

        neptune_p_1 = neptune_p_1 + 2.575536d-05*cos(0.0d0 + 0.0d0 * t)
        neptune_p_1=neptune_p_1*t;

        r = neptune_p_1+neptune_p_0
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

        neptune_q_0 = neptune_q_0 + 1.01007d-05*cos(1.61174508752d0 + 491.5579294568d0 * t)
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

        saturn_a_0 = saturn_a_0 + 1.010817d-05*cos(2.14079742612d0 + 692.5874843535d0 * t)
        saturn_a_0 = saturn_a_0 + 1.039659d-05*cos(1.70722458368d0 + 2950.619601128d0 * t)
        saturn_a_0 = saturn_a_0 + 1.065404d-05*cos(1.63151081253d0 + 5856.4776591154d0 * t)
        saturn_a_0 = saturn_a_0 + 1.073545d-05*cos(3.09127102485d0 + 2420.9286360334d0 * t)
        saturn_a_0 = saturn_a_0 + 1.144205d-05*cos(5.63300199931d0 + 1692.1656695024d0 * t)
        saturn_a_0 = saturn_a_0 + 1.374324d-05*cos(2.32562998878d0 + 1258.4539316256d0 * t)
        saturn_a_0 = saturn_a_0 + 1.424893d-05*cos(3.20459836704d0 + 117.3198682202d0 * t)
        saturn_a_0 = saturn_a_0 + 1.496629d-05*cos(3.43523329566d0 + 1045.1548361876d0 * t)
        saturn_a_0 = saturn_a_0 + 1.49986d-05*cos(4.84564304198d0 + 1589.0728952838d0 * t)
        saturn_a_0 = saturn_a_0 + 1.549891d-05*cos(3.53099004581d0 + 25874.6040461362d0 * t)
        saturn_a_0 = saturn_a_0 + 1.609936d-05*cos(2.39037566076d0 + 2428.0421830342d0 * t)
        saturn_a_0 = saturn_a_0 + 1.634105d-05*cos(5.33009798117d0 + 3127.3133312618d0 * t)
        saturn_a_0 = saturn_a_0 + 1.720664d-05*cos(3.1685072882d0 + 340.7708920448d0 * t)
        saturn_a_0 = saturn_a_0 + 1.763236d-05*cos(5.27023251258d0 + 199.0720014364d0 * t)
        saturn_a_0 = saturn_a_0 + 1.772523d-05*cos(3.36928951644d0 + 2104.5367663768d0 * t)
        saturn_a_0 = saturn_a_0 + 1.812532d-05*cos(0.02345178075d0 + 3.9321532631d0 * t)
        saturn_a_0 = saturn_a_0 + 1.830544d-05*cos(0.83908078121d0 + 2847.5268269094d0 * t)
        saturn_a_0 = saturn_a_0 + 1.87633d-05*cos(3.07619330668d0 + 853.196381752d0 * t)
        saturn_a_0 = saturn_a_0 + 1.90707d-05*cos(1.95952356206d0 + 2634.2277314714d0 * t)
        saturn_a_0 = saturn_a_0 + 2.180444d-05*cos(2.56104191923d0 + 942.062061969d0 * t)
        saturn_a_0 = saturn_a_0 + 2.231204d-05*cos(3.70941707745d0 + 728.762966531d0 * t)
        saturn_a_0 = saturn_a_0 + 2.318289d-05*cos(0.44379732912d0 + 554.0699874828d0 * t)
        saturn_a_0 = saturn_a_0 + 2.510095d-05*cos(5.09716024446d0 + 1272.6810256272d0 * t)
        saturn_a_0 = saturn_a_0 + 2.556787d-05*cos(2.77336009184d0 + 625.6701923124d0 * t)
        saturn_a_0 = saturn_a_0 + 2.574202d-05*cos(2.64518630194d0 + 2111.6503133776d0 * t)
        saturn_a_0 = saturn_a_0 + 2.908609d-05*cos(3.65144679149d0 + 1788.1448967202d0 * t)
        saturn_a_0 = saturn_a_0 + 3.017391d-05*cos(3.69181538175d0 + 350.3321196004d0 * t)
        saturn_a_0 = saturn_a_0 + 3.038127d-05*cos(0.03748334373d0 + 1059.3819301892d0 * t)
        saturn_a_0 = saturn_a_0 + 3.185981d-05*cos(2.91148783391d0 + 426.598190876d0 * t)
        saturn_a_0 = saturn_a_0 + 3.19113d-05*cos(1.49704278283d0 + 202.2533951741d0 * t)
        saturn_a_0 = saturn_a_0 + 3.19244d-05*cos(4.0242542795d0 + 412.3710968744d0 * t)
        saturn_a_0 = saturn_a_0 + 3.484692d-05*cos(2.2158950068d0 + 2317.8358618148d0 * t)
        saturn_a_0 = saturn_a_0 + 3.520766d-05*cos(1.64836730035d0 + 138.5174968707d0 * t)
        saturn_a_0 = saturn_a_0 + 3.730627d-05*cos(1.06943140301d0 + 2531.1349572528d0 * t)
        saturn_a_0 = saturn_a_0 + 3.8852d-05*cos(2.89854059721d0 + 1795.258443721d0 * t)
        saturn_a_0 = saturn_a_0 + 3.964442d-05*cos(5.34743947465d0 + 956.2891559706d0 * t)
        saturn_a_0 = saturn_a_0 + 4.322446d-05*cos(1.13068618048d0 + 529.6909650946d0 * t)
        saturn_a_0 = saturn_a_0 + 4.577121d-05*cos(4.42047324112d0 + 11.0457002639d0 * t)
        saturn_a_0 = saturn_a_0 + 4.577761d-05*cos(0.35760617578d0 + 742.9900605326d0 * t)
        saturn_a_0 = saturn_a_0 + 4.759551d-05*cos(3.93823562434d0 + 1471.7530270636d0 * t)
        saturn_a_0 = saturn_a_0 + 4.90821d-05*cos(0.72709275611d0 + 63.7358983034d0 * t)
        saturn_a_0 = saturn_a_0 + 5.101971d-05*cos(3.30359991147d0 + 1162.4747044078d0 * t)
        saturn_a_0 = saturn_a_0 + 5.139135d-05*cos(5.5403888705d0 + 639.897286314d0 * t)
        saturn_a_0 = saturn_a_0 + 5.202303d-05*cos(3.14859040562d0 + 1478.8665740644d0 * t)
        saturn_a_0 = saturn_a_0 + 5.411083d-05*cos(2.87617167843d0 + 14.2270940016d0 * t)
        saturn_a_0 = saturn_a_0 + 5.415736d-05*cos(5.03747123641d0 + 415.5524906121d0 * t)
        saturn_a_0 = saturn_a_0 + 6.346406d-05*cos(2.47617493807d0 + 2001.4439921582d0 * t)
        saturn_a_0 = saturn_a_0 + 7.616638d-05*cos(1.30738426041d0 + 2214.7430875962d0 * t)
        saturn_a_0 = saturn_a_0 + 7.636461d-05*cos(0.08643307957d0 + 95.9792272178d0 * t)
        saturn_a_0 = saturn_a_0 + 7.822638d-05*cos(4.22985906112d0 + 1155.361157407d0 * t)
        saturn_a_0 = saturn_a_0 + 9.00776d-05*cos(0.28957280814d0 + 1375.7737998458d0 * t)
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

        saturn_a_1 = saturn_a_1 + 1.000522d-05*cos(4.42966424505d0 + 625.6701923124d0 * t)
        saturn_a_1 = saturn_a_1 + 1.004969d-05*cos(3.38841558218d0 + 1272.6810256272d0 * t)
        saturn_a_1 = saturn_a_1 + 1.176712d-05*cos(0.68336133189d0 + 199.0720014364d0 * t)
        saturn_a_1 = saturn_a_1 + 1.192975d-05*cos(5.41193208721d0 + 728.762966531d0 * t)
        saturn_a_1 = saturn_a_1 + 1.289901d-05*cos(5.66421564917d0 + 1471.7530270636d0 * t)
        saturn_a_1 = saturn_a_1 + 1.324172d-05*cos(4.84316362024d0 + 742.9900605326d0 * t)
        saturn_a_1 = saturn_a_1 + 1.56739d-05*cos(4.48491632282d0 + 1685.0521225016d0 * t)
        saturn_a_1 = saturn_a_1 + 1.594273d-05*cos(3.64295931777d0 + 956.2891559706d0 * t)
        saturn_a_1 = saturn_a_1 + 1.709753d-05*cos(5.71449088168d0 + 412.3710968744d0 * t)
        saturn_a_1 = saturn_a_1 + 2.070562d-05*cos(3.85273193471d0 + 639.897286314d0 * t)
        saturn_a_1 = saturn_a_1 + 2.118165d-05*cos(5.95564480205d0 + 1155.361157407d0 * t)
        saturn_a_1 = saturn_a_1 + 2.138957d-05*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_a_1 = saturn_a_1 + 2.815592d-05*cos(4.75042687464d0 + 1368.660252845d0 * t)
        saturn_a_1 = saturn_a_1 + 3.432323d-05*cos(1.89093890567d0 + 95.9792272178d0 * t)
        saturn_a_1 = saturn_a_1 + 3.777478d-05*cos(0.13473525815d0 + 838.9692877504d0 * t)
        saturn_a_1 = saturn_a_1 + 4.317657d-05*cos(1.1777276099d0 + 14.2270940016d0 * t)
        saturn_a_1 = saturn_a_1 + 5.231753d-05*cos(5.01328016493d0 + 1052.2683831884d0 * t)
        saturn_a_1 = saturn_a_1 + 6.615475d-05*cos(0.24404793981d0 + 522.5774180938d0 * t)
        saturn_a_1 = saturn_a_1 + 7.440338d-05*cos(5.50519123677d0 + 846.0828347512d0 * t)
        saturn_a_1 = saturn_a_1 + 8.158206d-05*cos(1.61713789294d0 + 103.0927742186d0 * t)
        saturn_a_1 = saturn_a_1 + 9.998081d-05*cos(5.28159092946d0 + 735.8765135318d0 * t)
        saturn_a_1 = saturn_a_1 + 0.00014543221d0*cos(0.53828819496d0 + 206.1855484372d0 * t)
        saturn_a_1 = saturn_a_1 + 0.00014944585d0*cos(1.01717765228d0 + 323.5054166574d0 * t)
        saturn_a_1 = saturn_a_1 + 0.00016133051d0*cos(1.54311529056d0 + 309.2783226558d0 * t)
        saturn_a_1 = saturn_a_1 + 0.00017963494d0*cos(1.85653949491d0 + 110.2063212194d0 * t)
        saturn_a_1 = saturn_a_1 + 0.00019395929d0*cos(3.30487092881d0 + 213.299095438d0 * t)
        saturn_a_1 = saturn_a_1 + 0.00020477409d0*cos(5.54887034001d0 + 419.4846438752d0 * t)
        saturn_a_1 = saturn_a_1 + 0.00115108584d0*cos(1.31913907888d0 + 7.1135470008d0 * t)
        saturn_a_1=saturn_a_1*t;

        saturn_a_2 = saturn_a_2 + 1.317805d-05*cos(1.65305610809d0 + 213.299095438d0 * t)
        saturn_a_2 = saturn_a_2 + 1.44407d-05*cos(1.0432495901d0 + 419.4846438752d0 * t)
        saturn_a_2 = saturn_a_2 + 1.751432d-05*cos(5.75969476921d0 + 14.2270940016d0 * t)
        saturn_a_2 = saturn_a_2 + 1.756009d-05*cos(4.4346498361d0 + 316.3918696566d0 * t)
        saturn_a_2 = saturn_a_2 + 2.021192d-05*cos(2.25480844844d0 + 206.1855484372d0 * t)
        saturn_a_2 = saturn_a_2 + 2.367005d-05*cos(0.2258564976d0 + 110.2063212194d0 * t)
        saturn_a_2 = saturn_a_2 + 3.067531d-05*cos(5.60883291989d0 + 323.5054166574d0 * t)
        saturn_a_2 = saturn_a_2 + 3.334839d-05*cos(3.2558917841d0 + 309.2783226558d0 * t)
        saturn_a_2 = saturn_a_2 + 0.00023754277d0*cos(5.89931397638d0 + 7.1135470008d0 * t)
        saturn_a_2=saturn_a_2*t*t;

        saturn_a_3 = saturn_a_3 + 3.271907d-05*cos(4.1775654813d0 + 7.1135470008d0 * t)
        saturn_a_3=saturn_a_3*t*t*t;

        r = saturn_a_3+saturn_a_2+saturn_a_1+saturn_a_0
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

        saturn_h_0 = saturn_h_0 + 1.014997d-05*cos(1.23700809353d0 + 1478.8665740644d0 * t)
        saturn_h_0 = saturn_h_0 + 1.059846d-05*cos(3.42145576578d0 + 1471.7530270636d0 * t)
        saturn_h_0 = saturn_h_0 + 1.116994d-05*cos(3.87361907926d0 + 949.1756089698d0 * t)
        saturn_h_0 = saturn_h_0 + 1.332016d-05*cos(1.60585238019d0 + 10213.285546211d0 * t)
        saturn_h_0 = saturn_h_0 + 1.406014d-05*cos(0.18303643712d0 + 6283.0758499914d0 * t)
        saturn_h_0 = saturn_h_0 + 1.433129d-05*cos(5.28852869095d0 + 625.6701923124d0 * t)
        saturn_h_0 = saturn_h_0 + 1.463393d-05*cos(2.27697571268d0 + 1685.0521225016d0 * t)
        saturn_h_0 = saturn_h_0 + 1.865955d-05*cos(1.45632551073d0 + 1162.4747044078d0 * t)
        saturn_h_0 = saturn_h_0 + 2.014723d-05*cos(3.69869782746d0 + 1155.361157407d0 * t)
        saturn_h_0 = saturn_h_0 + 2.154026d-05*cos(1.83308758095d0 + 846.0828347512d0 * t)
        saturn_h_0 = saturn_h_0 + 2.433657d-05*cos(3.06052361648d0 + 323.5054166574d0 * t)
        saturn_h_0 = saturn_h_0 + 2.892864d-05*cos(3.45123584181d0 + 14.2270940016d0 * t)
        saturn_h_0 = saturn_h_0 + 3.016338d-05*cos(0.51522702738d0 + 95.9792272178d0 * t)
        saturn_h_0 = saturn_h_0 + 3.124342d-05*cos(2.51775310612d0 + 1368.660252845d0 * t)
        saturn_h_0 = saturn_h_0 + 3.543754d-05*cos(5.51791276866d0 + 309.2783226558d0 * t)
        saturn_h_0 = saturn_h_0 + 3.981833d-05*cos(3.98208427033d0 + 838.9692877504d0 * t)
        saturn_h_0 = saturn_h_0 + 4.31094d-05*cos(0.63154377287d0 + 632.7837393132d0 * t)
        saturn_h_0 = saturn_h_0 + 4.719662d-05*cos(4.04332030354d0 + 63.7358983034d0 * t)
        saturn_h_0 = saturn_h_0 + 4.973295d-05*cos(2.43801254153d0 + 316.3918696566d0 * t)
        saturn_h_0 = saturn_h_0 + 5.195115d-05*cos(0.91409726646d0 + 11.0457002639d0 * t)
        saturn_h_0 = saturn_h_0 + 6.887017d-05*cos(2.77760844184d0 + 1052.2683831884d0 * t)
        saturn_h_0 = saturn_h_0 + 8.341142d-05*cos(4.31606267639d0 + 426.598190876d0 * t)
        saturn_h_0 = saturn_h_0 + 8.862147d-05*cos(4.32059038009d0 + 522.5774180938d0 * t)
        saturn_h_0 = saturn_h_0 + 9.619733d-05*cos(5.65804295918d0 + 1059.3819301892d0 * t)
        saturn_h_0 = saturn_h_0 + 0.00016256954d0*cos(3.02503473426d0 + 735.8765135318d0 * t)
        saturn_h_0 = saturn_h_0 + 0.00026520042d0*cos(4.52478837442d0 + 206.1855484372d0 * t)
        saturn_h_0 = saturn_h_0 + 0.0003298126d0*cos(4.13131540179d0 + 110.2063212194d0 * t)
        saturn_h_0 = saturn_h_0 + 0.00044695611d0*cos(3.26423001884d0 + 419.4846438752d0 * t)
        saturn_h_0 = saturn_h_0 + 0.00068728896d0*cos(0.46796586407d0 + 103.0927742186d0 * t)
        saturn_h_0 = saturn_h_0 + 0.00124537423d0*cos(5.6029550572d0 + 213.299095438d0 * t)
        saturn_h_0 = saturn_h_0 + 0.00154553684d0*cos(3.5944713223d0 + 7.1135470008d0 * t)
        saturn_h_0 = saturn_h_0 + 0.00196887619d0*cos(5.31528897782d0 + 529.6909650946d0 * t)
        saturn_h_0 = saturn_h_0 + 0.05542964254d0*cos(0.0d0 + 0.0d0 * t)

        saturn_h_1 = saturn_h_1 + 1.104707d-05*cos(3.00012484887d0 + 426.598190876d0 * t)
        saturn_h_1 = saturn_h_1 + 1.210043d-05*cos(2.22093790004d0 + 95.9792272178d0 * t)
        saturn_h_1 = saturn_h_1 + 1.282809d-05*cos(6.14149672159d0 + 522.5774180938d0 * t)
        saturn_h_1 = saturn_h_1 + 1.308124d-05*cos(0.93411525898d0 + 316.3918696566d0 * t)
        saturn_h_1 = saturn_h_1 + 1.933431d-05*cos(1.75458256507d0 + 14.2270940016d0 * t)
        saturn_h_1 = saturn_h_1 + 3.540921d-05*cos(6.15678987566d0 + 206.1855484372d0 * t)
        saturn_h_1 = saturn_h_1 + 4.266149d-05*cos(2.73559155724d0 + 110.2063212194d0 * t)
        saturn_h_1 = saturn_h_1 + 0.00041501368d0*cos(1.90158625579d0 + 7.1135470008d0 * t)
        saturn_h_1 = saturn_h_1 + 0.00375593887d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_h_1=saturn_h_1*t;

        saturn_h_2 = saturn_h_2 + 5.775783d-05*cos(0.17981518193d0 + 7.1135470008d0 * t)
        saturn_h_2 = saturn_h_2 + 0.00031990236d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_h_2=saturn_h_2*t*t;

        saturn_h_3 = saturn_h_3 + 1.598633d-05*cos(0.0d0 + 0.0d0 * t)
        saturn_h_3=saturn_h_3*t*t*t;

        r = saturn_h_3+saturn_h_2+saturn_h_1+saturn_h_0
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

        saturn_k_0 = saturn_k_0 + 1.022359d-05*cos(3.75811763978d0 + 949.1756089698d0 * t)
        saturn_k_0 = saturn_k_0 + 1.075575d-05*cos(1.87545739154d0 + 1471.7530270636d0 * t)
        saturn_k_0 = saturn_k_0 + 1.331587d-05*cos(3.17719333564d0 + 10213.285546211d0 * t)
        saturn_k_0 = saturn_k_0 + 1.34085d-05*cos(3.43892164589d0 + 1162.4747044078d0 * t)
        saturn_k_0 = saturn_k_0 + 1.37536d-05*cos(3.92909866961d0 + 742.9900605326d0 * t)
        saturn_k_0 = saturn_k_0 + 1.407002d-05*cos(1.75310748024d0 + 6283.0758499914d0 * t)
        saturn_k_0 = saturn_k_0 + 1.413794d-05*cos(0.61962547117d0 + 1685.0521225016d0 * t)
        saturn_k_0 = saturn_k_0 + 1.432191d-05*cos(3.7321168376d0 + 625.6701923124d0 * t)
        saturn_k_0 = saturn_k_0 + 1.684438d-05*cos(3.42782020268d0 + 846.0828347512d0 * t)
        saturn_k_0 = saturn_k_0 + 2.034707d-05*cos(2.13784947592d0 + 1155.361157407d0 * t)
        saturn_k_0 = saturn_k_0 + 2.59979d-05*cos(4.59077939806d0 + 323.5054166574d0 * t)
        saturn_k_0 = saturn_k_0 + 2.901643d-05*cos(5.02556493525d0 + 14.2270940016d0 * t)
        saturn_k_0 = saturn_k_0 + 2.995571d-05*cos(5.22987374446d0 + 95.9792272178d0 * t)
        saturn_k_0 = saturn_k_0 + 3.067391d-05*cos(0.88647766071d0 + 1368.660252845d0 * t)
        saturn_k_0 = saturn_k_0 + 3.491448d-05*cos(3.93248075292d0 + 309.2783226558d0 * t)
        saturn_k_0 = saturn_k_0 + 3.998727d-05*cos(2.40540369269d0 + 838.9692877504d0 * t)
        saturn_k_0 = saturn_k_0 + 4.686144d-05*cos(2.46891397169d0 + 63.7358983034d0 * t)
        saturn_k_0 = saturn_k_0 + 5.175953d-05*cos(2.47945708486d0 + 11.0457002639d0 * t)
        saturn_k_0 = saturn_k_0 + 5.94995d-05*cos(5.31181339398d0 + 632.7837393132d0 * t)
        saturn_k_0 = saturn_k_0 + 6.874937d-05*cos(1.14613721578d0 + 1052.2683831884d0 * t)
        saturn_k_0 = saturn_k_0 + 8.447407d-05*cos(2.62011176262d0 + 522.5774180938d0 * t)
        saturn_k_0 = saturn_k_0 + 9.010523d-05*cos(0.93814801735d0 + 1059.3819301892d0 * t)
        saturn_k_0 = saturn_k_0 + 9.45961d-05*cos(5.65507805945d0 + 426.598190876d0 * t)
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

        saturn_k_1 = saturn_k_1 + 1.068601d-05*cos(4.94949412559d0 + 316.3918696566d0 * t)
        saturn_k_1 = saturn_k_1 + 1.111374d-05*cos(4.19595906021d0 + 522.5774180938d0 * t)
        saturn_k_1 = saturn_k_1 + 1.198499d-05*cos(0.65283485226d0 + 95.9792272178d0 * t)
        saturn_k_1 = saturn_k_1 + 1.445541d-05*cos(3.87182632473d0 + 426.598190876d0 * t)
        saturn_k_1 = saturn_k_1 + 1.940192d-05*cos(3.3300409354d0 + 14.2270940016d0 * t)
        saturn_k_1 = saturn_k_1 + 3.82222d-05*cos(4.74856256975d0 + 206.1855484372d0 * t)
        saturn_k_1 = saturn_k_1 + 3.861305d-05*cos(4.51435630426d0 + 110.2063212194d0 * t)
        saturn_k_1 = saturn_k_1 + 0.00041825363d0*cos(3.46891617076d0 + 7.1135470008d0 * t)
        saturn_k_1 = saturn_k_1 + 0.00529602626d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_k_1=saturn_k_1*t;

        saturn_k_2 = saturn_k_2 + 5.845583d-05*cos(1.74297057661d0 + 7.1135470008d0 * t)
        saturn_k_2 = saturn_k_2 + 0.00030928405d0*cos(0.0d0 + 0.0d0 * t)
        saturn_k_2=saturn_k_2*t*t;

        saturn_k_3 = saturn_k_3 + 1.296215d-05*cos(0.0d0 + 0.0d0 * t)
        saturn_k_3=saturn_k_3*t*t*t;

        r = saturn_k_3+saturn_k_2+saturn_k_1+saturn_k_0
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

        saturn_l_0 = saturn_l_0 + 1.000292d-05*cos(3.14098540005d0 + 202.2533951741d0 * t)
        saturn_l_0 = saturn_l_0 + 1.048677d-05*cos(4.52538911077d0 + 309.2783226558d0 * t)
        saturn_l_0 = saturn_l_0 + 1.050929d-05*cos(2.85814270959d0 + 2214.7430875962d0 * t)
        saturn_l_0 = saturn_l_0 + 1.054337d-05*cos(0.32336241328d0 + 415.5524906121d0 * t)
        saturn_l_0 = saturn_l_0 + 1.057378d-05*cos(5.8684342126d0 + 1155.361157407d0 * t)
        saturn_l_0 = saturn_l_0 + 1.058307d-05*cos(1.79920590132d0 + 742.9900605326d0 * t)
        saturn_l_0 = saturn_l_0 + 1.086719d-05*cos(4.18346682205d0 + 2.4476805548d0 * t)
        saturn_l_0 = saturn_l_0 + 1.111089d-05*cos(5.15881839411d0 + 1162.4747044078d0 * t)
        saturn_l_0 = saturn_l_0 + 1.239001d-05*cos(1.17392796131d0 + 1059.3819301892d0 * t)
        saturn_l_0 = saturn_l_0 + 1.401273d-05*cos(0.85436221114d0 + 639.897286314d0 * t)
        saturn_l_0 = saturn_l_0 + 1.552009d-05*cos(4.34051151899d0 + 1685.0521225016d0 * t)
        saturn_l_0 = saturn_l_0 + 1.75685d-05*cos(0.73191225121d0 + 9999.986450773d0 * t)
        saturn_l_0 = saturn_l_0 + 1.843741d-05*cos(5.59184716219d0 + 6069.7767545534d0 * t)
        saturn_l_0 = saturn_l_0 + 1.905306d-05*cos(6.10909332977d0 + 838.9692877504d0 * t)
        saturn_l_0 = saturn_l_0 + 2.115472d-05*cos(3.22612886457d0 + 138.5174968707d0 * t)
        saturn_l_0 = saturn_l_0 + 2.247112d-05*cos(3.10725805492d0 + 1898.3512179396d0 * t)
        saturn_l_0 = saturn_l_0 + 2.268759d-05*cos(0.97085130424d0 + 95.9792272178d0 * t)
        saturn_l_0 = saturn_l_0 + 2.570657d-05*cos(1.9713258472d0 + 426.598190876d0 * t)
        saturn_l_0 = saturn_l_0 + 2.596442d-05*cos(1.15530311275d0 + 323.5054166574d0 * t)
        saturn_l_0 = saturn_l_0 + 2.971924d-05*cos(4.61344086907d0 + 1368.660252845d0 * t)
        saturn_l_0 = saturn_l_0 + 3.154129d-05*cos(4.91543855458d0 + 277.0349937414d0 * t)
        saturn_l_0 = saturn_l_0 + 3.696376d-05*cos(2.25340821564d0 + 63.7358983034d0 * t)
        saturn_l_0 = saturn_l_0 + 3.772571d-05*cos(0.19095255187d0 + 522.5774180938d0 * t)
        saturn_l_0 = saturn_l_0 + 4.901096d-05*cos(3.3620349335d0 + 1581.959348283d0 * t)
        saturn_l_0 = saturn_l_0 + 5.226823d-05*cos(4.2077322018d0 + 3.1813937377d0 * t)
        saturn_l_0 = saturn_l_0 + 5.836217d-05*cos(4.89069547157d0 + 1052.2683831884d0 * t)
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

        saturn_l_1 = saturn_l_1 + 1.017683d-05*cos(1.87434917863d0 + 522.5774180938d0 * t)
        saturn_l_1 = saturn_l_1 + 1.048311d-05*cos(5.74264387213d0 + 323.5054166574d0 * t)
        saturn_l_1 = saturn_l_1 + 1.40924d-05*cos(4.77172107316d0 + 529.6909650946d0 * t)
        saturn_l_1 = saturn_l_1 + 1.423856d-05*cos(1.60681848195d0 + 213.299095438d0 * t)
        saturn_l_1 = saturn_l_1 + 1.670947d-05*cos(0.57244091662d0 + 735.8765135318d0 * t)
        saturn_l_1 = saturn_l_1 + 1.951948d-05*cos(3.56235240442d0 + 11.0457002639d0 * t)
        saturn_l_1 = saturn_l_1 + 2.144886d-05*cos(2.60845915192d0 + 110.2063212194d0 * t)
        saturn_l_1 = saturn_l_1 + 3.384387d-05*cos(2.41681908344d0 + 3.1813937377d0 * t)
        saturn_l_1 = saturn_l_1 + 3.766525d-05*cos(3.64960431172d0 + 3.9321532631d0 * t)
        saturn_l_1 = saturn_l_1 + 4.293054d-05*cos(0.84432021204d0 + 419.4846438752d0 * t)
        saturn_l_1 = saturn_l_1 + 4.47255d-05*cos(2.13913005932d0 + 206.1855484372d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00010437362d0*cos(2.74781046876d0 + 14.2270940016d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00014171331d0*cos(1.28319722079d0 + 103.0927742186d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00563352798d0*cos(2.8847856166d0 + 7.1135470008d0 * t)
        saturn_l_1 = saturn_l_1 + 213.299095438d0*cos(0.0d0 + 0.0d0 * t)
        saturn_l_1=saturn_l_1*t;

        saturn_l_2 = saturn_l_2 + 1.020168d-05*cos(0.63355848198d0 + 3.1813937377d0 * t)
        saturn_l_2 = saturn_l_2 + 4.235353d-05*cos(1.04508642603d0 + 14.2270940016d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00036659741d0*cos(0.0d0 + 0.0d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00116235667d0*cos(1.17971682406d0 + 7.1135470008d0 * t)
        saturn_l_2=saturn_l_2*t*t;

        saturn_l_3 = saturn_l_3 + 1.153866d-05*cos(5.61897587419d0 + 14.2270940016d0 * t)
        saturn_l_3 = saturn_l_3 + 0.00016010484d0*cos(5.73932776276d0 + 7.1135470008d0 * t)
        saturn_l_3=saturn_l_3*t*t*t;

        saturn_l_4 = saturn_l_4 + 1.658821d-05*cos(3.99816906699d0 + 7.1135470008d0 * t)
        saturn_l_4=saturn_l_4*t*t*t*t;

        r = saturn_l_4+saturn_l_3+saturn_l_2+saturn_l_1+saturn_l_0
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

        saturn_p_0 = saturn_p_0 + 2.063161d-05*cos(3.60620665217d0 + 7.1135470008d0 * t)
        saturn_p_0 = saturn_p_0 + 0.01989147301d0*cos(0.0d0 + 0.0d0 * t)

        saturn_p_1 = saturn_p_1 + 0.00059439766d0*cos(0.0d0 + 0.0d0 * t)
        saturn_p_1=saturn_p_1*t;

        saturn_p_2 = saturn_p_2 + 5.235117d-05*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_p_2=saturn_p_2*t*t;

        r = saturn_p_2+saturn_p_1+saturn_p_0
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

        saturn_q_0 = saturn_q_0 + 2.058688d-05*cos(5.2332061164d0 + 7.1135470008d0 * t)
        saturn_q_0 = saturn_q_0 + 0.00871747436d0*cos(3.14159265359d0 + 0.0d0 * t)

        saturn_q_1 = saturn_q_1 + 0.00080171499d0*cos(0.0d0 + 0.0d0 * t)
        saturn_q_1=saturn_q_1*t;

        saturn_q_2 = saturn_q_2 + 4.142282d-05*cos(0.0d0 + 0.0d0 * t)
        saturn_q_2=saturn_q_2*t*t;

        r = saturn_q_2+saturn_q_1+saturn_q_0
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

        uranus_a_0 = uranus_a_0 + 1.000535d-05*cos(3.00278670295d0 + 106.9767433719d0 * t)
        uranus_a_0 = uranus_a_0 + 1.002948d-05*cos(0.20860179042d0 + 529.6909650946d0 * t)
        uranus_a_0 = uranus_a_0 + 1.024449d-05*cos(3.66634638445d0 + 209.3669421749d0 * t)
        uranus_a_0 = uranus_a_0 + 1.042369d-05*cos(1.78835296097d0 + 422.6660376129d0 * t)
        uranus_a_0 = uranus_a_0 + 1.048262d-05*cos(5.72125675593d0 + 200.7689224658d0 * t)
        uranus_a_0 = uranus_a_0 + 1.051862d-05*cos(3.20890164599d0 + 258.0244132148d0 * t)
        uranus_a_0 = uranus_a_0 + 1.090992d-05*cos(1.75846110374d0 + 56.6223513026d0 * t)
        uranus_a_0 = uranus_a_0 + 1.101963d-05*cos(2.00743750884d0 + 387.2413149608d0 * t)
        uranus_a_0 = uranus_a_0 + 1.104506d-05*cos(5.1938226906d0 + 408.4389436113d0 * t)
        uranus_a_0 = uranus_a_0 + 1.106945d-05*cos(2.45059253084d0 + 2043.9822618111d0 * t)
        uranus_a_0 = uranus_a_0 + 1.121356d-05*cos(3.9774734862d0 + 22.0914005278d0 * t)
        uranus_a_0 = uranus_a_0 + 1.135575d-05*cos(2.96083781186d0 + 414.0680179038d0 * t)
        uranus_a_0 = uranus_a_0 + 1.137556d-05*cos(3.91569154137d0 + 417.0369633204d0 * t)
        uranus_a_0 = uranus_a_0 + 1.141596d-05*cos(3.45007547281d0 + 67.6680515665d0 * t)
        uranus_a_0 = uranus_a_0 + 1.164785d-05*cos(5.34173102494d0 + 373.0142209592d0 * t)
        uranus_a_0 = uranus_a_0 + 1.170276d-05*cos(0.55774352633d0 + 224.3447957019d0 * t)
        uranus_a_0 = uranus_a_0 + 1.175745d-05*cos(2.54359813462d0 + 35.4247226521d0 * t)
        uranus_a_0 = uranus_a_0 + 1.17664d-05*cos(5.99924085122d0 + 518.6452648307d0 * t)
        uranus_a_0 = uranus_a_0 + 1.187262d-05*cos(1.68527478275d0 + 366.485629295d0 * t)
        uranus_a_0 = uranus_a_0 + 1.2132d-05*cos(2.60560141797d0 + 191.2076949102d0 * t)
        uranus_a_0 = uranus_a_0 + 1.213214d-05*cos(2.51630720379d0 + 203.7378678824d0 * t)
        uranus_a_0 = uranus_a_0 + 1.263638d-05*cos(0.95663861038d0 + 39.6175083461d0 * t)
        uranus_a_0 = uranus_a_0 + 1.31932d-05*cos(2.46920131818d0 + 255.0554677982d0 * t)
        uranus_a_0 = uranus_a_0 + 1.324437d-05*cos(3.03887629712d0 + 221.3758502853d0 * t)
        uranus_a_0 = uranus_a_0 + 1.343524d-05*cos(0.474667145d0 + 894.8408795276d0 * t)
        uranus_a_0 = uranus_a_0 + 1.431799d-05*cos(1.11504717533d0 + 70.8494453042d0 * t)
        uranus_a_0 = uranus_a_0 + 1.44881d-05*cos(0.77642344329d0 + 358.9301393095d0 * t)
        uranus_a_0 = uranus_a_0 + 1.470376d-05*cos(2.86944648936d0 + 184.7272873558d0 * t)
        uranus_a_0 = uranus_a_0 + 1.559141d-05*cos(5.26393444399d0 + 874.3940104025d0 * t)
        uranus_a_0 = uranus_a_0 + 1.574883d-05*cos(2.81434037404d0 + 70.3281804424d0 * t)
        uranus_a_0 = uranus_a_0 + 1.614461d-05*cos(1.74465474119d0 + 306.830642101d0 * t)
        uranus_a_0 = uranus_a_0 + 1.630969d-05*cos(0.04305088147d0 + 284.1485407422d0 * t)
        uranus_a_0 = uranus_a_0 + 1.631375d-05*cos(3.21025158737d0 + 767.3690829208d0 * t)
        uranus_a_0 = uranus_a_0 + 1.644295d-05*cos(4.20035521857d0 + 771.3012361839d0 * t)
        uranus_a_0 = uranus_a_0 + 1.659166d-05*cos(1.50290332246d0 + 543.0242872189d0 * t)
        uranus_a_0 = uranus_a_0 + 1.665496d-05*cos(2.48866254865d0 + 1819.6374661092d0 * t)
        uranus_a_0 = uranus_a_0 + 1.665753d-05*cos(3.35750378382d0 + 269.9214467406d0 * t)
        uranus_a_0 = uranus_a_0 + 1.83374d-05*cos(2.35881785143d0 + 278.5194664497d0 * t)
        uranus_a_0 = uranus_a_0 + 1.833954d-05*cos(1.23032377815d0 + 275.5505210331d0 * t)
        uranus_a_0 = uranus_a_0 + 1.839887d-05*cos(2.41449652179d0 + 969.6224780949d0 * t)
        uranus_a_0 = uranus_a_0 + 1.939068d-05*cos(3.50613473107d0 + 85.8272988312d0 * t)
        uranus_a_0 = uranus_a_0 + 1.998215d-05*cos(1.51874856901d0 + 329.8370663655d0 * t)
        uranus_a_0 = uranus_a_0 + 2.043785d-05*cos(2.29629591754d0 + 218.4069048687d0 * t)
        uranus_a_0 = uranus_a_0 + 2.12792d-05*cos(4.76506016217d0 + 991.7138786227d0 * t)
        uranus_a_0 = uranus_a_0 + 2.185288d-05*cos(0.0870470871d0 + 558.0021407459d0 * t)
        uranus_a_0 = uranus_a_0 + 2.19188d-05*cos(3.25202521002d0 + 443.8636662634d0 * t)
        uranus_a_0 = uranus_a_0 + 2.208093d-05*cos(1.1125835943d0 + 76.2660712756d0 * t)
        uranus_a_0 = uranus_a_0 + 2.285405d-05*cos(5.88369666833d0 + 62.2514255951d0 * t)
        uranus_a_0 = uranus_a_0 + 2.28616d-05*cos(1.51729619521d0 + 10063.7223490764d0 * t)
        uranus_a_0 = uranus_a_0 + 2.382826d-05*cos(2.07601865522d0 + 457.8783119439d0 * t)
        uranus_a_0 = uranus_a_0 + 2.437755d-05*cos(0.09462956632d0 + 6133.5126528568d0 * t)
        uranus_a_0 = uranus_a_0 + 2.457441d-05*cos(0.26974942497d0 + 12.5301729722d0 * t)
        uranus_a_0 = uranus_a_0 + 2.49744d-05*cos(1.50739311442d0 + 628.8515860501d0 * t)
        uranus_a_0 = uranus_a_0 + 2.50334d-05*cos(1.15805847644d0 + 760.25553592d0 * t)
        uranus_a_0 = uranus_a_0 + 2.567379d-05*cos(3.82445495974d0 + 451.9404211107d0 * t)
        uranus_a_0 = uranus_a_0 + 2.659333d-05*cos(2.83464668205d0 + 983.1158589136d0 * t)
        uranus_a_0 = uranus_a_0 + 2.666132d-05*cos(5.0690386125d0 + 756.3233826569d0 * t)
        uranus_a_0 = uranus_a_0 + 2.666466d-05*cos(3.46267434311d0 + 241.6102710893d0 * t)
        uranus_a_0 = uranus_a_0 + 2.730392d-05*cos(5.78713322924d0 + 4.4534181249d0 * t)
        uranus_a_0 = uranus_a_0 + 2.757762d-05*cos(2.67859821585d0 + 465.9550667912d0 * t)
        uranus_a_0 = uranus_a_0 + 2.8189d-05*cos(3.80744526388d0 + 986.0848043302d0 * t)
        uranus_a_0 = uranus_a_0 + 2.926742d-05*cos(5.75954860599d0 + 111.4301614968d0 * t)
        uranus_a_0 = uranus_a_0 + 2.963941d-05*cos(0.6879360851d0 + 977.4867846211d0 * t)
        uranus_a_0 = uranus_a_0 + 2.974538d-05*cos(6.11550996496d0 + 404.5067903482d0 * t)
        uranus_a_0 = uranus_a_0 + 3.020651d-05*cos(0.8552739557d0 + 391.1734682239d0 * t)
        uranus_a_0 = uranus_a_0 + 3.023905d-05*cos(5.99911376627d0 + 490.3340891794d0 * t)
        uranus_a_0 = uranus_a_0 + 3.026812d-05*cos(2.86723045009d0 + 604.4725636619d0 * t)
        uranus_a_0 = uranus_a_0 + 3.177071d-05*cos(2.12223452915d0 + 181.7583419392d0 * t)
        uranus_a_0 = uranus_a_0 + 3.238153d-05*cos(4.97184215613d0 + 1289.9465010146d0 * t)
        uranus_a_0 = uranus_a_0 + 3.342906d-05*cos(4.92188150151d0 + 65.2203710117d0 * t)
        uranus_a_0 = uranus_a_0 + 3.374452d-05*cos(1.35172822834d0 + 293.188503436d0 * t)
        uranus_a_0 = uranus_a_0 + 3.4419d-05*cos(2.62220453188d0 + 33.6796175129d0 * t)
        uranus_a_0 = uranus_a_0 + 3.622075d-05*cos(0.81820459592d0 + 1087.6931058405d0 * t)
        uranus_a_0 = uranus_a_0 + 4.125871d-05*cos(0.98003717672d0 + 52.6901980395d0 * t)
        uranus_a_0 = uranus_a_0 + 4.144967d-05*cos(0.70303785867d0 + 831.1049812242d0 * t)
        uranus_a_0 = uranus_a_0 + 4.242318d-05*cos(3.78803520227d0 + 344.7030453079d0 * t)
        uranus_a_0 = uranus_a_0 + 4.401244d-05*cos(5.20484038271d0 + 26013.1215430069d0 * t)
        uranus_a_0 = uranus_a_0 + 4.484929d-05*cos(0.72226959421d0 + 3265.8308281325d0 * t)
        uranus_a_0 = uranus_a_0 + 4.993616d-05*cos(1.94640108019d0 + 145.1097790097d0 * t)
        uranus_a_0 = uranus_a_0 + 5.284447d-05*cos(3.38391584822d0 + 617.8058857862d0 * t)
        uranus_a_0 = uranus_a_0 + 5.292312d-05*cos(3.18563288325d0 + 9.5612275556d0 * t)
        uranus_a_0 = uranus_a_0 + 5.558128d-05*cos(4.45343942123d0 + 265.9892934775d0 * t)
        uranus_a_0 = uranus_a_0 + 5.725815d-05*cos(1.18425005561d0 + 256.5399405065d0 * t)
        uranus_a_0 = uranus_a_0 + 5.940367d-05*cos(0.14725300349d0 + 565.1156877467d0 * t)
        uranus_a_0 = uranus_a_0 + 6.001971d-05*cos(0.01328538618d0 + 378.6432952517d0 * t)
        uranus_a_0 = uranus_a_0 + 7.565892d-05*cos(1.0704767805d0 + 1364.7280995819d0 * t)
        uranus_a_0 = uranus_a_0 + 7.98955d-05*cos(1.7687764394d0 + 108.4612160802d0 * t)
        uranus_a_0 = uranus_a_0 + 8.13928d-05*cos(3.07429274553d0 + 593.426863398d0 * t)
        uranus_a_0 = uranus_a_0 + 9.400054d-05*cos(5.28230095127d0 + 692.5874843535d0 * t)
        uranus_a_0 = uranus_a_0 + 9.781311d-05*cos(1.01633313183d0 + 219.891377577d0 * t)
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

        uranus_a_1 = uranus_a_1 + 1.009835d-05*cos(1.54231948299d0 + 456.3938392356d0 * t)
        uranus_a_1 = uranus_a_1 + 1.02322d-05*cos(5.2524136325d0 + 2.9689454166d0 * t)
        uranus_a_1 = uranus_a_1 + 1.17335d-05*cos(5.60143868445d0 + 344.7030453079d0 * t)
        uranus_a_1 = uranus_a_1 + 1.298191d-05*cos(3.07363226782d0 + 340.7708920448d0 * t)
        uranus_a_1 = uranus_a_1 + 1.397028d-05*cos(4.30180049174d0 + 565.1156877467d0 * t)
        uranus_a_1 = uranus_a_1 + 1.757222d-05*cos(5.83779207506d0 + 127.4717966068d0 * t)
        uranus_a_1 = uranus_a_1 + 1.966175d-05*cos(1.25902379202d0 + 1514.2912967165d0 * t)
        uranus_a_1 = uranus_a_1 + 2.960951d-05*cos(5.18940714206d0 + 3.9321532631d0 * t)
        uranus_a_1 = uranus_a_1 + 2.970471d-05*cos(1.38398543524d0 + 202.2533951741d0 * t)
        uranus_a_1 = uranus_a_1 + 5.730767d-05*cos(6.15517032108d0 + 74.7815985673d0 * t)
        uranus_a_1 = uranus_a_1 + 5.774171d-05*cos(0.36554818918d0 + 131.4039498699d0 * t)
        uranus_a_1 = uranus_a_1 + 5.888953d-05*cos(6.13448987217d0 + 145.6310438715d0 * t)
        uranus_a_1 = uranus_a_1 + 6.431936d-05*cos(0.17368297794d0 + 1.4844727083d0 * t)
        uranus_a_1 = uranus_a_1 + 6.522823d-05*cos(0.94154848017d0 + 380.12776796d0 * t)
        uranus_a_1 = uranus_a_1 + 9.178456d-05*cos(3.23114420803d0 + 447.7958195265d0 * t)
        uranus_a_1 = uranus_a_1 + 9.196301d-05*cos(2.71787369185d0 + 462.0229135281d0 * t)
        uranus_a_1 = uranus_a_1 + 0.00011411513d0*cos(0.08109503303d0 + 63.7358983034d0 * t)
        uranus_a_1 = uranus_a_1 + 0.00012155731d0*cos(5.07129450662d0 + 351.8165923087d0 * t)
        uranus_a_1 = uranus_a_1 + 0.00018428974d0*cos(0.90876002089d0 + 984.6003316219d0 * t)
        uranus_a_1 = uranus_a_1 + 0.00018892174d0*cos(5.14166599806d0 + 11.0457002639d0 * t)
        uranus_a_1=uranus_a_1*t;

        uranus_a_2 = uranus_a_2 + 1.126662d-05*cos(6.11539656112d0 + 454.9093665273d0 * t)
        uranus_a_2 = uranus_a_2 + 1.189319d-05*cos(2.06463695518d0 + 131.4039498699d0 * t)
        uranus_a_2 = uranus_a_2 + 1.198486d-05*cos(5.92364914461d0 + 984.6003316219d0 * t)
        uranus_a_2 = uranus_a_2 + 1.216263d-05*cos(4.42512858481d0 + 145.6310438715d0 * t)
        uranus_a_2 = uranus_a_2 + 1.597619d-05*cos(2.941941902d0 + 11.0457002639d0 * t)
        uranus_a_2 = uranus_a_2 + 1.894669d-05*cos(4.9373256852d0 + 447.7958195265d0 * t)
        uranus_a_2 = uranus_a_2 + 1.897156d-05*cos(1.01368771445d0 + 462.0229135281d0 * t)
        uranus_a_2=uranus_a_2*t*t;

        r = uranus_a_2+uranus_a_1+uranus_a_0
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

        uranus_h_0 = uranus_h_0 + 1.05445d-05*cos(5.93243913005d0 + 479.2883889155d0 * t)
        uranus_h_0 = uranus_h_0 + 1.140119d-05*cos(4.12796709847d0 + 33.6796175129d0 * t)
        uranus_h_0 = uranus_h_0 + 1.151876d-05*cos(3.22140030118d0 + 108.4612160802d0 * t)
        uranus_h_0 = uranus_h_0 + 1.152188d-05*cos(2.40279714309d0 + 265.9892934775d0 * t)
        uranus_h_0 = uranus_h_0 + 1.173615d-05*cos(5.66962620922d0 + 39.6175083461d0 * t)
        uranus_h_0 = uranus_h_0 + 1.237727d-05*cos(4.25933563667d0 + 4.4534181249d0 * t)
        uranus_h_0 = uranus_h_0 + 1.281964d-05*cos(5.21148314354d0 + 52.6901980395d0 * t)
        uranus_h_0 = uranus_h_0 + 1.709322d-05*cos(5.52324273057d0 + 3.9321532631d0 * t)
        uranus_h_0 = uranus_h_0 + 1.717023d-05*cos(4.86065335559d0 + 378.6432952517d0 * t)
        uranus_h_0 = uranus_h_0 + 1.773957d-05*cos(3.12382158926d0 + 277.0349937414d0 * t)
        uranus_h_0 = uranus_h_0 + 1.780292d-05*cos(4.6402544245d0 + 604.4725636619d0 * t)
        uranus_h_0 = uranus_h_0 + 1.788174d-05*cos(5.83091825172d0 + 381.6122406683d0 * t)
        uranus_h_0 = uranus_h_0 + 1.888635d-05*cos(1.60511548878d0 + 10213.285546211d0 * t)
        uranus_h_0 = uranus_h_0 + 1.996633d-05*cos(0.18266518036d0 + 6283.0758499914d0 * t)
        uranus_h_0 = uranus_h_0 + 2.023612d-05*cos(1.96586131259d0 + 835.0371344873d0 * t)
        uranus_h_0 = uranus_h_0 + 2.503832d-05*cos(3.05546144902d0 + 71.8126531507d0 * t)
        uranus_h_0 = uranus_h_0 + 2.643494d-05*cos(0.59736266096d0 + 38.1330356378d0 * t)
        uranus_h_0 = uranus_h_0 + 2.701158d-05*cos(4.25025054889d0 + 340.7708920448d0 * t)
        uranus_h_0 = uranus_h_0 + 2.766958d-05*cos(3.15085054061d0 + 138.5174968707d0 * t)
        uranus_h_0 = uranus_h_0 + 3.203231d-05*cos(0.74162702216d0 + 127.4717966068d0 * t)
        uranus_h_0 = uranus_h_0 + 3.366895d-05*cos(4.80879668305d0 + 426.598190876d0 * t)
        uranus_h_0 = uranus_h_0 + 4.932965d-05*cos(4.11649972191d0 + 909.8187330546d0 * t)
        uranus_h_0 = uranus_h_0 + 6.885341d-05*cos(2.88387180772d0 + 35.1640902212d0 * t)
        uranus_h_0 = uranus_h_0 + 7.836952d-05*cos(2.55128696169d0 + 202.2533951741d0 * t)
        uranus_h_0 = uranus_h_0 + 8.258031d-05*cos(1.2827959516d0 + 305.3461693927d0 * t)
        uranus_h_0 = uranus_h_0 + 8.613819d-05*cos(6.10470674406d0 + 149.5631971346d0 * t)
        uranus_h_0 = uranus_h_0 + 9.637333d-05*cos(3.03051043787d0 + 454.9093665273d0 * t)
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

        uranus_h_1 = uranus_h_1 + 2.977624d-05*cos(0.88815201141d0 + 11.0457002639d0 * t)
        uranus_h_1 = uranus_h_1 + 0.0007496435d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_h_1=uranus_h_1*t;

        uranus_h_2 = uranus_h_2 + 1.2102d-05*cos(0.0d0 + 0.0d0 * t)
        uranus_h_2=uranus_h_2*t*t;

        r = uranus_h_2+uranus_h_1+uranus_h_0
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

        uranus_k_0 = uranus_k_0 + 1.066135d-05*cos(4.39404038232d0 + 479.2883889155d0 * t)
        uranus_k_0 = uranus_k_0 + 1.14899d-05*cos(2.55760174097d0 + 33.6796175129d0 * t)
        uranus_k_0 = uranus_k_0 + 1.152601d-05*cos(0.84158185752d0 + 265.9892934775d0 * t)
        uranus_k_0 = uranus_k_0 + 1.170872d-05*cos(0.95700465854d0 + 39.6175083461d0 * t)
        uranus_k_0 = uranus_k_0 + 1.183423d-05*cos(1.65363141402d0 + 108.4612160802d0 * t)
        uranus_k_0 = uranus_k_0 + 1.212991d-05*cos(1.80950191649d0 + 138.5174968707d0 * t)
        uranus_k_0 = uranus_k_0 + 1.243311d-05*cos(5.82960143419d0 + 4.4534181249d0 * t)
        uranus_k_0 = uranus_k_0 + 1.279999d-05*cos(3.64452387804d0 + 52.6901980395d0 * t)
        uranus_k_0 = uranus_k_0 + 1.482095d-05*cos(1.64693904292d0 + 277.0349937414d0 * t)
        uranus_k_0 = uranus_k_0 + 1.713289d-05*cos(0.78221760868d0 + 3.9321532631d0 * t)
        uranus_k_0 = uranus_k_0 + 1.718373d-05*cos(3.28952325407d0 + 378.6432952517d0 * t)
        uranus_k_0 = uranus_k_0 + 1.778887d-05*cos(4.26115437583d0 + 381.6122406683d0 * t)
        uranus_k_0 = uranus_k_0 + 1.779124d-05*cos(6.21057499329d0 + 604.4725636619d0 * t)
        uranus_k_0 = uranus_k_0 + 1.89043d-05*cos(3.17634406186d0 + 10213.285546211d0 * t)
        uranus_k_0 = uranus_k_0 + 1.996913d-05*cos(1.75347937234d0 + 6283.0758499914d0 * t)
        uranus_k_0 = uranus_k_0 + 2.046607d-05*cos(0.39514553771d0 + 835.0371344873d0 * t)
        uranus_k_0 = uranus_k_0 + 2.469608d-05*cos(1.48073003218d0 + 71.8126531507d0 * t)
        uranus_k_0 = uranus_k_0 + 2.576299d-05*cos(2.16681422946d0 + 38.1330356378d0 * t)
        uranus_k_0 = uranus_k_0 + 2.711395d-05*cos(2.69940614144d0 + 340.7708920448d0 * t)
        uranus_k_0 = uranus_k_0 + 3.19786d-05*cos(5.45909450367d0 + 127.4717966068d0 * t)
        uranus_k_0 = uranus_k_0 + 3.369044d-05*cos(0.09586840146d0 + 426.598190876d0 * t)
        uranus_k_0 = uranus_k_0 + 5.042081d-05*cos(1.63759327657d0 + 454.9093665273d0 * t)
        uranus_k_0 = uranus_k_0 + 5.042578d-05*cos(2.55138995972d0 + 909.8187330546d0 * t)
        uranus_k_0 = uranus_k_0 + 6.933537d-05*cos(1.31290038532d0 + 35.1640902212d0 * t)
        uranus_k_0 = uranus_k_0 + 7.82792d-05*cos(0.99164832808d0 + 202.2533951741d0 * t)
        uranus_k_0 = uranus_k_0 + 8.256877d-05*cos(5.99479016175d0 + 305.3461693927d0 * t)
        uranus_k_0 = uranus_k_0 + 8.609639d-05*cos(1.39257421698d0 + 149.5631971346d0 * t)
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

        uranus_k_1 = uranus_k_1 + 2.974032d-05*cos(2.44820580252d0 + 11.0457002639d0 * t)
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

        uranus_l_0 = uranus_l_0 + 1.039877d-05*cos(1.76673081468d0 + 12.5301729722d0 * t)
        uranus_l_0 = uranus_l_0 + 1.148235d-05*cos(0.93360896167d0 + 3.1813937377d0 * t)
        uranus_l_0 = uranus_l_0 + 1.241845d-05*cos(0.91639009863d0 + 2.4476805548d0 * t)
        uranus_l_0 = uranus_l_0 + 1.248928d-05*cos(4.47213079744d0 + 127.4717966068d0 * t)
        uranus_l_0 = uranus_l_0 + 1.262396d-05*cos(0.5796086167d0 + 38.1330356378d0 * t)
        uranus_l_0 = uranus_l_0 + 1.526537d-05*cos(2.42021066976d0 + 183.2428146475d0 * t)
        uranus_l_0 = uranus_l_0 + 1.678162d-05*cos(1.65932418312d0 + 340.7708920448d0 * t)
        uranus_l_0 = uranus_l_0 + 1.697822d-05*cos(5.14575670776d0 + 554.0699874828d0 * t)
        uranus_l_0 = uranus_l_0 + 2.051032d-05*cos(1.51771174508d0 + 0.1118745846d0 * t)
        uranus_l_0 = uranus_l_0 + 2.120344d-05*cos(3.14091027042d0 + 71.8126531507d0 * t)
        uranus_l_0 = uranus_l_0 + 2.488918d-05*cos(1.2689363137d0 + 909.8187330546d0 * t)
        uranus_l_0 = uranus_l_0 + 2.508604d-05*cos(2.40722875719d0 + 10138.5039476437d0 * t)
        uranus_l_0 = uranus_l_0 + 2.537281d-05*cos(0.91575331225d0 + 453.424893819d0 * t)
        uranus_l_0 = uranus_l_0 + 2.592173d-05*cos(1.88721711257d0 + 456.3938392356d0 * t)
        uranus_l_0 = uranus_l_0 + 2.645235d-05*cos(0.98456705247d0 + 6208.2942514241d0 * t)
        uranus_l_0 = uranus_l_0 + 2.849022d-05*cos(4.62497396881d0 + 9.5612275556d0 * t)
        uranus_l_0 = uranus_l_0 + 2.947374d-05*cos(2.25120769096d0 + 146.594251718d0 * t)
        uranus_l_0 = uranus_l_0 + 3.347344d-05*cos(1.06594762369d0 + 4.4534181249d0 * t)
        uranus_l_0 = uranus_l_0 + 3.938215d-05*cos(5.6425816291d0 + 351.8165923087d0 * t)
        uranus_l_0 = uranus_l_0 + 4.088827d-05*cos(5.88694542212d0 + 213.299095438d0 * t)
        uranus_l_0 = uranus_l_0 + 4.280688d-05*cos(6.19027964445d0 + 74.7815985673d0 * t)
        uranus_l_0 = uranus_l_0 + 4.336166d-05*cos(6.27925448992d0 + 202.2533951741d0 * t)
        uranus_l_0 = uranus_l_0 + 4.429228d-05*cos(3.45893911136d0 + 415.5524906121d0 * t)
        uranus_l_0 = uranus_l_0 + 5.8595d-05*cos(3.72301900014d0 + 380.12776796d0 * t)
        uranus_l_0 = uranus_l_0 + 6.111877d-05*cos(2.08145057987d0 + 109.9456887885d0 * t)
        uranus_l_0 = uranus_l_0 + 7.275693d-05*cos(2.94925722754d0 + 35.1640902212d0 * t)
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

        uranus_l_1 = uranus_l_1 + 1.918566d-05*cos(1.47255222866d0 + 63.7358983034d0 * t)
        uranus_l_1 = uranus_l_1 + 1.925567d-05*cos(0.5298869298d0 + 2.9689454166d0 * t)
        uranus_l_1 = uranus_l_1 + 3.879375d-05*cos(0.46426879091d0 + 3.9321532631d0 * t)
        uranus_l_1 = uranus_l_1 + 8.935001d-05*cos(0.42318902886d0 + 11.0457002639d0 * t)
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

        venus_h_0 = venus_h_0 + 1.690127d-05*cos(1.8992445137d0 + 2352.8661537718d0 * t)
        venus_h_0 = venus_h_0 + 2.230653d-05*cos(2.66432207509d0 + 1577.3435424478d0 * t)
        venus_h_0 = venus_h_0 + 0.00506684726d0*cos(0.0d0 + 0.0d0 * t)

        venus_h_1 = venus_h_1 + 0.00036121239d0*cos(3.14159265359d0 + 0.0d0 * t)
        venus_h_1=venus_h_1*t;

        venus_h_2 = venus_h_2 + 1.846764d-05*cos(0.0d0 + 0.0d0 * t)
        venus_h_2=venus_h_2*t*t;

        r = venus_h_2+venus_h_1+venus_h_0
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

        venus_k_0 = venus_k_0 + 1.705727d-05*cos(3.47431815156d0 + 2352.8661537718d0 * t)
        venus_k_0 = venus_k_0 + 2.247401d-05*cos(1.09074471887d0 + 1577.3435424478d0 * t)
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

        venus_l_0 = venus_l_0 + 1.317126d-05*cos(5.18666796835d0 + 26.2983197998d0 * t)
        venus_l_0 = venus_l_0 + 1.609772d-05*cos(4.24819541738d0 + 1577.3435424478d0 * t)
        venus_l_0 = venus_l_0 + 1.974219d-05*cos(2.99373531667d0 + 3930.2096962196d0 * t)
        venus_l_0 = venus_l_0 + 2.003673d-05*cos(4.41634412285d0 + 7860.4193924392d0 * t)
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

        venus_p_2 = venus_p_2 + 6.232891d-05*cos(3.14159265359d0 + 0.0d0 * t)
        venus_p_2=venus_p_2*t*t;

        r = venus_p_2+venus_p_1+venus_p_0
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

        venus_q_2 = venus_q_2 + 1.090942d-05*cos(3.14159265359d0 + 0.0d0 * t)
        venus_q_2=venus_q_2*t*t;

        r = venus_q_2+venus_q_1+venus_q_0
    end function

end module VSOP87_Milli
