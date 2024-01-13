!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87B_Xsmall
    implicit none

    contains
    subroutine VSOP87B_Xsmall_getEarth(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_b(t)
        result(2)=earth_l(t)
        result(3)=earth_r(t)
    end subroutine

    subroutine VSOP87B_Xsmall_getJupiter(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_b(t)
        result(2)=jupiter_l(t)
        result(3)=jupiter_r(t)
    end subroutine

    subroutine VSOP87B_Xsmall_getMars(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_b(t)
        result(2)=mars_l(t)
        result(3)=mars_r(t)
    end subroutine

    subroutine VSOP87B_Xsmall_getMercury(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_b(t)
        result(2)=mercury_l(t)
        result(3)=mercury_r(t)
    end subroutine

    subroutine VSOP87B_Xsmall_getNeptune(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_b(t)
        result(2)=neptune_l(t)
        result(3)=neptune_r(t)
    end subroutine

    subroutine VSOP87B_Xsmall_getSaturn(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_b(t)
        result(2)=saturn_l(t)
        result(3)=saturn_r(t)
    end subroutine

    subroutine VSOP87B_Xsmall_getUranus(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_b(t)
        result(2)=uranus_l(t)
        result(3)=uranus_r(t)
    end subroutine

    subroutine VSOP87B_Xsmall_getVenus(t, result)
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

        earth_b_0 = earth_b_0 + 1.01643d-06*cos(5.42248619256d0 + 5507.5532386674d0 * t)
        earth_b_0 = earth_b_0 + 2.7962d-06*cos(3.19870156017d0 + 84334.66158130829d0 * t)

        earth_b_1 = earth_b_1 + 3.619589d-05*cos(0.0d0 + 0.0d0 * t)
        earth_b_1 = earth_b_1 + 3.805678d-05*cos(3.37063423795d0 + 12566.1516999828d0 * t)
        earth_b_1 = earth_b_1 + 0.00227777722d0*cos(3.4137662053d0 + 6283.0758499914d0 * t)
        earth_b_1=earth_b_1*t;

        earth_b_2 = earth_b_2 + 1.34188d-06*cos(0.64406212977d0 + 12566.1516999828d0 * t)
        earth_b_2 = earth_b_2 + 2.33002d-06*cos(3.14159265359d0 + 0.0d0 * t)
        earth_b_2 = earth_b_2 + 9.721424d-05*cos(5.1519280992d0 + 6283.0758499914d0 * t)
        earth_b_2=earth_b_2*t*t;

        earth_b_3 = earth_b_3 + 2.75993d-06*cos(0.59480097092d0 + 6283.0758499914d0 * t)
        earth_b_3=earth_b_3*t*t*t;

        r = earth_b_3+earth_b_2+earth_b_1+earth_b_0
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

        earth_l_0 = earth_l_0 + 1.01724d-06*cos(4.2667980198d0 + 7.1135470008d0 * t)
        earth_l_0 = earth_l_0 + 1.01895d-06*cos(0.97569280312d0 + 15720.8387848784d0 * t)
        earth_l_0 = earth_l_0 + 1.02851d-06*cos(0.63599845579d0 + 4694.0029547076d0 * t)
        earth_l_0 = earth_l_0 + 1.15132d-06*cos(0.64544911683d0 + 0.9803210682d0 * t)
        earth_l_0 = earth_l_0 + 1.26225d-06*cos(1.08295459501d0 + 20.7753954924d0 * t)
        earth_l_0 = earth_l_0 + 1.32212d-06*cos(3.41118292683d0 + 2942.4634232916d0 * t)
        earth_l_0 = earth_l_0 + 1.55516d-06*cos(0.83306084617d0 + 213.299095438d0 * t)
        earth_l_0 = earth_l_0 + 2.02318d-06*cos(2.45767790232d0 + 6069.7767545534d0 * t)
        earth_l_0 = earth_l_0 + 2.05478d-06*cos(1.86953770281d0 + 5573.1428014331d0 * t)
        earth_l_0 = earth_l_0 + 2.06217d-06*cos(4.80646631478d0 + 2544.3144198834d0 * t)
        earth_l_0 = earth_l_0 + 2.42879d-06*cos(0.34481445893d0 + 5486.777843175d0 * t)
        earth_l_0 = earth_l_0 + 2.71112d-06*cos(0.31486255375d0 + 10977.078804699d0 * t)
        earth_l_0 = earth_l_0 + 2.84125d-06*cos(1.89869240932d0 + 796.2980068164d0 * t)
        earth_l_0 = earth_l_0 + 3.17087d-06*cos(5.84901948512d0 + 11790.6290886588d0 * t)
        earth_l_0 = earth_l_0 + 3.56672d-06*cos(2.91954114478d0 + 0.0673103028d0 * t)
        earth_l_0 = earth_l_0 + 4.92392d-06*cos(4.20505711826d0 + 775.522611324d0 * t)
        earth_l_0 = earth_l_0 + 5.05267d-06*cos(4.58292599973d0 + 18849.2275499742d0 * t)
        earth_l_0 = earth_l_0 + 7.53141d-06*cos(2.53339052847d0 + 5507.5532386674d0 * t)
        earth_l_0 = earth_l_0 + 7.79786d-06*cos(1.17882681962d0 + 5223.6939198022d0 * t)
        earth_l_0 = earth_l_0 + 8.57223d-06*cos(3.50849152283d0 + 398.1490034082d0 * t)
        earth_l_0 = earth_l_0 + 9.01854d-06*cos(2.04505446477d0 + 26.2983197998d0 * t)
        earth_l_0 = earth_l_0 + 9.9025d-06*cos(5.23268072088d0 + 5884.9268465832d0 * t)
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

        earth_l_1 = earth_l_1 + 1.09017d-06*cos(2.96631010675d0 + 1577.3435424478d0 * t)
        earth_l_1 = earth_l_1 + 1.19305d-06*cos(5.79555765566d0 + 26.2983197998d0 * t)
        earth_l_1 = earth_l_1 + 4.25264d-06*cos(1.59046982018d0 + 3.523118349d0 * t)
        earth_l_1 = earth_l_1 + 4.303419d-05*cos(2.63512233481d0 + 12566.1516999828d0 * t)
        earth_l_1 = earth_l_1 + 0.00206058863d0*cos(2.67823455808d0 + 6283.0758499914d0 * t)
        earth_l_1 = earth_l_1 + 6283.0758499914d0*cos(0.0d0 + 0.0d0 * t)
        earth_l_1=earth_l_1*t;

        earth_l_2 = earth_l_2 + 2.94833d-06*cos(0.43717350256d0 + 12566.1516999828d0 * t)
        earth_l_2 = earth_l_2 + 9.9099d-06*cos(3.14159265359d0 + 0.0d0 * t)
        earth_l_2 = earth_l_2 + 8.721859d-05*cos(1.07253635559d0 + 6283.0758499914d0 * t)
        earth_l_2=earth_l_2*t*t;

        earth_l_3 = earth_l_3 + 2.89058d-06*cos(5.84173149732d0 + 6283.0758499914d0 * t)
        earth_l_3=earth_l_3*t*t*t;

        r = earth_l_3+earth_l_2+earth_l_1+earth_l_0
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

        earth_r_0 = earth_r_0 + 1.09835d-06*cos(5.0551063586d0 + 5486.777843175d0 * t)
        earth_r_0 = earth_r_0 + 1.74844d-06*cos(3.01193636733d0 + 18849.2275499742d0 * t)
        earth_r_0 = earth_r_0 + 1.8574d-06*cos(5.02199710705d0 + 10977.078804699d0 * t)
        earth_r_0 = earth_r_0 + 2.11836d-06*cos(5.84714461348d0 + 1577.3435424478d0 * t)
        earth_r_0 = earth_r_0 + 2.43181d-06*cos(4.2734953079d0 + 11790.6290886588d0 * t)
        earth_r_0 = earth_r_0 + 3.06784d-06*cos(0.29867139512d0 + 5573.1428014331d0 * t)
        earth_r_0 = earth_r_0 + 3.2878d-06*cos(5.89983686142d0 + 5223.6939198022d0 * t)
        earth_r_0 = earth_r_0 + 3.45969d-06*cos(0.96368627272d0 + 5507.5532386674d0 * t)
        earth_r_0 = earth_r_0 + 4.7211d-06*cos(3.66100022149d0 + 5884.9268465832d0 * t)
        earth_r_0 = earth_r_0 + 5.42439d-06*cos(4.56409151453d0 + 3930.2096962196d0 * t)
        earth_r_0 = earth_r_0 + 9.24799d-06*cos(5.45292236722d0 + 11506.7697697936d0 * t)
        earth_r_0 = earth_r_0 + 1.575572d-05*cos(2.84685214877d0 + 7860.4193924392d0 * t)
        earth_r_0 = earth_r_0 + 1.628463d-05*cos(1.17387558054d0 + 5753.3848848968d0 * t)
        earth_r_0 = earth_r_0 + 3.08372d-05*cos(5.19846674381d0 + 77713.7714681205d0 * t)
        earth_r_0 = earth_r_0 + 0.00013956024d0*cos(3.05524609456d0 + 12566.1516999828d0 * t)
        earth_r_0 = earth_r_0 + 0.01670699632d0*cos(3.09846350258d0 + 6283.0758499914d0 * t)
        earth_r_0 = earth_r_0 + 1.00013988784d0*cos(0.0d0 + 0.0d0 * t)

        earth_r_1 = earth_r_1 + 7.02217d-06*cos(3.14159265359d0 + 0.0d0 * t)
        earth_r_1 = earth_r_1 + 1.721238d-05*cos(1.06442300386d0 + 12566.1516999828d0 * t)
        earth_r_1 = earth_r_1 + 0.00103018607d0*cos(1.10748968172d0 + 6283.0758499914d0 * t)
        earth_r_1=earth_r_1*t;

        earth_r_2 = earth_r_2 + 1.23633d-06*cos(5.57935427994d0 + 12566.1516999828d0 * t)
        earth_r_2 = earth_r_2 + 4.359385d-05*cos(5.78455133808d0 + 6283.0758499914d0 * t)
        earth_r_2=earth_r_2*t*t;

        earth_r_3 = earth_r_3 + 1.44595d-06*cos(4.27319433901d0 + 6283.0758499914d0 * t)
        earth_r_3=earth_r_3*t*t*t;

        r = earth_r_3+earth_r_2+earth_r_1+earth_r_0
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

        jupiter_b_0 = jupiter_b_0 + 1.0242d-06*cos(3.15294025567d0 + 1581.959348283d0 * t)
        jupiter_b_0 = jupiter_b_0 + 1.03402d-06*cos(2.31878940535d0 + 1478.8665740644d0 * t)
        jupiter_b_0 = jupiter_b_0 + 1.03762d-06*cos(3.70104530617d0 + 515.463871093d0 * t)
        jupiter_b_0 = jupiter_b_0 + 1.15038d-06*cos(5.04892367391d0 + 316.3918696566d0 * t)
        jupiter_b_0 = jupiter_b_0 + 1.16379d-06*cos(1.38688268881d0 + 323.5054166574d0 * t)
        jupiter_b_0 = jupiter_b_0 + 1.23148d-06*cos(3.34968047337d0 + 1692.1656695024d0 * t)
        jupiter_b_0 = jupiter_b_0 + 1.32159d-06*cos(4.7781694038d0 + 742.9900605326d0 * t)
        jupiter_b_0 = jupiter_b_0 + 3.51433d-06*cos(4.61062966359d0 + 2118.7638603784d0 * t)
        jupiter_b_0 = jupiter_b_0 + 4.31072d-06*cos(2.6082502278d0 + 419.4846438752d0 * t)
        jupiter_b_0 = jupiter_b_0 + 4.64449d-06*cos(1.17337267936d0 + 949.1756089698d0 * t)
        jupiter_b_0 = jupiter_b_0 + 5.31671d-06*cos(2.70305944444d0 + 110.2063212194d0 * t)
        jupiter_b_0 = jupiter_b_0 + 5.58524d-06*cos(0.01354838161d0 + 846.0828347512d0 * t)
        jupiter_b_0 = jupiter_b_0 + 6.29223d-06*cos(0.6434329002d0 + 1066.49547719d0 * t)
        jupiter_b_0 = jupiter_b_0 + 6.84219d-06*cos(3.67808774854d0 + 213.299095438d0 * t)
        jupiter_b_0 = jupiter_b_0 + 7.6728d-06*cos(2.15473604461d0 + 632.7837393132d0 * t)
        jupiter_b_0 = jupiter_b_0 + 8.35861d-06*cos(5.1788197781d0 + 103.0927742186d0 * t)
        jupiter_b_0 = jupiter_b_0 + 8.94088d-06*cos(1.75447402715d0 + 7.1135470008d0 * t)
        jupiter_b_0 = jupiter_b_0 + 9.41651d-06*cos(2.93619073963d0 + 1052.2683831884d0 * t)
        jupiter_b_0 = jupiter_b_0 + 9.44328d-06*cos(1.67522315024d0 + 426.598190876d0 * t)
        jupiter_b_0 = jupiter_b_0 + 1.10688d-05*cos(2.9853440952d0 + 1162.4747044078d0 * t)
        jupiter_b_0 = jupiter_b_0 + 6.043996d-05*cos(4.25883108339d0 + 1589.0728952838d0 * t)
        jupiter_b_0 = jupiter_b_0 + 6.437782d-05*cos(0.30627119215d0 + 536.8045120954d0 * t)
        jupiter_b_0 = jupiter_b_0 + 8.101428d-05*cos(3.60509572885d0 + 522.5774180938d0 * t)
        jupiter_b_0 = jupiter_b_0 + 0.00109971634d0*cos(3.90809347197d0 + 1059.3819301892d0 * t)
        jupiter_b_0 = jupiter_b_0 + 0.00110090358d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_b_0 = jupiter_b_0 + 0.02268615702d0*cos(3.55852606721d0 + 529.6909650946d0 * t)

        jupiter_b_1 = jupiter_b_1 + 2.57804d-06*cos(4.76667796123d0 + 1052.2683831884d0 * t)
        jupiter_b_1 = jupiter_b_1 + 2.71233d-06*cos(0.10154920958d0 + 7.1135470008d0 * t)
        jupiter_b_1 = jupiter_b_1 + 2.92916d-06*cos(5.27960297214d0 + 1066.49547719d0 * t)
        jupiter_b_1 = jupiter_b_1 + 7.11633d-06*cos(3.13688338277d0 + 1589.0728952838d0 * t)
        jupiter_b_1 = jupiter_b_1 + 1.985777d-05*cos(0.0d0 + 0.0d0 * t)
        jupiter_b_1 = jupiter_b_1 + 2.429728d-05*cos(5.45947255041d0 + 522.5774180938d0 * t)
        jupiter_b_1 = jupiter_b_1 + 2.788602d-05*cos(4.85622679819d0 + 536.8045120954d0 * t)
        jupiter_b_1 = jupiter_b_1 + 7.789905d-05*cos(2.59734071843d0 + 1059.3819301892d0 * t)
        jupiter_b_1 = jupiter_b_1 + 0.00078203446d0*cos(1.52377859742d0 + 529.6909650946d0 * t)
        jupiter_b_1=jupiter_b_1*t;

        jupiter_b_2 = jupiter_b_2 + 1.15043d-06*cos(0.0d0 + 0.0d0 * t)
        jupiter_b_2 = jupiter_b_2 + 4.53862d-06*cos(0.95912416388d0 + 522.5774180938d0 * t)
        jupiter_b_2 = jupiter_b_2 + 5.02174d-06*cos(2.05202111599d0 + 1059.3819301892d0 * t)
        jupiter_b_2 = jupiter_b_2 + 6.02076d-06*cos(3.13358939436d0 + 536.8045120954d0 * t)
        jupiter_b_2 = jupiter_b_2 + 5.49832d-05*cos(3.01596270062d0 + 529.6909650946d0 * t)
        jupiter_b_2=jupiter_b_2*t*t;

        jupiter_b_3 = jupiter_b_3 + 1.85332d-06*cos(4.7927676149d0 + 529.6909650946d0 * t)
        jupiter_b_3=jupiter_b_3*t*t*t;

        r = jupiter_b_3+jupiter_b_2+jupiter_b_1+jupiter_b_0
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

        jupiter_l_0 = jupiter_l_0 + 1.05894d-06*cos(4.55439354032d0 + 526.5095713569d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.16786d-06*cos(3.3892092106d0 + 0.5212648618d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.17498d-06*cos(2.50021486074d0 + 1596.1864422846d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.3054d-06*cos(4.16876671917d0 + 1045.1548361876d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.37898d-06*cos(1.31800455202d0 + 1169.5882514086d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.41388d-06*cos(3.13579930728d0 + 491.5579294568d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.49385d-06*cos(4.37744775359d0 + 1685.0521225016d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.50504d-06*cos(3.90624455135d0 + 74.7815985673d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.57917d-06*cos(4.36478445901d0 + 1795.258443721d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.74827d-06*cos(5.90974976879d0 + 956.2891559706d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.75172d-06*cos(3.7297744122d0 + 942.062061969d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.75197d-06*cos(3.22647697998d0 + 1898.3512179396d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.97061d-06*cos(5.29255821015d0 + 1155.361157407d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.01991d-06*cos(1.80692992449d0 + 1375.7737998458d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.07336d-06*cos(1.85463683689d0 + 525.7588118315d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.20381d-06*cos(1.65114584814d0 + 543.9180590962d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.35139d-06*cos(1.22694468346d0 + 909.8187330546d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.44174d-06*cos(5.22024286247d0 + 728.762966531d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.56589d-06*cos(3.72410394286d0 + 199.0720014364d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.61005d-06*cos(0.82048379203d0 + 380.12776796d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.61541d-06*cos(1.87652515753d0 + 0.9632078465d0 * t)
        jupiter_l_0 = jupiter_l_0 + 3.30458d-06*cos(4.74049819491d0 + 0.0481841098d0 * t)
        jupiter_l_0 = jupiter_l_0 + 3.41016d-06*cos(5.7145237931d0 + 533.6231183577d0 * t)
        jupiter_l_0 = jupiter_l_0 + 3.75664d-06*cos(4.70304250208d0 + 1368.660252845d0 * t)
        jupiter_l_0 = jupiter_l_0 + 3.89876d-06*cos(4.89706786539d0 + 1692.1656695024d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.17267d-06*cos(1.03554397138d0 + 2.4476805548d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.40853d-06*cos(2.95818598959d0 + 454.9093665273d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.95219d-06*cos(3.75564106217d0 + 323.5054166574d0 * t)
        jupiter_l_0 = jupiter_l_0 + 5.81903d-06*cos(4.53969579398d0 + 309.2783226558d0 * t)
        jupiter_l_0 = jupiter_l_0 + 6.14482d-06*cos(4.10850580886d0 + 1478.8665740644d0 * t)
        jupiter_l_0 = jupiter_l_0 + 6.91971d-06*cos(6.13365277914d0 + 2118.7638603784d0 * t)
        jupiter_l_0 = jupiter_l_0 + 7.09166d-06*cos(1.2927476033d0 + 742.9900605326d0 * t)
        jupiter_l_0 = jupiter_l_0 + 7.31094d-06*cos(3.80592308125d0 + 1581.959348283d0 * t)
        jupiter_l_0 = jupiter_l_0 + 7.32853d-06*cos(6.08535124451d0 + 838.9692877504d0 * t)
        jupiter_l_0 = jupiter_l_0 + 8.84457d-06*cos(2.43700227469d0 + 412.3710968744d0 * t)
        jupiter_l_0 = jupiter_l_0 + 9.73272d-06*cos(4.09764549134d0 + 95.9792272178d0 * t)
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

        jupiter_l_1 = jupiter_l_1 + 1.06501d-06*cos(4.4767172424d0 + 956.2891559706d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.15444d-06*cos(0.6778374723d0 + 846.0828347512d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.30777d-06*cos(0.62641588161d0 + 728.762966531d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.34095d-06*cos(5.23702273624d0 + 2118.7638603784d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.71405d-06*cos(5.41658811525d0 + 199.0720014364d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.83904d-06*cos(6.2797391951d0 + 543.9180590962d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.86807d-06*cos(6.07956275814d0 + 742.9900605326d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.94827d-06*cos(2.21824346028d0 + 323.5054166574d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.98512d-06*cos(1.50446971008d0 + 838.9692877504d0 * t)
        jupiter_l_1 = jupiter_l_1 + 2.34071d-06*cos(6.24295755869d0 + 309.2783226558d0 * t)
        jupiter_l_1 = jupiter_l_1 + 2.34805d-06*cos(4.03315571261d0 + 949.1756089698d0 * t)
        jupiter_l_1 = jupiter_l_1 + 3.3682d-06*cos(3.72892266066d0 + 1162.4747044078d0 * t)
        jupiter_l_1 = jupiter_l_1 + 3.45412d-06*cos(4.24128387922d0 + 632.7837393132d0 * t)
        jupiter_l_1 = jupiter_l_1 + 4.12936d-06*cos(5.73653788228d0 + 95.9792272178d0 * t)
        jupiter_l_1 = jupiter_l_1 + 4.74197d-06*cos(4.1324371636d0 + 412.3710968744d0 * t)
        jupiter_l_1 = jupiter_l_1 + 5.67826d-06*cos(5.98865760444d0 + 625.6701923124d0 * t)
        jupiter_l_1 = jupiter_l_1 + 7.24923d-06*cos(5.51690038433d0 + 639.897286314d0 * t)
        jupiter_l_1 = jupiter_l_1 + 8.2725d-06*cos(4.80311857692d0 + 213.299095438d0 * t)
        jupiter_l_1 = jupiter_l_1 + 8.29822d-06*cos(0.59345481695d0 + 1066.49547719d0 * t)
        jupiter_l_1 = jupiter_l_1 + 8.47762d-06*cos(5.75765726863d0 + 110.2063212194d0 * t)
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

        jupiter_l_2 = jupiter_l_2 + 1.17324d-06*cos(1.41441723025d0 + 625.6701923124d0 * t)
        jupiter_l_2 = jupiter_l_2 + 1.29577d-06*cos(5.83745710707d0 + 412.3710968744d0 * t)
        jupiter_l_2 = jupiter_l_2 + 1.41825d-06*cos(1.63491733107d0 + 426.598190876d0 * t)
        jupiter_l_2 = jupiter_l_2 + 1.46156d-06*cos(3.81335105293d0 + 639.897286314d0 * t)
        jupiter_l_2 = jupiter_l_2 + 1.56209d-06*cos(1.36162315686d0 + 1052.2683831884d0 * t)
        jupiter_l_2 = jupiter_l_2 + 1.97456d-06*cos(2.4835107179d0 + 3.9321532631d0 * t)
        jupiter_l_2 = jupiter_l_2 + 2.03945d-06*cos(5.34259263233d0 + 1066.49547719d0 * t)
        jupiter_l_2 = jupiter_l_2 + 2.14121d-06*cos(3.8295818143d0 + 1589.0728952838d0 * t)
        jupiter_l_2 = jupiter_l_2 + 3.08194d-06*cos(0.6936828379d0 + 206.1855484372d0 * t)
        jupiter_l_2 = jupiter_l_2 + 3.37386d-06*cos(3.78644856157d0 + 3.1813937377d0 * t)
        jupiter_l_2 = jupiter_l_2 + 3.67514d-06*cos(6.05520169517d0 + 103.0927742186d0 * t)
        jupiter_l_2 = jupiter_l_2 + 3.77503d-06*cos(0.7605083906d0 + 515.463871093d0 * t)
        jupiter_l_2 = jupiter_l_2 + 3.83277d-06*cos(5.76794364868d0 + 419.4846438752d0 * t)
        jupiter_l_2 = jupiter_l_2 + 1.721046d-05*cos(4.18734600902d0 + 14.2270940016d0 * t)
        jupiter_l_2 = jupiter_l_2 + 2.54744d-05*cos(3.42720888976d0 + 1059.3819301892d0 * t)
        jupiter_l_2 = jupiter_l_2 + 2.728901d-05*cos(4.84555421873d0 + 536.8045120954d0 * t)
        jupiter_l_2 = jupiter_l_2 + 3.189359d-05*cos(1.05515491122d0 + 522.5774180938d0 * t)
        jupiter_l_2 = jupiter_l_2 + 0.00014837605d0*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_l_2 = jupiter_l_2 + 0.00030649436d0*cos(2.929777887d0 + 529.6909650946d0 * t)
        jupiter_l_2 = jupiter_l_2 + 0.00047233601d0*cos(4.32148536482d0 + 7.1135470008d0 * t)
        jupiter_l_2=jupiter_l_2*t*t;

        jupiter_l_3 = jupiter_l_3 + 1.65699d-06*cos(2.09182221854d0 + 1059.3819301892d0 * t)
        jupiter_l_3 = jupiter_l_3 + 3.5287d-06*cos(2.97380410245d0 + 522.5774180938d0 * t)
        jupiter_l_3 = jupiter_l_3 + 4.16933d-06*cos(3.24456258569d0 + 536.8045120954d0 * t)
        jupiter_l_3 = jupiter_l_3 + 4.70691d-06*cos(2.47502798748d0 + 14.2270940016d0 * t)
        jupiter_l_3 = jupiter_l_3 + 1.355012d-05*cos(1.34692775915d0 + 529.6909650946d0 * t)
        jupiter_l_3 = jupiter_l_3 + 6.501673d-05*cos(2.5986292365d0 + 7.1135470008d0 * t)
        jupiter_l_3=jupiter_l_3*t*t*t;

        jupiter_l_4 = jupiter_l_4 + 6.69505d-06*cos(0.85280378158d0 + 7.1135470008d0 * t)
        jupiter_l_4=jupiter_l_4*t*t*t*t;

        r = jupiter_l_4+jupiter_l_3+jupiter_l_2+jupiter_l_1+jupiter_l_0
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

        jupiter_r_0 = jupiter_r_0 + 1.03994d-06*cos(2.22277966661d0 + 74.7815985673d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.06425d-06*cos(5.81491645745d0 + 220.4126424388d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.12513d-06*cos(4.86217051434d0 + 528.2064923863d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.12538d-06*cos(0.85603677104d0 + 433.7117378768d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.20294d-06*cos(2.9520444051d0 + 3.9321532631d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.23523d-06*cos(2.26101680855d0 + 2317.8358618148d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.28191d-06*cos(4.66615733627d0 + 831.8557407496d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.28822d-06*cos(1.10499202918d0 + 2531.1349572528d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.39406d-06*cos(3.63978241621d0 + 1788.1448967202d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.76442d-06*cos(2.57642803889d0 + 9683.5945811164d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.91351d-06*cos(8.947898d-05 + 983.1158589136d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.92308d-06*cos(0.91996013364d0 + 1596.1864422846d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.97072d-06*cos(5.92862098187d0 + 453.424893819d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.00591d-06*cos(2.37332227687d0 + 1258.4539316256d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.15435d-06*cos(2.63589770012d0 + 2111.6503133776d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.39039d-06*cos(3.57396895042d0 + 835.0371344873d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.57472d-06*cos(6.13406653083d0 + 532.8723588323d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.7501d-06*cos(2.98827073289d0 + 526.5095713569d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.76581d-06*cos(2.52188912681d0 + 2001.4439921582d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.90917d-06*cos(3.89373030829d0 + 1471.7530270636d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.9101d-06*cos(6.03128127682d0 + 1169.5882514086d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.93746d-06*cos(2.04945754349d0 + 199.0720014364d0 * t)
        jupiter_r_0 = jupiter_r_0 + 3.03364d-06*cos(1.15407454389d0 + 5753.3848848968d0 * t)
        jupiter_r_0 = jupiter_r_0 + 3.09305d-06*cos(5.36839401116d0 + 1272.6810256272d0 * t)
        jupiter_r_0 = jupiter_r_0 + 3.19036d-06*cos(1.34818583641d0 + 2214.7430875962d0 * t)
        jupiter_r_0 = jupiter_r_0 + 3.38146d-06*cos(2.79887096517d0 + 1045.1548361876d0 * t)
        jupiter_r_0 = jupiter_r_0 + 3.45803d-06*cos(1.56404960644d0 + 491.5579294568d0 * t)
        jupiter_r_0 = jupiter_r_0 + 4.35816d-06*cos(2.60279250213d0 + 95.9792272178d0 * t)
        jupiter_r_0 = jupiter_r_0 + 4.45057d-06*cos(0.14648640292d0 + 14.2270940016d0 * t)
        jupiter_r_0 = jupiter_r_0 + 4.57841d-06*cos(0.12720499202d0 + 1375.7737998458d0 * t)
        jupiter_r_0 = jupiter_r_0 + 4.69974d-06*cos(2.81883756859d0 + 1795.258443721d0 * t)
        jupiter_r_0 = jupiter_r_0 + 4.96009d-06*cos(5.53020241869d0 + 380.12776796d0 * t)
        jupiter_r_0 = jupiter_r_0 + 5.42222d-06*cos(0.28357235311d0 + 525.7588118315d0 * t)
        jupiter_r_0 = jupiter_r_0 + 5.62092d-06*cos(0.08114877791d0 + 543.9180590962d0 * t)
        jupiter_r_0 = jupiter_r_0 + 6.1474d-06*cos(2.27633681284d0 + 942.062061969d0 * t)
        jupiter_r_0 = jupiter_r_0 + 6.20818d-06*cos(4.82275194351d0 + 956.2891559706d0 * t)
        jupiter_r_0 = jupiter_r_0 + 6.54071d-06*cos(3.38140746852d0 + 1692.1656695024d0 * t)
        jupiter_r_0 = jupiter_r_0 + 6.55334d-06*cos(2.7907259691d0 + 1685.0521225016d0 * t)
        jupiter_r_0 = jupiter_r_0 + 7.27156d-06*cos(3.98827252563d0 + 1155.361157407d0 * t)
        jupiter_r_0 = jupiter_r_0 + 7.76583d-06*cos(3.67710828843d0 + 728.762966531d0 * t)
        jupiter_r_0 = jupiter_r_0 + 8.11993d-06*cos(5.94093410097d0 + 909.8187330546d0 * t)
        jupiter_r_0 = jupiter_r_0 + 8.21383d-06*cos(1.59351544602d0 + 1898.3512179396d0 * t)
        jupiter_r_0 = jupiter_r_0 + 8.85764d-06*cos(4.14783869943d0 + 533.6231183577d0 * t)
        jupiter_r_0 = jupiter_r_0 + 9.61113d-06*cos(4.54876995367d0 + 2118.7638603784d0 * t)
        jupiter_r_0 = jupiter_r_0 + 9.98591d-06*cos(2.87205397992d0 + 309.2783226558d0 * t)
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

        jupiter_r_1 = jupiter_r_1 + 1.00157d-06*cos(5.24639992412d0 + 1265.5674786264d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.10685d-06*cos(3.62539004538d0 + 1272.6810256272d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.15354d-06*cos(4.4675233641d0 + 1581.959348283d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.21876d-06*cos(4.40555373903d0 + 1169.5882514086d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.23776d-06*cos(2.0423359166d0 + 1478.8665740644d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.3203d-06*cos(4.5111176854d0 + 525.7588118315d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.33441d-06*cos(1.32112984738d0 + 110.2063212194d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.46328d-06*cos(6.12953407685d0 + 533.6231183577d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.70248d-06*cos(4.84663902529d0 + 526.5095713569d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.79982d-06*cos(4.4021361484d0 + 532.8723588323d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.83575d-06*cos(4.26454732757d0 + 95.9792272178d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.95844d-06*cos(3.75886519686d0 + 199.0720014364d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.97119d-06*cos(3.70582665656d0 + 2118.7638603784d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.0014d-06*cos(4.43930806722d0 + 1045.1548361876d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.03233d-06*cos(5.60019394971d0 + 1155.361157407d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.2002d-06*cos(4.84195212656d0 + 1368.660252845d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.46438d-06*cos(3.92373109496d0 + 942.062061969d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.60727d-06*cos(5.34286862943d0 + 846.0828347512d0 * t)
        jupiter_r_1 = jupiter_r_1 + 3.37576d-06*cos(3.16751996354d0 + 956.2891559706d0 * t)
        jupiter_r_1 = jupiter_r_1 + 3.4733d-06*cos(4.68154619204d0 + 14.2270940016d0 * t)
        jupiter_r_1 = jupiter_r_1 + 4.01711d-06*cos(4.60509281258d0 + 309.2783226558d0 * t)
        jupiter_r_1 = jupiter_r_1 + 4.1584d-06*cos(5.36847472493d0 + 728.762966531d0 * t)
        jupiter_r_1 = jupiter_r_1 + 4.44628d-06*cos(0.40306241278d0 + 323.5054166574d0 * t)
        jupiter_r_1 = jupiter_r_1 + 4.68918d-06*cos(4.70985711091d0 + 543.9180590962d0 * t)
        jupiter_r_1 = jupiter_r_1 + 4.8481d-06*cos(2.46907968946d0 + 949.1756089698d0 * t)
        jupiter_r_1 = jupiter_r_1 + 5.67074d-06*cos(4.57671527249d0 + 742.9900605326d0 * t)
        jupiter_r_1 = jupiter_r_1 + 6.76729d-06*cos(6.2497969066d0 + 838.9692877504d0 * t)
        jupiter_r_1 = jupiter_r_1 + 7.40834d-06*cos(2.17089042827d0 + 1162.4747044078d0 * t)
        jupiter_r_1 = jupiter_r_1 + 8.0643d-06*cos(2.67747285932d0 + 632.7837393132d0 * t)
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

        jupiter_r_2 = jupiter_r_2 + 1.1338d-06*cos(0.78831018317d0 + 728.762966531d0 * t)
        jupiter_r_2 = jupiter_r_2 + 1.38577d-06*cos(2.93153004432d0 + 14.2270940016d0 * t)
        jupiter_r_2 = jupiter_r_2 + 1.9966d-06*cos(4.42869041267d0 + 103.0927742186d0 * t)
        jupiter_r_2 = jupiter_r_2 + 2.00884d-06*cos(3.06805028347d0 + 543.9180590962d0 * t)
        jupiter_r_2 = jupiter_r_2 + 2.29775d-06*cos(0.70510840437d0 + 735.8765135318d0 * t)
        jupiter_r_2 = jupiter_r_2 + 2.57306d-06*cos(0.962674825d0 + 632.7837393132d0 * t)
        jupiter_r_2 = jupiter_r_2 + 2.7994d-06*cos(4.26158071104d0 + 412.3710968744d0 * t)
        jupiter_r_2 = jupiter_r_2 + 3.32558d-06*cos(0.00332561805d0 + 426.598190876d0 * t)
        jupiter_r_2 = jupiter_r_2 + 3.39124d-06*cos(6.12690872435d0 + 625.6701923124d0 * t)
        jupiter_r_2 = jupiter_r_2 + 3.42139d-06*cos(6.09909325177d0 + 1052.2683831884d0 * t)
        jupiter_r_2 = jupiter_r_2 + 3.62961d-06*cos(5.36776401268d0 + 206.1855484372d0 * t)
        jupiter_r_2 = jupiter_r_2 + 3.77334d-06*cos(2.24232535935d0 + 1589.0728952838d0 * t)
        jupiter_r_2 = jupiter_r_2 + 4.06408d-06*cos(3.78248932836d0 + 1066.49547719d0 * t)
        jupiter_r_2 = jupiter_r_2 + 4.26544d-06*cos(2.22743958182d0 + 639.897286314d0 * t)
        jupiter_r_2 = jupiter_r_2 + 4.97914d-06*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_r_2 = jupiter_r_2 + 8.36256d-06*cos(4.19892740368d0 + 419.4846438752d0 * t)
        jupiter_r_2 = jupiter_r_2 + 9.6442d-06*cos(5.48029587251d0 + 515.463871093d0 * t)
        jupiter_r_2 = jupiter_r_2 + 1.861184d-05*cos(2.97686957956d0 + 7.1135470008d0 * t)
        jupiter_r_2 = jupiter_r_2 + 5.314031d-05*cos(1.83835031247d0 + 1059.3819301892d0 * t)
        jupiter_r_2 = jupiter_r_2 + 7.02994d-05*cos(3.27477392111d0 + 536.8045120954d0 * t)
        jupiter_r_2 = jupiter_r_2 + 8.251645d-05*cos(5.777744604d0 + 522.5774180938d0 * t)
        jupiter_r_2 = jupiter_r_2 + 0.00079644957d0*cos(1.35865949884d0 + 529.6909650946d0 * t)
        jupiter_r_2=jupiter_r_2*t*t;

        jupiter_r_3 = jupiter_r_3 + 2.21477d-06*cos(0.95234304351d0 + 515.463871093d0 * t)
        jupiter_r_3 = jupiter_r_3 + 2.54881d-06*cos(1.19631092831d0 + 7.1135470008d0 * t)
        jupiter_r_3 = jupiter_r_3 + 3.41654d-06*cos(0.52294532787d0 + 1059.3819301892d0 * t)
        jupiter_r_3 = jupiter_r_3 + 9.1563d-06*cos(1.41326157617d0 + 522.5774180938d0 * t)
        jupiter_r_3 = jupiter_r_3 + 1.073281d-05*cos(1.67319166156d0 + 536.8045120954d0 * t)
        jupiter_r_3 = jupiter_r_3 + 3.519277d-05*cos(6.05800355513d0 + 529.6909650946d0 * t)
        jupiter_r_3=jupiter_r_3*t*t*t;

        jupiter_r_4 = jupiter_r_4 + 1.13458d-06*cos(4.2481893818d0 + 529.6909650946d0 * t)
        jupiter_r_4 = jupiter_r_4 + 1.28623d-06*cos(0.08347608895d0 + 536.8045120954d0 * t)
        jupiter_r_4=jupiter_r_4*t*t*t*t;

        r = jupiter_r_4+jupiter_r_3+jupiter_r_2+jupiter_r_1+jupiter_r_0
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

        mars_b_0 = mars_b_0 + 1.39323d-06*cos(2.41796458896d0 + 8962.4553499102d0 * t)
        mars_b_0 = mars_b_0 + 1.42685d-06*cos(3.21292181638d0 + 3340.629680352d0 * t)
        mars_b_0 = mars_b_0 + 1.42686d-06*cos(1.18215016908d0 + 3340.5951730476d0 * t)
        mars_b_0 = mars_b_0 + 1.49297d-06*cos(2.16501221175d0 + 5621.8429232104d0 * t)
        mars_b_0 = mars_b_0 + 1.59678d-06*cos(2.23194572851d0 + 1059.3819301892d0 * t)
        mars_b_0 = mars_b_0 + 1.63159d-06*cos(4.26399640691d0 + 529.6909650946d0 * t)
        mars_b_0 = mars_b_0 + 1.81982d-06*cos(6.13648041445d0 + 6151.533888305d0 * t)
        mars_b_0 = mars_b_0 + 2.92506d-06*cos(3.79290674178d0 + 2281.2304965106d0 * t)
        mars_b_0 = mars_b_0 + 3.99109d-06*cos(5.13056816928d0 + 16703.062133499d0 * t)
        mars_b_0 = mars_b_0 + 4.42999d-06*cos(5.65233014206d0 + 3337.0893083508d0 * t)
        mars_b_0 = mars_b_0 + 4.43401d-06*cos(5.02642622964d0 + 3344.1355450488d0 * t)
        mars_b_0 = mars_b_0 + 3.4841d-05*cos(4.7881254926d0 + 13362.4497067992d0 * t)
        mars_b_0 = mars_b_0 + 0.00031365539d0*cos(4.4465105309d0 + 10021.8372800994d0 * t)
        mars_b_0 = mars_b_0 + 0.00289104742d0*cos(0.0d0 + 0.0d0 * t)
        mars_b_0 = mars_b_0 + 0.00298033234d0*cos(4.10616996305d0 + 6681.2248533996d0 * t)
        mars_b_0 = mars_b_0 + 0.03197134986d0*cos(3.76832042431d0 + 3340.6124266998d0 * t)

        mars_b_1 = mars_b_1 + 1.0199d-06*cos(3.52113557592d0 + 16703.062133499d0 * t)
        mars_b_1 = mars_b_1 + 6.272d-06*cos(3.11898601248d0 + 13362.4497067992d0 * t)
        mars_b_1 = mars_b_1 + 3.320981d-05*cos(2.62947004077d0 + 10021.8372800994d0 * t)
        mars_b_1 = mars_b_1 + 0.00012834709d0*cos(1.60810667915d0 + 6681.2248533996d0 * t)
        mars_b_1 = mars_b_1 + 0.00020976948d0*cos(3.14159265359d0 + 0.0d0 * t)
        mars_b_1 = mars_b_1 + 0.00217310991d0*cos(6.04472194776d0 + 3340.6124266998d0 * t)
        mars_b_1=mars_b_1*t;

        mars_b_2 = mars_b_2 + 2.67883d-06*cos(0.78837893063d0 + 10021.8372800994d0 * t)
        mars_b_2 = mars_b_2 + 9.18914d-06*cos(0.1153843119d0 + 6681.2248533996d0 * t)
        mars_b_2 = mars_b_2 + 2.595393d-05*cos(3.14159265359d0 + 0.0d0 * t)
        mars_b_2 = mars_b_2 + 8.888446d-05*cos(1.06196052751d0 + 3340.6124266998d0 * t)
        mars_b_2=mars_b_2*t*t;

        mars_b_3 = mars_b_3 + 3.30418d-06*cos(2.04215300484d0 + 3340.6124266998d0 * t)
        mars_b_3=mars_b_3*t*t*t;

        r = mars_b_3+mars_b_2+mars_b_1+mars_b_0
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

        mars_l_0 = mars_l_0 + 1.00099d-06*cos(3.24340223714d0 + 11773.3768115154d0 * t)
        mars_l_0 = mars_l_0 + 1.04542d-06*cos(0.78532737699d0 + 8827.3902698748d0 * t)
        mars_l_0 = mars_l_0 + 1.10378d-06*cos(1.05194545948d0 + 242.728603974d0 * t)
        mars_l_0 = mars_l_0 + 1.13481d-06*cos(3.70070432339d0 + 1589.0728952838d0 * t)
        mars_l_0 = mars_l_0 + 1.16944d-06*cos(3.12806863456d0 + 7903.073419721d0 * t)
        mars_l_0 = mars_l_0 + 1.28062d-06*cos(1.8066581622d0 + 5088.6288397668d0 * t)
        mars_l_0 = mars_l_0 + 1.28105d-06*cos(2.20807538189d0 + 1592.5960136328d0 * t)
        mars_l_0 = mars_l_0 + 1.30989d-06*cos(4.04491134956d0 + 12303.06777661d0 * t)
        mars_l_0 = mars_l_0 + 1.38243d-06*cos(4.30145122848d0 + 7.1135470008d0 * t)
        mars_l_0 = mars_l_0 + 1.39898d-06*cos(3.32595559208d0 + 2700.7151403858d0 * t)
        mars_l_0 = mars_l_0 + 1.44304d-06*cos(1.41874112114d0 + 135.0650800354d0 * t)
        mars_l_0 = mars_l_0 + 1.60016d-06*cos(3.94857092451d0 + 4562.4609930212d0 * t)
        mars_l_0 = mars_l_0 + 1.72117d-06*cos(0.43943649536d0 + 5486.777843175d0 * t)
        mars_l_0 = mars_l_0 + 1.74072d-06*cos(2.41361337725d0 + 553.5694028424d0 * t)
        mars_l_0 = mars_l_0 + 1.79196d-06*cos(1.00561962003d0 + 951.7184062506d0 * t)
        mars_l_0 = mars_l_0 + 1.88648d-06*cos(1.4910406604d0 + 9492.1463150048d0 * t)
        mars_l_0 = mars_l_0 + 1.93118d-06*cos(3.35716641911d0 + 3.5904286518d0 * t)
        mars_l_0 = mars_l_0 + 2.04162d-06*cos(2.82133445874d0 + 1221.8485663214d0 * t)
        mars_l_0 = mars_l_0 + 2.21228d-06*cos(3.50466812198d0 + 382.8965322232d0 * t)
        mars_l_0 = mars_l_0 + 2.31183d-06*cos(1.28242156993d0 + 3870.3033917944d0 * t)
        mars_l_0 = mars_l_0 + 2.36117d-06*cos(5.75503217933d0 + 3333.498879699d0 * t)
        mars_l_0 = mars_l_0 + 2.38866d-06*cos(5.37153646326d0 + 4136.9104335162d0 * t)
        mars_l_0 = mars_l_0 + 2.74027d-06*cos(0.54222167059d0 + 3340.545116397d0 * t)
        mars_l_0 = mars_l_0 + 2.74033d-06*cos(0.13372524985d0 + 3340.6797370026d0 * t)
        mars_l_0 = mars_l_0 + 2.81079d-06*cos(5.88163521788d0 + 1349.8674096588d0 * t)
        mars_l_0 = mars_l_0 + 2.83602d-06*cos(5.7688543494d0 + 3149.1641605882d0 * t)
        mars_l_0 = mars_l_0 + 2.93198d-06*cos(4.22131299634d0 + 20.7753954924d0 * t)
        mars_l_0 = mars_l_0 + 2.99395d-06*cos(2.78323740866d0 + 6254.6266625236d0 * t)
        mars_l_0 = mars_l_0 + 3.02375d-06*cos(4.48618007156d0 + 3532.0606928114d0 * t)
        mars_l_0 = mars_l_0 + 3.06551d-06*cos(0.38052848348d0 + 6684.7479717486d0 * t)
        mars_l_0 = mars_l_0 + 3.12141d-06*cos(0.99853944405d0 + 6677.7017350506d0 * t)
        mars_l_0 = mars_l_0 + 4.15131d-06*cos(0.49662285038d0 + 213.299095438d0 * t)
        mars_l_0 = mars_l_0 + 4.25966d-06*cos(0.55364317304d0 + 6283.0758499914d0 * t)
        mars_l_0 = mars_l_0 + 4.72167d-06*cos(3.62547124025d0 + 1194.4470102246d0 * t)
        mars_l_0 = mars_l_0 + 5.50474d-06*cos(3.81001042328d0 + 0.9803210682d0 * t)
        mars_l_0 = mars_l_0 + 5.5275d-06*cos(4.47479317037d0 + 1748.016413067d0 * t)
        mars_l_0 = mars_l_0 + 6.35548d-06*cos(2.92182225127d0 + 8432.7643848156d0 * t)
        mars_l_0 = mars_l_0 + 6.55162d-06*cos(0.48864064125d0 + 3127.3133312618d0 * t)
        mars_l_0 = mars_l_0 + 7.12902d-06*cos(3.66335473479d0 + 1059.3819301892d0 * t)
        mars_l_0 = mars_l_0 + 7.23861d-06*cos(0.67497311481d0 + 3738.761430108d0 * t)
        mars_l_0 = mars_l_0 + 7.48723d-06*cos(3.82248614017d0 + 155.4203994342d0 * t)
        mars_l_0 = mars_l_0 + 8.32715d-06*cos(2.46418619474d0 + 3340.5951730476d0 * t)
        mars_l_0 = mars_l_0 + 8.3272d-06*cos(4.49495782139d0 + 3340.629680352d0 * t)
        mars_l_0 = mars_l_0 + 8.58759d-06*cos(2.4009381194d0 + 2914.0142358238d0 * t)
        mars_l_0 = mars_l_0 + 8.91566d-06*cos(0.18293837498d0 + 16703.062133499d0 * t)
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

        mars_l_1 = mars_l_1 + 1.13718d-06*cos(5.42753341019d0 + 3738.761430108d0 * t)
        mars_l_1 = mars_l_1 + 1.13886d-06*cos(2.12863726524d0 + 1194.4470102246d0 * t)
        mars_l_1 = mars_l_1 + 1.16965d-06*cos(2.21414273762d0 + 1059.3819301892d0 * t)
        mars_l_1 = mars_l_1 + 1.17503d-06*cos(6.02411290806d0 + 6151.533888305d0 * t)
        mars_l_1 = mars_l_1 + 1.33565d-06*cos(5.97420357518d0 + 1748.016413067d0 * t)
        mars_l_1 = mars_l_1 + 1.33686d-06*cos(2.23327245555d0 + 0.9803210682d0 * t)
        mars_l_1 = mars_l_1 + 1.57593d-06*cos(4.18519540728d0 + 1751.539531416d0 * t)
        mars_l_1 = mars_l_1 + 1.68866d-06*cos(1.3293655906d0 + 3337.0893083508d0 * t)
        mars_l_1 = mars_l_1 + 2.05657d-06*cos(4.56889279932d0 + 2146.1654164752d0 * t)
        mars_l_1 = mars_l_1 + 2.82795d-06*cos(3.15966768785d0 + 2544.3144198834d0 * t)
        mars_l_1 = mars_l_1 + 3.2853d-06*cos(4.95632685192d0 + 16703.062133499d0 * t)
        mars_l_1 = mars_l_1 + 3.81751d-06*cos(3.53878166043d0 + 796.2980068164d0 * t)
        mars_l_1 = mars_l_1 + 4.29655d-06*cos(5.31645299471d0 + 155.4203994342d0 * t)
        mars_l_1 = mars_l_1 + 4.32635d-06*cos(2.56070853083d0 + 191.4482661116d0 * t)
        mars_l_1 = mars_l_1 + 5.20948d-06*cos(4.99428054039d0 + 3344.1355450488d0 * t)
        mars_l_1 = mars_l_1 + 5.37567d-06*cos(5.01581256923d0 + 398.1490034082d0 * t)
        mars_l_1 = mars_l_1 + 8.41535d-06*cos(4.45864030426d0 + 2281.2304965106d0 * t)
        mars_l_1 = mars_l_1 + 2.586332d-05*cos(4.60670058555d0 + 13362.4497067992d0 * t)
        mars_l_1 = mars_l_1 + 3.452392d-05*cos(4.7321039319d0 + 3.523118349d0 * t)
        mars_l_1 = mars_l_1 + 0.00020622975d0*cos(4.26108844583d0 + 10021.8372800994d0 * t)
        mars_l_1 = mars_l_1 + 0.00168414711d0*cos(3.92318567804d0 + 6681.2248533996d0 * t)
        mars_l_1 = mars_l_1 + 0.01457554523d0*cos(3.60433733236d0 + 3340.6124266998d0 * t)
        mars_l_1 = mars_l_1 + 3340.61242700512d0*cos(0.0d0 + 0.0d0 * t)
        mars_l_1=mars_l_1*t;

        mars_l_2 = mars_l_2 + 1.20954d-06*cos(0.54327128607d0 + 155.4203994342d0 * t)
        mars_l_2 = mars_l_2 + 2.22025d-06*cos(3.19437046607d0 + 3.523118349d0 * t)
        mars_l_2 = mars_l_2 + 4.01065d-06*cos(3.13581149963d0 + 13362.4497067992d0 * t)
        mars_l_2 = mars_l_2 + 4.51384d-06*cos(0.0d0 + 0.0d0 * t)
        mars_l_2 = mars_l_2 + 2.432575d-05*cos(2.79737979284d0 + 10021.8372800994d0 * t)
        mars_l_2 = mars_l_2 + 0.00013459579d0*cos(2.45738706163d0 + 6681.2248533996d0 * t)
        mars_l_2 = mars_l_2 + 0.00058152577d0*cos(2.04961712429d0 + 3340.6124266998d0 * t)
        mars_l_2=mars_l_2*t*t;

        mars_l_3 = mars_l_3 + 1.89478d-06*cos(1.28336839921d0 + 10021.8372800994d0 * t)
        mars_l_3 = mars_l_3 + 6.92668d-06*cos(0.88679887123d0 + 6681.2248533996d0 * t)
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

        mars_r_0 = mars_r_0 + 1.02094d-06*cos(6.18145185708d0 + 9492.1463150048d0 * t)
        mars_r_0 = mars_r_0 + 1.11546d-06*cos(0.55346108403d0 + 11243.6858464208d0 * t)
        mars_r_0 = mars_r_0 + 1.14927d-06*cos(4.31748869065d0 + 1349.8674096588d0 * t)
        mars_r_0 = mars_r_0 + 1.18789d-06*cos(2.12168482244d0 + 1589.0728952838d0 * t)
        mars_r_0 = mars_r_0 + 1.2857d-06*cos(5.49884728795d0 + 8827.3902698748d0 * t)
        mars_r_0 = mars_r_0 + 1.33126d-06*cos(1.53906679361d0 + 7903.073419721d0 * t)
        mars_r_0 = mars_r_0 + 1.41755d-06*cos(2.47792380112d0 + 4562.4609930212d0 * t)
        mars_r_0 = mars_r_0 + 1.44312d-06*cos(0.2130621946d0 + 5088.6288397668d0 * t)
        mars_r_0 = mars_r_0 + 1.63527d-06*cos(3.79888811958d0 + 4136.9104335162d0 * t)
        mars_r_0 = mars_r_0 + 1.76d-06*cos(5.95341919657d0 + 3870.3033917944d0 * t)
        mars_r_0 = mars_r_0 + 1.78617d-06*cos(4.18423004741d0 + 3333.498879699d0 * t)
        mars_r_0 = mars_r_0 + 1.82689d-06*cos(5.08062725665d0 + 6684.7479717486d0 * t)
        mars_r_0 = mars_r_0 + 1.86207d-06*cos(5.6987157241d0 + 6677.7017350506d0 * t)
        mars_r_0 = mars_r_0 + 2.0833d-06*cos(4.84626439637d0 + 3340.6797370026d0 * t)
        mars_r_0 = mars_r_0 + 2.08335d-06*cos(5.25476078693d0 + 3340.545116397d0 * t)
        mars_r_0 = mars_r_0 + 2.19427d-06*cos(5.58340231744d0 + 191.4482661116d0 * t)
        mars_r_0 = mars_r_0 + 2.23189d-06*cos(4.19861535147d0 + 3149.1641605882d0 * t)
        mars_r_0 = mars_r_0 + 2.28126d-06*cos(3.25526555588d0 + 6872.6731195112d0 * t)
        mars_r_0 = mars_r_0 + 2.33857d-06*cos(5.10545987572d0 + 5486.777843175d0 * t)
        mars_r_0 = mars_r_0 + 2.39119d-06*cos(2.03669934656d0 + 1194.4470102246d0 * t)
        mars_r_0 = mars_r_0 + 2.69896d-06*cos(3.76393625127d0 + 5884.9268465832d0 * t)
        mars_r_0 = mars_r_0 + 2.75217d-06*cos(2.90817482492d0 + 1748.016413067d0 * t)
        mars_r_0 = mars_r_0 + 2.75506d-06*cos(1.21767950614d0 + 6254.6266625236d0 * t)
        mars_r_0 = mars_r_0 + 2.79543d-06*cos(5.2574968538d0 + 6283.0758499914d0 * t)
        mars_r_0 = mars_r_0 + 2.83713d-06*cos(2.90692064724d0 + 3532.0606928114d0 * t)
        mars_r_0 = mars_r_0 + 3.48095d-06*cos(4.83219199976d0 + 16703.062133499d0 * t)
        mars_r_0 = mars_r_0 + 4.72775d-06*cos(5.19850522346d0 + 3127.3133312618d0 * t)
        mars_r_0 = mars_r_0 + 5.26166d-06*cos(5.38292991236d0 + 3738.761430108d0 * t)
        mars_r_0 = mars_r_0 + 5.74355d-06*cos(0.82896244455d0 + 2914.0142358238d0 * t)
        mars_r_0 = mars_r_0 + 6.29978d-06*cos(1.28737486495d0 + 1751.539531416d0 * t)
        mars_r_0 = mars_r_0 + 6.3314d-06*cos(2.92430446399d0 + 3340.629680352d0 * t)
        mars_r_0 = mars_r_0 + 6.33144d-06*cos(0.89353283242d0 + 3340.5951730476d0 * t)
        mars_r_0 = mars_r_0 + 6.92339d-06*cos(2.13378874689d0 + 8962.4553499102d0 * t)
        mars_r_0 = mars_r_0 + 7.25583d-06*cos(1.24516810723d0 + 8432.7643848156d0 * t)
        mars_r_0 = mars_r_0 + 7.40975d-06*cos(1.49906336885d0 + 2146.1654164752d0 * t)
        mars_r_0 = mars_r_0 + 7.97915d-06*cos(3.44839203899d0 + 796.2980068164d0 * t)
        mars_r_0 = mars_r_0 + 8.07354d-06*cos(2.10217065501d0 + 1059.3819301892d0 * t)
        mars_r_0 = mars_r_0 + 8.99066d-06*cos(4.40791133207d0 + 529.6909650946d0 * t)
        mars_r_0 = mars_r_0 + 9.92252d-06*cos(5.83861961952d0 + 6151.533888305d0 * t)
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

        mars_r_1 = mars_r_1 + 1.18443d-06*cos(2.99762091382d0 + 2146.1654164752d0 * t)
        mars_r_1 = mars_r_1 + 1.27059d-06*cos(1.95391155885d0 + 796.2980068164d0 * t)
        mars_r_1 = mars_r_1 + 1.28199d-06*cos(0.62991771813d0 + 1059.3819301892d0 * t)
        mars_r_1 = mars_r_1 + 1.28362d-06*cos(6.04343227063d0 + 3337.0893083508d0 * t)
        mars_r_1 = mars_r_1 + 1.35851d-06*cos(3.38507063082d0 + 16703.062133499d0 * t)
        mars_r_1 = mars_r_1 + 1.82576d-06*cos(1.58427562964d0 + 2544.3144198834d0 * t)
        mars_r_1 = mars_r_1 + 3.957d-06*cos(3.42323670971d0 + 3344.1355450488d0 * t)
        mars_r_1 = mars_r_1 + 4.38582d-06*cos(2.88835054603d0 + 2281.2304965106d0 * t)
        mars_r_1 = mars_r_1 + 1.19455d-05*cos(3.04702256206d0 + 13362.4497067992d0 * t)
        mars_r_1 = mars_r_1 + 0.0001081588d0*cos(2.70888095665d0 + 10021.8372800994d0 * t)
        mars_r_1 = mars_r_1 + 0.000128772d0*cos(0.0d0 + 0.0d0 * t)
        mars_r_1 = mars_r_1 + 0.00103175887d0*cos(2.37071847807d0 + 6681.2248533996d0 * t)
        mars_r_1 = mars_r_1 + 0.01107433345d0*cos(2.03250524857d0 + 3340.6124266998d0 * t)
        mars_r_1=mars_r_1*t;

        mars_r_2 = mars_r_2 + 1.87388d-06*cos(1.57298976045d0 + 13362.4497067992d0 * t)
        mars_r_2 = mars_r_2 + 1.274915d-05*cos(1.22593985222d0 + 10021.8372800994d0 * t)
        mars_r_2 = mars_r_2 + 8.138042d-05*cos(0.86998389204d0 + 6681.2248533996d0 * t)
        mars_r_2 = mars_r_2 + 0.00044242249d0*cos(0.47930604954d0 + 3340.6124266998d0 * t)
        mars_r_2=mars_r_2*t*t;

        mars_r_3 = mars_r_3 + 1.00044d-06*cos(5.99727457548d0 + 10021.8372800994d0 * t)
        mars_r_3 = mars_r_3 + 4.24447d-06*cos(5.61343952053d0 + 6681.2248533996d0 * t)
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

        mercury_b_0 = mercury_b_0 + 1.00454d-06*cos(5.65684757892d0 + 20426.571092422d0 * t)
        mercury_b_0 = mercury_b_0 + 1.21395d-06*cos(1.81271747279d0 + 53285.1848352418d0 * t)
        mercury_b_0 = mercury_b_0 + 1.32013d-06*cos(1.11908482553d0 + 234791.12827416777d0 * t)
        mercury_b_0 = mercury_b_0 + 2.07674d-06*cos(4.91772567908d0 + 27197.2816936676d0 * t)
        mercury_b_0 = mercury_b_0 + 2.08584d-06*cos(2.02020295489d0 + 24978.5245894808d0 * t)
        mercury_b_0 = mercury_b_0 + 5.13953d-06*cos(4.37835406663d0 + 208703.2251325936d0 * t)
        mercury_b_0 = mercury_b_0 + 2.014189d-05*cos(1.35324164377d0 + 182615.3219910194d0 * t)
        mercury_b_0 = mercury_b_0 + 7.963301d-05*cos(4.60972126127d0 + 156527.41884944518d0 * t)
        mercury_b_0 = mercury_b_0 + 0.00031866927d0*cos(1.58088495658d0 + 130439.51570787099d0 * t)
        mercury_b_0 = mercury_b_0 + 0.0012977877d0*cos(4.83232503958d0 + 104351.61256629678d0 * t)
        mercury_b_0 = mercury_b_0 + 0.0054325181d0*cos(1.79644363964d0 + 78263.70942472259d0 * t)
        mercury_b_0 = mercury_b_0 + 0.01222839532d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_b_0 = mercury_b_0 + 0.02388076996d0*cos(5.03738959686d0 + 52175.8062831484d0 * t)
        mercury_b_0 = mercury_b_0 + 0.11737528961d0*cos(1.98357498767d0 + 26087.9031415742d0 * t)

        mercury_b_1 = mercury_b_1 + 2.98013d-06*cos(6.11414444304d0 + 182615.3219910194d0 * t)
        mercury_b_1 = mercury_b_1 + 9.49669d-06*cos(3.06780459575d0 + 156527.41884944518d0 * t)
        mercury_b_1 = mercury_b_1 + 2.890729d-05*cos(0.00943621371d0 + 130439.51570787099d0 * t)
        mercury_b_1 = mercury_b_1 + 8.097508d-05*cos(3.20946389315d0 + 104351.61256629678d0 * t)
        mercury_b_1 = mercury_b_1 + 0.00018772047d0*cos(0.05141288887d0 + 78263.70942472259d0 * t)
        mercury_b_1 = mercury_b_1 + 0.00023970726d0*cos(2.53272082947d0 + 52175.8062831484d0 * t)
        mercury_b_1 = mercury_b_1 + 0.00099737713d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_b_1 = mercury_b_1 + 0.00274646065d0*cos(3.95008450011d0 + 26087.9031415742d0 * t)
        mercury_b_1=mercury_b_1*t;

        mercury_b_2 = mercury_b_2 + 1.33544d-06*cos(4.61055165903d0 + 130439.51570787099d0 * t)
        mercury_b_2 = mercury_b_2 + 2.66936d-06*cos(1.42744634495d0 + 104351.61256629678d0 * t)
        mercury_b_2 = mercury_b_2 + 4.07309d-06*cos(4.32215500849d0 + 78263.70942472259d0 * t)
        mercury_b_2 = mercury_b_2 + 5.1603d-06*cos(0.49321133154d0 + 52175.8062831484d0 * t)
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

        mercury_l_0 = mercury_l_0 + 1.06422d-06*cos(4.20572143374d0 + 19804.8272915828d0 * t)
        mercury_l_0 = mercury_l_0 + 1.18233d-06*cos(2.78149967294d0 + 77204.32749453338d0 * t)
        mercury_l_0 = mercury_l_0 + 1.25219d-06*cos(3.72079967668d0 + 39609.6545831656d0 * t)
        mercury_l_0 = mercury_l_0 + 1.37943d-06*cos(0.29098540695d0 + 10213.285546211d0 * t)
        mercury_l_0 = mercury_l_0 + 1.42317d-06*cos(3.36004060149d0 + 37410.5672398786d0 * t)
        mercury_l_0 = mercury_l_0 + 1.72642d-06*cos(2.45200139206d0 + 24498.8302462904d0 * t)
        mercury_l_0 = mercury_l_0 + 1.75965d-06*cos(4.53636943501d0 + 51066.427731055d0 * t)
        mercury_l_0 = mercury_l_0 + 1.81629d-06*cos(2.43413603252d0 + 25661.3049506982d0 * t)
        mercury_l_0 = mercury_l_0 + 1.83358d-06*cos(2.62878694178d0 + 27043.5028831828d0 * t)
        mercury_l_0 = mercury_l_0 + 2.08996d-06*cos(2.09178645677d0 + 47623.8527860896d0 * t)
        mercury_l_0 = mercury_l_0 + 2.16645d-06*cos(0.65987085507d0 + 13521.7514415914d0 * t)
        mercury_l_0 = mercury_l_0 + 2.34831d-06*cos(0.26672019191d0 + 11322.6640983044d0 * t)
        mercury_l_0 = mercury_l_0 + 2.38793d-06*cos(0.113439144d0 + 1059.3819301892d0 * t)
        mercury_l_0 = mercury_l_0 + 2.59588d-06*cos(0.98732774234d0 + 4551.9534970588d0 * t)
        mercury_l_0 = mercury_l_0 + 2.64336d-06*cos(3.91705105199d0 + 57837.1383323006d0 * t)
        mercury_l_0 = mercury_l_0 + 2.72948d-06*cos(2.49451165014d0 + 529.6909650946d0 * t)
        mercury_l_0 = mercury_l_0 + 3.25329d-06*cos(1.33674488758d0 + 53285.1848352418d0 * t)
        mercury_l_0 = mercury_l_0 + 3.39215d-06*cos(5.86327825226d0 + 25558.2121764796d0 * t)
        mercury_l_0 = mercury_l_0 + 3.43312d-06*cos(5.7653170387d0 + 955.5997416086d0 * t)
        mercury_l_0 = mercury_l_0 + 3.45213d-06*cos(2.79211954198d0 + 15874.6175953632d0 * t)
        mercury_l_0 = mercury_l_0 + 3.52442d-06*cos(5.24156372447d0 + 20426.571092422d0 * t)
        mercury_l_0 = mercury_l_0 + 4.042d-06*cos(3.28228953196d0 + 208703.2251325936d0 * t)
        mercury_l_0 = mercury_l_0 + 4.51137d-06*cos(6.04989282259d0 + 51116.4243529592d0 * t)
        mercury_l_0 = mercury_l_0 + 6.43759d-06*cos(5.30266166599d0 + 21535.9496445154d0 * t)
        mercury_l_0 = mercury_l_0 + 7.14182d-06*cos(1.54144862493d0 + 24978.5245894808d0 * t)
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

        mercury_l_1 = mercury_l_1 + 3.50236d-06*cos(5.43397743985d0 + 182615.3219910194d0 * t)
        mercury_l_1 = mercury_l_1 + 3.5223d-06*cos(3.05246348628d0 + 1109.3785520934d0 * t)
        mercury_l_1 = mercury_l_1 + 1.336324d-05*cos(2.47909947012d0 + 156527.41884944518d0 * t)
        mercury_l_1 = mercury_l_1 + 5.119883d-05*cos(5.79432353574d0 + 130439.51570787099d0 * t)
        mercury_l_1 = mercury_l_1 + 0.00019676525d0*cos(2.80965111777d0 + 104351.61256629678d0 * t)
        mercury_l_1 = mercury_l_1 + 0.00075775081d0*cos(6.08568821653d0 + 78263.70942472259d0 * t)
        mercury_l_1 = mercury_l_1 + 0.00292242298d0*cos(3.04449355541d0 + 52175.8062831484d0 * t)
        mercury_l_1 = mercury_l_1 + 0.01131199811d0*cos(6.21874197797d0 + 26087.9031415742d0 * t)
        mercury_l_1 = mercury_l_1 + 26087.90313685529d0*cos(0.0d0 + 0.0d0 * t)
        mercury_l_1=mercury_l_1*t;

        mercury_l_2 = mercury_l_2 + 1.16931d-06*cos(1.04943307731d0 + 156527.41884944518d0 * t)
        mercury_l_2 = mercury_l_2 + 3.71058d-06*cos(4.31735787338d0 + 130439.51570787099d0 * t)
        mercury_l_2 = mercury_l_2 + 8.77186d-06*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_l_2 = mercury_l_2 + 1.128209d-05*cos(1.27901273779d0 + 104351.61256629678d0 * t)
        mercury_l_2 = mercury_l_2 + 3.20817d-05*cos(4.49577853102d0 + 78263.70942472259d0 * t)
        mercury_l_2 = mercury_l_2 + 8.123865d-05*cos(1.40305644134d0 + 52175.8062831484d0 * t)
        mercury_l_2 = mercury_l_2 + 0.00016395129d0*cos(4.67759555504d0 + 26087.9031415742d0 * t)
        mercury_l_2=mercury_l_2*t*t;

        mercury_l_3 = mercury_l_3 + 1.55725d-06*cos(6.23814315369d0 + 52175.8062831484d0 * t)
        mercury_l_3 = mercury_l_3 + 1.69496d-06*cos(3.20221586818d0 + 26087.9031415742d0 * t)
        mercury_l_3=mercury_l_3*t*t*t;

        r = mercury_l_3+mercury_l_2+mercury_l_1+mercury_l_0
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

        mercury_r_0 = mercury_r_0 + 1.00144d-06*cos(3.73435615066d0 + 21535.9496445154d0 * t)
        mercury_r_0 = mercury_r_0 + 1.4198d-06*cos(6.25264206514d0 + 24978.5245894808d0 * t)
        mercury_r_0 = mercury_r_0 + 2.01498d-06*cos(5.59227727403d0 + 31749.2351907264d0 * t)
        mercury_r_0 = mercury_r_0 + 2.01855d-06*cos(5.64725040577d0 + 182615.3219910194d0 * t)
        mercury_r_0 = mercury_r_0 + 2.60033d-06*cos(3.02817753901d0 + 27197.2816936676d0 * t)
        mercury_r_0 = mercury_r_0 + 2.89955d-06*cos(1.42441937278d0 + 25028.521211385d0 * t)
        mercury_r_0 = mercury_r_0 + 9.18228d-06*cos(2.59650562845d0 + 156527.41884944518d0 * t)
        mercury_r_0 = mercury_r_0 + 4.354065d-05*cos(5.82894543774d0 + 130439.51570787099d0 * t)
        mercury_r_0 = mercury_r_0 + 0.00021921969d0*cos(2.77820093972d0 + 104351.61256629678d0 * t)
        mercury_r_0 = mercury_r_0 + 0.00121281764d0*cos(6.01064153797d0 + 78263.70942472259d0 * t)
        mercury_r_0 = mercury_r_0 + 0.00795525558d0*cos(2.95989690104d0 + 52175.8062831484d0 * t)
        mercury_r_0 = mercury_r_0 + 0.07834131818d0*cos(6.19233722598d0 + 26087.9031415742d0 * t)
        mercury_r_0 = mercury_r_0 + 0.39528271651d0*cos(0.0d0 + 0.0d0 * t)

        mercury_r_1 = mercury_r_1 + 1.52851d-06*cos(1.06060778072d0 + 156527.41884944518d0 * t)
        mercury_r_1 = mercury_r_1 + 6.03996d-06*cos(4.29303116468d0 + 130439.51570787099d0 * t)
        mercury_r_1 = mercury_r_1 + 1.624367d-05*cos(0.0d0 + 0.0d0 * t)
        mercury_r_1 = mercury_r_1 + 2.432805d-05*cos(1.24226083323d0 + 104351.61256629678d0 * t)
        mercury_r_1 = mercury_r_1 + 0.00010094479d0*cos(4.47466326327d0 + 78263.70942472259d0 * t)
        mercury_r_1 = mercury_r_1 + 0.00044141826d0*cos(1.42385544001d0 + 52175.8062831484d0 * t)
        mercury_r_1 = mercury_r_1 + 0.0021734774d0*cos(4.65617158665d0 + 26087.9031415742d0 * t)
        mercury_r_1=mercury_r_1*t;

        mercury_r_2 = mercury_r_2 + 1.3613d-06*cos(5.97983927257d0 + 104351.61256629678d0 * t)
        mercury_r_2 = mercury_r_2 + 4.24822d-06*cos(2.92583350003d0 + 78263.70942472259d0 * t)
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

        neptune_b_0 = neptune_b_0 + 1.40455d-06*cos(3.52969120587d0 + 137.0330241624d0 * t)
        neptune_b_0 = neptune_b_0 + 2.0559d-06*cos(4.25652269561d0 + 529.6909650946d0 * t)
        neptune_b_0 = neptune_b_0 + 2.54333d-06*cos(3.27120475878d0 + 453.424893819d0 * t)
        neptune_b_0 = neptune_b_0 + 2.61647d-06*cos(3.76722702982d0 + 213.299095438d0 * t)
        neptune_b_0 = neptune_b_0 + 2.79963d-06*cos(1.68165289071d0 + 77.7505439839d0 * t)
        neptune_b_0 = neptune_b_0 + 4.0183d-06*cos(4.16883411107d0 + 114.3991069134d0 * t)
        neptune_b_0 = neptune_b_0 + 5.88806d-06*cos(3.18655898167d0 + 2.9689454166d0 * t)
        neptune_b_0 = neptune_b_0 + 5.94878d-06*cos(2.12892696997d0 + 41.1019810544d0 * t)
        neptune_b_0 = neptune_b_0 + 6.05767d-06*cos(2.80246592015d0 + 73.297125859d0 * t)
        neptune_b_0 = neptune_b_0 + 1.015137d-05*cos(3.21560997434d0 + 35.1640902212d0 * t)
        neptune_b_0 = neptune_b_0 + 1.96754d-05*cos(4.37778196626d0 + 1.4844727083d0 * t)
        neptune_b_0 = neptune_b_0 + 1.999918d-05*cos(1.50998668632d0 + 74.7815985673d0 * t)
        neptune_b_0 = neptune_b_0 + 0.00015355489d0*cos(2.52123799551d0 + 36.6485629295d0 * t)
        neptune_b_0 = neptune_b_0 + 0.00015448133d0*cos(3.50877079215d0 + 39.6175083461d0 * t)
        neptune_b_0 = neptune_b_0 + 0.00027623609d0*cos(0.0d0 + 0.0d0 * t)
        neptune_b_0 = neptune_b_0 + 0.00027780087d0*cos(5.91271884599d0 + 76.2660712756d0 * t)
        neptune_b_0 = neptune_b_0 + 0.03088622933d0*cos(1.44104372644d0 + 38.1330356378d0 * t)

        neptune_b_1 = neptune_b_1 + 2.08814d-06*cos(0.0d0 + 0.0d0 * t)
        neptune_b_1 = neptune_b_1 + 2.34436d-06*cos(1.65983511437d0 + 39.6175083461d0 * t)
        neptune_b_1 = neptune_b_1 + 2.51862d-06*cos(4.40444268588d0 + 36.6485629295d0 * t)
        neptune_b_1 = neptune_b_1 + 2.58298d-06*cos(5.4653959892d0 + 76.2660712756d0 * t)
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

        neptune_l_0 = neptune_l_0 + 1.01821d-06*cos(5.70539236951d0 + 0.1118745846d0 * t)
        neptune_l_0 = neptune_l_0 + 1.03059d-06*cos(4.40432042649d0 + 70.3281804424d0 * t)
        neptune_l_0 = neptune_l_0 + 1.03305d-06*cos(0.04078966679d0 + 0.2606324309d0 * t)
        neptune_l_0 = neptune_l_0 + 1.09299d-06*cos(2.41599473953d0 + 183.2428146475d0 * t)
        neptune_l_0 = neptune_l_0 + 1.18672d-06*cos(3.67706211426d0 + 2.4476805548d0 * t)
        neptune_l_0 = neptune_l_0 + 1.48305d-06*cos(0.85949274408d0 + 111.4301614968d0 * t)
        neptune_l_0 = neptune_l_0 + 1.50188d-06*cos(2.99706170691d0 + 5.9378908332d0 * t)
        neptune_l_0 = neptune_l_0 + 1.51401d-06*cos(2.19153150087d0 + 33.9402499438d0 * t)
        neptune_l_0 = neptune_l_0 + 1.70404d-06*cos(3.32390687638d0 + 108.4612160802d0 * t)
        neptune_l_0 = neptune_l_0 + 2.27079d-06*cos(1.79713146385d0 + 453.424893819d0 * t)
        neptune_l_0 = neptune_l_0 + 2.32888d-06*cos(2.50459784128d0 + 137.0330241624d0 * t)
        neptune_l_0 = neptune_l_0 + 2.44722d-06*cos(1.24693366148d0 + 9.5612275556d0 * t)
        neptune_l_0 = neptune_l_0 + 2.51941d-06*cos(5.78166617117d0 + 388.4651552382d0 * t)
        neptune_l_0 = neptune_l_0 + 2.66605d-06*cos(4.8893260559d0 + 0.9632078465d0 * t)
        neptune_l_0 = neptune_l_0 + 2.8217d-06*cos(2.2456558998d0 + 146.594251718d0 * t)
        neptune_l_0 = neptune_l_0 + 2.87322d-06*cos(4.50523446022d0 + 0.0481841098d0 * t)
        neptune_l_0 = neptune_l_0 + 3.06338d-06*cos(0.49684052934d0 + 0.5212648618d0 * t)
        neptune_l_0 = neptune_l_0 + 3.23003d-06*cos(2.24814943701d0 + 32.1951448046d0 * t)
        neptune_l_0 = neptune_l_0 + 3.40303d-06*cos(3.30376245107d0 + 77.7505439839d0 * t)
        neptune_l_0 = neptune_l_0 + 3.45189d-06*cos(3.46185292806d0 + 41.1019810544d0 * t)
        neptune_l_0 = neptune_l_0 + 3.99552d-06*cos(0.34972342836d0 + 1021.2488945514d0 * t)
        neptune_l_0 = neptune_l_0 + 5.06217d-06*cos(5.7478606968d0 + 114.3991069134d0 * t)
        neptune_l_0 = neptune_l_0 + 7.44997d-06*cos(3.19032509437d0 + 71.8126531507d0 * t)
        neptune_l_0 = neptune_l_0 + 9.00236d-06*cos(2.07607168714d0 + 109.9456887885d0 * t)
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

        neptune_l_1 = neptune_l_1 + 1.0559d-06*cos(2.75516054635d0 + 33.6796175129d0 * t)
        neptune_l_1 = neptune_l_1 + 1.0641d-06*cos(2.44986610969d0 + 4.4534181249d0 * t)
        neptune_l_1 = neptune_l_1 + 1.82909d-06*cos(3.45225794434d0 + 39.6175083461d0 * t)
        neptune_l_1 = neptune_l_1 + 1.95106d-06*cos(0.88660326088d0 + 76.2660712756d0 * t)
        neptune_l_1 = neptune_l_1 + 6.04842d-06*cos(1.5048304279d0 + 35.1640902212d0 * t)
        neptune_l_1 = neptune_l_1 + 1.306261d-05*cos(3.6728520962d0 + 2.9689454166d0 * t)
        neptune_l_1 = neptune_l_1 + 0.00015744045d0*cos(2.27887427527d0 + 38.1330356378d0 * t)
        neptune_l_1 = neptune_l_1 + 0.00016604172d0*cos(4.86323329249d0 + 1.4844727083d0 * t)
        neptune_l_1 = neptune_l_1 + 38.13303563957d0*cos(0.0d0 + 0.0d0 * t)
        neptune_l_1=neptune_l_1*t;

        neptune_l_2 = neptune_l_2 + 1.02284d-06*cos(0.0d0 + 0.0d0 * t)
        neptune_l_2 = neptune_l_2 + 2.86136d-06*cos(1.18985661922d0 + 38.1330356378d0 * t)
        neptune_l_2 = neptune_l_2 + 2.9565d-06*cos(1.85520880574d0 + 1.4844727083d0 * t)
        neptune_l_2=neptune_l_2*t*t;

        r = neptune_l_2+neptune_l_1+neptune_l_0
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

        neptune_r_0 = neptune_r_0 + 1.04667d-06*cos(0.94883561775d0 + 395.578702239d0 * t)
        neptune_r_0 = neptune_r_0 + 1.07361d-06*cos(3.2645911301d0 + 1059.3819301892d0 * t)
        neptune_r_0 = neptune_r_0 + 1.07888d-06*cos(0.98700578434d0 + 1124.34166877d0 * t)
        neptune_r_0 = neptune_r_0 + 1.09779d-06*cos(5.43147613574d0 + 494.5268748734d0 * t)
        neptune_r_0 = neptune_r_0 + 1.10984d-06*cos(3.34269023552d0 + 180.2738692309d0 * t)
        neptune_r_0 = neptune_r_0 + 1.13312d-06*cos(4.96838153028d0 + 148.0787244263d0 * t)
        neptune_r_0 = neptune_r_0 + 1.14252d-06*cos(0.25039919123d0 + 594.6507036754d0 * t)
        neptune_r_0 = neptune_r_0 + 1.19951d-06*cos(3.07428550584d0 + 184.7272873558d0 * t)
        neptune_r_0 = neptune_r_0 + 1.20812d-06*cos(1.92944484022d0 + 25.6028626656d0 * t)
        neptune_r_0 = neptune_r_0 + 1.22785d-06*cos(5.39724696402d0 + 62.2514255951d0 * t)
        neptune_r_0 = neptune_r_0 + 1.23604d-06*cos(3.11899453253d0 + 221.3758502853d0 * t)
        neptune_r_0 = neptune_r_0 + 1.24693d-06*cos(2.97042402154d0 + 251.4321310758d0 * t)
        neptune_r_0 = neptune_r_0 + 1.29107d-06*cos(3.2553937053d0 + 24.1183899573d0 * t)
        neptune_r_0 = neptune_r_0 + 1.37774d-06*cos(3.34926113123d0 + 0.9632078465d0 * t)
        neptune_r_0 = neptune_r_0 + 1.55321d-06*cos(3.28425560727d0 + 31.019488637d0 * t)
        neptune_r_0 = neptune_r_0 + 1.60922d-06*cos(5.16388154007d0 + 211.8146227297d0 * t)
        neptune_r_0 = neptune_r_0 + 1.62895d-06*cos(2.48942845886d0 + 4.192785694d0 * t)
        neptune_r_0 = neptune_r_0 + 1.63736d-06*cos(2.09772553888d0 + 2.4476805548d0 * t)
        neptune_r_0 = neptune_r_0 + 1.74151d-06*cos(5.54934515763d0 + 567.8240007324d0 * t)
        neptune_r_0 = neptune_r_0 + 1.74672d-06*cos(1.53072472355d0 + 329.8370663655d0 * t)
        neptune_r_0 = neptune_r_0 + 1.77846d-06*cos(4.14773474853d0 + 10175.1525105732d0 * t)
        neptune_r_0 = neptune_r_0 + 1.8228d-06*cos(2.45335941387d0 + 255.0554677982d0 * t)
        neptune_r_0 = neptune_r_0 + 1.93252d-06*cos(1.58538835107d0 + 138.5174968707d0 * t)
        neptune_r_0 = neptune_r_0 + 2.14523d-06*cos(3.62480267276d0 + 278.2588340188d0 * t)
        neptune_r_0 = neptune_r_0 + 2.34148d-06*cos(0.59107513684d0 + 42.5864537627d0 * t)
        neptune_r_0 = neptune_r_0 + 2.39159d-06*cos(3.15940174394d0 + 143.6253063014d0 * t)
        neptune_r_0 = neptune_r_0 + 2.46198d-06*cos(1.01506302015d0 + 141.2258098564d0 * t)
        neptune_r_0 = neptune_r_0 + 2.48151d-06*cos(3.41078778961d0 + 37.611770776d0 * t)
        neptune_r_0 = neptune_r_0 + 2.51026d-06*cos(3.54039557458d0 + 312.1990839626d0 * t)
        neptune_r_0 = neptune_r_0 + 2.68088d-06*cos(5.1344811954d0 + 112.9146342051d0 * t)
        neptune_r_0 = neptune_r_0 + 2.79604d-06*cos(1.54525386438d0 + 98.8999885246d0 * t)
        neptune_r_0 = neptune_r_0 + 2.81092d-06*cos(4.54185193503d0 + 44.7253177768d0 * t)
        neptune_r_0 = neptune_r_0 + 2.91773d-06*cos(4.02405440052d0 + 68.8437077341d0 * t)
        neptune_r_0 = neptune_r_0 + 2.9353d-06*cos(4.89079714624d0 + 528.2064923863d0 * t)
        neptune_r_0 = neptune_r_0 + 3.06d-06*cos(2.72475094464d0 + 6244.9428143536d0 * t)
        neptune_r_0 = neptune_r_0 + 3.0736d-06*cos(0.31939966593d0 + 601.7642506762d0 * t)
        neptune_r_0 = neptune_r_0 + 3.092d-06*cos(2.85451259377d0 + 72.0732855816d0 * t)
        neptune_r_0 = neptune_r_0 + 3.14499d-06*cos(3.95932948594d0 + 381.3516082374d0 * t)
        neptune_r_0 = neptune_r_0 + 3.2143d-06*cos(1.50624339061d0 + 454.9093665273d0 * t)
        neptune_r_0 = neptune_r_0 + 3.3326d-06*cos(5.75014889084d0 + 39.0962434843d0 * t)
        neptune_r_0 = neptune_r_0 + 3.45541d-06*cos(1.35801933629d0 + 293.188503436d0 * t)
        neptune_r_0 = neptune_r_0 + 3.55064d-06*cos(2.27873080286d0 + 218.4069048687d0 * t)
        neptune_r_0 = neptune_r_0 + 3.82461d-06*cos(3.29964092733d0 + 983.1158589136d0 * t)
        neptune_r_0 = neptune_r_0 + 3.99906d-06*cos(1.25612321821d0 + 8.0767548473d0 * t)
        neptune_r_0 = neptune_r_0 + 4.20992d-06*cos(1.8924823459d0 + 30.7106720963d0 * t)
        neptune_r_0 = neptune_r_0 + 4.22891d-06*cos(5.5309962033d0 + 525.4981794006d0 * t)
        neptune_r_0 = neptune_r_0 + 4.37096d-06*cos(2.27029212923d0 + 1550.939859646d0 * t)
        neptune_r_0 = neptune_r_0 + 5.01955d-06*cos(1.38654746863d0 + 5.9378908332d0 * t)
        neptune_r_0 = neptune_r_0 + 5.30475d-06*cos(4.2411216215d0 + 111.4301614968d0 * t)
        neptune_r_0 = neptune_r_0 + 6.15618d-06*cos(2.97867866529d0 + 106.9767433719d0 * t)
        neptune_r_0 = neptune_r_0 + 7.03453d-06*cos(1.18748208693d0 + 256.5399405065d0 * t)
        neptune_r_0 = neptune_r_0 + 7.31543d-06*cos(2.10445780662d0 + 181.7583419392d0 * t)
        neptune_r_0 = neptune_r_0 + 8.11407d-06*cos(3.00264146159d0 + 46.2097904851d0 * t)
        neptune_r_0 = neptune_r_0 + 8.35562d-06*cos(3.97050539397d0 + 114.3991069134d0 * t)
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

        neptune_r_1 = neptune_r_1 + 1.32766d-06*cos(3.60157672619d0 + 9.5612275556d0 * t)
        neptune_r_1 = neptune_r_1 + 1.5518d-06*cos(0.36515053081d0 + 41.1019810544d0 * t)
        neptune_r_1 = neptune_r_1 + 2.03512d-06*cos(2.41823214253d0 + 32.1951448046d0 * t)
        neptune_r_1 = neptune_r_1 + 2.64197d-06*cos(0.86149368602d0 + 4.4534181249d0 * t)
        neptune_r_1 = neptune_r_1 + 2.70304d-06*cos(3.27489604455d0 + 71.8126531507d0 * t)
        neptune_r_1 = neptune_r_1 + 4.89973d-06*cos(3.46822250901d0 + 137.0330241624d0 * t)
        neptune_r_1 = neptune_r_1 + 5.6079d-06*cos(2.88685815667d0 + 498.6714764576d0 * t)
        neptune_r_1 = neptune_r_1 + 5.71622d-06*cos(3.40060785432d0 + 484.444382456d0 * t)
        neptune_r_1 = neptune_r_1 + 6.07183d-06*cos(1.0770650035d0 + 1021.2488945514d0 * t)
        neptune_r_1 = neptune_r_1 + 7.6003d-06*cos(0.02051033644d0 + 182.279606801d0 * t)
        neptune_r_1 = neptune_r_1 + 7.89359d-06*cos(0.53295000718d0 + 168.0525127994d0 * t)
        neptune_r_1 = neptune_r_1 + 8.9765d-06*cos(5.24122933533d0 + 388.4651552382d0 * t)
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

        neptune_r_2 = neptune_r_2 + 1.12429d-06*cos(1.19000583596d0 + 498.6714764576d0 * t)
        neptune_r_2 = neptune_r_2 + 1.1794d-06*cos(5.10295026024d0 + 484.444382456d0 * t)
        neptune_r_2 = neptune_r_2 + 1.27836d-06*cos(2.84821806298d0 + 35.1640902212d0 * t)
        neptune_r_2 = neptune_r_2 + 1.56285d-06*cos(4.59414467342d0 + 182.279606801d0 * t)
        neptune_r_2 = neptune_r_2 + 1.63025d-06*cos(2.2387294713d0 + 168.0525127994d0 * t)
        neptune_r_2 = neptune_r_2 + 2.17404d-06*cos(0.34589546713d0 + 1.4844727083d0 * t)
        neptune_r_2 = neptune_r_2 + 4.247776d-05*cos(5.89911844921d0 + 38.1330356378d0 * t)
        neptune_r_2=neptune_r_2*t*t;

        neptune_r_3 = neptune_r_3 + 1.66556d-06*cos(4.55393495836d0 + 38.1330356378d0 * t)
        neptune_r_3=neptune_r_3*t*t*t;

        r = neptune_r_3+neptune_r_2+neptune_r_1+neptune_r_0
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

        saturn_b_0 = saturn_b_0 + 1.14218d-06*cos(0.96262037933d0 + 210.1177017003d0 * t)
        saturn_b_0 = saturn_b_0 + 1.15525d-06*cos(3.1089202092d0 + 216.4804891757d0 * t)
        saturn_b_0 = saturn_b_0 + 1.21669d-06*cos(3.11537142395d0 + 522.5774180938d0 * t)
        saturn_b_0 = saturn_b_0 + 1.34884d-06*cos(5.24501026174d0 + 742.9900605326d0 * t)
        saturn_b_0 = saturn_b_0 + 1.3914d-06*cos(1.99821987827d0 + 735.8765135318d0 * t)
        saturn_b_0 = saturn_b_0 + 1.3924d-06*cos(4.59535592976d0 + 14.2270940016d0 * t)
        saturn_b_0 = saturn_b_0 + 1.40585d-06*cos(0.64417933116d0 + 490.3340891794d0 * t)
        saturn_b_0 = saturn_b_0 + 1.78958d-06*cos(2.95361337281d0 + 63.7358983034d0 * t)
        saturn_b_0 = saturn_b_0 + 2.07214d-06*cos(0.73021353207d0 + 199.0720014364d0 * t)
        saturn_b_0 = saturn_b_0 + 2.08523d-06*cos(2.12003937634d0 + 415.5524906121d0 * t)
        saturn_b_0 = saturn_b_0 + 2.15354d-06*cos(5.9498256102d0 + 846.0828347512d0 * t)
        saturn_b_0 = saturn_b_0 + 2.36441d-06*cos(2.13887684631d0 + 11.0457002639d0 * t)
        saturn_b_0 = saturn_b_0 + 2.84495d-06*cos(4.88648507126d0 + 224.3447957019d0 * t)
        saturn_b_0 = saturn_b_0 + 3.14224d-06*cos(0.46510248959d0 + 217.2312487011d0 * t)
        saturn_b_0 = saturn_b_0 + 3.16063d-06*cos(1.99716693551d0 + 647.0108333148d0 * t)
        saturn_b_0 = saturn_b_0 + 3.1938d-06*cos(3.62571687438d0 + 209.3669421749d0 * t)
        saturn_b_0 = saturn_b_0 + 3.99674d-06*cos(3.35891409671d0 + 227.5261894396d0 * t)
        saturn_b_0 = saturn_b_0 + 5.52314d-06*cos(5.13149119536d0 + 202.2533951741d0 * t)
        saturn_b_0 = saturn_b_0 + 7.07645d-06*cos(3.80302289005d0 + 323.5054166574d0 * t)
        saturn_b_0 = saturn_b_0 + 9.4205d-06*cos(1.39646688872d0 + 853.196381752d0 * t)
        saturn_b_0 = saturn_b_0 + 9.69071d-06*cos(5.20434966293d0 + 632.7837393132d0 * t)
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

        saturn_b_1 = saturn_b_1 + 1.08184d-06*cos(1.39896246207d0 + 529.6909650946d0 * t)
        saturn_b_1 = saturn_b_1 + 1.57532d-06*cos(2.42607457234d0 + 199.0720014364d0 * t)
        saturn_b_1 = saturn_b_1 + 1.82664d-06*cos(0.12142438148d0 + 647.0108333148d0 * t)
        saturn_b_1 = saturn_b_1 + 2.52673d-06*cos(0.9002092521d0 + 632.7837393132d0 * t)
        saturn_b_1 = saturn_b_1 + 2.59878d-06*cos(3.93026240568d0 + 103.0927742186d0 * t)
        saturn_b_1 = saturn_b_1 + 3.01237d-06*cos(1.66219956459d0 + 227.5261894396d0 * t)
        saturn_b_1 = saturn_b_1 + 3.03761d-06*cos(5.46322830151d0 + 853.196381752d0 * t)
        saturn_b_1 = saturn_b_1 + 3.10902d-06*cos(4.38351712708d0 + 110.2063212194d0 * t)
        saturn_b_1 = saturn_b_1 + 7.00659d-06*cos(0.20545152078d0 + 316.3918696566d0 * t)
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

        saturn_b_2 = saturn_b_2 + 1.16719d-06*cos(6.24505924943d0 + 227.5261894396d0 * t)
        saturn_b_2 = saturn_b_2 + 2.03518d-06*cos(1.37396136744d0 + 7.1135470008d0 * t)
        saturn_b_2 = saturn_b_2 + 2.20164d-06*cos(0.0d0 + 0.0d0 * t)
        saturn_b_2 = saturn_b_2 + 3.1974d-06*cos(4.34820275048d0 + 639.897286314d0 * t)
        saturn_b_2 = saturn_b_2 + 3.91398d-06*cos(5.43939792344d0 + 433.7117378768d0 * t)
        saturn_b_2 = saturn_b_2 + 5.46808d-06*cos(2.94585826799d0 + 419.4846438752d0 * t)
        saturn_b_2 = saturn_b_2 + 1.452574d-05*cos(5.48867576013d0 + 426.598190876d0 * t)
        saturn_b_2 = saturn_b_2 + 2.081666d-05*cos(0.09631968077d0 + 220.4126424388d0 * t)
        saturn_b_2 = saturn_b_2 + 3.075713d-05*cos(3.9161093762d0 + 206.1855484372d0 * t)
        saturn_b_2 = saturn_b_2 + 0.00013884264d0*cos(0.08994998691d0 + 213.299095438d0 * t)
        saturn_b_2=saturn_b_2*t*t;

        saturn_b_3 = saturn_b_3 + 2.70686d-06*cos(4.65445792593d0 + 220.4126424388d0 * t)
        saturn_b_3 = saturn_b_3 + 2.77451d-06*cos(0.0d0 + 0.0d0 * t)
        saturn_b_3 = saturn_b_3 + 4.63357d-06*cos(1.69194209337d0 + 213.299095438d0 * t)
        saturn_b_3 = saturn_b_3 + 4.87242d-06*cos(5.57827705588d0 + 206.1855484372d0 * t)
        saturn_b_3=saturn_b_3*t*t*t;

        r = saturn_b_3+saturn_b_2+saturn_b_1+saturn_b_0
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

        saturn_l_0 = saturn_l_0 + 1.00634d-06*cos(4.96513420321d0 + 269.9214467406d0 * t)
        saturn_l_0 = saturn_l_0 + 1.02689d-06*cos(1.19754453191d0 + 1685.0521225016d0 * t)
        saturn_l_0 = saturn_l_0 + 1.03968d-06*cos(2.19185625957d0 + 88.865680217d0 * t)
        saturn_l_0 = saturn_l_0 + 1.06578d-06*cos(4.01153470635d0 + 956.2891559706d0 * t)
        saturn_l_0 = saturn_l_0 + 1.09287d-06*cos(3.43808188855d0 + 536.8045120954d0 * t)
        saturn_l_0 = saturn_l_0 + 1.104d-06*cos(0.16605133194d0 + 1.4844727083d0 * t)
        saturn_l_0 = saturn_l_0 + 1.1243d-06*cos(1.10510750315d0 + 191.2076949102d0 * t)
        saturn_l_0 = saturn_l_0 + 1.13737d-06*cos(5.59421876022d0 + 1059.3819301892d0 * t)
        saturn_l_0 = saturn_l_0 + 1.17326d-06*cos(2.67913173095d0 + 1155.361157407d0 * t)
        saturn_l_0 = saturn_l_0 + 1.18169d-06*cos(5.34072820318d0 + 554.0699874828d0 * t)
        saturn_l_0 = saturn_l_0 + 1.22371d-06*cos(1.97585460706d0 + 4.665866446d0 * t)
        saturn_l_0 = saturn_l_0 + 1.2498d-06*cos(6.27738701225d0 + 1898.3512179396d0 * t)
        saturn_l_0 = saturn_l_0 + 1.31292d-06*cos(4.06829024226d0 + 10.2949407385d0 * t)
        saturn_l_0 = saturn_l_0 + 1.3969d-06*cos(4.29463428594d0 + 21.3406410024d0 * t)
        saturn_l_0 = saturn_l_0 + 1.46074d-06*cos(6.23107926975d0 + 195.1398481733d0 * t)
        saturn_l_0 = saturn_l_0 + 1.47544d-06*cos(1.53530368067d0 + 5.6290742925d0 * t)
        saturn_l_0 = saturn_l_0 + 1.49302d-06*cos(5.73592320434d0 + 52.6901980395d0 * t)
        saturn_l_0 = saturn_l_0 + 1.64541d-06*cos(0.44004693949d0 + 5.4166259714d0 * t)
        saturn_l_0 = saturn_l_0 + 1.73914d-06*cos(1.86305647242d0 + 0.7507595254d0 * t)
        saturn_l_0 = saturn_l_0 + 1.82459d-06*cos(5.49122412646d0 + 2.9207613068d0 * t)
        saturn_l_0 = saturn_l_0 + 1.83509d-06*cos(0.97260974474d0 + 4.192785694d0 * t)
        saturn_l_0 = saturn_l_0 + 1.84698d-06*cos(3.50349102817d0 + 149.5631971346d0 * t)
        saturn_l_0 = saturn_l_0 + 2.0452d-06*cos(6.01073368945d0 + 265.9892934775d0 * t)
        saturn_l_0 = saturn_l_0 + 2.07645d-06*cos(0.48344140678d0 + 1162.4747044078d0 * t)
        saturn_l_0 = saturn_l_0 + 2.07666d-06*cos(1.28298038875d0 + 39.3568759152d0 * t)
        saturn_l_0 = saturn_l_0 + 2.0865d-06*cos(1.34533476508d0 + 625.6701923124d0 * t)
        saturn_l_0 = saturn_l_0 + 2.20225d-06*cos(4.20421716654d0 + 200.7689224658d0 * t)
        saturn_l_0 = saturn_l_0 + 2.26601d-06*cos(4.90997278296d0 + 12.5301729722d0 * t)
        saturn_l_0 = saturn_l_0 + 2.49142d-06*cos(1.47004230445d0 + 1368.660252845d0 * t)
        saturn_l_0 = saturn_l_0 + 2.77774d-06*cos(0.40024010033d0 + 211.8146227297d0 * t)
        saturn_l_0 = saturn_l_0 + 2.86703d-06*cos(2.37046001635d0 + 351.8165923087d0 * t)
        saturn_l_0 = saturn_l_0 + 3.09029d-06*cos(3.49491017725d0 + 216.4804891757d0 * t)
        saturn_l_0 = saturn_l_0 + 3.21562d-06*cos(2.57185176731d0 + 647.0108333148d0 * t)
        saturn_l_0 = saturn_l_0 + 3.22189d-06*cos(0.96136528867d0 + 203.7378678824d0 * t)
        saturn_l_0 = saturn_l_0 + 3.30197d-06*cos(0.24721738903d0 + 1581.959348283d0 * t)
        saturn_l_0 = saturn_l_0 + 3.43481d-06*cos(0.24603836481d0 + 0.5212648618d0 * t)
        saturn_l_0 = saturn_l_0 + 3.47422d-06*cos(1.53923267387d0 + 340.7708920448d0 * t)
        saturn_l_0 = saturn_l_0 + 3.54988d-06*cos(3.01280169452d0 + 838.9692877504d0 * t)
        saturn_l_0 = saturn_l_0 + 3.72318d-06*cos(2.27822895353d0 + 217.2312487011d0 * t)
        saturn_l_0 = saturn_l_0 + 4.48547d-06*cos(1.28991363969d0 + 127.4717966068d0 * t)
        saturn_l_0 = saturn_l_0 + 4.51857d-06*cos(1.04437293342d0 + 490.3340891794d0 * t)
        saturn_l_0 = saturn_l_0 + 4.74277d-06*cos(5.47526482059d0 + 742.9900605326d0 * t)
        saturn_l_0 = saturn_l_0 + 4.78044d-06*cos(2.96486700885d0 + 137.0330241624d0 * t)
        saturn_l_0 = saturn_l_0 + 5.29874d-06*cos(4.44938991187d0 + 117.3198682202d0 * t)
        saturn_l_0 = saturn_l_0 + 5.42648d-06*cos(1.51824981131d0 + 9.5612275556d0 * t)
        saturn_l_0 = saturn_l_0 + 5.46365d-06*cos(2.12677911914d0 + 350.3321196004d0 * t)
        saturn_l_0 = saturn_l_0 + 5.79844d-06*cos(3.09254750266d0 + 74.7815985673d0 * t)
        saturn_l_0 = saturn_l_0 + 6.24883d-06*cos(0.9704808751d0 + 210.1177017003d0 * t)
        saturn_l_0 = saturn_l_0 + 6.33982d-06*cos(2.29887419204d0 + 412.3710968744d0 * t)
        saturn_l_0 = saturn_l_0 + 6.54484d-06*cos(1.59889329033d0 + 0.0481841098d0 * t)
        saturn_l_0 = saturn_l_0 + 6.86999d-06*cos(1.74714152638d0 + 1052.2683831884d0 * t)
        saturn_l_0 = saturn_l_0 + 7.43599d-06*cos(5.25277685028d0 + 224.3447957019d0 * t)
        saturn_l_0 = saturn_l_0 + 7.48819d-06*cos(2.14396789786d0 + 853.196381752d0 * t)
        saturn_l_0 = saturn_l_0 + 7.89205d-06*cos(5.00745127508d0 + 0.9632078465d0 * t)
        saturn_l_0 = saturn_l_0 + 8.48642d-06*cos(3.1915017083d0 + 209.3669421749d0 * t)
        saturn_l_0 = saturn_l_0 + 8.52677d-06*cos(3.42141279787d0 + 175.1660598002d0 * t)
        saturn_l_0 = saturn_l_0 + 9.56757d-06*cos(0.50744342622d0 + 1265.5674786264d0 * t)
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

        saturn_l_1 = saturn_l_1 + 1.09809d-06*cos(6.16222822735d0 + 415.5524906121d0 * t)
        saturn_l_1 = saturn_l_1 + 1.27864d-06*cos(4.09556557491d0 + 217.2312487011d0 * t)
        saturn_l_1 = saturn_l_1 + 1.29468d-06*cos(3.4486372972d0 + 742.9900605326d0 * t)
        saturn_l_1 = saturn_l_1 + 1.36321d-06*cos(2.28588945465d0 + 10.2949407385d0 * t)
        saturn_l_1 = saturn_l_1 + 1.6711d-06*cos(2.59746814308d0 + 21.3406410024d0 * t)
        saturn_l_1 = saturn_l_1 + 1.71342d-06*cos(4.09606536666d0 + 846.0828347512d0 * t)
        saturn_l_1 = saturn_l_1 + 1.92275d-06*cos(2.96534476762d0 + 224.3447957019d0 * t)
        saturn_l_1 = saturn_l_1 + 2.30497d-06*cos(1.64428691304d0 + 216.4804891757d0 * t)
        saturn_l_1 = saturn_l_1 + 2.541d-06*cos(0.54280472223d0 + 647.0108333148d0 * t)
        saturn_l_1 = saturn_l_1 + 2.8091d-06*cos(5.74399466555d0 + 2.4476805548d0 * t)
        saturn_l_1 = saturn_l_1 + 2.89484d-06*cos(2.73211009526d0 + 117.3198682202d0 * t)
        saturn_l_1 = saturn_l_1 + 3.31895d-06*cos(2.86077271205d0 + 210.1177017003d0 * t)
        saturn_l_1 = saturn_l_1 + 3.36129d-06*cos(3.77170200605d0 + 735.8765135318d0 * t)
        saturn_l_1 = saturn_l_1 + 3.38569d-06*cos(3.63538109408d0 + 316.3918696566d0 * t)
        saturn_l_1 = saturn_l_1 + 3.4372d-06*cos(3.95819456535d0 + 412.3710968744d0 * t)
        saturn_l_1 = saturn_l_1 + 3.46963d-06*cos(2.24152661493d0 + 632.7837393132d0 * t)
        saturn_l_1 = saturn_l_1 + 4.07654d-06*cos(1.29967965754d0 + 209.3669421749d0 * t)
        saturn_l_1 = saturn_l_1 + 4.088d-06*cos(2.10122200324d0 + 323.5054166574d0 * t)
        saturn_l_1 = saturn_l_1 + 4.40442d-06*cos(6.0186116335d0 + 853.196381752d0 * t)
        saturn_l_1 = saturn_l_1 + 4.68362d-06*cos(4.61704486774d0 + 63.7358983034d0 * t)
        saturn_l_1 = saturn_l_1 + 4.78347d-06*cos(4.98809792152d0 + 522.5774180938d0 * t)
        saturn_l_1 = saturn_l_1 + 6.27498d-06*cos(6.1110981622d0 + 309.2783226558d0 * t)
        saturn_l_1 = saturn_l_1 + 6.49591d-06*cos(6.17410622073d0 + 202.2533951741d0 * t)
        saturn_l_1 = saturn_l_1 + 7.01524d-06*cos(4.43097553887d0 + 529.6909650946d0 * t)
        saturn_l_1 = saturn_l_1 + 9.2135d-06*cos(1.96069472334d0 + 227.5261894396d0 * t)
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

        saturn_l_2 = saturn_l_2 + 1.0071d-06*cos(4.89713543344d0 + 647.0108333148d0 * t)
        saturn_l_2 = saturn_l_2 + 1.00917d-06*cos(0.89243113369d0 + 21.3406410024d0 * t)
        saturn_l_2 = saturn_l_2 + 1.08829d-06*cos(3.89769392463d0 + 853.196381752d0 * t)
        saturn_l_2 = saturn_l_2 + 1.29502d-06*cos(1.56592444783d0 + 309.2783226558d0 * t)
        saturn_l_2 = saturn_l_2 + 1.61533d-06*cos(1.38145587317d0 + 11.0457002639d0 * t)
        saturn_l_2 = saturn_l_2 + 2.73782d-06*cos(4.2885706119d0 + 95.9792272178d0 * t)
        saturn_l_2 = saturn_l_2 + 4.24918d-06*cos(0.20908786519d0 + 227.5261894396d0 * t)
        saturn_l_2 = saturn_l_2 + 4.56767d-06*cos(1.2689684848d0 + 110.2063212194d0 * t)
        saturn_l_2 = saturn_l_2 + 5.4932d-06*cos(5.57301151406d0 + 3.9321532631d0 * t)
        saturn_l_2 = saturn_l_2 + 6.48857d-06*cos(4.33990455509d0 + 419.4846438752d0 * t)
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

        saturn_l_3 = saturn_l_3 + 1.31328d-06*cos(4.74306126145d0 + 227.5261894396d0 * t)
        saturn_l_3 = saturn_l_3 + 1.50882d-06*cos(2.72695802283d0 + 639.897286314d0 * t)
        saturn_l_3 = saturn_l_3 + 1.65645d-06*cos(5.11642167451d0 + 3.1813937377d0 * t)
        saturn_l_3 = saturn_l_3 + 2.36068d-06*cos(3.85849798708d0 + 433.7117378768d0 * t)
        saturn_l_3 = saturn_l_3 + 2.37009d-06*cos(5.76820709729d0 + 199.0720014364d0 * t)
        saturn_l_3 = saturn_l_3 + 1.044765d-05*cos(3.57813061587d0 + 426.598190876d0 * t)
        saturn_l_3 = saturn_l_3 + 1.162062d-05*cos(5.61974313217d0 + 14.2270940016d0 * t)
        saturn_l_3 = saturn_l_3 + 1.464959d-05*cos(5.91328884284d0 + 206.1855484372d0 * t)
        saturn_l_3 = saturn_l_3 + 1.906379d-05*cos(4.7607084357d0 + 220.4126424388d0 * t)
        saturn_l_3 = saturn_l_3 + 4.254737d-05*cos(4.58877599687d0 + 213.299095438d0 * t)
        saturn_l_3 = saturn_l_3 + 0.00016038732d0*cos(5.73945573267d0 + 7.1135470008d0 * t)
        saturn_l_3=saturn_l_3*t*t*t;

        saturn_l_4 = saturn_l_4 + 1.09412d-06*cos(1.51564560686d0 + 206.1855484372d0 * t)
        saturn_l_4 = saturn_l_4 + 1.4952d-06*cos(2.73191135434d0 + 213.299095438d0 * t)
        saturn_l_4 = saturn_l_4 + 2.36328d-06*cos(3.9024884432d0 + 14.2270940016d0 * t)
        saturn_l_4 = saturn_l_4 + 2.57094d-06*cos(2.98422287887d0 + 220.4126424388d0 * t)
        saturn_l_4 = saturn_l_4 + 1.661877d-05*cos(3.99824447634d0 + 7.1135470008d0 * t)
        saturn_l_4=saturn_l_4*t*t*t*t;

        saturn_l_5 = saturn_l_5 + 1.23607d-06*cos(2.25923420203d0 + 7.1135470008d0 * t)
        saturn_l_5=saturn_l_5*t*t*t*t*t;

        r = saturn_l_5+saturn_l_4+saturn_l_3+saturn_l_2+saturn_l_1+saturn_l_0
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

        saturn_r_0 = saturn_r_0 + 1.04426d-06*cos(3.63700546876d0 + 65.2203710117d0 * t)
        saturn_r_0 = saturn_r_0 + 1.07397d-06*cos(3.66971473274d0 + 212.7778305762d0 * t)
        saturn_r_0 = saturn_r_0 + 1.08678d-06*cos(2.85493119127d0 + 21.3406410024d0 * t)
        saturn_r_0 = saturn_r_0 + 1.08866d-06*cos(2.092391991d0 + 207.6700211455d0 * t)
        saturn_r_0 = saturn_r_0 + 1.09144d-06*cos(1.6323570202d0 + 208.633228992d0 * t)
        saturn_r_0 = saturn_r_0 + 1.10307d-06*cos(2.43652629097d0 + 355.7487455718d0 * t)
        saturn_r_0 = saturn_r_0 + 1.12006d-06*cos(0.26268721967d0 + 2104.5367663768d0 * t)
        saturn_r_0 = saturn_r_0 + 1.12586d-06*cos(5.03077528575d0 + 703.6331846174d0 * t)
        saturn_r_0 = saturn_r_0 + 1.20072d-06*cos(0.04355666836d0 + 1361.5467058442d0 * t)
        saturn_r_0 = saturn_r_0 + 1.25243d-06*cos(4.78336081984d0 + 205.2223405907d0 * t)
        saturn_r_0 = saturn_r_0 + 1.29054d-06*cos(2.5532773604d0 + 414.0680179038d0 * t)
        saturn_r_0 = saturn_r_0 + 1.31903d-06*cos(2.85788215274d0 + 312.4597163935d0 * t)
        saturn_r_0 = saturn_r_0 + 1.37424d-06*cos(5.43711941387d0 + 222.8603229936d0 * t)
        saturn_r_0 = saturn_r_0 + 1.43538d-06*cos(0.99839503339d0 + 76.2660712756d0 * t)
        saturn_r_0 = saturn_r_0 + 1.44751d-06*cos(5.081154075d0 + 423.4167971383d0 * t)
        saturn_r_0 = saturn_r_0 + 1.45738d-06*cos(1.56566786572d0 + 831.8557407496d0 * t)
        saturn_r_0 = saturn_r_0 + 1.50093d-06*cos(4.40713052025d0 + 417.0369633204d0 * t)
        saturn_r_0 = saturn_r_0 + 1.62306d-06*cos(5.73059706733d0 + 203.0041546995d0 * t)
        saturn_r_0 = saturn_r_0 + 1.63278d-06*cos(3.45811838277d0 + 617.8058857862d0 * t)
        saturn_r_0 = saturn_r_0 + 1.65367d-06*cos(2.89085128458d0 + 214.2623032845d0 * t)
        saturn_r_0 = saturn_r_0 + 1.65592d-06*cos(2.63731901847d0 + 215.7467759928d0 * t)
        saturn_r_0 = saturn_r_0 + 1.69893d-06*cos(2.85627663958d0 + 99.1606209555d0 * t)
        saturn_r_0 = saturn_r_0 + 1.71967d-06*cos(2.365497404d0 + 213.2509113282d0 * t)
        saturn_r_0 = saturn_r_0 + 1.72018d-06*cos(5.56321647759d0 + 213.3472795478d0 * t)
        saturn_r_0 = saturn_r_0 + 1.72859d-06*cos(1.84924132022d0 + 1589.0728952838d0 * t)
        saturn_r_0 = saturn_r_0 + 1.75037d-06*cos(5.71409014243d0 + 1066.49547719d0 * t)
        saturn_r_0 = saturn_r_0 + 1.76715d-06*cos(2.3025051169d0 + 9999.986450773d0 * t)
        saturn_r_0 = saturn_r_0 + 1.77457d-06*cos(0.3813183367d0 + 430.5303441391d0 * t)
        saturn_r_0 = saturn_r_0 + 1.79461d-06*cos(4.4108886003d0 + 408.4389436113d0 * t)
        saturn_r_0 = saturn_r_0 + 1.82912d-06*cos(5.66913964019d0 + 2111.6503133776d0 * t)
        saturn_r_0 = saturn_r_0 + 1.86792d-06*cos(6.03513906344d0 + 404.5067903482d0 * t)
        saturn_r_0 = saturn_r_0 + 1.87955d-06*cos(6.07914706117d0 + 563.6312150384d0 * t)
        saturn_r_0 = saturn_r_0 + 1.91521d-06*cos(2.95905308803d0 + 437.6438911399d0 * t)
        saturn_r_0 = saturn_r_0 + 1.97242d-06*cos(3.90215848857d0 + 52.6901980395d0 * t)
        saturn_r_0 = saturn_r_0 + 2.05518d-06*cos(0.95727934819d0 + 288.0806940053d0 * t)
        saturn_r_0 = saturn_r_0 + 2.07418d-06*cos(5.38074389449d0 + 2317.8358618148d0 * t)
        saturn_r_0 = saturn_r_0 + 2.14211d-06*cos(4.20220398238d0 + 2531.1349572528d0 * t)
        saturn_r_0 = saturn_r_0 + 2.18728d-06*cos(5.25467962646d0 + 212.3358875915d0 * t)
        saturn_r_0 = saturn_r_0 + 2.21952d-06*cos(5.94565685178d0 + 39.3568759152d0 * t)
        saturn_r_0 = saturn_r_0 + 2.23693d-06*cos(2.28109311966d0 + 330.6189636582d0 * t)
        saturn_r_0 = saturn_r_0 + 2.24509d-06*cos(0.54737895493d0 + 1788.1448967202d0 * t)
        saturn_r_0 = saturn_r_0 + 2.26021d-06*cos(0.37470024598d0 + 142.4496501338d0 * t)
        saturn_r_0 = saturn_r_0 + 2.30764d-06*cos(5.49430203101d0 + 191.9584544356d0 * t)
        saturn_r_0 = saturn_r_0 + 2.3384d-06*cos(4.22716164833d0 + 114.1384744825d0 * t)
        saturn_r_0 = saturn_r_0 + 2.36745d-06*cos(0.90816434282d0 + 1375.7737998458d0 * t)
        saturn_r_0 = saturn_r_0 + 2.41484d-06*cos(1.12472797872d0 + 388.4651552382d0 * t)
        saturn_r_0 = saturn_r_0 + 2.42981d-06*cos(5.3719132247d0 + 1258.4539316256d0 * t)
        saturn_r_0 = saturn_r_0 + 2.6248d-06*cos(0.31730778329d0 + 1045.1548361876d0 * t)
        saturn_r_0 = saturn_r_0 + 2.75816d-06*cos(0.47831420035d0 + 38.1330356378d0 * t)
        saturn_r_0 = saturn_r_0 + 2.77361d-06*cos(5.32007209923d0 + 692.5874843535d0 * t)
        saturn_r_0 = saturn_r_0 + 2.88229d-06*cos(1.12166658438d0 + 422.6660376129d0 * t)
        saturn_r_0 = saturn_r_0 + 2.92033d-06*cos(6.21435200687d0 + 210.8514148832d0 * t)
        saturn_r_0 = saturn_r_0 + 2.9413d-06*cos(0.42566345584d0 + 312.1990839626d0 * t)
        saturn_r_0 = saturn_r_0 + 2.95348d-06*cos(0.67123785008d0 + 88.865680217d0 * t)
        saturn_r_0 = saturn_r_0 + 3.03382d-06*cos(0.87951215556d0 + 6069.7767545534d0 * t)
        saturn_r_0 = saturn_r_0 + 3.39681d-06*cos(1.40193253039d0 + 440.8252848776d0 * t)
        saturn_r_0 = saturn_r_0 + 3.40671d-06*cos(0.89095123731d0 + 628.8515860501d0 * t)
        saturn_r_0 = saturn_r_0 + 3.41376d-06*cos(2.37619847718d0 + 525.4981794006d0 * t)
        saturn_r_0 = saturn_r_0 + 3.42778d-06*cos(5.85587331618d0 + 1795.258443721d0 * t)
        saturn_r_0 = saturn_r_0 + 3.85941d-06*cos(1.99711336197d0 + 1272.6810256272d0 * t)
        saturn_r_0 = saturn_r_0 + 4.05564d-06*cos(1.63989371862d0 + 536.8045120954d0 * t)
        saturn_r_0 = saturn_r_0 + 4.27438d-06*cos(0.05728625421d0 + 284.1485407422d0 * t)
        saturn_r_0 = saturn_r_0 + 4.51795d-06*cos(5.64511397088d0 + 2001.4439921582d0 * t)
        saturn_r_0 = saturn_r_0 + 4.53031d-06*cos(3.00355936608d0 + 302.164775655d0 * t)
        saturn_r_0 = saturn_r_0 + 4.69977d-06*cos(0.83852490947d0 + 1471.7530270636d0 * t)
        saturn_r_0 = saturn_r_0 + 4.72465d-06*cos(1.881976479d0 + 515.463871093d0 * t)
        saturn_r_0 = saturn_r_0 + 4.82324d-06*cos(1.8404847559d0 + 479.2883889155d0 * t)
        saturn_r_0 = saturn_r_0 + 4.88024d-06*cos(2.79370056377d0 + 3.1813937377d0 * t)
        saturn_r_0 = saturn_r_0 + 4.89957d-06*cos(5.80627763476d0 + 191.2076949102d0 * t)
        saturn_r_0 = saturn_r_0 + 4.94358d-06*cos(2.28631779029d0 + 278.5194664497d0 * t)
        saturn_r_0 = saturn_r_0 + 5.16979d-06*cos(4.44301732436d0 + 2214.7430875962d0 * t)
        saturn_r_0 = saturn_r_0 + 5.34419d-06*cos(1.26448338991d0 + 275.5505210331d0 * t)
        saturn_r_0 = saturn_r_0 + 5.53115d-06*cos(3.41113180428d0 + 269.9214467406d0 * t)
        saturn_r_0 = saturn_r_0 + 6.1773d-06*cos(5.62079509269d0 + 942.062061969d0 * t)
        saturn_r_0 = saturn_r_0 + 6.26321d-06*cos(5.9422380524d0 + 1478.8665740644d0 * t)
        saturn_r_0 = saturn_r_0 + 6.59773d-06*cos(4.66626568448d0 + 195.1398481733d0 * t)
        saturn_r_0 = saturn_r_0 + 6.64378d-06*cos(0.60293797633d0 + 728.762966531d0 * t)
        saturn_r_0 = saturn_r_0 + 9.32498d-06*cos(3.6697651607d0 + 554.0699874828d0 * t)
        saturn_r_0 = saturn_r_0 + 9.85887d-06*cos(2.25994579127d0 + 956.2891559706d0 * t)
        saturn_r_0 = saturn_r_0 + 9.987d-06*cos(2.63153637392d0 + 200.7689224658d0 * t)
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

        saturn_r_1 = saturn_r_1 + 1.00208d-06*cos(3.61417145482d0 + 1066.49547719d0 * t)
        saturn_r_1 = saturn_r_1 + 1.03009d-06*cos(0.38169227203d0 + 203.7378678824d0 * t)
        saturn_r_1 = saturn_r_1 + 1.07261d-06*cos(4.31791292903d0 + 210.8514148832d0 * t)
        saturn_r_1 = saturn_r_1 + 1.26354d-06*cos(3.00342230503d0 + 277.0349937414d0 * t)
        saturn_r_1 = saturn_r_1 + 1.2781d-06*cos(2.53730683511d0 + 1471.7530270636d0 * t)
        saturn_r_1 = saturn_r_1 + 1.29293d-06*cos(1.14375799011d0 + 21.3406410024d0 * t)
        saturn_r_1 = saturn_r_1 + 1.35874d-06*cos(5.01655087212d0 + 351.8165923087d0 * t)
        saturn_r_1 = saturn_r_1 + 1.39555d-06*cos(1.35322655321d0 + 1685.0521225016d0 * t)
        saturn_r_1 = saturn_r_1 + 1.40611d-06*cos(2.02083462656d0 + 1045.1548361876d0 * t)
        saturn_r_1 = saturn_r_1 + 1.4099d-06*cos(1.2711804015d0 + 203.0041546995d0 * t)
        saturn_r_1 = saturn_r_1 + 1.5125d-06*cos(0.5284507406d0 + 330.6189636582d0 * t)
        saturn_r_1 = saturn_r_1 + 1.523d-06*cos(5.43871996026d0 + 422.6660376129d0 * t)
        saturn_r_1 = saturn_r_1 + 1.53415d-06*cos(0.26924047897d0 + 1272.6810256272d0 * t)
        saturn_r_1 = saturn_r_1 + 1.54921d-06*cos(1.19719941288d0 + 265.9892934775d0 * t)
        saturn_r_1 = saturn_r_1 + 1.57686d-06*cos(2.99426635258d0 + 340.7708920448d0 * t)
        saturn_r_1 = saturn_r_1 + 1.65475d-06*cos(5.99806063883d0 + 536.8045120954d0 * t)
        saturn_r_1 = saturn_r_1 + 1.69692d-06*cos(4.63444302692d0 + 284.1485407422d0 * t)
        saturn_r_1 = saturn_r_1 + 1.74706d-06*cos(3.44549385972d0 + 137.0330241624d0 * t)
        saturn_r_1 = saturn_r_1 + 1.81431d-06*cos(4.93450656865d0 + 74.7815985673d0 * t)
        saturn_r_1 = saturn_r_1 + 1.82943d-06*cos(2.67926427647d0 + 127.4717966068d0 * t)
        saturn_r_1 = saturn_r_1 + 1.95132d-06*cos(4.56582271431d0 + 846.0828347512d0 * t)
        saturn_r_1 = saturn_r_1 + 2.15355d-06*cos(3.56547915194d0 + 490.3340891794d0 * t)
        saturn_r_1 = saturn_r_1 + 2.21909d-06*cos(5.13181138104d0 + 269.9214467406d0 * t)
        saturn_r_1 = saturn_r_1 + 2.44591d-06*cos(1.04536406733d0 + 942.062061969d0 * t)
        saturn_r_1 = saturn_r_1 + 2.45985d-06*cos(0.90791252506d0 + 191.9584544356d0 * t)
        saturn_r_1 = saturn_r_1 + 2.63891d-06*cos(1.2857730655d0 + 1059.3819301892d0 * t)
        saturn_r_1 = saturn_r_1 + 2.6462d-06*cos(5.82810809153d0 + 149.5631971346d0 * t)
        saturn_r_1 = saturn_r_1 + 2.65342d-06*cos(2.42688922787d0 + 88.865680217d0 * t)
        saturn_r_1 = saturn_r_1 + 2.77708d-06*cos(0.25951592662d0 + 195.1398481733d0 * t)
        saturn_r_1 = saturn_r_1 + 2.9118d-06*cos(2.8313701005d0 + 1155.361157407d0 * t)
        saturn_r_1 = saturn_r_1 + 2.94362d-06*cos(2.81544110682d0 + 11.0457002639d0 * t)
        saturn_r_1 = saturn_r_1 + 3.16952d-06*cos(3.58395969651d0 + 515.463871093d0 * t)
        saturn_r_1 = saturn_r_1 + 3.21577d-06*cos(0.9793235123d0 + 3.1813937377d0 * t)
        saturn_r_1 = saturn_r_1 + 3.35677d-06*cos(1.61590789073d0 + 1368.660252845d0 * t)
        saturn_r_1 = saturn_r_1 + 3.44652d-06*cos(5.88820160547d0 + 440.8252848776d0 * t)
        saturn_r_1 = saturn_r_1 + 3.55987d-06*cos(2.30328555624d0 + 728.762966531d0 * t)
        saturn_r_1 = saturn_r_1 + 3.62976d-06*cos(4.7059780752d0 + 302.164775655d0 * t)
        saturn_r_1 = saturn_r_1 + 3.94995d-06*cos(0.5339710376d0 + 956.2891559706d0 * t)
        saturn_r_1 = saturn_r_1 + 4.12937d-06*cos(4.59321186186d0 + 415.5524906121d0 * t)
        saturn_r_1 = saturn_r_1 + 5.02951d-06*cos(2.12941646895d0 + 3.9321532631d0 * t)
        saturn_r_1 = saturn_r_1 + 5.99227d-06*cos(2.54946247931d0 + 217.2312487011d0 * t)
        saturn_r_1 = saturn_r_1 + 6.1293d-06*cos(3.03309390383d0 + 63.7358983034d0 * t)
        saturn_r_1 = saturn_r_1 + 6.4959d-06*cos(1.72473111863d0 + 742.9900605326d0 * t)
        saturn_r_1 = saturn_r_1 + 6.58132d-06*cos(4.1437471502d0 + 309.2783226558d0 * t)
        saturn_r_1 = saturn_r_1 + 7.39765d-06*cos(1.38209924525d0 + 625.6701923124d0 * t)
        saturn_r_1 = saturn_r_1 + 7.84828d-06*cos(3.06374185689d0 + 838.9692877504d0 * t)
        saturn_r_1 = saturn_r_1 + 8.7431d-06*cos(1.40216274572d0 + 224.3447957019d0 * t)
        saturn_r_1 = saturn_r_1 + 8.82063d-06*cos(1.88467410042d0 + 1052.2683831884d0 * t)
        saturn_r_1 = saturn_r_1 + 8.97508d-06*cos(0.98347755563d0 + 529.6909650946d0 * t)
        saturn_r_1 = saturn_r_1 + 9.543d-06*cos(5.15171167674d0 + 647.0108333148d0 * t)
        saturn_r_1 = saturn_r_1 + 9.65957d-06*cos(0.47988871608d0 + 632.7837393132d0 * t)
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

        saturn_r_2 = saturn_r_2 + 1.00365d-06*cos(5.46047886103d0 + 3.1813937377d0 * t)
        saturn_r_2 = saturn_r_2 + 1.08788d-06*cos(5.29339369085d0 + 515.463871093d0 * t)
        saturn_r_2 = saturn_r_2 + 1.10801d-06*cos(4.78116393398d0 + 838.9692877504d0 * t)
        saturn_r_2 = saturn_r_2 + 1.18896d-06*cos(5.55283545372d0 + 224.3447957019d0 * t)
        saturn_r_2 = saturn_r_2 + 1.23132d-06*cos(4.188082239d0 + 88.865680217d0 * t)
        saturn_r_2 = saturn_r_2 + 1.31964d-06*cos(5.9341108212d0 + 309.2783226558d0 * t)
        saturn_r_2 = saturn_r_2 + 1.32767d-06*cos(2.59540724138d0 + 191.9584544356d0 * t)
        saturn_r_2 = saturn_r_2 + 1.47816d-06*cos(0.13561171385d0 + 302.164775655d0 * t)
        saturn_r_2 = saturn_r_2 + 1.53635d-06*cos(3.13514267989d0 + 625.6701923124d0 * t)
        saturn_r_2 = saturn_r_2 + 1.77973d-06*cos(4.09718163123d0 + 440.8252848776d0 * t)
        saturn_r_2 = saturn_r_2 + 1.79903d-06*cos(3.59725930296d0 + 632.7837393132d0 * t)
        saturn_r_2 = saturn_r_2 + 2.04458d-06*cos(0.08803952503d0 + 202.2533951741d0 * t)
        saturn_r_2 = saturn_r_2 + 2.06684d-06*cos(4.02119282093d0 + 735.8765135318d0 * t)
        saturn_r_2 = saturn_r_2 + 3.25474d-06*cos(2.26775488379d0 + 853.196381752d0 * t)
        saturn_r_2 = saturn_r_2 + 3.56448d-06*cos(3.19046275776d0 + 210.1177017003d0 * t)
        saturn_r_2 = saturn_r_2 + 3.60843d-06*cos(3.27730304283d0 + 647.0108333148d0 * t)
        saturn_r_2 = saturn_r_2 + 3.73763d-06*cos(5.8341214698d0 + 117.3198682202d0 * t)
        saturn_r_2 = saturn_r_2 + 3.90607d-06*cos(4.48122593284d0 + 216.4804891757d0 * t)
        saturn_r_2 = saturn_r_2 + 4.04424d-06*cos(4.17313476718d0 + 209.3669421749d0 * t)
        saturn_r_2 = saturn_r_2 + 4.31231d-06*cos(5.17807636127d0 + 522.5774180938d0 * t)
        saturn_r_2 = saturn_r_2 + 5.45943d-06*cos(4.12843012325d0 + 412.3710968744d0 * t)
        saturn_r_2 = saturn_r_2 + 7.05974d-06*cos(2.97065900638d0 + 95.9792272178d0 * t)
        saturn_r_2 = saturn_r_2 + 9.23829d-06*cos(5.4638968891d0 + 323.5054166574d0 * t)
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

        saturn_r_3 = saturn_r_3 + 1.013d-06*cos(5.81716272185d0 + 412.3710968744d0 * t)
        saturn_r_3 = saturn_r_3 + 1.0203d-06*cos(4.70997918436d0 + 95.9792272178d0 * t)
        saturn_r_3 = saturn_r_3 + 1.21613d-06*cos(3.76751430846d0 + 323.5054166574d0 * t)
        saturn_r_3 = saturn_r_3 + 1.49326d-06*cos(3.20334759568d0 + 103.0927742186d0 * t)
        saturn_r_3 = saturn_r_3 + 1.87917d-06*cos(4.5908926492d0 + 110.2063212194d0 * t)
        saturn_r_3 = saturn_r_3 + 2.29396d-06*cos(4.69783424016d0 + 419.4846438752d0 * t)
        saturn_r_3 = saturn_r_3 + 3.93213d-06*cos(0.0d0 + 0.0d0 * t)
        saturn_r_3 = saturn_r_3 + 4.83108d-06*cos(1.17313249713d0 + 639.897286314d0 * t)
        saturn_r_3 = saturn_r_3 + 5.96411d-06*cos(4.13395467306d0 + 14.2270940016d0 * t)
        saturn_r_3 = saturn_r_3 + 6.05936d-06*cos(3.17456913264d0 + 227.5261894396d0 * t)
        saturn_r_3 = saturn_r_3 + 9.07379d-06*cos(2.28356519128d0 + 433.7117378768d0 * t)
        saturn_r_3 = saturn_r_3 + 1.070754d-05*cos(4.20372656114d0 + 199.0720014364d0 * t)
        saturn_r_3 = saturn_r_3 + 3.878848d-05*cos(2.01051759517d0 + 426.598190876d0 * t)
        saturn_r_3 = saturn_r_3 + 4.087056d-05*cos(4.22398596149d0 + 7.1135470008d0 * t)
        saturn_r_3 = saturn_r_3 + 6.908768d-05*cos(4.35175288182d0 + 206.1855484372d0 * t)
        saturn_r_3 = saturn_r_3 + 8.923679d-05*cos(3.19144467228d0 + 220.4126424388d0 * t)
        saturn_r_3 = saturn_r_3 + 0.00020315239d0*cos(3.02186068237d0 + 213.299095438d0 * t)
        saturn_r_3=saturn_r_3*t*t*t;

        saturn_r_4 = saturn_r_4 + 1.21067d-06*cos(2.40476128629d0 + 14.2270940016d0 * t)
        saturn_r_4 = saturn_r_4 + 1.44813d-06*cos(1.44265291294d0 + 227.5261894396d0 * t)
        saturn_r_4 = saturn_r_4 + 1.50056d-06*cos(0.47968186381d0 + 433.7117378768d0 * t)
        saturn_r_4 = saturn_r_4 + 1.70055d-06*cos(5.96000580678d0 + 199.0720014364d0 * t)
        saturn_r_4 = saturn_r_4 + 2.67495d-06*cos(0.18644716875d0 + 426.598190876d0 * t)
        saturn_r_4 = saturn_r_4 + 4.26107d-06*cos(2.46891791825d0 + 7.1135470008d0 * t)
        saturn_r_4 = saturn_r_4 + 5.16224d-06*cos(6.2404910535d0 + 206.1855484372d0 * t)
        saturn_r_4 = saturn_r_4 + 7.07794d-06*cos(1.16151449537d0 + 213.299095438d0 * t)
        saturn_r_4 = saturn_r_4 + 1.202117d-05*cos(1.41498340225d0 + 220.4126424388d0 * t)
        saturn_r_4=saturn_r_4*t*t*t*t;

        saturn_r_5 = saturn_r_5 + 1.28668d-06*cos(5.91279864289d0 + 220.4126424388d0 * t)
        saturn_r_5=saturn_r_5*t*t*t*t*t;

        r = saturn_r_5+saturn_r_4+saturn_r_3+saturn_r_2+saturn_r_1+saturn_r_0
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

        uranus_b_0 = uranus_b_0 + 1.02049d-06*cos(2.61876132065d0 + 78.7137518304d0 * t)
        uranus_b_0 = uranus_b_0 + 1.06444d-06*cos(0.94095705978d0 + 70.3281804424d0 * t)
        uranus_b_0 = uranus_b_0 + 1.16363d-06*cos(5.73877137488d0 + 70.8494453042d0 * t)
        uranus_b_0 = uranus_b_0 + 1.44064d-06*cos(5.96238846558d0 + 35.1640902212d0 * t)
        uranus_b_0 = uranus_b_0 + 1.60368d-06*cos(5.33635511113d0 + 111.4301614968d0 * t)
        uranus_b_0 = uranus_b_0 + 1.73648d-06*cos(1.93654971482d0 + 380.12776796d0 * t)
        uranus_b_0 = uranus_b_0 + 1.74896d-06*cos(1.23550822483d0 + 146.594251718d0 * t)
        uranus_b_0 = uranus_b_0 + 1.79936d-06*cos(3.72487768728d0 + 299.1263942692d0 * t)
        uranus_b_0 = uranus_b_0 + 2.15848d-06*cos(1.59122810633d0 + 38.1330356378d0 * t)
        uranus_b_0 = uranus_b_0 + 2.32667d-06*cos(2.25715668168d0 + 222.8603229936d0 * t)
        uranus_b_0 = uranus_b_0 + 2.44698d-06*cos(0.787951741d0 + 2.9689454166d0 * t)
        uranus_b_0 = uranus_b_0 + 4.20265d-06*cos(5.21280055515d0 + 11.0457002639d0 * t)
        uranus_b_0 = uranus_b_0 + 4.30661d-06*cos(3.55443947716d0 + 213.299095438d0 * t)
        uranus_b_0 = uranus_b_0 + 4.34627d-06*cos(0.34063199763d0 + 77.7505439839d0 * t)
        uranus_b_0 = uranus_b_0 + 4.36847d-06*cos(3.38081057022d0 + 529.6909650946d0 * t)
        uranus_b_0 = uranus_b_0 + 4.6263d-06*cos(0.74256687606d0 + 85.8272988312d0 * t)
        uranus_b_0 = uranus_b_0 + 5.22314d-06*cos(3.32086440954d0 + 138.5174968707d0 * t)
        uranus_b_0 = uranus_b_0 + 7.6064d-06*cos(6.13999362624d0 + 71.8126531507d0 * t)
        uranus_b_0 = uranus_b_0 + 9.24064d-06*cos(4.03822512696d0 + 151.0476698429d0 * t)
        uranus_b_0 = uranus_b_0 + 1.522163d-05*cos(0.27959645002d0 + 63.7358983034d0 * t)
        uranus_b_0 = uranus_b_0 + 2.010275d-05*cos(6.05550884547d0 + 148.0787244263d0 * t)
        uranus_b_0 = uranus_b_0 + 2.972303d-05*cos(2.24367206357d0 + 1.4844727083d0 * t)
        uranus_b_0 = uranus_b_0 + 3.259466d-05*cos(1.26119342526d0 + 224.3447957019d0 * t)
        uranus_b_0 = uranus_b_0 + 9.92616d-05*cos(0.57630380333d0 + 73.297125859d0 * t)
        uranus_b_0 = uranus_b_0 + 9.963722d-05*cos(1.61603805646d0 + 76.2660712756d0 * t)
        uranus_b_0 = uranus_b_0 + 0.00061601196d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_b_0 = uranus_b_0 + 0.000623414d0*cos(5.08111189648d0 + 149.5631971346d0 * t)
        uranus_b_0 = uranus_b_0 + 0.01346277648d0*cos(2.61877810547d0 + 74.7815985673d0 * t)

        uranus_b_1 = uranus_b_1 + 1.4452d-06*cos(4.22110521671d0 + 63.7358983034d0 * t)
        uranus_b_1 = uranus_b_1 + 1.81125d-06*cos(5.32079457105d0 + 224.3447957019d0 * t)
        uranus_b_1 = uranus_b_1 + 3.08903d-06*cos(3.61139770633d0 + 73.297125859d0 * t)
        uranus_b_1 = uranus_b_1 + 3.95276d-06*cos(5.49322816551d0 + 76.2660712756d0 * t)
        uranus_b_1 = uranus_b_1 + 1.719377d-05*cos(0.0d0 + 0.0d0 * t)
        uranus_b_1 = uranus_b_1 + 2.480115d-05*cos(2.73961370453d0 + 149.5631971346d0 * t)
        uranus_b_1 = uranus_b_1 + 0.00034101978d0*cos(0.01321929936d0 + 74.7815985673d0 * t)
        uranus_b_1=uranus_b_1*t;

        uranus_b_2 = uranus_b_2 + 7.64663d-06*cos(1.74870957857d0 + 74.7815985673d0 * t)
        uranus_b_2=uranus_b_2*t*t;

        r = uranus_b_2+uranus_b_1+uranus_b_0
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

        uranus_l_0 = uranus_l_0 + 1.03295d-06*cos(0.68145096277d0 + 14.977853527d0 * t)
        uranus_l_0 = uranus_l_0 + 1.03799d-06*cos(1.45794315266d0 + 24.3790223882d0 * t)
        uranus_l_0 = uranus_l_0 + 1.04582d-06*cos(5.02793726187d0 + 0.7507595254d0 * t)
        uranus_l_0 = uranus_l_0 + 1.09576d-06*cos(5.70572405893d0 + 77.962992305d0 * t)
        uranus_l_0 = uranus_l_0 + 1.10403d-06*cos(2.02666475709d0 + 554.0699874828d0 * t)
        uranus_l_0 = uranus_l_0 + 1.23986d-06*cos(1.37489956563d0 + 7.1135470008d0 * t)
        uranus_l_0 = uranus_l_0 + 1.38636d-06*cos(4.25998533357d0 + 909.8187330546d0 * t)
        uranus_l_0 = uranus_l_0 + 1.39276d-06*cos(5.38697273752d0 + 32.1951448046d0 * t)
        uranus_l_0 = uranus_l_0 + 1.43058d-06*cos(1.2998045387d0 + 35.4247226521d0 * t)
        uranus_l_0 = uranus_l_0 + 1.46659d-06*cos(1.26296726443d0 + 59.8037450403d0 * t)
        uranus_l_0 = uranus_l_0 + 1.58075d-06*cos(0.73795262538d0 + 54.1746707478d0 * t)
        uranus_l_0 = uranus_l_0 + 1.62805d-06*cos(3.05027759814d0 + 112.9146342051d0 * t)
        uranus_l_0 = uranus_l_0 + 1.64483d-06*cos(1.42390725018d0 + 106.9767433719d0 * t)
        uranus_l_0 = uranus_l_0 + 1.68606d-06*cos(5.87865394974d0 + 18.1592472647d0 * t)
        uranus_l_0 = uranus_l_0 + 1.70326d-06*cos(3.67712574811d0 + 5.4166259714d0 * t)
        uranus_l_0 = uranus_l_0 + 1.7194d-06*cos(5.67948631369d0 + 219.891377577d0 * t)
        uranus_l_0 = uranus_l_0 + 1.73102d-06*cos(1.53869634445d0 + 160.6088973985d0 * t)
        uranus_l_0 = uranus_l_0 + 1.81991d-06*cos(3.53625031273d0 + 79.2350166922d0 * t)
        uranus_l_0 = uranus_l_0 + 1.8752d-06*cos(1.3192760652d0 + 0.1600586944d0 * t)
        uranus_l_0 = uranus_l_0 + 1.93051d-06*cos(0.91616617785d0 + 453.424893819d0 * t)
        uranus_l_0 = uranus_l_0 + 1.93647d-06*cos(1.88800957346d0 + 456.3938392356d0 * t)
        uranus_l_0 = uranus_l_0 + 1.99306d-06*cos(0.95648612651d0 + 152.5321425512d0 * t)
        uranus_l_0 = uranus_l_0 + 2.02019d-06*cos(1.29693040688d0 + 0.0481841098d0 * t)
        uranus_l_0 = uranus_l_0 + 2.07907d-06*cos(5.5801263788d0 + 68.8437077341d0 * t)
        uranus_l_0 = uranus_l_0 + 2.1645d-06*cos(4.77807782477d0 + 340.7708920448d0 * t)
        uranus_l_0 = uranus_l_0 + 2.16563d-06*cos(6.14217553245d0 + 5.9378908332d0 * t)
        uranus_l_0 = uranus_l_0 + 2.19624d-06*cos(1.92233630317d0 + 67.6680515665d0 * t)
        uranus_l_0 = uranus_l_0 + 2.22605d-06*cos(2.84314245655d0 + 0.2606324309d0 * t)
        uranus_l_0 = uranus_l_0 + 2.24105d-06*cos(0.51589500446d0 + 84.3428261229d0 * t)
        uranus_l_0 = uranus_l_0 + 2.39311d-06*cos(2.35072447972d0 + 137.0330241624d0 * t)
        uranus_l_0 = uranus_l_0 + 2.4923d-06*cos(4.74621772167d0 + 225.8292684102d0 * t)
        uranus_l_0 = uranus_l_0 + 2.51784d-06*cos(1.63692846797d0 + 221.3758502853d0 * t)
        uranus_l_0 = uranus_l_0 + 2.94103d-06*cos(5.83919833199d0 + 39.6175083461d0 * t)
        uranus_l_0 = uranus_l_0 + 3.00392d-06*cos(5.64355207373d0 + 22.0914005278d0 * t)
        uranus_l_0 = uranus_l_0 + 3.09843d-06*cos(5.83301863492d0 + 145.6310438715d0 * t)
        uranus_l_0 = uranus_l_0 + 3.78642d-06*cos(2.34989391811d0 + 56.6223513026d0 * t)
        uranus_l_0 = uranus_l_0 + 3.95569d-06*cos(5.87037914022d0 + 351.8165923087d0 * t)
        uranus_l_0 = uranus_l_0 + 3.99033d-06*cos(0.33796522578d0 + 415.5524906121d0 * t)
        uranus_l_0 = uranus_l_0 + 4.04897d-06*cos(5.98690517582d0 + 8.0767548473d0 * t)
        uranus_l_0 = uranus_l_0 + 4.33527d-06*cos(5.52141037763d0 + 183.2428146475d0 * t)
        uranus_l_0 = uranus_l_0 + 4.67183d-06*cos(0.41482520325d0 + 145.1097790097d0 * t)
        uranus_l_0 = uranus_l_0 + 4.71311d-06*cos(1.40661608158d0 + 184.7272873558d0 * t)
        uranus_l_0 = uranus_l_0 + 4.83226d-06*cos(2.10553218341d0 + 0.9632078465d0 * t)
        uranus_l_0 = uranus_l_0 + 5.24485d-06*cos(2.01275350435d0 + 299.1263942692d0 * t)
        uranus_l_0 = uranus_l_0 + 5.59396d-06*cos(3.35768635981d0 + 0.5212648618d0 * t)
        uranus_l_0 = uranus_l_0 + 6.06847d-06*cos(5.4320988925d0 + 529.6909650946d0 * t)
        uranus_l_0 = uranus_l_0 + 6.2757d-06*cos(0.18209040157d0 + 984.6003316219d0 * t)
        uranus_l_0 = uranus_l_0 + 6.53376d-06*cos(0.96587864431d0 + 78.7137518304d0 * t)
        uranus_l_0 = uranus_l_0 + 7.07935d-06*cos(5.18291670033d0 + 213.299095438d0 * t)
        uranus_l_0 = uranus_l_0 + 9.46181d-06*cos(1.19253165736d0 + 127.4717966068d0 * t)
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

        uranus_l_1 = uranus_l_1 + 1.01894d-06*cos(6.03382617339d0 + 0.1118745846d0 * t)
        uranus_l_1 = uranus_l_1 + 1.02213d-06*cos(4.18917777961d0 + 145.6310438715d0 * t)
        uranus_l_1 = uranus_l_1 + 1.15538d-06*cos(3.73245717203d0 + 65.2203710117d0 * t)
        uranus_l_1 = uranus_l_1 + 1.21462d-06*cos(4.14937021194d0 + 127.4717966068d0 * t)
        uranus_l_1 = uranus_l_1 + 1.43472d-06*cos(2.59047613814d0 + 62.2514255951d0 * t)
        uranus_l_1 = uranus_l_1 + 1.51459d-06*cos(2.93993108236d0 + 77.7505439839d0 * t)
        uranus_l_1 = uranus_l_1 + 1.53561d-06*cos(4.65220425575d0 + 35.1640902212d0 * t)
        uranus_l_1 = uranus_l_1 + 1.54762d-06*cos(5.59005854748d0 + 4.4534181249d0 * t)
        uranus_l_1 = uranus_l_1 + 1.58038d-06*cos(2.90930836614d0 + 0.9632078465d0 * t)
        uranus_l_1 = uranus_l_1 + 1.71119d-06*cos(3.00040981195d0 + 78.7137518304d0 * t)
        uranus_l_1 = uranus_l_1 + 1.79897d-06*cos(5.68365861477d0 + 12.5301729722d0 * t)
        uranus_l_1 = uranus_l_1 + 1.8909d-06*cos(4.20258063269d0 + 56.6223513026d0 * t)
        uranus_l_1 = uranus_l_1 + 2.02696d-06*cos(0.34360451816d0 + 151.0476698429d0 * t)
        uranus_l_1 = uranus_l_1 + 2.05579d-06*cos(2.36242761009d0 + 2.4476805548d0 * t)
        uranus_l_1 = uranus_l_1 + 3.17054d-06*cos(5.57858240166d0 + 52.6901980395d0 * t)
        uranus_l_1 = uranus_l_1 + 3.32699d-06*cos(2.55525645638d0 + 148.0787244263d0 * t)
        uranus_l_1 = uranus_l_1 + 3.47745d-06*cos(2.45368882357d0 + 9.5612275556d0 * t)
        uranus_l_1 = uranus_l_1 + 4.266d-06*cos(4.73158166033d0 + 71.8126531507d0 * t)
        uranus_l_1 = uranus_l_1 + 4.49635d-06*cos(4.14242946378d0 + 138.5174968707d0 * t)
        uranus_l_1 = uranus_l_1 + 4.81813d-06*cos(2.98574070918d0 + 85.8272988312d0 * t)
        uranus_l_1 = uranus_l_1 + 5.65091d-06*cos(3.87400932383d0 + 224.3447957019d0 * t)
        uranus_l_1 = uranus_l_1 + 7.66954d-06*cos(1.99425624214d0 + 73.297125859d0 * t)
        uranus_l_1 = uranus_l_1 + 7.91201d-06*cos(5.43640595978d0 + 3.1813937377d0 * t)
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

        uranus_l_2 = uranus_l_2 + 1.82036d-06*cos(6.21866555925d0 + 70.8494453042d0 * t)
        uranus_l_2 = uranus_l_2 + 1.84429d-06*cos(5.05954505833d0 + 149.5631971346d0 * t)
        uranus_l_2 = uranus_l_2 + 2.57527d-06*cos(3.69060540044d0 + 3.1813937377d0 * t)
        uranus_l_2 = uranus_l_2 + 5.29491d-06*cos(4.92336172394d0 + 1.4844727083d0 * t)
        uranus_l_2 = uranus_l_2 + 5.41559d-06*cos(2.27572631399d0 + 3.9321532631d0 * t)
        uranus_l_2 = uranus_l_2 + 5.51555d-06*cos(3.2581932204d0 + 63.7358983034d0 * t)
        uranus_l_2 = uranus_l_2 + 7.68983d-06*cos(4.52562378749d0 + 11.0457002639d0 * t)
        uranus_l_2 = uranus_l_2 + 8.48806d-06*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_l_2 = uranus_l_2 + 2.349469d-05*cos(2.26708640433d0 + 74.7815985673d0 * t)
        uranus_l_2=uranus_l_2*t*t;

        uranus_l_3 = uranus_l_3 + 1.22192d-06*cos(0.02112102225d0 + 74.7815985673d0 * t)
        uranus_l_3=uranus_l_3*t*t*t;

        r = uranus_l_3+uranus_l_2+uranus_l_1+uranus_l_0
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

        uranus_r_0 = uranus_r_0 + 1.01683d-06*cos(1.05650638045d0 + 92.3077063856d0 * t)
        uranus_r_0 = uranus_r_0 + 1.03166d-06*cos(0.69792291595d0 + 358.9301393095d0 * t)
        uranus_r_0 = uranus_r_0 + 1.03534d-06*cos(2.9937266237d0 + 6.2197751235d0 * t)
        uranus_r_0 = uranus_r_0 + 1.05424d-06*cos(5.94521818668d0 + 328.3525936572d0 * t)
        uranus_r_0 = uranus_r_0 + 1.06186d-06*cos(0.81603278109d0 + 1087.6931058405d0 * t)
        uranus_r_0 = uranus_r_0 + 1.06878d-06*cos(1.82068770403d0 + 306.830642101d0 * t)
        uranus_r_0 = uranus_r_0 + 1.07414d-06*cos(2.39445059446d0 + 347.8844390456d0 * t)
        uranus_r_0 = uranus_r_0 + 1.08272d-06*cos(3.76939374352d0 + 142.4496501338d0 * t)
        uranus_r_0 = uranus_r_0 + 1.1111d-06*cos(0.38500786215d0 + 216.9224321604d0 * t)
        uranus_r_0 = uranus_r_0 + 1.11707d-06*cos(0.75072196369d0 + 80.7194894005d0 * t)
        uranus_r_0 = uranus_r_0 + 1.12185d-06*cos(1.21210217535d0 + 329.7251917809d0 * t)
        uranus_r_0 = uranus_r_0 + 1.12636d-06*cos(0.08107841996d0 + 558.0021407459d0 * t)
        uranus_r_0 = uranus_r_0 + 1.13301d-06*cos(0.83046410321d0 + 100.3844612329d0 * t)
        uranus_r_0 = uranus_r_0 + 1.1336d-06*cos(4.65468501147d0 + 80.1982245387d0 * t)
        uranus_r_0 = uranus_r_0 + 1.14628d-06*cos(6.24869783552d0 + 767.3690829208d0 * t)
        uranus_r_0 = uranus_r_0 + 1.1629d-06*cos(2.51243579606d0 + 296.1574488526d0 * t)
        uranus_r_0 = uranus_r_0 + 1.16587d-06*cos(1.83677031992d0 + 1289.9465010146d0 * t)
        uranus_r_0 = uranus_r_0 + 1.16813d-06*cos(4.43623541426d0 + 5.9378908332d0 * t)
        uranus_r_0 = uranus_r_0 + 1.17046d-06*cos(3.94988763259d0 + 74.2603337055d0 * t)
        uranus_r_0 = uranus_r_0 + 1.22859d-06*cos(2.38440865925d0 + 141.4864422873d0 * t)
        uranus_r_0 = uranus_r_0 + 1.24849d-06*cos(4.30472570922d0 + 339.2864193365d0 * t)
        uranus_r_0 = uranus_r_0 + 1.27294d-06*cos(0.4239525152d0 + 331.3215390738d0 * t)
        uranus_r_0 = uranus_r_0 + 1.29281d-06*cos(0.36073764928d0 + 96.8729990951d0 * t)
        uranus_r_0 = uranus_r_0 + 1.33098d-06*cos(2.88847467964d0 + 373.9079928365d0 * t)
        uranus_r_0 = uranus_r_0 + 1.3356d-06*cos(5.30624966763d0 + 14.0146456805d0 * t)
        uranus_r_0 = uranus_r_0 + 1.42045d-06*cos(1.2689265649d0 + 159.1244246902d0 * t)
        uranus_r_0 = uranus_r_0 + 1.42885d-06*cos(2.07772801387d0 + 457.8783119439d0 * t)
        uranus_r_0 = uranus_r_0 + 1.46245d-06*cos(2.65555668221d0 + 465.9550667912d0 * t)
        uranus_r_0 = uranus_r_0 + 1.52257d-06*cos(4.64725594465d0 + 155.7829722581d0 * t)
        uranus_r_0 = uranus_r_0 + 1.53646d-06*cos(4.7065704527d0 + 543.0242872189d0 * t)
        uranus_r_0 = uranus_r_0 + 1.53749d-06*cos(4.27847447687d0 + 45.5766510387d0 * t)
        uranus_r_0 = uranus_r_0 + 1.54661d-06*cos(4.32026115082d0 + 760.25553592d0 * t)
        uranus_r_0 = uranus_r_0 + 1.56891d-06*cos(0.66346387654d0 + 220.4126424388d0 * t)
        uranus_r_0 = uranus_r_0 + 1.61139d-06*cos(3.82341819072d0 + 451.9404211107d0 * t)
        uranus_r_0 = uranus_r_0 + 1.61285d-06*cos(4.99511779244d0 + 73.8183907208d0 * t)
        uranus_r_0 = uranus_r_0 + 1.61764d-06*cos(3.27144223053d0 + 443.8636662634d0 * t)
        uranus_r_0 = uranus_r_0 + 1.63761d-06*cos(5.22511628213d0 + 67.3592350258d0 * t)
        uranus_r_0 = uranus_r_0 + 1.675d-06*cos(4.92284198283d0 + 422.6660376129d0 * t)
        uranus_r_0 = uranus_r_0 + 1.68295d-06*cos(5.25802294337d0 + 518.6452648307d0 * t)
        uranus_r_0 = uranus_r_0 + 1.69478d-06*cos(4.04293214414d0 + 55.6591434561d0 * t)
        uranus_r_0 = uranus_r_0 + 1.69989d-06*cos(4.50972133596d0 + 288.0806940053d0 * t)
        uranus_r_0 = uranus_r_0 + 1.70321d-06*cos(4.95071878484d0 + 206.1855484372d0 * t)
        uranus_r_0 = uranus_r_0 + 1.70706d-06*cos(2.30954371717d0 + 98.8999885246d0 * t)
        uranus_r_0 = uranus_r_0 + 1.71643d-06*cos(5.21732384809d0 + 41.6444977756d0 * t)
        uranus_r_0 = uranus_r_0 + 1.75625d-06*cos(5.51167774427d0 + 7.1135470008d0 * t)
        uranus_r_0 = uranus_r_0 + 1.76103d-06*cos(1.95966779423d0 + 756.3233826569d0 * t)
        uranus_r_0 = uranus_r_0 + 1.78253d-06*cos(3.98045379191d0 + 10138.5039476437d0 * t)
        uranus_r_0 = uranus_r_0 + 1.79288d-06*cos(4.82418428313d0 + 366.485629295d0 * t)
        uranus_r_0 = uranus_r_0 + 1.82258d-06*cos(0.70728907628d0 + 391.1734682239d0 * t)
        uranus_r_0 = uranus_r_0 + 1.82269d-06*cos(0.78381581992d0 + 417.0369633204d0 * t)
        uranus_r_0 = uranus_r_0 + 1.87419d-06*cos(3.03519991355d0 + 135.5485514541d0 * t)
        uranus_r_0 = uranus_r_0 + 1.8779d-06*cos(2.04529505651d0 + 408.4389436113d0 * t)
        uranus_r_0 = uranus_r_0 + 1.88093d-06*cos(2.23534719993d0 + 5.4166259714d0 * t)
        uranus_r_0 = uranus_r_0 + 1.91808d-06*cos(5.76676964168d0 + 291.7040307277d0 * t)
        uranus_r_0 = uranus_r_0 + 1.94295d-06*cos(6.11711108749d0 + 414.0680179038d0 * t)
        uranus_r_0 = uranus_r_0 + 2.05687d-06*cos(2.30385491694d0 + 259.5088859231d0 * t)
        uranus_r_0 = uranus_r_0 + 2.11135d-06*cos(4.93079268569d0 + 103.0927742186d0 * t)
        uranus_r_0 = uranus_r_0 + 2.168d-06*cos(3.42879551504d0 + 241.6102710893d0 * t)
        uranus_r_0 = uranus_r_0 + 2.19016d-06*cos(0.24791955037d0 + 294.6729761443d0 * t)
        uranus_r_0 = uranus_r_0 + 2.19939d-06*cos(2.96120542961d0 + 120.358249606d0 * t)
        uranus_r_0 = uranus_r_0 + 2.20463d-06*cos(0.19626840245d0 + 180.2738692309d0 * t)
        uranus_r_0 = uranus_r_0 + 2.24582d-06*cos(0.4067414402d0 + 114.3991069134d0 * t)
        uranus_r_0 = uranus_r_0 + 2.33512d-06*cos(4.47917715806d0 + 628.8515860501d0 * t)
        uranus_r_0 = uranus_r_0 + 2.33643d-06*cos(2.97217201792d0 + 46.2097904851d0 * t)
        uranus_r_0 = uranus_r_0 + 2.41282d-06*cos(1.6040006132d0 + 81.3738807063d0 * t)
        uranus_r_0 = uranus_r_0 + 2.45219d-06*cos(5.94902281852d0 + 20.6069278195d0 * t)
        uranus_r_0 = uranus_r_0 + 2.48331d-06*cos(1.06282358803d0 + 105.4922706636d0 * t)
        uranus_r_0 = uranus_r_0 + 2.49797d-06*cos(4.24206827815d0 + 75.3028634291d0 * t)
        uranus_r_0 = uranus_r_0 + 2.5579d-06*cos(1.16711533037d0 + 177.8743727859d0 * t)
        uranus_r_0 = uranus_r_0 + 2.62427d-06*cos(3.83657820849d0 + 831.1049812242d0 * t)
        uranus_r_0 = uranus_r_0 + 2.86849d-06*cos(1.8498761975d0 + 153.4953503977d0 * t)
        uranus_r_0 = uranus_r_0 + 2.92775d-06*cos(3.99521624654d0 + 72.3339180125d0 * t)
        uranus_r_0 = uranus_r_0 + 2.9637d-06*cos(4.21095612809d0 + 1364.7280995819d0 * t)
        uranus_r_0 = uranus_r_0 + 3.01835d-06*cos(0.13173596285d0 + 565.1156877467d0 * t)
        uranus_r_0 = uranus_r_0 + 3.05353d-06*cos(2.55534744586d0 + 6208.2942514241d0 * t)
        uranus_r_0 = uranus_r_0 + 3.0558d-06*cos(3.76131538046d0 + 344.7030453079d0 * t)
        uranus_r_0 = uranus_r_0 + 3.08155d-06*cos(3.92316644086d0 + 116.4260963429d0 * t)
        uranus_r_0 = uranus_r_0 + 3.19986d-06*cos(5.48621997496d0 + 14.977853527d0 * t)
        uranus_r_0 = uranus_r_0 + 3.2348d-06*cos(4.82939220481d0 + 195.1398481733d0 * t)
        uranus_r_0 = uranus_r_0 + 3.25546d-06*cos(4.71973290837d0 + 134.5853436076d0 * t)
        uranus_r_0 = uranus_r_0 + 3.53346d-06*cos(4.65720677156d0 + 329.8370663655d0 * t)
        uranus_r_0 = uranus_r_0 + 3.57527d-06*cos(4.71408309367d0 + 173.9422195228d0 * t)
        uranus_r_0 = uranus_r_0 + 3.58938d-06*cos(0.35269536425d0 + 426.598190876d0 * t)
        uranus_r_0 = uranus_r_0 + 3.59344d-06*cos(0.00870449102d0 + 35.4247226521d0 * t)
        uranus_r_0 = uranus_r_0 + 3.65088d-06*cos(5.59471873032d0 + 255.0554677982d0 * t)
        uranus_r_0 = uranus_r_0 + 3.68389d-06*cos(0.71079545635d0 + 125.9873238985d0 * t)
        uranus_r_0 = uranus_r_0 + 3.79728d-06*cos(0.05834508997d0 + 378.6432952517d0 * t)
        uranus_r_0 = uranus_r_0 + 3.86408d-06*cos(0.68629232964d0 + 230.5645708254d0 * t)
        uranus_r_0 = uranus_r_0 + 4.05369d-06*cos(6.12344979469d0 + 24.3790223882d0 * t)
        uranus_r_0 = uranus_r_0 + 4.09903d-06*cos(3.04961893378d0 + 404.5067903482d0 * t)
        uranus_r_0 = uranus_r_0 + 4.13961d-06*cos(0.08822621279d0 + 258.0244132148d0 * t)
        uranus_r_0 = uranus_r_0 + 4.20206d-06*cos(2.25392348451d0 + 81.0013736908d0 * t)
        uranus_r_0 = uranus_r_0 + 4.29078d-06*cos(3.08057776747d0 + 41.1019810544d0 * t)
        uranus_r_0 = uranus_r_0 + 4.35759d-06*cos(2.79444435294d0 + 75.7448064138d0 * t)
        uranus_r_0 = uranus_r_0 + 4.35944d-06*cos(2.10077178384d0 + 1514.2912967165d0 * t)
        uranus_r_0 = uranus_r_0 + 4.36349d-06*cos(2.08129398068d0 + 51.2057253312d0 * t)
        uranus_r_0 = uranus_r_0 + 4.36536d-06*cos(0.52783902054d0 + 209.3669421749d0 * t)
        uranus_r_0 = uranus_r_0 + 4.49362d-06*cos(0.27988155703d0 + 617.8058857862d0 * t)
        uranus_r_0 = uranus_r_0 + 4.55004d-06*cos(4.08342038147d0 + 99.1606209555d0 * t)
        uranus_r_0 = uranus_r_0 + 4.5503d-06*cos(2.59321031027d0 + 490.3340891794d0 * t)
        uranus_r_0 = uranus_r_0 + 4.63703d-06*cos(1.43450762802d0 + 297.6419215609d0 * t)
        uranus_r_0 = uranus_r_0 + 4.6392d-06*cos(2.35519668239d0 + 211.8146227297d0 * t)
        uranus_r_0 = uranus_r_0 + 4.77251d-06*cos(2.8938165321d0 + 39.3568759152d0 * t)
        uranus_r_0 = uranus_r_0 + 4.874d-06*cos(0.06424307109d0 + 60.7669528868d0 * t)
        uranus_r_0 = uranus_r_0 + 4.9564d-06*cos(2.6511174264d0 + 200.7689224658d0 * t)
        uranus_r_0 = uranus_r_0 + 5.03183d-06*cos(5.8391548775d0 + 191.2076949102d0 * t)
        uranus_r_0 = uranus_r_0 + 5.15533d-06*cos(3.23274245907d0 + 284.1485407422d0 * t)
        uranus_r_0 = uranus_r_0 + 5.3973d-06*cos(6.20779847549d0 + 71.6002048296d0 * t)
        uranus_r_0 = uranus_r_0 + 5.42691d-06*cos(5.39457310701d0 + 278.5194664497d0 * t)
        uranus_r_0 = uranus_r_0 + 5.44899d-06*cos(5.69409543986d0 + 203.7378678824d0 * t)
        uranus_r_0 = uranus_r_0 + 5.48663d-06*cos(5.62811775865d0 + 3.1813937377d0 * t)
        uranus_r_0 = uranus_r_0 + 5.56672d-06*cos(1.07231890667d0 + 1059.3819301892d0 * t)
        uranus_r_0 = uranus_r_0 + 5.69622d-06*cos(1.63924602135d0 + 77.2292791221d0 * t)
        uranus_r_0 = uranus_r_0 + 5.7495d-06*cos(5.57877269214d0 + 2.4476805548d0 * t)
        uranus_r_0 = uranus_r_0 + 5.75672d-06*cos(5.89553952415d0 + 66.70484372d0 * t)
        uranus_r_0 = uranus_r_0 + 5.87851d-06*cos(5.08268227675d0 + 186.2117600641d0 * t)
        uranus_r_0 = uranus_r_0 + 5.9401d-06*cos(4.50031730404d0 + 8.0767548473d0 * t)
        uranus_r_0 = uranus_r_0 + 5.94034d-06*cos(3.83794153459d0 + 32.1951448046d0 * t)
        uranus_r_0 = uranus_r_0 + 5.98191d-06*cos(0.35792534475d0 + 269.9214467406d0 * t)
        uranus_r_0 = uranus_r_0 + 6.30166d-06*cos(4.46153551027d0 + 275.5505210331d0 * t)
        uranus_r_0 = uranus_r_0 + 6.42152d-06*cos(2.71090806243d0 + 87.3117715395d0 * t)
        uranus_r_0 = uranus_r_0 + 6.51756d-06*cos(4.42317051993d0 + 18.1592472647d0 * t)
        uranus_r_0 = uranus_r_0 + 6.89518d-06*cos(3.08087933344d0 + 69.3649725959d0 * t)
        uranus_r_0 = uranus_r_0 + 6.99874d-06*cos(0.03990034416d0 + 143.6253063014d0 * t)
        uranus_r_0 = uranus_r_0 + 7.05697d-06*cos(0.4551853916d0 + 835.0371344873d0 * t)
        uranus_r_0 = uranus_r_0 + 7.09902d-06*cos(4.48962691884d0 + 293.188503436d0 * t)
        uranus_r_0 = uranus_r_0 + 7.10254d-06*cos(4.21967520209d0 + 381.6122406683d0 * t)
        uranus_r_0 = uranus_r_0 + 7.10274d-06*cos(5.41605211553d0 + 218.4069048687d0 * t)
        uranus_r_0 = uranus_r_0 + 7.18644d-06*cos(4.00028668863d0 + 128.9562693151d0 * t)
        uranus_r_0 = uranus_r_0 + 7.58678d-06*cos(2.1369380317d0 + 692.5874843535d0 * t)
        uranus_r_0 = uranus_r_0 + 8.44827d-06*cos(0.1296605606d0 + 82.8583534146d0 * t)
        uranus_r_0 = uranus_r_0 + 9.00579d-06*cos(2.37303064621d0 + 74.8934731519d0 * t)
        uranus_r_0 = uranus_r_0 + 9.06516d-06*cos(5.62013120164d0 + 74.6697239827d0 * t)
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

        uranus_r_1 = uranus_r_1 + 1.00494d-06*cos(4.93994320097d0 + 120.358249606d0 * t)
        uranus_r_1 = uranus_r_1 + 1.03733d-06*cos(2.57520994669d0 + 191.2076949102d0 * t)
        uranus_r_1 = uranus_r_1 + 1.0387d-06*cos(1.81603765254d0 + 72.3339180125d0 * t)
        uranus_r_1 = uranus_r_1 + 1.04645d-06*cos(4.43615418997d0 + 305.3461693927d0 * t)
        uranus_r_1 = uranus_r_1 + 1.04684d-06*cos(2.91746030897d0 + 134.5853436076d0 * t)
        uranus_r_1 = uranus_r_1 + 1.06087d-06*cos(0.17146170085d0 + 79.2350166922d0 * t)
        uranus_r_1 = uranus_r_1 + 1.0682d-06*cos(1.22984965801d0 + 225.8292684102d0 * t)
        uranus_r_1 = uranus_r_1 + 1.06822d-06*cos(0.69945014388d0 + 2.4476805548d0 * t)
        uranus_r_1 = uranus_r_1 + 1.17521d-06*cos(0.39618046394d0 + 87.3117715395d0 * t)
        uranus_r_1 = uranus_r_1 + 1.28577d-06*cos(2.40591376513d0 + 39.6175083461d0 * t)
        uranus_r_1 = uranus_r_1 + 1.36927d-06*cos(0.40354426815d0 + 195.1398481733d0 * t)
        uranus_r_1 = uranus_r_1 + 1.50382d-06*cos(1.98905719076d0 + 54.1746707478d0 * t)
        uranus_r_1 = uranus_r_1 + 1.53201d-06*cos(5.21574674133d0 + 209.3669421749d0 * t)
        uranus_r_1 = uranus_r_1 + 1.63544d-06*cos(4.34120077587d0 + 33.6796175129d0 * t)
        uranus_r_1 = uranus_r_1 + 1.88802d-06*cos(4.41158620525d0 + 265.9892934775d0 * t)
        uranus_r_1 = uranus_r_1 + 1.96457d-06*cos(4.77133840382d0 + 299.1263942692d0 * t)
        uranus_r_1 = uranus_r_1 + 2.006d-06*cos(1.24854381161d0 + 69.3649725959d0 * t)
        uranus_r_1 = uranus_r_1 + 2.05992d-06*cos(1.53361539719d0 + 284.1485407422d0 * t)
        uranus_r_1 = uranus_r_1 + 2.12138d-06*cos(0.68012161063d0 + 111.4301614968d0 * t)
        uranus_r_1 = uranus_r_1 + 2.21874d-06*cos(3.64708443278d0 + 137.0330241624d0 * t)
        uranus_r_1 = uranus_r_1 + 2.24702d-06*cos(3.90949421678d0 + 160.6088973985d0 * t)
        uranus_r_1 = uranus_r_1 + 2.34216d-06*cos(0.27861629739d0 + 108.4612160802d0 * t)
        uranus_r_1 = uranus_r_1 + 2.382d-06*cos(2.04842095939d0 + 269.9214467406d0 * t)
        uranus_r_1 = uranus_r_1 + 2.54339d-06*cos(3.50524488134d0 + 38.1330356378d0 * t)
        uranus_r_1 = uranus_r_1 + 2.5586d-06*cos(2.95699944505d0 + 84.3428261229d0 * t)
        uranus_r_1 = uranus_r_1 + 2.59244d-06*cos(3.92085033287d0 + 59.8037450403d0 * t)
        uranus_r_1 = uranus_r_1 + 2.68994d-06*cos(6.2420480531d0 + 340.7708920448d0 * t)
        uranus_r_1 = uranus_r_1 + 2.72459d-06*cos(3.38353829996d0 + 222.8603229936d0 * t)
        uranus_r_1 = uranus_r_1 + 3.38646d-06*cos(2.53719277381d0 + 18.1592472647d0 * t)
        uranus_r_1 = uranus_r_1 + 3.48335d-06*cos(1.74875375735d0 + 71.6002048296d0 * t)
        uranus_r_1 = uranus_r_1 + 3.72951d-06*cos(5.05141758574d0 + 529.6909650946d0 * t)
        uranus_r_1 = uranus_r_1 + 3.80709d-06*cos(3.85094436388d0 + 3.1813937377d0 * t)
        uranus_r_1 = uranus_r_1 + 4.05615d-06*cos(1.22950417858d0 + 22.0914005278d0 * t)
        uranus_r_1 = uranus_r_1 + 4.44185d-06*cos(2.15555848995d0 + 67.6680515665d0 * t)
        uranus_r_1 = uranus_r_1 + 4.59886d-06*cos(4.22296426568d0 + 12.5301729722d0 * t)
        uranus_r_1 = uranus_r_1 + 4.87371d-06*cos(0.70688896635d0 + 380.12776796d0 * t)
        uranus_r_1 = uranus_r_1 + 4.94251d-06*cos(0.4632180053d0 + 145.6310438715d0 * t)
        uranus_r_1 = uranus_r_1 + 5.27867d-06*cos(5.15141241909d0 + 2.9689454166d0 * t)
        uranus_r_1 = uranus_r_1 + 5.3053d-06*cos(5.91685160971d0 + 213.299095438d0 * t)
        uranus_r_1 = uranus_r_1 + 5.61872d-06*cos(2.71781314149d0 + 462.0229135281d0 * t)
        uranus_r_1 = uranus_r_1 + 5.74672d-06*cos(3.2306914554d0 + 447.7958195265d0 * t)
        uranus_r_1 = uranus_r_1 + 6.03966d-06*cos(0.90716451094d0 + 984.6003316219d0 * t)
        uranus_r_1 = uranus_r_1 + 6.23247d-06*cos(0.86227007749d0 + 9.5612275556d0 * t)
        uranus_r_1 = uranus_r_1 + 6.47014d-06*cos(4.47286717163d0 + 70.3281804424d0 * t)
        uranus_r_1 = uranus_r_1 + 6.87477d-06*cos(2.49910872963d0 + 77.962992305d0 * t)
        uranus_r_1 = uranus_r_1 + 7.44512d-06*cos(3.07725212553d0 + 35.1640902212d0 * t)
        uranus_r_1 = uranus_r_1 + 8.61752d-06*cos(5.05508815872d0 + 351.8165923087d0 * t)
        uranus_r_1 = uranus_r_1 + 9.91944d-06*cos(2.1718165585d0 + 65.2203710117d0 * t)
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

        uranus_r_2 = uranus_r_2 + 1.03857d-06*cos(3.58561861261d0 + 71.6002048296d0 * t)
        uranus_r_2 = uranus_r_2 + 1.12873d-06*cos(1.01358614296d0 + 462.0229135281d0 * t)
        uranus_r_2 = uranus_r_2 + 1.13471d-06*cos(4.78996247308d0 + 145.6310438715d0 * t)
        uranus_r_2 = uranus_r_2 + 1.17642d-06*cos(4.93417950365d0 + 447.7958195265d0 * t)
        uranus_r_2 = uranus_r_2 + 1.2904d-06*cos(2.08142441038d0 + 3.1813937377d0 * t)
        uranus_r_2 = uranus_r_2 + 1.48716d-06*cos(4.89757177249d0 + 127.4717966068d0 * t)
        uranus_r_2 = uranus_r_2 + 2.05341d-06*cos(3.24759155116d0 + 78.7137518304d0 * t)
        uranus_r_2 = uranus_r_2 + 2.15812d-06*cos(0.84820922453d0 + 77.962992305d0 * t)
        uranus_r_2 = uranus_r_2 + 2.19349d-06*cos(1.96433948894d0 + 131.4039498699d0 * t)
        uranus_r_2 = uranus_r_2 + 2.72269d-06*cos(3.8473537521d0 + 138.5174968707d0 * t)
        uranus_r_2 = uranus_r_2 + 2.86451d-06*cos(3.53449822561d0 + 73.297125859d0 * t)
        uranus_r_2 = uranus_r_2 + 2.92283d-06*cos(0.20370820668d0 + 52.6901980395d0 * t)
        uranus_r_2 = uranus_r_2 + 3.89972d-06*cos(5.52663268311d0 + 85.8272988312d0 * t)
        uranus_r_2 = uranus_r_2 + 3.90377d-06*cos(4.49603136758d0 + 56.6223513026d0 * t)
        uranus_r_2 = uranus_r_2 + 4.61159d-06*cos(0.76667185672d0 + 3.9321532631d0 * t)
        uranus_r_2 = uranus_r_2 + 5.00193d-06*cos(6.17218448634d0 + 76.2660712756d0 * t)
        uranus_r_2 = uranus_r_2 + 7.69974d-06*cos(0.0d0 + 0.0d0 * t)
        uranus_r_2 = uranus_r_2 + 1.433633d-05*cos(3.52135281258d0 + 149.5631971346d0 * t)
        uranus_r_2 = uranus_r_2 + 1.649477d-05*cos(3.09669484042d0 + 11.0457002639d0 * t)
        uranus_r_2 = uranus_r_2 + 1.681383d-05*cos(4.64842242588d0 + 70.8494453042d0 * t)
        uranus_r_2 = uranus_r_2 + 4.726838d-05*cos(1.69896897296d0 + 63.7358983034d0 * t)
        uranus_r_2 = uranus_r_2 + 0.00022439899d0*cos(0.69953310903d0 + 74.7815985673d0 * t)
        uranus_r_2=uranus_r_2*t*t;

        uranus_r_3 = uranus_r_3 + 1.04707d-06*cos(0.95789279555d0 + 11.0457002639d0 * t)
        uranus_r_3 = uranus_r_3 + 1.96315d-06*cos(2.981012371d0 + 70.8494453042d0 * t)
        uranus_r_3 = uranus_r_3 + 2.12363d-06*cos(3.34268349684d0 + 63.7358983034d0 * t)
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

        venus_b_0 = venus_b_0 + 1.07971d-06*cos(4.53903678347d0 + 22003.9146348698d0 * t)
        venus_b_0 = venus_b_0 + 1.19507d-06*cos(3.70468787104d0 + 2352.8661537718d0 * t)
        venus_b_0 = venus_b_0 + 1.29973d-06*cos(3.67152480061d0 + 9437.762934887d0 * t)
        venus_b_0 = venus_b_0 + 1.37788d-06*cos(0.86020095586d0 + 1577.3435424478d0 * t)
        venus_b_0 = venus_b_0 + 1.49458d-06*cos(6.25390268112d0 + 18073.7049386502d0 * t)
        venus_b_0 = venus_b_0 + 1.011392d-05*cos(1.0894611973d0 + 30639.856638633d0 * t)
        venus_b_0 = venus_b_0 + 0.00032814918d0*cos(3.14159265359d0 + 0.0d0 * t)
        venus_b_0 = venus_b_0 + 0.00040107978d0*cos(1.14737178112d0 + 20426.571092422d0 * t)
        venus_b_0 = venus_b_0 + 0.05923638472d0*cos(0.26702775812d0 + 10213.285546211d0 * t)

        venus_b_1 = venus_b_1 + 1.257844d-05*cos(0.0d0 + 0.0d0 * t)
        venus_b_1 = venus_b_1 + 3.499578d-05*cos(3.71117560516d0 + 20426.571092422d0 * t)
        venus_b_1 = venus_b_1 + 0.00287821243d0*cos(1.88964962838d0 + 10213.285546211d0 * t)
        venus_b_1=venus_b_1*t;

        venus_b_2 = venus_b_2 + 1.51225d-06*cos(0.0d0 + 0.0d0 * t)
        venus_b_2 = venus_b_2 + 0.00012657745d0*cos(3.34796457029d0 + 10213.285546211d0 * t)
        venus_b_2=venus_b_2*t*t;

        venus_b_3 = venus_b_3 + 3.76505d-06*cos(4.87650249694d0 + 10213.285546211d0 * t)
        venus_b_3=venus_b_3*t*t*t;

        r = venus_b_3+venus_b_2+venus_b_1+venus_b_0
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

        venus_l_0 = venus_l_0 + 1.05547d-06*cos(1.53721203088d0 + 801.8209311238d0 * t)
        venus_l_0 = venus_l_0 + 1.27907d-06*cos(0.96209781904d0 + 5661.3320491522d0 * t)
        venus_l_0 = venus_l_0 + 1.28263d-06*cos(4.22604490814d0 + 20.7753954924d0 * t)
        venus_l_0 = venus_l_0 + 1.55464d-06*cos(5.5704389169d0 + 19651.048481098d0 * t)
        venus_l_0 = venus_l_0 + 1.79695d-06*cos(4.65337908917d0 + 1109.3785520934d0 * t)
        venus_l_0 = venus_l_0 + 2.31937d-06*cos(3.16251059356d0 + 9153.9036160218d0 * t)
        venus_l_0 = venus_l_0 + 3.26221d-06*cos(4.59056477038d0 + 10404.7338123226d0 * t)
        venus_l_0 = venus_l_0 + 3.26967d-06*cos(5.67736584311d0 + 5507.5532386674d0 * t)
        venus_l_0 = venus_l_0 + 4.29498d-06*cos(3.58642858577d0 + 19367.1891622328d0 * t)
        venus_l_0 = venus_l_0 + 4.99915d-06*cos(4.1234021282d0 + 15720.8387848784d0 * t)
        venus_l_0 = venus_l_0 + 5.84836d-06*cos(3.9983988823d0 + 191.4482661116d0 * t)
        venus_l_0 = venus_l_0 + 7.07676d-06*cos(1.06466702668d0 + 775.522611324d0 * t)
        venus_l_0 = venus_l_0 + 7.6138d-06*cos(1.95014701047d0 + 529.6909650946d0 * t)
        venus_l_0 = venus_l_0 + 7.69314d-06*cos(0.81629615196d0 + 9437.762934887d0 * t)
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

        venus_l_1 = venus_l_1 + 1.41694d-06*cos(2.12362986036d0 + 30639.856638633d0 * t)
        venus_l_1 = venus_l_1 + 1.51666d-06*cos(6.10638559291d0 + 1577.3435424478d0 * t)
        venus_l_1 = venus_l_1 + 1.73908d-06*cos(2.65539499463d0 + 26.2983197998d0 * t)
        venus_l_1 = venus_l_1 + 7.787201d-05*cos(0.6247848222d0 + 20426.571092422d0 * t)
        venus_l_1 = venus_l_1 + 0.00095617813d0*cos(2.4640651111d0 + 10213.285546211d0 * t)
        venus_l_1 = venus_l_1 + 10213.28554621638d0*cos(0.0d0 + 0.0d0 * t)
        venus_l_1=venus_l_1*t;

        venus_l_2 = venus_l_2 + 2.87868d-06*cos(0.0d0 + 0.0d0 * t)
        venus_l_2 = venus_l_2 + 5.95403d-06*cos(2.01456107998d0 + 20426.571092422d0 * t)
        venus_l_2 = venus_l_2 + 3.894209d-05*cos(0.34823650721d0 + 10213.285546211d0 * t)
        venus_l_2=venus_l_2*t*t;

        venus_l_3 = venus_l_3 + 1.36328d-06*cos(4.79698723753d0 + 10213.285546211d0 * t)
        venus_l_3=venus_l_3*t*t*t;

        r = venus_l_3+venus_l_2+venus_l_1+venus_l_0
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

        venus_r_0 = venus_r_0 + 1.19466d-06*cos(3.01975080538d0 + 10404.7338123226d0 * t)
        venus_r_0 = venus_r_0 + 1.25896d-06*cos(2.72769850819d0 + 1577.3435424478d0 * t)
        venus_r_0 = venus_r_0 + 2.21985d-06*cos(2.01346696541d0 + 19367.1891622328d0 * t)
        venus_r_0 = venus_r_0 + 2.37454d-06*cos(2.55136053886d0 + 15720.8387848784d0 * t)
        venus_r_0 = venus_r_0 + 2.63615d-06*cos(5.52938716941d0 + 9437.762934887d0 * t)
        venus_r_0 = venus_r_0 + 3.73958d-06*cos(1.42314832858d0 + 3930.2096962196d0 * t)
        venus_r_0 = venus_r_0 + 4.98395d-06*cos(2.58682193892d0 + 9683.5945811164d0 * t)
        venus_r_0 = venus_r_0 + 1.378043d-05*cos(1.12846591367d0 + 11790.6290886588d0 * t)
        venus_r_0 = venus_r_0 + 1.632096d-05*cos(2.84548795207d0 + 7860.4193924392d0 * t)
        venus_r_0 = venus_r_0 + 1.658058d-05*cos(4.90206728031d0 + 20426.571092422d0 * t)
        venus_r_0 = venus_r_0 + 0.00489824182d0*cos(4.02151831717d0 + 10213.285546211d0 * t)
        venus_r_0 = venus_r_0 + 0.72334820891d0*cos(0.0d0 + 0.0d0 * t)

        venus_r_1 = venus_r_1 + 2.33998d-06*cos(3.14159265359d0 + 0.0d0 * t)
        venus_r_1 = venus_r_1 + 2.34203d-06*cos(1.77224942363d0 + 20426.571092422d0 * t)
        venus_r_1 = venus_r_1 + 0.00034551041d0*cos(0.89198706276d0 + 10213.285546211d0 * t)
        venus_r_1=venus_r_1*t;

        venus_r_2 = venus_r_2 + 1.406587d-05*cos(5.06366395112d0 + 10213.285546211d0 * t)
        venus_r_2=venus_r_2*t*t;

        r = venus_r_2+venus_r_1+venus_r_0
    end function

end module VSOP87B_Xsmall
