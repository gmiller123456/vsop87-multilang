!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87_Xsmall
    implicit none

    contains
    subroutine VSOP87_Xsmall_getEmb(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=emb_a(t)
        result(2)=emb_h(t)
        result(3)=emb_k(t)
        result(4)=emb_l(t)
        result(5)=emb_p(t)
        result(6)=emb_q(t)
    end subroutine

    subroutine VSOP87_Xsmall_getJupiter(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=jupiter_a(t)
        result(2)=jupiter_h(t)
        result(3)=jupiter_k(t)
        result(4)=jupiter_l(t)
        result(5)=jupiter_p(t)
        result(6)=jupiter_q(t)
    end subroutine

    subroutine VSOP87_Xsmall_getMars(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=mars_a(t)
        result(2)=mars_h(t)
        result(3)=mars_k(t)
        result(4)=mars_l(t)
        result(5)=mars_p(t)
        result(6)=mars_q(t)
    end subroutine

    subroutine VSOP87_Xsmall_getMercury(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=mercury_a(t)
        result(2)=mercury_h(t)
        result(3)=mercury_k(t)
        result(4)=mercury_l(t)
        result(5)=mercury_p(t)
        result(6)=mercury_q(t)
    end subroutine

    subroutine VSOP87_Xsmall_getNeptune(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=neptune_a(t)
        result(2)=neptune_h(t)
        result(3)=neptune_k(t)
        result(4)=neptune_l(t)
        result(5)=neptune_p(t)
        result(6)=neptune_q(t)
    end subroutine

    subroutine VSOP87_Xsmall_getSaturn(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=saturn_a(t)
        result(2)=saturn_h(t)
        result(3)=saturn_k(t)
        result(4)=saturn_l(t)
        result(5)=saturn_p(t)
        result(6)=saturn_q(t)
    end subroutine

    subroutine VSOP87_Xsmall_getUranus(t, result)
        double precision :: t
        double precision, dimension(6) :: result

        result(1)=uranus_a(t)
        result(2)=uranus_h(t)
        result(3)=uranus_k(t)
        result(4)=uranus_l(t)
        result(5)=uranus_p(t)
        result(6)=uranus_q(t)
    end subroutine

    subroutine VSOP87_Xsmall_getVenus(t, result)
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

        emb_a_0 = emb_a_0 + 1.04096d-06*cos(3.9716362354d0 + 19651.048481098d0 * t)
        emb_a_0 = emb_a_0 + 1.09781d-06*cos(1.17475009534d0 + 5753.3848848968d0 * t)
        emb_a_0 = emb_a_0 + 1.47658d-06*cos(5.8278545603d0 + 1577.3435424478d0 * t)
        emb_a_0 = emb_a_0 + 1.59326d-06*cos(2.54909632545d0 + 15720.8387848784d0 * t)
        emb_a_0 = emb_a_0 + 1.78074d-06*cos(3.44544104119d0 + 17260.1546546904d0 * t)
        emb_a_0 = emb_a_0 + 2.00599d-06*cos(1.88809198469d0 + 10977.078804699d0 * t)
        emb_a_0 = emb_a_0 + 2.49981d-06*cos(1.12650483648d0 + 11790.6290886588d0 * t)
        emb_a_0 = emb_a_0 + 4.08978d-06*cos(5.9872434538d0 + 7860.4193924392d0 * t)
        emb_a_0 = emb_a_0 + 7.60929d-06*cos(1.42260407149d0 + 3930.2096962196d0 * t)
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

        emb_h_0 = emb_h_0 + 1.2928d-06*cos(3.78871222562d0 + 13367.9726311066d0 * t)
        emb_h_0 = emb_h_0 + 1.78133d-06*cos(2.49083562024d0 + 17789.845619785d0 * t)
        emb_h_0 = emb_h_0 + 2.10039d-06*cos(3.28388935733d0 + 10977.078804699d0 * t)
        emb_h_0 = emb_h_0 + 2.30089d-06*cos(2.3662924949d0 + 9437.762934887d0 * t)
        emb_h_0 = emb_h_0 + 2.78987d-06*cos(3.70742582004d0 + 1059.3819301892d0 * t)
        emb_h_0 = emb_h_0 + 2.94243d-06*cos(2.35624478692d0 + 775.522611324d0 * t)
        emb_h_0 = emb_h_0 + 3.54605d-06*cos(1.70188277221d0 + 4694.0029547076d0 * t)
        emb_h_0 = emb_h_0 + 4.48935d-06*cos(5.94987750309d0 + 398.1490034082d0 * t)
        emb_h_0 = emb_h_0 + 4.8073d-06*cos(1.60400966048d0 + 10213.285546211d0 * t)
        emb_h_0 = emb_h_0 + 4.83355d-06*cos(0.94384676328d0 + 5507.5532386674d0 * t)
        emb_h_0 = emb_h_0 + 8.19544d-06*cos(5.04224333254d0 + 2352.8661537718d0 * t)
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

        emb_k_0 = emb_k_0 + 1.28829d-06*cos(2.21903872695d0 + 13367.9726311066d0 * t)
        emb_k_0 = emb_k_0 + 1.78132d-06*cos(4.06312103648d0 + 17789.845619785d0 * t)
        emb_k_0 = emb_k_0 + 2.11663d-06*cos(1.69085049749d0 + 10977.078804699d0 * t)
        emb_k_0 = emb_k_0 + 2.29665d-06*cos(0.79626727662d0 + 9437.762934887d0 * t)
        emb_k_0 = emb_k_0 + 2.78456d-06*cos(5.27885763953d0 + 1059.3819301892d0 * t)
        emb_k_0 = emb_k_0 + 2.94442d-06*cos(3.92692187453d0 + 775.522611324d0 * t)
        emb_k_0 = emb_k_0 + 3.54179d-06*cos(0.13054037265d0 + 4694.0029547076d0 * t)
        emb_k_0 = emb_k_0 + 4.41134d-06*cos(1.21138303352d0 + 398.1490034082d0 * t)
        emb_k_0 = emb_k_0 + 4.83174d-06*cos(5.65660621901d0 + 5507.5532386674d0 * t)
        emb_k_0 = emb_k_0 + 4.83421d-06*cos(3.17751155482d0 + 10213.285546211d0 * t)
        emb_k_0 = emb_k_0 + 8.23038d-06*cos(0.33112005725d0 + 2352.8661537718d0 * t)
        emb_k_0 = emb_k_0 + 1.497439d-05*cos(3.72409379834d0 + 529.6909650946d0 * t)
        emb_k_0 = emb_k_0 + 1.859231d-05*cos(0.55463591479d0 + 5223.6939198022d0 * t)
        emb_k_0 = emb_k_0 + 1.988852d-05*cos(4.23374621009d0 + 1577.3435424478d0 * t)
        emb_k_0 = emb_k_0 + 0.0037408165d0*cos(3.14159265359d0 + 0.0d0 * t)

        emb_k_1 = emb_k_1 + 0.00082267418d0*cos(3.14159265359d0 + 0.0d0 * t)
        emb_k_1=emb_k_1*t;

        emb_k_2 = emb_k_2 + 2.762465d-05*cos(0.0d0 + 0.0d0 * t)
        emb_k_2=emb_k_2*t*t;

        emb_k_3 = emb_k_3 + 1.16955d-06*cos(0.0d0 + 0.0d0 * t)
        emb_k_3=emb_k_3*t*t*t;

        r = emb_k_3+emb_k_2+emb_k_1+emb_k_0
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

        emb_l_0 = emb_l_0 + 1.01743d-06*cos(4.26677440004d0 + 7.1135470008d0 * t)
        emb_l_0 = emb_l_0 + 1.05933d-06*cos(5.2413034795d0 + 5884.9268465832d0 * t)
        emb_l_0 = emb_l_0 + 1.15148d-06*cos(0.64544911683d0 + 0.9803210682d0 * t)
        emb_l_0 = emb_l_0 + 1.18606d-06*cos(0.68201823673d0 + 23581.2581773176d0 * t)
        emb_l_0 = emb_l_0 + 1.26209d-06*cos(1.08301258683d0 + 20.7753954924d0 * t)
        emb_l_0 = emb_l_0 + 1.44608d-06*cos(2.52725393873d0 + 5507.5532386674d0 * t)
        emb_l_0 = emb_l_0 + 1.55515d-06*cos(0.83287668374d0 + 213.299095438d0 * t)
        emb_l_0 = emb_l_0 + 1.66274d-06*cos(4.80363171369d0 + 2544.3144198834d0 * t)
        emb_l_0 = emb_l_0 + 1.93313d-06*cos(5.54264947747d0 + 19651.048481098d0 * t)
        emb_l_0 = emb_l_0 + 2.37655d-06*cos(1.15089696936d0 + 5223.6939198022d0 * t)
        emb_l_0 = emb_l_0 + 2.77296d-06*cos(5.02126378438d0 + 17260.1546546904d0 * t)
        emb_l_0 = emb_l_0 + 2.78206d-06*cos(1.90026794482d0 + 796.2980068164d0 * t)
        emb_l_0 = emb_l_0 + 3.29412d-06*cos(4.12004912713d0 + 15720.8387848784d0 * t)
        emb_l_0 = emb_l_0 + 3.56604d-06*cos(2.91954116867d0 + 0.0673103028d0 * t)
        emb_l_0 = emb_l_0 + 3.773d-06*cos(3.44491389994d0 + 10977.078804699d0 * t)
        emb_l_0 = emb_l_0 + 4.80499d-06*cos(4.20673996315d0 + 775.522611324d0 * t)
        emb_l_0 = emb_l_0 + 5.14274d-06*cos(2.73992482008d0 + 5753.3848848968d0 * t)
        emb_l_0 = emb_l_0 + 6.03627d-06*cos(2.69740270021d0 + 11790.6290886588d0 * t)
        emb_l_0 = emb_l_0 + 8.53421d-06*cos(3.50940633514d0 + 398.1490034082d0 * t)
        emb_l_0 = emb_l_0 + 9.01845d-06*cos(2.04505535578d0 + 26.2983197998d0 * t)
        emb_l_0 = emb_l_0 + 1.089612d-05*cos(1.10654596593d0 + 1577.3435424478d0 * t)
        emb_l_0 = emb_l_0 + 1.263517d-05*cos(2.03240137643d0 + 529.6909650946d0 * t)
        emb_l_0 = emb_l_0 + 1.268612d-05*cos(1.27476353113d0 + 7860.4193924392d0 * t)
        emb_l_0 = emb_l_0 + 1.664099d-05*cos(6.13527980181d0 + 3930.2096962196d0 * t)
        emb_l_0 = emb_l_0 + 2.056367d-05*cos(3.87949142209d0 + 11506.7697697936d0 * t)
        emb_l_0 = emb_l_0 + 3.417568d-05*cos(2.82887613695d0 + 3.523118349d0 * t)
        emb_l_0 = emb_l_0 + 1.75347045953d0*cos(0.0d0 + 0.0d0 * t)

        emb_l_1 = emb_l_1 + 1.193d-06*cos(5.79559871816d0 + 26.2983197998d0 * t)
        emb_l_1 = emb_l_1 + 4.25257d-06*cos(1.59049255748d0 + 3.523118349d0 * t)
        emb_l_1 = emb_l_1 + 6283.0758499914d0*cos(0.0d0 + 0.0d0 * t)
        emb_l_1=emb_l_1*t;

        emb_l_2 = emb_l_2 + 9.91013d-06*cos(3.14159265359d0 + 0.0d0 * t)
        emb_l_2=emb_l_2*t*t;

        r = emb_l_2+emb_l_1+emb_l_0
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

        emb_q_3 = emb_q_3 + 1.26542d-06*cos(0.0d0 + 0.0d0 * t)
        emb_q_3=emb_q_3*t*t*t;

        r = emb_q_3+emb_q_2+emb_q_1
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

        jupiter_a_0 = jupiter_a_0 + 1.10561d-06*cos(1.24589461347d0 + 2221.856634597d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.10668d-06*cos(1.38105473624d0 + 2324.9494088156d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.12045d-06*cos(6.006177128d0 + 117.3198682202d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.12368d-06*cos(1.38571949827d0 + 454.9093665273d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.13555d-06*cos(4.60369118489d0 + 3267.0114707846d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.2103d-06*cos(5.9331704782d0 + 2737.32050569d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.23493d-06*cos(4.95938566355d0 + 1891.2376709388d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.25371d-06*cos(3.15768545141d0 + 3.9321532631d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.25408d-06*cos(1.11153617336d0 + 12036.4607348882d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.25818d-06*cos(6.03551625731d0 + 1677.9385755008d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.26801d-06*cos(0.57171213904d0 + 51646.11531805379d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.29103d-06*cos(1.80630457578d0 + 515.463871093d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.31672d-06*cos(4.4813501019d0 + 323.5054166574d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.43977d-06*cos(5.04046635936d0 + 3060.8259223474d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.59675d-06*cos(1.77145336275d0 + 2008.557539159d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.60749d-06*cos(5.54977170114d0 + 380.12776796d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.73418d-06*cos(4.20461421029d0 + 1364.7280995819d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.85634d-06*cos(0.42608712195d0 + 835.0371344873d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.88834d-06*cos(1.48146935936d0 + 1905.4647649404d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.91018d-06*cos(0.01619214426d0 + 1361.5467058442d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.9615d-06*cos(3.76074975148d0 + 3163.918696566d0 * t)
        jupiter_a_0 = jupiter_a_0 + 1.96915d-06*cos(6.20658745912d0 + 2420.9286360334d0 * t)
        jupiter_a_0 = jupiter_a_0 + 2.04279d-06*cos(2.11770916591d0 + 199.0720014364d0 * t)
        jupiter_a_0 = jupiter_a_0 + 2.07286d-06*cos(4.85063960045d0 + 2950.619601128d0 * t)
        jupiter_a_0 = jupiter_a_0 + 2.27728d-06*cos(3.14192283306d0 + 983.1158589136d0 * t)
        jupiter_a_0 = jupiter_a_0 + 2.29315d-06*cos(5.16891592611d0 + 1574.8458012822d0 * t)
        jupiter_a_0 = jupiter_a_0 + 2.29801d-06*cos(2.21004165963d0 + 1692.1656695024d0 * t)
        jupiter_a_0 = jupiter_a_0 + 2.49351d-06*cos(5.29610134269d0 + 2744.4340526908d0 * t)
        jupiter_a_0 = jupiter_a_0 + 2.78334d-06*cos(0.28492764313d0 + 1045.1548361876d0 * t)
        jupiter_a_0 = jupiter_a_0 + 3.16126d-06*cos(0.20126046974d0 + 2104.5367663768d0 * t)
        jupiter_a_0 = jupiter_a_0 + 3.28094d-06*cos(1.70664328673d0 + 1589.0728952838d0 * t)
        jupiter_a_0 = jupiter_a_0 + 3.6462d-06*cos(2.22757788713d0 + 9153.9036160218d0 * t)
        jupiter_a_0 = jupiter_a_0 + 3.76133d-06*cos(5.10198361031d0 + 2634.2277314714d0 * t)
        jupiter_a_0 = jupiter_a_0 + 3.85538d-06*cos(0.55987034622d0 + 728.762966531d0 * t)
        jupiter_a_0 = jupiter_a_0 + 3.99559d-06*cos(3.98214629886d0 + 2847.5268269094d0 * t)
        jupiter_a_0 = jupiter_a_0 + 4.05d-06*cos(5.39904385827d0 + 1258.4539316256d0 * t)
        jupiter_a_0 = jupiter_a_0 + 4.07798d-06*cos(0.80664010126d0 + 5223.6939198022d0 * t)
        jupiter_a_0 = jupiter_a_0 + 4.09556d-06*cos(2.85811447899d0 + 1375.7737998458d0 * t)
        jupiter_a_0 = jupiter_a_0 + 4.22961d-06*cos(5.55305092929d0 + 2428.0421830342d0 * t)
        jupiter_a_0 = jupiter_a_0 + 4.79787d-06*cos(6.01749382975d0 + 14.2270940016d0 * t)
        jupiter_a_0 = jupiter_a_0 + 4.95462d-06*cos(2.63267910115d0 + 95.9792272178d0 * t)
        jupiter_a_0 = jupiter_a_0 + 5.00552d-06*cos(0.48413498069d0 + 1788.1448967202d0 * t)
        jupiter_a_0 = jupiter_a_0 + 5.05382d-06*cos(0.8461825358d0 + 412.3710968744d0 * t)
        jupiter_a_0 = jupiter_a_0 + 5.53323d-06*cos(1.95185697222d0 + 1272.6810256272d0 * t)
        jupiter_a_0 = jupiter_a_0 + 5.73855d-06*cos(3.1501113548d0 + 1059.3819301892d0 * t)
        jupiter_a_0 = jupiter_a_0 + 5.94328d-06*cos(2.91219176914d0 + 309.2783226558d0 * t)
        jupiter_a_0 = jupiter_a_0 + 6.29495d-06*cos(3.80414239573d0 + 25558.2121764796d0 * t)
        jupiter_a_0 = jupiter_a_0 + 6.67877d-06*cos(5.64425942934d0 + 942.062061969d0 * t)
        jupiter_a_0 = jupiter_a_0 + 6.7816d-06*cos(5.35755126139d0 + 2317.8358618148d0 * t)
        jupiter_a_0 = jupiter_a_0 + 6.94888d-06*cos(4.8925158049d0 + 213.299095438d0 * t)
        jupiter_a_0 = jupiter_a_0 + 6.97537d-06*cos(5.8104565231d0 + 2111.6503133776d0 * t)
        jupiter_a_0 = jupiter_a_0 + 7.13818d-06*cos(5.60425642515d0 + 2810.9214616052d0 * t)
        jupiter_a_0 = jupiter_a_0 + 7.82504d-06*cos(0.77273627414d0 + 1471.7530270636d0 * t)
        jupiter_a_0 = jupiter_a_0 + 8.05974d-06*cos(2.80173624193d0 + 909.8187330546d0 * t)
        jupiter_a_0 = jupiter_a_0 + 8.14257d-06*cos(4.21211039403d0 + 2531.1349572528d0 * t)
        jupiter_a_0 = jupiter_a_0 + 8.89721d-06*cos(2.20077367657d0 + 956.2891559706d0 * t)
        jupiter_a_0 = jupiter_a_0 + 9.14858d-06*cos(3.36559328209d0 + 742.9900605326d0 * t)
        jupiter_a_0 = jupiter_a_0 + 9.74288d-06*cos(5.89601604039d0 + 625.6701923124d0 * t)
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

        jupiter_a_1 = jupiter_a_1 + 1.00545d-06*cos(2.99574130603d0 + 213.299095438d0 * t)
        jupiter_a_1 = jupiter_a_1 + 1.01992d-06*cos(1.72318156344d0 + 1361.5467058442d0 * t)
        jupiter_a_1 = jupiter_a_1 + 1.16952d-06*cos(4.99977802604d0 + 1795.258443721d0 * t)
        jupiter_a_1 = jupiter_a_1 + 1.30369d-06*cos(6.27204880608d0 + 1589.0728952838d0 * t)
        jupiter_a_1 = jupiter_a_1 + 1.35643d-06*cos(2.20459172149d0 + 1788.1448967202d0 * t)
        jupiter_a_1 = jupiter_a_1 + 1.36554d-06*cos(3.81615570234d0 + 199.0720014364d0 * t)
        jupiter_a_1 = jupiter_a_1 + 1.4372d-06*cos(1.38094506019d0 + 1059.3819301892d0 * t)
        jupiter_a_1 = jupiter_a_1 + 1.48723d-06*cos(1.99057513019d0 + 1045.1548361876d0 * t)
        jupiter_a_1 = jupiter_a_1 + 1.59857d-06*cos(0.80737027138d0 + 1258.4539316256d0 * t)
        jupiter_a_1 = jupiter_a_1 + 1.65019d-06*cos(1.08624991779d0 + 2001.4439921582d0 * t)
        jupiter_a_1 = jupiter_a_1 + 1.70475d-06*cos(5.26781891515d0 + 1478.8665740644d0 * t)
        jupiter_a_1 = jupiter_a_1 + 1.91323d-06*cos(0.0d0 + 0.0d0 * t)
        jupiter_a_1 = jupiter_a_1 + 2.06168d-06*cos(2.26369947866d0 + 728.762966531d0 * t)
        jupiter_a_1 = jupiter_a_1 + 2.08182d-06*cos(4.30174453264d0 + 95.9792272178d0 * t)
        jupiter_a_1 = jupiter_a_1 + 2.12075d-06*cos(2.49433943968d0 + 1471.7530270636d0 * t)
        jupiter_a_1 = jupiter_a_1 + 2.14067d-06*cos(5.53818678757d0 + 1162.4747044078d0 * t)
        jupiter_a_1 = jupiter_a_1 + 2.19755d-06*cos(0.24168051708d0 + 1272.6810256272d0 * t)
        jupiter_a_1 = jupiter_a_1 + 2.392d-06*cos(1.63358295843d0 + 742.9900605326d0 * t)
        jupiter_a_1 = jupiter_a_1 + 2.39651d-06*cos(4.63045021564d0 + 309.2783226558d0 * t)
        jupiter_a_1 = jupiter_a_1 + 2.46695d-06*cos(2.85747030586d0 + 529.6909650946d0 * t)
        jupiter_a_1 = jupiter_a_1 + 2.64305d-06*cos(1.05263137537d0 + 942.062061969d0 * t)
        jupiter_a_1 = jupiter_a_1 + 2.70567d-06*cos(2.54582180151d0 + 412.3710968744d0 * t)
        jupiter_a_1 = jupiter_a_1 + 2.93428d-06*cos(1.34286451995d0 + 1685.0521225016d0 * t)
        jupiter_a_1 = jupiter_a_1 + 3.28878d-06*cos(2.79000776521d0 + 1155.361157407d0 * t)
        jupiter_a_1 = jupiter_a_1 + 3.41707d-06*cos(1.96336256481d0 + 426.598190876d0 * t)
        jupiter_a_1 = jupiter_a_1 + 3.54199d-06*cos(0.49660286331d0 + 956.2891559706d0 * t)
        jupiter_a_1 = jupiter_a_1 + 3.82808d-06*cos(4.31926485028d0 + 14.2270940016d0 * t)
        jupiter_a_1 = jupiter_a_1 + 3.86165d-06*cos(1.3027637831d0 + 625.6701923124d0 * t)
        jupiter_a_1 = jupiter_a_1 + 5.16763d-06*cos(3.1138174525d0 + 838.9692877504d0 * t)
        jupiter_a_1 = jupiter_a_1 + 5.17951d-06*cos(1.60448646183d0 + 1368.660252845d0 * t)
        jupiter_a_1 = jupiter_a_1 + 5.23859d-06*cos(0.75151625144d0 + 639.897286314d0 * t)
        jupiter_a_1 = jupiter_a_1 + 8.5555d-06*cos(3.38594999043d0 + 522.5774180938d0 * t)
        jupiter_a_1 = jupiter_a_1 + 9.11669d-06*cos(1.87013379797d0 + 1052.2683831884d0 * t)
        jupiter_a_1 = jupiter_a_1 + 9.75837d-06*cos(4.58170505532d0 + 110.2063212194d0 * t)
        jupiter_a_1 = jupiter_a_1 + 1.611596d-05*cos(2.13915074201d0 + 735.8765135318d0 * t)
        jupiter_a_1 = jupiter_a_1 + 1.760156d-05*cos(3.67637229071d0 + 206.1855484372d0 * t)
        jupiter_a_1 = jupiter_a_1 + 2.846542d-05*cos(2.88143856615d0 + 103.0927742186d0 * t)
        jupiter_a_1 = jupiter_a_1 + 2.974577d-05*cos(2.40984161552d0 + 419.4846438752d0 * t)
        jupiter_a_1 = jupiter_a_1 + 0.00010177614d0*cos(4.46063225487d0 + 7.1135470008d0 * t)
        jupiter_a_1=jupiter_a_1*t;

        jupiter_a_2 = jupiter_a_2 + 1.07734d-06*cos(5.34323507232d0 + 639.897286314d0 * t)
        jupiter_a_2 = jupiter_a_2 + 1.11307d-06*cos(3.00520857434d0 + 110.2063212194d0 * t)
        jupiter_a_2 = jupiter_a_2 + 1.1698d-06*cos(3.97770632245d0 + 735.8765135318d0 * t)
        jupiter_a_2 = jupiter_a_2 + 1.19358d-06*cos(5.12756771606d0 + 522.5774180938d0 * t)
        jupiter_a_2 = jupiter_a_2 + 1.55324d-06*cos(2.61803685429d0 + 14.2270940016d0 * t)
        jupiter_a_2 = jupiter_a_2 + 1.67983d-06*cos(4.51179472459d0 + 103.0927742186d0 * t)
        jupiter_a_2 = jupiter_a_2 + 2.10954d-06*cos(4.19391095229d0 + 419.4846438752d0 * t)
        jupiter_a_2 = jupiter_a_2 + 2.44841d-06*cos(5.39511569851d0 + 206.1855484372d0 * t)
        jupiter_a_2 = jupiter_a_2 + 2.100381d-05*cos(2.75770207184d0 + 7.1135470008d0 * t)
        jupiter_a_2=jupiter_a_2*t*t;

        jupiter_a_3 = jupiter_a_3 + 2.89189d-06*cos(1.03672574333d0 + 7.1135470008d0 * t)
        jupiter_a_3=jupiter_a_3*t*t*t;

        r = jupiter_a_3+jupiter_a_2+jupiter_a_1+jupiter_a_0
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

        jupiter_h_0 = jupiter_h_0 + 1.0267d-06*cos(1.39587976193d0 + 1258.4539316256d0 * t)
        jupiter_h_0 = jupiter_h_0 + 1.09592d-06*cos(2.78522580175d0 + 3.9321532631d0 * t)
        jupiter_h_0 = jupiter_h_0 + 1.16096d-06*cos(3.66946476921d0 + 2428.0421830342d0 * t)
        jupiter_h_0 = jupiter_h_0 + 1.20671d-06*cos(5.50795356956d0 + 220.4126424388d0 * t)
        jupiter_h_0 = jupiter_h_0 + 1.24922d-06*cos(6.21889007246d0 + 1788.1448967202d0 * t)
        jupiter_h_0 = jupiter_h_0 + 1.47418d-06*cos(5.70783554919d0 + 1898.3512179396d0 * t)
        jupiter_h_0 = jupiter_h_0 + 1.66131d-06*cos(5.27928826644d0 + 2001.4439921582d0 * t)
        jupiter_h_0 = jupiter_h_0 + 1.70389d-06*cos(0.77684553548d0 + 74.7815985673d0 * t)
        jupiter_h_0 = jupiter_h_0 + 1.79992d-06*cos(1.73004816014d0 + 942.062061969d0 * t)
        jupiter_h_0 = jupiter_h_0 + 1.92788d-06*cos(0.31774558553d0 + 412.3710968744d0 * t)
        jupiter_h_0 = jupiter_h_0 + 1.94058d-06*cos(1.54132097371d0 + 199.0720014364d0 * t)
        jupiter_h_0 = jupiter_h_0 + 1.95255d-06*cos(5.47453781417d0 + 639.897286314d0 * t)
        jupiter_h_0 = jupiter_h_0 + 2.28836d-06*cos(3.92960294226d0 + 2111.6503133776d0 * t)
        jupiter_h_0 = jupiter_h_0 + 2.36476d-06*cos(0.22109334122d0 + 1471.7530270636d0 * t)
        jupiter_h_0 = jupiter_h_0 + 2.37397d-06*cos(6.01396932048d0 + 1581.959348283d0 * t)
        jupiter_h_0 = jupiter_h_0 + 2.42669d-06*cos(1.3082717881d0 + 742.9900605326d0 * t)
        jupiter_h_0 = jupiter_h_0 + 2.43988d-06*cos(1.30951249859d0 + 117.3198682202d0 * t)
        jupiter_h_0 = jupiter_h_0 + 2.82065d-06*cos(3.77178752149d0 + 380.12776796d0 * t)
        jupiter_h_0 = jupiter_h_0 + 3.39714d-06*cos(5.48652148451d0 + 1685.0521225016d0 * t)
        jupiter_h_0 = jupiter_h_0 + 3.44135d-06*cos(2.07870271527d0 + 625.6701923124d0 * t)
        jupiter_h_0 = jupiter_h_0 + 3.59617d-06*cos(3.54783550291d0 + 9153.9036160218d0 * t)
        jupiter_h_0 = jupiter_h_0 + 3.62018d-06*cos(0.0634371315d0 + 1265.5674786264d0 * t)
        jupiter_h_0 = jupiter_h_0 + 4.02081d-06*cos(2.1248584914d0 + 5223.6939198022d0 * t)
        jupiter_h_0 = jupiter_h_0 + 4.44578d-06*cos(4.19366076628d0 + 1795.258443721d0 * t)
        jupiter_h_0 = jupiter_h_0 + 4.56553d-06*cos(0.51831434184d0 + 1155.361157407d0 * t)
        jupiter_h_0 = jupiter_h_0 + 4.96493d-06*cos(0.4648117905d0 + 949.1756089698d0 * t)
        jupiter_h_0 = jupiter_h_0 + 5.23401d-06*cos(2.07592722322d0 + 846.0828347512d0 * t)
        jupiter_h_0 = jupiter_h_0 + 6.92021d-06*cos(1.74962455882d0 + 632.7837393132d0 * t)
        jupiter_h_0 = jupiter_h_0 + 7.03192d-06*cos(0.15957356846d0 + 323.5054166574d0 * t)
        jupiter_h_0 = jupiter_h_0 + 7.0775d-06*cos(0.32869131021d0 + 14.2270940016d0 * t)
        jupiter_h_0 = jupiter_h_0 + 7.15303d-06*cos(5.70702919909d0 + 1368.660252845d0 * t)
        jupiter_h_0 = jupiter_h_0 + 7.57793d-06*cos(0.56845752824d0 + 95.9792272178d0 * t)
        jupiter_h_0 = jupiter_h_0 + 7.90731d-06*cos(2.3868667658d0 + 309.2783226558d0 * t)
        jupiter_h_0 = jupiter_h_0 + 8.41281d-06*cos(4.46072048366d0 + 1478.8665740644d0 * t)
        jupiter_h_0 = jupiter_h_0 + 9.32255d-06*cos(0.85889457799d0 + 838.9692877504d0 * t)
        jupiter_h_0 = jupiter_h_0 + 9.82483d-06*cos(1.60531456988d0 + 10213.285546211d0 * t)
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

        jupiter_h_1 = jupiter_h_1 + 1.03661d-06*cos(3.24116980901d0 + 199.0720014364d0 * t)
        jupiter_h_1 = jupiter_h_1 + 1.26084d-06*cos(2.60835819708d0 + 213.299095438d0 * t)
        jupiter_h_1 = jupiter_h_1 + 1.28487d-06*cos(2.62303093504d0 + 838.9692877504d0 * t)
        jupiter_h_1 = jupiter_h_1 + 1.30697d-06*cos(5.89922659791d0 + 117.3198682202d0 * t)
        jupiter_h_1 = jupiter_h_1 + 1.37525d-06*cos(0.09027153121d0 + 426.598190876d0 * t)
        jupiter_h_1 = jupiter_h_1 + 1.88886d-06*cos(4.76390777493d0 + 323.5054166574d0 * t)
        jupiter_h_1 = jupiter_h_1 + 2.14696d-06*cos(4.1113184685d0 + 309.2783226558d0 * t)
        jupiter_h_1 = jupiter_h_1 + 2.77992d-06*cos(2.86432380518d0 + 522.5774180938d0 * t)
        jupiter_h_1 = jupiter_h_1 + 2.90363d-06*cos(0.17040772597d0 + 103.0927742186d0 * t)
        jupiter_h_1 = jupiter_h_1 + 3.0002d-06*cos(2.26025751836d0 + 95.9792272178d0 * t)
        jupiter_h_1 = jupiter_h_1 + 4.73843d-06*cos(4.91113288503d0 + 14.2270940016d0 * t)
        jupiter_h_1 = jupiter_h_1 + 8.6314d-06*cos(3.08602730952d0 + 206.1855484372d0 * t)
        jupiter_h_1 = jupiter_h_1 + 1.666197d-05*cos(6.26691415094d0 + 110.2063212194d0 * t)
        jupiter_h_1 = jupiter_h_1 + 0.00010164439d0*cos(5.05135857516d0 + 7.1135470008d0 * t)
        jupiter_h_1 = jupiter_h_1 + 0.0021714936d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_h_1=jupiter_h_1*t;

        jupiter_h_2 = jupiter_h_2 + 1.1475d-06*cos(4.97852281406d0 + 110.2063212194d0 * t)
        jupiter_h_2 = jupiter_h_2 + 1.6179d-06*cos(3.19948896566d0 + 14.2270940016d0 * t)
        jupiter_h_2 = jupiter_h_2 + 1.409659d-05*cos(3.32663555725d0 + 7.1135470008d0 * t)
        jupiter_h_2 = jupiter_h_2 + 9.858539d-05*cos(0.0d0 + 0.0d0 * t)
        jupiter_h_2=jupiter_h_2*t*t;

        jupiter_h_3 = jupiter_h_3 + 1.31751d-06*cos(1.55652906839d0 + 7.1135470008d0 * t)
        jupiter_h_3 = jupiter_h_3 + 5.13109d-06*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_h_3=jupiter_h_3*t*t*t;

        r = jupiter_h_3+jupiter_h_2+jupiter_h_1+jupiter_h_0
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

        jupiter_k_0 = jupiter_k_0 + 1.06733d-06*cos(0.01780606367d0 + 1258.4539316256d0 * t)
        jupiter_k_0 = jupiter_k_0 + 1.09521d-06*cos(0.99658636159d0 + 3.9321532631d0 * t)
        jupiter_k_0 = jupiter_k_0 + 1.13144d-06*cos(0.73812090955d0 + 1692.1656695024d0 * t)
        jupiter_k_0 = jupiter_k_0 + 1.19253d-06*cos(5.37298394723d0 + 2428.0421830342d0 * t)
        jupiter_k_0 = jupiter_k_0 + 1.24482d-06*cos(0.74828049115d0 + 220.4126424388d0 * t)
        jupiter_k_0 = jupiter_k_0 + 1.27712d-06*cos(0.06320301356d0 + 1898.3512179396d0 * t)
        jupiter_k_0 = jupiter_k_0 + 1.35451d-06*cos(4.8292981583d0 + 1788.1448967202d0 * t)
        jupiter_k_0 = jupiter_k_0 + 1.41504d-06*cos(3.39989650459d0 + 2001.4439921582d0 * t)
        jupiter_k_0 = jupiter_k_0 + 1.64709d-06*cos(2.3521174544d0 + 74.7815985673d0 * t)
        jupiter_k_0 = jupiter_k_0 + 1.82216d-06*cos(0.26832475325d0 + 942.062061969d0 * t)
        jupiter_k_0 = jupiter_k_0 + 1.89263d-06*cos(2.82486645294d0 + 632.7837393132d0 * t)
        jupiter_k_0 = jupiter_k_0 + 1.89658d-06*cos(0.78276236293d0 + 639.897286314d0 * t)
        jupiter_k_0 = jupiter_k_0 + 1.96029d-06*cos(6.25024587587d0 + 199.0720014364d0 * t)
        jupiter_k_0 = jupiter_k_0 + 1.98528d-06*cos(5.01726471886d0 + 412.3710968744d0 * t)
        jupiter_k_0 = jupiter_k_0 + 2.05301d-06*cos(0.34802096467d0 + 1581.959348283d0 * t)
        jupiter_k_0 = jupiter_k_0 + 2.31155d-06*cos(5.60946297135d0 + 2111.6503133776d0 * t)
        jupiter_k_0 = jupiter_k_0 + 2.45483d-06*cos(2.86993582502d0 + 117.3198682202d0 * t)
        jupiter_k_0 = jupiter_k_0 + 2.53426d-06*cos(5.07551011428d0 + 1471.7530270636d0 * t)
        jupiter_k_0 = jupiter_k_0 + 2.81947d-06*cos(2.20322414892d0 + 380.12776796d0 * t)
        jupiter_k_0 = jupiter_k_0 + 3.10096d-06*cos(3.69828809647d0 + 1685.0521225016d0 * t)
        jupiter_k_0 = jupiter_k_0 + 3.11617d-06*cos(0.65157412829d0 + 1265.5674786264d0 * t)
        jupiter_k_0 = jupiter_k_0 + 3.25616d-06*cos(4.20083915987d0 + 316.3918696566d0 * t)
        jupiter_k_0 = jupiter_k_0 + 3.28511d-06*cos(0.50863495149d0 + 625.6701923124d0 * t)
        jupiter_k_0 = jupiter_k_0 + 3.59908d-06*cos(2.05590382649d0 + 742.9900605326d0 * t)
        jupiter_k_0 = jupiter_k_0 + 3.5999d-06*cos(1.97760722983d0 + 9153.9036160218d0 * t)
        jupiter_k_0 = jupiter_k_0 + 4.02497d-06*cos(0.55465041009d0 + 5223.6939198022d0 * t)
        jupiter_k_0 = jupiter_k_0 + 4.19807d-06*cos(0.99873855032d0 + 949.1756089698d0 * t)
        jupiter_k_0 = jupiter_k_0 + 4.43487d-06*cos(5.85398298929d0 + 1795.258443721d0 * t)
        jupiter_k_0 = jupiter_k_0 + 4.80034d-06*cos(5.3182288872d0 + 1155.361157407d0 * t)
        jupiter_k_0 = jupiter_k_0 + 5.8541d-06*cos(3.3369796937d0 + 846.0828347512d0 * t)
        jupiter_k_0 = jupiter_k_0 + 6.87623d-06*cos(3.98852056742d0 + 1368.660252845d0 * t)
        jupiter_k_0 = jupiter_k_0 + 6.99754d-06*cos(1.71513916057d0 + 323.5054166574d0 * t)
        jupiter_k_0 = jupiter_k_0 + 7.1195d-06*cos(1.90078392393d0 + 14.2270940016d0 * t)
        jupiter_k_0 = jupiter_k_0 + 7.615d-06*cos(5.2897633145d0 + 95.9792272178d0 * t)
        jupiter_k_0 = jupiter_k_0 + 7.89438d-06*cos(0.7948955877d0 + 309.2783226558d0 * t)
        jupiter_k_0 = jupiter_k_0 + 8.3143d-06*cos(6.10639534966d0 + 1478.8665740644d0 * t)
        jupiter_k_0 = jupiter_k_0 + 9.27159d-06*cos(5.52533351772d0 + 838.9692877504d0 * t)
        jupiter_k_0 = jupiter_k_0 + 9.8294d-06*cos(3.17672660957d0 + 10213.285546211d0 * t)
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

        jupiter_k_1 = jupiter_k_1 + 1.05095d-06*cos(1.66650545387d0 + 199.0720014364d0 * t)
        jupiter_k_1 = jupiter_k_1 + 1.12707d-06*cos(0.46053413371d0 + 316.3918696566d0 * t)
        jupiter_k_1 = jupiter_k_1 + 1.24881d-06*cos(0.9204466379d0 + 838.9692877504d0 * t)
        jupiter_k_1 = jupiter_k_1 + 1.31774d-06*cos(1.17271866474d0 + 117.3198682202d0 * t)
        jupiter_k_1 = jupiter_k_1 + 1.32903d-06*cos(1.05746856938d0 + 213.299095438d0 * t)
        jupiter_k_1 = jupiter_k_1 + 1.87215d-06*cos(0.0246334101d0 + 323.5054166574d0 * t)
        jupiter_k_1 = jupiter_k_1 + 2.13237d-06*cos(2.49932084383d0 + 309.2783226558d0 * t)
        jupiter_k_1 = jupiter_k_1 + 2.31727d-06*cos(0.49673960731d0 + 426.598190876d0 * t)
        jupiter_k_1 = jupiter_k_1 + 2.34789d-06*cos(1.63354982212d0 + 103.0927742186d0 * t)
        jupiter_k_1 = jupiter_k_1 + 2.76174d-06*cos(1.22249279686d0 + 522.5774180938d0 * t)
        jupiter_k_1 = jupiter_k_1 + 3.02199d-06*cos(0.70130814022d0 + 95.9792272178d0 * t)
        jupiter_k_1 = jupiter_k_1 + 4.77592d-06*cos(0.20089705686d0 + 14.2270940016d0 * t)
        jupiter_k_1 = jupiter_k_1 + 8.94733d-06*cos(1.54998963517d0 + 206.1855484372d0 * t)
        jupiter_k_1 = jupiter_k_1 + 1.978042d-05*cos(1.13748818129d0 + 110.2063212194d0 * t)
        jupiter_k_1 = jupiter_k_1 + 0.00010303903d0*cos(0.33250058601d0 + 7.1135470008d0 * t)
        jupiter_k_1 = jupiter_k_1 + 0.00113010377d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_k_1=jupiter_k_1*t;

        jupiter_k_2 = jupiter_k_2 + 1.63137d-06*cos(4.7804122682d0 + 14.2270940016d0 * t)
        jupiter_k_2 = jupiter_k_2 + 1.79812d-06*cos(5.41803419096d0 + 110.2063212194d0 * t)
        jupiter_k_2 = jupiter_k_2 + 1.442597d-05*cos(4.88233039271d0 + 7.1135470008d0 * t)
        jupiter_k_2 = jupiter_k_2 + 0.00010930126d0*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_k_2=jupiter_k_2*t*t;

        jupiter_k_3 = jupiter_k_3 + 1.35595d-06*cos(3.10018478882d0 + 7.1135470008d0 * t)
        jupiter_k_3 = jupiter_k_3 + 4.28748d-06*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_k_3=jupiter_k_3*t*t*t;

        r = jupiter_k_3+jupiter_k_2+jupiter_k_1+jupiter_k_0
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

        jupiter_l_0 = jupiter_l_0 + 1.00056d-06*cos(3.25412419575d0 + 1589.0728952838d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.00864d-06*cos(1.88411522703d0 + 1045.1548361876d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.01423d-06*cos(5.51689776719d0 + 2847.5268269094d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.04966d-06*cos(2.96068929763d0 + 454.9093665273d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.09752d-06*cos(4.03314255687d0 + 2810.9214616052d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.16612d-06*cos(3.38920959149d0 + 0.5212648618d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.17441d-06*cos(2.23306551604d0 + 25558.2121764796d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.25976d-06*cos(0.82475018031d0 + 380.12776796d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.30465d-06*cos(0.62552582455d0 + 1258.4539316256d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.31431d-06*cos(4.45569551353d0 + 1375.7737998458d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.44088d-06*cos(3.91175826114d0 + 74.7815985673d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.47182d-06*cos(2.12910808939d0 + 1788.1448967202d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.62979d-06*cos(1.17304790237d0 + 2111.6503133776d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.6784d-06*cos(2.16680851537d0 + 728.762966531d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.83312d-06*cos(0.66099793195d0 + 2317.8358618148d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.84681d-06*cos(3.50325567437d0 + 1272.6810256272d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.13179d-06*cos(5.75286549834d0 + 2531.1349572528d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.14564d-06*cos(3.74920088756d0 + 199.0720014364d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.20942d-06*cos(4.22263431265d0 + 323.5054166574d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.22785d-06*cos(4.73183950653d0 + 1059.3819301892d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.46029d-06*cos(0.87826986409d0 + 942.062061969d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.48153d-06*cos(2.4242228695d0 + 1471.7530270636d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.61509d-06*cos(1.87644110891d0 + 0.9632078465d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.62133d-06*cos(1.4459095743d0 + 1795.258443721d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.95617d-06*cos(4.37235061347d0 + 909.8187330546d0 * t)
        jupiter_l_0 = jupiter_l_0 + 3.11427d-06*cos(2.46010854121d0 + 412.3710968744d0 * t)
        jupiter_l_0 = jupiter_l_0 + 3.30424d-06*cos(4.74049821741d0 + 0.0481841098d0 * t)
        jupiter_l_0 = jupiter_l_0 + 3.40025d-06*cos(3.75417293032d0 + 956.2891559706d0 * t)
        jupiter_l_0 = jupiter_l_0 + 3.43466d-06*cos(0.92647959114d0 + 2001.4439921582d0 * t)
        jupiter_l_0 = jupiter_l_0 + 3.61031d-06*cos(4.61309848294d0 + 309.2783226558d0 * t)
        jupiter_l_0 = jupiter_l_0 + 3.90705d-06*cos(1.72055843172d0 + 1478.8665740644d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.17259d-06*cos(1.03549122058d0 + 2.4476805548d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.27922d-06*cos(2.72411058898d0 + 1155.361157407d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.464d-06*cos(4.91613442399d0 + 742.9900605326d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.47356d-06*cos(1.13357378569d0 + 625.6701923124d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.51691d-06*cos(5.99615002792d0 + 2214.7430875962d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.85899d-06*cos(1.988776841d0 + 1162.4747044078d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.87615d-06*cos(4.51977399861d0 + 846.0828347512d0 * t)
        jupiter_l_0 = jupiter_l_0 + 6.2561d-06*cos(3.99742805381d0 + 639.897286314d0 * t)
        jupiter_l_0 = jupiter_l_0 + 6.47693d-06*cos(1.19631194143d0 + 1685.0521225016d0 * t)
        jupiter_l_0 = jupiter_l_0 + 7.87936d-06*cos(3.03671091148d0 + 838.9692877504d0 * t)
        jupiter_l_0 = jupiter_l_0 + 9.45194d-06*cos(4.09489728563d0 + 95.9792272178d0 * t)
        jupiter_l_0 = jupiter_l_0 + 9.64842d-06*cos(5.19532525625d0 + 426.598190876d0 * t)
        jupiter_l_0 = jupiter_l_0 + 9.70362d-06*cos(6.24600641977d0 + 1898.3512179396d0 * t)
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

        jupiter_l_1 = jupiter_l_1 + 1.13944d-06*cos(3.21458797789d0 + 742.9900605326d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.1589d-06*cos(4.41725141865d0 + 1155.361157407d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.34811d-06*cos(2.05393435356d0 + 956.2891559706d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.43305d-06*cos(5.43742934205d0 + 199.0720014364d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.44843d-06*cos(0.01084233375d0 + 309.2783226558d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.66988d-06*cos(4.14994417379d0 + 412.3710968744d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.68683d-06*cos(3.17195580968d0 + 1368.660252845d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.77839d-06*cos(2.83678629232d0 + 625.6701923124d0 * t)
        jupiter_l_1 = jupiter_l_1 + 2.11722d-06*cos(4.47237642876d0 + 529.6909650946d0 * t)
        jupiter_l_1 = jupiter_l_1 + 2.13058d-06*cos(4.72897364149d0 + 838.9692877504d0 * t)
        jupiter_l_1 = jupiter_l_1 + 2.49868d-06*cos(2.30701006635d0 + 639.897286314d0 * t)
        jupiter_l_1 = jupiter_l_1 + 2.66923d-06*cos(3.51026041015d0 + 426.598190876d0 * t)
        jupiter_l_1 = jupiter_l_1 + 3.32869d-06*cos(3.44120022777d0 + 1052.2683831884d0 * t)
        jupiter_l_1 = jupiter_l_1 + 4.01089d-06*cos(5.73287131668d0 + 95.9792272178d0 * t)
        jupiter_l_1 = jupiter_l_1 + 4.61929d-06*cos(5.00343499096d0 + 522.5774180938d0 * t)
        jupiter_l_1 = jupiter_l_1 + 6.59087d-06*cos(4.82457664565d0 + 213.299095438d0 * t)
        jupiter_l_1 = jupiter_l_1 + 7.04876d-06*cos(3.71363806525d0 + 735.8765135318d0 * t)
        jupiter_l_1 = jupiter_l_1 + 8.71623d-06*cos(5.76336971779d0 + 110.2063212194d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.163261d-05*cos(0.51449095629d0 + 3.9321532631d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.295763d-05*cos(5.55131472287d0 + 3.1813937377d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.825678d-05*cos(5.28404506455d0 + 206.1855484372d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.827425d-05*cos(3.98800487338d0 + 419.4846438752d0 * t)
        jupiter_l_1 = jupiter_l_1 + 4.234649d-05*cos(5.88973718187d0 + 14.2270940016d0 * t)
        jupiter_l_1 = jupiter_l_1 + 5.840251d-05*cos(4.4273475525d0 + 103.0927742186d0 * t)
        jupiter_l_1 = jupiter_l_1 + 0.00228875491d0*cos(6.02639570653d0 + 7.1135470008d0 * t)
        jupiter_l_1 = jupiter_l_1 + 529.6909650946d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_l_1=jupiter_l_1*t;

        jupiter_l_2 = jupiter_l_2 + 1.28563d-06*cos(5.76662093074d0 + 419.4846438752d0 * t)
        jupiter_l_2 = jupiter_l_2 + 1.97466d-06*cos(2.48373814311d0 + 3.9321532631d0 * t)
        jupiter_l_2 = jupiter_l_2 + 2.54166d-06*cos(0.70387604d0 + 206.1855484372d0 * t)
        jupiter_l_2 = jupiter_l_2 + 3.37361d-06*cos(3.78651279871d0 + 3.1813937377d0 * t)
        jupiter_l_2 = jupiter_l_2 + 3.52955d-06*cos(6.05833758121d0 + 103.0927742186d0 * t)
        jupiter_l_2 = jupiter_l_2 + 1.71976d-05*cos(4.18704068143d0 + 14.2270940016d0 * t)
        jupiter_l_2 = jupiter_l_2 + 0.00014837133d0*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_l_2 = jupiter_l_2 + 0.00047224495d0*cos(4.32142959829d0 + 7.1135470008d0 * t)
        jupiter_l_2=jupiter_l_2*t*t;

        jupiter_l_3 = jupiter_l_3 + 4.70234d-06*cos(2.47473054303d0 + 14.2270940016d0 * t)
        jupiter_l_3 = jupiter_l_3 + 6.500387d-05*cos(2.5985888016d0 + 7.1135470008d0 * t)
        jupiter_l_3=jupiter_l_3*t*t*t;

        jupiter_l_4 = jupiter_l_4 + 6.69512d-06*cos(0.85280446877d0 + 7.1135470008d0 * t)
        jupiter_l_4=jupiter_l_4*t*t*t*t;

        r = jupiter_l_4+jupiter_l_3+jupiter_l_2+jupiter_l_1+jupiter_l_0
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

        jupiter_p_0 = jupiter_p_0 + 1.02084d-06*cos(1.20653209518d0 + 316.3918696566d0 * t)
        jupiter_p_0 = jupiter_p_0 + 2.18691d-06*cos(1.34049397687d0 + 110.2063212194d0 * t)
        jupiter_p_0 = jupiter_p_0 + 8.51237d-06*cos(0.43284391102d0 + 7.1135470008d0 * t)
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

        jupiter_q_0 = jupiter_q_0 + 1.17121d-06*cos(3.26532246993d0 + 103.0927742186d0 * t)
        jupiter_q_0 = jupiter_q_0 + 1.38248d-06*cos(1.31389381161d0 + 316.3918696566d0 * t)
        jupiter_q_0 = jupiter_q_0 + 2.20629d-06*cos(3.05589086672d0 + 110.2063212194d0 * t)
        jupiter_q_0 = jupiter_q_0 + 8.56543d-06*cos(2.10259354702d0 + 7.1135470008d0 * t)
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

        mars_a_0 = mars_a_0 + 1.10067d-06*cos(4.48219448389d0 + 22747.2907148744d0 * t)
        mars_a_0 = mars_a_0 + 1.12632d-06*cos(3.00528445339d0 + 14054.607308026d0 * t)
        mars_a_0 = mars_a_0 + 1.21226d-06*cos(3.51558284467d0 + 3340.6124266998d0 * t)
        mars_a_0 = mars_a_0 + 1.23423d-06*cos(4.18800018501d0 + 11769.8536931664d0 * t)
        mars_a_0 = mars_a_0 + 1.27671d-06*cos(3.33502022817d0 + 5088.6288397668d0 * t)
        mars_a_0 = mars_a_0 + 1.41281d-06*cos(2.93329240619d0 + 3532.0606928114d0 * t)
        mars_a_0 = mars_a_0 + 1.41415d-06*cos(2.90705220308d0 + 1748.016413067d0 * t)
        mars_a_0 = mars_a_0 + 1.47313d-06*cos(5.54608668207d0 + 191.4482661116d0 * t)
        mars_a_0 = mars_a_0 + 1.52902d-06*cos(3.7667491719d0 + 8429.2412664666d0 * t)
        mars_a_0 = mars_a_0 + 1.69766d-06*cos(2.07050336703d0 + 1194.4470102246d0 * t)
        mars_a_0 = mars_a_0 + 1.76339d-06*cos(2.30481091882d0 + 6151.533888305d0 * t)
        mars_a_0 = mars_a_0 + 1.91308d-06*cos(4.69750392491d0 + 11773.3768115154d0 * t)
        mars_a_0 = mars_a_0 + 2.25048d-06*cos(2.35790133524d0 + 8827.3902698748d0 * t)
        mars_a_0 = mars_a_0 + 2.61817d-06*cos(1.9309619901d0 + 5486.777843175d0 * t)
        mars_a_0 = mars_a_0 + 2.76103d-06*cos(4.50928436345d0 + 7903.073419721d0 * t)
        mars_a_0 = mars_a_0 + 2.77534d-06*cos(4.37358028952d0 + 6254.6266625236d0 * t)
        mars_a_0 = mars_a_0 + 2.85838d-06*cos(1.50110717903d0 + 2146.1654164752d0 * t)
        mars_a_0 = mars_a_0 + 3.83144d-06*cos(1.32410038748d0 + 1751.539531416d0 * t)
        mars_a_0 = mars_a_0 + 4.22934d-06*cos(3.63570368297d0 + 11243.6858464208d0 * t)
        mars_a_0 = mars_a_0 + 4.231d-06*cos(0.5336024491d0 + 5884.9268465832d0 * t)
        mars_a_0 = mars_a_0 + 5.03592d-06*cos(5.34765395932d0 + 8962.4553499102d0 * t)
        mars_a_0 = mars_a_0 + 5.60243d-06*cos(0.09765501589d0 + 2544.3144198834d0 * t)
        mars_a_0 = mars_a_0 + 6.34845d-06*cos(3.47678494053d0 + 796.2980068164d0 * t)
        mars_a_0 = mars_a_0 + 8.06575d-06*cos(5.19551022227d0 + 5092.1519581158d0 * t)
        mars_a_0 = mars_a_0 + 1.039285d-05*cos(5.5584889074d0 + 2810.9214616052d0 * t)
        mars_a_0 = mars_a_0 + 1.214966d-05*cos(5.01404770046d0 + 398.1490034082d0 * t)
        mars_a_0 = mars_a_0 + 1.412662d-05*cos(3.2553877172d0 + 6872.6731195112d0 * t)
        mars_a_0 = mars_a_0 + 1.580816d-05*cos(1.832327862d0 + 2942.4634232916d0 * t)
        mars_a_0 = mars_a_0 + 1.639879d-05*cos(4.27793460842d0 + 8432.7643848156d0 * t)
        mars_a_0 = mars_a_0 + 2.201786d-05*cos(1.39247552912d0 + 2281.2304965106d0 * t)
        mars_a_0 = mars_a_0 + 6.601698d-05*cos(4.92149777465d0 + 5621.8429232104d0 * t)
        mars_a_0 = mars_a_0 + 1.52367934191d0*cos(0.0d0 + 0.0d0 * t)

        mars_a_1 = mars_a_1 + 1.01801d-06*cos(1.97498465368d0 + 796.2980068164d0 * t)
        mars_a_1 = mars_a_1 + 1.73844d-06*cos(2.89087004153d0 + 2281.2304965106d0 * t)
        mars_a_1=mars_a_1*t;

        r = mars_a_1+mars_a_0
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

        mars_h_0 = mars_h_0 + 1.01536d-06*cos(0.11977238951d0 + 1349.8674096588d0 * t)
        mars_h_0 = mars_h_0 + 1.22986d-06*cos(3.56277117587d0 + 7.1135470008d0 * t)
        mars_h_0 = mars_h_0 + 1.27975d-06*cos(0.98946355823d0 + 1221.8485663214d0 * t)
        mars_h_0 = mars_h_0 + 1.32926d-06*cos(5.43594894341d0 + 5088.6288397668d0 * t)
        mars_h_0 = mars_h_0 + 1.49745d-06*cos(3.26563185514d0 + 3738.761430108d0 * t)
        mars_h_0 = mars_h_0 + 1.61011d-06*cos(3.66113910059d0 + 2810.9214616052d0 * t)
        mars_h_0 = mars_h_0 + 1.80895d-06*cos(2.61738926294d0 + 11773.3768115154d0 * t)
        mars_h_0 = mars_h_0 + 1.92896d-06*cos(4.99618103956d0 + 1748.016413067d0 * t)
        mars_h_0 = mars_h_0 + 2.02018d-06*cos(4.03458151695d0 + 5486.777843175d0 * t)
        mars_h_0 = mars_h_0 + 2.26075d-06*cos(0.14623886136d0 + 1589.0728952838d0 * t)
        mars_h_0 = mars_h_0 + 2.38362d-06*cos(6.18237119535d0 + 4562.4609930212d0 * t)
        mars_h_0 = mars_h_0 + 2.51559d-06*cos(4.90867081922d0 + 3532.0606928114d0 * t)
        mars_h_0 = mars_h_0 + 2.73587d-06*cos(6.26885939363d0 + 1194.4470102246d0 * t)
        mars_h_0 = mars_h_0 + 2.77917d-06*cos(2.58283528642d0 + 213.299095438d0 * t)
        mars_h_0 = mars_h_0 + 2.8644d-06*cos(1.33698587638d0 + 191.4482661116d0 * t)
        mars_h_0 = mars_h_0 + 2.95539d-06*cos(6.02762324218d0 + 2914.0142358238d0 * t)
        mars_h_0 = mars_h_0 + 3.01128d-06*cos(5.2414791783d0 + 7903.073419721d0 * t)
        mars_h_0 = mars_h_0 + 3.32664d-06*cos(0.66073721667d0 + 426.598190876d0 * t)
        mars_h_0 = mars_h_0 + 3.6393d-06*cos(3.59073138009d0 + 2146.1654164752d0 * t)
        mars_h_0 = mars_h_0 + 3.9925d-06*cos(0.15062203731d0 + 5621.8429232104d0 * t)
        mars_h_0 = mars_h_0 + 5.35053d-06*cos(1.60529999093d0 + 10213.285546211d0 * t)
        mars_h_0 = mars_h_0 + 5.84022d-06*cos(1.48217302335d0 + 3340.6124266998d0 * t)
        mars_h_0 = mars_h_0 + 5.96175d-06*cos(2.18727568432d0 + 2544.3144198834d0 * t)
        mars_h_0 = mars_h_0 + 5.99395d-06*cos(0.18570743303d0 + 6283.0758499914d0 * t)
        mars_h_0 = mars_h_0 + 6.31368d-06*cos(3.2595882507d0 + 8962.4553499102d0 * t)
        mars_h_0 = mars_h_0 + 1.024786d-05*cos(1.39271679546d0 + 796.2980068164d0 * t)
        mars_h_0 = mars_h_0 + 1.168491d-05*cos(0.61541102304d0 + 1751.539531416d0 * t)
        mars_h_0 = mars_h_0 + 1.376104d-05*cos(5.91426857264d0 + 5092.1519581158d0 * t)
        mars_h_0 = mars_h_0 + 1.767646d-05*cos(2.80798995472d0 + 398.1490034082d0 * t)
        mars_h_0 = mars_h_0 + 2.592276d-05*cos(0.12646371989d0 + 1059.3819301892d0 * t)
        mars_h_0 = mars_h_0 + 4.516507d-05*cos(2.19998239682d0 + 529.6909650946d0 * t)
        mars_h_0 = mars_h_0 + 8.158391d-05*cos(0.29399378947d0 + 2281.2304965106d0 * t)
        mars_h_0 = mars_h_0 + 0.03789973236d0*cos(3.14159265359d0 + 0.0d0 * t)

        mars_h_1 = mars_h_1 + 2.05697d-06*cos(4.88522652066d0 + 1059.3819301892d0 * t)
        mars_h_1 = mars_h_1 + 0.00624657465d0*cos(0.0d0 + 0.0d0 * t)
        mars_h_1=mars_h_1*t;

        mars_h_2 = mars_h_2 + 0.00015529482d0*cos(0.0d0 + 0.0d0 * t)
        mars_h_2=mars_h_2*t*t;

        mars_h_3 = mars_h_3 + 6.34879d-06*cos(3.14159265359d0 + 0.0d0 * t)
        mars_h_3=mars_h_3*t*t*t;

        r = mars_h_3+mars_h_2+mars_h_1+mars_h_0
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

        mars_k_0 = mars_k_0 + 1.02521d-06*cos(4.81066011526d0 + 1349.8674096588d0 * t)
        mars_k_0 = mars_k_0 + 1.25314d-06*cos(5.21772261515d0 + 7.1135470008d0 * t)
        mars_k_0 = mars_k_0 + 1.27577d-06*cos(5.68357224192d0 + 1221.8485663214d0 * t)
        mars_k_0 = mars_k_0 + 1.31704d-06*cos(5.24686338419d0 + 8432.7643848156d0 * t)
        mars_k_0 = mars_k_0 + 1.35202d-06*cos(3.82967046079d0 + 5088.6288397668d0 * t)
        mars_k_0 = mars_k_0 + 1.48302d-06*cos(4.82711134073d0 + 3738.761430108d0 * t)
        mars_k_0 = mars_k_0 + 1.85343d-06*cos(4.23075762057d0 + 11773.3768115154d0 * t)
        mars_k_0 = mars_k_0 + 1.94524d-06*cos(3.4056132588d0 + 1748.016413067d0 * t)
        mars_k_0 = mars_k_0 + 2.06063d-06*cos(2.42067605151d0 + 5486.777843175d0 * t)
        mars_k_0 = mars_k_0 + 2.25952d-06*cos(1.71746702316d0 + 1589.0728952838d0 * t)
        mars_k_0 = mars_k_0 + 2.31657d-06*cos(4.60975408714d0 + 4562.4609930212d0 * t)
        mars_k_0 = mars_k_0 + 2.53238d-06*cos(3.33125963922d0 + 3532.0606928114d0 * t)
        mars_k_0 = mars_k_0 + 2.60054d-06*cos(0.87227259616d0 + 5621.8429232104d0 * t)
        mars_k_0 = mars_k_0 + 2.7425d-06*cos(1.5657537537d0 + 1194.4470102246d0 * t)
        mars_k_0 = mars_k_0 + 2.78803d-06*cos(2.64045174251d0 + 2810.9214616052d0 * t)
        mars_k_0 = mars_k_0 + 2.82611d-06*cos(4.06004489516d0 + 213.299095438d0 * t)
        mars_k_0 = mars_k_0 + 2.83215d-06*cos(6.05698452647d0 + 191.4482661116d0 * t)
        mars_k_0 = mars_k_0 + 2.87155d-06*cos(3.69322317332d0 + 7903.073419721d0 * t)
        mars_k_0 = mars_k_0 + 2.99239d-06*cos(4.44888275244d0 + 2914.0142358238d0 * t)
        mars_k_0 = mars_k_0 + 3.3361d-06*cos(2.22969228123d0 + 426.598190876d0 * t)
        mars_k_0 = mars_k_0 + 3.66162d-06*cos(2.00332788166d0 + 2146.1654164752d0 * t)
        mars_k_0 = mars_k_0 + 5.35145d-06*cos(3.1753431731d0 + 10213.285546211d0 * t)
        mars_k_0 = mars_k_0 + 5.90692d-06*cos(3.07020003429d0 + 3340.6124266998d0 * t)
        mars_k_0 = mars_k_0 + 5.9635d-06*cos(0.60790185933d0 + 2544.3144198834d0 * t)
        mars_k_0 = mars_k_0 + 5.97352d-06*cos(1.75086632386d0 + 6283.0758499914d0 * t)
        mars_k_0 = mars_k_0 + 6.36715d-06*cos(4.84914663153d0 + 8962.4553499102d0 * t)
        mars_k_0 = mars_k_0 + 1.023098d-05*cos(2.96623191194d0 + 796.2980068164d0 * t)
        mars_k_0 = mars_k_0 + 1.174163d-05*cos(5.31228741951d0 + 1751.539531416d0 * t)
        mars_k_0 = mars_k_0 + 1.30058d-05*cos(4.32747267803d0 + 5092.1519581158d0 * t)
        mars_k_0 = mars_k_0 + 1.710954d-05*cos(4.34158755371d0 + 398.1490034082d0 * t)
        mars_k_0 = mars_k_0 + 2.590017d-05*cos(1.69837709855d0 + 1059.3819301892d0 * t)
        mars_k_0 = mars_k_0 + 4.631835d-05*cos(3.76981942051d0 + 529.6909650946d0 * t)
        mars_k_0 = mars_k_0 + 8.228685d-05*cos(4.99515670335d0 + 2281.2304965106d0 * t)
        mars_k_0 = mars_k_0 + 0.08536560252d0*cos(0.0d0 + 0.0d0 * t)

        mars_k_1 = mars_k_1 + 2.05412d-06*cos(0.17415970907d0 + 1059.3819301892d0 * t)
        mars_k_1 = mars_k_1 + 0.00376330152d0*cos(0.0d0 + 0.0d0 * t)
        mars_k_1=mars_k_1*t;

        mars_k_2 = mars_k_2 + 0.00024657776d0*cos(3.14159265359d0 + 0.0d0 * t)
        mars_k_2=mars_k_2*t*t;

        mars_k_3 = mars_k_3 + 3.67305d-06*cos(3.14159265359d0 + 0.0d0 * t)
        mars_k_3=mars_k_3*t*t*t;

        r = mars_k_3+mars_k_2+mars_k_1+mars_k_0
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

        mars_l_0 = mars_l_0 + 1.01468d-06*cos(0.87986717283d0 + 11371.7046897582d0 * t)
        mars_l_0 = mars_l_0 + 1.09338d-06*cos(1.05210120168d0 + 242.728603974d0 * t)
        mars_l_0 = mars_l_0 + 1.35709d-06*cos(0.00604053091d0 + 11773.3768115154d0 * t)
        mars_l_0 = mars_l_0 + 1.38278d-06*cos(4.30149954502d0 + 7.1135470008d0 * t)
        mars_l_0 = mars_l_0 + 1.43916d-06*cos(1.41882435831d0 + 135.0650800354d0 * t)
        mars_l_0 = mars_l_0 + 1.4986d-06*cos(5.76263858849d0 + 11769.8536931664d0 * t)
        mars_l_0 = mars_l_0 + 1.58022d-06*cos(1.00424721668d0 + 951.7184062506d0 * t)
        mars_l_0 = mars_l_0 + 1.66616d-06*cos(2.41299052653d0 + 553.5694028424d0 * t)
        mars_l_0 = mars_l_0 + 1.74894d-06*cos(4.89715078865d0 + 5088.6288397668d0 * t)
        mars_l_0 = mars_l_0 + 1.75383d-06*cos(2.85252807007d0 + 1221.8485663214d0 * t)
        mars_l_0 = mars_l_0 + 1.83019d-06*cos(5.3323460211d0 + 8429.2412664666d0 * t)
        mars_l_0 = mars_l_0 + 1.93095d-06*cos(3.35714469737d0 + 3.5904286518d0 * t)
        mars_l_0 = mars_l_0 + 2.02466d-06*cos(2.40686365855d0 + 2914.0142358238d0 * t)
        mars_l_0 = mars_l_0 + 2.16146d-06*cos(3.50454049794d0 + 382.8965322232d0 * t)
        mars_l_0 = mars_l_0 + 2.18651d-06*cos(5.87935089122d0 + 1349.8674096588d0 * t)
        mars_l_0 = mars_l_0 + 2.2122d-06*cos(3.91511328975d0 + 6151.533888305d0 * t)
        mars_l_0 = mars_l_0 + 2.91748d-06*cos(6.20967706001d0 + 7903.073419721d0 * t)
        mars_l_0 = mars_l_0 + 2.93184d-06*cos(4.22131283247d0 + 20.7753954924d0 * t)
        mars_l_0 = mars_l_0 + 3.14114d-06*cos(3.93130886306d0 + 8827.3902698748d0 * t)
        mars_l_0 = mars_l_0 + 3.29587d-06*cos(3.64337312872d0 + 1059.3819301892d0 * t)
        mars_l_0 = mars_l_0 + 3.31141d-06*cos(5.94358784177d0 + 6254.6266625236d0 * t)
        mars_l_0 = mars_l_0 + 3.52449d-06*cos(3.63298376801d0 + 1194.4470102246d0 * t)
        mars_l_0 = mars_l_0 + 3.59955d-06*cos(4.47203466358d0 + 1748.016413067d0 * t)
        mars_l_0 = mars_l_0 + 3.6404d-06*cos(0.67103413498d0 + 8962.4553499102d0 * t)
        mars_l_0 = mars_l_0 + 3.78841d-06*cos(3.49584498847d0 + 5486.777843175d0 * t)
        mars_l_0 = mars_l_0 + 4.01719d-06*cos(5.18798285625d0 + 11243.6858464208d0 * t)
        mars_l_0 = mars_l_0 + 4.10068d-06*cos(0.5037355807d0 + 213.299095438d0 * t)
        mars_l_0 = mars_l_0 + 5.50438d-06*cos(3.81001504105d0 + 0.9803210682d0 * t)
        mars_l_0 = mars_l_0 + 6.50977d-06*cos(3.06552014346d0 + 2146.1654164752d0 * t)
        mars_l_0 = mars_l_0 + 6.51923d-06*cos(1.68497785061d0 + 6872.6731195112d0 * t)
        mars_l_0 = mars_l_0 + 7.38491d-06*cos(2.09988737845d0 + 5884.9268465832d0 * t)
        mars_l_0 = mars_l_0 + 7.45984d-06*cos(3.82242950533d0 + 155.4203994342d0 * t)
        mars_l_0 = mars_l_0 + 9.18586d-06*cos(5.16728594409d0 + 3340.6124266998d0 * t)
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

        mars_l_1 = mars_l_1 + 1.04143d-06*cos(4.56972592723d0 + 2146.1654164752d0 * t)
        mars_l_1 = mars_l_1 + 1.12588d-06*cos(4.21840876432d0 + 1751.539531416d0 * t)
        mars_l_1 = mars_l_1 + 1.33682d-06*cos(2.23323473114d0 + 0.9803210682d0 * t)
        mars_l_1 = mars_l_1 + 3.39598d-06*cos(3.54085557838d0 + 796.2980068164d0 * t)
        mars_l_1 = mars_l_1 + 4.28098d-06*cos(5.3164140044d0 + 155.4203994342d0 * t)
        mars_l_1 = mars_l_1 + 4.29636d-06*cos(2.56091628616d0 + 191.4482661116d0 * t)
        mars_l_1 = mars_l_1 + 4.55053d-06*cos(4.45958028832d0 + 2281.2304965106d0 * t)
        mars_l_1 = mars_l_1 + 5.21206d-06*cos(5.01701667787d0 + 398.1490034082d0 * t)
        mars_l_1 = mars_l_1 + 3.452439d-05*cos(4.73210379431d0 + 3.523118349d0 * t)
        mars_l_1 = mars_l_1 + 3340.61242669981d0*cos(0.0d0 + 0.0d0 * t)
        mars_l_1=mars_l_1*t;

        mars_l_2 = mars_l_2 + 1.20524d-06*cos(0.5432252536d0 + 155.4203994342d0 * t)
        mars_l_2 = mars_l_2 + 2.22023d-06*cos(3.19436877547d0 + 3.523118349d0 * t)
        mars_l_2 = mars_l_2 + 4.57003d-06*cos(0.0d0 + 0.0d0 * t)
        mars_l_2=mars_l_2*t*t;

        r = mars_l_2+mars_l_1+mars_l_0
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

        mars_q_3 = mars_q_3 + 1.38835d-06*cos(3.14159265359d0 + 0.0d0 * t)
        mars_q_3=mars_q_3*t*t*t;

        r = mars_q_3+mars_q_2+mars_q_1+mars_q_0
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

        mercury_h_0 = mercury_h_0 + 1.4428d-06*cos(1.93331156378d0 + 529.6909650946d0 * t)
        mercury_h_0 = mercury_h_0 + 2.52884d-06*cos(2.25057555643d0 + 4551.9534970588d0 * t)
        mercury_h_0 = mercury_h_0 + 3.52827d-06*cos(3.3681106187d0 + 1109.3785520934d0 * t)
        mercury_h_0 = mercury_h_0 + 4.63409d-06*cos(5.90165895822d0 + 5661.3320491522d0 * t)
        mercury_h_0 = mercury_h_0 + 7.22616d-06*cos(4.54448156539d0 + 1059.3819301892d0 * t)
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

        mercury_k_0 = mercury_k_0 + 1.60627d-06*cos(3.30787227488d0 + 529.6909650946d0 * t)
        mercury_k_0 = mercury_k_0 + 2.4724d-06*cos(3.81754716007d0 + 4551.9534970588d0 * t)
        mercury_k_0 = mercury_k_0 + 3.37364d-06*cos(1.81571365587d0 + 1109.3785520934d0 * t)
        mercury_k_0 = mercury_k_0 + 4.45166d-06*cos(4.34028777466d0 + 5661.3320491522d0 * t)
        mercury_k_0 = mercury_k_0 + 7.20897d-06*cos(6.12043541204d0 + 1059.3819301892d0 * t)
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

        mercury_l_0 = mercury_l_0 + 1.21943d-06*cos(2.99718600299d0 + 25028.521211385d0 * t)
        mercury_l_0 = mercury_l_0 + 1.60008d-06*cos(0.66202900792d0 + 13521.7514415914d0 * t)
        mercury_l_0 = mercury_l_0 + 1.9367d-06*cos(0.27156027221d0 + 11322.6640983044d0 * t)
        mercury_l_0 = mercury_l_0 + 2.01761d-06*cos(2.79503077058d0 + 15874.6175953632d0 * t)
        mercury_l_0 = mercury_l_0 + 2.11195d-06*cos(5.29995252496d0 + 21535.9496445154d0 * t)
        mercury_l_0 = mercury_l_0 + 2.22838d-06*cos(0.11565050964d0 + 1059.3819301892d0 * t)
        mercury_l_0 = mercury_l_0 + 2.38783d-06*cos(4.02571732502d0 + 31749.2351907264d0 * t)
        mercury_l_0 = mercury_l_0 + 2.72395d-06*cos(2.48847158325d0 + 529.6909650946d0 * t)
        mercury_l_0 = mercury_l_0 + 2.7457d-06*cos(0.97829198562d0 + 4551.9534970588d0 * t)
        mercury_l_0 = mercury_l_0 + 3.43693d-06*cos(5.7660206629d0 + 955.5997416086d0 * t)
        mercury_l_0 = mercury_l_0 + 1.732389d-05*cos(4.10404056787d0 + 5661.3320491522d0 * t)
        mercury_l_0 = mercury_l_0 + 3.557754d-05*cos(1.51229384945d0 + 1109.3785520934d0 * t)
        mercury_l_0 = mercury_l_0 + 4.4026088424d0*cos(0.0d0 + 0.0d0 * t)

        mercury_l_1 = mercury_l_1 + 3.52015d-06*cos(3.05256012304d0 + 1109.3785520934d0 * t)
        mercury_l_1 = mercury_l_1 + 26087.9031415742d0*cos(0.0d0 + 0.0d0 * t)
        mercury_l_1=mercury_l_1*t;

        mercury_l_2 = mercury_l_2 + 9.34669d-06*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_l_2=mercury_l_2*t*t;

        r = mercury_l_2+mercury_l_1+mercury_l_0
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

        mercury_p_2 = mercury_p_2 + 9.1335d-06*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_p_2=mercury_p_2*t*t;

        r = mercury_p_2+mercury_p_1+mercury_p_0
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

        neptune_a_0 = neptune_a_0 + 1.00413d-06*cos(0.03044473012d0 + 82.8583534146d0 * t)
        neptune_a_0 = neptune_a_0 + 1.05631d-06*cos(3.35751847488d0 + 69.1525242748d0 * t)
        neptune_a_0 = neptune_a_0 + 1.06385d-06*cos(5.17132075907d0 + 452.2010535416d0 * t)
        neptune_a_0 = neptune_a_0 + 1.10957d-06*cos(0.34428209962d0 + 474.9468453752d0 * t)
        neptune_a_0 = neptune_a_0 + 1.12226d-06*cos(1.21158967572d0 + 526.9826521089d0 * t)
        neptune_a_0 = neptune_a_0 + 1.12406d-06*cos(1.88656309786d0 + 247.2393453818d0 * t)
        neptune_a_0 = neptune_a_0 + 1.13665d-06*cos(4.54299009675d0 + 110.2063212194d0 * t)
        neptune_a_0 = neptune_a_0 + 1.13851d-06*cos(5.99370740973d0 + 10350.3185703734d0 * t)
        neptune_a_0 = neptune_a_0 + 1.18971d-06*cos(5.50927399189d0 + 285.1117485887d0 * t)
        neptune_a_0 = neptune_a_0 + 1.20554d-06*cos(4.5703049601d0 + 6420.1088741538d0 * t)
        neptune_a_0 = neptune_a_0 + 1.21257d-06*cos(1.13944963953d0 + 1117.2281217692d0 * t)
        neptune_a_0 = neptune_a_0 + 1.21652d-06*cos(5.20393003602d0 + 25.6028626656d0 * t)
        neptune_a_0 = neptune_a_0 + 1.22242d-06*cos(1.07460274495d0 + 477.9157907918d0 * t)
        neptune_a_0 = neptune_a_0 + 1.22605d-06*cos(4.20245671986d0 + 602.9880909536d0 * t)
        neptune_a_0 = neptune_a_0 + 1.23275d-06*cos(0.33210339003d0 + 524.0137066923d0 * t)
        neptune_a_0 = neptune_a_0 + 1.23554d-06*cos(3.05937709252d0 + 166.5680400911d0 * t)
        neptune_a_0 = neptune_a_0 + 1.26105d-06*cos(2.97103599301d0 + 2610.3217898352d0 * t)
        neptune_a_0 = neptune_a_0 + 1.2709d-06*cos(5.92949277615d0 + 180.7951340927d0 * t)
        neptune_a_0 = neptune_a_0 + 1.2786d-06*cos(1.24703766009d0 + 1018.2799491348d0 * t)
        neptune_a_0 = neptune_a_0 + 1.29101d-06*cos(3.98845327086d0 + 27.0873353739d0 * t)
        neptune_a_0 = neptune_a_0 + 1.29382d-06*cos(0.92803749229d0 + 326.8681209489d0 * t)
        neptune_a_0 = neptune_a_0 + 1.29605d-06*cos(1.26604186874d0 + 142.1408335931d0 * t)
        neptune_a_0 = neptune_a_0 + 1.30573d-06*cos(0.62131267019d0 + 1007.0218005498d0 * t)
        neptune_a_0 = neptune_a_0 + 1.30969d-06*cos(6.27057597935d0 + 210.3301500214d0 * t)
        neptune_a_0 = neptune_a_0 + 1.31059d-06*cos(4.01460748691d0 + 169.5369855077d0 * t)
        neptune_a_0 = neptune_a_0 + 1.32114d-06*cos(3.31938564922d0 + 0.9632078465d0 * t)
        neptune_a_0 = neptune_a_0 + 1.3459d-06*cos(2.09797478163d0 + 487.1045113319d0 * t)
        neptune_a_0 = neptune_a_0 + 1.35253d-06*cos(0.63963537076d0 + 183.7640795093d0 * t)
        neptune_a_0 = neptune_a_0 + 1.39589d-06*cos(0.37286345098d0 + 274.0660483248d0 * t)
        neptune_a_0 = neptune_a_0 + 1.42579d-06*cos(0.5686458332d0 + 986.0848043302d0 * t)
        neptune_a_0 = neptune_a_0 + 1.42806d-06*cos(5.26427658317d0 + 160.9389657986d0 * t)
        neptune_a_0 = neptune_a_0 + 1.4487d-06*cos(3.10581635503d0 + 419.7452763061d0 * t)
        neptune_a_0 = neptune_a_0 + 1.47016d-06*cos(5.56167285795d0 + 674.8007441043d0 * t)
        neptune_a_0 = neptune_a_0 + 1.48439d-06*cos(5.28599164787d0 + 380.12776796d0 * t)
        neptune_a_0 = neptune_a_0 + 1.51292d-06*cos(0.54667138787d0 + 457.617679513d0 * t)
        neptune_a_0 = neptune_a_0 + 1.52775d-06*cos(4.19004255037d0 + 494.7393231945d0 * t)
        neptune_a_0 = neptune_a_0 + 1.52994d-06*cos(2.09943894535d0 + 2.4476805548d0 * t)
        neptune_a_0 = neptune_a_0 + 1.54178d-06*cos(2.08987920271d0 + 488.3765357191d0 * t)
        neptune_a_0 = neptune_a_0 + 1.55927d-06*cos(4.61817618132d0 + 47.6942631934d0 * t)
        neptune_a_0 = neptune_a_0 + 1.59056d-06*cos(5.48887650708d0 + 513.079881013d0 * t)
        neptune_a_0 = neptune_a_0 + 1.60205d-06*cos(4.03663805377d0 + 344.9636777388d0 * t)
        neptune_a_0 = neptune_a_0 + 1.61987d-06*cos(4.15349334708d0 + 1131.4552157708d0 * t)
        neptune_a_0 = neptune_a_0 + 1.62402d-06*cos(2.30271664087d0 + 9999.986450773d0 * t)
        neptune_a_0 = neptune_a_0 + 1.62898d-06*cos(2.27608072649d0 + 532.6117264014d0 * t)
        neptune_a_0 = neptune_a_0 + 1.64588d-06*cos(2.20333017529d0 + 244.318584075d0 * t)
        neptune_a_0 = neptune_a_0 + 1.66097d-06*cos(2.73387250873d0 + 1097.514965827d0 * t)
        neptune_a_0 = neptune_a_0 + 1.66373d-06*cos(5.77931242218d0 + 1024.217839968d0 * t)
        neptune_a_0 = neptune_a_0 + 1.67296d-06*cos(5.66196697264d0 + 518.3846323998d0 * t)
        neptune_a_0 = neptune_a_0 + 1.7053d-06*cos(0.29074719238d0 + 377.4194549743d0 * t)
        neptune_a_0 = neptune_a_0 + 1.71862d-06*cos(0.87923838435d0 + 6069.7767545534d0 * t)
        neptune_a_0 = neptune_a_0 + 1.7255d-06*cos(1.62715171892d0 + 1050.9963588012d0 * t)
        neptune_a_0 = neptune_a_0 + 1.7343d-06*cos(3.45250618787d0 + 913.9633346388d0 * t)
        neptune_a_0 = neptune_a_0 + 1.73953d-06*cos(0.17477578558d0 + 438.2982824457d0 * t)
        neptune_a_0 = neptune_a_0 + 1.74266d-06*cos(1.35971917937d0 + 665.2395165487d0 * t)
        neptune_a_0 = neptune_a_0 + 1.77749d-06*cos(2.61666712656d0 + 4.192785694d0 * t)
        neptune_a_0 = neptune_a_0 + 1.78552d-06*cos(0.90695842114d0 + 441.2672278623d0 * t)
        neptune_a_0 = neptune_a_0 + 1.79334d-06*cos(4.4785700056d0 + 101.8689339412d0 * t)
        neptune_a_0 = neptune_a_0 + 1.82011d-06*cos(0.21232027951d0 + 1549.4553869377d0 * t)
        neptune_a_0 = neptune_a_0 + 1.82805d-06*cos(0.02352130835d0 + 563.3705826075d0 * t)
        neptune_a_0 = neptune_a_0 + 1.83228d-06*cos(2.33369185747d0 + 668.2084619653d0 * t)
        neptune_a_0 = neptune_a_0 + 1.84187d-06*cos(6.2700333278d0 + 990.2294059144d0 * t)
        neptune_a_0 = neptune_a_0 + 1.893d-06*cos(0.21067624981d0 + 313.6835566709d0 * t)
        neptune_a_0 = neptune_a_0 + 1.92628d-06*cos(0.75234565364d0 + 290.2195580194d0 * t)
        neptune_a_0 = neptune_a_0 + 1.94486d-06*cos(3.11732622245d0 + 976.0023119128d0 * t)
        neptune_a_0 = neptune_a_0 + 1.9823d-06*cos(1.18555298696d0 + 1552.4243323543d0 * t)
        neptune_a_0 = neptune_a_0 + 1.98505d-06*cos(3.04143754817d0 + 77.7505439839d0 * t)
        neptune_a_0 = neptune_a_0 + 2.02434d-06*cos(1.07685902317d0 + 105.4922706636d0 * t)
        neptune_a_0 = neptune_a_0 + 2.0375d-06*cos(6.15361880307d0 + 46.2097904851d0 * t)
        neptune_a_0 = neptune_a_0 + 2.0575d-06*cos(4.22261238486d0 + 496.0113475817d0 * t)
        neptune_a_0 = neptune_a_0 + 2.06856d-06*cos(2.18914669418d0 + 841.8900490572d0 * t)
        neptune_a_0 = neptune_a_0 + 2.08171d-06*cos(5.92741723546d0 + 482.9599097477d0 * t)
        neptune_a_0 = neptune_a_0 + 2.1044d-06*cos(2.51614180971d0 + 497.1870037493d0 * t)
        neptune_a_0 = neptune_a_0 + 2.22176d-06*cos(0.60002905224d0 + 485.9288551643d0 * t)
        neptune_a_0 = neptune_a_0 + 2.24486d-06*cos(3.50462209286d0 + 500.1559491659d0 * t)
        neptune_a_0 = neptune_a_0 + 2.27075d-06*cos(3.35912848858d0 + 416.7763308895d0 * t)
        neptune_a_0 = neptune_a_0 + 2.30097d-06*cos(3.1529650601d0 + 1966.2317178272d0 * t)
        neptune_a_0 = neptune_a_0 + 2.35357d-06*cos(0.70324872259d0 + 1059.3819301892d0 * t)
        neptune_a_0 = neptune_a_0 + 2.37907d-06*cos(3.73158435601d0 + 164.1203595363d0 * t)
        neptune_a_0 = neptune_a_0 + 2.38089d-06*cos(0.20667508273d0 + 608.877797677d0 * t)
        neptune_a_0 = neptune_a_0 + 2.42813d-06*cos(4.13469351435d0 + 354.5249052944d0 * t)
        neptune_a_0 = neptune_a_0 + 2.42861d-06*cos(2.76071691119d0 + 323.5054166574d0 * t)
        neptune_a_0 = neptune_a_0 + 2.44645d-06*cos(5.33089073148d0 + 248.4631856592d0 * t)
        neptune_a_0 = neptune_a_0 + 2.47277d-06*cos(6.13364648111d0 + 309.2783226558d0 * t)
        neptune_a_0 = neptune_a_0 + 2.52439d-06*cos(4.17983507894d0 + 662.531203563d0 * t)
        neptune_a_0 = neptune_a_0 + 2.56931d-06*cos(5.26263987319d0 + 457.8783119439d0 * t)
        neptune_a_0 = neptune_a_0 + 2.57102d-06*cos(0.73909513866d0 + 404.6186649328d0 * t)
        neptune_a_0 = neptune_a_0 + 2.60816d-06*cos(1.85914405052d0 + 171.2339065371d0 * t)
        neptune_a_0 = neptune_a_0 + 2.61786d-06*cos(5.80046186161d0 + 148.0787244263d0 * t)
        neptune_a_0 = neptune_a_0 + 2.64895d-06*cos(4.98877828611d0 + 179.0982130633d0 * t)
        neptune_a_0 = neptune_a_0 + 2.65961d-06*cos(5.39297565085d0 + 638.1521811748d0 * t)
        neptune_a_0 = neptune_a_0 + 2.6662d-06*cos(5.32450458686d0 + 476.4313180835d0 * t)
        neptune_a_0 = neptune_a_0 + 2.67936d-06*cos(0.58446175609d0 + 33.9402499438d0 * t)
        neptune_a_0 = neptune_a_0 + 2.693d-06*cos(3.8806162312d0 + 2042.4977891028d0 * t)
        neptune_a_0 = neptune_a_0 + 2.72524d-06*cos(0.00481625696d0 + 401.6497195162d0 * t)
        neptune_a_0 = neptune_a_0 + 2.77818d-06*cos(4.82019305351d0 + 348.8476468921d0 * t)
        neptune_a_0 = neptune_a_0 + 2.85931d-06*cos(5.08799786214d0 + 64.9597385808d0 * t)
        neptune_a_0 = neptune_a_0 + 2.87235d-06*cos(0.57557936908d0 + 253.5709950899d0 * t)
        neptune_a_0 = neptune_a_0 + 3.05238d-06*cos(5.41688233651d0 + 213.299095438d0 * t)
        neptune_a_0 = neptune_a_0 + 3.08786d-06*cos(1.20407566461d0 + 981.6313862053d0 * t)
        neptune_a_0 = neptune_a_0 + 3.15296d-06*cos(4.72030300476d0 + 1337.640764208d0 * t)
        neptune_a_0 = neptune_a_0 + 3.16687d-06*cos(4.20689845519d0 + 381.6122406683d0 * t)
        neptune_a_0 = neptune_a_0 + 3.21983d-06*cos(0.01125169422d0 + 351.8165923087d0 * t)
        neptune_a_0 = neptune_a_0 + 3.23374d-06*cos(5.28043367464d0 + 1558.0534066468d0 * t)
        neptune_a_0 = neptune_a_0 + 3.31575d-06*cos(4.45499530777d0 + 505.7850234584d0 * t)
        neptune_a_0 = neptune_a_0 + 3.31699d-06*cos(1.59205715076d0 + 189.3931538018d0 * t)
        neptune_a_0 = neptune_a_0 + 3.35138d-06*cos(0.85349681873d0 + 129.9194771616d0 * t)
        neptune_a_0 = neptune_a_0 + 3.40642d-06*cos(1.29258952284d0 + 8.0767548473d0 * t)
        neptune_a_0 = neptune_a_0 + 3.44198d-06*cos(4.72456113176d0 + 487.6257761937d0 * t)
        neptune_a_0 = neptune_a_0 + 3.44845d-06*cos(1.5574240452d0 + 495.4900827199d0 * t)
        neptune_a_0 = neptune_a_0 + 3.47172d-06*cos(0.89492337976d0 + 285.3723810196d0 * t)
        neptune_a_0 = neptune_a_0 + 3.47557d-06*cos(0.88498383382d0 + 68.8437077341d0 * t)
        neptune_a_0 = neptune_a_0 + 3.56661d-06*cos(0.48129575139d0 + 357.4456666012d0 * t)
        neptune_a_0 = neptune_a_0 + 3.63357d-06*cos(0.57100052515d0 + 367.9701020033d0 * t)
        neptune_a_0 = neptune_a_0 + 3.64753d-06*cos(0.69480459972d0 + 918.1561203328d0 * t)
        neptune_a_0 = neptune_a_0 + 3.65538d-06*cos(2.63837359702d0 + 144.1465711632d0 * t)
        neptune_a_0 = neptune_a_0 + 3.77121d-06*cos(4.01017256092d0 + 343.2185725996d0 * t)
        neptune_a_0 = neptune_a_0 + 4.01131d-06*cos(5.19408609816d0 + 78225.57638908479d0 * t)
        neptune_a_0 = neptune_a_0 + 4.12146d-06*cos(0.03859896791d0 + 460.5384408198d0 * t)
        neptune_a_0 = neptune_a_0 + 4.13023d-06*cos(2.01108121307d0 + 211.8146227297d0 * t)
        neptune_a_0 = neptune_a_0 + 4.14827d-06*cos(3.49930787842d0 + 446.3113468182d0 * t)
        neptune_a_0 = neptune_a_0 + 4.26768d-06*cos(6.11754878971d0 + 365.0011565867d0 * t)
        neptune_a_0 = neptune_a_0 + 4.30206d-06*cos(0.39752528171d0 + 216.9224321604d0 * t)
        neptune_a_0 = neptune_a_0 + 4.32974d-06*cos(1.61232001675d0 + 738.7972748386d0 * t)
        neptune_a_0 = neptune_a_0 + 4.41302d-06*cos(5.37309424926d0 + 628.5909536192d0 * t)
        neptune_a_0 = neptune_a_0 + 4.46978d-06*cos(5.1595099389d0 + 439.782755154d0 * t)
        neptune_a_0 = neptune_a_0 + 4.53009d-06*cos(1.83942993268d0 + 477.3308354552d0 * t)
        neptune_a_0 = neptune_a_0 + 4.66085d-06*cos(2.09019025925d0 + 10173.6680378649d0 * t)
        neptune_a_0 = neptune_a_0 + 4.70007d-06*cos(5.71924929267d0 + 10666.71044003d0 * t)
        neptune_a_0 = neptune_a_0 + 4.81443d-06*cos(1.5343651152d0 + 112.9146342051d0 * t)
        neptune_a_0 = neptune_a_0 + 4.93678d-06*cos(0.66677925357d0 + 6243.4583416453d0 * t)
        neptune_a_0 = neptune_a_0 + 4.96734d-06*cos(1.87743598883d0 + 1227.4344429886d0 * t)
        neptune_a_0 = neptune_a_0 + 4.97719d-06*cos(4.29581839969d0 + 6736.5007438104d0 * t)
        neptune_a_0 = neptune_a_0 + 5.007d-06*cos(0.40269025033d0 + 331.3215390738d0 * t)
        neptune_a_0 = neptune_a_0 + 5.05549d-06*cos(1.87680787833d0 + 135.5485514541d0 * t)
        neptune_a_0 = neptune_a_0 + 5.05843d-06*cos(5.22355223784d0 + 601.5036182453d0 * t)
        neptune_a_0 = neptune_a_0 + 5.06119d-06*cos(3.06479329963d0 + 10176.6369832815d0 * t)
        neptune_a_0 = neptune_a_0 + 5.11959d-06*cos(1.44175070316d0 + 5.9378908332d0 * t)
        neptune_a_0 = neptune_a_0 + 5.35992d-06*cos(1.64137823683d0 + 6246.4272870619d0 * t)
        neptune_a_0 = neptune_a_0 + 5.64091d-06*cos(2.84957825498d0 + 41.1019810544d0 * t)
        neptune_a_0 = neptune_a_0 + 5.65835d-06*cos(6.09791889217d0 + 526.722019678d0 * t)
        neptune_a_0 = neptune_a_0 + 6.03308d-06*cos(6.07231384635d0 + 875.830299001d0 * t)
        neptune_a_0 = neptune_a_0 + 6.29519d-06*cos(1.10435774696d0 + 1543.8263126452d0 * t)
        neptune_a_0 = neptune_a_0 + 6.32518d-06*cos(0.26518216303d0 + 1440.7335384266d0 * t)
        neptune_a_0 = neptune_a_0 + 6.45621d-06*cos(5.02802450222d0 + 20388.4380567842d0 * t)
        neptune_a_0 = neptune_a_0 + 6.47866d-06*cos(3.0878072046d0 + 704.8570248948d0 * t)
        neptune_a_0 = neptune_a_0 + 6.50048d-06*cos(0.21777449638d0 + 180.2738692309d0 * t)
        neptune_a_0 = neptune_a_0 + 6.54017d-06*cos(0.42236932319d0 + 697.743477894d0 * t)
        neptune_a_0 = neptune_a_0 + 6.56726d-06*cos(6.1368709313d0 + 563.6312150384d0 * t)
        neptune_a_0 = neptune_a_0 + 6.59843d-06*cos(1.21362103593d0 + 172.1971143836d0 * t)
        neptune_a_0 = neptune_a_0 + 6.64839d-06*cos(0.23409767898d0 + 294.6729761443d0 * t)
        neptune_a_0 = neptune_a_0 + 6.68508d-06*cos(5.94653947392d0 + 328.3525936572d0 * t)
        neptune_a_0 = neptune_a_0 + 6.88153d-06*cos(2.57704263577d0 + 9683.5945811164d0 * t)
        neptune_a_0 = neptune_a_0 + 7.18067d-06*cos(4.30624163021d0 + 418.2608035978d0 * t)
        neptune_a_0 = neptune_a_0 + 7.28234d-06*cos(1.1537664213d0 + 5753.3848848968d0 * t)
        neptune_a_0 = neptune_a_0 + 7.40262d-06*cos(0.48402114811d0 + 140.001969579d0 * t)
        neptune_a_0 = neptune_a_0 + 7.41139d-06*cos(4.59547754045d0 + 944.9828232758d0 * t)
        neptune_a_0 = neptune_a_0 + 7.46728d-06*cos(4.16771300479d0 + 141.2258098564d0 * t)
        neptune_a_0 = neptune_a_0 + 7.49872d-06*cos(4.99393594959d0 + 403.1341922245d0 * t)
        neptune_a_0 = neptune_a_0 + 7.58164d-06*cos(1.35502547279d0 + 1654.0326338646d0 * t)
        neptune_a_0 = neptune_a_0 + 7.6868d-06*cos(5.9427212618d0 + 815.0633461142d0 * t)
        neptune_a_0 = neptune_a_0 + 7.77378d-06*cos(2.32883194742d0 + 487.3651437628d0 * t)
        neptune_a_0 = neptune_a_0 + 7.95185d-06*cos(0.68984608321d0 + 32.1951448046d0 * t)
        neptune_a_0 = neptune_a_0 + 8.07372d-06*cos(1.2303668081d0 + 6643.0918177618d0 * t)
        neptune_a_0 = neptune_a_0 + 8.2583d-06*cos(3.76950350575d0 + 1196.4149543516d0 * t)
        neptune_a_0 = neptune_a_0 + 8.32489d-06*cos(0.06508475065d0 + 258.0244132148d0 * t)
        neptune_a_0 = neptune_a_0 + 8.55029d-06*cos(5.70422562373d0 + 178.1350052168d0 * t)
        neptune_a_0 = neptune_a_0 + 8.57971d-06*cos(5.96494969091d0 + 9.5612275556d0 * t)
        neptune_a_0 = neptune_a_0 + 8.60966d-06*cos(5.9594105974d0 + 10137.0194749354d0 * t)
        neptune_a_0 = neptune_a_0 + 8.69606d-06*cos(4.85412290482d0 + 186.2117600641d0 * t)
        neptune_a_0 = neptune_a_0 + 8.81957d-06*cos(1.90392444703d0 + 984.6003316219d0 * t)
        neptune_a_0 = neptune_a_0 + 9.10025d-06*cos(5.2936498138d0 + 386.9806825299d0 * t)
        neptune_a_0 = neptune_a_0 + 9.11666d-06*cos(6.00925906177d0 + 184.7272873558d0 * t)
        neptune_a_0 = neptune_a_0 + 9.12335d-06*cos(2.65256522625d0 + 880.023084695d0 * t)
        neptune_a_0 = neptune_a_0 + 9.13955d-06*cos(4.53600150959d0 + 6206.8097787158d0 * t)
        neptune_a_0 = neptune_a_0 + 9.40457d-06*cos(6.17877613702d0 + 221.3758502853d0 * t)
        neptune_a_0 = neptune_a_0 + 9.45983d-06*cos(5.38846139088d0 + 76.2660712756d0 * t)
        neptune_a_0 = neptune_a_0 + 9.81257d-06*cos(6.26977794283d0 + 389.9496279465d0 * t)
        neptune_a_0 = neptune_a_0 + 9.99659d-06*cos(0.03645684043d0 + 143.6253063014d0 * t)
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

        neptune_a_1 = neptune_a_1 + 1.00038d-06*cos(6.079704301d0 + 918.1561203328d0 * t)
        neptune_a_1 = neptune_a_1 + 1.00497d-06*cos(3.89387482193d0 + 488.3765357191d0 * t)
        neptune_a_1 = neptune_a_1 + 1.02082d-06*cos(3.60130877226d0 + 9.5612275556d0 * t)
        neptune_a_1 = neptune_a_1 + 1.03442d-06*cos(0.68917966219d0 + 12528.018664345d0 * t)
        neptune_a_1 = neptune_a_1 + 1.05891d-06*cos(0.41787379292d0 + 145.1097790097d0 * t)
        neptune_a_1 = neptune_a_1 + 1.0741d-06*cos(0.53871639245d0 + 880.023084695d0 * t)
        neptune_a_1 = neptune_a_1 + 1.10696d-06*cos(3.67947283428d0 + 494.5268748734d0 * t)
        neptune_a_1 = neptune_a_1 + 1.14149d-06*cos(0.67948931014d0 + 160.9389657986d0 * t)
        neptune_a_1 = neptune_a_1 + 1.15556d-06*cos(1.9230631754d0 + 72.0732855816d0 * t)
        neptune_a_1 = neptune_a_1 + 1.21936d-06*cos(5.47800509384d0 + 1019.7644218431d0 * t)
        neptune_a_1 = neptune_a_1 + 1.25868d-06*cos(4.00223269858d0 + 487.3651437628d0 * t)
        neptune_a_1 = neptune_a_1 + 1.27664d-06*cos(1.18139890889d0 + 144.1465711632d0 * t)
        neptune_a_1 = neptune_a_1 + 1.31861d-06*cos(4.18181390571d0 + 389.9496279465d0 * t)
        neptune_a_1 = neptune_a_1 + 1.36735d-06*cos(2.17223841524d0 + 39.6175083461d0 * t)
        neptune_a_1 = neptune_a_1 + 1.40621d-06*cos(2.60635237083d0 + 129.9194771616d0 * t)
        neptune_a_1 = neptune_a_1 + 1.4144d-06*cos(5.0828467188d0 + 357.4456666012d0 * t)
        neptune_a_1 = neptune_a_1 + 1.47761d-06*cos(4.63103554025d0 + 608.877797677d0 * t)
        neptune_a_1 = neptune_a_1 + 1.50631d-06*cos(5.64615580088d0 + 343.2185725996d0 * t)
        neptune_a_1 = neptune_a_1 + 1.51695d-06*cos(2.61642906305d0 + 103.0927742186d0 * t)
        neptune_a_1 = neptune_a_1 + 1.52147d-06*cos(3.74109518833d0 + 1558.0534066468d0 * t)
        neptune_a_1 = neptune_a_1 + 1.54398d-06*cos(2.83686655761d0 + 1543.8263126452d0 * t)
        neptune_a_1 = neptune_a_1 + 1.61653d-06*cos(4.65763781023d0 + 460.5384408198d0 * t)
        neptune_a_1 = neptune_a_1 + 1.66346d-06*cos(3.14159265359d0 + 0.0d0 * t)
        neptune_a_1 = neptune_a_1 + 1.67345d-06*cos(5.17781032601d0 + 446.3113468182d0 * t)
        neptune_a_1 = neptune_a_1 + 1.75594d-06*cos(2.11676076127d0 + 697.743477894d0 * t)
        neptune_a_1 = neptune_a_1 + 1.76646d-06*cos(0.14198394688d0 + 98.8999885246d0 * t)
        neptune_a_1 = neptune_a_1 + 1.77472d-06*cos(0.25433326283d0 + 108.4612160802d0 * t)
        neptune_a_1 = neptune_a_1 + 1.84545d-06*cos(3.88850465661d0 + 251.4321310758d0 * t)
        neptune_a_1 = neptune_a_1 + 1.84801d-06*cos(2.76750555856d0 + 1512.8068240082d0 * t)
        neptune_a_1 = neptune_a_1 + 1.99899d-06*cos(1.18526424057d0 + 33.6796175129d0 * t)
        neptune_a_1 = neptune_a_1 + 2.13599d-06*cos(4.62332999384d0 + 76.2660712756d0 * t)
        neptune_a_1 = neptune_a_1 + 2.20829d-06*cos(6.0371354985d0 + 1022.7333672597d0 * t)
        neptune_a_1 = neptune_a_1 + 2.22937d-06*cos(0.7849231466d0 + 350.3321196004d0 * t)
        neptune_a_1 = neptune_a_1 + 2.57647d-06*cos(3.83888852427d0 + 815.0633461142d0 * t)
        neptune_a_1 = neptune_a_1 + 2.60289d-06*cos(5.82991166029d0 + 529.6909650946d0 * t)
        neptune_a_1 = neptune_a_1 + 2.64861d-06*cos(6.17423342427d0 + 189.3931538018d0 * t)
        neptune_a_1 = neptune_a_1 + 2.65196d-06*cos(2.75435582705d0 + 505.7850234584d0 * t)
        neptune_a_1 = neptune_a_1 + 2.67548d-06*cos(0.8902919867d0 + 4.4534181249d0 * t)
        neptune_a_1 = neptune_a_1 + 2.68869d-06*cos(4.9925240882d0 + 31.019488637d0 * t)
        neptune_a_1 = neptune_a_1 + 2.87777d-06*cos(1.67832505335d0 + 173.6815870919d0 * t)
        neptune_a_1 = neptune_a_1 + 3.07236d-06*cos(5.14786353357d0 + 176.6505325085d0 * t)
        neptune_a_1 = neptune_a_1 + 3.17185d-06*cos(0.09357151034d0 + 71.8126531507d0 * t)
        neptune_a_1 = neptune_a_1 + 3.20033d-06*cos(1.25283420309d0 + 567.8240007324d0 * t)
        neptune_a_1 = neptune_a_1 + 3.24017d-06*cos(1.77828530103d0 + 2080.6308247406d0 * t)
        neptune_a_1 = neptune_a_1 + 3.3557d-06*cos(3.05500932598d0 + 983.1158589136d0 * t)
        neptune_a_1 = neptune_a_1 + 3.59992d-06*cos(0.67492027158d0 + 111.4301614968d0 * t)
        neptune_a_1 = neptune_a_1 + 3.61811d-06*cos(3.53860090727d0 + 477.3308354552d0 * t)
        neptune_a_1 = neptune_a_1 + 3.98307d-06*cos(4.69013695451d0 + 278.2588340188d0 * t)
        neptune_a_1 = neptune_a_1 + 4.03268d-06*cos(0.84628125362d0 + 911.042573332d0 * t)
        neptune_a_1 = neptune_a_1 + 4.0365d-06*cos(2.16258367325d0 + 312.1990839626d0 * t)
        neptune_a_1 = neptune_a_1 + 4.17503d-06*cos(0.89506835576d0 + 594.6507036754d0 * t)
        neptune_a_1 = neptune_a_1 + 6.83569d-06*cos(2.00176772754d0 + 175.1660598002d0 * t)
        neptune_a_1 = neptune_a_1 + 8.15587d-06*cos(6.23155169879d0 + 35.1640902212d0 * t)
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

        neptune_a_2 = neptune_a_2 + 1.07506d-06*cos(4.46964965035d0 + 189.3931538018d0 * t)
        neptune_a_2 = neptune_a_2 + 1.07793d-06*cos(1.05102611713d0 + 505.7850234584d0 * t)
        neptune_a_2 = neptune_a_2 + 1.4695d-06*cos(5.24115668211d0 + 477.3308354552d0 * t)
        neptune_a_2 = neptune_a_2 + 1.74888d-06*cos(3.02226484065d0 + 38.1330356378d0 * t)
        neptune_a_2 = neptune_a_2 + 2.24184d-06*cos(0.33549773875d0 + 1.4844727083d0 * t)
        neptune_a_2 = neptune_a_2 + 3.06996d-06*cos(1.3208830754d0 + 381.3516082374d0 * t)
        neptune_a_2 = neptune_a_2 + 3.1317d-06*cos(4.60243586002d0 + 1014.1353475506d0 * t)
        neptune_a_2 = neptune_a_2 + 3.30199d-06*cos(0.2726009191d0 + 1550.939859646d0 * t)
        neptune_a_2 = neptune_a_2 + 3.33162d-06*cos(2.54469197689d0 + 601.7642506762d0 * t)
        neptune_a_2 = neptune_a_2 + 3.53736d-06*cos(3.65828485888d0 + 395.578702239d0 * t)
        neptune_a_2 = neptune_a_2 + 3.95202d-06*cos(1.70372150175d0 + 1028.3624415522d0 * t)
        neptune_a_2 = neptune_a_2 + 1.31513d-05*cos(3.42363937604d0 + 175.1660598002d0 * t)
        neptune_a_2 = neptune_a_2 + 1.59701d-05*cos(3.46010091566d0 + 388.4651552382d0 * t)
        neptune_a_2 = neptune_a_2 + 2.066951d-05*cos(2.23303786678d0 + 168.0525127994d0 * t)
        neptune_a_2 = neptune_a_2 + 2.115677d-05*cos(4.59469314887d0 + 182.279606801d0 * t)
        neptune_a_2 = neptune_a_2 + 2.216295d-05*cos(0.00738785922d0 + 491.5579294568d0 * t)
        neptune_a_2 = neptune_a_2 + 2.282135d-05*cos(6.09486118766d0 + 1021.2488945514d0 * t)
        neptune_a_2 = neptune_a_2 + 3.493966d-05*cos(5.10707633632d0 + 484.444382456d0 * t)
        neptune_a_2 = neptune_a_2 + 3.503585d-05*cos(1.18344352637d0 + 498.6714764576d0 * t)
        neptune_a_2=neptune_a_2*t*t;

        neptune_a_3 = neptune_a_3 + 2.84016d-06*cos(3.94768246133d0 + 168.0525127994d0 * t)
        neptune_a_3 = neptune_a_3 + 2.92132d-06*cos(2.86304883634d0 + 182.279606801d0 * t)
        neptune_a_3 = neptune_a_3 + 4.81382d-06*cos(0.54978896704d0 + 484.444382456d0 * t)
        neptune_a_3 = neptune_a_3 + 4.81827d-06*cos(5.74642070789d0 + 498.6714764576d0 * t)
        neptune_a_3=neptune_a_3*t*t*t;

        r = neptune_a_3+neptune_a_2+neptune_a_1+neptune_a_0
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

        neptune_h_0 = neptune_h_0 + 1.0399d-06*cos(1.19095049474d0 + 490.0734567485d0 * t)
        neptune_h_0 = neptune_h_0 + 1.06911d-06*cos(0.75086689186d0 + 255.0554677982d0 * t)
        neptune_h_0 = neptune_h_0 + 1.08293d-06*cos(6.19440584045d0 + 5.9378908332d0 * t)
        neptune_h_0 = neptune_h_0 + 1.08645d-06*cos(1.32065602241d0 + 41.1019810544d0 * t)
        neptune_h_0 = neptune_h_0 + 1.08796d-06*cos(0.49748679001d0 + 251.4321310758d0 * t)
        neptune_h_0 = neptune_h_0 + 1.22439d-06*cos(1.27579676612d0 + 184.7272873558d0 * t)
        neptune_h_0 = neptune_h_0 + 1.31093d-06*cos(0.87442856216d0 + 704.8570248948d0 * t)
        neptune_h_0 = neptune_h_0 + 1.31468d-06*cos(0.92831938317d0 + 111.4301614968d0 * t)
        neptune_h_0 = neptune_h_0 + 1.34757d-06*cos(1.51705211501d0 + 143.6253063014d0 * t)
        neptune_h_0 = neptune_h_0 + 1.35128d-06*cos(4.59724160238d0 + 1052.2683831884d0 * t)
        neptune_h_0 = neptune_h_0 + 1.53352d-06*cos(2.20959767327d0 + 32.1951448046d0 * t)
        neptune_h_0 = neptune_h_0 + 1.54048d-06*cos(4.08818324727d0 + 416.7763308895d0 * t)
        neptune_h_0 = neptune_h_0 + 1.66173d-06*cos(4.72875912249d0 + 1162.4747044078d0 * t)
        neptune_h_0 = neptune_h_0 + 1.73527d-06*cos(1.44399039729d0 + 419.4846438752d0 * t)
        neptune_h_0 = neptune_h_0 + 1.8481d-06*cos(1.10672766243d0 + 148.0787244263d0 * t)
        neptune_h_0 = neptune_h_0 + 1.87776d-06*cos(0.58419161912d0 + 218.4069048687d0 * t)
        neptune_h_0 = neptune_h_0 + 2.13399d-06*cos(2.8278561066d0 + 26087.9031415742d0 * t)
        neptune_h_0 = neptune_h_0 + 2.14398d-06*cos(4.63395532354d0 + 3340.6124266998d0 * t)
        neptune_h_0 = neptune_h_0 + 2.33239d-06*cos(4.93511003097d0 + 487.3651437628d0 * t)
        neptune_h_0 = neptune_h_0 + 2.35513d-06*cos(1.34170749817d0 + 106.9767433719d0 * t)
        neptune_h_0 = neptune_h_0 + 2.38591d-06*cos(1.37579919224d0 + 129.9194771616d0 * t)
        neptune_h_0 = neptune_h_0 + 2.40945d-06*cos(5.27768933433d0 + 73.297125859d0 * t)
        neptune_h_0 = neptune_h_0 + 2.42283d-06*cos(2.35055808534d0 + 944.9828232758d0 * t)
        neptune_h_0 = neptune_h_0 + 2.42741d-06*cos(4.26546882507d0 + 144.1465711632d0 * t)
        neptune_h_0 = neptune_h_0 + 2.58898d-06*cos(4.06536282576d0 + 639.897286314d0 * t)
        neptune_h_0 = neptune_h_0 + 2.64385d-06*cos(3.97379524932d0 + 76.2660712756d0 * t)
        neptune_h_0 = neptune_h_0 + 3.03892d-06*cos(0.42047476058d0 + 1021.2488945514d0 * t)
        neptune_h_0 = neptune_h_0 + 3.24234d-06*cos(4.82345154827d0 + 1512.8068240082d0 * t)
        neptune_h_0 = neptune_h_0 + 3.35484d-06*cos(0.41690443117d0 + 181.7583419392d0 * t)
        neptune_h_0 = neptune_h_0 + 3.46792d-06*cos(2.3308012168d0 + 135.5485514541d0 * t)
        neptune_h_0 = neptune_h_0 + 3.48485d-06*cos(3.3114165049d0 + 138.5174968707d0 * t)
        neptune_h_0 = neptune_h_0 + 3.7108d-06*cos(0.08961292855d0 + 149.5631971346d0 * t)
        neptune_h_0 = neptune_h_0 + 3.7536d-06*cos(4.24275714635d0 + 446.3113468182d0 * t)
        neptune_h_0 = neptune_h_0 + 3.76081d-06*cos(0.84831074407d0 + 460.5384408198d0 * t)
        neptune_h_0 = neptune_h_0 + 3.83923d-06*cos(6.20974113657d0 + 175.1660598002d0 * t)
        neptune_h_0 = neptune_h_0 + 3.84645d-06*cos(2.43949844267d0 + 39.6175083461d0 * t)
        neptune_h_0 = neptune_h_0 + 4.52312d-06*cos(1.16448447388d0 + 70.3281804424d0 * t)
        neptune_h_0 = neptune_h_0 + 4.74128d-06*cos(0.34855513953d0 + 567.8240007324d0 * t)
        neptune_h_0 = neptune_h_0 + 5.26333d-06*cos(2.5830316975d0 + 206.1855484372d0 * t)
        neptune_h_0 = neptune_h_0 + 5.45182d-06*cos(5.46340826795d0 + 220.4126424388d0 * t)
        neptune_h_0 = neptune_h_0 + 6.15669d-06*cos(0.24898945904d0 + 145.1097790097d0 * t)
        neptune_h_0 = neptune_h_0 + 7.94805d-06*cos(0.40708634533d0 + 10137.0194749354d0 * t)
        neptune_h_0 = neptune_h_0 + 8.437d-06*cos(5.26684478638d0 + 6206.8097787158d0 * t)
        neptune_h_0 = neptune_h_0 + 9.08785d-06*cos(6.01154769277d0 + 1589.0728952838d0 * t)
        neptune_h_0 = neptune_h_0 + 9.52177d-06*cos(0.31466705943d0 + 98.8999885246d0 * t)
        neptune_h_0 = neptune_h_0 + 9.53017d-06*cos(3.11138328206d0 + 312.1990839626d0 * t)
        neptune_h_0 = neptune_h_0 + 9.82936d-06*cos(5.43990618523d0 + 522.5774180938d0 * t)
        neptune_h_0 = neptune_h_0 + 9.88496d-06*cos(2.04702362367d0 + 536.8045120954d0 * t)
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

        neptune_h_1 = neptune_h_1 + 1.4975d-06*cos(5.94308562818d0 + 446.3113468182d0 * t)
        neptune_h_1 = neptune_h_1 + 1.50091d-06*cos(5.42966650247d0 + 460.5384408198d0 * t)
        neptune_h_1 = neptune_h_1 + 1.96946d-06*cos(1.49178587738d0 + 350.3321196004d0 * t)
        neptune_h_1 = neptune_h_1 + 2.10642d-06*cos(4.27681053698d0 + 206.1855484372d0 * t)
        neptune_h_1 = neptune_h_1 + 2.17492d-06*cos(3.76228773204d0 + 220.4126424388d0 * t)
        neptune_h_1 = neptune_h_1 + 2.5197d-06*cos(0.65246376169d0 + 2.9689454166d0 * t)
        neptune_h_1 = neptune_h_1 + 3.00443d-06*cos(3.61960344067d0 + 983.1158589136d0 * t)
        neptune_h_1 = neptune_h_1 + 3.92361d-06*cos(0.8578352608d0 + 522.5774180938d0 * t)
        neptune_h_1 = neptune_h_1 + 3.9468d-06*cos(0.3452671265d0 + 536.8045120954d0 * t)
        neptune_h_1 = neptune_h_1 + 5.01326d-06*cos(2.69965727448d0 + 426.598190876d0 * t)
        neptune_h_1 = neptune_h_1 + 8.41054d-06*cos(4.81874683539d0 + 1059.3819301892d0 * t)
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

        neptune_k_0 = neptune_k_0 + 1.08038d-06*cos(5.93873375153d0 + 490.0734567485d0 * t)
        neptune_k_0 = neptune_k_0 + 1.08649d-06*cos(2.06848985752d0 + 251.4321310758d0 * t)
        neptune_k_0 = neptune_k_0 + 1.09024d-06*cos(1.48219487687d0 + 5.9378908332d0 * t)
        neptune_k_0 = neptune_k_0 + 1.09028d-06*cos(2.89202566129d0 + 41.1019810544d0 * t)
        neptune_k_0 = neptune_k_0 + 1.11868d-06*cos(5.47173465333d0 + 255.0554677982d0 * t)
        neptune_k_0 = neptune_k_0 + 1.25742d-06*cos(2.85170043263d0 + 184.7272873558d0 * t)
        neptune_k_0 = neptune_k_0 + 1.30964d-06*cos(2.44532894816d0 + 704.8570248948d0 * t)
        neptune_k_0 = neptune_k_0 + 1.34364d-06*cos(1.33197249598d0 + 563.6312150384d0 * t)
        neptune_k_0 = neptune_k_0 + 1.35092d-06*cos(6.17229000846d0 + 1052.2683831884d0 * t)
        neptune_k_0 = neptune_k_0 + 1.36714d-06*cos(2.52646680194d0 + 111.4301614968d0 * t)
        neptune_k_0 = neptune_k_0 + 1.36778d-06*cos(6.23062253681d0 + 143.6253063014d0 * t)
        neptune_k_0 = neptune_k_0 + 1.53995d-06*cos(2.51751112624d0 + 416.7763308895d0 * t)
        neptune_k_0 = neptune_k_0 + 1.54378d-06*cos(0.63866100808d0 + 32.1951448046d0 * t)
        neptune_k_0 = neptune_k_0 + 1.65979d-06*cos(0.016778297d0 + 1162.4747044078d0 * t)
        neptune_k_0 = neptune_k_0 + 1.70156d-06*cos(2.67820084798d0 + 148.0787244263d0 * t)
        neptune_k_0 = neptune_k_0 + 1.74452d-06*cos(2.96585748486d0 + 419.4846438752d0 * t)
        neptune_k_0 = neptune_k_0 + 1.94904d-06*cos(5.30288815831d0 + 218.4069048687d0 * t)
        neptune_k_0 = neptune_k_0 + 2.13898d-06*cos(6.20318776976d0 + 3340.6124266998d0 * t)
        neptune_k_0 = neptune_k_0 + 2.14919d-06*cos(4.41023966308d0 + 26087.9031415742d0 * t)
        neptune_k_0 = neptune_k_0 + 2.32779d-06*cos(3.36234424925d0 + 487.3651437628d0 * t)
        neptune_k_0 = neptune_k_0 + 2.38426d-06*cos(6.05479403423d0 + 106.9767433719d0 * t)
        neptune_k_0 = neptune_k_0 + 2.38621d-06*cos(6.08832499356d0 + 129.9194771616d0 * t)
        neptune_k_0 = neptune_k_0 + 2.42345d-06*cos(0.7794118406d0 + 944.9828232758d0 * t)
        neptune_k_0 = neptune_k_0 + 2.42492d-06*cos(2.69321998273d0 + 144.1465711632d0 * t)
        neptune_k_0 = neptune_k_0 + 2.42975d-06*cos(2.51882264199d0 + 1021.2488945514d0 * t)
        neptune_k_0 = neptune_k_0 + 2.59102d-06*cos(5.63615328875d0 + 639.897286314d0 * t)
        neptune_k_0 = neptune_k_0 + 2.63496d-06*cos(5.55217279179d0 + 76.2660712756d0 * t)
        neptune_k_0 = neptune_k_0 + 2.70339d-06*cos(0.24726233654d0 + 36.6485629295d0 * t)
        neptune_k_0 = neptune_k_0 + 3.10765d-06*cos(3.22982581917d0 + 1512.8068240082d0 * t)
        neptune_k_0 = neptune_k_0 + 3.45686d-06*cos(5.13375623321d0 + 181.7583419392d0 * t)
        neptune_k_0 = neptune_k_0 + 3.46758d-06*cos(1.72480978391d0 + 138.5174968707d0 * t)
        neptune_k_0 = neptune_k_0 + 3.468d-06*cos(0.76051783826d0 + 135.5485514541d0 * t)
        neptune_k_0 = neptune_k_0 + 3.70712d-06*cos(1.66021308301d0 + 149.5631971346d0 * t)
        neptune_k_0 = neptune_k_0 + 3.75358d-06*cos(2.67200240529d0 + 446.3113468182d0 * t)
        neptune_k_0 = neptune_k_0 + 3.75721d-06*cos(5.56043671835d0 + 460.5384408198d0 * t)
        neptune_k_0 = neptune_k_0 + 3.84729d-06*cos(4.01175980888d0 + 39.6175083461d0 * t)
        neptune_k_0 = neptune_k_0 + 4.45172d-06*cos(3.84117491071d0 + 175.1660598002d0 * t)
        neptune_k_0 = neptune_k_0 + 4.46691d-06*cos(3.56280568152d0 + 73.297125859d0 * t)
        neptune_k_0 = neptune_k_0 + 4.56597d-06*cos(5.87714989207d0 + 70.3281804424d0 * t)
        neptune_k_0 = neptune_k_0 + 4.74308d-06*cos(1.91874059299d0 + 567.8240007324d0 * t)
        neptune_k_0 = neptune_k_0 + 5.32123d-06*cos(4.13781184234d0 + 206.1855484372d0 * t)
        neptune_k_0 = neptune_k_0 + 5.45681d-06*cos(0.75099336957d0 + 220.4126424388d0 * t)
        neptune_k_0 = neptune_k_0 + 6.30447d-06*cos(4.96435878261d0 + 145.1097790097d0 * t)
        neptune_k_0 = neptune_k_0 + 7.94801d-06*cos(5.11951545305d0 + 10137.0194749354d0 * t)
        neptune_k_0 = neptune_k_0 + 8.43696d-06*cos(3.69608860596d0 + 6206.8097787158d0 * t)
        neptune_k_0 = neptune_k_0 + 9.08425d-06*cos(1.29928889271d0 + 1589.0728952838d0 * t)
        neptune_k_0 = neptune_k_0 + 9.51697d-06*cos(1.53945273121d0 + 312.1990839626d0 * t)
        neptune_k_0 = neptune_k_0 + 9.51996d-06*cos(5.02670041286d0 + 98.8999885246d0 * t)
        neptune_k_0 = neptune_k_0 + 9.84326d-06*cos(0.73125189309d0 + 522.5774180938d0 * t)
        neptune_k_0 = neptune_k_0 + 9.87847d-06*cos(3.61810630627d0 + 536.8045120954d0 * t)
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

        neptune_k_1 = neptune_k_1 + 1.49748d-06*cos(4.37232991938d0 + 446.3113468182d0 * t)
        neptune_k_1 = neptune_k_1 + 1.50069d-06*cos(3.85872341355d0 + 460.5384408198d0 * t)
        neptune_k_1 = neptune_k_1 + 1.98118d-06*cos(6.22192358725d0 + 350.3321196004d0 * t)
        neptune_k_1 = neptune_k_1 + 2.11749d-06*cos(5.84289776345d0 + 206.1855484372d0 * t)
        neptune_k_1 = neptune_k_1 + 2.17758d-06*cos(5.33283958354d0 + 220.4126424388d0 * t)
        neptune_k_1 = neptune_k_1 + 2.55318d-06*cos(2.22153537051d0 + 2.9689454166d0 * t)
        neptune_k_1 = neptune_k_1 + 3.00277d-06*cos(2.04961337024d0 + 983.1158589136d0 * t)
        neptune_k_1 = neptune_k_1 + 3.927d-06*cos(2.43038507677d0 + 522.5774180938d0 * t)
        neptune_k_1 = neptune_k_1 + 3.94374d-06*cos(1.91632741844d0 + 536.8045120954d0 * t)
        neptune_k_1 = neptune_k_1 + 5.01998d-06*cos(4.27012433297d0 + 426.598190876d0 * t)
        neptune_k_1 = neptune_k_1 + 8.40279d-06*cos(0.10697001844d0 + 1059.3819301892d0 * t)
        neptune_k_1 = neptune_k_1 + 8.71304d-06*cos(0.0d0 + 0.0d0 * t)
        neptune_k_1=neptune_k_1*t;

        neptune_k_2 = neptune_k_2 + 1.19902d-06*cos(3.14159265359d0 + 0.0d0 * t)
        neptune_k_2=neptune_k_2*t*t;

        r = neptune_k_2+neptune_k_1+neptune_k_0
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

        neptune_l_0 = neptune_l_0 + 1.00836d-06*cos(3.85753726251d0 + 494.5268748734d0 * t)
        neptune_l_0 = neptune_l_0 + 1.01656d-06*cos(5.70539236969d0 + 0.1118745846d0 * t)
        neptune_l_0 = neptune_l_0 + 1.03138d-06*cos(0.04078966926d0 + 0.2606324309d0 * t)
        neptune_l_0 = neptune_l_0 + 1.0541d-06*cos(6.20477534696d0 + 454.9093665273d0 * t)
        neptune_l_0 = neptune_l_0 + 1.09458d-06*cos(4.57603292936d0 + 1019.7644218431d0 * t)
        neptune_l_0 = neptune_l_0 + 1.11942d-06*cos(2.06394226253d0 + 278.2588340188d0 * t)
        neptune_l_0 = neptune_l_0 + 1.1257d-06*cos(5.54818123179d0 + 1022.7333672597d0 * t)
        neptune_l_0 = neptune_l_0 + 1.17541d-06*cos(3.6770974196d0 + 2.4476805548d0 * t)
        neptune_l_0 = neptune_l_0 + 1.22359d-06*cos(4.98582281279d0 + 666.723989257d0 * t)
        neptune_l_0 = neptune_l_0 + 1.23075d-06*cos(4.96663235399d0 + 594.6507036754d0 * t)
        neptune_l_0 = neptune_l_0 + 1.23249d-06*cos(0.70624531088d0 + 218.4069048687d0 * t)
        neptune_l_0 = neptune_l_0 + 1.27129d-06*cos(3.36418732721d0 + 1028.3624415522d0 * t)
        neptune_l_0 = neptune_l_0 + 1.31792d-06*cos(1.94825130065d0 + 312.1990839626d0 * t)
        neptune_l_0 = neptune_l_0 + 1.4466d-06*cos(2.9992807548d0 + 5.9378908332d0 * t)
        neptune_l_0 = neptune_l_0 + 1.63184d-06*cos(3.77223257169d0 + 567.8240007324d0 * t)
        neptune_l_0 = neptune_l_0 + 1.65958d-06*cos(6.06694830536d0 + 293.188503436d0 * t)
        neptune_l_0 = neptune_l_0 + 1.76731d-06*cos(5.57073211436d0 + 1014.1353475506d0 * t)
        neptune_l_0 = neptune_l_0 + 1.84388d-06*cos(1.21413001072d0 + 70.3281804424d0 * t)
        neptune_l_0 = neptune_l_0 + 1.85877d-06*cos(1.09738653662d0 + 111.4301614968d0 * t)
        neptune_l_0 = neptune_l_0 + 2.06617d-06*cos(0.53121905092d0 + 181.7583419392d0 * t)
        neptune_l_0 = neptune_l_0 + 2.17576d-06*cos(5.70018627129d0 + 1124.34166877d0 * t)
        neptune_l_0 = neptune_l_0 + 2.20746d-06*cos(2.39026466908d0 + 381.3516082374d0 * t)
        neptune_l_0 = neptune_l_0 + 2.24793d-06*cos(1.68024552501d0 + 1059.3819301892d0 * t)
        neptune_l_0 = neptune_l_0 + 2.25811d-06*cos(1.24586408099d0 + 9.5612275556d0 * t)
        neptune_l_0 = neptune_l_0 + 2.66012d-06*cos(4.88935186668d0 + 0.9632078465d0 * t)
        neptune_l_0 = neptune_l_0 + 2.83649d-06*cos(5.60434758859d0 + 3302.479391062d0 * t)
        neptune_l_0 = neptune_l_0 + 2.85067d-06*cos(3.80449917678d0 + 26049.7701059364d0 * t)
        neptune_l_0 = neptune_l_0 + 2.87153d-06*cos(4.50521630689d0 + 0.0481841098d0 * t)
        neptune_l_0 = neptune_l_0 + 2.92925d-06*cos(5.89902116855d0 + 256.5399405065d0 * t)
        neptune_l_0 = neptune_l_0 + 3.0574d-06*cos(0.49649350638d0 + 0.5212648618d0 * t)
        neptune_l_0 = neptune_l_0 + 3.13198d-06*cos(1.6944004851d0 + 983.1158589136d0 * t)
        neptune_l_0 = neptune_l_0 + 3.13392d-06*cos(3.31656052921d0 + 528.2064923863d0 * t)
        neptune_l_0 = neptune_l_0 + 3.34418d-06*cos(5.03634606112d0 + 601.7642506762d0 * t)
        neptune_l_0 = neptune_l_0 + 3.58344d-06*cos(0.3549382932d0 + 145.1097790097d0 * t)
        neptune_l_0 = neptune_l_0 + 3.77589d-06*cos(3.96356113868d0 + 525.4981794006d0 * t)
        neptune_l_0 = neptune_l_0 + 4.66503d-06*cos(4.50296975777d0 + 173.6815870919d0 * t)
        neptune_l_0 = neptune_l_0 + 4.80604d-06*cos(5.47353418223d0 + 176.6505325085d0 * t)
        neptune_l_0 = neptune_l_0 + 5.26118d-06*cos(5.73066785088d0 + 219.891377577d0 * t)
        neptune_l_0 = neptune_l_0 + 5.35369d-06*cos(4.10701973604d0 + 74.7815985673d0 * t)
        neptune_l_0 = neptune_l_0 + 6.14232d-06*cos(1.02924666468d0 + 33.6796175129d0 * t)
        neptune_l_0 = neptune_l_0 + 6.44789d-06*cos(3.54621589393d0 + 168.0525127994d0 * t)
        neptune_l_0 = neptune_l_0 + 6.61951d-06*cos(0.17699064797d0 + 108.4612160802d0 * t)
        neptune_l_0 = neptune_l_0 + 6.67293d-06*cos(0.15127645197d0 + 182.279606801d0 * t)
        neptune_l_0 = neptune_l_0 + 6.86108d-06*cos(6.27018565562d0 + 137.0330241624d0 * t)
        neptune_l_0 = neptune_l_0 + 9.69654d-06*cos(5.56192959645d0 + 183.2428146475d0 * t)
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

        neptune_l_1 = neptune_l_1 + 1.03969d-06*cos(2.45040675698d0 + 4.4534181249d0 * t)
        neptune_l_1 = neptune_l_1 + 1.20731d-06*cos(6.14083013561d0 + 1550.939859646d0 * t)
        neptune_l_1 = neptune_l_1 + 2.57327d-06*cos(5.24571699287d0 + 168.0525127994d0 * t)
        neptune_l_1 = neptune_l_1 + 2.66258d-06*cos(4.73327854591d0 + 182.279606801d0 * t)
        neptune_l_1 = neptune_l_1 + 5.0389d-06*cos(1.82995609551d0 + 484.444382456d0 * t)
        neptune_l_1 = neptune_l_1 + 5.0691d-06*cos(1.31664791311d0 + 498.6714764576d0 * t)
        neptune_l_1 = neptune_l_1 + 6.37328d-06*cos(3.67072672295d0 + 388.4651552382d0 * t)
        neptune_l_1 = neptune_l_1 + 1.099574d-05*cos(5.79033065445d0 + 1021.2488945514d0 * t)
        neptune_l_1 = neptune_l_1 + 1.295022d-05*cos(3.67289349677d0 + 2.9689454166d0 * t)
        neptune_l_1 = neptune_l_1 + 0.00016569412d0*cos(4.86311838543d0 + 1.4844727083d0 * t)
        neptune_l_1 = neptune_l_1 + 38.1330356378d0*cos(0.0d0 + 0.0d0 * t)
        neptune_l_1=neptune_l_1*t;

        neptune_l_2 = neptune_l_2 + 1.02311d-06*cos(0.0d0 + 0.0d0 * t)
        neptune_l_2 = neptune_l_2 + 1.03983d-06*cos(3.53641834575d0 + 484.444382456d0 * t)
        neptune_l_2 = neptune_l_2 + 1.04572d-06*cos(5.89577229482d0 + 498.6714764576d0 * t)
        neptune_l_2 = neptune_l_2 + 2.94794d-06*cos(1.8551507726d0 + 1.4844727083d0 * t)
        neptune_l_2=neptune_l_2*t*t;

        r = neptune_l_2+neptune_l_1+neptune_l_0
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

        neptune_p_0 = neptune_p_0 + 1.7548d-06*cos(3.23035627018d0 + 251.4321310758d0 * t)
        neptune_p_0 = neptune_p_0 + 2.5361d-06*cos(2.0283580392d0 + 175.1660598002d0 * t)
        neptune_p_0 = neptune_p_0 + 2.94882d-06*cos(3.27496879592d0 + 1.4844727083d0 * t)
        neptune_p_0 = neptune_p_0 + 3.1911d-06*cos(6.00408838275d0 + 2.9689454166d0 * t)
        neptune_p_0 = neptune_p_0 + 8.74092d-06*cos(4.381577817d0 + 567.8240007324d0 * t)
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

        neptune_q_0 = neptune_q_0 + 1.75493d-06*cos(4.80086495269d0 + 251.4321310758d0 * t)
        neptune_q_0 = neptune_q_0 + 2.2838d-06*cos(3.27621706401d0 + 1.4844727083d0 * t)
        neptune_q_0 = neptune_q_0 + 2.50106d-06*cos(0.46351726343d0 + 175.1660598002d0 * t)
        neptune_q_0 = neptune_q_0 + 3.43313d-06*cos(1.28215051805d0 + 2.9689454166d0 * t)
        neptune_q_0 = neptune_q_0 + 8.74114d-06*cos(5.95211630725d0 + 567.8240007324d0 * t)
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

        saturn_a_0 = saturn_a_0 + 1.03609d-06*cos(1.12789103349d0 + 4010.0015313172d0 * t)
        saturn_a_0 = saturn_a_0 + 1.05329d-06*cos(5.13652710238d0 + 217.2312487011d0 * t)
        saturn_a_0 = saturn_a_0 + 1.06545d-06*cos(0.01202082456d0 + 4113.0943055358d0 * t)
        saturn_a_0 = saturn_a_0 + 1.06927d-06*cos(6.02655727719d0 + 1169.5882514086d0 * t)
        saturn_a_0 = saturn_a_0 + 1.08198d-06*cos(0.53787029887d0 + 142.4496501338d0 * t)
        saturn_a_0 = saturn_a_0 + 1.12503d-06*cos(5.08345013747d0 + 422.6660376129d0 * t)
        saturn_a_0 = saturn_a_0 + 1.14672d-06*cos(1.46990519752d0 + 114.1384744825d0 * t)
        saturn_a_0 = saturn_a_0 + 1.16234d-06*cos(3.18278014001d0 + 20213.271996984d0 * t)
        saturn_a_0 = saturn_a_0 + 1.17222d-06*cos(2.4214025294d0 + 9992.8729037722d0 * t)
        saturn_a_0 = saturn_a_0 + 1.20695d-06*cos(0.76645659579d0 + 417.0369633204d0 * t)
        saturn_a_0 = saturn_a_0 + 1.2121d-06*cos(3.33325246924d0 + 433.7117378768d0 * t)
        saturn_a_0 = saturn_a_0 + 1.22305d-06*cos(6.10269791228d0 + 414.0680179038d0 * t)
        saturn_a_0 = saturn_a_0 + 1.22862d-06*cos(2.33377095745d0 + 319.5732633943d0 * t)
        saturn_a_0 = saturn_a_0 + 1.22877d-06*cos(4.00101488132d0 + 430.5303441391d0 * t)
        saturn_a_0 = saturn_a_0 + 1.23459d-06*cos(5.59432582536d0 + 355.7487455718d0 * t)
        saturn_a_0 = saturn_a_0 + 1.23525d-06*cos(5.3190841505d0 + 10007.0999977738d0 * t)
        saturn_a_0 = saturn_a_0 + 1.24173d-06*cos(1.75442561184d0 + 905.8865797915d0 * t)
        saturn_a_0 = saturn_a_0 + 1.25408d-06*cos(0.998064507d0 + 6062.6632075526d0 * t)
        saturn_a_0 = saturn_a_0 + 1.26425d-06*cos(3.61611157405d0 + 894.8408795276d0 * t)
        saturn_a_0 = saturn_a_0 + 1.26599d-06*cos(4.63751675585d0 + 543.0242872189d0 * t)
        saturn_a_0 = saturn_a_0 + 1.26911d-06*cos(5.65444263623d0 + 2118.7638603784d0 * t)
        saturn_a_0 = saturn_a_0 + 1.28605d-06*cos(3.68389544975d0 + 3274.1250177854d0 * t)
        saturn_a_0 = saturn_a_0 + 1.31217d-06*cos(0.22765922918d0 + 313.2104759189d0 * t)
        saturn_a_0 = saturn_a_0 + 1.32063d-06*cos(3.89551074303d0 + 6076.8903015542d0 * t)
        saturn_a_0 = saturn_a_0 + 1.33371d-06*cos(2.01643189855d0 + 3686.4961146598d0 * t)
        saturn_a_0 = saturn_a_0 + 1.37861d-06*cos(3.35296222709d0 + 99.1606209555d0 * t)
        saturn_a_0 = saturn_a_0 + 1.42685d-06*cos(2.14906791644d0 + 2627.1141844706d0 * t)
        saturn_a_0 = saturn_a_0 + 1.45512d-06*cos(3.54429372802d0 + 2097.423219376d0 * t)
        saturn_a_0 = saturn_a_0 + 1.45664d-06*cos(2.90579370765d0 + 563.6312150384d0 * t)
        saturn_a_0 = saturn_a_0 + 1.47818d-06*cos(5.6682945325d0 + 6467.9257579616d0 * t)
        saturn_a_0 = saturn_a_0 + 1.47939d-06*cos(2.14204639435d0 + 408.4389436113d0 * t)
        saturn_a_0 = saturn_a_0 + 1.53783d-06*cos(5.89586896077d0 + 1802.3719907218d0 * t)
        saturn_a_0 = saturn_a_0 + 1.54683d-06*cos(6.10454885038d0 + 1485.9801210652d0 * t)
        saturn_a_0 = saturn_a_0 + 1.5649d-06*cos(3.2617040769d0 + 1382.8873468466d0 * t)
        saturn_a_0 = saturn_a_0 + 1.58259d-06*cos(3.96469933614d0 + 2854.6403739102d0 * t)
        saturn_a_0 = saturn_a_0 + 1.6438d-06*cos(0.97674769261d0 + 3899.7952100978d0 * t)
        saturn_a_0 = saturn_a_0 + 1.65598d-06*cos(6.25897279337d0 + 9.5612275556d0 * t)
        saturn_a_0 = saturn_a_0 + 1.72661d-06*cos(3.61340899615d0 + 312.1990839626d0 * t)
        saturn_a_0 = saturn_a_0 + 1.74802d-06*cos(4.11420732311d0 + 52.6901980395d0 * t)
        saturn_a_0 = saturn_a_0 + 1.75742d-06*cos(3.23230972062d0 + 284.1485407422d0 * t)
        saturn_a_0 = saturn_a_0 + 1.85503d-06*cos(1.37649884545d0 + 3693.6096616606d0 * t)
        saturn_a_0 = saturn_a_0 + 1.9727d-06*cos(0.32055293992d0 + 269.9214467406d0 * t)
        saturn_a_0 = saturn_a_0 + 1.97316d-06*cos(5.4085109085d0 + 278.5194664497d0 * t)
        saturn_a_0 = saturn_a_0 + 1.97589d-06*cos(4.68716068585d0 + 305.3461693927d0 * t)
        saturn_a_0 = saturn_a_0 + 1.97837d-06*cos(5.55649634019d0 + 969.6224780949d0 * t)
        saturn_a_0 = saturn_a_0 + 1.98435d-06*cos(2.66724363796d0 + 220.4126424388d0 * t)
        saturn_a_0 = saturn_a_0 + 1.9994d-06*cos(4.01942746096d0 + 2957.7331481288d0 * t)
        saturn_a_0 = saturn_a_0 + 2.02938d-06*cos(4.41508146156d0 + 275.5505210331d0 * t)
        saturn_a_0 = saturn_a_0 + 2.0463d-06*cos(1.82338499154d0 + 2207.6295405954d0 * t)
        saturn_a_0 = saturn_a_0 + 2.11602d-06*cos(2.96543202946d0 + 404.5067903482d0 * t)
        saturn_a_0 = saturn_a_0 + 2.16778d-06*cos(0.20255716369d0 + 3796.7024358792d0 * t)
        saturn_a_0 = saturn_a_0 + 2.16835d-06*cos(3.81865424294d0 + 1781.0313497194d0 * t)
        saturn_a_0 = saturn_a_0 + 2.17159d-06*cos(1.09072531713d0 + 700.6642392008d0 * t)
        saturn_a_0 = saturn_a_0 + 2.18049d-06*cos(0.05921681907d0 + 767.3690829208d0 * t)
        saturn_a_0 = saturn_a_0 + 2.27378d-06*cos(2.27986073959d0 + 3370.1042450032d0 * t)
        saturn_a_0 = saturn_a_0 + 2.35327d-06*cos(4.09542470996d0 + 327.4375699205d0 * t)
        saturn_a_0 = saturn_a_0 + 2.36395d-06*cos(1.22790238583d0 + 536.8045120954d0 * t)
        saturn_a_0 = saturn_a_0 + 2.39337d-06*cos(2.39501604316d0 + 2310.722314814d0 * t)
        saturn_a_0 = saturn_a_0 + 2.4573d-06*cos(1.92711940884d0 + 756.3233826569d0 * t)
        saturn_a_0 = saturn_a_0 + 2.55006d-06*cos(0.70564155647d0 + 88.865680217d0 * t)
        saturn_a_0 = saturn_a_0 + 2.56066d-06*cos(2.45657401657d0 + 330.6189636582d0 * t)
        saturn_a_0 = saturn_a_0 + 2.58245d-06*cos(3.14952593878d0 + 351.8165923087d0 * t)
        saturn_a_0 = saturn_a_0 + 2.79785d-06*cos(4.16525808983d0 + 2538.2485042536d0 * t)
        saturn_a_0 = saturn_a_0 + 3.04851d-06*cos(0.83634925969d0 + 12352.8526045448d0 * t)
        saturn_a_0 = saturn_a_0 + 3.0522d-06*cos(1.21560349501d0 + 3583.4033404412d0 * t)
        saturn_a_0 = saturn_a_0 + 3.07014d-06*cos(4.37719533971d0 + 2641.3412784722d0 * t)
        saturn_a_0 = saturn_a_0 + 3.07302d-06*cos(2.83704350396d0 + 312.4597163935d0 * t)
        saturn_a_0 = saturn_a_0 + 3.14054d-06*cos(0.29855589708d0 + 51962.5071877104d0 * t)
        saturn_a_0 = saturn_a_0 + 3.17235d-06*cos(4.09653684286d0 + 1464.6394800628d0 * t)
        saturn_a_0 = saturn_a_0 + 3.27708d-06*cos(1.62760515009d0 + 3377.217792004d0 * t)
        saturn_a_0 = saturn_a_0 + 3.46725d-06*cos(5.99557071448d0 + 320.3240229197d0 * t)
        saturn_a_0 = saturn_a_0 + 3.55992d-06*cos(1.30182296334d0 + 265.9892934775d0 * t)
        saturn_a_0 = saturn_a_0 + 3.84591d-06*cos(2.54672314808d0 + 3053.7123753466d0 * t)
        saturn_a_0 = saturn_a_0 + 3.91943d-06*cos(4.77668547823d0 + 628.8515860501d0 * t)
        saturn_a_0 = saturn_a_0 + 3.9335d-06*cos(2.64691859351d0 + 1994.3304451574d0 * t)
        saturn_a_0 = saturn_a_0 + 4.0195d-06*cos(2.69202053826d0 + 3.1813937377d0 * t)
        saturn_a_0 = saturn_a_0 + 4.08175d-06*cos(1.93940917697d0 + 1891.2376709388d0 * t)
        saturn_a_0 = saturn_a_0 + 4.41377d-06*cos(0.40463421863d0 + 3480.3105662226d0 * t)
        saturn_a_0 = saturn_a_0 + 4.45762d-06*cos(3.84476686572d0 + 831.1049812242d0 * t)
        saturn_a_0 = saturn_a_0 + 4.56302d-06*cos(4.37900493011d0 + 1148.2476104062d0 * t)
        saturn_a_0 = saturn_a_0 + 4.69318d-06*cos(4.76215312819d0 + 2324.9494088156d0 * t)
        saturn_a_0 = saturn_a_0 + 4.73106d-06*cos(0.24192819114d0 + 617.8058857862d0 * t)
        saturn_a_0 = saturn_a_0 + 4.85318d-06*cos(1.85097426951d0 + 175.1660598002d0 * t)
        saturn_a_0 = saturn_a_0 + 4.92644d-06*cos(4.3787055409d0 + 2221.856634597d0 * t)
        saturn_a_0 = saturn_a_0 + 5.37762d-06*cos(2.92643382844d0 + 490.3340891794d0 * t)
        saturn_a_0 = saturn_a_0 + 5.64473d-06*cos(1.45918030825d0 + 3267.0114707846d0 * t)
        saturn_a_0 = saturn_a_0 + 5.69687d-06*cos(1.88075641393d0 + 3060.8259223474d0 * t)
        saturn_a_0 = saturn_a_0 + 6.08123d-06*cos(5.05672511949d0 + 1905.4647649404d0 * t)
        saturn_a_0 = saturn_a_0 + 6.31658d-06*cos(2.90416669793d0 + 1677.9385755008d0 * t)
        saturn_a_0 = saturn_a_0 + 6.4196d-06*cos(1.36160129429d0 + 137.0330241624d0 * t)
        saturn_a_0 = saturn_a_0 + 6.45205d-06*cos(2.81713425689d0 + 2737.32050569d0 * t)
        saturn_a_0 = saturn_a_0 + 6.65367d-06*cos(5.9529301577d0 + 127.4717966068d0 * t)
        saturn_a_0 = saturn_a_0 + 6.81701d-06*cos(4.70486551385d0 + 831.8557407496d0 * t)
        saturn_a_0 = saturn_a_0 + 7.26879d-06*cos(5.18376125342d0 + 2008.557539159d0 * t)
        saturn_a_0 = saturn_a_0 + 7.74699d-06*cos(2.11324928814d0 + 1574.8458012822d0 * t)
        saturn_a_0 = saturn_a_0 + 7.89752d-06*cos(5.53296992948d0 + 525.4981794006d0 * t)
        saturn_a_0 = saturn_a_0 + 8.23607d-06*cos(6.2420363161d0 + 302.164775655d0 * t)
        saturn_a_0 = saturn_a_0 + 8.98807d-06*cos(0.61716058869d0 + 3163.918696566d0 * t)
        saturn_a_0 = saturn_a_0 + 9.04067d-06*cos(4.84478065715d0 + 479.2883889155d0 * t)
        saturn_a_0 = saturn_a_0 + 9.70623d-06*cos(2.13539308356d0 + 2744.4340526908d0 * t)
        saturn_a_0 = saturn_a_0 + 9.76155d-06*cos(4.95198558137d0 + 515.463871093d0 * t)
        saturn_a_0 = saturn_a_0 + 9.84089d-06*cos(3.05499200921d0 + 9786.687355335d0 * t)
        saturn_a_0 = saturn_a_0 + 9.85428d-06*cos(3.16954417419d0 + 1361.5467058442d0 * t)
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

        saturn_a_1 = saturn_a_1 + 1.01806d-06*cos(5.60708908178d0 + 949.1756089698d0 * t)
        saturn_a_1 = saturn_a_1 + 1.02444d-06*cos(1.0834998351d0 + 2744.4340526908d0 * t)
        saturn_a_1 = saturn_a_1 + 1.03261d-06*cos(5.42236437307d0 + 1265.5674786264d0 * t)
        saturn_a_1 = saturn_a_1 + 1.03273d-06*cos(1.02060154017d0 + 21.3406410024d0 * t)
        saturn_a_1 = saturn_a_1 + 1.04145d-06*cos(4.27349772435d0 + 3053.7123753466d0 * t)
        saturn_a_1 = saturn_a_1 + 1.04718d-06*cos(6.21224510126d0 + 340.7708920448d0 * t)
        saturn_a_1 = saturn_a_1 + 1.09279d-06*cos(2.4295626561d0 + 2538.2485042536d0 * t)
        saturn_a_1 = saturn_a_1 + 1.10776d-06*cos(5.81808944856d0 + 536.8045120954d0 * t)
        saturn_a_1 = saturn_a_1 + 1.13728d-06*cos(5.18524931843d0 + 9786.687355335d0 * t)
        saturn_a_1 = saturn_a_1 + 1.23071d-06*cos(3.76190372889d0 + 5856.4776591154d0 * t)
        saturn_a_1 = saturn_a_1 + 1.27374d-06*cos(4.10484196183d0 + 2310.722314814d0 * t)
        saturn_a_1 = saturn_a_1 + 1.40642d-06*cos(3.20142986245d0 + 2324.9494088156d0 * t)
        saturn_a_1 = saturn_a_1 + 1.41643d-06*cos(3.48679256934d0 + 2950.619601128d0 * t)
        saturn_a_1 = saturn_a_1 + 1.45173d-06*cos(5.53028781434d0 + 1781.0313497194d0 * t)
        saturn_a_1 = saturn_a_1 + 1.56503d-06*cos(3.62538969845d0 + 1891.2376709388d0 * t)
        saturn_a_1 = saturn_a_1 + 1.69621d-06*cos(1.34619007596d0 + 2428.0421830342d0 * t)
        saturn_a_1 = saturn_a_1 + 1.74734d-06*cos(4.54302550362d0 + 2737.32050569d0 * t)
        saturn_a_1 = saturn_a_1 + 1.95647d-06*cos(2.64863816398d0 + 2221.856634597d0 * t)
        saturn_a_1 = saturn_a_1 + 1.99479d-06*cos(0.77017159989d0 + 330.6189636582d0 * t)
        saturn_a_1 = saturn_a_1 + 2.04854d-06*cos(4.53271526919d0 + 202.2533951741d0 * t)
        saturn_a_1 = saturn_a_1 + 2.09536d-06*cos(4.35521252556d0 + 1994.3304451574d0 * t)
        saturn_a_1 = saturn_a_1 + 2.12383d-06*cos(3.53852476202d0 + 2008.557539159d0 * t)
        saturn_a_1 = saturn_a_1 + 2.12443d-06*cos(5.8074313987d0 + 1464.6394800628d0 * t)
        saturn_a_1 = saturn_a_1 + 2.29783d-06*cos(2.45919345653d0 + 88.865680217d0 * t)
        saturn_a_1 = saturn_a_1 + 2.59394d-06*cos(3.72860163555d0 + 2634.2277314714d0 * t)
        saturn_a_1 = saturn_a_1 + 2.64665d-06*cos(0.89468708911d0 + 3.1813937377d0 * t)
        saturn_a_1 = saturn_a_1 + 2.6931d-06*cos(1.61130791427d0 + 2111.6503133776d0 * t)
        saturn_a_1 = saturn_a_1 + 2.84332d-06*cos(2.8418176364d0 + 1905.4647649404d0 * t)
        saturn_a_1 = saturn_a_1 + 2.90777d-06*cos(4.81677915238d0 + 2420.9286360334d0 * t)
        saturn_a_1 = saturn_a_1 + 3.00154d-06*cos(3.79606373909d0 + 1574.8458012822d0 * t)
        saturn_a_1 = saturn_a_1 + 3.05602d-06*cos(6.08894284681d0 + 1148.2476104062d0 * t)
        saturn_a_1 = saturn_a_1 + 3.21332d-06*cos(3.88641449462d0 + 1692.1656695024d0 * t)
        saturn_a_1 = saturn_a_1 + 3.36781d-06*cos(4.61113859315d0 + 1677.9385755008d0 * t)
        saturn_a_1 = saturn_a_1 + 4.01177d-06*cos(1.87991936421d0 + 1795.258443721d0 * t)
        saturn_a_1 = saturn_a_1 + 4.56739d-06*cos(0.13519387247d0 + 831.8557407496d0 * t)
        saturn_a_1 = saturn_a_1 + 4.72928d-06*cos(2.10243352905d0 + 3.9321532631d0 * t)
        saturn_a_1 = saturn_a_1 + 4.73574d-06*cos(3.97582315497d0 + 2317.8358618148d0 * t)
        saturn_a_1 = saturn_a_1 + 4.80203d-06*cos(5.09478708492d0 + 2104.5367663768d0 * t)
        saturn_a_1 = saturn_a_1 + 4.84364d-06*cos(5.66236291084d0 + 316.3918696566d0 * t)
        saturn_a_1 = saturn_a_1 + 4.94854d-06*cos(1.58294572421d0 + 426.598190876d0 * t)
        saturn_a_1 = saturn_a_1 + 5.2552d-06*cos(4.87589175754d0 + 1361.5467058442d0 * t)
        saturn_a_1 = saturn_a_1 + 5.2942d-06*cos(2.15738894657d0 + 1478.8665740644d0 * t)
        saturn_a_1 = saturn_a_1 + 5.36105d-06*cos(4.00818148675d0 + 1258.4539316256d0 * t)
        saturn_a_1 = saturn_a_1 + 5.42931d-06*cos(2.46219706337d0 + 1162.4747044078d0 * t)
        saturn_a_1 = saturn_a_1 + 5.68051d-06*cos(5.84927676244d0 + 529.6909650946d0 * t)
        saturn_a_1 = saturn_a_1 + 5.76571d-06*cos(3.05361759438d0 + 63.7358983034d0 * t)
        saturn_a_1 = saturn_a_1 + 5.99354d-06*cos(3.12958688867d0 + 1589.0728952838d0 * t)
        saturn_a_1 = saturn_a_1 + 6.53695d-06*cos(0.37367242652d0 + 515.463871093d0 * t)
        saturn_a_1 = saturn_a_1 + 6.58837d-06*cos(1.661392421d0 + 302.164775655d0 * t)
        saturn_a_1 = saturn_a_1 + 6.89846d-06*cos(1.99084701429d0 + 11.0457002639d0 * t)
        saturn_a_1 = saturn_a_1 + 7.19469d-06*cos(2.83668044677d0 + 632.7837393132d0 * t)
        saturn_a_1 = saturn_a_1 + 7.882d-06*cos(5.37717090016d0 + 1788.1448967202d0 * t)
        saturn_a_1 = saturn_a_1 + 7.99372d-06*cos(5.13985877099d0 + 1045.1548361876d0 * t)
        saturn_a_1 = saturn_a_1 + 8.06819d-06*cos(4.53416390662d0 + 1059.3819301892d0 * t)
        saturn_a_1 = saturn_a_1 + 8.14468d-06*cos(1.46494882428d0 + 853.196381752d0 * t)
        saturn_a_1 = saturn_a_1 + 8.47604d-06*cos(1.56020306784d0 + 117.3198682202d0 * t)
        saturn_a_1 = saturn_a_1 + 8.53827d-06*cos(4.2425197441d0 + 942.062061969d0 * t)
        saturn_a_1 = saturn_a_1 + 8.6222d-06*cos(4.22809193935d0 + 2001.4439921582d0 * t)
        saturn_a_1 = saturn_a_1 + 8.78955d-06*cos(5.2624106626d0 + 1375.7737998458d0 * t)
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

        saturn_a_2 = saturn_a_2 + 1.04122d-06*cos(1.52503864991d0 + 1148.2476104062d0 * t)
        saturn_a_2 = saturn_a_2 + 1.05907d-06*cos(4.21171118017d0 + 88.865680217d0 * t)
        saturn_a_2 = saturn_a_2 + 1.10917d-06*cos(5.72363421692d0 + 1258.4539316256d0 * t)
        saturn_a_2 = saturn_a_2 + 1.11614d-06*cos(0.882426543d0 + 1788.1448967202d0 * t)
        saturn_a_2 = saturn_a_2 + 1.12457d-06*cos(2.78910212095d0 + 1059.3819301892d0 * t)
        saturn_a_2 = saturn_a_2 + 1.22836d-06*cos(1.44563033967d0 + 1589.0728952838d0 * t)
        saturn_a_2 = saturn_a_2 + 1.23633d-06*cos(0.19199164087d0 + 1685.0521225016d0 * t)
        saturn_a_2 = saturn_a_2 + 1.43745d-06*cos(0.31669705055d0 + 1361.5467058442d0 * t)
        saturn_a_2 = saturn_a_2 + 1.46496d-06*cos(0.49740124319d0 + 1265.5674786264d0 * t)
        saturn_a_2 = saturn_a_2 + 1.55637d-06*cos(1.8575701234d0 + 831.8557407496d0 * t)
        saturn_a_2 = saturn_a_2 + 1.7648d-06*cos(5.94932159643d0 + 942.062061969d0 * t)
        saturn_a_2 = saturn_a_2 + 1.81818d-06*cos(1.15982174586d0 + 1471.7530270636d0 * t)
        saturn_a_2 = saturn_a_2 + 1.84352d-06*cos(6.14522705292d0 + 853.196381752d0 * t)
        saturn_a_2 = saturn_a_2 + 1.97651d-06*cos(3.09611140567d0 + 742.9900605326d0 * t)
        saturn_a_2 = saturn_a_2 + 2.05807d-06*cos(1.70404900338d0 + 1272.6810256272d0 * t)
        saturn_a_2 = saturn_a_2 + 2.06648d-06*cos(6.1009110189d0 + 625.6701923124d0 * t)
        saturn_a_2 = saturn_a_2 + 2.12007d-06*cos(0.41676655792d0 + 1368.660252845d0 * t)
        saturn_a_2 = saturn_a_2 + 2.1868d-06*cos(0.57534381851d0 + 1045.1548361876d0 * t)
        saturn_a_2 = saturn_a_2 + 2.22486d-06*cos(2.08467991204d0 + 515.463871093d0 * t)
        saturn_a_2 = saturn_a_2 + 2.24329d-06*cos(0.75428248827d0 + 949.1756089698d0 * t)
        saturn_a_2 = saturn_a_2 + 2.42731d-06*cos(0.93647047728d0 + 632.7837393132d0 * t)
        saturn_a_2 = saturn_a_2 + 2.6243d-06*cos(6.19939956735d0 + 117.3198682202d0 * t)
        saturn_a_2 = saturn_a_2 + 2.67775d-06*cos(3.36774597635d0 + 302.164775655d0 * t)
        saturn_a_2 = saturn_a_2 + 2.96932d-06*cos(1.44203859382d0 + 1155.361157407d0 * t)
        saturn_a_2 = saturn_a_2 + 3.26108d-06*cos(0.8421847917d0 + 728.762966531d0 * t)
        saturn_a_2 = saturn_a_2 + 3.27737d-06*cos(1.95229445972d0 + 956.2891559706d0 * t)
        saturn_a_2 = saturn_a_2 + 3.89366d-06*cos(0.62124988686d0 + 1052.2683831884d0 * t)
        saturn_a_2 = saturn_a_2 + 3.99331d-06*cos(2.38551428395d0 + 199.0720014364d0 * t)
        saturn_a_2 = saturn_a_2 + 4.24859d-06*cos(2.16454868364d0 + 639.897286314d0 * t)
        saturn_a_2 = saturn_a_2 + 4.66879d-06*cos(1.13178348153d0 + 412.3710968744d0 * t)
        saturn_a_2 = saturn_a_2 + 5.29158d-06*cos(4.28063853004d0 + 846.0828347512d0 * t)
        saturn_a_2 = saturn_a_2 + 5.38178d-06*cos(1.95658935695d0 + 838.9692877504d0 * t)
        saturn_a_2 = saturn_a_2 + 6.65001d-06*cos(4.17972469938d0 + 103.0927742186d0 * t)
        saturn_a_2 = saturn_a_2 + 7.25473d-06*cos(0.83734186403d0 + 735.8765135318d0 * t)
        saturn_a_2 = saturn_a_2 + 8.19992d-06*cos(3.71128784345d0 + 95.9792272178d0 * t)
        saturn_a_2 = saturn_a_2 + 9.22488d-06*cos(1.98421260598d0 + 522.5774180938d0 * t)
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

        saturn_a_3 = saturn_a_3 + 1.35727d-06*cos(5.55119021364d0 + 95.9792272178d0 * t)
        saturn_a_3 = saturn_a_3 + 1.87119d-06*cos(4.00749019657d0 + 206.1855484372d0 * t)
        saturn_a_3 = saturn_a_3 + 2.12286d-06*cos(4.77747504582d0 + 110.2063212194d0 * t)
        saturn_a_3 = saturn_a_3 + 4.20098d-06*cos(3.90230839513d0 + 323.5054166574d0 * t)
        saturn_a_3 = saturn_a_3 + 4.61023d-06*cos(4.99147561075d0 + 309.2783226558d0 * t)
        saturn_a_3 = saturn_a_3 + 4.77556d-06*cos(4.05190593975d0 + 14.2270940016d0 * t)
        saturn_a_3 = saturn_a_3 + 3.271907d-05*cos(4.1775654813d0 + 7.1135470008d0 * t)
        saturn_a_3=saturn_a_3*t*t*t;

        saturn_a_4 = saturn_a_4 + 3.41473d-06*cos(2.43564629006d0 + 7.1135470008d0 * t)
        saturn_a_4=saturn_a_4*t*t*t*t;

        r = saturn_a_4+saturn_a_3+saturn_a_2+saturn_a_1+saturn_a_0
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

        saturn_h_0 = saturn_h_0 + 1.04285d-06*cos(6.11859134425d0 + 12.5301729722d0 * t)
        saturn_h_0 = saturn_h_0 + 1.04535d-06*cos(1.04406541279d0 + 76.2660712756d0 * t)
        saturn_h_0 = saturn_h_0 + 1.04952d-06*cos(2.77007199152d0 + 1361.5467058442d0 * t)
        saturn_h_0 = saturn_h_0 + 1.06165d-06*cos(6.23576532113d0 + 312.1990839626d0 * t)
        saturn_h_0 = saturn_h_0 + 1.12074d-06*cos(3.86160680811d0 + 1148.2476104062d0 * t)
        saturn_h_0 = saturn_h_0 + 1.1629d-06*cos(2.76492938859d0 + 479.2883889155d0 * t)
        saturn_h_0 = saturn_h_0 + 1.18979d-06*cos(2.41834876156d0 + 2531.1349572528d0 * t)
        saturn_h_0 = saturn_h_0 + 1.20137d-06*cos(2.82934294857d0 + 26087.9031415742d0 * t)
        saturn_h_0 = saturn_h_0 + 1.20568d-06*cos(4.6344155745d0 + 3340.6124266998d0 * t)
        saturn_h_0 = saturn_h_0 + 1.32252d-06*cos(0.63580458149d0 + 88.865680217d0 * t)
        saturn_h_0 = saturn_h_0 + 1.32624d-06*cos(5.5359978515d0 + 265.9892934775d0 * t)
        saturn_h_0 = saturn_h_0 + 1.37513d-06*cos(3.56596342839d0 + 1.4844727083d0 * t)
        saturn_h_0 = saturn_h_0 + 1.45534d-06*cos(0.36929353904d0 + 2428.0421830342d0 * t)
        saturn_h_0 = saturn_h_0 + 1.48933d-06*cos(2.02808481024d0 + 52.6901980395d0 * t)
        saturn_h_0 = saturn_h_0 + 1.56853d-06*cos(4.0133357086d0 + 1891.2376709388d0 * t)
        saturn_h_0 = saturn_h_0 + 1.63176d-06*cos(2.62864673693d0 + 2420.9286360334d0 * t)
        saturn_h_0 = saturn_h_0 + 1.63424d-06*cos(3.0575957374d0 + 9.5612275556d0 * t)
        saturn_h_0 = saturn_h_0 + 1.66963d-06*cos(1.60761483539d0 + 2634.2277314714d0 * t)
        saturn_h_0 = saturn_h_0 + 1.67749d-06*cos(5.65663423279d0 + 302.164775655d0 * t)
        saturn_h_0 = saturn_h_0 + 1.69147d-06*cos(5.40116142293d0 + 220.4126424388d0 * t)
        saturn_h_0 = saturn_h_0 + 1.71953d-06*cos(2.64751992876d0 + 490.3340891794d0 * t)
        saturn_h_0 = saturn_h_0 + 1.80715d-06*cos(3.32986663958d0 + 3.1813937377d0 * t)
        saturn_h_0 = saturn_h_0 + 1.88143d-06*cos(4.13299771084d0 + 831.8557407496d0 * t)
        saturn_h_0 = saturn_h_0 + 2.0342d-06*cos(2.69364738897d0 + 2214.7430875962d0 * t)
        saturn_h_0 = saturn_h_0 + 2.04512d-06*cos(1.82992263838d0 + 149.5631971346d0 * t)
        saturn_h_0 = saturn_h_0 + 2.06021d-06*cos(2.98641156708d0 + 1045.1548361876d0 * t)
        saturn_h_0 = saturn_h_0 + 2.63578d-06*cos(4.30720865939d0 + 1574.8458012822d0 * t)
        saturn_h_0 = saturn_h_0 + 2.73259d-06*cos(0.18487124368d0 + 3.9321532631d0 * t)
        saturn_h_0 = saturn_h_0 + 2.86059d-06*cos(0.6584384084d0 + 2111.6503133776d0 * t)
        saturn_h_0 = saturn_h_0 + 3.02628d-06*cos(0.59729886707d0 + 38.1330356378d0 * t)
        saturn_h_0 = saturn_h_0 + 3.03115d-06*cos(2.88685844841d0 + 2104.5367663768d0 * t)
        saturn_h_0 = saturn_h_0 + 3.04045d-06*cos(1.09707657249d0 + 340.7708920448d0 * t)
        saturn_h_0 = saturn_h_0 + 3.3606d-06*cos(4.42240393972d0 + 515.463871093d0 * t)
        saturn_h_0 = saturn_h_0 + 3.39205d-06*cos(2.97531149835d0 + 1898.3512179396d0 * t)
        saturn_h_0 = saturn_h_0 + 3.39999d-06*cos(1.82156965235d0 + 2317.8358618148d0 * t)
        saturn_h_0 = saturn_h_0 + 3.78368d-06*cos(3.87251811072d0 + 127.4717966068d0 * t)
        saturn_h_0 = saturn_h_0 + 4.00962d-06*cos(3.20870588564d0 + 728.762966531d0 * t)
        saturn_h_0 = saturn_h_0 + 4.45274d-06*cos(4.60749271506d0 + 1258.4539316256d0 * t)
        saturn_h_0 = saturn_h_0 + 4.59907d-06*cos(2.99976626043d0 + 9786.687355335d0 * t)
        saturn_h_0 = saturn_h_0 + 4.97881d-06*cos(1.5763155496d0 + 5856.4776591154d0 * t)
        saturn_h_0 = saturn_h_0 + 5.40199d-06*cos(6.0190507383d0 + 1589.0728952838d0 * t)
        saturn_h_0 = saturn_h_0 + 5.45612d-06*cos(3.28163835118d0 + 1581.959348283d0 * t)
        saturn_h_0 = saturn_h_0 + 5.49105d-06*cos(3.83138172388d0 + 117.3198682202d0 * t)
        saturn_h_0 = saturn_h_0 + 5.50755d-06*cos(0.9472156564d0 + 1795.258443721d0 * t)
        saturn_h_0 = saturn_h_0 + 5.64734d-06*cos(3.1510843409d0 + 1788.1448967202d0 * t)
        saturn_h_0 = saturn_h_0 + 6.14736d-06*cos(4.38898548197d0 + 137.0330241624d0 * t)
        saturn_h_0 = saturn_h_0 + 6.8663d-06*cos(1.38173887673d0 + 742.9900605326d0 * t)
        saturn_h_0 = saturn_h_0 + 7.00243d-06*cos(2.04488372952d0 + 2001.4439921582d0 * t)
        saturn_h_0 = saturn_h_0 + 7.53851d-06*cos(2.92920933065d0 + 639.897286314d0 * t)
        saturn_h_0 = saturn_h_0 + 7.69364d-06*cos(4.91100326717d0 + 942.062061969d0 * t)
        saturn_h_0 = saturn_h_0 + 7.77091d-06*cos(1.99667742086d0 + 536.8045120954d0 * t)
        saturn_h_0 = saturn_h_0 + 8.0404d-06*cos(4.69394094257d0 + 199.0720014364d0 * t)
        saturn_h_0 = saturn_h_0 + 8.1878d-06*cos(3.5841373841d0 + 1265.5674786264d0 * t)
        saturn_h_0 = saturn_h_0 + 8.20444d-06*cos(3.43250562947d0 + 412.3710968744d0 * t)
        saturn_h_0 = saturn_h_0 + 9.07317d-06*cos(5.72606174703d0 + 202.2533951741d0 * t)
        saturn_h_0 = saturn_h_0 + 9.21737d-06*cos(0.77701799955d0 + 74.7815985673d0 * t)
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

        saturn_h_1 = saturn_h_1 + 1.00608d-06*cos(5.83875595714d0 + 831.8557407496d0 * t)
        saturn_h_1 = saturn_h_1 + 1.02058d-06*cos(2.97143149211d0 + 3.9321532631d0 * t)
        saturn_h_1 = saturn_h_1 + 1.05941d-06*cos(2.33965637522d0 + 88.865680217d0 * t)
        saturn_h_1 = saturn_h_1 + 1.06286d-06*cos(3.52755879891d0 + 1265.5674786264d0 * t)
        saturn_h_1 = saturn_h_1 + 1.12412d-06*cos(1.07653275984d0 + 302.164775655d0 * t)
        saturn_h_1 = saturn_h_1 + 1.19599d-06*cos(0.01506805957d0 + 1258.4539316256d0 * t)
        saturn_h_1 = saturn_h_1 + 1.31799d-06*cos(3.07500374955d0 + 419.4846438752d0 * t)
        saturn_h_1 = saturn_h_1 + 1.42146d-06*cos(5.12652768511d0 + 1471.7530270636d0 * t)
        saturn_h_1 = saturn_h_1 + 1.56225d-06*cos(3.85306302746d0 + 949.1756089698d0 * t)
        saturn_h_1 = saturn_h_1 + 1.58905d-06*cos(4.90682094626d0 + 728.762966531d0 * t)
        saturn_h_1 = saturn_h_1 + 1.80462d-06*cos(6.13327074773d0 + 515.463871093d0 * t)
        saturn_h_1 = saturn_h_1 + 2.04982d-06*cos(5.4009804838d0 + 529.6909650946d0 * t)
        saturn_h_1 = saturn_h_1 + 2.0509d-06*cos(1.36952069515d0 + 639.897286314d0 * t)
        saturn_h_1 = saturn_h_1 + 2.07164d-06*cos(0.32937613935d0 + 942.062061969d0 * t)
        saturn_h_1 = saturn_h_1 + 2.37203d-06*cos(4.54702445011d0 + 742.9900605326d0 * t)
        saturn_h_1 = saturn_h_1 + 2.44963d-06*cos(5.56481998135d0 + 632.7837393132d0 * t)
        saturn_h_1 = saturn_h_1 + 2.70805d-06*cos(5.41266450028d0 + 1155.361157407d0 * t)
        saturn_h_1 = saturn_h_1 + 2.75233d-06*cos(2.24623658927d0 + 117.3198682202d0 * t)
        saturn_h_1 = saturn_h_1 + 3.03316d-06*cos(0.31951281076d0 + 536.8045120954d0 * t)
        saturn_h_1 = saturn_h_1 + 3.24938d-06*cos(5.12033815416d0 + 412.3710968744d0 * t)
        saturn_h_1 = saturn_h_1 + 3.51732d-06*cos(4.18445952844d0 + 11.0457002639d0 * t)
        saturn_h_1 = saturn_h_1 + 3.88323d-06*cos(0.7414858452d0 + 625.6701923124d0 * t)
        saturn_h_1 = saturn_h_1 + 4.30034d-06*cos(0.10338762961d0 + 199.0720014364d0 * t)
        saturn_h_1 = saturn_h_1 + 4.33344d-06*cos(2.69212580012d0 + 103.0927742186d0 * t)
        saturn_h_1 = saturn_h_1 + 5.41176d-06*cos(5.70630396063d0 + 838.9692877504d0 * t)
        saturn_h_1 = saturn_h_1 + 5.54853d-06*cos(5.82661992613d0 + 213.299095438d0 * t)
        saturn_h_1 = saturn_h_1 + 5.58984d-06*cos(4.66562524937d0 + 1059.3819301892d0 * t)
        saturn_h_1 = saturn_h_1 + 5.82332d-06*cos(1.50126690942d0 + 323.5054166574d0 * t)
        saturn_h_1 = saturn_h_1 + 9.63731d-06*cos(0.9435365761d0 + 309.2783226558d0 * t)
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

        saturn_h_2 = saturn_h_2 + 1.17315d-06*cos(1.80682509977d0 + 199.0720014364d0 * t)
        saturn_h_2 = saturn_h_2 + 1.19243d-06*cos(1.90924963372d0 + 522.5774180938d0 * t)
        saturn_h_2 = saturn_h_2 + 1.36156d-06*cos(2.69364091086d0 + 309.2783226558d0 * t)
        saturn_h_2 = saturn_h_2 + 1.414d-06*cos(4.84653845559d0 + 103.0927742186d0 * t)
        saturn_h_2 = saturn_h_2 + 2.3506d-06*cos(1.51742787285d0 + 206.1855484372d0 * t)
        saturn_h_2 = saturn_h_2 + 2.51057d-06*cos(3.94023142765d0 + 95.9792272178d0 * t)
        saturn_h_2 = saturn_h_2 + 3.22932d-06*cos(0.84562960284d0 + 110.2063212194d0 * t)
        saturn_h_2 = saturn_h_2 + 6.57289d-06*cos(0.05011130497d0 + 14.2270940016d0 * t)
        saturn_h_2 = saturn_h_2 + 5.775783d-05*cos(0.17981518193d0 + 7.1135470008d0 * t)
        saturn_h_2 = saturn_h_2 + 0.00031990236d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_h_2=saturn_h_2*t*t;

        saturn_h_3 = saturn_h_3 + 1.4946d-06*cos(4.61547942713d0 + 14.2270940016d0 * t)
        saturn_h_3 = saturn_h_3 + 5.35978d-06*cos(4.69648491816d0 + 7.1135470008d0 * t)
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

        saturn_k_0 = saturn_k_0 + 1.00319d-06*cos(2.06477116638d0 + 2531.1349572528d0 * t)
        saturn_k_0 = saturn_k_0 + 1.01006d-06*cos(1.1094094759d0 + 1361.5467058442d0 * t)
        saturn_k_0 = saturn_k_0 + 1.03767d-06*cos(1.40199307923d0 + 12.5301729722d0 * t)
        saturn_k_0 = saturn_k_0 + 1.04579d-06*cos(2.61202513152d0 + 76.2660712756d0 * t)
        saturn_k_0 = saturn_k_0 + 1.05372d-06*cos(2.29364855739d0 + 138.5174968707d0 * t)
        saturn_k_0 = saturn_k_0 + 1.05403d-06*cos(4.65819364588d0 + 312.1990839626d0 * t)
        saturn_k_0 = saturn_k_0 + 1.12183d-06*cos(2.27762676375d0 + 1148.2476104062d0 * t)
        saturn_k_0 = saturn_k_0 + 1.12466d-06*cos(3.58639554691d0 + 2008.557539159d0 * t)
        saturn_k_0 = saturn_k_0 + 1.197d-06*cos(1.2855380606d0 + 479.2883889155d0 * t)
        saturn_k_0 = saturn_k_0 + 1.20316d-06*cos(6.20299628033d0 + 3340.6124266998d0 * t)
        saturn_k_0 = saturn_k_0 + 1.20909d-06*cos(4.40984522805d0 + 26087.9031415742d0 * t)
        saturn_k_0 = saturn_k_0 + 1.31992d-06*cos(5.34641718838d0 + 88.865680217d0 * t)
        saturn_k_0 = saturn_k_0 + 1.32452d-06*cos(3.98428836403d0 + 265.9892934775d0 * t)
        saturn_k_0 = saturn_k_0 + 1.35858d-06*cos(5.19262871176d0 + 1.4844727083d0 * t)
        saturn_k_0 = saturn_k_0 + 1.46514d-06*cos(6.12360457026d0 + 2634.2277314714d0 * t)
        saturn_k_0 = saturn_k_0 + 1.48367d-06*cos(0.46407716003d0 + 52.6901980395d0 * t)
        saturn_k_0 = saturn_k_0 + 1.50764d-06*cos(3.86542878764d0 + 1692.1656695024d0 * t)
        saturn_k_0 = saturn_k_0 + 1.56321d-06*cos(2.38097077479d0 + 2428.0421830342d0 * t)
        saturn_k_0 = saturn_k_0 + 1.5721d-06*cos(0.85306184287d0 + 220.4126424388d0 * t)
        saturn_k_0 = saturn_k_0 + 1.6121d-06*cos(2.55148480619d0 + 1891.2376709388d0 * t)
        saturn_k_0 = saturn_k_0 + 1.63084d-06*cos(4.63574627366d0 + 9.5612275556d0 * t)
        saturn_k_0 = saturn_k_0 + 1.65354d-06*cos(1.09938915187d0 + 2420.9286360334d0 * t)
        saturn_k_0 = saturn_k_0 + 1.67247d-06*cos(4.07713288331d0 + 302.164775655d0 * t)
        saturn_k_0 = saturn_k_0 + 1.70817d-06*cos(4.21139807987d0 + 490.3340891794d0 * t)
        saturn_k_0 = saturn_k_0 + 1.72615d-06*cos(2.345438994d0 + 2214.7430875962d0 * t)
        saturn_k_0 = saturn_k_0 + 1.88219d-06*cos(2.54737838427d0 + 831.8557407496d0 * t)
        saturn_k_0 = saturn_k_0 + 1.9985d-06*cos(4.90868756826d0 + 3.1813937377d0 * t)
        saturn_k_0 = saturn_k_0 + 2.02291d-06*cos(1.34388780451d0 + 1045.1548361876d0 * t)
        saturn_k_0 = saturn_k_0 + 2.03632d-06*cos(3.39167830119d0 + 149.5631971346d0 * t)
        saturn_k_0 = saturn_k_0 + 2.27595d-06*cos(3.93547057718d0 + 1375.7737998458d0 * t)
        saturn_k_0 = saturn_k_0 + 2.69092d-06*cos(2.82487337488d0 + 1574.8458012822d0 * t)
        saturn_k_0 = saturn_k_0 + 2.90028d-06*cos(2.638414154d0 + 1898.3512179396d0 * t)
        saturn_k_0 = saturn_k_0 + 2.91325d-06*cos(2.59596668583d0 + 2111.6503133776d0 * t)
        saturn_k_0 = saturn_k_0 + 3.03666d-06*cos(2.16452021869d0 + 38.1330356378d0 * t)
        saturn_k_0 = saturn_k_0 + 3.05337d-06*cos(5.85763637475d0 + 340.7708920448d0 * t)
        saturn_k_0 = saturn_k_0 + 3.08216d-06*cos(1.35593934721d0 + 2104.5367663768d0 * t)
        saturn_k_0 = saturn_k_0 + 3.11115d-06*cos(0.09667097161d0 + 2317.8358618148d0 * t)
        saturn_k_0 = saturn_k_0 + 3.31841d-06*cos(2.80788191374d0 + 515.463871093d0 * t)
        saturn_k_0 = saturn_k_0 + 3.76215d-06*cos(2.31242899169d0 + 127.4717966068d0 * t)
        saturn_k_0 = saturn_k_0 + 3.99377d-06*cos(1.60568987357d0 + 728.762966531d0 * t)
        saturn_k_0 = saturn_k_0 + 4.51924d-06*cos(3.100962836d0 + 1258.4539316256d0 * t)
        saturn_k_0 = saturn_k_0 + 4.59198d-06*cos(1.42880579225d0 + 9786.687355335d0 * t)
        saturn_k_0 = saturn_k_0 + 4.63234d-06*cos(2.9462391064d0 + 1581.959348283d0 * t)
        saturn_k_0 = saturn_k_0 + 4.97112d-06*cos(0.0053533517d0 + 5856.4776591154d0 * t)
        saturn_k_0 = saturn_k_0 + 5.14866d-06*cos(1.25256730301d0 + 1589.0728952838d0 * t)
        saturn_k_0 = saturn_k_0 + 5.38369d-06*cos(2.82418032865d0 + 1795.258443721d0 * t)
        saturn_k_0 = saturn_k_0 + 5.49662d-06*cos(5.41012360285d0 + 117.3198682202d0 * t)
        saturn_k_0 = saturn_k_0 + 5.74548d-06*cos(1.61473294895d0 + 1788.1448967202d0 * t)
        saturn_k_0 = saturn_k_0 + 6.12666d-06*cos(2.81801621446d0 + 137.0330241624d0 * t)
        saturn_k_0 = saturn_k_0 + 6.23398d-06*cos(4.27582502714d0 + 639.897286314d0 * t)
        saturn_k_0 = saturn_k_0 + 6.61114d-06*cos(0.35657732979d0 + 2001.4439921582d0 * t)
        saturn_k_0 = saturn_k_0 + 6.98678d-06*cos(3.99695154264d0 + 3.9321532631d0 * t)
        saturn_k_0 = saturn_k_0 + 7.19085d-06*cos(3.29880641883d0 + 1265.5674786264d0 * t)
        saturn_k_0 = saturn_k_0 + 7.75572d-06*cos(3.38135072504d0 + 942.062061969d0 * t)
        saturn_k_0 = saturn_k_0 + 7.86882d-06*cos(3.54250386068d0 + 536.8045120954d0 * t)
        saturn_k_0 = saturn_k_0 + 8.10032d-06*cos(3.12882489633d0 + 199.0720014364d0 * t)
        saturn_k_0 = saturn_k_0 + 8.25404d-06*cos(1.85393387822d0 + 412.3710968744d0 * t)
        saturn_k_0 = saturn_k_0 + 8.96313d-06*cos(4.16027582272d0 + 202.2533951741d0 * t)
        saturn_k_0 = saturn_k_0 + 9.22829d-06*cos(2.36624740817d0 + 74.7815985673d0 * t)
        saturn_k_0 = saturn_k_0 + 9.62925d-06*cos(3.06901342634d0 + 1478.8665740644d0 * t)
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

        saturn_k_1 = saturn_k_1 + 1.00558d-06*cos(4.24624268158d0 + 831.8557407496d0 * t)
        saturn_k_1 = saturn_k_1 + 1.03868d-06*cos(3.08886495407d0 + 3.1813937377d0 * t)
        saturn_k_1 = saturn_k_1 + 1.05676d-06*cos(0.76609474207d0 + 88.865680217d0 * t)
        saturn_k_1 = saturn_k_1 + 1.11939d-06*cos(5.77687044593d0 + 302.164775655d0 * t)
        saturn_k_1 = saturn_k_1 + 1.23758d-06*cos(4.85319068815d0 + 1258.4539316256d0 * t)
        saturn_k_1 = saturn_k_1 + 1.30413d-06*cos(5.68864063986d0 + 3.9321532631d0 * t)
        saturn_k_1 = saturn_k_1 + 1.34717d-06*cos(0.85043980134d0 + 949.1756089698d0 * t)
        saturn_k_1 = saturn_k_1 + 1.4548d-06*cos(4.95303251531d0 + 632.7837393132d0 * t)
        saturn_k_1 = saturn_k_1 + 1.47938d-06*cos(3.62873852227d0 + 1471.7530270636d0 * t)
        saturn_k_1 = saturn_k_1 + 1.48442d-06*cos(2.56372951969d0 + 639.897286314d0 * t)
        saturn_k_1 = saturn_k_1 + 1.57508d-06*cos(3.28279888763d0 + 728.762966531d0 * t)
        saturn_k_1 = saturn_k_1 + 1.62864d-06*cos(3.92747249774d0 + 529.6909650946d0 * t)
        saturn_k_1 = saturn_k_1 + 1.7692d-06*cos(4.4976692942d0 + 515.463871093d0 * t)
        saturn_k_1 = saturn_k_1 + 2.11382d-06*cos(5.12213263941d0 + 942.062061969d0 * t)
        saturn_k_1 = saturn_k_1 + 2.29717d-06*cos(2.52063301238d0 + 742.9900605326d0 * t)
        saturn_k_1 = saturn_k_1 + 2.75844d-06*cos(3.82831779333d0 + 117.3198682202d0 * t)
        saturn_k_1 = saturn_k_1 + 2.77642d-06*cos(3.87214223074d0 + 1155.361157407d0 * t)
        saturn_k_1 = saturn_k_1 + 3.09348d-06*cos(1.84718185447d0 + 536.8045120954d0 * t)
        saturn_k_1 = saturn_k_1 + 3.27583d-06*cos(3.53762528689d0 + 412.3710968744d0 * t)
        saturn_k_1 = saturn_k_1 + 3.54585d-06*cos(5.74011133124d0 + 11.0457002639d0 * t)
        saturn_k_1 = saturn_k_1 + 3.8388d-06*cos(0.31930813464d0 + 1059.3819301892d0 * t)
        saturn_k_1 = saturn_k_1 + 3.89368d-06*cos(5.48130866633d0 + 625.6701923124d0 * t)
        saturn_k_1 = saturn_k_1 + 4.34491d-06*cos(4.82471796151d0 + 199.0720014364d0 * t)
        saturn_k_1 = saturn_k_1 + 4.93935d-06*cos(4.30496277d0 + 213.299095438d0 * t)
        saturn_k_1 = saturn_k_1 + 5.45575d-06*cos(4.11965359643d0 + 838.9692877504d0 * t)
        saturn_k_1 = saturn_k_1 + 6.58148d-06*cos(2.96251794348d0 + 323.5054166574d0 * t)
        saturn_k_1 = saturn_k_1 + 6.76638d-06*cos(4.49692094348d0 + 103.0927742186d0 * t)
        saturn_k_1 = saturn_k_1 + 9.39115d-06*cos(5.62596544501d0 + 309.2783226558d0 * t)
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

        saturn_k_2 = saturn_k_2 + 1.16736d-06*cos(2.50648292726d0 + 213.299095438d0 * t)
        saturn_k_2 = saturn_k_2 + 1.18994d-06*cos(0.24995072779d0 + 199.0720014364d0 * t)
        saturn_k_2 = saturn_k_2 + 1.29854d-06*cos(1.06418025079d0 + 309.2783226558d0 * t)
        saturn_k_2 = saturn_k_2 + 1.49341d-06*cos(1.84586478819d0 + 426.598190876d0 * t)
        saturn_k_2 = saturn_k_2 + 2.34671d-06*cos(3.04754628694d0 + 110.2063212194d0 * t)
        saturn_k_2 = saturn_k_2 + 2.47847d-06*cos(2.37243706763d0 + 95.9792272178d0 * t)
        saturn_k_2 = saturn_k_2 + 3.02862d-06*cos(0.3907872421d0 + 206.1855484372d0 * t)
        saturn_k_2 = saturn_k_2 + 6.59964d-06*cos(1.62806088279d0 + 14.2270940016d0 * t)
        saturn_k_2 = saturn_k_2 + 5.845583d-05*cos(1.74297057661d0 + 7.1135470008d0 * t)
        saturn_k_2 = saturn_k_2 + 0.00030928405d0*cos(0.0d0 + 0.0d0 * t)
        saturn_k_2=saturn_k_2*t*t;

        saturn_k_3 = saturn_k_3 + 1.49861d-06*cos(6.2019164889d0 + 14.2270940016d0 * t)
        saturn_k_3 = saturn_k_3 + 5.45551d-06*cos(6.25563367048d0 + 7.1135470008d0 * t)
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

        saturn_l_0 = saturn_l_0 + 1.01172d-06*cos(3.09436001653d0 + 220.4126424388d0 * t)
        saturn_l_0 = saturn_l_0 + 1.0762d-06*cos(0.41959597664d0 + 2008.557539159d0 * t)
        saturn_l_0 = saturn_l_0 + 1.10372d-06*cos(0.16627771722d0 + 1.4844727083d0 * t)
        saturn_l_0 = saturn_l_0 + 1.11044d-06*cos(3.12361461962d0 + 10213.285546211d0 * t)
        saturn_l_0 = saturn_l_0 + 1.13838d-06*cos(2.15583179809d0 + 3163.918696566d0 * t)
        saturn_l_0 = saturn_l_0 + 1.1738d-06*cos(1.69999330306d0 + 6283.0758499914d0 * t)
        saturn_l_0 = saturn_l_0 + 1.22176d-06*cos(1.97631911192d0 + 4.665866446d0 * t)
        saturn_l_0 = saturn_l_0 + 1.25402d-06*cos(1.45305342021d0 + 853.196381752d0 * t)
        saturn_l_0 = saturn_l_0 + 1.26497d-06*cos(3.28896049044d0 + 2950.619601128d0 * t)
        saturn_l_0 = saturn_l_0 + 1.28854d-06*cos(4.70059389203d0 + 2420.9286360334d0 * t)
        saturn_l_0 = saturn_l_0 + 1.3089d-06*cos(4.06810078844d0 + 10.2949407385d0 * t)
        saturn_l_0 = saturn_l_0 + 1.34707d-06*cos(3.7798159654d0 + 2744.4340526908d0 * t)
        saturn_l_0 = saturn_l_0 + 1.35386d-06*cos(0.82190770372d0 + 525.4981794006d0 * t)
        saturn_l_0 = saturn_l_0 + 1.37509d-06*cos(4.29169239733d0 + 21.3406410024d0 * t)
        saturn_l_0 = saturn_l_0 + 1.39613d-06*cos(5.75833632663d0 + 52.6901980395d0 * t)
        saturn_l_0 = saturn_l_0 + 1.45846d-06*cos(3.53536577087d0 + 1574.8458012822d0 * t)
        saturn_l_0 = saturn_l_0 + 1.45873d-06*cos(4.75195634438d0 + 1361.5467058442d0 * t)
        saturn_l_0 = saturn_l_0 + 1.47176d-06*cos(1.53525225396d0 + 5.6290742925d0 * t)
        saturn_l_0 = saturn_l_0 + 1.55254d-06*cos(6.01247931875d0 + 1905.4647649404d0 * t)
        saturn_l_0 = saturn_l_0 + 1.55503d-06*cos(3.75910331109d0 + 3127.3133312618d0 * t)
        saturn_l_0 = saturn_l_0 + 1.60008d-06*cos(1.95958698209d0 + 25874.6040461362d0 * t)
        saturn_l_0 = saturn_l_0 + 1.60835d-06*cos(3.69572768351d0 + 692.5874843535d0 * t)
        saturn_l_0 = saturn_l_0 + 1.60952d-06*cos(0.31781042648d0 + 515.463871093d0 * t)
        saturn_l_0 = saturn_l_0 + 1.64246d-06*cos(0.43998914568d0 + 5.4166259714d0 * t)
        saturn_l_0 = saturn_l_0 + 1.69922d-06*cos(0.18130352092d0 + 479.2883889155d0 * t)
        saturn_l_0 = saturn_l_0 + 1.73771d-06*cos(1.86318842726d0 + 0.7507595254d0 * t)
        saturn_l_0 = saturn_l_0 + 1.7481d-06*cos(0.84141105894d0 + 1692.1656695024d0 * t)
        saturn_l_0 = saturn_l_0 + 1.82554d-06*cos(5.49118684848d0 + 2.9207613068d0 * t)
        saturn_l_0 = saturn_l_0 + 1.83461d-06*cos(0.97231302293d0 + 4.192785694d0 * t)
        saturn_l_0 = saturn_l_0 + 1.94135d-06*cos(1.28998982795d0 + 39.3568759152d0 * t)
        saturn_l_0 = saturn_l_0 + 2.16238d-06*cos(4.98511353275d0 + 2104.5367663768d0 * t)
        saturn_l_0 = saturn_l_0 + 2.26341d-06*cos(4.90844528755d0 + 12.5301729722d0 * t)
        saturn_l_0 = saturn_l_0 + 2.31417d-06*cos(4.04767463194d0 + 2428.0421830342d0 * t)
        saturn_l_0 = saturn_l_0 + 2.36091d-06*cos(3.54520095525d0 + 2634.2277314714d0 * t)
        saturn_l_0 = saturn_l_0 + 2.37396d-06*cos(2.38176804355d0 + 2847.5268269094d0 * t)
        saturn_l_0 = saturn_l_0 + 2.37963d-06*cos(5.027747195d0 + 1045.1548361876d0 * t)
        saturn_l_0 = saturn_l_0 + 2.4672d-06*cos(4.30726906879d0 + 117.3198682202d0 * t)
        saturn_l_0 = saturn_l_0 + 2.50668d-06*cos(0.27030988717d0 + 1589.0728952838d0 * t)
        saturn_l_0 = saturn_l_0 + 2.55649d-06*cos(3.42033274524d0 + 175.1660598002d0 * t)
        saturn_l_0 = saturn_l_0 + 2.75597d-06*cos(1.34029544762d0 + 127.4717966068d0 * t)
        saturn_l_0 = saturn_l_0 + 2.81658d-06*cos(3.77112028069d0 + 1258.4539316256d0 * t)
        saturn_l_0 = saturn_l_0 + 2.83883d-06*cos(2.95832697485d0 + 137.0330241624d0 * t)
        saturn_l_0 = saturn_l_0 + 3.43439d-06*cos(0.24608425197d0 + 0.5212648618d0 * t)
        saturn_l_0 = saturn_l_0 + 3.62644d-06*cos(5.27443747059d0 + 1788.1448967202d0 * t)
        saturn_l_0 = saturn_l_0 + 3.79835d-06*cos(4.79890052375d0 + 340.7708920448d0 * t)
        saturn_l_0 = saturn_l_0 + 3.8654d-06*cos(4.31822871822d0 + 2111.6503133776d0 * t)
        saturn_l_0 = saturn_l_0 + 3.92782d-06*cos(5.31273538115d0 + 728.762966531d0 * t)
        saturn_l_0 = saturn_l_0 + 3.99846d-06*cos(2.00345760018d0 + 554.0699874828d0 * t)
        saturn_l_0 = saturn_l_0 + 4.18483d-06*cos(0.3618996378d0 + 1272.6810256272d0 * t)
        saturn_l_0 = saturn_l_0 + 4.37991d-06*cos(5.60319111865d0 + 1375.7737998458d0 * t)
        saturn_l_0 = saturn_l_0 + 4.40765d-06*cos(3.80585723891d0 + 2317.8358618148d0 * t)
        saturn_l_0 = saturn_l_0 + 4.61039d-06*cos(3.20262993167d0 + 74.7815985673d0 * t)
        saturn_l_0 = saturn_l_0 + 4.97603d-06*cos(2.61620651429d0 + 2531.1349572528d0 * t)
        saturn_l_0 = saturn_l_0 + 5.25802d-06*cos(0.60731542895d0 + 199.0720014364d0 * t)
        saturn_l_0 = saturn_l_0 + 5.27d-06*cos(4.02096597174d0 + 942.062061969d0 * t)
        saturn_l_0 = saturn_l_0 + 5.42121d-06*cos(1.51797425039d0 + 9.5612275556d0 * t)
        saturn_l_0 = saturn_l_0 + 6.12176d-06*cos(5.56853826825d0 + 1471.7530270636d0 * t)
        saturn_l_0 = saturn_l_0 + 6.15738d-06*cos(5.26298005233d0 + 350.3321196004d0 * t)
        saturn_l_0 = saturn_l_0 + 6.18266d-06*cos(4.59029792453d0 + 1795.258443721d0 * t)
        saturn_l_0 = saturn_l_0 + 6.54453d-06*cos(1.598890919d0 + 0.0481841098d0 * t)
        saturn_l_0 = saturn_l_0 + 7.23572d-06*cos(5.59559313946d0 + 412.3710968744d0 * t)
        saturn_l_0 = saturn_l_0 + 7.69211d-06*cos(0.61205124581d0 + 956.2891559706d0 * t)
        saturn_l_0 = saturn_l_0 + 7.89154d-06*cos(5.00747076338d0 + 0.9632078465d0 * t)
        saturn_l_0 = saturn_l_0 + 8.24619d-06*cos(4.07094527199d0 + 2001.4439921582d0 * t)
        saturn_l_0 = saturn_l_0 + 9.22127d-06*cos(4.27551266484d0 + 625.6701923124d0 * t)
        saturn_l_0 = saturn_l_0 + 9.23078d-06*cos(4.85863488717d0 + 1478.8665740644d0 * t)
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

        saturn_l_1 = saturn_l_1 + 1.06247d-06*cos(3.72603149021d0 + 1478.8665740644d0 * t)
        saturn_l_1 = saturn_l_1 + 1.07754d-06*cos(2.00948137104d0 + 515.463871093d0 * t)
        saturn_l_1 = saturn_l_1 + 1.11402d-06*cos(5.47394816558d0 + 1258.4539316256d0 * t)
        saturn_l_1 = saturn_l_1 + 1.12205d-06*cos(5.78947752898d0 + 2001.4439921582d0 * t)
        saturn_l_1 = saturn_l_1 + 1.27414d-06*cos(0.44092732099d0 + 1045.1548361876d0 * t)
        saturn_l_1 = saturn_l_1 + 1.29583d-06*cos(4.01755685242d0 + 1162.4747044078d0 * t)
        saturn_l_1 = saturn_l_1 + 1.34781d-06*cos(2.57679441128d0 + 117.3198682202d0 * t)
        saturn_l_1 = saturn_l_1 + 1.35963d-06*cos(2.28594375689d0 + 10.2949407385d0 * t)
        saturn_l_1 = saturn_l_1 + 1.64554d-06*cos(2.59506733629d0 + 21.3406410024d0 * t)
        saturn_l_1 = saturn_l_1 + 1.65692d-06*cos(4.93962542677d0 + 1272.6810256272d0 * t)
        saturn_l_1 = saturn_l_1 + 1.65912d-06*cos(0.98155855964d0 + 1471.7530270636d0 * t)
        saturn_l_1 = saturn_l_1 + 2.08978d-06*cos(5.72385665981d0 + 942.062061969d0 * t)
        saturn_l_1 = saturn_l_1 + 2.10463d-06*cos(0.72305721354d0 + 728.762966531d0 * t)
        saturn_l_1 = saturn_l_1 + 2.11281d-06*cos(6.04981561093d0 + 1685.0521225016d0 * t)
        saturn_l_1 = saturn_l_1 + 2.22772d-06*cos(5.7895991983d0 + 1059.3819301892d0 * t)
        saturn_l_1 = saturn_l_1 + 2.80215d-06*cos(0.09662275953d0 + 742.9900605326d0 * t)
        saturn_l_1 = saturn_l_1 + 2.80936d-06*cos(5.74402772975d0 + 2.4476805548d0 * t)
        saturn_l_1 = saturn_l_1 + 2.86381d-06*cos(1.27836666874d0 + 1155.361157407d0 * t)
        saturn_l_1 = saturn_l_1 + 3.04622d-06*cos(5.19513094061d0 + 956.2891559706d0 * t)
        saturn_l_1 = saturn_l_1 + 3.51154d-06*cos(2.29520450945d0 + 199.0720014364d0 * t)
        saturn_l_1 = saturn_l_1 + 3.66195d-06*cos(5.97989790115d0 + 625.6701923124d0 * t)
        saturn_l_1 = saturn_l_1 + 3.88026d-06*cos(1.00343699533d0 + 412.3710968744d0 * t)
        saturn_l_1 = saturn_l_1 + 4.06568d-06*cos(0.02930653635d0 + 1368.660252845d0 * t)
        saturn_l_1 = saturn_l_1 + 4.16005d-06*cos(6.24272330144d0 + 309.2783226558d0 * t)
        saturn_l_1 = saturn_l_1 + 4.32511d-06*cos(4.61824245971d0 + 63.7358983034d0 * t)
        saturn_l_1 = saturn_l_1 + 5.16582d-06*cos(1.49190423917d0 + 838.9692877504d0 * t)
        saturn_l_1 = saturn_l_1 + 5.40811d-06*cos(3.9941043124d0 + 846.0828347512d0 * t)
        saturn_l_1 = saturn_l_1 + 5.5642d-06*cos(5.44577096117d0 + 639.897286314d0 * t)
        saturn_l_1 = saturn_l_1 + 6.70953d-06*cos(0.31771516554d0 + 426.598190876d0 * t)
        saturn_l_1 = saturn_l_1 + 7.95189d-06*cos(0.29523484791d0 + 1052.2683831884d0 * t)
        saturn_l_1 = saturn_l_1 + 9.60801d-06*cos(2.61276736239d0 + 95.9792272178d0 * t)
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

        saturn_l_2 = saturn_l_2 + 1.06029d-06*cos(2.70489490705d0 + 412.3710968744d0 * t)
        saturn_l_2 = saturn_l_2 + 1.14671d-06*cos(3.75993973035d0 + 639.897286314d0 * t)
        saturn_l_2 = saturn_l_2 + 1.19295d-06*cos(3.99037497453d0 + 199.0720014364d0 * t)
        saturn_l_2 = saturn_l_2 + 1.19972d-06*cos(2.40488837394d0 + 735.8765135318d0 * t)
        saturn_l_2 = saturn_l_2 + 1.26414d-06*cos(2.8606075107d0 + 316.3918696566d0 * t)
        saturn_l_2 = saturn_l_2 + 1.41849d-06*cos(3.59872353573d0 + 522.5774180938d0 * t)
        saturn_l_2 = saturn_l_2 + 1.6137d-06*cos(1.37967560091d0 + 11.0457002639d0 * t)
        saturn_l_2 = saturn_l_2 + 2.10863d-06*cos(4.26906727703d0 + 95.9792272178d0 * t)
        saturn_l_2 = saturn_l_2 + 2.17511d-06*cos(4.04502985994d0 + 323.5054166574d0 * t)
        saturn_l_2 = saturn_l_2 + 2.38514d-06*cos(0.89403605918d0 + 110.2063212194d0 * t)
        saturn_l_2 = saturn_l_2 + 3.02328d-06*cos(2.62217775185d0 + 419.4846438752d0 * t)
        saturn_l_2 = saturn_l_2 + 5.49157d-06*cos(5.57291771618d0 + 3.9321532631d0 * t)
        saturn_l_2 = saturn_l_2 + 6.22537d-06*cos(3.84071578103d0 + 206.1855484372d0 * t)
        saturn_l_2 = saturn_l_2 + 8.58436d-06*cos(2.91574219662d0 + 103.0927742186d0 * t)
        saturn_l_2 = saturn_l_2 + 1.020168d-05*cos(0.63355848198d0 + 3.1813937377d0 * t)
        saturn_l_2 = saturn_l_2 + 4.235353d-05*cos(1.04508642603d0 + 14.2270940016d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00036659741d0*cos(0.0d0 + 0.0d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00116235667d0*cos(1.17971682406d0 + 7.1135470008d0 * t)
        saturn_l_2=saturn_l_2*t*t;

        saturn_l_3 = saturn_l_3 + 1.6537d-06*cos(5.11701152226d0 + 3.1813937377d0 * t)
        saturn_l_3 = saturn_l_3 + 1.153866d-05*cos(5.61897587419d0 + 14.2270940016d0 * t)
        saturn_l_3 = saturn_l_3 + 0.00016010484d0*cos(5.73932776276d0 + 7.1135470008d0 * t)
        saturn_l_3=saturn_l_3*t*t*t;

        saturn_l_4 = saturn_l_4 + 2.34793d-06*cos(3.90186602545d0 + 14.2270940016d0 * t)
        saturn_l_4 = saturn_l_4 + 1.658821d-05*cos(3.99816906699d0 + 7.1135470008d0 * t)
        saturn_l_4=saturn_l_4*t*t*t*t;

        saturn_l_5 = saturn_l_5 + 1.23289d-06*cos(2.25871880597d0 + 7.1135470008d0 * t)
        saturn_l_5=saturn_l_5*t*t*t*t*t;

        r = saturn_l_5+saturn_l_4+saturn_l_3+saturn_l_2+saturn_l_1+saturn_l_0
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

        saturn_p_0 = saturn_p_0 + 1.13522d-06*cos(4.79175348459d0 + 529.6909650946d0 * t)
        saturn_p_0 = saturn_p_0 + 1.16694d-06*cos(0.92102741135d0 + 103.0927742186d0 * t)
        saturn_p_0 = saturn_p_0 + 1.40344d-06*cos(5.57422183151d0 + 11.0457002639d0 * t)
        saturn_p_0 = saturn_p_0 + 1.45216d-06*cos(4.67413481851d0 + 632.7837393132d0 * t)
        saturn_p_0 = saturn_p_0 + 1.67432d-06*cos(4.65172630223d0 + 206.1855484372d0 * t)
        saturn_p_0 = saturn_p_0 + 2.29208d-06*cos(4.24753242234d0 + 426.598190876d0 * t)
        saturn_p_0 = saturn_p_0 + 3.26099d-06*cos(0.82100383896d0 + 742.9900605326d0 * t)
        saturn_p_0 = saturn_p_0 + 5.38951d-06*cos(4.5293487754d0 + 110.2063212194d0 * t)
        saturn_p_0 = saturn_p_0 + 8.44341d-06*cos(2.43897824481d0 + 316.3918696566d0 * t)
        saturn_p_0 = saturn_p_0 + 2.063161d-05*cos(3.60620665217d0 + 7.1135470008d0 * t)
        saturn_p_0 = saturn_p_0 + 0.01989147301d0*cos(0.0d0 + 0.0d0 * t)

        saturn_p_1 = saturn_p_1 + 0.00059439766d0*cos(0.0d0 + 0.0d0 * t)
        saturn_p_1=saturn_p_1*t;

        saturn_p_2 = saturn_p_2 + 5.235117d-05*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_p_2=saturn_p_2*t*t;

        saturn_p_3 = saturn_p_3 + 1.27219d-06*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_p_3=saturn_p_3*t*t*t;

        r = saturn_p_3+saturn_p_2+saturn_p_1+saturn_p_0
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

        saturn_q_0 = saturn_q_0 + 1.37921d-06*cos(0.74487740905d0 + 11.0457002639d0 * t)
        saturn_q_0 = saturn_q_0 + 1.59124d-06*cos(2.91397344844d0 + 206.1855484372d0 * t)
        saturn_q_0 = saturn_q_0 + 1.7152d-06*cos(2.73224195928d0 + 213.299095438d0 * t)
        saturn_q_0 = saturn_q_0 + 1.78454d-06*cos(3.8052289083d0 + 632.7837393132d0 * t)
        saturn_q_0 = saturn_q_0 + 2.25526d-06*cos(5.88404236515d0 + 426.598190876d0 * t)
        saturn_q_0 = saturn_q_0 + 3.27418d-06*cos(2.37123568631d0 + 742.9900605326d0 * t)
        saturn_q_0 = saturn_q_0 + 3.43011d-06*cos(6.23021828176d0 + 103.0927742186d0 * t)
        saturn_q_0 = saturn_q_0 + 5.23648d-06*cos(6.19863716554d0 + 110.2063212194d0 * t)
        saturn_q_0 = saturn_q_0 + 7.28561d-06*cos(0.3873790763d0 + 316.3918696566d0 * t)
        saturn_q_0 = saturn_q_0 + 2.058688d-05*cos(5.2332061164d0 + 7.1135470008d0 * t)
        saturn_q_0 = saturn_q_0 + 0.00871747436d0*cos(3.14159265359d0 + 0.0d0 * t)

        saturn_q_1 = saturn_q_1 + 1.05708d-06*cos(2.50888031392d0 + 316.3918696566d0 * t)
        saturn_q_1 = saturn_q_1 + 0.00080171499d0*cos(0.0d0 + 0.0d0 * t)
        saturn_q_1=saturn_q_1*t;

        saturn_q_2 = saturn_q_2 + 4.142282d-05*cos(0.0d0 + 0.0d0 * t)
        saturn_q_2=saturn_q_2*t*t;

        saturn_q_3 = saturn_q_3 + 1.96049d-06*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_q_3=saturn_q_3*t*t*t;

        r = saturn_q_3+saturn_q_2+saturn_q_1+saturn_q_0
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

        uranus_a_0 = uranus_a_0 + 1.00004d-06*cos(0.34773556215d0 + 0.9632078465d0 * t)
        uranus_a_0 = uranus_a_0 + 1.00606d-06*cos(1.73197976209d0 + 696.5196376166d0 * t)
        uranus_a_0 = uranus_a_0 + 1.00702d-06*cos(4.33362152604d0 + 971.1069508032d0 * t)
        uranus_a_0 = uranus_a_0 + 1.00816d-06*cos(5.41376384918d0 + 160.6088973985d0 * t)
        uranus_a_0 = uranus_a_0 + 1.02597d-06*cos(0.07604375555d0 + 761.7400086283d0 * t)
        uranus_a_0 = uranus_a_0 + 1.04887d-06*cos(2.19964078934d0 + 248.4631856592d0 * t)
        uranus_a_0 = uranus_a_0 + 1.05733d-06*cos(6.03856273135d0 + 129.9194771616d0 * t)
        uranus_a_0 = uranus_a_0 + 1.06199d-06*cos(2.60482427747d0 + 980.6681783588d0 * t)
        uranus_a_0 = uranus_a_0 + 1.06355d-06*cos(5.36027875866d0 + 703.6331846174d0 * t)
        uranus_a_0 = uranus_a_0 + 1.06915d-06*cos(4.31466830934d0 + 7.1135470008d0 * t)
        uranus_a_0 = uranus_a_0 + 1.07738d-06*cos(2.64282784778d0 + 144.1465711632d0 * t)
        uranus_a_0 = uranus_a_0 + 1.08567d-06*cos(2.42525519235d0 + 987.5692770385d0 * t)
        uranus_a_0 = uranus_a_0 + 1.09376d-06*cos(1.9035234589d0 + 343.4792050305d0 * t)
        uranus_a_0 = uranus_a_0 + 1.1094d-06*cos(5.4034997759d0 + 232.0490435337d0 * t)
        uranus_a_0 = uranus_a_0 + 1.11226d-06*cos(0.72471163585d0 + 132.8884225782d0 * t)
        uranus_a_0 = uranus_a_0 + 1.1137d-06*cos(2.73705171085d0 + 323.5054166574d0 * t)
        uranus_a_0 = uranus_a_0 + 1.11427d-06*cos(5.26499562533d0 + 14.0146456805d0 * t)
        uranus_a_0 = uranus_a_0 + 1.13517d-06*cos(3.61230065075d0 + 147.1155165798d0 * t)
        uranus_a_0 = uranus_a_0 + 1.15014d-06*cos(0.72797764839d0 + 192.6921676185d0 * t)
        uranus_a_0 = uranus_a_0 + 1.15329d-06*cos(0.34873320574d0 + 619.2903584945d0 * t)
        uranus_a_0 = uranus_a_0 + 1.15382d-06*cos(4.17167167332d0 + 981.6313862053d0 * t)
        uranus_a_0 = uranus_a_0 + 1.16635d-06*cos(5.26337020924d0 + 411.620337349d0 * t)
        uranus_a_0 = uranus_a_0 + 1.16854d-06*cos(4.2260427946d0 + 105.4922706636d0 * t)
        uranus_a_0 = uranus_a_0 + 1.18787d-06*cos(2.11947165265d0 + 749.2098356561d0 * t)
        uranus_a_0 = uranus_a_0 + 1.19658d-06*cos(4.15476686563d0 + 591.9423906897d0 * t)
        uranus_a_0 = uranus_a_0 + 1.19938d-06*cos(2.98956623519d0 + 526.722019678d0 * t)
        uranus_a_0 = uranus_a_0 + 1.20391d-06*cos(5.34027666689d0 + 9988.9407505091d0 * t)
        uranus_a_0 = uranus_a_0 + 1.21198d-06*cos(2.25109877802d0 + 638.1521811748d0 * t)
        uranus_a_0 = uranus_a_0 + 1.22637d-06*cos(4.59773268701d0 + 763.4369296577d0 * t)
        uranus_a_0 = uranus_a_0 + 1.23659d-06*cos(1.454744579d0 + 258.8757464767d0 * t)
        uranus_a_0 = uranus_a_0 + 1.2373d-06*cos(0.82561819557d0 + 60.7669528868d0 * t)
        uranus_a_0 = uranus_a_0 + 1.25211d-06*cos(4.25628278217d0 + 602.9880909536d0 * t)
        uranus_a_0 = uranus_a_0 + 1.25573d-06*cos(0.88335429831d0 + 459.3627846522d0 * t)
        uranus_a_0 = uranus_a_0 + 1.25974d-06*cos(5.1319102651d0 + 594.9113361063d0 * t)
        uranus_a_0 = uranus_a_0 + 1.26015d-06*cos(3.02838800274d0 + 995.6460318858d0 * t)
        uranus_a_0 = uranus_a_0 + 1.27398d-06*cos(2.40392441093d0 + 254.9435932136d0 * t)
        uranus_a_0 = uranus_a_0 + 1.28108d-06*cos(0.02858155862d0 + 572.2292347475d0 * t)
        uranus_a_0 = uranus_a_0 + 1.28924d-06*cos(3.91761702698d0 + 6058.7310542895d0 * t)
        uranus_a_0 = uranus_a_0 + 1.29981d-06*cos(4.21666625302d0 + 477.9157907918d0 * t)
        uranus_a_0 = uranus_a_0 + 1.30098d-06*cos(4.02486856767d0 + 582.3811631341d0 * t)
        uranus_a_0 = uranus_a_0 + 1.32015d-06*cos(6.20099059676d0 + 309.2783226558d0 * t)
        uranus_a_0 = uranus_a_0 + 1.34662d-06*cos(0.91042855297d0 + 403.0223176399d0 * t)
        uranus_a_0 = uranus_a_0 + 1.34943d-06*cos(4.3974205632d0 + 621.7380390493d0 * t)
        uranus_a_0 = uranus_a_0 + 1.3586d-06*cos(3.31084926211d0 + 1134.1635287565d0 * t)
        uranus_a_0 = uranus_a_0 + 1.36576d-06*cos(5.47591918167d0 + 416.7763308895d0 * t)
        uranus_a_0 = uranus_a_0 + 1.37493d-06*cos(1.19284062475d0 + 920.8644333185d0 * t)
        uranus_a_0 = uranus_a_0 + 1.3856d-06*cos(6.13471105751d0 + 754.8389099486d0 * t)
        uranus_a_0 = uranus_a_0 + 1.3898d-06*cos(5.01465557869d0 + 1008.9793540101d0 * t)
        uranus_a_0 = uranus_a_0 + 1.40467d-06*cos(3.90535598336d0 + 290.2195580194d0 * t)
        uranus_a_0 = uranus_a_0 + 1.41136d-06*cos(5.03701527665d0 + 450.4559484024d0 * t)
        uranus_a_0 = uranus_a_0 + 1.42287d-06*cos(3.18532081632d0 + 1512.8068240082d0 * t)
        uranus_a_0 = uranus_a_0 + 1.44257d-06*cos(2.97182693424d0 + 745.277682393d0 * t)
        uranus_a_0 = uranus_a_0 + 1.45662d-06*cos(4.38364266457d0 + 464.4705940829d0 * t)
        uranus_a_0 = uranus_a_0 + 1.47078d-06*cos(6.10843659205d0 + 77.7505439839d0 * t)
        uranus_a_0 = uranus_a_0 + 1.47242d-06*cos(3.32284416751d0 + 438.2982824457d0 * t)
        uranus_a_0 = uranus_a_0 + 1.47438d-06*cos(1.81658884449d0 + 155.7829722581d0 * t)
        uranus_a_0 = uranus_a_0 + 1.50113d-06*cos(2.34592164612d0 + 513.079881013d0 * t)
        uranus_a_0 = uranus_a_0 + 1.50423d-06*cos(4.15721227142d0 + 1515.7757694248d0 * t)
        uranus_a_0 = uranus_a_0 + 1.51607d-06*cos(1.84693431837d0 + 175.1660598002d0 * t)
        uranus_a_0 = uranus_a_0 + 1.51724d-06*cos(0.74817896594d0 + 610.6923387854d0 * t)
        uranus_a_0 = uranus_a_0 + 1.56453d-06*cos(1.94511005572d0 + 1097.0942747017d0 * t)
        uranus_a_0 = uranus_a_0 + 1.56714d-06*cos(4.05438895635d0 + 405.9912630565d0 * t)
        uranus_a_0 = uranus_a_0 + 1.58078d-06*cos(2.89696908152d0 + 2349.3284312038d0 * t)
        uranus_a_0 = uranus_a_0 + 1.5875d-06*cos(3.70718131163d0 + 1321.4390704036d0 * t)
        uranus_a_0 = uranus_a_0 + 1.5947d-06*cos(4.65787115267d0 + 1300.9922012785d0 * t)
        uranus_a_0 = uranus_a_0 + 1.59946d-06*cos(2.0658083062d0 + 51.2057253312d0 * t)
        uranus_a_0 = uranus_a_0 + 1.62677d-06*cos(1.32161020917d0 + 1385.174968707d0 * t)
        uranus_a_0 = uranus_a_0 + 1.63943d-06*cos(0.21614948461d0 + 1140.38330388d0 * t)
        uranus_a_0 = uranus_a_0 + 1.67011d-06*cos(2.15411197711d0 + 1363.2436268736d0 * t)
        uranus_a_0 = uranus_a_0 + 1.67446d-06*cos(5.51767864305d0 + 460.5384408198d0 * t)
        uranus_a_0 = uranus_a_0 + 1.67748d-06*cos(5.56448472682d0 + 1310.3933701397d0 * t)
        uranus_a_0 = uranus_a_0 + 1.68255d-06*cos(2.61680346444d0 + 446.3113468182d0 * t)
        uranus_a_0 = uranus_a_0 + 1.68323d-06*cos(5.11055612173d0 + 1521.4048437173d0 * t)
        uranus_a_0 = uranus_a_0 + 1.72402d-06*cos(2.12104910083d0 + 5.4166259714d0 * t)
        uranus_a_0 = uranus_a_0 + 1.75387d-06*cos(4.34617952916d0 + 685.4739373527d0 * t)
        uranus_a_0 = uranus_a_0 + 1.7578d-06*cos(4.6354403034d0 + 101.8689339412d0 * t)
        uranus_a_0 = uranus_a_0 + 1.75816d-06*cos(5.78966854899d0 + 20.6069278195d0 * t)
        uranus_a_0 = uranus_a_0 + 1.7663d-06*cos(0.62094948515d0 + 838.218528225d0 * t)
        uranus_a_0 = uranus_a_0 + 1.77419d-06*cos(4.97157979095d0 + 28.3111756513d0 * t)
        uranus_a_0 = uranus_a_0 + 1.7782d-06*cos(0.19315636365d0 + 463.5073862364d0 * t)
        uranus_a_0 = uranus_a_0 + 1.78574d-06*cos(3.59941170147d0 + 449.2802922348d0 * t)
        uranus_a_0 = uranus_a_0 + 1.79437d-06*cos(4.28526663214d0 + 469.1364605289d0 * t)
        uranus_a_0 = uranus_a_0 + 1.79672d-06*cos(5.123724145d0 + 902.7051860538d0 * t)
        uranus_a_0 = uranus_a_0 + 1.79887d-06*cos(1.75243496692d0 + 829.6205085159d0 * t)
        uranus_a_0 = uranus_a_0 + 1.80903d-06*cos(1.30983605236d0 + 795.6802585721d0 * t)
        uranus_a_0 = uranus_a_0 + 1.80988d-06*cos(3.10287488441d0 + 1366.2125722902d0 * t)
        uranus_a_0 = uranus_a_0 + 1.82831d-06*cos(0.61872986001d0 + 842.1506814881d0 * t)
        uranus_a_0 = uranus_a_0 + 1.83883d-06*cos(2.27919252496d0 + 836.5216071956d0 * t)
        uranus_a_0 = uranus_a_0 + 1.84878d-06*cos(4.64576200113d0 + 1012.9115072732d0 * t)
        uranus_a_0 = uranus_a_0 + 1.85168d-06*cos(4.03208394325d0 + 68.8437077341d0 * t)
        uranus_a_0 = uranus_a_0 + 1.85864d-06*cos(4.11845083007d0 + 823.9914342234d0 * t)
        uranus_a_0 = uranus_a_0 + 1.89649d-06*cos(5.05199442596d0 + 78.7137518304d0 * t)
        uranus_a_0 = uranus_a_0 + 1.90448d-06*cos(1.42448216295d0 + 152.7445908723d0 * t)
        uranus_a_0 = uranus_a_0 + 1.92026d-06*cos(0.52345005769d0 + 881.5075574033d0 * t)
        uranus_a_0 = uranus_a_0 + 1.92273d-06*cos(4.04917962744d0 + 441.2672278623d0 * t)
        uranus_a_0 = uranus_a_0 + 1.92858d-06*cos(2.50453501982d0 + 916.9322800554d0 * t)
        uranus_a_0 = uranus_a_0 + 1.92864d-06*cos(2.64822322454d0 + 832.5894539325d0 * t)
        uranus_a_0 = uranus_a_0 + 1.9325d-06*cos(6.11367017443d0 + 120.358249606d0 * t)
        uranus_a_0 = uranus_a_0 + 1.99174d-06*cos(3.47576174431d0 + 273.1028404783d0 * t)
        uranus_a_0 = uranus_a_0 + 2.01476d-06*cos(0.73975634882d0 + 248.7238180901d0 * t)
        uranus_a_0 = uranus_a_0 + 2.03793d-06*cos(5.37943294465d0 + 10593.413314171d0 * t)
        uranus_a_0 = uranus_a_0 + 2.04569d-06*cos(2.76031107706d0 + 384.0599212231d0 * t)
        uranus_a_0 = uranus_a_0 + 2.0458d-06*cos(5.02315860536d0 + 78188.92782615528d0 * t)
        uranus_a_0 = uranus_a_0 + 2.04826d-06*cos(3.12731767423d0 + 483.2205421786d0 * t)
        uranus_a_0 = uranus_a_0 + 2.05055d-06*cos(3.72856225139d0 + 253.5709950899d0 * t)
        uranus_a_0 = uranus_a_0 + 2.05118d-06*cos(2.74410622677d0 + 25938.3399444396d0 * t)
        uranus_a_0 = uranus_a_0 + 2.0532d-06*cos(4.45287809427d0 + 148.0787244263d0 * t)
        uranus_a_0 = uranus_a_0 + 2.0591d-06*cos(5.16335803263d0 + 84.3428261229d0 * t)
        uranus_a_0 = uranus_a_0 + 2.08103d-06*cos(2.06989100085d0 + 601.5036182453d0 * t)
        uranus_a_0 = uranus_a_0 + 2.08401d-06*cos(2.84542354695d0 + 624.919432787d0 * t)
        uranus_a_0 = uranus_a_0 + 2.10611d-06*cos(5.53328524088d0 + 264.5048207692d0 * t)
        uranus_a_0 = uranus_a_0 + 2.10998d-06*cos(5.99873402032d0 + 41.1019810544d0 * t)
        uranus_a_0 = uranus_a_0 + 2.12892d-06*cos(4.54487834588d0 + 3191.0492295652d0 * t)
        uranus_a_0 = uranus_a_0 + 2.16261d-06*cos(3.95674681386d0 + 6663.2036179514d0 * t)
        uranus_a_0 = uranus_a_0 + 2.20863d-06*cos(5.30268182646d0 + 480.7728616238d0 * t)
        uranus_a_0 = uranus_a_0 + 2.21847d-06*cos(2.00976903997d0 + 211.8146227297d0 * t)
        uranus_a_0 = uranus_a_0 + 2.26926d-06*cos(1.38041140336d0 + 99.1606209555d0 * t)
        uranus_a_0 = uranus_a_0 + 2.28846d-06*cos(3.15322477325d0 + 401.6497195162d0 * t)
        uranus_a_0 = uranus_a_0 + 2.30532d-06*cos(3.46087121443d0 + 66.70484372d0 * t)
        uranus_a_0 = uranus_a_0 + 2.34751d-06*cos(4.52047844056d0 + 112.9146342051d0 * t)
        uranus_a_0 = uranus_a_0 + 2.36637d-06*cos(4.452534404d0 + 616.3214130779d0 * t)
        uranus_a_0 = uranus_a_0 + 2.37035d-06*cos(0.7047552623d0 + 369.0820676961d0 * t)
        uranus_a_0 = uranus_a_0 + 2.38229d-06*cos(1.29900644308d0 + 606.7601855223d0 * t)
        uranus_a_0 = uranus_a_0 + 2.38629d-06*cos(3.1532264789d0 + 312.4597163935d0 * t)
        uranus_a_0 = uranus_a_0 + 2.40866d-06*cos(4.58404244642d0 + 5.9378908332d0 * t)
        uranus_a_0 = uranus_a_0 + 2.42147d-06*cos(1.50557050392d0 + 2199.7652340692d0 * t)
        uranus_a_0 = uranus_a_0 + 2.44101d-06*cos(1.11699789116d0 + 450.9772132642d0 * t)
        uranus_a_0 = uranus_a_0 + 2.45797d-06*cos(1.66986697587d0 + 440.6822725257d0 * t)
        uranus_a_0 = uranus_a_0 + 2.47664d-06*cos(4.62876944682d0 + 833.552661779d0 * t)
        uranus_a_0 = uranus_a_0 + 2.50858d-06*cos(3.11318757446d0 + 252.6559713532d0 * t)
        uranus_a_0 = uranus_a_0 + 2.51506d-06*cos(2.18165568786d0 + 476.4313180835d0 * t)
        uranus_a_0 = uranus_a_0 + 2.60176d-06*cos(1.70808602301d0 + 1190.7858800591d0 * t)
        uranus_a_0 = uranus_a_0 + 2.65728d-06*cos(0.76568783379d0 + 116.4260963429d0 * t)
        uranus_a_0 = uranus_a_0 + 2.66605d-06*cos(3.99906430854d0 + 1670.0742689746d0 * t)
        uranus_a_0 = uranus_a_0 + 2.8137d-06*cos(3.88193875379d0 + 404.6186649328d0 * t)
        uranus_a_0 = uranus_a_0 + 2.85679d-06*cos(3.3688534049d0 + 151.0476698429d0 * t)
        uranus_a_0 = uranus_a_0 + 2.85892d-06*cos(0.25880492939d0 + 958.576777831d0 * t)
        uranus_a_0 = uranus_a_0 + 2.88154d-06*cos(5.37279805359d0 + 14.977853527d0 * t)
        uranus_a_0 = uranus_a_0 + 2.89832d-06*cos(1.33323331826d0 + 377.1588225434d0 * t)
        uranus_a_0 = uranus_a_0 + 2.93427d-06*cos(2.57672995115d0 + 9683.5945811164d0 * t)
        uranus_a_0 = uranus_a_0 + 2.96917d-06*cos(2.0071455877d0 + 1182.9215735329d0 * t)
        uranus_a_0 = uranus_a_0 + 2.99221d-06*cos(3.15603944378d0 + 419.7452763061d0 * t)
        uranus_a_0 = uranus_a_0 + 2.99706d-06*cos(3.55030028268d0 + 216.9224321604d0 * t)
        uranus_a_0 = uranus_a_0 + 3.07072d-06*cos(4.99610713753d0 + 472.1748419147d0 * t)
        uranus_a_0 = uranus_a_0 + 3.0844d-06*cos(5.90926832502d0 + 59.8037450403d0 * t)
        uranus_a_0 = uranus_a_0 + 3.11006d-06*cos(1.15400097918d0 + 5753.3848848968d0 * t)
        uranus_a_0 = uranus_a_0 + 3.18502d-06*cos(2.48678474371d0 + 267.4737661858d0 * t)
        uranus_a_0 = uranus_a_0 + 3.20706d-06*cos(4.36311379306d0 + 911.3032057629d0 * t)
        uranus_a_0 = uranus_a_0 + 3.27561d-06*cos(0.64703971716d0 + 308.3151148093d0 * t)
        uranus_a_0 = uranus_a_0 + 3.27849d-06*cos(0.93444854044d0 + 1507.1777497157d0 * t)
        uranus_a_0 = uranus_a_0 + 3.29519d-06*cos(4.85787190527d0 + 20351.7894938547d0 * t)
        uranus_a_0 = uranus_a_0 + 3.30063d-06*cos(0.0957530886d0 + 1404.0849754971d0 * t)
        uranus_a_0 = uranus_a_0 + 3.30318d-06*cos(5.19244460885d0 + 699.7010313543d0 * t)
        uranus_a_0 = uranus_a_0 + 3.31662d-06*cos(1.23704665492d0 + 177.8743727859d0 * t)
        uranus_a_0 = uranus_a_0 + 3.32925d-06*cos(6.21300267467d0 + 24.3790223882d0 * t)
        uranus_a_0 = uranus_a_0 + 3.33339d-06*cos(2.8890030427d0 + 668.2084619653d0 * t)
        uranus_a_0 = uranus_a_0 + 3.37173d-06*cos(3.86402359449d0 + 1171.875873269d0 * t)
        uranus_a_0 = uranus_a_0 + 3.42419d-06*cos(3.31973818817d0 + 870.4618571394d0 * t)
        uranus_a_0 = uranus_a_0 + 3.44083d-06*cos(0.05430252843d0 + 691.1030116452d0 * t)
        uranus_a_0 = uranus_a_0 + 3.48196d-06*cos(1.07268391159d0 + 486.4019359163d0 * t)
        uranus_a_0 = uranus_a_0 + 3.48204d-06*cos(0.25308022317d0 + 661.0949149645d0 * t)
        uranus_a_0 = uranus_a_0 + 3.5511d-06*cos(2.9831240994d0 + 365.0011565867d0 * t)
        uranus_a_0 = uranus_a_0 + 3.56708d-06*cos(5.06216476634d0 + 10137.0194749354d0 * t)
        uranus_a_0 = uranus_a_0 + 3.61251d-06*cos(0.97053203724d0 + 694.0719570618d0 * t)
        uranus_a_0 = uranus_a_0 + 3.64211d-06*cos(2.79078114663d0 + 490.0734567485d0 * t)
        uranus_a_0 = uranus_a_0 + 3.64934d-06*cos(5.86432577169d0 + 1246.6574718363d0 * t)
        uranus_a_0 = uranus_a_0 + 3.72156d-06*cos(3.90954770244d0 + 2274.5468326365d0 * t)
        uranus_a_0 = uranus_a_0 + 3.74292d-06*cos(3.42022116403d0 + 1123.1178284926d0 * t)
        uranus_a_0 = uranus_a_0 + 3.7706d-06*cos(6.03621943881d0 + 10139.988420352d0 * t)
        uranus_a_0 = uranus_a_0 + 3.78689d-06*cos(3.6395235538d0 + 6206.8097787158d0 * t)
        uranus_a_0 = uranus_a_0 + 3.92342d-06*cos(5.91445546285d0 + 468.2426886516d0 * t)
        uranus_a_0 = uranus_a_0 + 3.93449d-06*cos(5.94048906045d0 + 657.1627617014d0 * t)
        uranus_a_0 = uranus_a_0 + 3.93846d-06*cos(3.92558666174d0 + 125.9873238985d0 * t)
        uranus_a_0 = uranus_a_0 + 3.94162d-06*cos(1.1854698718d0 + 1617.3840709351d0 * t)
        uranus_a_0 = uranus_a_0 + 3.94639d-06*cos(2.77473231786d0 + 477.8039162072d0 * t)
        uranus_a_0 = uranus_a_0 + 3.97519d-06*cos(5.42957330685d0 + 54.1746707478d0 * t)
        uranus_a_0 = uranus_a_0 + 4.00228d-06*cos(4.61354662741d0 + 6209.7787241324d0 * t)
        uranus_a_0 = uranus_a_0 + 4.01781d-06*cos(3.01080838383d0 + 39.3568759152d0 * t)
        uranus_a_0 = uranus_a_0 + 4.06007d-06*cos(3.71353835775d0 + 367.9701020033d0 * t)
        uranus_a_0 = uranus_a_0 + 4.08949d-06*cos(5.76810327546d0 + 778.4147831847d0 * t)
        uranus_a_0 = uranus_a_0 + 4.12396d-06*cos(3.83385189214d0 + 32.1951448046d0 * t)
        uranus_a_0 = uranus_a_0 + 4.13648d-06*cos(1.06055666592d0 + 6606.4432548323d0 * t)
        uranus_a_0 = uranus_a_0 + 4.20284d-06*cos(2.36212911538d0 + 806.725958836d0 * t)
        uranus_a_0 = uranus_a_0 + 4.21396d-06*cos(1.91100545924d0 + 564.8550553158d0 * t)
        uranus_a_0 = uranus_a_0 + 4.21458d-06*cos(2.01676320141d0 + 439.782755154d0 * t)
        uranus_a_0 = uranus_a_0 + 4.27451d-06*cos(4.55454192618d0 + 458.8415197904d0 * t)
        uranus_a_0 = uranus_a_0 + 4.39804d-06*cos(3.37028139961d0 + 180.2738692309d0 * t)
        uranus_a_0 = uranus_a_0 + 4.46368d-06*cos(3.75866945815d0 + 303.8616966844d0 * t)
        uranus_a_0 = uranus_a_0 + 4.70976d-06*cos(3.31388616877d0 + 333.657345044d0 * t)
        uranus_a_0 = uranus_a_0 + 4.74116d-06*cos(4.71972522328d0 + 142.4496501338d0 * t)
        uranus_a_0 = uranus_a_0 + 4.79191d-06*cos(5.69840796448d0 + 3.1813937377d0 * t)
        uranus_a_0 = uranus_a_0 + 4.83059d-06*cos(1.4805565376d0 + 1894.4190646765d0 * t)
        uranus_a_0 = uranus_a_0 + 4.83664d-06*cos(3.95831174d0 + 342.2553647531d0 * t)
        uranus_a_0 = uranus_a_0 + 5.0494d-06*cos(5.15266720026d0 + 213.299095438d0 * t)
        uranus_a_0 = uranus_a_0 + 5.15585d-06*cos(5.35104403247d0 + 38.1330356378d0 * t)
        uranus_a_0 = uranus_a_0 + 5.17598d-06*cos(4.85865676666d0 + 820.0592809603d0 * t)
        uranus_a_0 = uranus_a_0 + 5.18477d-06*cos(0.55305544244d0 + 908.3342603463d0 * t)
        uranus_a_0 = uranus_a_0 + 5.31906d-06*cos(1.51319397781d0 + 173.9422195228d0 * t)
        uranus_a_0 = uranus_a_0 + 5.42442d-06*cos(0.3095330272d0 + 1044.4040766622d0 * t)
        uranus_a_0 = uranus_a_0 + 5.42661d-06*cos(5.25873046726d0 + 288.0806940053d0 * t)
        uranus_a_0 = uranus_a_0 + 5.50287d-06*cos(2.81247721823d0 + 328.3525936572d0 * t)
        uranus_a_0 = uranus_a_0 + 5.51991d-06*cos(4.39056356979d0 + 18.1592472647d0 * t)
        uranus_a_0 = uranus_a_0 + 5.52304d-06*cos(6.2423724835d0 + 846.0828347512d0 * t)
        uranus_a_0 = uranus_a_0 + 5.61194d-06*cos(0.87674083961d0 + 344.9636777388d0 * t)
        uranus_a_0 = uranus_a_0 + 5.6628d-06*cos(5.62548151225d0 + 2.4476805548d0 * t)
        uranus_a_0 = uranus_a_0 + 5.74795d-06*cos(3.54548723058d0 + 331.3215390738d0 * t)
        uranus_a_0 = uranus_a_0 + 5.77925d-06*cos(0.43393432694d0 + 103.0927742186d0 * t)
        uranus_a_0 = uranus_a_0 + 5.86427d-06*cos(5.58181973733d0 + 347.8844390456d0 * t)
        uranus_a_0 = uranus_a_0 + 5.96933d-06*cos(1.5743869622d0 + 491.5579294568d0 * t)
        uranus_a_0 = uranus_a_0 + 5.98726d-06*cos(3.48880556257d0 + 561.1835344836d0 * t)
        uranus_a_0 = uranus_a_0 + 6.12507d-06*cos(2.34810374937d0 + 141.4864422873d0 * t)
        uranus_a_0 = uranus_a_0 + 6.26899d-06*cos(4.56927011535d0 + 8.0767548473d0 * t)
        uranus_a_0 = uranus_a_0 + 6.30536d-06*cos(0.61792428668d0 + 546.956440482d0 * t)
        uranus_a_0 = uranus_a_0 + 6.36249d-06*cos(5.86694293792d0 + 1439.5096981492d0 * t)
        uranus_a_0 = uranus_a_0 + 6.38878d-06*cos(4.64616017877d0 + 552.5855147745d0 * t)
        uranus_a_0 = uranus_a_0 + 6.45937d-06*cos(1.10323475334d0 + 339.2864193365d0 * t)
        uranus_a_0 = uranus_a_0 + 6.54267d-06*cos(3.18760919979d0 + 143.6253063014d0 * t)
        uranus_a_0 = uranus_a_0 + 6.55836d-06*cos(5.58147909947d0 + 555.5544601911d0 * t)
        uranus_a_0 = uranus_a_0 + 6.56828d-06*cos(4.25455832859d0 + 329.7251917809d0 * t)
        uranus_a_0 = uranus_a_0 + 6.61537d-06*cos(4.16376760606d0 + 135.5485514541d0 * t)
        uranus_a_0 = uranus_a_0 + 6.65216d-06*cos(4.36882249439d0 + 418.2608035978d0 * t)
        uranus_a_0 = uranus_a_0 + 6.72193d-06*cos(1.63082724931d0 + 195.1398481733d0 * t)
        uranus_a_0 = uranus_a_0 + 6.74509d-06*cos(2.16745069056d0 + 1033.3583763983d0 * t)
        uranus_a_0 = uranus_a_0 + 6.98195d-06*cos(5.86316962233d0 + 230.5645708254d0 * t)
        uranus_a_0 = uranus_a_0 + 7.06757d-06*cos(1.85129154029d0 + 403.1341922245d0 * t)
        uranus_a_0 = uranus_a_0 + 7.61416d-06*cos(1.92764790959d0 + 350.3321196004d0 * t)
        uranus_a_0 = uranus_a_0 + 7.66014d-06*cos(1.67308750445d0 + 134.5853436076d0 * t)
        uranus_a_0 = uranus_a_0 + 7.88637d-06*cos(0.93707881274d0 + 128.9562693151d0 * t)
        uranus_a_0 = uranus_a_0 + 7.90752d-06*cos(2.95169196469d0 + 353.301065017d0 * t)
        uranus_a_0 = uranus_a_0 + 7.92679d-06*cos(3.37730256352d0 + 294.6729761443d0 * t)
        uranus_a_0 = uranus_a_0 + 8.18886d-06*cos(4.13466376217d0 + 1108.1399749656d0 * t)
        uranus_a_0 = uranus_a_0 + 8.28399d-06*cos(2.59485918227d0 + 1215.1649024473d0 * t)
        uranus_a_0 = uranus_a_0 + 8.5238d-06*cos(2.64120436717d0 + 291.7040307277d0 * t)
        uranus_a_0 = uranus_a_0 + 8.52846d-06*cos(1.74248893496d0 + 528.2064923863d0 * t)
        uranus_a_0 = uranus_a_0 + 8.54746d-06*cos(1.56173305287d0 + 731.9443602687d0 * t)
        uranus_a_0 = uranus_a_0 + 8.61143d-06*cos(2.51223186755d0 + 12491.3701014155d0 * t)
        uranus_a_0 = uranus_a_0 + 8.87562d-06*cos(0.09628151637d0 + 1744.8558675419d0 * t)
        uranus_a_0 = uranus_a_0 + 8.94214d-06*cos(1.97240813679d0 + 52101.02468458109d0 * t)
        uranus_a_0 = uranus_a_0 + 9.02737d-06*cos(2.98142681436d0 + 383.0967133766d0 * t)
        uranus_a_0 = uranus_a_0 + 9.29215d-06*cos(3.17883630744d0 + 681.5417840896d0 * t)
        uranus_a_0 = uranus_a_0 + 9.61738d-06*cos(4.89942146297d0 + 905.8865797915d0 * t)
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

        uranus_a_1 = uranus_a_1 + 1.011d-06*cos(5.51219563661d0 + 450.9772132642d0 * t)
        uranus_a_1 = uranus_a_1 + 1.02461d-06*cos(0.79257850135d0 + 2.4476805548d0 * t)
        uranus_a_1 = uranus_a_1 + 1.04326d-06*cos(2.50381146346d0 + 905.8865797915d0 * t)
        uranus_a_1 = uranus_a_1 + 1.0491d-06*cos(5.9838880978d0 + 529.6909650946d0 * t)
        uranus_a_1 = uranus_a_1 + 1.05007d-06*cos(1.42232724728d0 + 518.6452648307d0 * t)
        uranus_a_1 = uranus_a_1 + 1.06158d-06*cos(0.86855736069d0 + 353.301065017d0 * t)
        uranus_a_1 = uranus_a_1 + 1.07781d-06*cos(4.13062610699d0 + 685.4739373527d0 * t)
        uranus_a_1 = uranus_a_1 + 1.07804d-06*cos(4.32707668734d0 + 33.6796175129d0 * t)
        uranus_a_1 = uranus_a_1 + 1.08644d-06*cos(6.24141792238d0 + 681.5417840896d0 * t)
        uranus_a_1 = uranus_a_1 + 1.16861d-06*cos(0.24539396568d0 + 458.8415197904d0 * t)
        uranus_a_1 = uranus_a_1 + 1.17274d-06*cos(0.56768943751d0 + 142.4496501338d0 * t)
        uranus_a_1 = uranus_a_1 + 1.25675d-06*cos(1.01659937363d0 + 329.7251917809d0 * t)
        uranus_a_1 = uranus_a_1 + 1.26017d-06*cos(4.03050743867d0 + 4.4534181249d0 * t)
        uranus_a_1 = uranus_a_1 + 1.26857d-06*cos(3.39031826403d0 + 108.4612160802d0 * t)
        uranus_a_1 = uranus_a_1 + 1.2723d-06*cos(0.54423127122d0 + 472.1748419147d0 * t)
        uranus_a_1 = uranus_a_1 + 1.31715d-06*cos(2.24765096766d0 + 65.2203710117d0 * t)
        uranus_a_1 = uranus_a_1 + 1.33153d-06*cos(3.51524851866d0 + 699.7010313543d0 * t)
        uranus_a_1 = uranus_a_1 + 1.34252d-06*cos(2.50899594269d0 + 760.25553592d0 * t)
        uranus_a_1 = uranus_a_1 + 1.34372d-06*cos(4.9991122536d0 + 692.5874843535d0 * t)
        uranus_a_1 = uranus_a_1 + 1.35577d-06*cos(1.86966451603d0 + 756.3233826569d0 * t)
        uranus_a_1 = uranus_a_1 + 1.36621d-06*cos(5.69097919537d0 + 486.4019359163d0 * t)
        uranus_a_1 = uranus_a_1 + 1.36793d-06*cos(3.66528713503d0 + 778.4147831847d0 * t)
        uranus_a_1 = uranus_a_1 + 1.43478d-06*cos(2.58469799301d0 + 469.1364605289d0 * t)
        uranus_a_1 = uranus_a_1 + 1.52058d-06*cos(6.00629257621d0 + 152.7445908723d0 * t)
        uranus_a_1 = uranus_a_1 + 1.67807d-06*cos(1.60865194968d0 + 2043.9822618111d0 * t)
        uranus_a_1 = uranus_a_1 + 1.69131d-06*cos(2.72512880389d0 + 986.0848043302d0 * t)
        uranus_a_1 = uranus_a_1 + 1.79171d-06*cos(0.81774988017d0 + 767.3690829208d0 * t)
        uranus_a_1 = uranus_a_1 + 1.82547d-06*cos(3.33829371832d0 + 554.0699874828d0 * t)
        uranus_a_1 = uranus_a_1 + 1.94127d-06*cos(1.97415755184d0 + 378.6432952517d0 * t)
        uranus_a_1 = uranus_a_1 + 1.96098d-06*cos(5.1531376661d0 + 333.657345044d0 * t)
        uranus_a_1 = uranus_a_1 + 1.96328d-06*cos(3.36914051155d0 + 440.6822725257d0 * t)
        uranus_a_1 = uranus_a_1 + 1.99491d-06*cos(4.55924341903d0 + 543.0242872189d0 * t)
        uranus_a_1 = uranus_a_1 + 2.02616d-06*cos(3.23495785807d0 + 71.8126531507d0 * t)
        uranus_a_1 = uranus_a_1 + 2.06492d-06*cos(1.70626830079d0 + 415.5524906121d0 * t)
        uranus_a_1 = uranus_a_1 + 2.13064d-06*cos(0.67671324707d0 + 874.3940104025d0 * t)
        uranus_a_1 = uranus_a_1 + 2.21428d-06*cos(6.03028531707d0 + 134.5853436076d0 * t)
        uranus_a_1 = uranus_a_1 + 2.2213d-06*cos(1.22635511577d0 + 62.2514255951d0 * t)
        uranus_a_1 = uranus_a_1 + 2.23453d-06*cos(0.73817338751d0 + 558.0021407459d0 * t)
        uranus_a_1 = uranus_a_1 + 2.25712d-06*cos(3.94600607615d0 + 347.8844390456d0 * t)
        uranus_a_1 = uranus_a_1 + 2.28587d-06*cos(1.59684044019d0 + 604.4725636619d0 * t)
        uranus_a_1 = uranus_a_1 + 2.29562d-06*cos(4.5574636504d0 + 241.6102710893d0 * t)
        uranus_a_1 = uranus_a_1 + 2.37662d-06*cos(4.97393709574d0 + 835.0371344873d0 * t)
        uranus_a_1 = uranus_a_1 + 2.38576d-06*cos(5.63853374559d0 + 191.2076949102d0 * t)
        uranus_a_1 = uranus_a_1 + 2.40337d-06*cos(1.80185008203d0 + 561.1835344836d0 * t)
        uranus_a_1 = uranus_a_1 + 2.44919d-06*cos(4.66296300567d0 + 137.0330241624d0 * t)
        uranus_a_1 = uranus_a_1 + 2.47954d-06*cos(2.28490962607d0 + 546.956440482d0 * t)
        uranus_a_1 = uranus_a_1 + 2.57467d-06*cos(1.82297955228d0 + 140.001969579d0 * t)
        uranus_a_1 = uranus_a_1 + 2.7998d-06*cos(5.35844968305d0 + 628.8515860501d0 * t)
        uranus_a_1 = uranus_a_1 + 2.83694d-06*cos(3.4834073218d0 + 195.1398481733d0 * t)
        uranus_a_1 = uranus_a_1 + 2.86739d-06*cos(2.47346745262d0 + 18.1592472647d0 * t)
        uranus_a_1 = uranus_a_1 + 2.89148d-06*cos(0.16630860594d0 + 617.8058857862d0 * t)
        uranus_a_1 = uranus_a_1 + 3.07245d-06*cos(5.13866888014d0 + 67.6680515665d0 * t)
        uranus_a_1 = uranus_a_1 + 3.12281d-06*cos(0.98922361804d0 + 22.0914005278d0 * t)
        uranus_a_1 = uranus_a_1 + 3.17856d-06*cos(5.65471709331d0 + 443.8636662634d0 * t)
        uranus_a_1 = uranus_a_1 + 3.28605d-06*cos(5.61937036331d0 + 70.8494453042d0 * t)
        uranus_a_1 = uranus_a_1 + 3.33283d-06*cos(3.90586117453d0 + 3.1813937377d0 * t)
        uranus_a_1 = uranus_a_1 + 3.466d-06*cos(4.59335430002d0 + 391.1734682239d0 * t)
        uranus_a_1 = uranus_a_1 + 3.48468d-06*cos(3.46005629992d0 + 490.3340891794d0 * t)
        uranus_a_1 = uranus_a_1 + 3.52685d-06*cos(1.87974825238d0 + 149.5631971346d0 * t)
        uranus_a_1 = uranus_a_1 + 3.61551d-06*cos(2.06786647056d0 + 209.3669421749d0 * t)
        uranus_a_1 = uranus_a_1 + 3.67539d-06*cos(2.88204669069d0 + 404.5067903482d0 * t)
        uranus_a_1 = uranus_a_1 + 3.97236d-06*cos(0.75328249863d0 + 85.8272988312d0 * t)
        uranus_a_1 = uranus_a_1 + 4.10896d-06*cos(4.11665107233d0 + 12.5301729722d0 * t)
        uranus_a_1 = uranus_a_1 + 4.15339d-06*cos(0.24492186792d0 + 465.9550667912d0 * t)
        uranus_a_1 = uranus_a_1 + 4.17219d-06*cos(0.09177770909d0 + 422.6660376129d0 * t)
        uranus_a_1 = uranus_a_1 + 4.31212d-06*cos(0.26899578912d0 + 387.2413149608d0 * t)
        uranus_a_1 = uranus_a_1 + 4.39296d-06*cos(0.5916458461d0 + 408.4389436113d0 * t)
        uranus_a_1 = uranus_a_1 + 4.5946d-06*cos(3.07755952629d0 + 35.1640902212d0 * t)
        uranus_a_1 = uranus_a_1 + 4.82735d-06*cos(0.77029686163d0 + 373.0142209592d0 * t)
        uranus_a_1 = uranus_a_1 + 5.06491d-06*cos(1.55874751433d0 + 138.5174968707d0 * t)
        uranus_a_1 = uranus_a_1 + 5.27342d-06*cos(3.43108423224d0 + 56.6223513026d0 * t)
        uranus_a_1 = uranus_a_1 + 5.28696d-06*cos(4.5336255724d0 + 454.9093665273d0 * t)
        uranus_a_1 = uranus_a_1 + 5.51864d-06*cos(4.92373569501d0 + 305.3461693927d0 * t)
        uranus_a_1 = uranus_a_1 + 5.84679d-06*cos(2.27504662661d0 + 277.0349937414d0 * t)
        uranus_a_1 = uranus_a_1 + 5.94083d-06*cos(0.926719505d0 + 9.5612275556d0 * t)
        uranus_a_1 = uranus_a_1 + 6.10095d-06*cos(4.75636825394d0 + 479.2883889155d0 * t)
        uranus_a_1 = uranus_a_1 + 6.38172d-06*cos(4.88448311059d0 + 909.8187330546d0 * t)
        uranus_a_1 = uranus_a_1 + 6.45549d-06*cos(4.61394971614d0 + 284.1485407422d0 * t)
        uranus_a_1 = uranus_a_1 + 6.85029d-06*cos(5.08269674579d0 + 269.9214467406d0 * t)
        uranus_a_1 = uranus_a_1 + 7.06445d-06*cos(1.21122319358d0 + 265.9892934775d0 * t)
        uranus_a_1 = uranus_a_1 + 7.3806d-06*cos(5.26539778915d0 + 358.9301393095d0 * t)
        uranus_a_1 = uranus_a_1 + 8.29539d-06*cos(3.96618872664d0 + 52.6901980395d0 * t)
        uranus_a_1 = uranus_a_1 + 9.2231d-06*cos(3.14451698529d0 + 991.7138786227d0 * t)
        uranus_a_1 = uranus_a_1 + 9.37816d-06*cos(2.54760872673d0 + 977.4867846211d0 * t)
        uranus_a_1 = uranus_a_1 + 9.59035d-06*cos(4.40352593797d0 + 453.424893819d0 * t)
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

        uranus_a_2 = uranus_a_2 + 1.03082d-06*cos(2.48975514986d0 + 373.0142209592d0 * t)
        uranus_a_2 = uranus_a_2 + 1.13325d-06*cos(2.12984486189d0 + 3.1813937377d0 * t)
        uranus_a_2 = uranus_a_2 + 1.15442d-06*cos(1.50203069335d0 + 277.0349937414d0 * t)
        uranus_a_2 = uranus_a_2 + 1.17628d-06*cos(3.43760727431d0 + 1.4844727083d0 * t)
        uranus_a_2 = uranus_a_2 + 1.32253d-06*cos(2.88702459948d0 + 284.1485407422d0 * t)
        uranus_a_2 = uranus_a_2 + 1.32729d-06*cos(5.10480791518d0 + 56.6223513026d0 * t)
        uranus_a_2 = uranus_a_2 + 1.44065d-06*cos(0.51318311977d0 + 269.9214467406d0 * t)
        uranus_a_2 = uranus_a_2 + 1.56419d-06*cos(1.82740714173d0 + 127.4717966068d0 * t)
        uranus_a_2 = uranus_a_2 + 1.64837d-06*cos(4.43169129472d0 + 977.4867846211d0 * t)
        uranus_a_2 = uranus_a_2 + 1.70727d-06*cos(1.14577968969d0 + 344.7030453079d0 * t)
        uranus_a_2 = uranus_a_2 + 1.71778d-06*cos(0.10255281212d0 + 1514.2912967165d0 * t)
        uranus_a_2 = uranus_a_2 + 1.78992d-06*cos(2.37157310974d0 + 565.1156877467d0 * t)
        uranus_a_2 = uranus_a_2 + 1.90617d-06*cos(3.92514099246d0 + 380.12776796d0 * t)
        uranus_a_2 = uranus_a_2 + 1.94339d-06*cos(3.34710604254d0 + 202.2533951741d0 * t)
        uranus_a_2 = uranus_a_2 + 1.95652d-06*cos(3.48394457833d0 + 358.9301393095d0 * t)
        uranus_a_2 = uranus_a_2 + 2.07822d-06*cos(1.5338329101d0 + 991.7138786227d0 * t)
        uranus_a_2 = uranus_a_2 + 2.67351d-06*cos(3.34337282031d0 + 74.7815985673d0 * t)
        uranus_a_2 = uranus_a_2 + 4.21519d-06*cos(0.72529300099d0 + 3.9321532631d0 * t)
        uranus_a_2 = uranus_a_2 + 7.18634d-06*cos(1.61342553396d0 + 63.7358983034d0 * t)
        uranus_a_2 = uranus_a_2 + 7.73601d-06*cos(3.25496900353d0 + 138.5174968707d0 * t)
        uranus_a_2 = uranus_a_2 + 8.83294d-06*cos(3.28870614748d0 + 351.8165923087d0 * t)
        uranus_a_2 = uranus_a_2 + 1.126662d-05*cos(6.11539656112d0 + 454.9093665273d0 * t)
        uranus_a_2 = uranus_a_2 + 1.189319d-05*cos(2.06463695518d0 + 131.4039498699d0 * t)
        uranus_a_2 = uranus_a_2 + 1.198486d-05*cos(5.92364914461d0 + 984.6003316219d0 * t)
        uranus_a_2 = uranus_a_2 + 1.216263d-05*cos(4.42512858481d0 + 145.6310438715d0 * t)
        uranus_a_2 = uranus_a_2 + 1.597619d-05*cos(2.941941902d0 + 11.0457002639d0 * t)
        uranus_a_2 = uranus_a_2 + 1.894669d-05*cos(4.9373256852d0 + 447.7958195265d0 * t)
        uranus_a_2 = uranus_a_2 + 1.897156d-05*cos(1.01368771445d0 + 462.0229135281d0 * t)
        uranus_a_2=uranus_a_2*t*t;

        uranus_a_3 = uranus_a_3 + 1.09972d-06*cos(0.81336849528d0 + 11.0457002639d0 * t)
        uranus_a_3 = uranus_a_3 + 1.63298d-06*cos(3.77839420789d0 + 131.4039498699d0 * t)
        uranus_a_3 = uranus_a_3 + 1.67973d-06*cos(2.69360050805d0 + 145.6310438715d0 * t)
        uranus_a_3 = uranus_a_3 + 2.60917d-06*cos(5.57624583446d0 + 462.0229135281d0 * t)
        uranus_a_3 = uranus_a_3 + 2.61037d-06*cos(0.37996433897d0 + 447.7958195265d0 * t)
        uranus_a_3=uranus_a_3*t*t*t;

        r = uranus_a_3+uranus_a_2+uranus_a_1+uranus_a_0
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

        uranus_h_0 = uranus_h_0 + 1.00369d-06*cos(3.88745892748d0 + 255.0554677982d0 * t)
        uranus_h_0 = uranus_h_0 + 1.01868d-06*cos(4.34036062588d0 + 391.1734682239d0 * t)
        uranus_h_0 = uranus_h_0 + 1.05959d-06*cos(2.43581118871d0 + 1364.7280995819d0 * t)
        uranus_h_0 = uranus_h_0 + 1.07775d-06*cos(4.59752912986d0 + 1052.2683831884d0 * t)
        uranus_h_0 = uranus_h_0 + 1.08437d-06*cos(3.04677711036d0 + 5.9378908332d0 * t)
        uranus_h_0 = uranus_h_0 + 1.09536d-06*cos(0.37894657162d0 + 7.1135470008d0 * t)
        uranus_h_0 = uranus_h_0 + 1.1114d-06*cos(5.37684317963d0 + 146.594251718d0 * t)
        uranus_h_0 = uranus_h_0 + 1.13646d-06*cos(5.79582708681d0 + 195.1398481733d0 * t)
        uranus_h_0 = uranus_h_0 + 1.17321d-06*cos(4.3567752542d0 + 137.0330241624d0 * t)
        uranus_h_0 = uranus_h_0 + 1.18495d-06*cos(0.1596871106d0 + 18.1592472647d0 * t)
        uranus_h_0 = uranus_h_0 + 1.18544d-06*cos(3.53703942522d0 + 685.4739373527d0 * t)
        uranus_h_0 = uranus_h_0 + 1.19198d-06*cos(1.14474703139d0 + 681.5417840896d0 * t)
        uranus_h_0 = uranus_h_0 + 1.3151d-06*cos(4.65833617821d0 + 143.6253063014d0 * t)
        uranus_h_0 = uranus_h_0 + 1.32618d-06*cos(4.72854313892d0 + 1162.4747044078d0 * t)
        uranus_h_0 = uranus_h_0 + 1.33142d-06*cos(4.75508626956d0 + 258.0244132148d0 * t)
        uranus_h_0 = uranus_h_0 + 1.3463d-06*cos(5.02669738911d0 + 151.0476698429d0 * t)
        uranus_h_0 = uranus_h_0 + 1.37146d-06*cos(4.45467480502d0 + 41.1019810544d0 * t)
        uranus_h_0 = uranus_h_0 + 1.37965d-06*cos(1.44307202693d0 + 419.4846438752d0 * t)
        uranus_h_0 = uranus_h_0 + 1.37975d-06*cos(1.06351666225d0 + 1215.1649024473d0 * t)
        uranus_h_0 = uranus_h_0 + 1.41649d-06*cos(4.61677658177d0 + 554.0699874828d0 * t)
        uranus_h_0 = uranus_h_0 + 1.4513d-06*cos(5.17020763652d0 + 109.9456887885d0 * t)
        uranus_h_0 = uranus_h_0 + 1.4718d-06*cos(2.20628721483d0 + 329.7251917809d0 * t)
        uranus_h_0 = uranus_h_0 + 1.53117d-06*cos(5.35440903135d0 + 32.1951448046d0 * t)
        uranus_h_0 = uranus_h_0 + 1.70188d-06*cos(2.82676537701d0 + 26087.9031415742d0 * t)
        uranus_h_0 = uranus_h_0 + 1.71098d-06*cos(4.63348453843d0 + 3340.6124266998d0 * t)
        uranus_h_0 = uranus_h_0 + 1.72198d-06*cos(1.23481032757d0 + 628.8515860501d0 * t)
        uranus_h_0 = uranus_h_0 + 1.7764d-06*cos(3.62006858441d0 + 200.7689224658d0 * t)
        uranus_h_0 = uranus_h_0 + 1.77696d-06*cos(3.72222094966d0 + 218.4069048687d0 * t)
        uranus_h_0 = uranus_h_0 + 1.78964d-06*cos(4.65785332382d0 + 203.7378678824d0 * t)
        uranus_h_0 = uranus_h_0 + 1.8325d-06*cos(3.02853281796d0 + 756.3233826569d0 * t)
        uranus_h_0 = uranus_h_0 + 1.83639d-06*cos(2.36737426802d0 + 303.8616966844d0 * t)
        uranus_h_0 = uranus_h_0 + 1.91111d-06*cos(1.07589057891d0 + 56.6223513026d0 * t)
        uranus_h_0 = uranus_h_0 + 2.03848d-06*cos(3.93356025977d0 + 70.8494453042d0 * t)
        uranus_h_0 = uranus_h_0 + 2.06468d-06*cos(4.06330274064d0 + 639.897286314d0 * t)
        uranus_h_0 = uranus_h_0 + 2.09234d-06*cos(3.07168625933d0 + 415.5524906121d0 * t)
        uranus_h_0 = uranus_h_0 + 2.15817d-06*cos(4.58694208679d0 + 221.3758502853d0 * t)
        uranus_h_0 = uranus_h_0 + 2.31196d-06*cos(5.87762991246d0 + 490.3340891794d0 * t)
        uranus_h_0 = uranus_h_0 + 2.31365d-06*cos(4.48348541689d0 + 106.9767433719d0 * t)
        uranus_h_0 = uranus_h_0 + 2.33501d-06*cos(0.36713613114d0 + 306.830642101d0 * t)
        uranus_h_0 = uranus_h_0 + 2.45034d-06*cos(5.74822763053d0 + 543.0242872189d0 * t)
        uranus_h_0 = uranus_h_0 + 2.73309d-06*cos(4.15202787942d0 + 148.0787244263d0 * t)
        uranus_h_0 = uranus_h_0 + 2.7377d-06*cos(0.94184685665d0 + 111.4301614968d0 * t)
        uranus_h_0 = uranus_h_0 + 2.8767d-06*cos(5.36137440916d0 + 288.0806940053d0 * t)
        uranus_h_0 = uranus_h_0 + 3.13966d-06*cos(0.54611900157d0 + 191.2076949102d0 * t)
        uranus_h_0 = uranus_h_0 + 3.14949d-06*cos(4.56222663073d0 + 1439.5096981492d0 * t)
        uranus_h_0 = uranus_h_0 + 3.19933d-06*cos(3.55603291443d0 + 181.7583419392d0 * t)
        uranus_h_0 = uranus_h_0 + 3.27077d-06*cos(3.44791341093d0 + 1289.9465010146d0 * t)
        uranus_h_0 = uranus_h_0 + 3.32927d-06*cos(4.41788131687d0 + 184.7272873558d0 * t)
        uranus_h_0 = uranus_h_0 + 3.3336d-06*cos(3.9040436112d0 + 373.0142209592d0 * t)
        uranus_h_0 = uranus_h_0 + 3.34846d-06*cos(0.51019524256d0 + 387.2413149608d0 * t)
        uranus_h_0 = uranus_h_0 + 3.83338d-06*cos(4.87582234307d0 + 230.5645708254d0 * t)
        uranus_h_0 = uranus_h_0 + 3.96056d-06*cos(6.05519304813d0 + 22.0914005278d0 * t)
        uranus_h_0 = uranus_h_0 + 4.08204d-06*cos(5.16022083727d0 + 62.2514255951d0 * t)
        uranus_h_0 = uranus_h_0 + 4.19307d-06*cos(4.11498278887d0 + 453.424893819d0 * t)
        uranus_h_0 = uranus_h_0 + 4.2146d-06*cos(2.58157772963d0 + 206.1855484372d0 * t)
        uranus_h_0 = uranus_h_0 + 4.33942d-06*cos(1.33644172237d0 + 617.8058857862d0 * t)
        uranus_h_0 = uranus_h_0 + 4.36899d-06*cos(3.38208166835d0 + 984.6003316219d0 * t)
        uranus_h_0 = uranus_h_0 + 4.39114d-06*cos(5.46151507063d0 + 220.4126424388d0 * t)
        uranus_h_0 = uranus_h_0 + 4.43108d-06*cos(6.09323417993d0 + 65.2203710117d0 * t)
        uranus_h_0 = uranus_h_0 + 4.49419d-06*cos(4.30735548424d0 + 70.3281804424d0 * t)
        uranus_h_0 = uranus_h_0 + 4.61379d-06*cos(3.85959591508d0 + 351.8165923087d0 * t)
        uranus_h_0 = uranus_h_0 + 5.15075d-06*cos(4.07257895876d0 + 404.5067903482d0 * t)
        uranus_h_0 = uranus_h_0 + 5.28061d-06*cos(2.28406207035d0 + 12.5301729722d0 * t)
        uranus_h_0 = uranus_h_0 + 5.61508d-06*cos(2.07888638339d0 + 224.3447957019d0 * t)
        uranus_h_0 = uranus_h_0 + 5.69697d-06*cos(5.92454559166d0 + 760.25553592d0 * t)
        uranus_h_0 = uranus_h_0 + 5.93777d-06*cos(3.38958648864d0 + 145.1097790097d0 * t)
        uranus_h_0 = uranus_h_0 + 6.00782d-06*cos(2.84067125521d0 + 76.2660712756d0 * t)
        uranus_h_0 = uranus_h_0 + 6.03376d-06*cos(1.83445998269d0 + 36.6485629295d0 * t)
        uranus_h_0 = uranus_h_0 + 6.22288d-06*cos(5.5460965208d0 + 85.8272988312d0 * t)
        uranus_h_0 = uranus_h_0 + 6.35838d-06*cos(0.06765205332d0 + 10063.7223490764d0 * t)
        uranus_h_0 = uranus_h_0 + 6.78013d-06*cos(4.92818007094d0 + 6133.5126528568d0 * t)
        uranus_h_0 = uranus_h_0 + 7.26524d-06*cos(6.01169901128d0 + 1589.0728952838d0 * t)
        uranus_h_0 = uranus_h_0 + 7.65246d-06*cos(0.50383227311d0 + 9.5612275556d0 * t)
        uranus_h_0 = uranus_h_0 + 7.84719d-06*cos(5.43963846099d0 + 522.5774180938d0 * t)
        uranus_h_0 = uranus_h_0 + 7.8921d-06*cos(2.04679075341d0 + 536.8045120954d0 * t)
        uranus_h_0 = uranus_h_0 + 9.70152d-06*cos(1.88555049208d0 + 73.297125859d0 * t)
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

        uranus_h_1 = uranus_h_1 + 1.24545d-06*cos(3.4346917033d0 + 305.3461693927d0 * t)
        uranus_h_1 = uranus_h_1 + 1.33009d-06*cos(5.6041685366d0 + 373.0142209592d0 * t)
        uranus_h_1 = uranus_h_1 + 1.33125d-06*cos(5.09153432987d0 + 387.2413149608d0 * t)
        uranus_h_1 = uranus_h_1 + 1.60356d-06*cos(3.72573584391d0 + 149.5631971346d0 * t)
        uranus_h_1 = uranus_h_1 + 1.69251d-06*cos(4.27404149029d0 + 206.1855484372d0 * t)
        uranus_h_1 = uranus_h_1 + 1.73035d-06*cos(1.92615950759d0 + 52.6901980395d0 * t)
        uranus_h_1 = uranus_h_1 + 1.75108d-06*cos(3.76056232907d0 + 220.4126424388d0 * t)
        uranus_h_1 = uranus_h_1 + 1.82262d-06*cos(1.06916101903d0 + 277.0349937414d0 * t)
        uranus_h_1 = uranus_h_1 + 2.09248d-06*cos(3.75122116226d0 + 127.4717966068d0 * t)
        uranus_h_1 = uranus_h_1 + 2.37367d-06*cos(3.80269438875d0 + 2.9689454166d0 * t)
        uranus_h_1 = uranus_h_1 + 2.54865d-06*cos(3.28068756544d0 + 909.8187330546d0 * t)
        uranus_h_1 = uranus_h_1 + 3.13179d-06*cos(0.85762419793d0 + 522.5774180938d0 * t)
        uranus_h_1 = uranus_h_1 + 3.15095d-06*cos(0.34507660662d0 + 536.8045120954d0 * t)
        uranus_h_1 = uranus_h_1 + 3.98374d-06*cos(2.69890772345d0 + 426.598190876d0 * t)
        uranus_h_1 = uranus_h_1 + 4.8229d-06*cos(0.82462845901d0 + 3.9321532631d0 * t)
        uranus_h_1 = uranus_h_1 + 6.71351d-06*cos(4.81869030034d0 + 1059.3819301892d0 * t)
        uranus_h_1 = uranus_h_1 + 2.977624d-05*cos(0.88815201141d0 + 11.0457002639d0 * t)
        uranus_h_1 = uranus_h_1 + 0.0007496435d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_h_1=uranus_h_1*t;

        uranus_h_2 = uranus_h_2 + 2.04698d-06*cos(5.42673320264d0 + 11.0457002639d0 * t)
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

        uranus_k_0 = uranus_k_0 + 1.05634d-06*cos(2.8258523126d0 + 137.0330241624d0 * t)
        uranus_k_0 = uranus_k_0 + 1.07834d-06*cos(6.17259346442d0 + 1052.2683831884d0 * t)
        uranus_k_0 = uranus_k_0 + 1.09201d-06*cos(2.33356094604d0 + 255.0554677982d0 * t)
        uranus_k_0 = uranus_k_0 + 1.09215d-06*cos(4.61754971181d0 + 5.9378908332d0 * t)
        uranus_k_0 = uranus_k_0 + 1.1051d-06*cos(0.88077341561d0 + 209.3669421749d0 * t)
        uranus_k_0 = uranus_k_0 + 1.1347d-06*cos(4.23583697242d0 + 195.1398481733d0 * t)
        uranus_k_0 = uranus_k_0 + 1.13653d-06*cos(1.99883641295d0 + 7.1135470008d0 * t)
        uranus_k_0 = uranus_k_0 + 1.17255d-06*cos(1.94714990132d0 + 685.4739373527d0 * t)
        uranus_k_0 = uranus_k_0 + 1.17406d-06*cos(2.01329816679d0 + 316.3918696566d0 * t)
        uranus_k_0 = uranus_k_0 + 1.18431d-06*cos(1.72462259608d0 + 18.1592472647d0 * t)
        uranus_k_0 = uranus_k_0 + 1.20457d-06*cos(5.88374473956d0 + 681.5417840896d0 * t)
        uranus_k_0 = uranus_k_0 + 1.32496d-06*cos(0.01646395149d0 + 1162.4747044078d0 * t)
        uranus_k_0 = uranus_k_0 + 1.34345d-06*cos(3.08983441405d0 + 143.6253063014d0 * t)
        uranus_k_0 = uranus_k_0 + 1.34491d-06*cos(0.31429493289d0 + 151.0476698429d0 * t)
        uranus_k_0 = uranus_k_0 + 1.36959d-06*cos(0.04766322469d0 + 258.0244132148d0 * t)
        uranus_k_0 = uranus_k_0 + 1.37299d-06*cos(6.02536824932d0 + 41.1019810544d0 * t)
        uranus_k_0 = uranus_k_0 + 1.38818d-06*cos(2.96357044245d0 + 419.4846438752d0 * t)
        uranus_k_0 = uranus_k_0 + 1.39774d-06*cos(5.77585101029d0 + 1215.1649024473d0 * t)
        uranus_k_0 = uranus_k_0 + 1.45016d-06*cos(3.47563202863d0 + 456.3938392356d0 * t)
        uranus_k_0 = uranus_k_0 + 1.47271d-06*cos(0.64473459462d0 + 329.7251917809d0 * t)
        uranus_k_0 = uranus_k_0 + 1.54484d-06*cos(3.78401442189d0 + 32.1951448046d0 * t)
        uranus_k_0 = uranus_k_0 + 1.5458d-06*cos(2.05166718119d0 + 554.0699874828d0 * t)
        uranus_k_0 = uranus_k_0 + 1.62744d-06*cos(2.75024475076d0 + 628.8515860501d0 * t)
        uranus_k_0 = uranus_k_0 + 1.70832d-06*cos(6.20285103438d0 + 3340.6124266998d0 * t)
        uranus_k_0 = uranus_k_0 + 1.71804d-06*cos(0.30038856397d0 + 36.6485629295d0 * t)
        uranus_k_0 = uranus_k_0 + 1.71897d-06*cos(4.40828872396d0 + 26087.9031415742d0 * t)
        uranus_k_0 = uranus_k_0 + 1.75434d-06*cos(3.0745400937d0 + 203.7378678824d0 * t)
        uranus_k_0 = uranus_k_0 + 1.77411d-06*cos(2.06031386947d0 + 200.7689224658d0 * t)
        uranus_k_0 = uranus_k_0 + 1.83603d-06*cos(0.79616721542d0 + 303.8616966844d0 * t)
        uranus_k_0 = uranus_k_0 + 1.9004d-06*cos(1.52532690734d0 + 756.3233826569d0 * t)
        uranus_k_0 = uranus_k_0 + 1.90078d-06*cos(2.16372258243d0 + 218.4069048687d0 * t)
        uranus_k_0 = uranus_k_0 + 1.92577d-06*cos(5.78301898073d0 + 56.6223513026d0 * t)
        uranus_k_0 = uranus_k_0 + 2.06644d-06*cos(5.63355478906d0 + 639.897286314d0 * t)
        uranus_k_0 = uranus_k_0 + 2.11522d-06*cos(2.76187260452d0 + 1439.5096981492d0 * t)
        uranus_k_0 = uranus_k_0 + 2.17951d-06*cos(2.34699649999d0 + 70.8494453042d0 * t)
        uranus_k_0 = uranus_k_0 + 2.19983d-06*cos(6.16201275704d0 + 221.3758502853d0 * t)
        uranus_k_0 = uranus_k_0 + 2.25232d-06*cos(1.99019475688d0 + 984.6003316219d0 * t)
        uranus_k_0 = uranus_k_0 + 2.32894d-06*cos(0.37302243146d0 + 415.5524906121d0 * t)
        uranus_k_0 = uranus_k_0 + 2.33759d-06*cos(5.07859168844d0 + 306.830642101d0 * t)
        uranus_k_0 = uranus_k_0 + 2.35331d-06*cos(2.91424495748d0 + 106.9767433719d0 * t)
        uranus_k_0 = uranus_k_0 + 2.46544d-06*cos(4.19731276515d0 + 543.0242872189d0 * t)
        uranus_k_0 = uranus_k_0 + 2.64474d-06*cos(2.50309266923d0 + 111.4301614968d0 * t)
        uranus_k_0 = uranus_k_0 + 2.79412d-06*cos(5.7308365378d0 + 148.0787244263d0 * t)
        uranus_k_0 = uranus_k_0 + 2.8482d-06*cos(0.65389564616d0 + 288.0806940053d0 * t)
        uranus_k_0 = uranus_k_0 + 3.13775d-06*cos(5.26505809544d0 + 191.2076949102d0 * t)
        uranus_k_0 = uranus_k_0 + 3.31836d-06*cos(5.22009472749d0 + 387.2413149608d0 * t)
        uranus_k_0 = uranus_k_0 + 3.33625d-06*cos(2.33292435942d0 + 373.0142209592d0 * t)
        uranus_k_0 = uranus_k_0 + 3.3697d-06*cos(1.87610371513d0 + 1289.9465010146d0 * t)
        uranus_k_0 = uranus_k_0 + 3.37268d-06*cos(1.99379357476d0 + 181.7583419392d0 * t)
        uranus_k_0 = uranus_k_0 + 3.37436d-06*cos(5.99258289328d0 + 184.7272873558d0 * t)
        uranus_k_0 = uranus_k_0 + 3.8271d-06*cos(3.30324822114d0 + 230.5645708254d0 * t)
        uranus_k_0 = uranus_k_0 + 3.84756d-06*cos(2.56172040277d0 + 453.424893819d0 * t)
        uranus_k_0 = uranus_k_0 + 3.95332d-06*cos(1.3394893331d0 + 22.0914005278d0 * t)
        uranus_k_0 = uranus_k_0 + 4.0259d-06*cos(1.04696017362d0 + 490.3340891794d0 * t)
        uranus_k_0 = uranus_k_0 + 4.10907d-06*cos(3.58593242378d0 + 62.2514255951d0 * t)
        uranus_k_0 = uranus_k_0 + 4.32629d-06*cos(4.13640716692d0 + 206.1855484372d0 * t)
        uranus_k_0 = uranus_k_0 + 4.37398d-06*cos(4.54085295618d0 + 65.2203710117d0 * t)
        uranus_k_0 = uranus_k_0 + 4.39552d-06*cos(0.74912481064d0 + 220.4126424388d0 * t)
        uranus_k_0 = uranus_k_0 + 4.42713d-06*cos(5.82502027202d0 + 351.8165923087d0 * t)
        uranus_k_0 = uranus_k_0 + 4.43475d-06*cos(6.09716269667d0 + 617.8058857862d0 * t)
        uranus_k_0 = uranus_k_0 + 4.51084d-06*cos(2.73647494157d0 + 70.3281804424d0 * t)
        uranus_k_0 = uranus_k_0 + 5.16535d-06*cos(2.51607888257d0 + 404.5067903482d0 * t)
        uranus_k_0 = uranus_k_0 + 5.27818d-06*cos(3.84910906636d0 + 12.5301729722d0 * t)
        uranus_k_0 = uranus_k_0 + 5.61579d-06*cos(3.65003255316d0 + 224.3447957019d0 * t)
        uranus_k_0 = uranus_k_0 + 5.67743d-06*cos(4.35103915838d0 + 760.25553592d0 * t)
        uranus_k_0 = uranus_k_0 + 6.02301d-06*cos(4.41167547565d0 + 76.2660712756d0 * t)
        uranus_k_0 = uranus_k_0 + 6.14993d-06*cos(1.82336469745d0 + 145.1097790097d0 * t)
        uranus_k_0 = uranus_k_0 + 6.21463d-06*cos(0.83051964252d0 + 85.8272988312d0 * t)
        uranus_k_0 = uranus_k_0 + 6.36503d-06*cos(4.77978074919d0 + 10063.7223490764d0 * t)
        uranus_k_0 = uranus_k_0 + 6.78722d-06*cos(3.35712325266d0 + 6133.5126528568d0 * t)
        uranus_k_0 = uranus_k_0 + 7.26349d-06*cos(1.2993759795d0 + 1589.0728952838d0 * t)
        uranus_k_0 = uranus_k_0 + 7.4138d-06*cos(2.07521705432d0 + 9.5612275556d0 * t)
        uranus_k_0 = uranus_k_0 + 7.85909d-06*cos(0.73085214678d0 + 522.5774180938d0 * t)
        uranus_k_0 = uranus_k_0 + 7.88798d-06*cos(3.61781793203d0 + 536.8045120954d0 * t)
        uranus_k_0 = uranus_k_0 + 8.90081d-06*cos(3.4247281735d0 + 73.297125859d0 * t)
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

        uranus_k_1 = uranus_k_1 + 1.24296d-06*cos(1.86576242717d0 + 305.3461693927d0 * t)
        uranus_k_1 = uranus_k_1 + 1.33014d-06*cos(3.51886080678d0 + 387.2413149608d0 * t)
        uranus_k_1 = uranus_k_1 + 1.33118d-06*cos(4.03306426714d0 + 373.0142209592d0 * t)
        uranus_k_1 = uranus_k_1 + 1.57814d-06*cos(6.00854488126d0 + 454.9093665273d0 * t)
        uranus_k_1 = uranus_k_1 + 1.59699d-06*cos(5.30418128959d0 + 149.5631971346d0 * t)
        uranus_k_1 = uranus_k_1 + 1.71678d-06*cos(5.84344202263d0 + 206.1855484372d0 * t)
        uranus_k_1 = uranus_k_1 + 1.72888d-06*cos(0.36439021903d0 + 52.6901980395d0 * t)
        uranus_k_1 = uranus_k_1 + 1.75376d-06*cos(5.33145701519d0 + 220.4126424388d0 * t)
        uranus_k_1 = uranus_k_1 + 1.95847d-06*cos(5.93569269631d0 + 277.0349937414d0 * t)
        uranus_k_1 = uranus_k_1 + 2.09357d-06*cos(2.19976736907d0 + 127.4717966068d0 * t)
        uranus_k_1 = uranus_k_1 + 2.40031d-06*cos(5.37442344422d0 + 2.9689454166d0 * t)
        uranus_k_1 = uranus_k_1 + 2.5264d-06*cos(1.7179701056d0 + 909.8187330546d0 * t)
        uranus_k_1 = uranus_k_1 + 3.13581d-06*cos(2.43007590249d0 + 522.5774180938d0 * t)
        uranus_k_1 = uranus_k_1 + 3.14888d-06*cos(1.91602997506d0 + 536.8045120954d0 * t)
        uranus_k_1 = uranus_k_1 + 3.98956d-06*cos(4.26943951831d0 + 426.598190876d0 * t)
        uranus_k_1 = uranus_k_1 + 4.846d-06*cos(2.38366972596d0 + 3.9321532631d0 * t)
        uranus_k_1 = uranus_k_1 + 6.70635d-06*cos(0.10669800483d0 + 1059.3819301892d0 * t)
        uranus_k_1 = uranus_k_1 + 2.974032d-05*cos(2.44820580252d0 + 11.0457002639d0 * t)
        uranus_k_1 = uranus_k_1 + 0.00018344115d0*cos(0.0d0 + 0.0d0 * t)
        uranus_k_1=uranus_k_1*t;

        uranus_k_2 = uranus_k_2 + 2.01635d-06*cos(0.69743240058d0 + 11.0457002639d0 * t)
        uranus_k_2=uranus_k_2*t*t;

        r = uranus_k_2+uranus_k_1+uranus_k_0
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

        uranus_l_0 = uranus_l_0 + 1.00043d-06*cos(1.0737421586d0 + 200.7689224658d0 * t)
        uranus_l_0 = uranus_l_0 + 1.00386d-06*cos(4.52244220874d0 + 414.0680179038d0 * t)
        uranus_l_0 = uranus_l_0 + 1.04376d-06*cos(5.02821403859d0 + 0.7507595254d0 * t)
        uranus_l_0 = uranus_l_0 + 1.06076d-06*cos(3.1567153965d0 + 543.0242872189d0 * t)
        uranus_l_0 = uranus_l_0 + 1.09201d-06*cos(1.10211855276d0 + 465.9550667912d0 * t)
        uranus_l_0 = uranus_l_0 + 1.12415d-06*cos(4.0238838087d0 + 255.0554677982d0 * t)
        uranus_l_0 = uranus_l_0 + 1.12557d-06*cos(4.05413224757d0 + 1819.6374661092d0 * t)
        uranus_l_0 = uranus_l_0 + 1.12619d-06*cos(2.25143725463d0 + 451.9404211107d0 * t)
        uranus_l_0 = uranus_l_0 + 1.12981d-06*cos(5.37966891782d0 + 32.1951448046d0 * t)
        uranus_l_0 = uranus_l_0 + 1.13062d-06*cos(5.73083245403d0 + 76.2660712756d0 * t)
        uranus_l_0 = uranus_l_0 + 1.14857d-06*cos(4.06681960581d0 + 203.7378678824d0 * t)
        uranus_l_0 = uranus_l_0 + 1.21878d-06*cos(1.38776134332d0 + 7.1135470008d0 * t)
        uranus_l_0 = uranus_l_0 + 1.21887d-06*cos(4.85300775551d0 + 767.3690829208d0 * t)
        uranus_l_0 = uranus_l_0 + 1.23264d-06*cos(3.96370404684d0 + 969.6224780949d0 * t)
        uranus_l_0 = uranus_l_0 + 1.26269d-06*cos(1.26358629635d0 + 35.4247226521d0 * t)
        uranus_l_0 = uranus_l_0 + 1.29459d-06*cos(1.27118491099d0 + 983.1158589136d0 * t)
        uranus_l_0 = uranus_l_0 + 1.30232d-06*cos(2.23752761925d0 + 986.0848043302d0 * t)
        uranus_l_0 = uranus_l_0 + 1.31051d-06*cos(4.54272738939d0 + 106.9767433719d0 * t)
        uranus_l_0 = uranus_l_0 + 1.31163d-06*cos(1.72731740057d0 + 10213.285546211d0 * t)
        uranus_l_0 = uranus_l_0 + 1.38065d-06*cos(3.65799322361d0 + 518.6452648307d0 * t)
        uranus_l_0 = uranus_l_0 + 1.38505d-06*cos(5.40272807221d0 + 977.4867846211d0 * t)
        uranus_l_0 = uranus_l_0 + 1.38708d-06*cos(0.3047903072d0 + 6283.0758499914d0 * t)
        uranus_l_0 = uranus_l_0 + 1.40851d-06*cos(2.34557525065d0 + 56.6223513026d0 * t)
        uranus_l_0 = uranus_l_0 + 1.4746d-06*cos(3.09304774146d0 + 329.8370663655d0 * t)
        uranus_l_0 = uranus_l_0 + 1.49532d-06*cos(2.62722390177d0 + 381.6122406683d0 * t)
        uranus_l_0 = uranus_l_0 + 1.49921d-06*cos(2.74300487821d0 + 760.25553592d0 * t)
        uranus_l_0 = uranus_l_0 + 1.52282d-06*cos(5.85959689202d0 + 18.1592472647d0 * t)
        uranus_l_0 = uranus_l_0 + 1.60226d-06*cos(2.23207414285d0 + 344.7030453079d0 * t)
        uranus_l_0 = uranus_l_0 + 1.68609d-06*cos(3.6755031389d0 + 5.4166259714d0 * t)
        uranus_l_0 = uranus_l_0 + 1.70787d-06*cos(5.53062267072d0 + 1087.6931058405d0 * t)
        uranus_l_0 = uranus_l_0 + 1.71503d-06*cos(4.36572558667d0 + 604.4725636619d0 * t)
        uranus_l_0 = uranus_l_0 + 1.73212d-06*cos(0.39201425989d0 + 756.3233826569d0 * t)
        uranus_l_0 = uranus_l_0 + 1.73598d-06*cos(1.66259044434d0 + 284.1485407422d0 * t)
        uranus_l_0 = uranus_l_0 + 1.81475d-06*cos(0.44850583402d0 + 211.8146227297d0 * t)
        uranus_l_0 = uranus_l_0 + 1.84747d-06*cos(3.84998304382d0 + 218.4069048687d0 * t)
        uranus_l_0 = uranus_l_0 + 1.87189d-06*cos(1.31923610155d0 + 0.1600586944d0 * t)
        uranus_l_0 = uranus_l_0 + 1.90187d-06*cos(3.8297091107d0 + 278.5194664497d0 * t)
        uranus_l_0 = uranus_l_0 + 1.91642d-06*cos(5.04780613765d0 + 269.9214467406d0 * t)
        uranus_l_0 = uranus_l_0 + 1.98547d-06*cos(0.26896991233d0 + 1289.9465010146d0 * t)
        uranus_l_0 = uranus_l_0 + 1.99112d-06*cos(2.8482638795d0 + 275.5505210331d0 * t)
        uranus_l_0 = uranus_l_0 + 2.01303d-06*cos(3.17201631038d0 + 628.8515860501d0 * t)
        uranus_l_0 = uranus_l_0 + 2.01661d-06*cos(1.29693001544d0 + 0.0481841098d0 * t)
        uranus_l_0 = uranus_l_0 + 2.02377d-06*cos(1.49552752986d0 + 404.5067903482d0 * t)
        uranus_l_0 = uranus_l_0 + 2.15505d-06*cos(6.14304538089d0 + 5.9378908332d0 * t)
        uranus_l_0 = uranus_l_0 + 2.22259d-06*cos(2.84309160257d0 + 0.2606324309d0 * t)
        uranus_l_0 = uranus_l_0 + 2.25295d-06*cos(5.43464015892d0 + 3265.8308281325d0 * t)
        uranus_l_0 = uranus_l_0 + 2.27581d-06*cos(3.63395710247d0 + 26013.1215430069d0 * t)
        uranus_l_0 = uranus_l_0 + 2.3906d-06*cos(4.93944399073d0 + 426.598190876d0 * t)
        uranus_l_0 = uranus_l_0 + 2.47905d-06*cos(5.60150917441d0 + 22.0914005278d0 * t)
        uranus_l_0 = uranus_l_0 + 2.56393d-06*cos(4.88448792699d0 + 565.1156877467d0 * t)
        uranus_l_0 = uranus_l_0 + 2.578d-06*cos(2.92547731857d0 + 293.188503436d0 * t)
        uranus_l_0 = uranus_l_0 + 2.69923d-06*cos(4.35691268396d0 + 70.3281804424d0 * t)
        uranus_l_0 = uranus_l_0 + 2.73741d-06*cos(0.17860898668d0 + 62.2514255951d0 * t)
        uranus_l_0 = uranus_l_0 + 2.88647d-06*cos(2.25640776393d0 + 831.1049812242d0 * t)
        uranus_l_0 = uranus_l_0 + 2.93087d-06*cos(1.50105495256d0 + 490.3340891794d0 * t)
        uranus_l_0 = uranus_l_0 + 2.98303d-06*cos(2.00853393942d0 + 65.2203710117d0 * t)
        uranus_l_0 = uranus_l_0 + 3.0808d-06*cos(2.25525014094d0 + 149.5631971346d0 * t)
        uranus_l_0 = uranus_l_0 + 3.10014d-06*cos(3.67494120481d0 + 181.7583419392d0 * t)
        uranus_l_0 = uranus_l_0 + 3.57542d-06*cos(4.99752736246d0 + 617.8058857862d0 * t)
        uranus_l_0 = uranus_l_0 + 3.62901d-06*cos(3.11254803444d0 + 70.8494453042d0 * t)
        uranus_l_0 = uranus_l_0 + 3.88686d-06*cos(1.55764354118d0 + 305.3461693927d0 * t)
        uranus_l_0 = uranus_l_0 + 3.97187d-06*cos(5.98269867355d0 + 8.0767548473d0 * t)
        uranus_l_0 = uranus_l_0 + 4.01975d-06*cos(1.02882238958d0 + 111.4301614968d0 * t)
        uranus_l_0 = uranus_l_0 + 4.21714d-06*cos(6.12442817593d0 + 265.9892934775d0 * t)
        uranus_l_0 = uranus_l_0 + 4.56593d-06*cos(2.75747123324d0 + 256.5399405065d0 * t)
        uranus_l_0 = uranus_l_0 + 4.83933d-06*cos(2.10415309106d0 + 0.9632078465d0 * t)
        uranus_l_0 = uranus_l_0 + 5.31506d-06*cos(3.36185713558d0 + 131.4039498699d0 * t)
        uranus_l_0 = uranus_l_0 + 5.32939d-06*cos(6.26100305695d0 + 145.6310438715d0 * t)
        uranus_l_0 = uranus_l_0 + 5.38422d-06*cos(3.4986243755d0 + 145.1097790097d0 * t)
        uranus_l_0 = uranus_l_0 + 5.46739d-06*cos(2.64022688044d0 + 1364.7280995819d0 * t)
        uranus_l_0 = uranus_l_0 + 5.58961d-06*cos(3.35799112403d0 + 0.5212648618d0 * t)
        uranus_l_0 = uranus_l_0 + 5.66576d-06*cos(2.17039948214d0 + 140.001969579d0 * t)
        uranus_l_0 = uranus_l_0 + 5.72015d-06*cos(1.18581223054d0 + 137.0330241624d0 * t)
        uranus_l_0 = uranus_l_0 + 6.54138d-06*cos(2.61702354432d0 + 52.6901980395d0 * t)
        uranus_l_0 = uranus_l_0 + 6.89089d-06*cos(0.55644309884d0 + 692.5874843535d0 * t)
        uranus_l_0 = uranus_l_0 + 7.54583d-06*cos(3.32534743241d0 + 479.2883889155d0 * t)
        uranus_l_0 = uranus_l_0 + 7.73365d-06*cos(5.15500085401d0 + 835.0371344873d0 * t)
        uranus_l_0 = uranus_l_0 + 8.23784d-06*cos(2.58903813554d0 + 219.891377577d0 * t)
        uranus_l_0 = uranus_l_0 + 8.92051d-06*cos(0.17157862973d0 + 528.2064923863d0 * t)
        uranus_l_0 = uranus_l_0 + 9.1099d-06*cos(4.17190019133d0 + 33.6796175129d0 * t)
        uranus_l_0 = uranus_l_0 + 9.24443d-06*cos(5.78398940489d0 + 1059.3819301892d0 * t)
        uranus_l_0 = uranus_l_0 + 9.4406d-06*cos(0.53015773251d0 + 1514.2912967165d0 * t)
        uranus_l_0 = uranus_l_0 + 9.74178d-06*cos(6.24315014751d0 + 447.7958195265d0 * t)
        uranus_l_0 = uranus_l_0 + 9.80433d-06*cos(2.84881775045d0 + 462.0229135281d0 * t)
        uranus_l_0 = uranus_l_0 + 9.97791d-06*cos(3.32059065958d0 + 108.4612160802d0 * t)
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

        uranus_l_1 = uranus_l_1 + 1.01686d-06*cos(6.03361377344d0 + 0.1118745846d0 * t)
        uranus_l_1 = uranus_l_1 + 1.02495d-06*cos(1.51574089362d0 + 70.8494453042d0 * t)
        uranus_l_1 = uranus_l_1 + 1.12784d-06*cos(4.6607696463d0 + 340.7708920448d0 * t)
        uranus_l_1 = uranus_l_1 + 1.1701d-06*cos(4.65163384585d0 + 35.1640902212d0 * t)
        uranus_l_1 = uranus_l_1 + 1.25915d-06*cos(4.47863051684d0 + 213.299095438d0 * t)
        uranus_l_1 = uranus_l_1 + 1.29347d-06*cos(5.2817288942d0 + 380.12776796d0 * t)
        uranus_l_1 = uranus_l_1 + 1.36662d-06*cos(5.5952673948d0 + 52.6901980395d0 * t)
        uranus_l_1 = uranus_l_1 + 1.54093d-06*cos(5.59058778855d0 + 4.4534181249d0 * t)
        uranus_l_1 = uranus_l_1 + 1.575d-06*cos(2.90900378189d0 + 0.9632078465d0 * t)
        uranus_l_1 = uranus_l_1 + 1.71743d-06*cos(5.67662669164d0 + 12.5301729722d0 * t)
        uranus_l_1 = uranus_l_1 + 1.76698d-06*cos(1.18101931894d0 + 127.4717966068d0 * t)
        uranus_l_1 = uranus_l_1 + 2.04847d-06*cos(2.36233888756d0 + 2.4476805548d0 * t)
        uranus_l_1 = uranus_l_1 + 2.12631d-06*cos(4.55927041191d0 + 145.6310438715d0 * t)
        uranus_l_1 = uranus_l_1 + 2.12789d-06*cos(5.06507342013d0 + 131.4039498699d0 * t)
        uranus_l_1 = uranus_l_1 + 2.15308d-06*cos(3.60499337445d0 + 74.7815985673d0 * t)
        uranus_l_1 = uranus_l_1 + 3.04297d-06*cos(2.98776201481d0 + 202.2533951741d0 * t)
        uranus_l_1 = uranus_l_1 + 3.11729d-06*cos(3.47937895364d0 + 529.6909650946d0 * t)
        uranus_l_1 = uranus_l_1 + 3.39396d-06*cos(2.4540483803d0 + 9.5612275556d0 * t)
        uranus_l_1 = uranus_l_1 + 3.88826d-06*cos(1.66015279054d0 + 447.7958195265d0 * t)
        uranus_l_1 = uranus_l_1 + 3.91445d-06*cos(1.14706520917d0 + 462.0229135281d0 * t)
        uranus_l_1 = uranus_l_1 + 4.68315d-06*cos(3.50391905676d0 + 351.8165923087d0 * t)
        uranus_l_1 = uranus_l_1 + 7.89469d-06*cos(5.43650594019d0 + 3.1813937377d0 * t)
        uranus_l_1 = uranus_l_1 + 8.62331d-06*cos(5.62034856352d0 + 984.6003316219d0 * t)
        uranus_l_1 = uranus_l_1 + 1.918566d-05*cos(1.47255222866d0 + 63.7358983034d0 * t)
        uranus_l_1 = uranus_l_1 + 1.925567d-05*cos(0.5298869298d0 + 2.9689454166d0 * t)
        uranus_l_1 = uranus_l_1 + 3.879375d-05*cos(0.46426879091d0 + 3.9321532631d0 * t)
        uranus_l_1 = uranus_l_1 + 8.935001d-05*cos(0.42318902886d0 + 11.0457002639d0 * t)
        uranus_l_1 = uranus_l_1 + 0.00024451511d0*cos(1.71261369505d0 + 1.4844727083d0 * t)
        uranus_l_1 = uranus_l_1 + 74.7815985673d0*cos(0.0d0 + 0.0d0 * t)
        uranus_l_1=uranus_l_1*t;

        uranus_l_2 = uranus_l_2 + 1.29782d-06*cos(3.20929636054d0 + 63.7358983034d0 * t)
        uranus_l_2 = uranus_l_2 + 2.57061d-06*cos(3.69080532425d0 + 3.1813937377d0 * t)
        uranus_l_2 = uranus_l_2 + 5.2939d-06*cos(4.92352714185d0 + 1.4844727083d0 * t)
        uranus_l_2 = uranus_l_2 + 5.38678d-06*cos(2.27508652773d0 + 3.9321532631d0 * t)
        uranus_l_2 = uranus_l_2 + 7.4359d-06*cos(4.51956646459d0 + 11.0457002639d0 * t)
        uranus_l_2 = uranus_l_2 + 8.48828d-06*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_l_2=uranus_l_2*t*t;

        r = uranus_l_2+uranus_l_1+uranus_l_0
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

        uranus_p_0 = uranus_p_0 + 1.09439d-06*cos(1.71555300204d0 + 36.6485629295d0 * t)
        uranus_p_0 = uranus_p_0 + 1.14718d-06*cos(3.95716718407d0 + 149.5631971346d0 * t)
        uranus_p_0 = uranus_p_0 + 1.95763d-06*cos(2.54012094089d0 + 288.0806940053d0 * t)
        uranus_p_0 = uranus_p_0 + 4.22162d-06*cos(1.13163898047d0 + 138.5174968707d0 * t)
        uranus_p_0 = uranus_p_0 + 4.24617d-06*cos(0.35515655652d0 + 1.4844727083d0 * t)
        uranus_p_0 = uranus_p_0 + 4.68373d-06*cos(2.84700414509d0 + 2.9689454166d0 * t)
        uranus_p_0 = uranus_p_0 + 4.78875d-06*cos(2.24337565108d0 + 604.4725636619d0 * t)
        uranus_p_0 = uranus_p_0 + 6.36893d-06*cos(0.7092888934d0 + 454.9093665273d0 * t)
        uranus_p_0 = uranus_p_0 + 6.55536d-06*cos(2.38157894549d0 + 11.0457002639d0 * t)
        uranus_p_0 = uranus_p_0 + 0.00648617008d0*cos(0.0d0 + 0.0d0 * t)

        uranus_p_1 = uranus_p_1 + 0.00011744733d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_p_1=uranus_p_1*t;

        uranus_p_2 = uranus_p_2 + 3.17799d-06*cos(0.0d0 + 0.0d0 * t)
        uranus_p_2=uranus_p_2*t*t;

        r = uranus_p_2+uranus_p_1+uranus_p_0
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

        uranus_q_0 = uranus_q_0 + 1.1597d-06*cos(5.51033649436d0 + 149.5631971346d0 * t)
        uranus_q_0 = uranus_q_0 + 1.95978d-06*cos(4.11492828778d0 + 288.0806940053d0 * t)
        uranus_q_0 = uranus_q_0 + 3.99768d-06*cos(5.59435606247d0 + 138.5174968707d0 * t)
        uranus_q_0 = uranus_q_0 + 4.79076d-06*cos(3.81434208868d0 + 604.4725636619d0 * t)
        uranus_q_0 = uranus_q_0 + 5.00266d-06*cos(5.94625180548d0 + 1.4844727083d0 * t)
        uranus_q_0 = uranus_q_0 + 5.27045d-06*cos(4.40714177816d0 + 2.9689454166d0 * t)
        uranus_q_0 = uranus_q_0 + 6.36225d-06*cos(5.4146596917d0 + 454.9093665273d0 * t)
        uranus_q_0 = uranus_q_0 + 6.64212d-06*cos(3.89842154835d0 + 11.0457002639d0 * t)
        uranus_q_0 = uranus_q_0 + 0.00185915075d0*cos(0.0d0 + 0.0d0 * t)

        uranus_q_1 = uranus_q_1 + 0.00012449382d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_q_1=uranus_q_1*t;

        uranus_q_2 = uranus_q_2 + 2.07373d-06*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_q_2=uranus_q_2*t*t;

        r = uranus_q_2+uranus_q_1+uranus_q_0
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

        venus_a_0 = venus_a_0 + 1.04002d-06*cos(2.68625826502d0 + 1577.3435424478d0 * t)
        venus_a_0 = venus_a_0 + 1.09965d-06*cos(0.8300435822d0 + 19651.048481098d0 * t)
        venus_a_0 = venus_a_0 + 1.68309d-06*cos(5.69068897882d0 + 15720.8387848784d0 * t)
        venus_a_0 = venus_a_0 + 1.77364d-06*cos(1.42300334637d0 + 3930.2096962196d0 * t)
        venus_a_0 = venus_a_0 + 2.64045d-06*cos(4.26809747017d0 + 11790.6290886588d0 * t)
        venus_a_0 = venus_a_0 + 2.93981d-06*cos(5.15392250791d0 + 19367.1891622328d0 * t)
        venus_a_0 = venus_a_0 + 4.32219d-06*cos(2.84552760786d0 + 7860.4193924392d0 * t)
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

        venus_h_0 = venus_h_0 + 1.18194d-06*cos(3.1803151429d0 + 8624.2126509272d0 * t)
        venus_h_0 = venus_h_0 + 1.40191d-06*cos(0.64791358847d0 + 13367.9726311066d0 * t)
        venus_h_0 = venus_h_0 + 1.67068d-06*cos(4.54956488358d0 + 191.4482661116d0 * t)
        venus_h_0 = venus_h_0 + 2.31842d-06*cos(3.31650363256d0 + 6283.0758499914d0 * t)
        venus_h_0 = venus_h_0 + 2.46156d-06*cos(4.73968260977d0 + 10213.285546211d0 * t)
        venus_h_0 = venus_h_0 + 2.51069d-06*cos(5.50886761484d0 + 9437.762934887d0 * t)
        venus_h_0 = venus_h_0 + 3.30805d-06*cos(5.4944777793d0 + 775.522611324d0 * t)
        venus_h_0 = venus_h_0 + 5.32791d-06*cos(4.08663302424d0 + 5507.5532386674d0 * t)
        venus_h_0 = venus_h_0 + 6.4729d-06*cos(3.54941668195d0 + 9153.9036160218d0 * t)
        venus_h_0 = venus_h_0 + 6.58268d-06*cos(2.16160277823d0 + 529.6909650946d0 * t)
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

        venus_k_0 = venus_k_0 + 1.18122d-06*cos(1.60851542401d0 + 8624.2126509272d0 * t)
        venus_k_0 = venus_k_0 + 1.40152d-06*cos(5.35977741501d0 + 13367.9726311066d0 * t)
        venus_k_0 = venus_k_0 + 1.66418d-06*cos(2.98478080988d0 + 191.4482661116d0 * t)
        venus_k_0 = venus_k_0 + 2.39041d-06*cos(4.90218844722d0 + 6283.0758499914d0 * t)
        venus_k_0 = venus_k_0 + 2.51699d-06*cos(3.93683715476d0 + 9437.762934887d0 * t)
        venus_k_0 = venus_k_0 + 2.52413d-06*cos(0.04155262942d0 + 10213.285546211d0 * t)
        venus_k_0 = venus_k_0 + 3.33443d-06*cos(0.78531885212d0 + 775.522611324d0 * t)
        venus_k_0 = venus_k_0 + 5.35429d-06*cos(2.51380251594d0 + 5507.5532386674d0 * t)
        venus_k_0 = venus_k_0 + 6.46057d-06*cos(1.97697362222d0 + 9153.9036160218d0 * t)
        venus_k_0 = venus_k_0 + 6.53102d-06*cos(3.7360161519d0 + 529.6909650946d0 * t)
        venus_k_0 = venus_k_0 + 1.705727d-05*cos(3.47431815156d0 + 2352.8661537718d0 * t)
        venus_k_0 = venus_k_0 + 2.247401d-05*cos(1.09074471887d0 + 1577.3435424478d0 * t)
        venus_k_0 = venus_k_0 + 0.00449282133d0*cos(3.14159265359d0 + 0.0d0 * t)

        venus_k_1 = venus_k_1 + 0.00031259019d0*cos(0.0d0 + 0.0d0 * t)
        venus_k_1=venus_k_1*t;

        venus_k_2 = venus_k_2 + 6.04065d-06*cos(0.0d0 + 0.0d0 * t)
        venus_k_2=venus_k_2*t*t;

        r = venus_k_2+venus_k_1+venus_k_0
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

        venus_l_0 = venus_l_0 + 1.04644d-06*cos(1.53687847258d0 + 801.8209311238d0 * t)
        venus_l_0 = venus_l_0 + 1.14451d-06*cos(5.24612716253d0 + 27511.4678735372d0 * t)
        venus_l_0 = venus_l_0 + 1.28263d-06*cos(4.2260532907d0 + 20.7753954924d0 * t)
        venus_l_0 = venus_l_0 + 1.31296d-06*cos(0.07005540742d0 + 18837.49819713819d0 * t)
        venus_l_0 = venus_l_0 + 1.31651d-06*cos(4.15523917159d0 + 9683.5945811164d0 * t)
        venus_l_0 = venus_l_0 + 1.76993d-06*cos(4.65387062499d0 + 1109.3785520934d0 * t)
        venus_l_0 = venus_l_0 + 1.81822d-06*cos(3.82361289262d0 + 23581.2581773176d0 * t)
        venus_l_0 = venus_l_0 + 2.15728d-06*cos(5.66909869478d0 + 5507.5532386674d0 * t)
        venus_l_0 = venus_l_0 + 2.97815d-06*cos(2.40105326112d0 + 19651.048481098d0 * t)
        venus_l_0 = venus_l_0 + 5.10584d-06*cos(0.97844846212d0 + 15720.8387848784d0 * t)
        venus_l_0 = venus_l_0 + 5.84635d-06*cos(3.99837954303d0 + 191.4482661116d0 * t)
        venus_l_0 = venus_l_0 + 7.01576d-06*cos(1.06509133263d0 + 775.522611324d0 * t)
        venus_l_0 = venus_l_0 + 7.31373d-06*cos(0.44153385028d0 + 19367.1891622328d0 * t)
        venus_l_0 = venus_l_0 + 7.59073d-06*cos(1.94944592333d0 + 529.6909650946d0 * t)
        venus_l_0 = venus_l_0 + 9.43109d-06*cos(5.83898452412d0 + 11790.6290886588d0 * t)
        venus_l_0 = venus_l_0 + 1.317126d-05*cos(5.18666796835d0 + 26.2983197998d0 * t)
        venus_l_0 = venus_l_0 + 1.609772d-05*cos(4.24819541738d0 + 1577.3435424478d0 * t)
        venus_l_0 = venus_l_0 + 1.974219d-05*cos(2.99373531667d0 + 3930.2096962196d0 * t)
        venus_l_0 = venus_l_0 + 2.003673d-05*cos(4.41634412285d0 + 7860.4193924392d0 * t)
        venus_l_0 = venus_l_0 + 3.17614669689d0*cos(0.0d0 + 0.0d0 * t)

        venus_l_1 = venus_l_1 + 1.47221d-06*cos(6.10436974053d0 + 1577.3435424478d0 * t)
        venus_l_1 = venus_l_1 + 1.73922d-06*cos(2.65539758046d0 + 26.2983197998d0 * t)
        venus_l_1 = venus_l_1 + 10213.285546211d0*cos(0.0d0 + 0.0d0 * t)
        venus_l_1=venus_l_1*t;

        venus_l_2 = venus_l_2 + 2.87889d-06*cos(0.0d0 + 0.0d0 * t)
        venus_l_2=venus_l_2*t*t;

        r = venus_l_2+venus_l_1+venus_l_0
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

        venus_q_3 = venus_q_3 + 1.86418d-06*cos(3.14159265359d0 + 0.0d0 * t)
        venus_q_3=venus_q_3*t*t*t;

        r = venus_q_3+venus_q_2+venus_q_1+venus_q_0
    end function

end module VSOP87_Xsmall
