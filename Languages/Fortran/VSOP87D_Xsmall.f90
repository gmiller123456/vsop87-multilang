!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87D_Xsmall
    implicit none

    contains
    subroutine VSOP87D_Xsmall_getEarth(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_b(t)
        result(2)=earth_l(t)
        result(3)=earth_r(t)
    end subroutine

    subroutine VSOP87D_Xsmall_getJupiter(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_b(t)
        result(2)=jupiter_l(t)
        result(3)=jupiter_r(t)
    end subroutine

    subroutine VSOP87D_Xsmall_getMars(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_b(t)
        result(2)=mars_l(t)
        result(3)=mars_r(t)
    end subroutine

    subroutine VSOP87D_Xsmall_getMercury(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_b(t)
        result(2)=mercury_l(t)
        result(3)=mercury_r(t)
    end subroutine

    subroutine VSOP87D_Xsmall_getNeptune(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_b(t)
        result(2)=neptune_l(t)
        result(3)=neptune_r(t)
    end subroutine

    subroutine VSOP87D_Xsmall_getSaturn(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_b(t)
        result(2)=saturn_l(t)
        result(3)=saturn_r(t)
    end subroutine

    subroutine VSOP87D_Xsmall_getUranus(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_b(t)
        result(2)=uranus_l(t)
        result(3)=uranus_r(t)
    end subroutine

    subroutine VSOP87D_Xsmall_getVenus(t, result)
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

        r = earth_b_0
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

        earth_l_0 = earth_l_0 + 1.01724d-06*cos(4.26679821365d0 + 7.1135470008d0 * t)
        earth_l_0 = earth_l_0 + 1.01895d-06*cos(0.97569221824d0 + 15720.8387848784d0 * t)
        earth_l_0 = earth_l_0 + 1.02851d-06*cos(0.63599846727d0 + 4694.0029547076d0 * t)
        earth_l_0 = earth_l_0 + 1.15132d-06*cos(0.64544911683d0 + 0.9803210682d0 * t)
        earth_l_0 = earth_l_0 + 1.26184d-06*cos(1.0830263021d0 + 20.7753954924d0 * t)
        earth_l_0 = earth_l_0 + 1.32212d-06*cos(3.41118275555d0 + 2942.4634232916d0 * t)
        earth_l_0 = earth_l_0 + 1.55516d-06*cos(0.83306073807d0 + 213.299095438d0 * t)
        earth_l_0 = earth_l_0 + 2.02261d-06*cos(2.45767795458d0 + 6069.7767545534d0 * t)
        earth_l_0 = earth_l_0 + 2.05385d-06*cos(1.86947813692d0 + 5573.1428014331d0 * t)
        earth_l_0 = earth_l_0 + 2.0616d-06*cos(4.80646606059d0 + 2544.3144198834d0 * t)
        earth_l_0 = earth_l_0 + 2.4281d-06*cos(0.34481140906d0 + 5486.777843175d0 * t)
        earth_l_0 = earth_l_0 + 2.71039d-06*cos(0.31488607649d0 + 10977.078804699d0 * t)
        earth_l_0 = earth_l_0 + 2.84125d-06*cos(1.89869034186d0 + 796.2980068164d0 * t)
        earth_l_0 = earth_l_0 + 3.17087d-06*cos(5.84901952218d0 + 11790.6290886588d0 * t)
        earth_l_0 = earth_l_0 + 3.56655d-06*cos(2.91954116867d0 + 0.0673103028d0 * t)
        earth_l_0 = earth_l_0 + 4.92379d-06*cos(4.20506639861d0 + 775.522611324d0 * t)
        earth_l_0 = earth_l_0 + 5.05264d-06*cos(4.58292563052d0 + 18849.2275499742d0 * t)
        earth_l_0 = earth_l_0 + 7.53141d-06*cos(2.53339053818d0 + 5507.5532386674d0 * t)
        earth_l_0 = earth_l_0 + 7.79786d-06*cos(1.17882652114d0 + 5223.6939198022d0 * t)
        earth_l_0 = earth_l_0 + 8.57223d-06*cos(3.50849156957d0 + 398.1490034082d0 * t)
        earth_l_0 = earth_l_0 + 9.01855d-06*cos(2.04505443513d0 + 26.2983197998d0 * t)
        earth_l_0 = earth_l_0 + 9.9025d-06*cos(5.23268129594d0 + 5884.9268465832d0 * t)
        earth_l_0 = earth_l_0 + 1.199167d-05*cos(1.10962944315d0 + 1577.3435424478d0 * t)
        earth_l_0 = earth_l_0 + 1.273166d-05*cos(2.03709655772d0 + 529.6909650946d0 * t)
        earth_l_0 = earth_l_0 + 1.324292d-05*cos(0.74246356352d0 + 11506.7697697936d0 * t)
        earth_l_0 = earth_l_0 + 2.342687d-05*cos(6.13516237631d0 + 3930.2096962196d0 * t)
        earth_l_0 = earth_l_0 + 2.676218d-05*cos(4.41808351397d0 + 7860.4193924392d0 * t)
        earth_l_0 = earth_l_0 + 3.135896d-05*cos(3.62767041758d0 + 77713.7714681205d0 * t)
        earth_l_0 = earth_l_0 + 3.417571d-05*cos(2.82886579606d0 + 3.523118349d0 * t)
        earth_l_0 = earth_l_0 + 3.497056d-05*cos(2.74411800971d0 + 5753.3848848968d0 * t)
        earth_l_0 = earth_l_0 + 0.00034894275d0*cos(4.62610241759d0 + 12566.1516999828d0 * t)
        earth_l_0 = earth_l_0 + 0.03341656456d0*cos(4.66925680417d0 + 6283.0758499914d0 * t)
        earth_l_0 = earth_l_0 + 1.75347045673d0*cos(0.0d0 + 0.0d0 * t)

        earth_l_1 = earth_l_1 + 1.08977d-06*cos(2.96618001993d0 + 1577.3435424478d0 * t)
        earth_l_1 = earth_l_1 + 1.19261d-06*cos(5.79557487799d0 + 26.2983197998d0 * t)
        earth_l_1 = earth_l_1 + 4.25264d-06*cos(1.59046980729d0 + 3.523118349d0 * t)
        earth_l_1 = earth_l_1 + 4.30343d-05*cos(2.63512650414d0 + 12566.1516999828d0 * t)
        earth_l_1 = earth_l_1 + 0.00206058863d0*cos(2.67823455584d0 + 6283.0758499914d0 * t)
        earth_l_1 = earth_l_1 + 6283.31966747491d0*cos(0.0d0 + 0.0d0 * t)
        earth_l_1=earth_l_1*t;

        earth_l_2 = earth_l_2 + 3.09125d-06*cos(0.86728818832d0 + 12566.1516999828d0 * t)
        earth_l_2 = earth_l_2 + 8.719837d-05*cos(1.07209665242d0 + 6283.0758499914d0 * t)
        earth_l_2 = earth_l_2 + 0.0005291887d0*cos(0.0d0 + 0.0d0 * t)
        earth_l_2=earth_l_2*t*t;

        earth_l_3 = earth_l_3 + 2.89226d-06*cos(5.84384198723d0 + 6283.0758499914d0 * t)
        earth_l_3=earth_l_3*t*t*t;

        earth_l_4 = earth_l_4 + 1.14084d-06*cos(3.14159265359d0 + 0.0d0 * t)
        earth_l_4=earth_l_4*t*t*t*t;

        r = earth_l_4+earth_l_3+earth_l_2+earth_l_1+earth_l_0
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

        earth_r_0 = earth_r_0 + 1.09835d-06*cos(5.05510636285d0 + 5486.777843175d0 * t)
        earth_r_0 = earth_r_0 + 1.74844d-06*cos(3.01193636534d0 + 18849.2275499742d0 * t)
        earth_r_0 = earth_r_0 + 1.85752d-06*cos(5.02194447178d0 + 10977.078804699d0 * t)
        earth_r_0 = earth_r_0 + 2.11829d-06*cos(5.84714540314d0 + 1577.3435424478d0 * t)
        earth_r_0 = earth_r_0 + 2.43189d-06*cos(4.27349536153d0 + 11790.6290886588d0 * t)
        earth_r_0 = earth_r_0 + 3.06784d-06*cos(0.29867139512d0 + 5573.1428014331d0 * t)
        earth_r_0 = earth_r_0 + 3.2878d-06*cos(5.89983646482d0 + 5223.6939198022d0 * t)
        earth_r_0 = earth_r_0 + 3.45983d-06*cos(0.96368617687d0 + 5507.5532386674d0 * t)
        earth_r_0 = earth_r_0 + 4.7211d-06*cos(3.66100022149d0 + 5884.9268465832d0 * t)
        earth_r_0 = earth_r_0 + 5.42444d-06*cos(4.56409149777d0 + 3930.2096962196d0 * t)
        earth_r_0 = earth_r_0 + 9.24799d-06*cos(5.45292234084d0 + 11506.7697697936d0 * t)
        earth_r_0 = earth_r_0 + 1.575568d-05*cos(2.84685245825d0 + 7860.4193924392d0 * t)
        earth_r_0 = earth_r_0 + 1.628461d-05*cos(1.17387749012d0 + 5753.3848848968d0 * t)
        earth_r_0 = earth_r_0 + 3.08372d-05*cos(5.19846674381d0 + 77713.7714681205d0 * t)
        earth_r_0 = earth_r_0 + 0.00013956023d0*cos(3.0552460962d0 + 12566.1516999828d0 * t)
        earth_r_0 = earth_r_0 + 0.01670699626d0*cos(3.09846350771d0 + 6283.0758499914d0 * t)
        earth_r_0 = earth_r_0 + 1.00013988799d0*cos(0.0d0 + 0.0d0 * t)

        earth_r_1 = earth_r_1 + 7.02215d-06*cos(3.14159265359d0 + 0.0d0 * t)
        earth_r_1 = earth_r_1 + 1.721238d-05*cos(1.06442301418d0 + 12566.1516999828d0 * t)
        earth_r_1 = earth_r_1 + 0.00103018608d0*cos(1.10748969588d0 + 6283.0758499914d0 * t)
        earth_r_1=earth_r_1*t;

        earth_r_2 = earth_r_2 + 1.23633d-06*cos(5.57934722157d0 + 12566.1516999828d0 * t)
        earth_r_2 = earth_r_2 + 4.359385d-05*cos(5.78455133738d0 + 6283.0758499914d0 * t)
        earth_r_2=earth_r_2*t*t;

        earth_r_3 = earth_r_3 + 1.44595d-06*cos(4.27319435148d0 + 6283.0758499914d0 * t)
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

        jupiter_b_0 = jupiter_b_0 + 1.0242d-06*cos(3.15293785436d0 + 1581.959348283d0 * t)
        jupiter_b_0 = jupiter_b_0 + 1.03402d-06*cos(2.31878999565d0 + 1478.8665740644d0 * t)
        jupiter_b_0 = jupiter_b_0 + 1.03762d-06*cos(3.7010383811d0 + 515.463871093d0 * t)
        jupiter_b_0 = jupiter_b_0 + 1.15038d-06*cos(5.04892295442d0 + 316.3918696566d0 * t)
        jupiter_b_0 = jupiter_b_0 + 1.16379d-06*cos(1.38688232033d0 + 323.5054166574d0 * t)
        jupiter_b_0 = jupiter_b_0 + 1.23148d-06*cos(3.34968181384d0 + 1692.1656695024d0 * t)
        jupiter_b_0 = jupiter_b_0 + 1.3216d-06*cos(4.7781699067d0 + 742.9900605326d0 * t)
        jupiter_b_0 = jupiter_b_0 + 3.51433d-06*cos(4.61062990714d0 + 2118.7638603784d0 * t)
        jupiter_b_0 = jupiter_b_0 + 4.31072d-06*cos(2.60825000494d0 + 419.4846438752d0 * t)
        jupiter_b_0 = jupiter_b_0 + 4.64449d-06*cos(1.17337249185d0 + 949.1756089698d0 * t)
        jupiter_b_0 = jupiter_b_0 + 5.3167d-06*cos(2.70305954352d0 + 110.2063212194d0 * t)
        jupiter_b_0 = jupiter_b_0 + 5.58524d-06*cos(0.01354830508d0 + 846.0828347512d0 * t)
        jupiter_b_0 = jupiter_b_0 + 6.29223d-06*cos(0.64343282328d0 + 1066.49547719d0 * t)
        jupiter_b_0 = jupiter_b_0 + 6.8422d-06*cos(3.67808770098d0 + 213.299095438d0 * t)
        jupiter_b_0 = jupiter_b_0 + 7.6728d-06*cos(2.1547359406d0 + 632.7837393132d0 * t)
        jupiter_b_0 = jupiter_b_0 + 8.35861d-06*cos(5.17881973234d0 + 103.0927742186d0 * t)
        jupiter_b_0 = jupiter_b_0 + 8.94088d-06*cos(1.75447429921d0 + 7.1135470008d0 * t)
        jupiter_b_0 = jupiter_b_0 + 9.41651d-06*cos(2.93619072405d0 + 1052.2683831884d0 * t)
        jupiter_b_0 = jupiter_b_0 + 9.44328d-06*cos(1.67522288396d0 + 426.598190876d0 * t)
        jupiter_b_0 = jupiter_b_0 + 1.10688d-05*cos(2.98534421928d0 + 1162.4747044078d0 * t)
        jupiter_b_0 = jupiter_b_0 + 6.043996d-05*cos(4.25883108794d0 + 1589.0728952838d0 * t)
        jupiter_b_0 = jupiter_b_0 + 6.437782d-05*cos(0.30627121409d0 + 536.8045120954d0 * t)
        jupiter_b_0 = jupiter_b_0 + 8.101427d-05*cos(3.60509573368d0 + 522.5774180938d0 * t)
        jupiter_b_0 = jupiter_b_0 + 0.00109971634d0*cos(3.90809347389d0 + 1059.3819301892d0 * t)
        jupiter_b_0 = jupiter_b_0 + 0.00110090358d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_b_0 = jupiter_b_0 + 0.02268615703d0*cos(3.55852606718d0 + 529.6909650946d0 * t)

        jupiter_b_1 = jupiter_b_1 + 1.14128d-06*cos(3.4389727183d0 + 632.7837393132d0 * t)
        jupiter_b_1 = jupiter_b_1 + 1.50468d-06*cos(3.92721226087d0 + 1589.0728952838d0 * t)
        jupiter_b_1 = jupiter_b_1 + 1.96154d-06*cos(6.18554286642d0 + 7.1135470008d0 * t)
        jupiter_b_1 = jupiter_b_1 + 2.34264d-06*cos(5.18856099929d0 + 1066.49547719d0 * t)
        jupiter_b_1 = jupiter_b_1 + 3.46445d-06*cos(4.74595174109d0 + 1052.2683831884d0 * t)
        jupiter_b_1 = jupiter_b_1 + 1.694232d-05*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_b_1 = jupiter_b_1 + 2.211914d-05*cos(4.73477480209d0 + 536.8045120954d0 * t)
        jupiter_b_1 = jupiter_b_1 + 3.081364d-05*cos(5.47464296527d0 + 522.5774180938d0 * t)
        jupiter_b_1 = jupiter_b_1 + 3.230171d-05*cos(5.7794161934d0 + 1059.3819301892d0 * t)
        jupiter_b_1 = jupiter_b_1 + 0.00177351787d0*cos(5.70166488486d0 + 529.6909650946d0 * t)
        jupiter_b_1=jupiter_b_1*t;

        jupiter_b_2 = jupiter_b_2 + 3.42226d-06*cos(1.44683789727d0 + 1059.3819301892d0 * t)
        jupiter_b_2 = jupiter_b_2 + 3.98951d-06*cos(2.89888666447d0 + 536.8045120954d0 * t)
        jupiter_b_2 = jupiter_b_2 + 7.42415d-06*cos(0.95691639003d0 + 522.5774180938d0 * t)
        jupiter_b_2 = jupiter_b_2 + 8.13244d-06*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_b_2 = jupiter_b_2 + 8.094051d-05*cos(1.46322843658d0 + 529.6909650946d0 * t)
        jupiter_b_2=jupiter_b_2*t*t;

        jupiter_b_3 = jupiter_b_3 + 1.21738d-06*cos(2.733118372d0 + 522.5774180938d0 * t)
        jupiter_b_3 = jupiter_b_3 + 2.51624d-06*cos(3.38087923084d0 + 529.6909650946d0 * t)
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

        jupiter_l_0 = jupiter_l_0 + 1.05895d-06*cos(4.55439798236d0 + 526.5095713569d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.16757d-06*cos(3.38920921041d0 + 0.5212648618d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.17495d-06*cos(2.5002214089d0 + 1596.1864422846d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.30531d-06*cos(4.16867945489d0 + 1045.1548361876d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.37871d-06*cos(1.31797920785d0 + 1169.5882514086d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.41445d-06*cos(3.13568357861d0 + 491.5579294568d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.49368d-06*cos(4.37745104275d0 + 1685.0521225016d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.50502d-06*cos(3.90625022622d0 + 74.7815985673d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.57909d-06*cos(4.36483921766d0 + 1795.258443721d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.74809d-06*cos(5.90973505276d0 + 956.2891559706d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.75184d-06*cos(3.22634903433d0 + 1898.3512179396d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.75191d-06*cos(3.72966554761d0 + 942.062061969d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.97046d-06*cos(5.29252149016d0 + 1155.361157407d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.01996d-06*cos(1.80684574186d0 + 1375.7737998458d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.07327d-06*cos(1.85461666594d0 + 525.7588118315d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.20382d-06*cos(1.65115015995d0 + 543.9180590962d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.35141d-06*cos(1.22693908124d0 + 909.8187330546d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.4417d-06*cos(5.220208789d0 + 728.762966531d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.56568d-06*cos(3.72410724159d0 + 199.0720014364d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.61009d-06*cos(0.82047246448d0 + 380.12776796d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.6154d-06*cos(1.87652461032d0 + 0.9632078465d0 * t)
        jupiter_l_0 = jupiter_l_0 + 3.30458d-06*cos(4.74049819491d0 + 0.0481841098d0 * t)
        jupiter_l_0 = jupiter_l_0 + 3.41006d-06*cos(5.71452525783d0 + 533.6231183577d0 * t)
        jupiter_l_0 = jupiter_l_0 + 3.75657d-06*cos(4.70299124833d0 + 1368.660252845d0 * t)
        jupiter_l_0 = jupiter_l_0 + 3.89864d-06*cos(4.89716105852d0 + 1692.1656695024d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.17266d-06*cos(1.03554430161d0 + 2.4476805548d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.40854d-06*cos(2.95818460943d0 + 454.9093665273d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.95224d-06*cos(3.75567461379d0 + 323.5054166574d0 * t)
        jupiter_l_0 = jupiter_l_0 + 5.81902d-06*cos(4.53967717552d0 + 309.2783226558d0 * t)
        jupiter_l_0 = jupiter_l_0 + 6.14464d-06*cos(4.10853496756d0 + 1478.8665740644d0 * t)
        jupiter_l_0 = jupiter_l_0 + 6.91928d-06*cos(6.13368222939d0 + 2118.7638603784d0 * t)
        jupiter_l_0 = jupiter_l_0 + 7.0919d-06*cos(1.29272573658d0 + 742.9900605326d0 * t)
        jupiter_l_0 = jupiter_l_0 + 7.31072d-06*cos(3.80591233956d0 + 1581.959348283d0 * t)
        jupiter_l_0 = jupiter_l_0 + 7.32875d-06*cos(6.08534113239d0 + 838.9692877504d0 * t)
        jupiter_l_0 = jupiter_l_0 + 8.84439d-06*cos(2.43701426123d0 + 412.3710968744d0 * t)
        jupiter_l_0 = jupiter_l_0 + 9.73278d-06*cos(4.09764957065d0 + 95.9792272178d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.431997d-05*cos(4.29683690269d0 + 625.6701923124d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.633217d-05*cos(3.58201089758d0 + 515.463871093d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.722983d-05*cos(3.88036008872d0 + 1265.5674786264d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.764768d-05*cos(2.14148077766d0 + 1066.49547719d0 * t)
        jupiter_l_0 = jupiter_l_0 + 1.920959d-05*cos(0.97168928755d0 + 639.897286314d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.028191d-05*cos(1.06376547379d0 + 3.1813937377d0 * t)
        jupiter_l_0 = jupiter_l_0 + 2.610001d-05*cos(1.5666759485d0 + 846.0828347512d0 * t)
        jupiter_l_0 = jupiter_l_0 + 3.045009d-05*cos(4.31675960318d0 + 426.598190876d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.647249d-05*cos(4.69958109497d0 + 3.9321532631d0 * t)
        jupiter_l_0 = jupiter_l_0 + 4.905419d-05*cos(1.32084631684d0 + 110.2063212194d0 * t)
        jupiter_l_0 = jupiter_l_0 + 5.305283d-05*cos(1.30671236848d0 + 14.2270940016d0 * t)
        jupiter_l_0 = jupiter_l_0 + 5.305457d-05*cos(4.18625053495d0 + 1052.2683831884d0 * t)
        jupiter_l_0 = jupiter_l_0 + 6.11405d-05*cos(4.51319531666d0 + 1162.4747044078d0 * t)
        jupiter_l_0 = jupiter_l_0 + 6.263171d-05*cos(0.02497643742d0 + 213.299095438d0 * t)
        jupiter_l_0 = jupiter_l_0 + 7.368057d-05*cos(5.08101125612d0 + 735.8765135318d0 * t)
        jupiter_l_0 = jupiter_l_0 + 8.246362d-05*cos(3.58227961655d0 + 206.1855484372d0 * t)
        jupiter_l_0 = jupiter_l_0 + 8.768686d-05*cos(3.63000324417d0 + 949.1756089698d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00013589738d0*cos(5.7748103159d0 + 1589.0728952838d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00027964622d0*cos(1.78454589485d0 + 536.8045120954d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.0003885778d0*cos(1.2723172486d0 + 316.3918696566d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00039806051d0*cos(2.29376744855d0 + 419.4846438752d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00064263986d0*cos(3.41145185203d0 + 103.0927742186d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00072903096d0*cos(3.64042909255d0 + 522.5774180938d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.0009717828d0*cos(4.14264708819d0 + 632.7837393132d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.0030638918d0*cos(5.41734729976d0 + 1059.3819301892d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.00573610145d0*cos(1.44406205976d0 + 7.1135470008d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.09695898711d0*cos(5.06191793105d0 + 529.6909650946d0 * t)
        jupiter_l_0 = jupiter_l_0 + 0.59954691495d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_l_1 = jupiter_l_1 + 1.07575d-06*cos(4.49282760117d0 + 956.2891559706d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.15047d-06*cos(5.28641699144d0 + 2118.7638603784d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.15393d-06*cos(0.68019050174d0 + 846.0828347512d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.30771d-06*cos(0.62643377351d0 + 728.762966531d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.7138d-06*cos(5.41655983845d0 + 199.0720014364d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.83938d-06*cos(6.27963588822d0 + 543.9180590962d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.86899d-06*cos(6.08620565908d0 + 742.9900605326d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.94784d-06*cos(2.21879010911d0 + 323.5054166574d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.98525d-06*cos(1.50458442825d0 + 838.9692877504d0 * t)
        jupiter_l_1 = jupiter_l_1 + 2.34066d-06*cos(6.24302226646d0 + 309.2783226558d0 * t)
        jupiter_l_1 = jupiter_l_1 + 2.3434d-06*cos(4.03469970332d0 + 949.1756089698d0 * t)
        jupiter_l_1 = jupiter_l_1 + 3.35817d-06*cos(3.73248749046d0 + 1162.4747044078d0 * t)
        jupiter_l_1 = jupiter_l_1 + 3.45249d-06*cos(4.2415956541d0 + 632.7837393132d0 * t)
        jupiter_l_1 = jupiter_l_1 + 4.1293d-06*cos(5.73652891261d0 + 95.9792272178d0 * t)
        jupiter_l_1 = jupiter_l_1 + 4.74181d-06*cos(4.13245269168d0 + 412.3710968744d0 * t)
        jupiter_l_1 = jupiter_l_1 + 5.67845d-06*cos(5.98867049451d0 + 625.6701923124d0 * t)
        jupiter_l_1 = jupiter_l_1 + 7.25447d-06*cos(5.51827471473d0 + 639.897286314d0 * t)
        jupiter_l_1 = jupiter_l_1 + 8.16397d-06*cos(0.58643054886d0 + 1066.49547719d0 * t)
        jupiter_l_1 = jupiter_l_1 + 8.27329d-06*cos(4.80312015734d0 + 213.299095438d0 * t)
        jupiter_l_1 = jupiter_l_1 + 8.47678d-06*cos(5.7580585045d0 + 110.2063212194d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.003574d-05*cos(3.15040301822d0 + 426.598190876d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.007216d-05*cos(0.46478398551d0 + 735.8765135318d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.098735d-05*cos(5.30704981594d0 + 515.463871093d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.163411d-05*cos(0.51450895328d0 + 3.9321532631d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.173129d-05*cos(5.8564730435d0 + 1052.2683831884d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.295769d-05*cos(5.55132765087d0 + 3.1813937377d0 * t)
        jupiter_l_1 = jupiter_l_1 + 1.745919d-05*cos(4.92669378486d0 + 1589.0728952838d0 * t)
        jupiter_l_1 = jupiter_l_1 + 2.211854d-05*cos(5.26771446618d0 + 206.1855484372d0 * t)
        jupiter_l_1 = jupiter_l_1 + 4.237795d-05*cos(5.89009351271d0 + 14.2270940016d0 * t)
        jupiter_l_1 = jupiter_l_1 + 5.433924d-05*cos(3.98478382565d0 + 419.4846438752d0 * t)
        jupiter_l_1 = jupiter_l_1 + 6.068051d-05*cos(4.42419502005d0 + 103.0927742186d0 * t)
        jupiter_l_1 = jupiter_l_1 + 0.00012105732d0*cos(0.16985765041d0 + 536.8045120954d0 * t)
        jupiter_l_1 = jupiter_l_1 + 0.00020720943d0*cos(5.45938936295d0 + 522.5774180938d0 * t)
        jupiter_l_1 = jupiter_l_1 + 0.0002765538d0*cos(4.57265956824d0 + 1059.3819301892d0 * t)
        jupiter_l_1 = jupiter_l_1 + 0.00228918538d0*cos(6.02647464016d0 + 7.1135470008d0 * t)
        jupiter_l_1 = jupiter_l_1 + 0.00489741194d0*cos(4.22066689928d0 + 529.6909650946d0 * t)
        jupiter_l_1 = jupiter_l_1 + 529.93480757497d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_l_1=jupiter_l_1*t;

        jupiter_l_2 = jupiter_l_2 + 1.17327d-06*cos(1.41435462588d0 + 625.6701923124d0 * t)
        jupiter_l_2 = jupiter_l_2 + 1.2957d-06*cos(5.83738872525d0 + 412.3710968744d0 * t)
        jupiter_l_2 = jupiter_l_2 + 1.41932d-06*cos(1.63435169016d0 + 426.598190876d0 * t)
        jupiter_l_2 = jupiter_l_2 + 1.4623d-06*cos(3.81373196838d0 + 639.897286314d0 * t)
        jupiter_l_2 = jupiter_l_2 + 1.55862d-06*cos(1.40642426467d0 + 1052.2683831884d0 * t)
        jupiter_l_2 = jupiter_l_2 + 1.97445d-06*cos(2.48356402053d0 + 3.9321532631d0 * t)
        jupiter_l_2 = jupiter_l_2 + 1.98883d-06*cos(5.33996443444d0 + 1066.49547719d0 * t)
        jupiter_l_2 = jupiter_l_2 + 2.18408d-06*cos(3.81389191353d0 + 1589.0728952838d0 * t)
        jupiter_l_2 = jupiter_l_2 + 3.082d-06*cos(0.69356654052d0 + 206.1855484372d0 * t)
        jupiter_l_2 = jupiter_l_2 + 3.37386d-06*cos(3.78644384244d0 + 3.1813937377d0 * t)
        jupiter_l_2 = jupiter_l_2 + 3.67498d-06*cos(6.05509120409d0 + 103.0927742186d0 * t)
        jupiter_l_2 = jupiter_l_2 + 3.77524d-06*cos(0.76048964872d0 + 515.463871093d0 * t)
        jupiter_l_2 = jupiter_l_2 + 3.83258d-06*cos(5.76790714387d0 + 419.4846438752d0 * t)
        jupiter_l_2 = jupiter_l_2 + 1.721069d-05*cos(4.18734385158d0 + 14.2270940016d0 * t)
        jupiter_l_2 = jupiter_l_2 + 2.723358d-05*cos(3.41411526638d0 + 1059.3819301892d0 * t)
        jupiter_l_2 = jupiter_l_2 + 2.729292d-05*cos(4.84545481351d0 + 536.8045120954d0 * t)
        jupiter_l_2 = jupiter_l_2 + 3.189317d-05*cos(1.05504615595d0 + 522.5774180938d0 * t)
        jupiter_l_2 = jupiter_l_2 + 0.00030629053d0*cos(2.93021440216d0 + 529.6909650946d0 * t)
        jupiter_l_2 = jupiter_l_2 + 0.0003896555d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_l_2 = jupiter_l_2 + 0.00047233598d0*cos(4.32148323554d0 + 7.1135470008d0 * t)
        jupiter_l_2=jupiter_l_2*t*t;

        jupiter_l_3 = jupiter_l_3 + 1.5488d-06*cos(2.07565585817d0 + 1059.3819301892d0 * t)
        jupiter_l_3 = jupiter_l_3 + 3.52851d-06*cos(2.97360159003d0 + 522.5774180938d0 * t)
        jupiter_l_3 = jupiter_l_3 + 4.1696d-06*cos(3.24451243214d0 + 536.8045120954d0 * t)
        jupiter_l_3 = jupiter_l_3 + 4.70716d-06*cos(2.47503977883d0 + 14.2270940016d0 * t)
        jupiter_l_3 = jupiter_l_3 + 1.356524d-05*cos(1.34635886411d0 + 529.6909650946d0 * t)
        jupiter_l_3 = jupiter_l_3 + 6.501665d-05*cos(2.59862880482d0 + 7.1135470008d0 * t)
        jupiter_l_3=jupiter_l_3*t*t*t;

        jupiter_l_4 = jupiter_l_4 + 1.14019d-06*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_l_4 = jupiter_l_4 + 6.69483d-06*cos(0.8528242109d0 + 7.1135470008d0 * t)
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

        jupiter_r_0 = jupiter_r_0 + 1.04002d-06*cos(2.22221906187d0 + 74.7815985673d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.06481d-06*cos(5.8146222229d0 + 220.4126424388d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.1243d-06*cos(0.85604150812d0 + 433.7117378768d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.12513d-06*cos(4.86216964016d0 + 528.2064923863d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.20188d-06*cos(2.95156363556d0 + 3.9321532631d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.23567d-06*cos(2.26158186345d0 + 2317.8358618148d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.28176d-06*cos(4.6658590767d0 + 831.8557407496d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.28817d-06*cos(1.10567106595d0 + 2531.1349572528d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.3944d-06*cos(3.63960322318d0 + 1788.1448967202d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.76551d-06*cos(2.57669991654d0 + 9683.5945811164d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.91373d-06*cos(6.2825131187d0 + 983.1158589136d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.92325d-06*cos(0.91996333387d0 + 1596.1864422846d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.97073d-06*cos(5.92859096863d0 + 453.424893819d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.00738d-06*cos(2.37259566683d0 + 1258.4539316256d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.15398d-06*cos(2.63572815848d0 + 2111.6503133776d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.39036d-06*cos(3.57397189838d0 + 835.0371344873d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.57482d-06*cos(6.13395478303d0 + 532.8723588323d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.75084d-06*cos(2.98863518924d0 + 526.5095713569d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.76627d-06*cos(2.52238450687d0 + 2001.4439921582d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.90869d-06*cos(3.89339143564d0 + 1471.7530270636d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.90985d-06*cos(6.03131226226d0 + 1169.5882514086d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.93875d-06*cos(2.04938438861d0 + 199.0720014364d0 * t)
        jupiter_r_0 = jupiter_r_0 + 3.03364d-06*cos(1.15407454372d0 + 5753.3848848968d0 * t)
        jupiter_r_0 = jupiter_r_0 + 3.09352d-06*cos(5.36855804945d0 + 1272.6810256272d0 * t)
        jupiter_r_0 = jupiter_r_0 + 3.19013d-06*cos(1.34803130803d0 + 2214.7430875962d0 * t)
        jupiter_r_0 = jupiter_r_0 + 3.38342d-06*cos(2.79873192583d0 + 1045.1548361876d0 * t)
        jupiter_r_0 = jupiter_r_0 + 3.45804d-06*cos(1.56404293688d0 + 491.5579294568d0 * t)
        jupiter_r_0 = jupiter_r_0 + 4.35805d-06*cos(2.60272129748d0 + 95.9792272178d0 * t)
        jupiter_r_0 = jupiter_r_0 + 4.45003d-06*cos(0.14623567024d0 + 14.2270940016d0 * t)
        jupiter_r_0 = jupiter_r_0 + 4.57859d-06*cos(0.1272269451d0 + 1375.7737998458d0 * t)
        jupiter_r_0 = jupiter_r_0 + 4.69965d-06*cos(2.81896276101d0 + 1795.258443721d0 * t)
        jupiter_r_0 = jupiter_r_0 + 4.96066d-06*cos(5.53005947761d0 + 380.12776796d0 * t)
        jupiter_r_0 = jupiter_r_0 + 5.42221d-06*cos(0.28360266386d0 + 525.7588118315d0 * t)
        jupiter_r_0 = jupiter_r_0 + 5.6212d-06*cos(0.08095987241d0 + 543.9180590962d0 * t)
        jupiter_r_0 = jupiter_r_0 + 6.14784d-06*cos(2.27624915604d0 + 942.062061969d0 * t)
        jupiter_r_0 = jupiter_r_0 + 6.20798d-06*cos(4.82284338962d0 + 956.2891559706d0 * t)
        jupiter_r_0 = jupiter_r_0 + 6.53981d-06*cos(3.38150775269d0 + 1692.1656695024d0 * t)
        jupiter_r_0 = jupiter_r_0 + 6.55289d-06*cos(2.79065604219d0 + 1685.0521225016d0 * t)
        jupiter_r_0 = jupiter_r_0 + 7.27162d-06*cos(3.98824686402d0 + 1155.361157407d0 * t)
        jupiter_r_0 = jupiter_r_0 + 7.767d-06*cos(3.6769695469d0 + 728.762966531d0 * t)
        jupiter_r_0 = jupiter_r_0 + 8.12036d-06*cos(5.94091899141d0 + 909.8187330546d0 * t)
        jupiter_r_0 = jupiter_r_0 + 8.21465d-06*cos(1.59342534396d0 + 1898.3512179396d0 * t)
        jupiter_r_0 = jupiter_r_0 + 8.85708d-06*cos(4.14785948471d0 + 533.6231183577d0 * t)
        jupiter_r_0 = jupiter_r_0 + 9.61072d-06*cos(4.54876989805d0 + 2118.7638603784d0 * t)
        jupiter_r_0 = jupiter_r_0 + 9.98579d-06*cos(2.8720894011d0 + 309.2783226558d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.014959d-05*cos(1.38673237666d0 + 454.9093665273d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.21681d-05*cos(1.80171561024d0 + 110.2063212194d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.230708d-05*cos(1.89042979701d0 + 323.5054166574d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.479484d-05*cos(2.68026191372d0 + 1478.8665740644d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.610549d-05*cos(3.08867789275d0 + 1368.660252845d0 * t)
        jupiter_r_0 = jupiter_r_0 + 1.911876d-05*cos(0.85621927419d0 + 412.3710968744d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.127644d-05*cos(6.1275146175d0 + 742.9900605326d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.499966d-05*cos(4.55182055941d0 + 838.9692877504d0 * t)
        jupiter_r_0 = jupiter_r_0 + 2.616955d-05*cos(2.00993967129d0 + 1581.959348283d0 * t)
        jupiter_r_0 = jupiter_r_0 + 3.502519d-05*cos(0.56531297394d0 + 1066.49547719d0 * t)
        jupiter_r_0 = jupiter_r_0 + 4.13689d-05*cos(2.72219979684d0 + 625.6701923124d0 * t)
        jupiter_r_0 = jupiter_r_0 + 4.170012d-05*cos(2.01605033912d0 + 515.463871093d0 * t)
        jupiter_r_0 = jupiter_r_0 + 5.477093d-05*cos(5.65729325169d0 + 639.897286314d0 * t)
        jupiter_r_0 = jupiter_r_0 + 6.137755d-05*cos(6.26417542514d0 + 846.0828347512d0 * t)
        jupiter_r_0 = jupiter_r_0 + 7.057978d-05*cos(2.18184753111d0 + 1265.5674786264d0 * t)
        jupiter_r_0 = jupiter_r_0 + 7.894539d-05*cos(2.47907551404d0 + 426.598190876d0 * t)
        jupiter_r_0 = jupiter_r_0 + 9.161431d-05*cos(4.41352618935d0 + 213.299095438d0 * t)
        jupiter_r_0 = jupiter_r_0 + 9.703346d-05*cos(1.90669572402d0 + 206.1855484372d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00012749004d0*cos(2.71550102862d0 + 1052.2683831884d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.000130326d0*cos(2.96043055741d0 + 1162.4747044078d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.0002228371d0*cos(4.19362773546d0 + 1589.0728952838d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00023453209d0*cos(3.54023147303d0 + 735.8765135318d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.0002394734d0*cos(0.27457854894d0 + 7.1135470008d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.0002913462d0*cos(1.6775924371d0 + 103.0927742186d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00030135275d0*cos(2.16132058449d0 + 949.1756089698d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00065517227d0*cos(5.97995850843d0 + 316.3918696566d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00072062869d0*cos(0.21465694745d0 + 536.8045120954d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00086792941d0*cos(0.71001090609d0 + 419.4846438752d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00187647391d0*cos(2.07590380082d0 + 522.5774180938d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00282029465d0*cos(2.57419879933d0 + 632.7837393132d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.00610599902d0*cos(3.84115365602d0 + 1059.3819301892d0 * t)
        jupiter_r_0 = jupiter_r_0 + 0.2520932702d0*cos(3.49108640015d0 + 529.6909650946d0 * t)
        jupiter_r_0 = jupiter_r_0 + 5.20887429471d0*cos(0.0d0 + 0.0d0 * t)

        jupiter_r_1 = jupiter_r_1 + 1.00164d-06*cos(5.24693885858d0 + 1265.5674786264d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.10638d-06*cos(3.62504147403d0 + 1272.6810256272d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.15313d-06*cos(4.46741278152d0 + 1581.959348283d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.21861d-06*cos(4.40581788491d0 + 1169.5882514086d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.23851d-06*cos(2.04290370696d0 + 1478.8665740644d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.32076d-06*cos(4.51187950811d0 + 525.7588118315d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.33483d-06*cos(1.32245735855d0 + 110.2063212194d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.46335d-06*cos(6.12958365535d0 + 533.6231183577d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.70225d-06*cos(4.84647488867d0 + 526.5095713569d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.80134d-06*cos(4.40165491159d0 + 532.8723588323d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.83504d-06*cos(4.26526769703d0 + 95.9792272178d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.96005d-06*cos(3.75877587139d0 + 199.0720014364d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.97134d-06*cos(3.70551461394d0 + 2118.7638603784d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.0019d-06*cos(4.43888814441d0 + 1045.1548361876d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.03217d-06*cos(5.59995425432d0 + 1155.361157407d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.20084d-06*cos(4.84210964963d0 + 1368.660252845d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.46603d-06*cos(3.92313823537d0 + 942.062061969d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.60753d-06*cos(5.34290306101d0 + 846.0828347512d0 * t)
        jupiter_r_1 = jupiter_r_1 + 3.37555d-06*cos(3.1678195112d0 + 956.2891559706d0 * t)
        jupiter_r_1 = jupiter_r_1 + 3.47378d-06*cos(4.68148808722d0 + 14.2270940016d0 * t)
        jupiter_r_1 = jupiter_r_1 + 4.01738d-06*cos(4.60528841541d0 + 309.2783226558d0 * t)
        jupiter_r_1 = jupiter_r_1 + 4.15894d-06*cos(5.36836018215d0 + 728.762966531d0 * t)
        jupiter_r_1 = jupiter_r_1 + 4.44683d-06*cos(0.40281181402d0 + 323.5054166574d0 * t)
        jupiter_r_1 = jupiter_r_1 + 4.68895d-06*cos(4.70973463481d0 + 543.9180590962d0 * t)
        jupiter_r_1 = jupiter_r_1 + 4.84689d-06*cos(2.46882793186d0 + 949.1756089698d0 * t)
        jupiter_r_1 = jupiter_r_1 + 5.67076d-06*cos(4.57655414712d0 + 742.9900605326d0 * t)
        jupiter_r_1 = jupiter_r_1 + 6.76928d-06*cos(6.2495347979d0 + 838.9692877504d0 * t)
        jupiter_r_1 = jupiter_r_1 + 7.40996d-06*cos(2.17094630558d0 + 1162.4747044078d0 * t)
        jupiter_r_1 = jupiter_r_1 + 8.06404d-06*cos(2.6775080138d0 + 632.7837393132d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.024802d-05*cos(2.55432643018d0 + 412.3710968744d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.049866d-05*cos(3.16113622955d0 + 213.299095438d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.641257d-05*cos(4.41628669824d0 + 625.6701923124d0 * t)
        jupiter_r_1 = jupiter_r_1 + 1.646182d-05*cos(5.30953510947d0 + 1066.49547719d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.100507d-05*cos(3.92762682306d0 + 639.897286314d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.412207d-05*cos(1.46947308304d0 + 426.598190876d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.600003d-05*cos(3.63435101622d0 + 206.1855484372d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.676575d-05*cos(4.33052878699d0 + 1052.2683831884d0 * t)
        jupiter_r_1 = jupiter_r_1 + 2.806064d-05*cos(3.7422369358d0 + 515.463871093d0 * t)
        jupiter_r_1 = jupiter_r_1 + 3.175763d-05*cos(2.79297987071d0 + 103.0927742186d0 * t)
        jupiter_r_1 = jupiter_r_1 + 3.203446d-05*cos(5.21083285476d0 + 735.8765135318d0 * t)
        jupiter_r_1 = jupiter_r_1 + 3.403605d-05*cos(3.34688537997d0 + 1589.0728952838d0 * t)
        jupiter_r_1 = jupiter_r_1 + 9.16636d-05*cos(4.75979408587d0 + 7.1135470008d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.0001184719d0*cos(2.41329588176d0 + 419.4846438752d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.00031185167d0*cos(4.88276663526d0 + 536.8045120954d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.00041390257d0*cos(0.0d0 + 0.0d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.00053443592d0*cos(3.89717644226d0 + 522.5774180938d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.00061661771d0*cos(3.00076251018d0 + 1059.3819301892d0 * t)
        jupiter_r_1 = jupiter_r_1 + 0.01271801596d0*cos(2.64937511122d0 + 529.6909650946d0 * t)
        jupiter_r_1=jupiter_r_1*t;

        jupiter_r_2 = jupiter_r_2 + 1.13535d-06*cos(0.78713911289d0 + 728.762966531d0 * t)
        jupiter_r_2 = jupiter_r_2 + 1.38606d-06*cos(2.93235671606d0 + 14.2270940016d0 * t)
        jupiter_r_2 = jupiter_r_2 + 1.99807d-06*cos(4.42884165317d0 + 103.0927742186d0 * t)
        jupiter_r_2 = jupiter_r_2 + 2.00783d-06*cos(3.06850623368d0 + 543.9180590962d0 * t)
        jupiter_r_2 = jupiter_r_2 + 2.29777d-06*cos(0.70530766213d0 + 735.8765135318d0 * t)
        jupiter_r_2 = jupiter_r_2 + 2.5729d-06*cos(0.96295364983d0 + 632.7837393132d0 * t)
        jupiter_r_2 = jupiter_r_2 + 2.7992d-06*cos(4.26162555827d0 + 412.3710968744d0 * t)
        jupiter_r_2 = jupiter_r_2 + 3.32578d-06*cos(0.00328961161d0 + 426.598190876d0 * t)
        jupiter_r_2 = jupiter_r_2 + 3.39043d-06*cos(6.12690864038d0 + 625.6701923124d0 * t)
        jupiter_r_2 = jupiter_r_2 + 3.42048d-06*cos(6.09922969324d0 + 1052.2683831884d0 * t)
        jupiter_r_2 = jupiter_r_2 + 3.62943d-06*cos(5.36761847267d0 + 206.1855484372d0 * t)
        jupiter_r_2 = jupiter_r_2 + 3.77316d-06*cos(2.24248352873d0 + 1589.0728952838d0 * t)
        jupiter_r_2 = jupiter_r_2 + 4.06453d-06*cos(3.78250730354d0 + 1066.49547719d0 * t)
        jupiter_r_2 = jupiter_r_2 + 4.2657d-06*cos(2.22753101795d0 + 639.897286314d0 * t)
        jupiter_r_2 = jupiter_r_2 + 4.9792d-06*cos(3.14159265359d0 + 0.0d0 * t)
        jupiter_r_2 = jupiter_r_2 + 8.36267d-06*cos(4.19889881718d0 + 419.4846438752d0 * t)
        jupiter_r_2 = jupiter_r_2 + 9.64466d-06*cos(5.48031822015d0 + 515.463871093d0 * t)
        jupiter_r_2 = jupiter_r_2 + 1.860833d-05*cos(2.97682139367d0 + 7.1135470008d0 * t)
        jupiter_r_2 = jupiter_r_2 + 5.314006d-05*cos(1.83835109712d0 + 1059.3819301892d0 * t)
        jupiter_r_2 = jupiter_r_2 + 7.029864d-05*cos(3.27476965833d0 + 536.8045120954d0 * t)
        jupiter_r_2 = jupiter_r_2 + 8.251618d-05*cos(5.77773935444d0 + 522.5774180938d0 * t)
        jupiter_r_2 = jupiter_r_2 + 0.00079644833d0*cos(1.35865896596d0 + 529.6909650946d0 * t)
        jupiter_r_2=jupiter_r_2*t*t;

        jupiter_r_3 = jupiter_r_3 + 2.21512d-06*cos(0.95225226237d0 + 515.463871093d0 * t)
        jupiter_r_3 = jupiter_r_3 + 2.54893d-06*cos(1.19625473533d0 + 7.1135470008d0 * t)
        jupiter_r_3 = jupiter_r_3 + 3.41593d-06*cos(0.52296542656d0 + 1059.3819301892d0 * t)
        jupiter_r_3 = jupiter_r_3 + 9.15666d-06*cos(1.41329676116d0 + 522.5774180938d0 * t)
        jupiter_r_3 = jupiter_r_3 + 1.073239d-05*cos(1.6732134576d0 + 536.8045120954d0 * t)
        jupiter_r_3 = jupiter_r_3 + 3.519257d-05*cos(6.05800633846d0 + 529.6909650946d0 * t)
        jupiter_r_3=jupiter_r_3*t*t*t;

        jupiter_r_4 = jupiter_r_4 + 1.13458d-06*cos(4.24858855779d0 + 529.6909650946d0 * t)
        jupiter_r_4 = jupiter_r_4 + 1.28628d-06*cos(0.08419309557d0 + 536.8045120954d0 * t)
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

        mars_b_0 = mars_b_0 + 1.39323d-06*cos(2.41796344238d0 + 8962.4553499102d0 * t)
        mars_b_0 = mars_b_0 + 1.42685d-06*cos(3.2129218082d0 + 3340.629680352d0 * t)
        mars_b_0 = mars_b_0 + 1.42686d-06*cos(1.1821501611d0 + 3340.5951730476d0 * t)
        mars_b_0 = mars_b_0 + 1.49297d-06*cos(2.16501209917d0 + 5621.8429232104d0 * t)
        mars_b_0 = mars_b_0 + 1.59678d-06*cos(2.23194610246d0 + 1059.3819301892d0 * t)
        mars_b_0 = mars_b_0 + 1.63159d-06*cos(4.26399626634d0 + 529.6909650946d0 * t)
        mars_b_0 = mars_b_0 + 1.81982d-06*cos(6.13648011704d0 + 6151.533888305d0 * t)
        mars_b_0 = mars_b_0 + 2.92506d-06*cos(3.79290644595d0 + 2281.2304965106d0 * t)
        mars_b_0 = mars_b_0 + 3.99109d-06*cos(5.130568147d0 + 16703.062133499d0 * t)
        mars_b_0 = mars_b_0 + 4.42999d-06*cos(5.65233015876d0 + 3337.0893083508d0 * t)
        mars_b_0 = mars_b_0 + 4.43401d-06*cos(5.02642620491d0 + 3344.1355450488d0 * t)
        mars_b_0 = mars_b_0 + 3.4841d-05*cos(4.78812547889d0 + 13362.4497067992d0 * t)
        mars_b_0 = mars_b_0 + 0.00031365538d0*cos(4.44651052853d0 + 10021.8372800994d0 * t)
        mars_b_0 = mars_b_0 + 0.00289104742d0*cos(0.0d0 + 0.0d0 * t)
        mars_b_0 = mars_b_0 + 0.00298033234d0*cos(4.10616996243d0 + 6681.2248533996d0 * t)
        mars_b_0 = mars_b_0 + 0.03197134986d0*cos(3.76832042432d0 + 3340.6124266998d0 * t)

        mars_b_1 = mars_b_1 + 1.02039d-06*cos(0.77617286189d0 + 3337.0893083508d0 * t)
        mars_b_1 = mars_b_1 + 4.25864d-06*cos(3.40843812875d0 + 13362.4497067992d0 * t)
        mars_b_1 = mars_b_1 + 1.471918d-05*cos(3.20205766795d0 + 10021.8372800994d0 * t)
        mars_b_1 = mars_b_1 + 9.670755d-05*cos(5.47877786506d0 + 6681.2248533996d0 * t)
        mars_b_1 = mars_b_1 + 0.0001411603d0*cos(3.14159265359d0 + 0.0d0 * t)
        mars_b_1 = mars_b_1 + 0.00350068845d0*cos(5.36847836211d0 + 3340.6124266998d0 * t)
        mars_b_1=mars_b_1*t;

        mars_b_2 = mars_b_2 + 3.02141d-06*cos(5.55871276021d0 + 6681.2248533996d0 * t)
        mars_b_2 = mars_b_2 + 4.986799d-05*cos(3.14159265359d0 + 0.0d0 * t)
        mars_b_2 = mars_b_2 + 0.0001672669d0*cos(0.60221392419d0 + 3340.6124266998d0 * t)
        mars_b_2=mars_b_2*t*t;

        mars_b_3 = mars_b_3 + 6.06506d-06*cos(1.98050633529d0 + 3340.6124266998d0 * t)
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

        mars_l_0 = mars_l_0 + 1.0009d-06*cos(3.24343740861d0 + 11773.3768115154d0 * t)
        mars_l_0 = mars_l_0 + 1.04541d-06*cos(0.78535382076d0 + 8827.3902698748d0 * t)
        mars_l_0 = mars_l_0 + 1.10375d-06*cos(1.05195079687d0 + 242.728603974d0 * t)
        mars_l_0 = mars_l_0 + 1.13486d-06*cos(3.70070798123d0 + 1589.0728952838d0 * t)
        mars_l_0 = mars_l_0 + 1.16945d-06*cos(3.12805282207d0 + 7903.073419721d0 * t)
        mars_l_0 = mars_l_0 + 1.28062d-06*cos(1.80665643332d0 + 5088.6288397668d0 * t)
        mars_l_0 = mars_l_0 + 1.28102d-06*cos(2.20806651008d0 + 1592.5960136328d0 * t)
        mars_l_0 = mars_l_0 + 1.30993d-06*cos(4.04491720264d0 + 12303.06777661d0 * t)
        mars_l_0 = mars_l_0 + 1.38245d-06*cos(4.30145176915d0 + 7.1135470008d0 * t)
        mars_l_0 = mars_l_0 + 1.39897d-06*cos(3.32592516164d0 + 2700.7151403858d0 * t)
        mars_l_0 = mars_l_0 + 1.44305d-06*cos(1.41874193418d0 + 135.0650800354d0 * t)
        mars_l_0 = mars_l_0 + 1.60011d-06*cos(3.94854735192d0 + 4562.4609930212d0 * t)
        mars_l_0 = mars_l_0 + 1.7211d-06*cos(0.43943041719d0 + 5486.777843175d0 * t)
        mars_l_0 = mars_l_0 + 1.74068d-06*cos(2.41360332576d0 + 553.5694028424d0 * t)
        mars_l_0 = mars_l_0 + 1.79196d-06*cos(1.00561112574d0 + 951.7184062506d0 * t)
        mars_l_0 = mars_l_0 + 1.88639d-06*cos(1.49103016486d0 + 9492.1463150048d0 * t)
        mars_l_0 = mars_l_0 + 1.93126d-06*cos(3.35715137745d0 + 3.5904286518d0 * t)
        mars_l_0 = mars_l_0 + 2.04161d-06*cos(2.82133266185d0 + 1221.8485663214d0 * t)
        mars_l_0 = mars_l_0 + 2.21225d-06*cos(3.50466672203d0 + 382.8965322232d0 * t)
        mars_l_0 = mars_l_0 + 2.31185d-06*cos(1.28240685294d0 + 3870.3033917944d0 * t)
        mars_l_0 = mars_l_0 + 2.36114d-06*cos(5.75504515576d0 + 3333.498879699d0 * t)
        mars_l_0 = mars_l_0 + 2.38857d-06*cos(5.37155471672d0 + 4136.9104335162d0 * t)
        mars_l_0 = mars_l_0 + 2.74028d-06*cos(0.54222141841d0 + 3340.545116397d0 * t)
        mars_l_0 = mars_l_0 + 2.74035d-06*cos(0.13372501211d0 + 3340.6797370026d0 * t)
        mars_l_0 = mars_l_0 + 2.81073d-06*cos(5.88163372945d0 + 1349.8674096588d0 * t)
        mars_l_0 = mars_l_0 + 2.836d-06*cos(5.76885494123d0 + 3149.1641605882d0 * t)
        mars_l_0 = mars_l_0 + 2.93199d-06*cos(4.22131277914d0 + 20.7753954924d0 * t)
        mars_l_0 = mars_l_0 + 2.99396d-06*cos(2.78323705697d0 + 6254.6266625236d0 * t)
        mars_l_0 = mars_l_0 + 3.02377d-06*cos(4.48618150321d0 + 3532.0606928114d0 * t)
        mars_l_0 = mars_l_0 + 3.06552d-06*cos(0.38052862973d0 + 6684.7479717486d0 * t)
        mars_l_0 = mars_l_0 + 3.12141d-06*cos(0.99853322843d0 + 6677.7017350506d0 * t)
        mars_l_0 = mars_l_0 + 4.15132d-06*cos(0.49662314774d0 + 213.299095438d0 * t)
        mars_l_0 = mars_l_0 + 4.25972d-06*cos(0.55365138172d0 + 6283.0758499914d0 * t)
        mars_l_0 = mars_l_0 + 4.72164d-06*cos(3.6254781941d0 + 1194.4470102246d0 * t)
        mars_l_0 = mars_l_0 + 5.50472d-06*cos(3.81001205408d0 + 0.9803210682d0 * t)
        mars_l_0 = mars_l_0 + 5.52746d-06*cos(4.47478863016d0 + 1748.016413067d0 * t)
        mars_l_0 = mars_l_0 + 6.35557d-06*cos(2.92182704275d0 + 8432.7643848156d0 * t)
        mars_l_0 = mars_l_0 + 6.55163d-06*cos(0.48864075176d0 + 3127.3133312618d0 * t)
        mars_l_0 = mars_l_0 + 7.12899d-06*cos(3.66336014788d0 + 1059.3819301892d0 * t)
        mars_l_0 = mars_l_0 + 7.23863d-06*cos(0.67497565801d0 + 3738.761430108d0 * t)
        mars_l_0 = mars_l_0 + 7.48724d-06*cos(3.82248399468d0 + 155.4203994342d0 * t)
        mars_l_0 = mars_l_0 + 8.32718d-06*cos(2.46418591282d0 + 3340.5951730476d0 * t)
        mars_l_0 = mars_l_0 + 8.32724d-06*cos(4.49495753458d0 + 3340.629680352d0 * t)
        mars_l_0 = mars_l_0 + 8.5876d-06*cos(2.40093704204d0 + 2914.0142358238d0 * t)
        mars_l_0 = mars_l_0 + 8.91567d-06*cos(0.1829389909d0 + 16703.062133499d0 * t)
        mars_l_0 = mars_l_0 + 1.024907d-05*cos(3.69334293555d0 + 8962.4553499102d0 * t)
        mars_l_0 = mars_l_0 + 1.264356d-05*cos(3.62275092231d0 + 5092.1519581158d0 * t)
        mars_l_0 = mars_l_0 + 1.286232d-05*cos(3.06795924626d0 + 2146.1654164752d0 * t)
        mars_l_0 = mars_l_0 + 1.52814d-05*cos(1.14979306228d0 + 6151.533888305d0 * t)
        mars_l_0 = mars_l_0 + 1.546408d-05*cos(2.91579633392d0 + 1751.539531416d0 * t)
        mars_l_0 = mars_l_0 + 1.798808d-05*cos(0.65634026844d0 + 529.6909650946d0 * t)
        mars_l_0 = mars_l_0 + 2.38942d-05*cos(5.03896401349d0 + 796.2980068164d0 * t)
        mars_l_0 = mars_l_0 + 2.579842d-05*cos(0.02996706197d0 + 3344.1355450488d0 * t)
        mars_l_0 = mars_l_0 + 2.628122d-05*cos(0.6480614357d0 + 3337.0893083508d0 * t)
        mars_l_0 = mars_l_0 + 2.937543d-05*cos(6.07893711408d0 + 0.0673103028d0 * t)
        mars_l_0 = mars_l_0 + 3.07525d-05*cos(0.85696597082d0 + 191.4482661116d0 * t)
        mars_l_0 = mars_l_0 + 3.575079d-05*cos(1.66186540141d0 + 2544.3144198834d0 * t)
        mars_l_0 = mars_l_0 + 4.161101d-05*cos(0.2281497533d0 + 2942.4634232916d0 * t)
        mars_l_0 = mars_l_0 + 6.797552d-05*cos(0.36462243626d0 + 398.1490034082d0 * t)
        mars_l_0 = mars_l_0 + 7.774867d-05*cos(3.33968655074d0 + 5621.8429232104d0 * t)
        mars_l_0 = mars_l_0 + 8.715688d-05*cos(6.11005159792d0 + 13362.4497067992d0 * t)
        mars_l_0 = mars_l_0 + 8.926772d-05*cos(4.15697845939d0 + 0.0172536522d0 * t)
        mars_l_0 = mars_l_0 + 0.0001061023d0*cos(2.93958524973d0 + 2281.2304965106d0 * t)
        mars_l_0 = mars_l_0 + 0.00012315897d0*cos(0.84956081238d0 + 2810.9214616052d0 * t)
        mars_l_0 = mars_l_0 + 0.00027744987d0*cos(5.97049512942d0 + 3.523118349d0 * t)
        mars_l_0 = mars_l_0 + 0.00091798394d0*cos(5.75478745111d0 + 10021.8372800994d0 * t)
        mars_l_0 = mars_l_0 + 0.01108216792d0*cos(5.40099836958d0 + 6681.2248533996d0 * t)
        mars_l_0 = mars_l_0 + 0.186563681d0*cos(5.05037100303d0 + 3340.6124266998d0 * t)
        mars_l_0 = mars_l_0 + 6.20347711583d0*cos(0.0d0 + 0.0d0 * t)

        mars_l_1 = mars_l_1 + 1.13595d-06*cos(5.42803224317d0 + 3738.761430108d0 * t)
        mars_l_1 = mars_l_1 + 1.13876d-06*cos(2.12869455089d0 + 1194.4470102246d0 * t)
        mars_l_1 = mars_l_1 + 1.16561d-06*cos(2.21347652545d0 + 1059.3819301892d0 * t)
        mars_l_1 = mars_l_1 + 1.17591d-06*cos(6.02407213861d0 + 6151.533888305d0 * t)
        mars_l_1 = mars_l_1 + 1.33563d-06*cos(5.97421903927d0 + 1748.016413067d0 * t)
        mars_l_1 = mars_l_1 + 1.33686d-06*cos(2.23325104196d0 + 0.9803210682d0 * t)
        mars_l_1 = mars_l_1 + 1.57587d-06*cos(4.18501035954d0 + 1751.539531416d0 * t)
        mars_l_1 = mars_l_1 + 1.68805d-06*cos(1.32894813366d0 + 3337.0893083508d0 * t)
        mars_l_1 = mars_l_1 + 2.05664d-06*cos(4.5689145566d0 + 2146.1654164752d0 * t)
        mars_l_1 = mars_l_1 + 2.82804d-06*cos(3.15967518204d0 + 2544.3144198834d0 * t)
        mars_l_1 = mars_l_1 + 3.14129d-06*cos(4.96335266049d0 + 16703.062133499d0 * t)
        mars_l_1 = mars_l_1 + 3.81747d-06*cos(3.53881289437d0 + 796.2980068164d0 * t)
        mars_l_1 = mars_l_1 + 4.29656d-06*cos(5.31646162367d0 + 155.4203994342d0 * t)
        mars_l_1 = mars_l_1 + 4.32614d-06*cos(2.5606640286d0 + 191.4482661116d0 * t)
        mars_l_1 = mars_l_1 + 5.21041d-06*cos(4.99422678175d0 + 3344.1355450488d0 * t)
        mars_l_1 = mars_l_1 + 5.37566d-06*cos(5.01589727492d0 + 398.1490034082d0 * t)
        mars_l_1 = mars_l_1 + 8.41551d-06*cos(4.45858256765d0 + 2281.2304965106d0 * t)
        mars_l_1 = mars_l_1 + 2.48548d-05*cos(4.61277567318d0 + 13362.4497067992d0 * t)
        mars_l_1 = mars_l_1 + 3.452399d-05*cos(4.73210386365d0 + 3.523118349d0 * t)
        mars_l_1 = mars_l_1 + 0.00019963338d0*cos(4.2659406103d0 + 10021.8372800994d0 * t)
        mars_l_1 = mars_l_1 + 0.00164901343d0*cos(3.92631250962d0 + 6681.2248533996d0 * t)
        mars_l_1 = mars_l_1 + 0.01458227051d0*cos(3.60426053609d0 + 3340.6124266998d0 * t)
        mars_l_1 = mars_l_1 + 3340.85627474342d0*cos(0.0d0 + 0.0d0 * t)
        mars_l_1=mars_l_1*t;

        mars_l_2 = mars_l_2 + 1.20957d-06*cos(0.54325292454d0 + 155.4203994342d0 * t)
        mars_l_2 = mars_l_2 + 2.22022d-06*cos(3.19436080019d0 + 3.523118349d0 * t)
        mars_l_2 = mars_l_2 + 3.98379d-06*cos(3.14118428289d0 + 13362.4497067992d0 * t)
        mars_l_2 = mars_l_2 + 2.465104d-05*cos(2.80000020929d0 + 10021.8372800994d0 * t)
        mars_l_2 = mars_l_2 + 0.00013908426d0*cos(2.45742359888d0 + 6681.2248533996d0 * t)
        mars_l_2 = mars_l_2 + 0.00054187645d0*cos(0.0d0 + 0.0d0 * t)
        mars_l_2 = mars_l_2 + 0.00058015791d0*cos(2.04979463279d0 + 3340.6124266998d0 * t)
        mars_l_2=mars_l_2*t*t;

        mars_l_3 = mars_l_3 + 1.88268d-06*cos(1.28799982497d0 + 10021.8372800994d0 * t)
        mars_l_3 = mars_l_3 + 6.62095d-06*cos(0.88469178686d0 + 6681.2248533996d0 * t)
        mars_l_3 = mars_l_3 + 1.482423d-05*cos(0.44434694876d0 + 3340.6124266998d0 * t)
        mars_l_3=mars_l_3*t*t*t;

        mars_l_4 = mars_l_4 + 1.13969d-06*cos(3.14159265359d0 + 0.0d0 * t)
        mars_l_4=mars_l_4*t*t*t*t;

        r = mars_l_4+mars_l_3+mars_l_2+mars_l_1+mars_l_0
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

        mars_r_0 = mars_r_0 + 1.02096d-06*cos(6.18138550087d0 + 9492.1463150048d0 * t)
        mars_r_0 = mars_r_0 + 1.11538d-06*cos(0.55339169625d0 + 11243.6858464208d0 * t)
        mars_r_0 = mars_r_0 + 1.14941d-06*cos(4.31745088059d0 + 1349.8674096588d0 * t)
        mars_r_0 = mars_r_0 + 1.18781d-06*cos(2.12178071222d0 + 1589.0728952838d0 * t)
        mars_r_0 = mars_r_0 + 1.28555d-06*cos(5.49883294915d0 + 8827.3902698748d0 * t)
        mars_r_0 = mars_r_0 + 1.3312d-06*cos(1.5391010671d0 + 7903.073419721d0 * t)
        mars_r_0 = mars_r_0 + 1.41759d-06*cos(2.47790321309d0 + 4562.4609930212d0 * t)
        mars_r_0 = mars_r_0 + 1.44286d-06*cos(0.21296012258d0 + 5088.6288397668d0 * t)
        mars_r_0 = mars_r_0 + 1.63534d-06*cos(3.79889068111d0 + 4136.9104335162d0 * t)
        mars_r_0 = mars_r_0 + 1.75995d-06*cos(5.95341786369d0 + 3870.3033917944d0 * t)
        mars_r_0 = mars_r_0 + 1.78613d-06*cos(4.18423025538d0 + 3333.498879699d0 * t)
        mars_r_0 = mars_r_0 + 1.82686d-06*cos(5.08062683355d0 + 6684.7479717486d0 * t)
        mars_r_0 = mars_r_0 + 1.86213d-06*cos(5.69871555748d0 + 6677.7017350506d0 * t)
        mars_r_0 = mars_r_0 + 2.08333d-06*cos(5.25476080773d0 + 3340.545116397d0 * t)
        mars_r_0 = mars_r_0 + 2.08336d-06*cos(4.84626442122d0 + 3340.6797370026d0 * t)
        mars_r_0 = mars_r_0 + 2.19428d-06*cos(5.58340248784d0 + 191.4482661116d0 * t)
        mars_r_0 = mars_r_0 + 2.2319d-06*cos(4.19861593779d0 + 3149.1641605882d0 * t)
        mars_r_0 = mars_r_0 + 2.28128d-06*cos(3.2552902062d0 + 6872.6731195112d0 * t)
        mars_r_0 = mars_r_0 + 2.33827d-06*cos(5.10546492529d0 + 5486.777843175d0 * t)
        mars_r_0 = mars_r_0 + 2.39133d-06*cos(2.03669896238d0 + 1194.4470102246d0 * t)
        mars_r_0 = mars_r_0 + 2.69891d-06*cos(3.76394728622d0 + 5884.9268465832d0 * t)
        mars_r_0 = mars_r_0 + 2.75224d-06*cos(2.90818883832d0 + 1748.016413067d0 * t)
        mars_r_0 = mars_r_0 + 2.75501d-06*cos(1.21767967781d0 + 6254.6266625236d0 * t)
        mars_r_0 = mars_r_0 + 2.79552d-06*cos(5.25749247548d0 + 6283.0758499914d0 * t)
        mars_r_0 = mars_r_0 + 2.83702d-06*cos(2.90692294913d0 + 3532.0606928114d0 * t)
        mars_r_0 = mars_r_0 + 3.48095d-06*cos(4.83219198908d0 + 16703.062133499d0 * t)
        mars_r_0 = mars_r_0 + 4.72776d-06*cos(5.19850457873d0 + 3127.3133312618d0 * t)
        mars_r_0 = mars_r_0 + 5.26187d-06*cos(5.38292276228d0 + 3738.761430108d0 * t)
        mars_r_0 = mars_r_0 + 5.74352d-06*cos(0.82896196337d0 + 2914.0142358238d0 * t)
        mars_r_0 = mars_r_0 + 6.29976d-06*cos(1.28738135858d0 + 1751.539531416d0 * t)
        mars_r_0 = mars_r_0 + 6.3314d-06*cos(2.92430448169d0 + 3340.629680352d0 * t)
        mars_r_0 = mars_r_0 + 6.33144d-06*cos(0.89353285018d0 + 3340.5951730476d0 * t)
        mars_r_0 = mars_r_0 + 6.9234d-06*cos(2.13378814785d0 + 8962.4553499102d0 * t)
        mars_r_0 = mars_r_0 + 7.25583d-06*cos(1.24516913473d0 + 8432.7643848156d0 * t)
        mars_r_0 = mars_r_0 + 7.4098d-06*cos(1.49906336892d0 + 2146.1654164752d0 * t)
        mars_r_0 = mars_r_0 + 7.9791d-06*cos(3.44839026172d0 + 796.2980068164d0 * t)
        mars_r_0 = mars_r_0 + 8.07348d-06*cos(2.10216647104d0 + 1059.3819301892d0 * t)
        mars_r_0 = mars_r_0 + 8.99077d-06*cos(4.40790433994d0 + 529.6909650946d0 * t)
        mars_r_0 = mars_r_0 + 9.92252d-06*cos(5.83862401067d0 + 6151.533888305d0 * t)
        mars_r_0 = mars_r_0 + 1.102828d-05*cos(5.0090826416d0 + 398.1490034082d0 * t)
        mars_r_0 = mars_r_0 + 1.167115d-05*cos(2.11261501155d0 + 5092.1519581158d0 * t)
        mars_r_0 = mars_r_0 + 1.960198d-05*cos(4.74249386323d0 + 3344.1355450488d0 * t)
        mars_r_0 = mars_r_0 + 1.999399d-05*cos(5.36059605227d0 + 3337.0893083508d0 * t)
        mars_r_0 = mars_r_0 + 2.306539d-05*cos(0.09081742493d0 + 2544.3144198834d0 * t)
        mars_r_0 = mars_r_0 + 2.484385d-05*cos(4.92545577893d0 + 2942.4634232916d0 * t)
        mars_r_0 = mars_r_0 + 3.82516d-05*cos(4.49407182408d0 + 13362.4497067992d0 * t)
        mars_r_0 = mars_r_0 + 5.523193d-05*cos(1.3643631888d0 + 2281.2304965106d0 * t)
        mars_r_0 = mars_r_0 + 7.485315d-05*cos(1.77238998069d0 + 5621.8429232104d0 * t)
        mars_r_0 = mars_r_0 + 8.109738d-05*cos(5.55958460165d0 + 2810.9214616052d0 * t)
        mars_r_0 = mars_r_0 + 0.00046179117d0*cos(4.15595316284d0 + 10021.8372800994d0 * t)
        mars_r_0 = mars_r_0 + 0.00660776357d0*cos(3.81783442097d0 + 6681.2248533996d0 * t)
        mars_r_0 = mars_r_0 + 0.14184953153d0*cos(3.47971283519d0 + 3340.6124266998d0 * t)
        mars_r_0 = mars_r_0 + 1.53033488276d0*cos(0.0d0 + 0.0d0 * t)

        mars_r_1 = mars_r_1 + 1.18443d-06*cos(2.99761345074d0 + 2146.1654164752d0 * t)
        mars_r_1 = mars_r_1 + 1.27068d-06*cos(1.9538977574d0 + 796.2980068164d0 * t)
        mars_r_1 = mars_r_1 + 1.28204d-06*cos(0.6299122057d0 + 1059.3819301892d0 * t)
        mars_r_1 = mars_r_1 + 1.28362d-06*cos(6.04343360441d0 + 3337.0893083508d0 * t)
        mars_r_1 = mars_r_1 + 1.3585d-06*cos(3.38507017993d0 + 16703.062133499d0 * t)
        mars_r_1 = mars_r_1 + 1.82572d-06*cos(1.58428644001d0 + 2544.3144198834d0 * t)
        mars_r_1 = mars_r_1 + 3.95698d-06*cos(3.42324611291d0 + 3344.1355450488d0 * t)
        mars_r_1 = mars_r_1 + 4.38579d-06*cos(2.88835072628d0 + 2281.2304965106d0 * t)
        mars_r_1 = mars_r_1 + 1.19455d-05*cos(3.04702182503d0 + 13362.4497067992d0 * t)
        mars_r_1 = mars_r_1 + 0.0001081588d0*cos(2.70888093803d0 + 10021.8372800994d0 * t)
        mars_r_1 = mars_r_1 + 0.000128772d0*cos(0.0d0 + 0.0d0 * t)
        mars_r_1 = mars_r_1 + 0.00103175886d0*cos(2.37071845682d0 + 6681.2248533996d0 * t)
        mars_r_1 = mars_r_1 + 0.0110743334d0*cos(2.0325052495d0 + 3340.6124266998d0 * t)
        mars_r_1=mars_r_1*t;

        mars_r_2 = mars_r_2 + 1.87387d-06*cos(1.57298991982d0 + 13362.4497067992d0 * t)
        mars_r_2 = mars_r_2 + 1.274915d-05*cos(1.22594050809d0 + 10021.8372800994d0 * t)
        mars_r_2 = mars_r_2 + 8.138042d-05*cos(0.86998398093d0 + 6681.2248533996d0 * t)
        mars_r_2 = mars_r_2 + 0.00044242247d0*cos(0.47930603943d0 + 3340.6124266998d0 * t)
        mars_r_2=mars_r_2*t*t;

        mars_r_3 = mars_r_3 + 1.00044d-06*cos(5.99726827028d0 + 10021.8372800994d0 * t)
        mars_r_3 = mars_r_3 + 4.24446d-06*cos(5.61343766478d0 + 6681.2248533996d0 * t)
        mars_r_3 = mars_r_3 + 1.113107d-05*cos(5.14987350142d0 + 3340.6124266998d0 * t)
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

        mercury_b_0 = mercury_b_0 + 1.00454d-06*cos(5.65684734206d0 + 20426.571092422d0 * t)
        mercury_b_0 = mercury_b_0 + 1.21395d-06*cos(1.81271752059d0 + 53285.1848352418d0 * t)
        mercury_b_0 = mercury_b_0 + 1.32013d-06*cos(1.11908492283d0 + 234791.12827416777d0 * t)
        mercury_b_0 = mercury_b_0 + 2.07674d-06*cos(4.91772564073d0 + 27197.2816936676d0 * t)
        mercury_b_0 = mercury_b_0 + 2.08584d-06*cos(2.02020294153d0 + 24978.5245894808d0 * t)
        mercury_b_0 = mercury_b_0 + 5.13953d-06*cos(4.37835409309d0 + 208703.2251325936d0 * t)
        mercury_b_0 = mercury_b_0 + 2.014189d-05*cos(1.35324164694d0 + 182615.3219910194d0 * t)
        mercury_b_0 = mercury_b_0 + 7.963301d-05*cos(4.60972126348d0 + 156527.41884944518d0 * t)
        mercury_b_0 = mercury_b_0 + 0.00031866927d0*cos(1.58088495667d0 + 130439.51570787099d0 * t)
        mercury_b_0 = mercury_b_0 + 0.0012977877d0*cos(4.83232503961d0 + 104351.61256629678d0 * t)
        mercury_b_0 = mercury_b_0 + 0.0054325181d0*cos(1.79644363963d0 + 78263.70942472259d0 * t)
        mercury_b_0 = mercury_b_0 + 0.01222839532d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_b_0 = mercury_b_0 + 0.02388076996d0*cos(5.03738959685d0 + 52175.8062831484d0 * t)
        mercury_b_0 = mercury_b_0 + 0.11737528962d0*cos(1.98357498767d0 + 26087.9031415742d0 * t)

        mercury_b_1 = mercury_b_1 + 2.77503d-06*cos(6.21020774184d0 + 182615.3219910194d0 * t)
        mercury_b_1 = mercury_b_1 + 8.59585d-06*cos(3.18452433647d0 + 156527.41884944518d0 * t)
        mercury_b_1 = mercury_b_1 + 2.495743d-05*cos(0.16051210665d0 + 130439.51570787099d0 * t)
        mercury_b_1 = mercury_b_1 + 6.353462d-05*cos(3.42943919982d0 + 104351.61256629678d0 * t)
        mercury_b_1 = mercury_b_1 + 0.00010894981d0*cos(0.48540174006d0 + 78263.70942472259d0 * t)
        mercury_b_1 = mercury_b_1 + 0.00022675295d0*cos(0.0151536688d0 + 52175.8062831484d0 * t)
        mercury_b_1 = mercury_b_1 + 0.00146233668d0*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_b_1 = mercury_b_1 + 0.00429151362d0*cos(3.50169780393d0 + 26087.9031415742d0 * t)
        mercury_b_1=mercury_b_1*t;

        mercury_b_2 = mercury_b_2 + 1.7028d-06*cos(1.62255638714d0 + 104351.61256629678d0 * t)
        mercury_b_2 = mercury_b_2 + 2.66213d-06*cos(4.43418336532d0 + 78263.70942472259d0 * t)
        mercury_b_2 = mercury_b_2 + 1.044801d-05*cos(1.21216540536d0 + 52175.8062831484d0 * t)
        mercury_b_2 = mercury_b_2 + 1.913516d-05*cos(0.0d0 + 0.0d0 * t)
        mercury_b_2 = mercury_b_2 + 0.00011830934d0*cos(4.79065585784d0 + 26087.9031415742d0 * t)
        mercury_b_2=mercury_b_2*t*t;

        mercury_b_3 = mercury_b_3 + 1.60537d-06*cos(0.0d0 + 0.0d0 * t)
        mercury_b_3 = mercury_b_3 + 2.35423d-06*cos(0.35387524604d0 + 26087.9031415742d0 * t)
        mercury_b_3=mercury_b_3*t*t*t;

        r = mercury_b_3+mercury_b_2+mercury_b_1+mercury_b_0
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

        mercury_l_0 = mercury_l_0 + 1.06422d-06*cos(4.20572116254d0 + 19804.8272915828d0 * t)
        mercury_l_0 = mercury_l_0 + 1.18233d-06*cos(2.78149786369d0 + 77204.32749453338d0 * t)
        mercury_l_0 = mercury_l_0 + 1.25219d-06*cos(3.72079804425d0 + 39609.6545831656d0 * t)
        mercury_l_0 = mercury_l_0 + 1.37942d-06*cos(0.29098447849d0 + 10213.285546211d0 * t)
        mercury_l_0 = mercury_l_0 + 1.42316d-06*cos(3.36003948842d0 + 37410.5672398786d0 * t)
        mercury_l_0 = mercury_l_0 + 1.72643d-06*cos(2.45200164173d0 + 24498.8302462904d0 * t)
        mercury_l_0 = mercury_l_0 + 1.75965d-06*cos(4.53636829858d0 + 51066.427731055d0 * t)
        mercury_l_0 = mercury_l_0 + 1.81629d-06*cos(2.43413502466d0 + 25661.3049506982d0 * t)
        mercury_l_0 = mercury_l_0 + 1.83359d-06*cos(2.62878670784d0 + 27043.5028831828d0 * t)
        mercury_l_0 = mercury_l_0 + 2.08995d-06*cos(2.09178234008d0 + 47623.8527860896d0 * t)
        mercury_l_0 = mercury_l_0 + 2.16645d-06*cos(0.65987207348d0 + 13521.7514415914d0 * t)
        mercury_l_0 = mercury_l_0 + 2.3483d-06*cos(0.266721189d0 + 11322.6640983044d0 * t)
        mercury_l_0 = mercury_l_0 + 2.38793d-06*cos(0.11343953378d0 + 1059.3819301892d0 * t)
        mercury_l_0 = mercury_l_0 + 2.59587d-06*cos(0.98732428184d0 + 4551.9534970588d0 * t)
        mercury_l_0 = mercury_l_0 + 2.64336d-06*cos(3.91705094013d0 + 57837.1383323006d0 * t)
        mercury_l_0 = mercury_l_0 + 2.72947d-06*cos(2.49451163975d0 + 529.6909650946d0 * t)
        mercury_l_0 = mercury_l_0 + 3.25335d-06*cos(1.3367433478d0 + 53285.1848352418d0 * t)
        mercury_l_0 = mercury_l_0 + 3.39214d-06*cos(5.86327765d0 + 25558.2121764796d0 * t)
        mercury_l_0 = mercury_l_0 + 3.43313d-06*cos(5.76531885335d0 + 955.5997416086d0 * t)
        mercury_l_0 = mercury_l_0 + 3.45212d-06*cos(2.79211901539d0 + 15874.6175953632d0 * t)
        mercury_l_0 = mercury_l_0 + 3.52441d-06*cos(5.24156297101d0 + 20426.571092422d0 * t)
        mercury_l_0 = mercury_l_0 + 4.042d-06*cos(3.28228847025d0 + 208703.2251325936d0 * t)
        mercury_l_0 = mercury_l_0 + 4.51137d-06*cos(6.04989275289d0 + 51116.4243529592d0 * t)
        mercury_l_0 = mercury_l_0 + 6.43759d-06*cos(5.30266110787d0 + 21535.9496445154d0 * t)
        mercury_l_0 = mercury_l_0 + 7.14182d-06*cos(1.54144865265d0 + 24978.5245894808d0 * t)
        mercury_l_0 = mercury_l_0 + 1.017332d-05*cos(0.8803143904d0 + 31749.2351907264d0 * t)
        mercury_l_0 = mercury_l_0 + 1.364682d-05*cos(4.59918318745d0 + 27197.2816936676d0 * t)
        mercury_l_0 = mercury_l_0 + 1.589923d-05*cos(2.99510417815d0 + 25028.521211385d0 * t)
        mercury_l_0 = mercury_l_0 + 1.726012d-05*cos(0.35832239908d0 + 182615.3219910194d0 * t)
        mercury_l_0 = mercury_l_0 + 1.803463d-05*cos(4.1033317841d0 + 5661.3320491522d0 * t)
        mercury_l_0 = mercury_l_0 + 3.55974d-05*cos(1.51202669419d0 + 1109.3785520934d0 * t)
        mercury_l_0 = mercury_l_0 + 7.583476d-05*cos(3.7134840051d0 + 156527.41884944518d0 * t)
        mercury_l_0 = mercury_l_0 + 0.00034561897d0*cos(0.77930765817d0 + 130439.51570787099d0 * t)
        mercury_l_0 = mercury_l_0 + 0.00165590362d0*cos(4.11969163181d0 + 104351.61256629678d0 * t)
        mercury_l_0 = mercury_l_0 + 0.00855346843d0*cos(1.16520322351d0 + 78263.70942472259d0 * t)
        mercury_l_0 = mercury_l_0 + 0.05046294199d0*cos(4.4778548954d0 + 52175.8062831484d0 * t)
        mercury_l_0 = mercury_l_0 + 0.40989414976d0*cos(1.48302034194d0 + 26087.9031415742d0 * t)
        mercury_l_0 = mercury_l_0 + 4.40250710144d0*cos(0.0d0 + 0.0d0 * t)

        mercury_l_1 = mercury_l_1 + 1.02743d-06*cos(2.14879173777d0 + 208703.2251325936d0 * t)
        mercury_l_1 = mercury_l_1 + 3.52244d-06*cos(3.05238094403d0 + 1109.3785520934d0 * t)
        mercury_l_1 = mercury_l_1 + 3.88318d-06*cos(5.48039225891d0 + 182615.3219910194d0 * t)
        mercury_l_1 = mercury_l_1 + 1.472233d-05*cos(2.51845458395d0 + 156527.41884944518d0 * t)
        mercury_l_1 = mercury_l_1 + 5.592094d-05*cos(5.82675673328d0 + 130439.51570787099d0 * t)
        mercury_l_1 = mercury_l_1 + 0.00021245035d0*cos(2.83531934452d0 + 104351.61256629678d0 * t)
        mercury_l_1 = mercury_l_1 + 0.00080538452d0*cos(6.10454743366d0 + 78263.70942472259d0 * t)
        mercury_l_1 = mercury_l_1 + 0.00303471395d0*cos(3.05565472363d0 + 52175.8062831484d0 * t)
        mercury_l_1 = mercury_l_1 + 0.01126007832d0*cos(6.21703970996d0 + 26087.9031415742d0 * t)
        mercury_l_1 = mercury_l_1 + 26088.14706222746d0*cos(0.0d0 + 0.0d0 * t)
        mercury_l_1=mercury_l_1*t;

        mercury_l_2 = mercury_l_2 + 1.22998d-06*cos(1.06868541052d0 + 156527.41884944518d0 * t)
        mercury_l_2 = mercury_l_2 + 3.78173d-06*cos(4.319980559d0 + 130439.51570787099d0 * t)
        mercury_l_2 = mercury_l_2 + 1.107419d-05*cos(1.26226537554d0 + 104351.61256629678d0 * t)
        mercury_l_2 = mercury_l_2 + 3.018297d-05*cos(4.45643539705d0 + 78263.70942472259d0 * t)
        mercury_l_2 = mercury_l_2 + 7.396711d-05*cos(1.34735624669d0 + 52175.8062831484d0 * t)
        mercury_l_2 = mercury_l_2 + 0.00016903658d0*cos(4.69072300649d0 + 26087.9031415742d0 * t)
        mercury_l_2 = mercury_l_2 + 0.00053049845d0*cos(0.0d0 + 0.0d0 * t)
        mercury_l_2=mercury_l_2*t*t;

        mercury_l_3 = mercury_l_3 + 1.42152d-06*cos(3.125054526d0 + 26087.9031415742d0 * t)
        mercury_l_3 = mercury_l_3 + 1.88077d-06*cos(0.03466830117d0 + 52175.8062831484d0 * t)
        mercury_l_3=mercury_l_3*t*t*t;

        mercury_l_4 = mercury_l_4 + 1.14078d-06*cos(3.14159265359d0 + 0.0d0 * t)
        mercury_l_4=mercury_l_4*t*t*t*t;

        r = mercury_l_4+mercury_l_3+mercury_l_2+mercury_l_1+mercury_l_0
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

        mercury_r_0 = mercury_r_0 + 1.00144d-06*cos(3.73435608689d0 + 21535.9496445154d0 * t)
        mercury_r_0 = mercury_r_0 + 1.4198d-06*cos(6.25264202645d0 + 24978.5245894808d0 * t)
        mercury_r_0 = mercury_r_0 + 2.01499d-06*cos(5.59227724202d0 + 31749.2351907264d0 * t)
        mercury_r_0 = mercury_r_0 + 2.01855d-06*cos(5.6472504035d0 + 182615.3219910194d0 * t)
        mercury_r_0 = mercury_r_0 + 2.60033d-06*cos(3.02817753482d0 + 27197.2816936676d0 * t)
        mercury_r_0 = mercury_r_0 + 2.89955d-06*cos(1.42441936951d0 + 25028.521211385d0 * t)
        mercury_r_0 = mercury_r_0 + 9.18228d-06*cos(2.59650562598d0 + 156527.41884944518d0 * t)
        mercury_r_0 = mercury_r_0 + 4.354065d-05*cos(5.82894543257d0 + 130439.51570787099d0 * t)
        mercury_r_0 = mercury_r_0 + 0.00021921969d0*cos(2.77820093975d0 + 104351.61256629678d0 * t)
        mercury_r_0 = mercury_r_0 + 0.00121281763d0*cos(6.01064153805d0 + 78263.70942472259d0 * t)
        mercury_r_0 = mercury_r_0 + 0.00795525557d0*cos(2.95989690096d0 + 52175.8062831484d0 * t)
        mercury_r_0 = mercury_r_0 + 0.07834131817d0*cos(6.19233722599d0 + 26087.9031415742d0 * t)
        mercury_r_0 = mercury_r_0 + 0.39528271652d0*cos(0.0d0 + 0.0d0 * t)

        mercury_r_1 = mercury_r_1 + 1.52851d-06*cos(1.0606077981d0 + 156527.41884944518d0 * t)
        mercury_r_1 = mercury_r_1 + 6.03996d-06*cos(4.29303116561d0 + 130439.51570787099d0 * t)
        mercury_r_1 = mercury_r_1 + 1.624367d-05*cos(0.0d0 + 0.0d0 * t)
        mercury_r_1 = mercury_r_1 + 2.432804d-05*cos(1.24226083435d0 + 104351.61256629678d0 * t)
        mercury_r_1 = mercury_r_1 + 0.00010094479d0*cos(4.47466326316d0 + 78263.70942472259d0 * t)
        mercury_r_1 = mercury_r_1 + 0.00044141826d0*cos(1.42385543975d0 + 52175.8062831484d0 * t)
        mercury_r_1 = mercury_r_1 + 0.00217347739d0*cos(4.65617158663d0 + 26087.9031415742d0 * t)
        mercury_r_1=mercury_r_1*t;

        mercury_r_2 = mercury_r_2 + 1.3613d-06*cos(5.97983925842d0 + 104351.61256629678d0 * t)
        mercury_r_2 = mercury_r_2 + 4.24822d-06*cos(2.9258335296d0 + 78263.70942472259d0 * t)
        mercury_r_2 = mercury_r_2 + 1.245396d-05*cos(6.15183317423d0 + 52175.8062831484d0 * t)
        mercury_r_2 = mercury_r_2 + 3.117867d-05*cos(3.08231840296d0 + 26087.9031415742d0 * t)
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

        neptune_b_0 = neptune_b_0 + 1.40455d-06*cos(3.52969556376d0 + 137.0330241624d0 * t)
        neptune_b_0 = neptune_b_0 + 2.0559d-06*cos(4.25652348864d0 + 529.6909650946d0 * t)
        neptune_b_0 = neptune_b_0 + 2.54333d-06*cos(3.27120499438d0 + 453.424893819d0 * t)
        neptune_b_0 = neptune_b_0 + 2.61647d-06*cos(3.76722704749d0 + 213.299095438d0 * t)
        neptune_b_0 = neptune_b_0 + 2.79964d-06*cos(1.68165309699d0 + 77.7505439839d0 * t)
        neptune_b_0 = neptune_b_0 + 4.0183d-06*cos(4.16883287237d0 + 114.3991069134d0 * t)
        neptune_b_0 = neptune_b_0 + 5.88805d-06*cos(3.18655882497d0 + 2.9689454166d0 * t)
        neptune_b_0 = neptune_b_0 + 5.94878d-06*cos(2.12892708114d0 + 41.1019810544d0 * t)
        neptune_b_0 = neptune_b_0 + 6.05767d-06*cos(2.80246601405d0 + 73.297125859d0 * t)
        neptune_b_0 = neptune_b_0 + 1.015137d-05*cos(3.21561035875d0 + 35.1640902212d0 * t)
        neptune_b_0 = neptune_b_0 + 1.96754d-05*cos(4.37778195768d0 + 1.4844727083d0 * t)
        neptune_b_0 = neptune_b_0 + 1.999919d-05*cos(1.50998669505d0 + 74.7815985673d0 * t)
        neptune_b_0 = neptune_b_0 + 0.0001535549d0*cos(2.52123799481d0 + 36.6485629295d0 * t)
        neptune_b_0 = neptune_b_0 + 0.00015448133d0*cos(3.50877080888d0 + 39.6175083461d0 * t)
        neptune_b_0 = neptune_b_0 + 0.00027623609d0*cos(0.0d0 + 0.0d0 * t)
        neptune_b_0 = neptune_b_0 + 0.00027780087d0*cos(5.91271882843d0 + 76.2660712756d0 * t)
        neptune_b_0 = neptune_b_0 + 0.03088622933d0*cos(1.44104372626d0 + 38.1330356378d0 * t)

        neptune_b_1 = neptune_b_1 + 1.36448d-06*cos(0.47764957338d0 + 1.4844727083d0 * t)
        neptune_b_1 = neptune_b_1 + 1.47903d-06*cos(3.85766231348d0 + 74.7815985673d0 * t)
        neptune_b_1 = neptune_b_1 + 1.073298d-05*cos(6.08054240712d0 + 39.6175083461d0 * t)
        neptune_b_1 = neptune_b_1 + 1.385733d-05*cos(4.82555548018d0 + 36.6485629295d0 * t)
        neptune_b_1 = neptune_b_1 + 1.4333d-05*cos(3.14159265359d0 + 0.0d0 * t)
        neptune_b_1 = neptune_b_1 + 1.80312d-05*cos(1.97576485377d0 + 76.2660712756d0 * t)
        neptune_b_1 = neptune_b_1 + 0.00227279214d0*cos(3.8079308987d0 + 38.1330356378d0 * t)
        neptune_b_1=neptune_b_1*t;

        neptune_b_2 = neptune_b_2 + 9.690766d-05*cos(5.57123750291d0 + 38.1330356378d0 * t)
        neptune_b_2=neptune_b_2*t*t;

        neptune_b_3 = neptune_b_3 + 2.73423d-06*cos(1.01688979072d0 + 38.1330356378d0 * t)
        neptune_b_3=neptune_b_3*t*t*t;

        r = neptune_b_3+neptune_b_2+neptune_b_1+neptune_b_0
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
        neptune_l_0 = neptune_l_0 + 1.03054d-06*cos(4.40441222d0 + 70.3281804424d0 * t)
        neptune_l_0 = neptune_l_0 + 1.03305d-06*cos(0.04078966679d0 + 0.2606324309d0 * t)
        neptune_l_0 = neptune_l_0 + 1.093d-06*cos(2.41599378049d0 + 183.2428146475d0 * t)
        neptune_l_0 = neptune_l_0 + 1.18672d-06*cos(3.67706204305d0 + 2.4476805548d0 * t)
        neptune_l_0 = neptune_l_0 + 1.48295d-06*cos(0.85948986145d0 + 111.4301614968d0 * t)
        neptune_l_0 = neptune_l_0 + 1.5018d-06*cos(2.99706110414d0 + 5.9378908332d0 * t)
        neptune_l_0 = neptune_l_0 + 1.51401d-06*cos(2.1915309428d0 + 33.9402499438d0 * t)
        neptune_l_0 = neptune_l_0 + 1.70404d-06*cos(3.3239063065d0 + 108.4612160802d0 * t)
        neptune_l_0 = neptune_l_0 + 2.27079d-06*cos(1.79713054538d0 + 453.424893819d0 * t)
        neptune_l_0 = neptune_l_0 + 2.32887d-06*cos(2.50459795017d0 + 137.0330241624d0 * t)
        neptune_l_0 = neptune_l_0 + 2.44722d-06*cos(1.24693337933d0 + 9.5612275556d0 * t)
        neptune_l_0 = neptune_l_0 + 2.51941d-06*cos(5.78166597292d0 + 388.4651552382d0 * t)
        neptune_l_0 = neptune_l_0 + 2.66605d-06*cos(4.88932609483d0 + 0.9632078465d0 * t)
        neptune_l_0 = neptune_l_0 + 2.8217d-06*cos(2.24565579693d0 + 146.594251718d0 * t)
        neptune_l_0 = neptune_l_0 + 2.87322d-06*cos(4.50523446022d0 + 0.0481841098d0 * t)
        neptune_l_0 = neptune_l_0 + 3.06338d-06*cos(0.49684039897d0 + 0.5212648618d0 * t)
        neptune_l_0 = neptune_l_0 + 3.23004d-06*cos(2.24815188609d0 + 32.1951448046d0 * t)
        neptune_l_0 = neptune_l_0 + 3.40323d-06*cos(3.30369900416d0 + 77.7505439839d0 * t)
        neptune_l_0 = neptune_l_0 + 3.45195d-06*cos(3.46186210169d0 + 41.1019810544d0 * t)
        neptune_l_0 = neptune_l_0 + 3.99552d-06*cos(0.34972342569d0 + 1021.2488945514d0 * t)
        neptune_l_0 = neptune_l_0 + 5.06206d-06*cos(5.74785370252d0 + 114.3991069134d0 * t)
        neptune_l_0 = neptune_l_0 + 7.44996d-06*cos(3.19032530145d0 + 71.8126531507d0 * t)
        neptune_l_0 = neptune_l_0 + 9.0024d-06*cos(2.07606702418d0 + 109.9456887885d0 * t)
        neptune_l_0 = neptune_l_0 + 1.433512d-05*cos(2.78340432711d0 + 74.7815985673d0 * t)
        neptune_l_0 = neptune_l_0 + 2.2848d-05*cos(4.20606932559d0 + 4.4534181249d0 * t)
        neptune_l_0 = neptune_l_0 + 3.364818d-05*cos(1.03590121818d0 + 33.6796175129d0 * t)
        neptune_l_0 = neptune_l_0 + 4.216235d-05*cos(1.98711914364d0 + 73.297125859d0 * t)
        neptune_l_0 = neptune_l_0 + 8.994249d-05*cos(0.27462142569d0 + 175.1660598002d0 * t)
        neptune_l_0 = neptune_l_0 + 9.198582d-05*cos(4.93747059924d0 + 39.6175083461d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00016482741d0*cos(7.729261d-05 + 491.5579294568d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00033784734d0*cos(1.24488865578d0 + 76.2660712756d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00037714589d0*cos(6.09221834946d0 + 35.1640902212d0 * t)
        neptune_l_0 = neptune_l_0 + 0.0004206445d0*cos(5.41054991607d0 + 2.9689454166d0 * t)
        neptune_l_0 = neptune_l_0 + 0.00124531845d0*cos(4.83008090682d0 + 36.6485629295d0 * t)
        neptune_l_0 = neptune_l_0 + 0.01019727662d0*cos(0.4858092366d0 + 1.4844727083d0 * t)
        neptune_l_0 = neptune_l_0 + 0.01798475509d0*cos(2.9010127305d0 + 38.1330356378d0 * t)
        neptune_l_0 = neptune_l_0 + 5.31188633047d0*cos(0.0d0 + 0.0d0 * t)

        neptune_l_1 = neptune_l_1 + 1.05747d-06*cos(2.7547932655d0 + 33.6796175129d0 * t)
        neptune_l_1 = neptune_l_1 + 1.06537d-06*cos(2.45126138334d0 + 4.4534181249d0 * t)
        neptune_l_1 = neptune_l_1 + 1.78623d-06*cos(3.45318524147d0 + 39.6175083461d0 * t)
        neptune_l_1 = neptune_l_1 + 6.04832d-06*cos(1.50477747549d0 + 35.1640902212d0 * t)
        neptune_l_1 = neptune_l_1 + 1.30584d-05*cos(3.67320813491d0 + 2.9689454166d0 * t)
        neptune_l_1 = neptune_l_1 + 3.334701d-05*cos(3.6819967602d0 + 76.2660712756d0 * t)
        neptune_l_1 = neptune_l_1 + 0.00015807148d0*cos(2.27923488532d0 + 38.1330356378d0 * t)
        neptune_l_1 = neptune_l_1 + 0.00016604187d0*cos(4.86319129565d0 + 1.4844727083d0 * t)
        neptune_l_1 = neptune_l_1 + 38.37687716731d0*cos(0.0d0 + 0.0d0 * t)
        neptune_l_1=neptune_l_1*t;

        neptune_l_2 = neptune_l_2 + 2.7019d-06*cos(5.72143228148d0 + 76.2660712756d0 * t)
        neptune_l_2 = neptune_l_2 + 2.81251d-06*cos(1.19084538887d0 + 38.1330356378d0 * t)
        neptune_l_2 = neptune_l_2 + 2.95693d-06*cos(1.85520292248d0 + 1.4844727083d0 * t)
        neptune_l_2 = neptune_l_2 + 0.00053892649d0*cos(0.0d0 + 0.0d0 * t)
        neptune_l_2=neptune_l_2*t*t;

        neptune_l_4 = neptune_l_4 + 1.13998d-06*cos(3.14159265359d0 + 0.0d0 * t)
        neptune_l_4=neptune_l_4*t*t*t*t;

        r = neptune_l_4+neptune_l_2+neptune_l_1+neptune_l_0
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
        neptune_r_0 = neptune_r_0 + 1.07363d-06*cos(3.26457701792d0 + 1059.3819301892d0 * t)
        neptune_r_0 = neptune_r_0 + 1.07888d-06*cos(0.98700578434d0 + 1124.34166877d0 * t)
        neptune_r_0 = neptune_r_0 + 1.09779d-06*cos(5.43147520571d0 + 494.5268748734d0 * t)
        neptune_r_0 = neptune_r_0 + 1.11006d-06*cos(3.34276426767d0 + 180.2738692309d0 * t)
        neptune_r_0 = neptune_r_0 + 1.13473d-06*cos(4.96286007991d0 + 148.0787244263d0 * t)
        neptune_r_0 = neptune_r_0 + 1.14252d-06*cos(0.25039919123d0 + 594.6507036754d0 * t)
        neptune_r_0 = neptune_r_0 + 1.20529d-06*cos(3.08050145518d0 + 184.7272873558d0 * t)
        neptune_r_0 = neptune_r_0 + 1.20939d-06*cos(1.92914010593d0 + 25.6028626656d0 * t)
        neptune_r_0 = neptune_r_0 + 1.22732d-06*cos(5.39399536941d0 + 62.2514255951d0 * t)
        neptune_r_0 = neptune_r_0 + 1.24095d-06*cos(3.1151675034d0 + 221.3758502853d0 * t)
        neptune_r_0 = neptune_r_0 + 1.24693d-06*cos(2.97042405451d0 + 251.4321310758d0 * t)
        neptune_r_0 = neptune_r_0 + 1.28823d-06*cos(3.25521535448d0 + 24.1183899573d0 * t)
        neptune_r_0 = neptune_r_0 + 1.37649d-06*cos(3.34900537767d0 + 0.9632078465d0 * t)
        neptune_r_0 = neptune_r_0 + 1.55323d-06*cos(3.28425127954d0 + 31.019488637d0 * t)
        neptune_r_0 = neptune_r_0 + 1.61011d-06*cos(5.16655038482d0 + 211.8146227297d0 * t)
        neptune_r_0 = neptune_r_0 + 1.62897d-06*cos(2.48946521653d0 + 4.192785694d0 * t)
        neptune_r_0 = neptune_r_0 + 1.63934d-06*cos(2.10166491786d0 + 2.4476805548d0 * t)
        neptune_r_0 = neptune_r_0 + 1.74089d-06*cos(5.55011789988d0 + 567.8240007324d0 * t)
        neptune_r_0 = neptune_r_0 + 1.74413d-06*cos(1.53042999914d0 + 329.8370663655d0 * t)
        neptune_r_0 = neptune_r_0 + 1.77846d-06*cos(4.14773474853d0 + 10175.1525105732d0 * t)
        neptune_r_0 = neptune_r_0 + 1.82469d-06*cos(2.45244890571d0 + 255.0554677982d0 * t)
        neptune_r_0 = neptune_r_0 + 1.93455d-06*cos(1.5842528758d0 + 138.5174968707d0 * t)
        neptune_r_0 = neptune_r_0 + 2.14523d-06*cos(3.6248028304d0 + 278.2588340188d0 * t)
        neptune_r_0 = neptune_r_0 + 2.34479d-06*cos(0.59231043427d0 + 42.5864537627d0 * t)
        neptune_r_0 = neptune_r_0 + 2.39628d-06*cos(3.16441455173d0 + 143.6253063014d0 * t)
        neptune_r_0 = neptune_r_0 + 2.46198d-06*cos(1.01506302015d0 + 141.2258098564d0 * t)
        neptune_r_0 = neptune_r_0 + 2.48152d-06*cos(3.41078346726d0 + 37.611770776d0 * t)
        neptune_r_0 = neptune_r_0 + 2.51356d-06*cos(3.53992782846d0 + 312.1990839626d0 * t)
        neptune_r_0 = neptune_r_0 + 2.67738d-06*cos(5.13323364247d0 + 112.9146342051d0 * t)
        neptune_r_0 = neptune_r_0 + 2.80062d-06*cos(1.54129714238d0 + 98.8999885246d0 * t)
        neptune_r_0 = neptune_r_0 + 2.80556d-06*cos(4.54238271682d0 + 44.7253177768d0 * t)
        neptune_r_0 = neptune_r_0 + 2.91625d-06*cos(4.02398326341d0 + 68.8437077341d0 * t)
        neptune_r_0 = neptune_r_0 + 2.93532d-06*cos(4.89079857814d0 + 528.2064923863d0 * t)
        neptune_r_0 = neptune_r_0 + 3.06d-06*cos(2.72475094464d0 + 6244.9428143536d0 * t)
        neptune_r_0 = neptune_r_0 + 3.07439d-06*cos(0.31964571332d0 + 601.7642506762d0 * t)
        neptune_r_0 = neptune_r_0 + 3.09196d-06*cos(2.85452752153d0 + 72.0732855816d0 * t)
        neptune_r_0 = neptune_r_0 + 3.14499d-06*cos(3.95932948594d0 + 381.3516082374d0 * t)
        neptune_r_0 = neptune_r_0 + 3.21429d-06*cos(1.50625025822d0 + 454.9093665273d0 * t)
        neptune_r_0 = neptune_r_0 + 3.33311d-06*cos(5.75067616021d0 + 39.0962434843d0 * t)
        neptune_r_0 = neptune_r_0 + 3.45094d-06*cos(1.35905860594d0 + 293.188503436d0 * t)
        neptune_r_0 = neptune_r_0 + 3.55389d-06*cos(2.27847846648d0 + 218.4069048687d0 * t)
        neptune_r_0 = neptune_r_0 + 3.82457d-06*cos(3.29965259685d0 + 983.1158589136d0 * t)
        neptune_r_0 = neptune_r_0 + 4.0025d-06*cos(1.25609325435d0 + 8.0767548473d0 * t)
        neptune_r_0 = neptune_r_0 + 4.21011d-06*cos(1.89084929506d0 + 30.7106720963d0 * t)
        neptune_r_0 = neptune_r_0 + 4.22485d-06*cos(5.53186169605d0 + 525.4981794006d0 * t)
        neptune_r_0 = neptune_r_0 + 4.37096d-06*cos(2.27029212923d0 + 1550.939859646d0 * t)
        neptune_r_0 = neptune_r_0 + 5.0204d-06*cos(1.38657803368d0 + 5.9378908332d0 * t)
        neptune_r_0 = neptune_r_0 + 5.30357d-06*cos(4.24059166485d0 + 111.4301614968d0 * t)
        neptune_r_0 = neptune_r_0 + 6.15781d-06*cos(2.97874625677d0 + 106.9767433719d0 * t)
        neptune_r_0 = neptune_r_0 + 7.04778d-06*cos(1.1873821088d0 + 256.5399405065d0 * t)
        neptune_r_0 = neptune_r_0 + 7.31925d-06*cos(2.10447054189d0 + 181.7583419392d0 * t)
        neptune_r_0 = neptune_r_0 + 8.11186d-06*cos(3.0025888087d0 + 46.2097904851d0 * t)
        neptune_r_0 = neptune_r_0 + 8.35414d-06*cos(3.97066884218d0 + 114.3991069134d0 * t)
        neptune_r_0 = neptune_r_0 + 1.12856d-05*cos(5.96661179805d0 + 9.5612275556d0 * t)
        neptune_r_0 = neptune_r_0 + 1.228304d-05*cos(1.59881465324d0 + 77.7505439839d0 * t)
        neptune_r_0 = neptune_r_0 + 1.39886d-05*cos(0.7622031762d0 + 176.6505325085d0 * t)
        neptune_r_0 = neptune_r_0 + 1.403029d-05*cos(4.58914203187d0 + 498.6714764576d0 * t)
        neptune_r_0 = neptune_r_0 + 1.403377d-05*cos(6.07659416908d0 + 173.6815870919d0 * t)
        neptune_r_0 = neptune_r_0 + 1.435072d-05*cos(1.70005157785d0 + 484.444382456d0 * t)
        neptune_r_0 = neptune_r_0 + 1.499193d-05*cos(1.01623299513d0 + 219.891377577d0 * t)
        neptune_r_0 = neptune_r_0 + 1.654039d-05*cos(1.92782545887d0 + 145.1097790097d0 * t)
        neptune_r_0 = neptune_r_0 + 1.905254d-05*cos(1.72186472126d0 + 182.279606801d0 * t)
        neptune_r_0 = neptune_r_0 + 1.976522d-05*cos(5.1170304456d0 + 168.0525127994d0 * t)
        neptune_r_0 = neptune_r_0 + 2.087303d-05*cos(0.61858378281d0 + 33.9402499438d0 * t)
        neptune_r_0 = neptune_r_0 + 2.306293d-05*cos(2.80962935724d0 + 70.3281804424d0 * t)
        neptune_r_0 = neptune_r_0 + 2.523132d-05*cos(0.48630800015d0 + 493.0424021651d0 * t)
        neptune_r_0 = neptune_r_0 + 2.530149d-05*cos(5.79839567009d0 + 490.0734567485d0 * t)
        neptune_r_0 = neptune_r_0 + 2.635535d-05*cos(3.09755943422d0 + 213.299095438d0 * t)
        neptune_r_0 = neptune_r_0 + 2.878942d-05*cos(3.67415901855d0 + 350.3321196004d0 * t)
        neptune_r_0 = neptune_r_0 + 2.881063d-05*cos(1.98600105123d0 + 137.0330241624d0 * t)
        neptune_r_0 = neptune_r_0 + 3.38093d-05*cos(0.84810683275d0 + 183.2428146475d0 * t)
        neptune_r_0 = neptune_r_0 + 4.270202d-05*cos(3.41343865825d0 + 453.424893819d0 * t)
        neptune_r_0 = neptune_r_0 + 4.35379d-05*cos(0.6798566237d0 + 32.1951448046d0 * t)
        neptune_r_0 = neptune_r_0 + 4.420804d-05*cos(1.74993796503d0 + 108.4612160802d0 * t)
        neptune_r_0 = neptune_r_0 + 4.483492d-05*cos(2.90573457534d0 + 529.6909650946d0 * t)
        neptune_r_0 = neptune_r_0 + 4.839672d-05*cos(1.9068599107d0 + 41.1019810544d0 * t)
        neptune_r_0 = neptune_r_0 + 5.720852d-05*cos(2.59059512267d0 + 4.4534181249d0 * t)
        neptune_r_0 = neptune_r_0 + 7.5718d-05*cos(1.07149263431d0 + 388.4651552382d0 * t)
        neptune_r_0 = neptune_r_0 + 8.394731d-05*cos(0.67816895547d0 + 146.594251718d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00012011825d0*cos(1.92062131635d0 + 1021.2488945514d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00014229686d0*cos(1.07786112902d0 + 74.7815985673d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00016939242d0*cos(1.59422166991d0 + 71.8126531507d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00024593778d0*cos(0.50801728204d0 + 109.9456887885d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00046687838d0*cos(5.74937810094d0 + 33.6796175129d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00069791722d0*cos(3.79617226928d0 + 2.9689454166d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00100895397d0*cos(0.37702748681d0 + 73.297125859d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00121801825d0*cos(5.79754444303d0 + 76.2660712756d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00135134095d0*cos(3.37220607384d0 + 39.6175083461d0 * t)
        neptune_r_0 = neptune_r_0 + 0.0027457197d0*cos(1.84552256801d0 + 175.1660598002d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00495725642d0*cos(1.57105654815d0 + 491.5579294568d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00537760613d0*cos(4.52113902845d0 + 35.1640902212d0 * t)
        neptune_r_0 = neptune_r_0 + 0.00807830737d0*cos(5.18592836167d0 + 1.4844727083d0 * t)
        neptune_r_0 = neptune_r_0 + 0.01691764281d0*cos(3.25186138896d0 + 36.6485629295d0 * t)
        neptune_r_0 = neptune_r_0 + 0.2706225949d0*cos(1.3299945893d0 + 38.1330356378d0 * t)
        neptune_r_0 = neptune_r_0 + 30.07013206102d0*cos(0.0d0 + 0.0d0 * t)

        neptune_r_1 = neptune_r_1 + 1.32766d-06*cos(3.60157672619d0 + 9.5612275556d0 * t)
        neptune_r_1 = neptune_r_1 + 1.55438d-06*cos(0.36537064534d0 + 41.1019810544d0 * t)
        neptune_r_1 = neptune_r_1 + 2.03524d-06*cos(2.41820674409d0 + 32.1951448046d0 * t)
        neptune_r_1 = neptune_r_1 + 2.64093d-06*cos(0.86220057976d0 + 4.4534181249d0 * t)
        neptune_r_1 = neptune_r_1 + 2.70526d-06*cos(3.27355867939d0 + 71.8126531507d0 * t)
        neptune_r_1 = neptune_r_1 + 4.9019d-06*cos(3.46830928696d0 + 137.0330241624d0 * t)
        neptune_r_1 = neptune_r_1 + 5.6079d-06*cos(2.88685815667d0 + 498.6714764576d0 * t)
        neptune_r_1 = neptune_r_1 + 5.71622d-06*cos(3.40060785432d0 + 484.444382456d0 * t)
        neptune_r_1 = neptune_r_1 + 6.07183d-06*cos(1.0770650035d0 + 1021.2488945514d0 * t)
        neptune_r_1 = neptune_r_1 + 7.6003d-06*cos(0.02051033644d0 + 182.279606801d0 * t)
        neptune_r_1 = neptune_r_1 + 7.89908d-06*cos(0.5331548458d0 + 168.0525127994d0 * t)
        neptune_r_1 = neptune_r_1 + 8.9765d-06*cos(5.24122933533d0 + 388.4651552382d0 * t)
        neptune_r_1 = neptune_r_1 + 1.135773d-05*cos(3.91891199655d0 + 36.6485629295d0 * t)
        neptune_r_1 = neptune_r_1 + 1.463924d-05*cos(1.18417031047d0 + 33.6796175129d0 * t)
        neptune_r_1 = neptune_r_1 + 1.603165d-05*cos(0.0d0 + 0.0d0 * t)
        neptune_r_1 = neptune_r_1 + 2.15315d-05*cos(5.16873840979d0 + 76.2660712756d0 * t)
        neptune_r_1 = neptune_r_1 + 2.154735d-05*cos(2.09431198086d0 + 2.9689454166d0 * t)
        neptune_r_1 = neptune_r_1 + 2.70174d-05*cos(1.88140666779d0 + 39.6175083461d0 * t)
        neptune_r_1 = neptune_r_1 + 8.621863d-05*cos(6.2162895163d0 + 35.1640902212d0 * t)
        neptune_r_1 = neptune_r_1 + 0.00013220279d0*cos(3.32015499895d0 + 1.4844727083d0 * t)
        neptune_r_1 = neptune_r_1 + 0.00236338502d0*cos(0.70498011235d0 + 38.1330356378d0 * t)
        neptune_r_1=neptune_r_1*t;

        neptune_r_2 = neptune_r_2 + 1.12429d-06*cos(1.19000583596d0 + 498.6714764576d0 * t)
        neptune_r_2 = neptune_r_2 + 1.1794d-06*cos(5.10295026024d0 + 484.444382456d0 * t)
        neptune_r_2 = neptune_r_2 + 1.27141d-06*cos(2.84786298079d0 + 35.1640902212d0 * t)
        neptune_r_2 = neptune_r_2 + 1.56285d-06*cos(4.59414467342d0 + 182.279606801d0 * t)
        neptune_r_2 = neptune_r_2 + 1.63025d-06*cos(2.2387294713d0 + 168.0525127994d0 * t)
        neptune_r_2 = neptune_r_2 + 2.1757d-06*cos(0.3458182908d0 + 1.4844727083d0 * t)
        neptune_r_2 = neptune_r_2 + 4.247412d-05*cos(5.89910679117d0 + 38.1330356378d0 * t)
        neptune_r_2=neptune_r_2*t*t;

        neptune_r_3 = neptune_r_3 + 1.66297d-06*cos(4.55243893489d0 + 38.1330356378d0 * t)
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

        saturn_b_0 = saturn_b_0 + 1.14218d-06*cos(0.96261442133d0 + 210.1177017003d0 * t)
        saturn_b_0 = saturn_b_0 + 1.15524d-06*cos(3.10891547171d0 + 216.4804891757d0 * t)
        saturn_b_0 = saturn_b_0 + 1.21669d-06*cos(3.11537140876d0 + 522.5774180938d0 * t)
        saturn_b_0 = saturn_b_0 + 1.34884d-06*cos(5.24500819605d0 + 742.9900605326d0 * t)
        saturn_b_0 = saturn_b_0 + 1.3914d-06*cos(1.9982199094d0 + 735.8765135318d0 * t)
        saturn_b_0 = saturn_b_0 + 1.3924d-06*cos(4.59535168021d0 + 14.2270940016d0 * t)
        saturn_b_0 = saturn_b_0 + 1.40585d-06*cos(0.64417620299d0 + 490.3340891794d0 * t)
        saturn_b_0 = saturn_b_0 + 1.78958d-06*cos(2.95361514672d0 + 63.7358983034d0 * t)
        saturn_b_0 = saturn_b_0 + 2.07213d-06*cos(0.73021462851d0 + 199.0720014364d0 * t)
        saturn_b_0 = saturn_b_0 + 2.08522d-06*cos(2.12003893769d0 + 415.5524906121d0 * t)
        saturn_b_0 = saturn_b_0 + 2.15354d-06*cos(5.94982610103d0 + 846.0828347512d0 * t)
        saturn_b_0 = saturn_b_0 + 2.36442d-06*cos(2.13887472281d0 + 11.0457002639d0 * t)
        saturn_b_0 = saturn_b_0 + 2.84494d-06*cos(4.88648481625d0 + 224.3447957019d0 * t)
        saturn_b_0 = saturn_b_0 + 3.14225d-06*cos(0.4651027241d0 + 217.2312487011d0 * t)
        saturn_b_0 = saturn_b_0 + 3.16063d-06*cos(1.99716764199d0 + 647.0108333148d0 * t)
        saturn_b_0 = saturn_b_0 + 3.1938d-06*cos(3.6257155098d0 + 209.3669421749d0 * t)
        saturn_b_0 = saturn_b_0 + 3.99675d-06*cos(3.35891413961d0 + 227.5261894396d0 * t)
        saturn_b_0 = saturn_b_0 + 5.52313d-06*cos(5.13149109045d0 + 202.2533951741d0 * t)
        saturn_b_0 = saturn_b_0 + 7.07645d-06*cos(3.80302329547d0 + 323.5054166574d0 * t)
        saturn_b_0 = saturn_b_0 + 9.4205d-06*cos(1.39646678088d0 + 853.196381752d0 * t)
        saturn_b_0 = saturn_b_0 + 9.69071d-06*cos(5.20434966103d0 + 632.7837393132d0 * t)
        saturn_b_0 = saturn_b_0 + 1.060298d-05*cos(5.63099292414d0 + 529.6909650946d0 * t)
        saturn_b_0 = saturn_b_0 + 1.506129d-05*cos(6.01304536144d0 + 103.0927742186d0 * t)
        saturn_b_0 = saturn_b_0 + 3.432125d-05*cos(2.73255752123d0 + 433.7117378768d0 * t)
        saturn_b_0 = saturn_b_0 + 4.788392d-05*cos(4.9651292742d0 + 110.2063212194d0 * t)
        saturn_b_0 = saturn_b_0 + 4.807587d-05*cos(5.43305315602d0 + 316.3918696566d0 * t)
        saturn_b_0 = saturn_b_0 + 6.993564d-05*cos(4.73604689179d0 + 7.1135470008d0 * t)
        saturn_b_0 = saturn_b_0 + 9.916668d-05*cos(5.79003189405d0 + 419.4846438752d0 * t)
        saturn_b_0 = saturn_b_0 + 0.0001473407d0*cos(2.1184659787d0 + 639.897286314d0 * t)
        saturn_b_0 = saturn_b_0 + 0.00030863357d0*cos(3.48441504465d0 + 220.4126424388d0 * t)
        saturn_b_0 = saturn_b_0 + 0.00034116063d0*cos(0.57297307844d0 + 206.1855484372d0 * t)
        saturn_b_0 = saturn_b_0 + 0.00084745939d0*cos(0.0d0 + 0.0d0 * t)
        saturn_b_0 = saturn_b_0 + 0.00240348303d0*cos(2.8523848939d0 + 426.598190876d0 * t)
        saturn_b_0 = saturn_b_0 + 0.0433067804d0*cos(3.60284428399d0 + 213.299095438d0 * t)

        saturn_b_1 = saturn_b_1 + 1.09839d-06*cos(2.45695551627d0 + 217.2312487011d0 * t)
        saturn_b_1 = saturn_b_1 + 1.27731d-06*cos(1.20711452525d0 + 529.6909650946d0 * t)
        saturn_b_1 = saturn_b_1 + 1.5822d-06*cos(5.20850125766d0 + 110.2063212194d0 * t)
        saturn_b_1 = saturn_b_1 + 1.66237d-06*cos(2.44351613165d0 + 199.0720014364d0 * t)
        saturn_b_1 = saturn_b_1 + 1.72359d-06*cos(0.05215146556d0 + 647.0108333148d0 * t)
        saturn_b_1 = saturn_b_1 + 2.7509d-06*cos(3.88864137336d0 + 103.0927742186d0 * t)
        saturn_b_1 = saturn_b_1 + 2.84386d-06*cos(1.61881754773d0 + 227.5261894396d0 * t)
        saturn_b_1 = saturn_b_1 + 2.92185d-06*cos(5.3157425127d0 + 853.196381752d0 * t)
        saturn_b_1 = saturn_b_1 + 2.97726d-06*cos(0.91909206723d0 + 632.7837393132d0 * t)
        saturn_b_1 = saturn_b_1 + 8.5263d-06*cos(0.43572078997d0 + 316.3918696566d0 * t)
        saturn_b_1 = saturn_b_1 + 1.290595d-05*cos(2.9177085709d0 + 7.1135470008d0 * t)
        saturn_b_1 = saturn_b_1 + 1.455309d-05*cos(0.85161616532d0 + 433.7117378768d0 * t)
        saturn_b_1 = saturn_b_1 + 2.716647d-05*cos(5.91166664787d0 + 639.897286314d0 * t)
        saturn_b_1 = saturn_b_1 + 3.757161d-05*cos(1.25429514018d0 + 419.4846438752d0 * t)
        saturn_b_1 = saturn_b_1 + 9.643981d-05*cos(1.6967466012d0 + 220.4126424388d0 * t)
        saturn_b_1 = saturn_b_1 + 0.00014800587d0*cos(2.3058606052d0 + 206.1855484372d0 * t)
        saturn_b_1 = saturn_b_1 + 0.00018571607d0*cos(6.09919206378d0 + 426.598190876d0 * t)
        saturn_b_1 = saturn_b_1 + 0.00049478641d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_b_1 = saturn_b_1 + 0.00397554998d0*cos(5.33289992556d0 + 213.299095438d0 * t)
        saturn_b_1=saturn_b_1*t;

        saturn_b_2 = saturn_b_2 + 1.0398d-06*cos(6.15730992966d0 + 227.5261894396d0 * t)
        saturn_b_2 = saturn_b_2 + 1.39393d-06*cos(1.04272623499d0 + 7.1135470008d0 * t)
        saturn_b_2 = saturn_b_2 + 2.19335d-06*cos(3.82841533795d0 + 639.897286314d0 * t)
        saturn_b_2 = saturn_b_2 + 3.29632d-06*cos(5.27899210039d0 + 433.7117378768d0 * t)
        saturn_b_2 = saturn_b_2 + 3.65042d-06*cos(5.09928680706d0 + 426.598190876d0 * t)
        saturn_b_2 = saturn_b_2 + 7.05842d-06*cos(3.03914308836d0 + 419.4846438752d0 * t)
        saturn_b_2 = saturn_b_2 + 1.346067d-05*cos(0.0d0 + 0.0d0 * t)
        saturn_b_2 = saturn_b_2 + 1.627158d-05*cos(6.181899395d0 + 220.4126424388d0 * t)
        saturn_b_2 = saturn_b_2 + 3.719555d-05*cos(3.99833475829d0 + 206.1855484372d0 * t)
        saturn_b_2 = saturn_b_2 + 0.00020629977d0*cos(0.50482422817d0 + 213.299095438d0 * t)
        saturn_b_2=saturn_b_2*t*t;

        saturn_b_3 = saturn_b_3 + 1.87838d-06*cos(4.33779804809d0 + 220.4126424388d0 * t)
        saturn_b_3 = saturn_b_3 + 3.98051d-06*cos(0.0d0 + 0.0d0 * t)
        saturn_b_3 = saturn_b_3 + 6.3235d-06*cos(5.69778316807d0 + 206.1855484372d0 * t)
        saturn_b_3 = saturn_b_3 + 6.66252d-06*cos(1.99006340181d0 + 213.299095438d0 * t)
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

        saturn_l_0 = saturn_l_0 + 1.00631d-06*cos(4.96513666539d0 + 269.9214467406d0 * t)
        saturn_l_0 = saturn_l_0 + 1.02702d-06*cos(1.19748124058d0 + 1685.0521225016d0 * t)
        saturn_l_0 = saturn_l_0 + 1.03956d-06*cos(2.19210363069d0 + 88.865680217d0 * t)
        saturn_l_0 = saturn_l_0 + 1.0657d-06*cos(4.01156608514d0 + 956.2891559706d0 * t)
        saturn_l_0 = saturn_l_0 + 1.09275d-06*cos(3.43812715686d0 + 536.8045120954d0 * t)
        saturn_l_0 = saturn_l_0 + 1.10399d-06*cos(0.1660402409d0 + 1.4844727083d0 * t)
        saturn_l_0 = saturn_l_0 + 1.12437d-06*cos(1.10502663534d0 + 191.2076949102d0 * t)
        saturn_l_0 = saturn_l_0 + 1.13747d-06*cos(5.59427544714d0 + 1059.3819301892d0 * t)
        saturn_l_0 = saturn_l_0 + 1.17283d-06*cos(2.67920400584d0 + 1155.361157407d0 * t)
        saturn_l_0 = saturn_l_0 + 1.18156d-06*cos(5.340729339d0 + 554.0699874828d0 * t)
        saturn_l_0 = saturn_l_0 + 1.22373d-06*cos(1.97588777199d0 + 4.665866446d0 * t)
        saturn_l_0 = saturn_l_0 + 1.24969d-06*cos(6.27737805832d0 + 1898.3512179396d0 * t)
        saturn_l_0 = saturn_l_0 + 1.31283d-06*cos(4.06828961903d0 + 10.2949407385d0 * t)
        saturn_l_0 = saturn_l_0 + 1.39666d-06*cos(4.29450260069d0 + 21.3406410024d0 * t)
        saturn_l_0 = saturn_l_0 + 1.46068d-06*cos(6.23102544071d0 + 195.1398481733d0 * t)
        saturn_l_0 = saturn_l_0 + 1.47526d-06*cos(1.53529320509d0 + 5.6290742925d0 * t)
        saturn_l_0 = saturn_l_0 + 1.49299d-06*cos(5.73594349789d0 + 52.6901980395d0 * t)
        saturn_l_0 = saturn_l_0 + 1.64541d-06*cos(0.4400551752d0 + 5.4166259714d0 * t)
        saturn_l_0 = saturn_l_0 + 1.73914d-06*cos(1.86305806814d0 + 0.7507595254d0 * t)
        saturn_l_0 = saturn_l_0 + 1.82454d-06*cos(5.49122292426d0 + 2.9207613068d0 * t)
        saturn_l_0 = saturn_l_0 + 1.83511d-06*cos(0.97254952728d0 + 4.192785694d0 * t)
        saturn_l_0 = saturn_l_0 + 1.8469d-06*cos(3.50344404958d0 + 149.5631971346d0 * t)
        saturn_l_0 = saturn_l_0 + 2.045d-06*cos(6.010822066d0 + 265.9892934775d0 * t)
        saturn_l_0 = saturn_l_0 + 2.07659d-06*cos(1.283022189d0 + 39.3568759152d0 * t)
        saturn_l_0 = saturn_l_0 + 2.07663d-06*cos(0.48349820488d0 + 1162.4747044078d0 * t)
        saturn_l_0 = saturn_l_0 + 2.08655d-06*cos(1.34516255304d0 + 625.6701923124d0 * t)
        saturn_l_0 = saturn_l_0 + 2.20225d-06*cos(4.20422424873d0 + 200.7689224658d0 * t)
        saturn_l_0 = saturn_l_0 + 2.26609d-06*cos(4.91003163138d0 + 12.5301729722d0 * t)
        saturn_l_0 = saturn_l_0 + 2.49116d-06*cos(1.47010534421d0 + 1368.660252845d0 * t)
        saturn_l_0 = saturn_l_0 + 2.77775d-06*cos(0.40020408926d0 + 211.8146227297d0 * t)
        saturn_l_0 = saturn_l_0 + 2.86688d-06*cos(2.37043745859d0 + 351.8165923087d0 * t)
        saturn_l_0 = saturn_l_0 + 3.09001d-06*cos(3.49486734909d0 + 216.4804891757d0 * t)
        saturn_l_0 = saturn_l_0 + 3.21543d-06*cos(2.57182354537d0 + 647.0108333148d0 * t)
        saturn_l_0 = saturn_l_0 + 3.22185d-06*cos(0.96137456104d0 + 203.7378678824d0 * t)
        saturn_l_0 = saturn_l_0 + 3.30196d-06*cos(0.24715617844d0 + 1581.959348283d0 * t)
        saturn_l_0 = saturn_l_0 + 3.43475d-06*cos(0.24604039134d0 + 0.5212648618d0 * t)
        saturn_l_0 = saturn_l_0 + 3.47413d-06*cos(1.53928227764d0 + 340.7708920448d0 * t)
        saturn_l_0 = saturn_l_0 + 3.54944d-06*cos(3.0128648303d0 + 838.9692877504d0 * t)
        saturn_l_0 = saturn_l_0 + 3.72308d-06*cos(2.27819108625d0 + 217.2312487011d0 * t)
        saturn_l_0 = saturn_l_0 + 4.48542d-06*cos(1.28990416161d0 + 127.4717966068d0 * t)
        saturn_l_0 = saturn_l_0 + 4.51827d-06*cos(1.04436664241d0 + 490.3340891794d0 * t)
        saturn_l_0 = saturn_l_0 + 4.74279d-06*cos(5.47527185987d0 + 742.9900605326d0 * t)
        saturn_l_0 = saturn_l_0 + 4.78054d-06*cos(2.96488054338d0 + 137.0330241624d0 * t)
        saturn_l_0 = saturn_l_0 + 5.29861d-06*cos(4.44938897119d0 + 117.3198682202d0 * t)
        saturn_l_0 = saturn_l_0 + 5.42643d-06*cos(1.51824320514d0 + 9.5612275556d0 * t)
        saturn_l_0 = saturn_l_0 + 5.46358d-06*cos(2.12678554211d0 + 350.3321196004d0 * t)
        saturn_l_0 = saturn_l_0 + 5.79857d-06*cos(3.09259007048d0 + 74.7815985673d0 * t)
        saturn_l_0 = saturn_l_0 + 6.24904d-06*cos(0.97046831256d0 + 210.1177017003d0 * t)
        saturn_l_0 = saturn_l_0 + 6.3398d-06*cos(2.29889903023d0 + 412.3710968744d0 * t)
        saturn_l_0 = saturn_l_0 + 6.5447d-06*cos(1.59889331515d0 + 0.0481841098d0 * t)
        saturn_l_0 = saturn_l_0 + 6.86965d-06*cos(1.74714407827d0 + 1052.2683831884d0 * t)
        saturn_l_0 = saturn_l_0 + 7.43584d-06*cos(5.25276954625d0 + 224.3447957019d0 * t)
        saturn_l_0 = saturn_l_0 + 7.48811d-06*cos(2.14398149298d0 + 853.196381752d0 * t)
        saturn_l_0 = saturn_l_0 + 7.89205d-06*cos(5.00745123149d0 + 0.9632078465d0 * t)
        saturn_l_0 = saturn_l_0 + 8.48643d-06*cos(3.19149825839d0 + 209.3669421749d0 * t)
        saturn_l_0 = saturn_l_0 + 8.52677d-06*cos(3.42141350697d0 + 175.1660598002d0 * t)
        saturn_l_0 = saturn_l_0 + 9.56752d-06*cos(0.50740889886d0 + 1265.5674786264d0 * t)
        saturn_l_0 = saturn_l_0 + 1.017258d-05*cos(3.71698151814d0 + 227.5261894396d0 * t)
        saturn_l_0 = saturn_l_0 + 1.087237d-05*cos(4.18343232481d0 + 2.4476805548d0 * t)
        saturn_l_0 = saturn_l_0 + 1.123515d-05*cos(2.83726793572d0 + 415.5524906121d0 * t)
        saturn_l_0 = saturn_l_0 + 1.391336d-05*cos(4.02331978116d0 + 323.5054166574d0 * t)
        saturn_l_0 = saturn_l_0 + 1.580641d-05*cos(4.3726631412d0 + 309.2783226558d0 * t)
        saturn_l_0 = saturn_l_0 + 1.640183d-05*cos(5.50504966218d0 + 846.0828347512d0 * t)
        saturn_l_0 = saturn_l_0 + 1.758143d-05*cos(3.26580514774d0 + 522.5774180938d0 * t)
        saturn_l_0 = saturn_l_0 + 2.461172d-05*cos(2.03163631205d0 + 735.8765135318d0 * t)
        saturn_l_0 = saturn_l_0 + 2.953815d-05*cos(0.98280385206d0 + 95.9792272178d0 * t)
        saturn_l_0 = saturn_l_0 + 3.26949d-05*cos(0.77491895787d0 + 949.1756089698d0 * t)
        saturn_l_0 = saturn_l_0 + 3.873696d-05*cos(3.22282692566d0 + 138.5174968707d0 * t)
        saturn_l_0 = saturn_l_0 + 4.005862d-05*cos(2.24479893937d0 + 63.7358983034d0 * t)
        saturn_l_0 = saturn_l_0 + 4.592541d-05*cos(0.61976424374d0 + 199.0720014364d0 * t)
        saturn_l_0 = saturn_l_0 + 5.019658d-05*cos(3.17787919533d0 + 433.7117378768d0 * t)
        saturn_l_0 = saturn_l_0 + 5.227771d-05*cos(4.2078316238d0 + 3.1813937377d0 * t)
        saturn_l_0 = saturn_l_0 + 5.863207d-05*cos(0.23657028777d0 + 529.6909650946d0 * t)
        saturn_l_0 = saturn_l_0 + 6.126308d-05*cos(1.76328499656d0 + 277.0349937414d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00010725066d0*cos(3.12939596466d0 + 202.2533951741d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00013005305d0*cos(5.98119067061d0 + 11.0457002639d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00013160308d0*cos(4.44891180176d0 + 14.2270940016d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00014609562d0*cos(1.56518573691d0 + 3.9321532631d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00014906995d0*cos(5.76903283845d0 + 316.3918696566d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00015053509d0*cos(2.71670027883d0 + 639.897286314d0 * t)
        saturn_l_0 = saturn_l_0 + 0.000158203d0*cos(0.9380895376d0 + 632.7837393132d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00016573583d0*cos(0.43719123541d0 + 419.4846438752d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00023990338d0*cos(4.6697693486d0 + 110.2063212194d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00079271288d0*cos(3.8400707853d0 + 220.4126424388d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00206816296d0*cos(0.24658366938d0 + 103.0927742186d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00350769223d0*cos(3.30329903015d0 + 426.598190876d0 * t)
        saturn_l_0 = saturn_l_0 + 0.00398379386d0*cos(0.52112025957d0 + 206.1855484372d0 * t)
        saturn_l_0 = saturn_l_0 + 0.01414150958d0*cos(4.58581515873d0 + 7.1135470008d0 * t)
        saturn_l_0 = saturn_l_0 + 0.1110765978d0*cos(3.96205090194d0 + 213.299095438d0 * t)
        saturn_l_0 = saturn_l_0 + 0.87401354029d0*cos(0.0d0 + 0.0d0 * t)

        saturn_l_1 = saturn_l_1 + 1.08862d-06*cos(6.16141072262d0 + 415.5524906121d0 * t)
        saturn_l_1 = saturn_l_1 + 1.27838d-06*cos(4.09533471247d0 + 217.2312487011d0 * t)
        saturn_l_1 = saturn_l_1 + 1.31364d-06*cos(3.44108355646d0 + 742.9900605326d0 * t)
        saturn_l_1 = saturn_l_1 + 1.36328d-06*cos(2.28580246629d0 + 10.2949407385d0 * t)
        saturn_l_1 = saturn_l_1 + 1.67131d-06*cos(2.59745202658d0 + 21.3406410024d0 * t)
        saturn_l_1 = saturn_l_1 + 1.72891d-06*cos(4.07695221044d0 + 846.0828347512d0 * t)
        saturn_l_1 = saturn_l_1 + 1.91667d-06*cos(2.96512946582d0 + 224.3447957019d0 * t)
        saturn_l_1 = saturn_l_1 + 2.30493d-06*cos(1.64428879621d0 + 216.4804891757d0 * t)
        saturn_l_1 = saturn_l_1 + 2.65801d-06*cos(0.54344631312d0 + 647.0108333148d0 * t)
        saturn_l_1 = saturn_l_1 + 2.80911d-06*cos(5.74398845416d0 + 2.4476805548d0 * t)
        saturn_l_1 = saturn_l_1 + 2.89429d-06*cos(2.73263080235d0 + 117.3198682202d0 * t)
        saturn_l_1 = saturn_l_1 + 3.31933d-06*cos(2.86077699882d0 + 210.1177017003d0 * t)
        saturn_l_1 = saturn_l_1 + 3.35936d-06*cos(3.77173072712d0 + 735.8765135318d0 * t)
        saturn_l_1 = saturn_l_1 + 3.39724d-06*cos(3.63396398752d0 + 316.3918696566d0 * t)
        saturn_l_1 = saturn_l_1 + 3.43826d-06*cos(3.95854178574d0 + 412.3710968744d0 * t)
        saturn_l_1 = saturn_l_1 + 3.52489d-06*cos(2.31707079463d0 + 632.7837393132d0 * t)
        saturn_l_1 = saturn_l_1 + 4.0763d-06*cos(1.29949556676d0 + 209.3669421749d0 * t)
        saturn_l_1 = saturn_l_1 + 4.1701d-06*cos(2.11708169277d0 + 323.5054166574d0 * t)
        saturn_l_1 = saturn_l_1 + 4.68377d-06*cos(4.61707843907d0 + 63.7358983034d0 * t)
        saturn_l_1 = saturn_l_1 + 4.78501d-06*cos(4.98776987984d0 + 522.5774180938d0 * t)
        saturn_l_1 = saturn_l_1 + 4.86843d-06*cos(6.03998200305d0 + 853.196381752d0 * t)
        saturn_l_1 = saturn_l_1 + 6.27603d-06*cos(6.11088227167d0 + 309.2783226558d0 * t)
        saturn_l_1 = saturn_l_1 + 6.49654d-06*cos(6.17418093659d0 + 202.2533951741d0 * t)
        saturn_l_1 = saturn_l_1 + 7.05587d-06*cos(4.4168924933d0 + 529.6909650946d0 * t)
        saturn_l_1 = saturn_l_1 + 9.21683d-06*cos(1.9608983425d0 + 227.5261894396d0 * t)
        saturn_l_1 = saturn_l_1 + 1.249348d-05*cos(2.62803737519d0 + 95.9792272178d0 * t)
        saturn_l_1 = saturn_l_1 + 1.953036d-05*cos(3.563946833d0 + 11.0457002639d0 * t)
        saturn_l_1 = saturn_l_1 + 3.071382d-05*cos(2.3273931775d0 + 199.0720014364d0 * t)
        saturn_l_1 = saturn_l_1 + 3.3022d-05*cos(1.26256486715d0 + 433.7117378768d0 * t)
        saturn_l_1 = saturn_l_1 + 3.384684d-05*cos(2.41694251653d0 + 3.1813937377d0 * t)
        saturn_l_1 = saturn_l_1 + 3.76863d-05*cos(3.6496563146d0 + 3.9321532631d0 * t)
        saturn_l_1 = saturn_l_1 + 4.056325d-05*cos(2.92166618776d0 + 110.2063212194d0 * t)
        saturn_l_1 = saturn_l_1 + 4.803325d-05*cos(2.44194097666d0 + 419.4846438752d0 * t)
        saturn_l_1 = saturn_l_1 + 6.939233d-05*cos(0.40493079985d0 + 639.897286314d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00010511706d0*cos(2.748803928d0 + 14.2270940016d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00019941734d0*cos(1.27954662736d0 + 103.0927742186d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00040254586d0*cos(2.0412825709d0 + 220.4126424388d0 * t)
        saturn_l_1 = saturn_l_1 + 0.0009832303d0*cos(1.08070061328d0 + 426.598190876d0 * t)
        saturn_l_1 = saturn_l_1 + 0.0010767877d0*cos(2.27769911872d0 + 206.1855484372d0 * t)
        saturn_l_1 = saturn_l_1 + 0.00564347566d0*cos(2.88500136429d0 + 7.1135470008d0 * t)
        saturn_l_1 = saturn_l_1 + 0.01296855005d0*cos(1.82820544701d0 + 213.299095438d0 * t)
        saturn_l_1 = saturn_l_1 + 213.54295595986d0*cos(0.0d0 + 0.0d0 * t)
        saturn_l_1=saturn_l_1*t;

        saturn_l_2 = saturn_l_2 + 1.00967d-06*cos(0.892704931d0 + 21.3406410024d0 * t)
        saturn_l_2 = saturn_l_2 + 1.05415d-06*cos(4.90003203599d0 + 647.0108333148d0 * t)
        saturn_l_2 = saturn_l_2 + 1.17008d-06*cos(3.88120915956d0 + 853.196381752d0 * t)
        saturn_l_2 = saturn_l_2 + 1.29494d-06*cos(1.5658688417d0 + 309.2783226558d0 * t)
        saturn_l_2 = saturn_l_2 + 1.61571d-06*cos(1.3813914942d0 + 11.0457002639d0 * t)
        saturn_l_2 = saturn_l_2 + 2.73739d-06*cos(4.28841011784d0 + 95.9792272178d0 * t)
        saturn_l_2 = saturn_l_2 + 4.251d-06*cos(0.20935499279d0 + 227.5261894396d0 * t)
        saturn_l_2 = saturn_l_2 + 4.56914d-06*cos(1.26840971349d0 + 110.2063212194d0 * t)
        saturn_l_2 = saturn_l_2 + 5.49329d-06*cos(5.57303134242d0 + 3.9321532631d0 * t)
        saturn_l_2 = saturn_l_2 + 6.33582d-06*cos(4.38825410036d0 + 419.4846438752d0 * t)
        saturn_l_2 = saturn_l_2 + 1.020079d-05*cos(0.63369182642d0 + 3.1813937377d0 * t)
        saturn_l_2 = saturn_l_2 + 1.044754d-05*cos(4.04206453611d0 + 199.0720014364d0 * t)
        saturn_l_2 = saturn_l_2 + 1.081967d-05*cos(5.6913035167d0 + 433.7117378768d0 * t)
        saturn_l_2 = saturn_l_2 + 1.164684d-05*cos(4.60942128971d0 + 639.897286314d0 * t)
        saturn_l_2 = saturn_l_2 + 1.215527d-05*cos(2.91860042123d0 + 103.0927742186d0 * t)
        saturn_l_2 = saturn_l_2 + 4.265368d-05*cos(1.0459555663d0 + 14.2270940016d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00010604979d0*cos(5.40963595885d0 + 426.598190876d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00010631396d0*cos(0.25778277414d0 + 220.4126424388d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00015276909d0*cos(4.06492007503d0 + 206.1855484372d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00090592251d0*cos(0.0d0 + 0.0d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00091920844d0*cos(0.07425261094d0 + 213.299095438d0 * t)
        saturn_l_2 = saturn_l_2 + 0.00116441181d0*cos(1.17987850633d0 + 7.1135470008d0 * t)
        saturn_l_2=saturn_l_2*t*t;

        saturn_l_3 = saturn_l_3 + 1.31409d-06*cos(4.74327544615d0 + 227.5261894396d0 * t)
        saturn_l_3 = saturn_l_3 + 1.51352d-06*cos(2.73594641861d0 + 639.897286314d0 * t)
        saturn_l_3 = saturn_l_3 + 1.65641d-06*cos(5.11641150216d0 + 3.1813937377d0 * t)
        saturn_l_3 = saturn_l_3 + 2.36975d-06*cos(5.76826451465d0 + 199.0720014364d0 * t)
        saturn_l_3 = saturn_l_3 + 2.39377d-06*cos(3.86088273439d0 + 433.7117378768d0 * t)
        saturn_l_3 = saturn_l_3 + 1.066581d-05*cos(3.60816533142d0 + 426.598190876d0 * t)
        saturn_l_3 = saturn_l_3 + 1.162041d-05*cos(5.61973132428d0 + 14.2270940016d0 * t)
        saturn_l_3 = saturn_l_3 + 1.465687d-05*cos(5.91326678323d0 + 206.1855484372d0 * t)
        saturn_l_3 = saturn_l_3 + 1.906524d-05*cos(4.76082050205d0 + 220.4126424388d0 * t)
        saturn_l_3 = saturn_l_3 + 4.249793d-05*cos(4.58539675603d0 + 213.299095438d0 * t)
        saturn_l_3 = saturn_l_3 + 0.00016038734d0*cos(5.73945377424d0 + 7.1135470008d0 * t)
        saturn_l_3=saturn_l_3*t*t*t;

        saturn_l_4 = saturn_l_4 + 1.09598d-06*cos(1.51515739251d0 + 206.1855484372d0 * t)
        saturn_l_4 = saturn_l_4 + 1.13953d-06*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_l_4 = saturn_l_4 + 1.49418d-06*cos(2.74110824208d0 + 213.299095438d0 * t)
        saturn_l_4 = saturn_l_4 + 2.36344d-06*cos(3.90241428075d0 + 14.2270940016d0 * t)
        saturn_l_4 = saturn_l_4 + 2.57107d-06*cos(2.98436499013d0 + 220.4126424388d0 * t)
        saturn_l_4 = saturn_l_4 + 1.661894d-05*cos(3.99826248978d0 + 7.1135470008d0 * t)
        saturn_l_4=saturn_l_4*t*t*t*t;

        saturn_l_5 = saturn_l_5 + 1.23615d-06*cos(2.25923345732d0 + 7.1135470008d0 * t)
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

        saturn_r_0 = saturn_r_0 + 1.04427d-06*cos(3.63671899047d0 + 65.2203710117d0 * t)
        saturn_r_0 = saturn_r_0 + 1.07447d-06*cos(3.67064138701d0 + 212.7778305762d0 * t)
        saturn_r_0 = saturn_r_0 + 1.08642d-06*cos(2.85492389024d0 + 21.3406410024d0 * t)
        saturn_r_0 = saturn_r_0 + 1.08747d-06*cos(2.09282278191d0 + 207.6700211455d0 * t)
        saturn_r_0 = saturn_r_0 + 1.09097d-06*cos(1.63231061493d0 + 208.633228992d0 * t)
        saturn_r_0 = saturn_r_0 + 1.10191d-06*cos(2.43656081234d0 + 355.7487455718d0 * t)
        saturn_r_0 = saturn_r_0 + 1.12238d-06*cos(0.26221759151d0 + 2104.5367663768d0 * t)
        saturn_r_0 = saturn_r_0 + 1.12532d-06*cos(5.03109281265d0 + 703.6331846174d0 * t)
        saturn_r_0 = saturn_r_0 + 1.20093d-06*cos(0.04329750542d0 + 1361.5467058442d0 * t)
        saturn_r_0 = saturn_r_0 + 1.25186d-06*cos(4.78354048063d0 + 205.2223405907d0 * t)
        saturn_r_0 = saturn_r_0 + 1.28877d-06*cos(2.55338644107d0 + 414.0680179038d0 * t)
        saturn_r_0 = saturn_r_0 + 1.32106d-06*cos(2.85902597898d0 + 312.4597163935d0 * t)
        saturn_r_0 = saturn_r_0 + 1.37491d-06*cos(5.43912787991d0 + 222.8603229936d0 * t)
        saturn_r_0 = saturn_r_0 + 1.43441d-06*cos(0.9981735772d0 + 76.2660712756d0 * t)
        saturn_r_0 = saturn_r_0 + 1.45127d-06*cos(5.08176368814d0 + 423.4167971383d0 * t)
        saturn_r_0 = saturn_r_0 + 1.45727d-06*cos(1.56565192483d0 + 831.8557407496d0 * t)
        saturn_r_0 = saturn_r_0 + 1.50077d-06*cos(4.40663921925d0 + 417.0369633204d0 * t)
        saturn_r_0 = saturn_r_0 + 1.62305d-06*cos(5.73050678664d0 + 203.0041546995d0 * t)
        saturn_r_0 = saturn_r_0 + 1.6325d-06*cos(3.4583251728d0 + 617.8058857862d0 * t)
        saturn_r_0 = saturn_r_0 + 1.65478d-06*cos(2.89132196119d0 + 214.2623032845d0 * t)
        saturn_r_0 = saturn_r_0 + 1.65707d-06*cos(2.63679789706d0 + 215.7467759928d0 * t)
        saturn_r_0 = saturn_r_0 + 1.69865d-06*cos(2.8566755401d0 + 99.1606209555d0 * t)
        saturn_r_0 = saturn_r_0 + 1.71915d-06*cos(5.56318632797d0 + 213.3472795478d0 * t)
        saturn_r_0 = saturn_r_0 + 1.7201d-06*cos(2.36537801012d0 + 213.2509113282d0 * t)
        saturn_r_0 = saturn_r_0 + 1.72824d-06*cos(1.8492099409d0 + 1589.0728952838d0 * t)
        saturn_r_0 = saturn_r_0 + 1.75108d-06*cos(5.71404465044d0 + 1066.49547719d0 * t)
        saturn_r_0 = saturn_r_0 + 1.76864d-06*cos(2.30323752987d0 + 9999.986450773d0 * t)
        saturn_r_0 = saturn_r_0 + 1.77585d-06*cos(0.38155817719d0 + 430.5303441391d0 * t)
        saturn_r_0 = saturn_r_0 + 1.79673d-06*cos(4.41045924362d0 + 408.4389436113d0 * t)
        saturn_r_0 = saturn_r_0 + 1.83041d-06*cos(5.66851947172d0 + 2111.6503133776d0 * t)
        saturn_r_0 = saturn_r_0 + 1.86835d-06*cos(6.03591766061d0 + 404.5067903482d0 * t)
        saturn_r_0 = saturn_r_0 + 1.87935d-06*cos(6.07916265661d0 + 563.6312150384d0 * t)
        saturn_r_0 = saturn_r_0 + 1.91514d-06*cos(2.95906900704d0 + 437.6438911399d0 * t)
        saturn_r_0 = saturn_r_0 + 1.97093d-06*cos(3.9014194285d0 + 52.6901980395d0 * t)
        saturn_r_0 = saturn_r_0 + 2.05571d-06*cos(0.95755250527d0 + 288.0806940053d0 * t)
        saturn_r_0 = saturn_r_0 + 2.07567d-06*cos(5.38126259725d0 + 2317.8358618148d0 * t)
        saturn_r_0 = saturn_r_0 + 2.14398d-06*cos(4.20253525974d0 + 2531.1349572528d0 * t)
        saturn_r_0 = saturn_r_0 + 2.18536d-06*cos(5.25607043545d0 + 212.3358875915d0 * t)
        saturn_r_0 = saturn_r_0 + 2.22155d-06*cos(5.94588016768d0 + 39.3568759152d0 * t)
        saturn_r_0 = saturn_r_0 + 2.23729d-06*cos(2.28129446763d0 + 330.6189636582d0 * t)
        saturn_r_0 = saturn_r_0 + 2.24592d-06*cos(0.54754005675d0 + 1788.1448967202d0 * t)
        saturn_r_0 = saturn_r_0 + 2.26121d-06*cos(0.37495223398d0 + 142.4496501338d0 * t)
        saturn_r_0 = saturn_r_0 + 2.30892d-06*cos(5.49463421262d0 + 191.9584544356d0 * t)
        saturn_r_0 = saturn_r_0 + 2.34018d-06*cos(4.22756813216d0 + 114.1384744825d0 * t)
        saturn_r_0 = saturn_r_0 + 2.36639d-06*cos(0.90802744873d0 + 1375.7737998458d0 * t)
        saturn_r_0 = saturn_r_0 + 2.4144d-06*cos(1.1252586811d0 + 388.4651552382d0 * t)
        saturn_r_0 = saturn_r_0 + 2.42911d-06*cos(5.37187983246d0 + 1258.4539316256d0 * t)
        saturn_r_0 = saturn_r_0 + 2.6249d-06*cos(0.31753439818d0 + 1045.1548361876d0 * t)
        saturn_r_0 = saturn_r_0 + 2.75814d-06*cos(0.47832439352d0 + 38.1330356378d0 * t)
        saturn_r_0 = saturn_r_0 + 2.77257d-06*cos(5.31917702012d0 + 692.5874843535d0 * t)
        saturn_r_0 = saturn_r_0 + 2.88298d-06*cos(1.12160250272d0 + 422.6660376129d0 * t)
        saturn_r_0 = saturn_r_0 + 2.92103d-06*cos(6.2142061192d0 + 210.8514148832d0 * t)
        saturn_r_0 = saturn_r_0 + 2.94444d-06*cos(0.42577061903d0 + 312.1990839626d0 * t)
        saturn_r_0 = saturn_r_0 + 2.95331d-06*cos(0.67144493789d0 + 88.865680217d0 * t)
        saturn_r_0 = saturn_r_0 + 3.033d-06*cos(0.87946670205d0 + 6069.7767545534d0 * t)
        saturn_r_0 = saturn_r_0 + 3.39763d-06*cos(1.40198657693d0 + 440.8252848776d0 * t)
        saturn_r_0 = saturn_r_0 + 3.40627d-06*cos(0.89091104306d0 + 628.8515860501d0 * t)
        saturn_r_0 = saturn_r_0 + 3.41117d-06*cos(2.3758524725d0 + 525.4981794006d0 * t)
        saturn_r_0 = saturn_r_0 + 3.42968d-06*cos(5.85600322299d0 + 1795.258443721d0 * t)
        saturn_r_0 = saturn_r_0 + 3.85974d-06*cos(1.99700402508d0 + 1272.6810256272d0 * t)
        saturn_r_0 = saturn_r_0 + 4.05434d-06*cos(1.64001413521d0 + 536.8045120954d0 * t)
        saturn_r_0 = saturn_r_0 + 4.27459d-06*cos(0.05741344372d0 + 284.1485407422d0 * t)
        saturn_r_0 = saturn_r_0 + 4.51817d-06*cos(5.64468459871d0 + 2001.4439921582d0 * t)
        saturn_r_0 = saturn_r_0 + 4.52848d-06*cos(3.00349117198d0 + 302.164775655d0 * t)
        saturn_r_0 = saturn_r_0 + 4.70086d-06*cos(0.8384775504d0 + 1471.7530270636d0 * t)
        saturn_r_0 = saturn_r_0 + 4.72572d-06*cos(1.8819858466d0 + 515.463871093d0 * t)
        saturn_r_0 = saturn_r_0 + 4.8223d-06*cos(1.84070179496d0 + 479.2883889155d0 * t)
        saturn_r_0 = saturn_r_0 + 4.87689d-06*cos(2.79373616806d0 + 3.1813937377d0 * t)
        saturn_r_0 = saturn_r_0 + 4.89825d-06*cos(5.80631420383d0 + 191.2076949102d0 * t)
        saturn_r_0 = saturn_r_0 + 4.9434d-06*cos(2.28626675074d0 + 278.5194664497d0 * t)
        saturn_r_0 = saturn_r_0 + 5.17196d-06*cos(4.44310450526d0 + 2214.7430875962d0 * t)
        saturn_r_0 = saturn_r_0 + 5.34397d-06*cos(1.26443331367d0 + 275.5505210331d0 * t)
        saturn_r_0 = saturn_r_0 + 5.53128d-06*cos(3.41088600844d0 + 269.9214467406d0 * t)
        saturn_r_0 = saturn_r_0 + 6.1774d-06*cos(5.62092000007d0 + 942.062061969d0 * t)
        saturn_r_0 = saturn_r_0 + 6.26382d-06*cos(5.9420823259d0 + 1478.8665740644d0 * t)
        saturn_r_0 = saturn_r_0 + 6.5985d-06*cos(4.66635439533d0 + 195.1398481733d0 * t)
        saturn_r_0 = saturn_r_0 + 6.64481d-06*cos(0.60297724821d0 + 728.762966531d0 * t)
        saturn_r_0 = saturn_r_0 + 9.32434d-06*cos(3.66980793184d0 + 554.0699874828d0 * t)
        saturn_r_0 = saturn_r_0 + 9.85869d-06*cos(2.25992849742d0 + 956.2891559706d0 * t)
        saturn_r_0 = saturn_r_0 + 9.98462d-06*cos(2.63131596867d0 + 200.7689224658d0 * t)
        saturn_r_0 = saturn_r_0 + 1.020922d-05*cos(5.91233512844d0 + 1685.0521225016d0 * t)
        saturn_r_0 = saturn_r_0 + 1.071399d-05*cos(1.13567265104d0 + 1155.361157407d0 * t)
        saturn_r_0 = saturn_r_0 + 1.099037d-05*cos(1.81765118601d0 + 149.5631971346d0 * t)
        saturn_r_0 = saturn_r_0 + 1.126667d-05*cos(4.46707803791d0 + 265.9892934775d0 * t)
        saturn_r_0 = saturn_r_0 + 1.149773d-05*cos(5.74021249703d0 + 1162.4747044078d0 * t)
        saturn_r_0 = saturn_r_0 + 1.207053d-05*cos(0.7528593316d0 + 351.8165923087d0 * t)
        saturn_r_0 = saturn_r_0 + 1.277489d-05*cos(2.98412586423d0 + 1059.3819301892d0 * t)
        saturn_r_0 = saturn_r_0 + 1.295553d-05*cos(4.69184139933d0 + 1898.3512179396d0 * t)
        saturn_r_0 = saturn_r_0 + 1.304089d-05*cos(0.77235613966d0 + 647.0108333148d0 * t)
        saturn_r_0 = saturn_r_0 + 1.315042d-05*cos(5.11202572637d0 + 211.8146227297d0 * t)
        saturn_r_0 = saturn_r_0 + 1.395109d-05*cos(5.93669404929d0 + 127.4717966068d0 * t)
        saturn_r_0 = saturn_r_0 + 1.462631d-05*cos(1.92588134017d0 + 216.4804891757d0 * t)
        saturn_r_0 = saturn_r_0 + 1.472392d-05*cos(1.40064915651d0 + 137.0330241624d0 * t)
        saturn_r_0 = saturn_r_0 + 1.474547d-05*cos(5.6767046113d0 + 203.7378678824d0 * t)
        saturn_r_0 = saturn_r_0 + 1.610859d-05*cos(1.17302463549d0 + 74.7815985673d0 * t)
        saturn_r_0 = saturn_r_0 + 1.740254d-05*cos(2.34657043464d0 + 309.2783226558d0 * t)
        saturn_r_0 = saturn_r_0 + 1.781165d-05*cos(0.76314388077d0 + 217.2312487011d0 * t)
        saturn_r_0 = saturn_r_0 + 1.817186d-05*cos(5.77713225779d0 + 490.3340891794d0 * t)
        saturn_r_0 = saturn_r_0 + 1.861397d-05*cos(5.93361638244d0 + 625.6701923124d0 * t)
        saturn_r_0 = saturn_r_0 + 1.888436d-05*cos(0.02968443389d0 + 3.9321532631d0 * t)
        saturn_r_0 = saturn_r_0 + 2.024483d-05*cos(5.05411271271d0 + 11.0457002639d0 * t)
        saturn_r_0 = saturn_r_0 + 2.173959d-05*cos(0.01508587396d0 + 340.7708920448d0 * t)
        saturn_r_0 = saturn_r_0 + 2.406138d-05*cos(2.96559220267d0 + 117.3198682202d0 * t)
        saturn_r_0 = saturn_r_0 + 2.448325d-05*cos(6.18412386316d0 + 1368.660252845d0 * t)
        saturn_r_0 = saturn_r_0 + 2.50763d-05*cos(3.53851863255d0 + 742.9900605326d0 * t)
        saturn_r_0 = saturn_r_0 + 2.881181d-05*cos(0.17960757891d0 + 853.196381752d0 * t)
        saturn_r_0 = saturn_r_0 + 2.885348d-05*cos(1.38764077631d0 + 838.9692877504d0 * t)
        saturn_r_0 = saturn_r_0 + 2.976033d-05*cos(5.68467931117d0 + 210.1177017003d0 * t)
        saturn_r_0 = saturn_r_0 + 3.376457d-05*cos(3.69528478828d0 + 224.3447957019d0 * t)
        saturn_r_0 = saturn_r_0 + 3.400616d-05*cos(0.55386747515d0 + 350.3321196004d0 * t)
        saturn_r_0 = saturn_r_0 + 3.419551d-05*cos(4.94549148887d0 + 1581.959348283d0 * t)
        saturn_r_0 = saturn_r_0 + 3.460943d-05*cos(1.85088802878d0 + 175.1660598002d0 * t)
        saturn_r_0 = saturn_r_0 + 3.688132d-05*cos(0.7801613317d0 + 412.3710968744d0 * t)
        saturn_r_0 = saturn_r_0 + 4.043988d-05*cos(1.64010323863d0 + 209.3669421749d0 * t)
        saturn_r_0 = saturn_r_0 + 4.695746d-05*cos(2.14919036956d0 + 227.5261894396d0 * t)
        saturn_r_0 = saturn_r_0 + 5.307481d-05*cos(0.5973753405d0 + 63.7358983034d0 * t)
        saturn_r_0 = saturn_r_0 + 5.850443d-05*cos(1.45519636076d0 + 415.5524906121d0 * t)
        saturn_r_0 = saturn_r_0 + 6.465967d-05*cos(0.17733160145d0 + 1052.2683831884d0 * t)
        saturn_r_0 = saturn_r_0 + 6.770621d-05*cos(3.00433479284d0 + 14.2270940016d0 * t)
        saturn_r_0 = saturn_r_0 + 7.752769d-05*cos(5.85191318903d0 + 95.9792272178d0 * t)
        saturn_r_0 = saturn_r_0 + 9.796061d-05*cos(5.20475863996d0 + 1265.5674786264d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00011380261d0*cos(1.73105746566d0 + 522.5774180938d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00011993314d0*cos(5.98051421881d0 + 846.0828347512d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00012884128d0*cos(1.64892310393d0 + 138.5174968707d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00014296479d0*cos(2.60433537909d0 + 323.5054166574d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00015298457d0*cos(3.05943652881d0 + 529.6909650946d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00020746678d0*cos(5.33255667599d0 + 199.0720014364d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00020839118d0*cos(1.5210259064d0 + 433.7117378768d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00020936573d0*cos(0.46349163993d0 + 735.8765135318d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00032401718d0*cos(5.47084606947d0 + 949.1756089698d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00034143794d0*cos(0.19518550682d0 + 277.0349937414d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00048913044d0*cos(1.55733388472d0 + 202.2533951741d0 * t)
        saturn_r_0 = saturn_r_0 + 0.0006105335d0*cos(0.94037761156d0 + 639.897286314d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00069007015d0*cos(5.94099622447d0 + 419.4846438752d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00108974737d0*cos(3.29313595577d0 + 110.2063212194d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00140617548d0*cos(5.70406652991d0 + 632.7837393132d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00361778433d0*cos(3.13904303264d0 + 7.1135470008d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00371684449d0*cos(2.27114833428d0 + 220.4126424388d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00547506899d0*cos(5.01532628454d0 + 103.0927742186d0 * t)
        saturn_r_0 = saturn_r_0 + 0.00821891059d0*cos(5.93520025371d0 + 316.3918696566d0 * t)
        saturn_r_0 = saturn_r_0 + 0.01464663959d0*cos(1.64763045468d0 + 426.598190876d0 * t)
        saturn_r_0 = saturn_r_0 + 0.01873679934d0*cos(5.23549605091d0 + 206.1855484372d0 * t)
        saturn_r_0 = saturn_r_0 + 0.52921382465d0*cos(2.39226219733d0 + 213.299095438d0 * t)
        saturn_r_0 = saturn_r_0 + 9.55758135801d0*cos(0.0d0 + 0.0d0 * t)

        saturn_r_1 = saturn_r_1 + 1.00277d-06*cos(3.61360169153d0 + 1066.49547719d0 * t)
        saturn_r_1 = saturn_r_1 + 1.03169d-06*cos(0.38175114761d0 + 203.7378678824d0 * t)
        saturn_r_1 = saturn_r_1 + 1.07527d-06*cos(4.31870663477d0 + 210.8514148832d0 * t)
        saturn_r_1 = saturn_r_1 + 1.26538d-06*cos(3.00310970076d0 + 277.0349937414d0 * t)
        saturn_r_1 = saturn_r_1 + 1.27831d-06*cos(2.53876158952d0 + 1471.7530270636d0 * t)
        saturn_r_1 = saturn_r_1 + 1.29476d-06*cos(1.14344730612d0 + 21.3406410024d0 * t)
        saturn_r_1 = saturn_r_1 + 1.36013d-06*cos(5.01678984678d0 + 351.8165923087d0 * t)
        saturn_r_1 = saturn_r_1 + 1.39834d-06*cos(1.3528295939d0 + 1685.0521225016d0 * t)
        saturn_r_1 = saturn_r_1 + 1.4063d-06*cos(2.02069760726d0 + 1045.1548361876d0 * t)
        saturn_r_1 = saturn_r_1 + 1.40977d-06*cos(1.27099900689d0 + 203.0041546995d0 * t)
        saturn_r_1 = saturn_r_1 + 1.51526d-06*cos(0.52928231044d0 + 330.6189636582d0 * t)
        saturn_r_1 = saturn_r_1 + 1.52461d-06*cos(5.43886711695d0 + 422.6660376129d0 * t)
        saturn_r_1 = saturn_r_1 + 1.53391d-06*cos(0.26968607873d0 + 1272.6810256272d0 * t)
        saturn_r_1 = saturn_r_1 + 1.54809d-06*cos(1.19720845085d0 + 265.9892934775d0 * t)
        saturn_r_1 = saturn_r_1 + 1.57687d-06*cos(2.99559914619d0 + 340.7708920448d0 * t)
        saturn_r_1 = saturn_r_1 + 1.65515d-06*cos(5.99775895715d0 + 536.8045120954d0 * t)
        saturn_r_1 = saturn_r_1 + 1.69743d-06*cos(4.63464467495d0 + 284.1485407422d0 * t)
        saturn_r_1 = saturn_r_1 + 1.74651d-06*cos(3.44560172182d0 + 137.0330241624d0 * t)
        saturn_r_1 = saturn_r_1 + 1.81645d-06*cos(4.93431600689d0 + 74.7815985673d0 * t)
        saturn_r_1 = saturn_r_1 + 1.82802d-06*cos(2.67913220473d0 + 127.4717966068d0 * t)
        saturn_r_1 = saturn_r_1 + 1.94973d-06*cos(4.56665009915d0 + 846.0828347512d0 * t)
        saturn_r_1 = saturn_r_1 + 2.15368d-06*cos(3.56535574833d0 + 490.3340891794d0 * t)
        saturn_r_1 = saturn_r_1 + 2.22077d-06*cos(5.1319321205d0 + 269.9214467406d0 * t)
        saturn_r_1 = saturn_r_1 + 2.44864d-06*cos(1.04493438899d0 + 942.062061969d0 * t)
        saturn_r_1 = saturn_r_1 + 2.46245d-06*cos(0.90730313861d0 + 191.9584544356d0 * t)
        saturn_r_1 = saturn_r_1 + 2.64047d-06*cos(1.28547685567d0 + 1059.3819301892d0 * t)
        saturn_r_1 = saturn_r_1 + 2.64864d-06*cos(5.82860588985d0 + 149.5631971346d0 * t)
        saturn_r_1 = saturn_r_1 + 2.64971d-06*cos(2.42670902733d0 + 88.865680217d0 * t)
        saturn_r_1 = saturn_r_1 + 2.77783d-06*cos(0.26007031431d0 + 195.1398481733d0 * t)
        saturn_r_1 = saturn_r_1 + 2.91173d-06*cos(2.83129427918d0 + 1155.361157407d0 * t)
        saturn_r_1 = saturn_r_1 + 2.94324d-06*cos(2.81632778983d0 + 11.0457002639d0 * t)
        saturn_r_1 = saturn_r_1 + 3.16777d-06*cos(3.58395655749d0 + 515.463871093d0 * t)
        saturn_r_1 = saturn_r_1 + 3.21611d-06*cos(0.97931764923d0 + 3.1813937377d0 * t)
        saturn_r_1 = saturn_r_1 + 3.35526d-06*cos(1.61614647174d0 + 1368.660252845d0 * t)
        saturn_r_1 = saturn_r_1 + 3.44777d-06*cos(5.88787577835d0 + 440.8252848776d0 * t)
        saturn_r_1 = saturn_r_1 + 3.56117d-06*cos(2.30312127651d0 + 728.762966531d0 * t)
        saturn_r_1 = saturn_r_1 + 3.62772d-06*cos(4.70691652867d0 + 302.164775655d0 * t)
        saturn_r_1 = saturn_r_1 + 3.95004d-06*cos(0.53349091102d0 + 956.2891559706d0 * t)
        saturn_r_1 = saturn_r_1 + 4.13017d-06*cos(4.59334402271d0 + 415.5524906121d0 * t)
        saturn_r_1 = saturn_r_1 + 5.02886d-06*cos(2.12958819475d0 + 3.9321532631d0 * t)
        saturn_r_1 = saturn_r_1 + 5.99236d-06*cos(2.54924174765d0 + 217.2312487011d0 * t)
        saturn_r_1 = saturn_r_1 + 6.12961d-06*cos(3.03307306767d0 + 63.7358983034d0 * t)
        saturn_r_1 = saturn_r_1 + 6.496d-06*cos(1.7248948616d0 + 742.9900605326d0 * t)
        saturn_r_1 = saturn_r_1 + 6.5821d-06*cos(4.1436293098d0 + 309.2783226558d0 * t)
        saturn_r_1 = saturn_r_1 + 7.39892d-06*cos(1.38225356694d0 + 625.6701923124d0 * t)
        saturn_r_1 = saturn_r_1 + 7.84866d-06*cos(3.06377517461d0 + 838.9692877504d0 * t)
        saturn_r_1 = saturn_r_1 + 8.74215d-06*cos(1.40224683864d0 + 224.3447957019d0 * t)
        saturn_r_1 = saturn_r_1 + 8.81827d-06*cos(1.88471724478d0 + 1052.2683831884d0 * t)
        saturn_r_1 = saturn_r_1 + 8.97512d-06*cos(0.98343776092d0 + 529.6909650946d0 * t)
        saturn_r_1 = saturn_r_1 + 9.54403d-06*cos(5.15173410519d0 + 647.0108333148d0 * t)
        saturn_r_1 = saturn_r_1 + 9.66012d-06*cos(0.47991379141d0 + 632.7837393132d0 * t)
        saturn_r_1 = saturn_r_1 + 1.091088d-05*cos(0.07527246854d0 + 216.4804891757d0 * t)
        saturn_r_1 = saturn_r_1 + 1.203085d-05*cos(1.86654673794d0 + 316.3918696566d0 * t)
        saturn_r_1 = saturn_r_1 + 1.31559d-05*cos(1.25296446023d0 + 117.3198682202d0 * t)
        saturn_r_1 = saturn_r_1 + 1.339511d-05*cos(4.30801821806d0 + 853.196381752d0 * t)
        saturn_r_1 = saturn_r_1 + 1.581446d-05*cos(1.29191789712d0 + 210.1177017003d0 * t)
        saturn_r_1 = saturn_r_1 + 1.941309d-05*cos(6.02393385142d0 + 209.3669421749d0 * t)
        saturn_r_1 = saturn_r_1 + 1.987689d-05*cos(2.45054204795d0 + 412.3710968744d0 * t)
        saturn_r_1 = saturn_r_1 + 2.856006d-05*cos(2.16731405366d0 + 735.8765135318d0 * t)
        saturn_r_1 = saturn_r_1 + 2.909411d-05*cos(4.60679154788d0 + 202.2533951741d0 * t)
        saturn_r_1 = saturn_r_1 + 3.081408d-05*cos(3.43662557418d0 + 522.5774180938d0 * t)
        saturn_r_1 = saturn_r_1 + 3.252084d-05*cos(1.25853470491d0 + 95.9792272178d0 * t)
        saturn_r_1 = saturn_r_1 + 4.247455d-05*cos(0.39299384543d0 + 227.5261894396d0 * t)
        saturn_r_1 = saturn_r_1 + 4.869308d-05*cos(0.86793894213d0 + 323.5054166574d0 * t)
        saturn_r_1 = saturn_r_1 + 5.396699d-05*cos(1.28852405908d0 + 14.2270940016d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00012892827d0*cos(5.94330258435d0 + 433.7117378768d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00013876565d0*cos(0.75886204364d0 + 199.0720014364d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00018839639d0*cos(1.60819563173d0 + 110.2063212194d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00019952612d0*cos(1.17560125007d0 + 419.4846438752d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00020928189d0*cos(5.0924565447d0 + 639.897286314d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00049621111d0*cos(6.0174446958d0 + 103.0927742186d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00143891176d0*cos(1.40744864239d0 + 7.1135470008d0 * t)
        saturn_r_1 = saturn_r_1 + 0.0018626154d0*cos(3.14159265359d0 + 0.0d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00188491375d0*cos(0.47215719444d0 + 220.4126424388d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00341394136d0*cos(5.7963577396d0 + 426.598190876d0 * t)
        saturn_r_1 = saturn_r_1 + 0.00506577574d0*cos(0.71114650941d0 + 206.1855484372d0 * t)
        saturn_r_1 = saturn_r_1 + 0.06182981282d0*cos(0.25843515034d0 + 213.299095438d0 * t)
        saturn_r_1=saturn_r_1*t;

        saturn_r_2 = saturn_r_2 + 1.00367d-06*cos(5.46056190585d0 + 3.1813937377d0 * t)
        saturn_r_2 = saturn_r_2 + 1.08701d-06*cos(5.29310899841d0 + 515.463871093d0 * t)
        saturn_r_2 = saturn_r_2 + 1.10709d-06*cos(4.77853798276d0 + 838.9692877504d0 * t)
        saturn_r_2 = saturn_r_2 + 1.19053d-06*cos(5.55385105975d0 + 224.3447957019d0 * t)
        saturn_r_2 = saturn_r_2 + 1.23189d-06*cos(4.18895309647d0 + 88.865680217d0 * t)
        saturn_r_2 = saturn_r_2 + 1.31975d-06*cos(5.93293968941d0 + 309.2783226558d0 * t)
        saturn_r_2 = saturn_r_2 + 1.33076d-06*cos(2.5935046942d0 + 191.9584544356d0 * t)
        saturn_r_2 = saturn_r_2 + 1.47779d-06*cos(0.13614300541d0 + 302.164775655d0 * t)
        saturn_r_2 = saturn_r_2 + 1.53656d-06*cos(3.13470530382d0 + 625.6701923124d0 * t)
        saturn_r_2 = saturn_r_2 + 1.78474d-06*cos(4.09716541453d0 + 440.8252848776d0 * t)
        saturn_r_2 = saturn_r_2 + 1.80143d-06*cos(3.59704903955d0 + 632.7837393132d0 * t)
        saturn_r_2 = saturn_r_2 + 2.04494d-06*cos(0.0877484859d0 + 202.2533951741d0 * t)
        saturn_r_2 = saturn_r_2 + 2.06854d-06*cos(4.02188336738d0 + 735.8765135318d0 * t)
        saturn_r_2 = saturn_r_2 + 3.25598d-06*cos(2.26867601656d0 + 853.196381752d0 * t)
        saturn_r_2 = saturn_r_2 + 3.5635d-06*cos(3.19152043942d0 + 210.1177017003d0 * t)
        saturn_r_2 = saturn_r_2 + 3.60882d-06*cos(3.27703082368d0 + 647.0108333148d0 * t)
        saturn_r_2 = saturn_r_2 + 3.73838d-06*cos(5.83435991809d0 + 117.3198682202d0 * t)
        saturn_r_2 = saturn_r_2 + 3.90627d-06*cos(4.48106176893d0 + 216.4804891757d0 * t)
        saturn_r_2 = saturn_r_2 + 4.05018d-06*cos(4.17294157872d0 + 209.3669421749d0 * t)
        saturn_r_2 = saturn_r_2 + 4.31485d-06*cos(5.17825414612d0 + 522.5774180938d0 * t)
        saturn_r_2 = saturn_r_2 + 5.46115d-06*cos(4.12854181522d0 + 412.3710968744d0 * t)
        saturn_r_2 = saturn_r_2 + 7.05936d-06*cos(2.97081280098d0 + 95.9792272178d0 * t)
        saturn_r_2 = saturn_r_2 + 9.2384d-06*cos(5.46392422737d0 + 323.5054166574d0 * t)
        saturn_r_2 = saturn_r_2 + 1.956896d-05*cos(4.92448618045d0 + 227.5261894396d0 * t)
        saturn_r_2 = saturn_r_2 + 2.187621d-05*cos(5.85545832218d0 + 14.2270940016d0 * t)
        saturn_r_2 = saturn_r_2 + 2.208457d-05*cos(6.27588858707d0 + 110.2063212194d0 * t)
        saturn_r_2 = saturn_r_2 + 2.326801d-05*cos(0.0d0 + 0.0d0 * t)
        saturn_r_2 = saturn_r_2 + 2.556363d-05*cos(2.85065721526d0 + 419.4846438752d0 * t)
        saturn_r_2 = saturn_r_2 + 2.96399d-05*cos(1.37206248846d0 + 103.0927742186d0 * t)
        saturn_r_2 = saturn_r_2 + 3.78937d-05*cos(3.09771025067d0 + 639.897286314d0 * t)
        saturn_r_2 = saturn_r_2 + 4.14165d-05*cos(4.10670940823d0 + 433.7117378768d0 * t)
        saturn_r_2 = saturn_r_2 + 4.720909d-05*cos(2.47527992423d0 + 199.0720014364d0 * t)
        saturn_r_2 = saturn_r_2 + 0.00029645554d0*cos(5.96310264282d0 + 7.1135470008d0 * t)
        saturn_r_2 = saturn_r_2 + 0.00043220894d0*cos(3.86940443794d0 + 426.598190876d0 * t)
        saturn_r_2 = saturn_r_2 + 0.00049766792d0*cos(4.9716815087d0 + 220.4126424388d0 * t)
        saturn_r_2 = saturn_r_2 + 0.0007192276d0*cos(2.50069994874d0 + 206.1855484372d0 * t)
        saturn_r_2 = saturn_r_2 + 0.00436902464d0*cos(4.78671673044d0 + 213.299095438d0 * t)
        saturn_r_2=saturn_r_2*t*t;

        saturn_r_3 = saturn_r_3 + 1.01215d-06*cos(5.81884137755d0 + 412.3710968744d0 * t)
        saturn_r_3 = saturn_r_3 + 1.02146d-06*cos(4.70974422803d0 + 95.9792272178d0 * t)
        saturn_r_3 = saturn_r_3 + 1.21442d-06*cos(3.76831374104d0 + 323.5054166574d0 * t)
        saturn_r_3 = saturn_r_3 + 1.49508d-06*cos(3.201994444d0 + 103.0927742186d0 * t)
        saturn_r_3 = saturn_r_3 + 1.8825d-06*cos(4.59003889007d0 + 110.2063212194d0 * t)
        saturn_r_3 = saturn_r_3 + 2.29472d-06*cos(4.69838526383d0 + 419.4846438752d0 * t)
        saturn_r_3 = saturn_r_3 + 3.93174d-06*cos(0.0d0 + 0.0d0 * t)
        saturn_r_3 = saturn_r_3 + 4.83181d-06*cos(1.17345973258d0 + 639.897286314d0 * t)
        saturn_r_3 = saturn_r_3 + 5.96639d-06*cos(4.13455753351d0 + 14.2270940016d0 * t)
        saturn_r_3 = saturn_r_3 + 6.06121d-06*cos(3.17458570534d0 + 227.5261894396d0 * t)
        saturn_r_3 = saturn_r_3 + 9.07332d-06*cos(2.28344368029d0 + 433.7117378768d0 * t)
        saturn_r_3 = saturn_r_3 + 1.070788d-05*cos(4.20360341236d0 + 199.0720014364d0 * t)
        saturn_r_3 = saturn_r_3 + 3.879041d-05*cos(2.01056445995d0 + 426.598190876d0 * t)
        saturn_r_3 = saturn_r_3 + 4.087129d-05*cos(4.22406927376d0 + 7.1135470008d0 * t)
        saturn_r_3 = saturn_r_3 + 6.908677d-05*cos(4.35174889353d0 + 206.1855484372d0 * t)
        saturn_r_3 = saturn_r_3 + 8.923581d-05*cos(3.19144205755d0 + 220.4126424388d0 * t)
        saturn_r_3 = saturn_r_3 + 0.00020315005d0*cos(3.02186626038d0 + 213.299095438d0 * t)
        saturn_r_3=saturn_r_3*t*t*t;

        saturn_r_4 = saturn_r_4 + 1.21033d-06*cos(2.40527320817d0 + 14.2270940016d0 * t)
        saturn_r_4 = saturn_r_4 + 1.45113d-06*cos(1.44211060143d0 + 227.5261894396d0 * t)
        saturn_r_4 = saturn_r_4 + 1.50339d-06*cos(0.4797016714d0 + 433.7117378768d0 * t)
        saturn_r_4 = saturn_r_4 + 1.70171d-06*cos(5.95926972384d0 + 199.0720014364d0 * t)
        saturn_r_4 = saturn_r_4 + 2.67736d-06*cos(0.18659206741d0 + 426.598190876d0 * t)
        saturn_r_4 = saturn_r_4 + 4.26664d-06*cos(2.46924890293d0 + 7.1135470008d0 * t)
        saturn_r_4 = saturn_r_4 + 5.16121d-06*cos(6.2397356833d0 + 206.1855484372d0 * t)
        saturn_r_4 = saturn_r_4 + 7.07796d-06*cos(1.16153570102d0 + 213.299095438d0 * t)
        saturn_r_4 = saturn_r_4 + 1.20205d-05*cos(1.41499446465d0 + 220.4126424388d0 * t)
        saturn_r_4=saturn_r_4*t*t*t*t;

        saturn_r_5 = saturn_r_5 + 1.28612d-06*cos(5.91282565136d0 + 220.4126424388d0 * t)
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

        uranus_b_0 = uranus_b_0 + 1.02049d-06*cos(2.61876256513d0 + 78.7137518304d0 * t)
        uranus_b_0 = uranus_b_0 + 1.06441d-06*cos(0.94103112994d0 + 70.3281804424d0 * t)
        uranus_b_0 = uranus_b_0 + 1.16363d-06*cos(5.73877190007d0 + 70.8494453042d0 * t)
        uranus_b_0 = uranus_b_0 + 1.44064d-06*cos(5.96239326415d0 + 35.1640902212d0 * t)
        uranus_b_0 = uranus_b_0 + 1.60368d-06*cos(5.33635436463d0 + 111.4301614968d0 * t)
        uranus_b_0 = uranus_b_0 + 1.73667d-06*cos(1.93654269131d0 + 380.12776796d0 * t)
        uranus_b_0 = uranus_b_0 + 1.74895d-06*cos(1.23550262213d0 + 146.594251718d0 * t)
        uranus_b_0 = uranus_b_0 + 1.79935d-06*cos(3.72487952673d0 + 299.1263942692d0 * t)
        uranus_b_0 = uranus_b_0 + 2.15838d-06*cos(1.5912170494d0 + 38.1330356378d0 * t)
        uranus_b_0 = uranus_b_0 + 2.32649d-06*cos(2.25716421383d0 + 222.8603229936d0 * t)
        uranus_b_0 = uranus_b_0 + 2.44698d-06*cos(0.78795150326d0 + 2.9689454166d0 * t)
        uranus_b_0 = uranus_b_0 + 4.20265d-06*cos(5.21279984788d0 + 11.0457002639d0 * t)
        uranus_b_0 = uranus_b_0 + 4.30668d-06*cos(3.55445034854d0 + 213.299095438d0 * t)
        uranus_b_0 = uranus_b_0 + 4.34625d-06*cos(0.34065281858d0 + 77.7505439839d0 * t)
        uranus_b_0 = uranus_b_0 + 4.36843d-06*cos(3.38082524317d0 + 529.6909650946d0 * t)
        uranus_b_0 = uranus_b_0 + 4.6263d-06*cos(0.74256727574d0 + 85.8272988312d0 * t)
        uranus_b_0 = uranus_b_0 + 5.22309d-06*cos(3.3208519477d0 + 138.5174968707d0 * t)
        uranus_b_0 = uranus_b_0 + 7.60624d-06*cos(6.14000431923d0 + 71.8126531507d0 * t)
        uranus_b_0 = uranus_b_0 + 9.24055d-06*cos(4.03822927853d0 + 151.0476698429d0 * t)
        uranus_b_0 = uranus_b_0 + 1.522172d-05*cos(0.27960386377d0 + 63.7358983034d0 * t)
        uranus_b_0 = uranus_b_0 + 2.010257d-05*cos(6.05550401088d0 + 148.0787244263d0 * t)
        uranus_b_0 = uranus_b_0 + 2.972318d-05*cos(2.24367035538d0 + 1.4844727083d0 * t)
        uranus_b_0 = uranus_b_0 + 3.259455d-05*cos(1.2611938596d0 + 224.3447957019d0 * t)
        uranus_b_0 = uranus_b_0 + 9.926151d-05*cos(0.57630387917d0 + 73.297125859d0 * t)
        uranus_b_0 = uranus_b_0 + 9.963744d-05*cos(1.61603876357d0 + 76.2660712756d0 * t)
        uranus_b_0 = uranus_b_0 + 0.00061601203d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_b_0 = uranus_b_0 + 0.00062341405d0*cos(5.08111175856d0 + 149.5631971346d0 * t)
        uranus_b_0 = uranus_b_0 + 0.01346277639d0*cos(2.61877810545d0 + 74.7815985673d0 * t)

        uranus_b_1 = uranus_b_1 + 1.10888d-06*cos(5.32888676461d0 + 138.5174968707d0 * t)
        uranus_b_1 = uranus_b_1 + 1.12432d-06*cos(5.57299891505d0 + 151.0476698429d0 * t)
        uranus_b_1 = uranus_b_1 + 1.54336d-06*cos(3.78575467747d0 + 63.7358983034d0 * t)
        uranus_b_1 = uranus_b_1 + 3.07214d-06*cos(1.25456766737d0 + 148.0787244263d0 * t)
        uranus_b_1 = uranus_b_1 + 3.99847d-06*cos(2.84767037795d0 + 224.3447957019d0 * t)
        uranus_b_1 = uranus_b_1 + 4.50639d-06*cos(3.77656180977d0 + 1.4844727083d0 * t)
        uranus_b_1 = uranus_b_1 + 1.36886d-05*cos(3.06861722047d0 + 76.2660712756d0 * t)
        uranus_b_1 = uranus_b_1 + 1.374449d-05*cos(0.0d0 + 0.0d0 * t)
        uranus_b_1 = uranus_b_1 + 1.725703d-05*cos(2.12193159895d0 + 73.297125859d0 * t)
        uranus_b_1 = uranus_b_1 + 8.56323d-05*cos(0.33819986165d0 + 149.5631971346d0 * t)
        uranus_b_1 = uranus_b_1 + 0.00206366162d0*cos(4.12394311407d0 + 74.7815985673d0 * t)
        uranus_b_1=uranus_b_1*t;

        uranus_b_2 = uranus_b_2 + 2.86265d-06*cos(2.17729776353d0 + 149.5631971346d0 * t)
        uranus_b_2 = uranus_b_2 + 5.56926d-06*cos(0.0d0 + 0.0d0 * t)
        uranus_b_2 = uranus_b_2 + 9.211656d-05*cos(5.80044305785d0 + 74.7815985673d0 * t)
        uranus_b_2=uranus_b_2*t*t;

        uranus_b_3 = uranus_b_3 + 2.67832d-06*cos(1.25097888291d0 + 74.7815985673d0 * t)
        uranus_b_3=uranus_b_3*t*t*t;

        r = uranus_b_3+uranus_b_2+uranus_b_1+uranus_b_0
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

        uranus_l_0 = uranus_l_0 + 1.03277d-06*cos(0.68095301267d0 + 14.977853527d0 * t)
        uranus_l_0 = uranus_l_0 + 1.03562d-06*cos(1.45770270246d0 + 24.3790223882d0 * t)
        uranus_l_0 = uranus_l_0 + 1.04414d-06*cos(5.02820888813d0 + 0.7507595254d0 * t)
        uranus_l_0 = uranus_l_0 + 1.09376d-06*cos(5.70581833286d0 + 77.962992305d0 * t)
        uranus_l_0 = uranus_l_0 + 1.10163d-06*cos(2.02685778976d0 + 554.0699874828d0 * t)
        uranus_l_0 = uranus_l_0 + 1.2384d-06*cos(1.37359990336d0 + 7.1135470008d0 * t)
        uranus_l_0 = uranus_l_0 + 1.38585d-06*cos(4.25994786673d0 + 909.8187330546d0 * t)
        uranus_l_0 = uranus_l_0 + 1.39453d-06*cos(5.385977234d0 + 32.1951448046d0 * t)
        uranus_l_0 = uranus_l_0 + 1.43058d-06*cos(1.29995487555d0 + 35.4247226521d0 * t)
        uranus_l_0 = uranus_l_0 + 1.46653d-06*cos(1.26300172265d0 + 59.8037450403d0 * t)
        uranus_l_0 = uranus_l_0 + 1.58028d-06*cos(0.73811997211d0 + 54.1746707478d0 * t)
        uranus_l_0 = uranus_l_0 + 1.62792d-06*cos(3.05029377666d0 + 112.9146342051d0 * t)
        uranus_l_0 = uranus_l_0 + 1.64588d-06*cos(1.42379714838d0 + 106.9767433719d0 * t)
        uranus_l_0 = uranus_l_0 + 1.68648d-06*cos(5.87874000882d0 + 18.1592472647d0 * t)
        uranus_l_0 = uranus_l_0 + 1.703d-06*cos(3.67717520688d0 + 5.4166259714d0 * t)
        uranus_l_0 = uranus_l_0 + 1.71968d-06*cos(5.67952685533d0 + 219.891377577d0 * t)
        uranus_l_0 = uranus_l_0 + 1.73145d-06*cos(1.53860728054d0 + 160.6088973985d0 * t)
        uranus_l_0 = uranus_l_0 + 1.81934d-06*cos(3.53624029238d0 + 79.2350166922d0 * t)
        uranus_l_0 = uranus_l_0 + 1.87474d-06*cos(1.31924326253d0 + 0.1600586944d0 * t)
        uranus_l_0 = uranus_l_0 + 1.92998d-06*cos(0.91616058506d0 + 453.424893819d0 * t)
        uranus_l_0 = uranus_l_0 + 1.93652d-06*cos(1.88800122606d0 + 456.3938392356d0 * t)
        uranus_l_0 = uranus_l_0 + 1.99146d-06*cos(0.9563415501d0 + 152.5321425512d0 * t)
        uranus_l_0 = uranus_l_0 + 2.01963d-06*cos(1.29693040865d0 + 0.0481841098d0 * t)
        uranus_l_0 = uranus_l_0 + 2.07828d-06*cos(5.5802057004d0 + 68.8437077341d0 * t)
        uranus_l_0 = uranus_l_0 + 2.1648d-06*cos(4.77847481363d0 + 340.7708920448d0 * t)
        uranus_l_0 = uranus_l_0 + 2.16549d-06*cos(6.14211862702d0 + 5.9378908332d0 * t)
        uranus_l_0 = uranus_l_0 + 2.19621d-06*cos(1.92212987979d0 + 67.6680515665d0 * t)
        uranus_l_0 = uranus_l_0 + 2.22588d-06*cos(2.84309380331d0 + 0.2606324309d0 * t)
        uranus_l_0 = uranus_l_0 + 2.24097d-06*cos(0.51574863468d0 + 84.3428261229d0 * t)
        uranus_l_0 = uranus_l_0 + 2.39334d-06*cos(2.35045874708d0 + 137.0330241624d0 * t)
        uranus_l_0 = uranus_l_0 + 2.49229d-06*cos(4.74617120584d0 + 225.8292684102d0 * t)
        uranus_l_0 = uranus_l_0 + 2.51792d-06*cos(1.63696775578d0 + 221.3758502853d0 * t)
        uranus_l_0 = uranus_l_0 + 2.94172d-06*cos(5.83916826225d0 + 39.6175083461d0 * t)
        uranus_l_0 = uranus_l_0 + 3.00379d-06*cos(5.64353974146d0 + 22.0914005278d0 * t)
        uranus_l_0 = uranus_l_0 + 3.09885d-06*cos(5.83301304674d0 + 145.6310438715d0 * t)
        uranus_l_0 = uranus_l_0 + 3.78609d-06*cos(2.34975805006d0 + 56.6223513026d0 * t)
        uranus_l_0 = uranus_l_0 + 3.95614d-06*cos(5.87039580949d0 + 351.8165923087d0 * t)
        uranus_l_0 = uranus_l_0 + 3.98996d-06*cos(0.33810765436d0 + 415.5524906121d0 * t)
        uranus_l_0 = uranus_l_0 + 4.04891d-06*cos(5.98689011389d0 + 8.0767548473d0 * t)
        uranus_l_0 = uranus_l_0 + 4.33532d-06*cos(5.52142978255d0 + 183.2428146475d0 * t)
        uranus_l_0 = uranus_l_0 + 4.67211d-06*cos(0.41484068933d0 + 145.1097790097d0 * t)
        uranus_l_0 = uranus_l_0 + 4.71288d-06*cos(1.40664336447d0 + 184.7272873558d0 * t)
        uranus_l_0 = uranus_l_0 + 4.83219d-06*cos(2.10553990154d0 + 0.9632078465d0 * t)
        uranus_l_0 = uranus_l_0 + 5.24495d-06*cos(2.01276706996d0 + 299.1263942692d0 * t)
        uranus_l_0 = uranus_l_0 + 5.5937d-06*cos(3.35776737704d0 + 0.5212648618d0 * t)
        uranus_l_0 = uranus_l_0 + 6.06827d-06*cos(5.43209728952d0 + 529.6909650946d0 * t)
        uranus_l_0 = uranus_l_0 + 6.27562d-06*cos(0.18210181975d0 + 984.6003316219d0 * t)
        uranus_l_0 = uranus_l_0 + 6.53401d-06*cos(0.96586909116d0 + 78.7137518304d0 * t)
        uranus_l_0 = uranus_l_0 + 7.07875d-06*cos(5.18285226584d0 + 213.299095438d0 * t)
        uranus_l_0 = uranus_l_0 + 9.46195d-06*cos(1.19249463066d0 + 127.4717966068d0 * t)
        uranus_l_0 = uranus_l_0 + 1.072008d-05*cos(0.23564502877d0 + 62.2514255951d0 * t)
        uranus_l_0 = uranus_l_0 + 1.090461d-05*cos(1.77501638912d0 + 12.5301729722d0 * t)
        uranus_l_0 = uranus_l_0 + 1.150416d-05*cos(0.93344454002d0 + 3.1813937377d0 * t)
        uranus_l_0 = uranus_l_0 + 1.150993d-05*cos(4.17898207045d0 + 33.6796175129d0 * t)
        uranus_l_0 = uranus_l_0 + 1.220998d-05*cos(0.19901396193d0 + 108.4612160802d0 * t)
        uranus_l_0 = uranus_l_0 + 1.244342d-05*cos(0.91612680579d0 + 2.4476805548d0 * t)
        uranus_l_0 = uranus_l_0 + 1.281641d-05*cos(0.54269869505d0 + 222.8603229936d0 * t)
        uranus_l_0 = uranus_l_0 + 1.284183d-05*cos(3.11346336879d0 + 202.2533951741d0 * t)
        uranus_l_0 = uranus_l_0 + 1.3721d-05*cos(4.19641615561d0 + 111.4301614968d0 * t)
        uranus_l_0 = uranus_l_0 + 1.376208d-05*cos(2.04281409054d0 + 65.2203710117d0 * t)
        uranus_l_0 = uranus_l_0 + 1.533223d-05*cos(2.58593414266d0 + 52.6901980395d0 * t)
        uranus_l_0 = uranus_l_0 + 1.66691d-05*cos(3.62744580852d0 + 380.12776796d0 * t)
        uranus_l_0 = uranus_l_0 + 1.991726d-05*cos(4.92437290826d0 + 277.0349937414d0 * t)
        uranus_l_0 = uranus_l_0 + 2.051209d-05*cos(1.51773563459d0 + 0.1118745846d0 * t)
        uranus_l_0 = uranus_l_0 + 2.148599d-05*cos(0.60745800902d0 + 38.1330356378d0 * t)
        uranus_l_0 = uranus_l_0 + 2.27279d-05*cos(4.36600802756d0 + 70.3281804424d0 * t)
        uranus_l_0 = uranus_l_0 + 2.92241d-05*cos(5.3523674338d0 + 85.8272988312d0 * t)
        uranus_l_0 = uranus_l_0 + 2.926671d-05*cos(4.62903695486d0 + 9.5612275556d0 * t)
        uranus_l_0 = uranus_l_0 + 3.144093d-05*cos(4.75199307603d0 + 77.7505439839d0 * t)
        uranus_l_0 = uranus_l_0 + 3.354607d-05*cos(1.06549008887d0 + 4.4534181249d0 * t)
        uranus_l_0 = uranus_l_0 + 3.490352d-05*cos(5.48305567292d0 + 146.594251718d0 * t)
        uranus_l_0 = uranus_l_0 + 4.05185d-05*cos(2.27754158724d0 + 151.0476698429d0 * t)
        uranus_l_0 = uranus_l_0 + 4.22017d-05*cos(3.23328535514d0 + 70.8494453042d0 * t)
        uranus_l_0 = uranus_l_0 + 7.545543d-05*cos(5.23626440666d0 + 109.9456887885d0 * t)
        uranus_l_0 = uranus_l_0 + 9.527487d-05*cos(2.95516893093d0 + 35.1640902212d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00010997934d0*cos(0.48865493179d0 + 138.5174968707d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00011162535d0*cos(5.82681993692d0 + 224.3447957019d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00014613471d0*cos(4.73732047977d0 + 3.9321532631d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00017818665d0*cos(1.74436982544d0 + 36.6485629295d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00021078897d0*cos(4.36059465144d0 + 148.0787244263d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00025710505d0*cos(6.11379842935d0 + 454.9093665273d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00026468869d0*cos(3.14152087888d0 + 71.8126531507d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00061950714d0*cos(2.85098907565d0 + 11.0457002639d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00061998592d0*cos(2.26952040469d0 + 2.9689454166d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00068892609d0*cos(6.09292489045d0 + 76.2660712756d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00070328499d0*cos(5.39254431993d0 + 63.7358983034d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00272328132d0*cos(3.35823710524d0 + 149.5631971346d0 * t)
        uranus_l_0 = uranus_l_0 + 0.00365981718d0*cos(1.89962189068d0 + 73.297125859d0 * t)
        uranus_l_0 = uranus_l_0 + 0.01504247826d0*cos(3.62719262195d0 + 1.4844727083d0 * t)
        uranus_l_0 = uranus_l_0 + 0.09260408252d0*cos(0.8910642153d0 + 74.7815985673d0 * t)
        uranus_l_0 = uranus_l_0 + 5.48129294299d0*cos(0.0d0 + 0.0d0 * t)

        uranus_l_1 = uranus_l_1 + 1.01718d-06*cos(6.03385875009d0 + 0.1118745846d0 * t)
        uranus_l_1 = uranus_l_1 + 1.02022d-06*cos(4.18754517993d0 + 145.6310438715d0 * t)
        uranus_l_1 = uranus_l_1 + 1.15546d-06*cos(3.73224603791d0 + 65.2203710117d0 * t)
        uranus_l_1 = uranus_l_1 + 1.21452d-06*cos(4.1483920492d0 + 127.4717966068d0 * t)
        uranus_l_1 = uranus_l_1 + 1.43464d-06*cos(2.59049246726d0 + 62.2514255951d0 * t)
        uranus_l_1 = uranus_l_1 + 1.51984d-06*cos(2.9421732689d0 + 77.7505439839d0 * t)
        uranus_l_1 = uranus_l_1 + 1.53515d-06*cos(4.65186885939d0 + 35.1640902212d0 * t)
        uranus_l_1 = uranus_l_1 + 1.5467d-06*cos(5.59083925605d0 + 4.4534181249d0 * t)
        uranus_l_1 = uranus_l_1 + 1.58029d-06*cos(2.90931969498d0 + 0.9632078465d0 * t)
        uranus_l_1 = uranus_l_1 + 1.71084d-06*cos(3.00060075287d0 + 78.7137518304d0 * t)
        uranus_l_1 = uranus_l_1 + 1.7992d-06*cos(5.68367730922d0 + 12.5301729722d0 * t)
        uranus_l_1 = uranus_l_1 + 1.83762d-06*cos(0.28371004654d0 + 151.0476698429d0 * t)
        uranus_l_1 = uranus_l_1 + 1.89068d-06*cos(4.20242881378d0 + 56.6223513026d0 * t)
        uranus_l_1 = uranus_l_1 + 2.05585d-06*cos(2.36263144251d0 + 2.4476805548d0 * t)
        uranus_l_1 = uranus_l_1 + 3.17084d-06*cos(5.57855232072d0 + 52.6901980395d0 * t)
        uranus_l_1 = uranus_l_1 + 3.47735d-06*cos(2.45372261286d0 + 9.5612275556d0 * t)
        uranus_l_1 = uranus_l_1 + 3.53752d-06*cos(2.58324496886d0 + 148.0787244263d0 * t)
        uranus_l_1 = uranus_l_1 + 4.26554d-06*cos(4.73126059388d0 + 71.8126531507d0 * t)
        uranus_l_1 = uranus_l_1 + 4.456d-06*cos(3.72300400331d0 + 224.3447957019d0 * t)
        uranus_l_1 = uranus_l_1 + 4.49798d-06*cos(4.13826237508d0 + 138.5174968707d0 * t)
        uranus_l_1 = uranus_l_1 + 4.81671d-06*cos(2.98401996914d0 + 85.8272988312d0 * t)
        uranus_l_1 = uranus_l_1 + 7.66954d-06*cos(1.99555409575d0 + 73.297125859d0 * t)
        uranus_l_1 = uranus_l_1 + 7.91206d-06*cos(5.43641224143d0 + 3.1813937377d0 * t)
        uranus_l_1 = uranus_l_1 + 1.232727d-05*cos(1.58634458237d0 + 70.8494453042d0 * t)
        uranus_l_1 = uranus_l_1 + 1.9266d-05*cos(0.53013080152d0 + 2.9689454166d0 * t)
        uranus_l_1 = uranus_l_1 + 2.283777d-05*cos(4.17367533997d0 + 76.2660712756d0 * t)
        uranus_l_1 = uranus_l_1 + 3.899105d-05*cos(0.46483574024d0 + 3.9321532631d0 * t)
        uranus_l_1 = uranus_l_1 + 7.841715d-05*cos(1.31983607251d0 + 149.5631971346d0 * t)
        uranus_l_1 = uranus_l_1 + 8.265977d-05*cos(1.5022003511d0 + 63.7358983034d0 * t)
        uranus_l_1 = uranus_l_1 + 9.257828d-05*cos(0.42844639064d0 + 11.0457002639d0 * t)
        uranus_l_1 = uranus_l_1 + 0.00024456413d0*cos(1.71255705309d0 + 1.4844727083d0 * t)
        uranus_l_1 = uranus_l_1 + 0.00154458244d0*cos(5.24201658072d0 + 74.7815985673d0 * t)
        uranus_l_1 = uranus_l_1 + 75.02543121646d0*cos(0.0d0 + 0.0d0 * t)
        uranus_l_1=uranus_l_1*t;

        uranus_l_2 = uranus_l_2 + 1.81904d-06*cos(6.21763603405d0 + 70.8494453042d0 * t)
        uranus_l_2 = uranus_l_2 + 2.38835d-06*cos(5.85806638405d0 + 149.5631971346d0 * t)
        uranus_l_2 = uranus_l_2 + 2.57521d-06*cos(3.69059216858d0 + 3.1813937377d0 * t)
        uranus_l_2 = uranus_l_2 + 5.29473d-06*cos(4.92348433826d0 + 1.4844727083d0 * t)
        uranus_l_2 = uranus_l_2 + 5.41532d-06*cos(2.27573907424d0 + 3.9321532631d0 * t)
        uranus_l_2 = uranus_l_2 + 5.51533d-06*cos(3.25814281023d0 + 63.7358983034d0 * t)
        uranus_l_2 = uranus_l_2 + 7.69129d-06*cos(4.52561041823d0 + 11.0457002639d0 * t)
        uranus_l_2 = uranus_l_2 + 2.357636d-05*cos(2.26014661705d0 + 74.7815985673d0 * t)
        uranus_l_2 = uranus_l_2 + 0.00053033277d0*cos(0.0d0 + 0.0d0 * t)
        uranus_l_2=uranus_l_2*t*t;

        uranus_l_3 = uranus_l_3 + 1.20936d-06*cos(0.02418789918d0 + 74.7815985673d0 * t)
        uranus_l_3=uranus_l_3*t*t*t;

        uranus_l_4 = uranus_l_4 + 1.13855d-06*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_l_4=uranus_l_4*t*t*t*t;

        r = uranus_l_4+uranus_l_3+uranus_l_2+uranus_l_1+uranus_l_0
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

        uranus_r_0 = uranus_r_0 + 1.01368d-06*cos(1.05739625315d0 + 92.3077063856d0 * t)
        uranus_r_0 = uranus_r_0 + 1.03166d-06*cos(0.69792283389d0 + 358.9301393095d0 * t)
        uranus_r_0 = uranus_r_0 + 1.03572d-06*cos(2.99368274596d0 + 6.2197751235d0 * t)
        uranus_r_0 = uranus_r_0 + 1.05226d-06*cos(5.94513614941d0 + 328.3525936572d0 * t)
        uranus_r_0 = uranus_r_0 + 1.06357d-06*cos(0.8158387475d0 + 1087.6931058405d0 * t)
        uranus_r_0 = uranus_r_0 + 1.06847d-06*cos(1.82071328579d0 + 306.830642101d0 * t)
        uranus_r_0 = uranus_r_0 + 1.07199d-06*cos(2.39365512354d0 + 347.8844390456d0 * t)
        uranus_r_0 = uranus_r_0 + 1.07611d-06*cos(3.77290419929d0 + 142.4496501338d0 * t)
        uranus_r_0 = uranus_r_0 + 1.10789d-06*cos(0.38651051525d0 + 216.9224321604d0 * t)
        uranus_r_0 = uranus_r_0 + 1.11474d-06*cos(0.75023459027d0 + 80.7194894005d0 * t)
        uranus_r_0 = uranus_r_0 + 1.12117d-06*cos(1.21168089807d0 + 329.7251917809d0 * t)
        uranus_r_0 = uranus_r_0 + 1.12635d-06*cos(0.08107814739d0 + 558.0021407459d0 * t)
        uranus_r_0 = uranus_r_0 + 1.13283d-06*cos(0.83051319425d0 + 100.3844612329d0 * t)
        uranus_r_0 = uranus_r_0 + 1.13444d-06*cos(4.65351596266d0 + 80.1982245387d0 * t)
        uranus_r_0 = uranus_r_0 + 1.14669d-06*cos(6.24863527978d0 + 767.3690829208d0 * t)
        uranus_r_0 = uranus_r_0 + 1.16104d-06*cos(2.5118272567d0 + 296.1574488526d0 * t)
        uranus_r_0 = uranus_r_0 + 1.16389d-06*cos(4.43513730944d0 + 5.9378908332d0 * t)
        uranus_r_0 = uranus_r_0 + 1.16587d-06*cos(1.83677031994d0 + 1289.9465010146d0 * t)
        uranus_r_0 = uranus_r_0 + 1.17216d-06*cos(3.94965784596d0 + 74.2603337055d0 * t)
        uranus_r_0 = uranus_r_0 + 1.22766d-06*cos(2.38341351026d0 + 141.4864422873d0 * t)
        uranus_r_0 = uranus_r_0 + 1.24875d-06*cos(4.30470898895d0 + 339.2864193365d0 * t)
        uranus_r_0 = uranus_r_0 + 1.26978d-06*cos(0.4235935825d0 + 331.3215390738d0 * t)
        uranus_r_0 = uranus_r_0 + 1.29106d-06*cos(0.36277717661d0 + 96.8729990951d0 * t)
        uranus_r_0 = uranus_r_0 + 1.32763d-06*cos(2.88875442023d0 + 373.9079928365d0 * t)
        uranus_r_0 = uranus_r_0 + 1.3374d-06*cos(5.30894739047d0 + 14.0146456805d0 * t)
        uranus_r_0 = uranus_r_0 + 1.41929d-06*cos(1.26972581554d0 + 159.1244246902d0 * t)
        uranus_r_0 = uranus_r_0 + 1.42894d-06*cos(2.07773752143d0 + 457.8783119439d0 * t)
        uranus_r_0 = uranus_r_0 + 1.46315d-06*cos(2.65664902119d0 + 465.9550667912d0 * t)
        uranus_r_0 = uranus_r_0 + 1.52408d-06*cos(4.64742446768d0 + 155.7829722581d0 * t)
        uranus_r_0 = uranus_r_0 + 1.53684d-06*cos(4.70659406659d0 + 543.0242872189d0 * t)
        uranus_r_0 = uranus_r_0 + 1.5375d-06*cos(4.27847681414d0 + 45.5766510387d0 * t)
        uranus_r_0 = uranus_r_0 + 1.5462d-06*cos(4.3204622812d0 + 760.25553592d0 * t)
        uranus_r_0 = uranus_r_0 + 1.56641d-06*cos(0.66304836778d0 + 220.4126424388d0 * t)
        uranus_r_0 = uranus_r_0 + 1.6114d-06*cos(3.82341391177d0 + 451.9404211107d0 * t)
        uranus_r_0 = uranus_r_0 + 1.61513d-06*cos(4.99545008738d0 + 73.8183907208d0 * t)
        uranus_r_0 = uranus_r_0 + 1.61678d-06*cos(3.27259601116d0 + 443.8636662634d0 * t)
        uranus_r_0 = uranus_r_0 + 1.64097d-06*cos(5.22527540372d0 + 67.3592350258d0 * t)
        uranus_r_0 = uranus_r_0 + 1.67462d-06*cos(4.92241597775d0 + 422.6660376129d0 * t)
        uranus_r_0 = uranus_r_0 + 1.68027d-06*cos(5.25810639105d0 + 518.6452648307d0 * t)
        uranus_r_0 = uranus_r_0 + 1.69454d-06*cos(4.04319823722d0 + 55.6591434561d0 * t)
        uranus_r_0 = uranus_r_0 + 1.70043d-06*cos(4.50995820508d0 + 288.0806940053d0 * t)
        uranus_r_0 = uranus_r_0 + 1.70447d-06*cos(4.94978757413d0 + 206.1855484372d0 * t)
        uranus_r_0 = uranus_r_0 + 1.7077d-06*cos(2.30927162659d0 + 98.8999885246d0 * t)
        uranus_r_0 = uranus_r_0 + 1.71718d-06*cos(5.21730232334d0 + 41.6444977756d0 * t)
        uranus_r_0 = uranus_r_0 + 1.75758d-06*cos(5.50822822216d0 + 7.1135470008d0 * t)
        uranus_r_0 = uranus_r_0 + 1.76136d-06*cos(1.95958319897d0 + 756.3233826569d0 * t)
        uranus_r_0 = uranus_r_0 + 1.78153d-06*cos(3.98026039043d0 + 10138.5039476437d0 * t)
        uranus_r_0 = uranus_r_0 + 1.79292d-06*cos(4.82405681293d0 + 366.485629295d0 * t)
        uranus_r_0 = uranus_r_0 + 1.82258d-06*cos(0.70728384467d0 + 391.1734682239d0 * t)
        uranus_r_0 = uranus_r_0 + 1.8233d-06*cos(0.78383856974d0 + 417.0369633204d0 * t)
        uranus_r_0 = uranus_r_0 + 1.87432d-06*cos(3.03529190348d0 + 135.5485514541d0 * t)
        uranus_r_0 = uranus_r_0 + 1.87768d-06*cos(2.04538775456d0 + 408.4389436113d0 * t)
        uranus_r_0 = uranus_r_0 + 1.88512d-06*cos(2.23588941288d0 + 5.4166259714d0 * t)
        uranus_r_0 = uranus_r_0 + 1.92095d-06*cos(5.76718231319d0 + 291.7040307277d0 * t)
        uranus_r_0 = uranus_r_0 + 1.94341d-06*cos(6.1169036471d0 + 414.0680179038d0 * t)
        uranus_r_0 = uranus_r_0 + 2.05398d-06*cos(2.30380942634d0 + 259.5088859231d0 * t)
        uranus_r_0 = uranus_r_0 + 2.11106d-06*cos(4.93079982424d0 + 103.0927742186d0 * t)
        uranus_r_0 = uranus_r_0 + 2.16776d-06*cos(3.42907414802d0 + 241.6102710893d0 * t)
        uranus_r_0 = uranus_r_0 + 2.19015d-06*cos(0.24790282027d0 + 294.6729761443d0 * t)
        uranus_r_0 = uranus_r_0 + 2.19938d-06*cos(2.96119055727d0 + 120.358249606d0 * t)
        uranus_r_0 = uranus_r_0 + 2.20458d-06*cos(0.1963349229d0 + 180.2738692309d0 * t)
        uranus_r_0 = uranus_r_0 + 2.24519d-06*cos(0.40677777819d0 + 114.3991069134d0 * t)
        uranus_r_0 = uranus_r_0 + 2.33546d-06*cos(4.4811700614d0 + 628.8515860501d0 * t)
        uranus_r_0 = uranus_r_0 + 2.33564d-06*cos(2.97074409938d0 + 46.2097904851d0 * t)
        uranus_r_0 = uranus_r_0 + 2.41128d-06*cos(1.60454142389d0 + 81.3738807063d0 * t)
        uranus_r_0 = uranus_r_0 + 2.45063d-06*cos(5.94905404273d0 + 20.6069278195d0 * t)
        uranus_r_0 = uranus_r_0 + 2.48277d-06*cos(1.06282887181d0 + 105.4922706636d0 * t)
        uranus_r_0 = uranus_r_0 + 2.49829d-06*cos(4.24205256241d0 + 75.3028634291d0 * t)
        uranus_r_0 = uranus_r_0 + 2.5576d-06*cos(1.1670789346d0 + 177.8743727859d0 * t)
        uranus_r_0 = uranus_r_0 + 2.62422d-06*cos(3.83652250971d0 + 831.1049812242d0 * t)
        uranus_r_0 = uranus_r_0 + 2.86972d-06*cos(1.8499033531d0 + 153.4953503977d0 * t)
        uranus_r_0 = uranus_r_0 + 2.92781d-06*cos(3.9952119483d0 + 72.3339180125d0 * t)
        uranus_r_0 = uranus_r_0 + 2.96328d-06*cos(4.21100245276d0 + 1364.7280995819d0 * t)
        uranus_r_0 = uranus_r_0 + 3.02051d-06*cos(0.13190003806d0 + 565.1156877467d0 * t)
        uranus_r_0 = uranus_r_0 + 3.05353d-06*cos(2.55534744586d0 + 6208.2942514241d0 * t)
        uranus_r_0 = uranus_r_0 + 3.05686d-06*cos(3.76108783519d0 + 344.7030453079d0 * t)
        uranus_r_0 = uranus_r_0 + 3.08102d-06*cos(3.92355394354d0 + 116.4260963429d0 * t)
        uranus_r_0 = uranus_r_0 + 3.20021d-06*cos(5.48625497747d0 + 14.977853527d0 * t)
        uranus_r_0 = uranus_r_0 + 3.23546d-06*cos(4.82899980859d0 + 195.1398481733d0 * t)
        uranus_r_0 = uranus_r_0 + 3.2566d-06*cos(4.71996698332d0 + 134.5853436076d0 * t)
        uranus_r_0 = uranus_r_0 + 3.5364d-06*cos(4.65717995107d0 + 329.8370663655d0 * t)
        uranus_r_0 = uranus_r_0 + 3.57721d-06*cos(4.71414305625d0 + 173.9422195228d0 * t)
        uranus_r_0 = uranus_r_0 + 3.58922d-06*cos(0.35213227553d0 + 426.598190876d0 * t)
        uranus_r_0 = uranus_r_0 + 3.59363d-06*cos(0.00868012078d0 + 35.4247226521d0 * t)
        uranus_r_0 = uranus_r_0 + 3.65158d-06*cos(5.59483211224d0 + 255.0554677982d0 * t)
        uranus_r_0 = uranus_r_0 + 3.67848d-06*cos(0.71159607058d0 + 125.9873238985d0 * t)
        uranus_r_0 = uranus_r_0 + 3.79715d-06*cos(0.05832815311d0 + 378.6432952517d0 * t)
        uranus_r_0 = uranus_r_0 + 3.86543d-06*cos(0.68619006966d0 + 230.5645708254d0 * t)
        uranus_r_0 = uranus_r_0 + 4.0541d-06*cos(6.12263257999d0 + 24.3790223882d0 * t)
        uranus_r_0 = uranus_r_0 + 4.10087d-06*cos(3.04968860441d0 + 404.5067903482d0 * t)
        uranus_r_0 = uranus_r_0 + 4.14331d-06*cos(0.09012800478d0 + 258.0244132148d0 * t)
        uranus_r_0 = uranus_r_0 + 4.20062d-06*cos(2.25393983318d0 + 81.0013736908d0 * t)
        uranus_r_0 = uranus_r_0 + 4.29314d-06*cos(3.08031550488d0 + 41.1019810544d0 * t)
        uranus_r_0 = uranus_r_0 + 4.35803d-06*cos(2.79445203085d0 + 75.7448064138d0 * t)
        uranus_r_0 = uranus_r_0 + 4.35943d-06*cos(2.10077211065d0 + 1514.2912967165d0 * t)
        uranus_r_0 = uranus_r_0 + 4.36291d-06*cos(2.08183813746d0 + 51.2057253312d0 * t)
        uranus_r_0 = uranus_r_0 + 4.36547d-06*cos(0.52802035072d0 + 209.3669421749d0 * t)
        uranus_r_0 = uranus_r_0 + 4.49439d-06*cos(0.27981733949d0 + 617.8058857862d0 * t)
        uranus_r_0 = uranus_r_0 + 4.54879d-06*cos(4.08364210459d0 + 99.1606209555d0 * t)
        uranus_r_0 = uranus_r_0 + 4.55043d-06*cos(2.59321186669d0 + 490.3340891794d0 * t)
        uranus_r_0 = uranus_r_0 + 4.63608d-06*cos(1.43448297993d0 + 297.6419215609d0 * t)
        uranus_r_0 = uranus_r_0 + 4.63938d-06*cos(2.35443114417d0 + 211.8146227297d0 * t)
        uranus_r_0 = uranus_r_0 + 4.7743d-06*cos(2.89397217998d0 + 39.3568759152d0 * t)
        uranus_r_0 = uranus_r_0 + 4.87532d-06*cos(0.06402454583d0 + 60.7669528868d0 * t)
        uranus_r_0 = uranus_r_0 + 4.95621d-06*cos(2.65094755989d0 + 200.7689224658d0 * t)
        uranus_r_0 = uranus_r_0 + 5.03096d-06*cos(5.83931251717d0 + 191.2076949102d0 * t)
        uranus_r_0 = uranus_r_0 + 5.15534d-06*cos(3.23274579379d0 + 284.1485407422d0 * t)
        uranus_r_0 = uranus_r_0 + 5.39825d-06*cos(6.20788667166d0 + 71.6002048296d0 * t)
        uranus_r_0 = uranus_r_0 + 5.42331d-06*cos(5.39481705077d0 + 278.5194664497d0 * t)
        uranus_r_0 = uranus_r_0 + 5.44539d-06*cos(5.69375108253d0 + 203.7378678824d0 * t)
        uranus_r_0 = uranus_r_0 + 5.48672d-06*cos(5.6281149697d0 + 3.1813937377d0 * t)
        uranus_r_0 = uranus_r_0 + 5.56672d-06*cos(1.07231961344d0 + 1059.3819301892d0 * t)
        uranus_r_0 = uranus_r_0 + 5.6987d-06*cos(1.6393093274d0 + 77.2292791221d0 * t)
        uranus_r_0 = uranus_r_0 + 5.75195d-06*cos(5.57862480486d0 + 2.4476805548d0 * t)
        uranus_r_0 = uranus_r_0 + 5.75656d-06*cos(5.89552672641d0 + 66.70484372d0 * t)
        uranus_r_0 = uranus_r_0 + 5.88d-06*cos(5.08252923316d0 + 186.2117600641d0 * t)
        uranus_r_0 = uranus_r_0 + 5.93798d-06*cos(4.50074517056d0 + 8.0767548473d0 * t)
        uranus_r_0 = uranus_r_0 + 5.93819d-06*cos(3.83805798523d0 + 32.1951448046d0 * t)
        uranus_r_0 = uranus_r_0 + 5.98231d-06*cos(0.35815291076d0 + 269.9214467406d0 * t)
        uranus_r_0 = uranus_r_0 + 6.30252d-06*cos(4.46146214548d0 + 275.5505210331d0 * t)
        uranus_r_0 = uranus_r_0 + 6.41914d-06*cos(2.71127457036d0 + 87.3117715395d0 * t)
        uranus_r_0 = uranus_r_0 + 6.51632d-06*cos(4.42340061551d0 + 18.1592472647d0 * t)
        uranus_r_0 = uranus_r_0 + 6.89708d-06*cos(3.08097059985d0 + 69.3649725959d0 * t)
        uranus_r_0 = uranus_r_0 + 6.99574d-06*cos(0.03987168068d0 + 143.6253063014d0 * t)
        uranus_r_0 = uranus_r_0 + 7.05482d-06*cos(0.45521177725d0 + 835.0371344873d0 * t)
        uranus_r_0 = uranus_r_0 + 7.10134d-06*cos(4.48972171999d0 + 293.188503436d0 * t)
        uranus_r_0 = uranus_r_0 + 7.10276d-06*cos(4.21967260022d0 + 381.6122406683d0 * t)
        uranus_r_0 = uranus_r_0 + 7.10449d-06*cos(5.41605755095d0 + 218.4069048687d0 * t)
        uranus_r_0 = uranus_r_0 + 7.18559d-06*cos(4.00047509264d0 + 128.9562693151d0 * t)
        uranus_r_0 = uranus_r_0 + 7.59004d-06*cos(2.13700057433d0 + 692.5874843535d0 * t)
        uranus_r_0 = uranus_r_0 + 8.44931d-06*cos(0.12943398585d0 + 82.8583534146d0 * t)
        uranus_r_0 = uranus_r_0 + 9.00363d-06*cos(2.37315925843d0 + 74.8934731519d0 * t)
        uranus_r_0 = uranus_r_0 + 9.06468d-06*cos(5.62025869483d0 + 74.6697239827d0 * t)
        uranus_r_0 = uranus_r_0 + 1.071957d-05*cos(1.74286714339d0 + 528.2064923863d0 * t)
        uranus_r_0 = uranus_r_0 + 1.090681d-05*cos(4.15393813845d0 + 77.962992305d0 * t)
        uranus_r_0 = uranus_r_0 + 1.197439d-05*cos(2.52185744943d0 + 145.6310438715d0 * t)
        uranus_r_0 = uranus_r_0 + 1.228314d-05*cos(5.9770333104d0 + 59.8037450403d0 * t)
        uranus_r_0 = uranus_r_0 + 1.248054d-05*cos(4.88984353601d0 + 479.2883889155d0 * t)
        uranus_r_0 = uranus_r_0 + 1.248978d-05*cos(5.44027380866d0 + 54.1746707478d0 * t)
        uranus_r_0 = uranus_r_0 + 1.249958d-05*cos(6.24484546141d0 + 160.6088973985d0 * t)
        uranus_r_0 = uranus_r_0 + 1.40139d-05*cos(1.39084023521d0 + 265.9892934775d0 * t)
        uranus_r_0 = uranus_r_0 + 1.403717d-05*cos(5.63563637532d0 + 4.4534181249d0 * t)
        uranus_r_0 = uranus_r_0 + 1.408514d-05*cos(4.41921749601d0 + 462.0229135281d0 * t)
        uranus_r_0 = uranus_r_0 + 1.438838d-05*cos(1.53046287618d0 + 447.7958195265d0 * t)
        uranus_r_0 = uranus_r_0 + 1.477112d-05*cos(4.32214690647d0 + 256.5399405065d0 * t)
        uranus_r_0 = uranus_r_0 + 1.481746d-05*cos(5.66203046912d0 + 152.5321425512d0 * t)
        uranus_r_0 = uranus_r_0 + 1.506952d-05*cos(5.24186185583d0 + 181.7583419392d0 * t)
        uranus_r_0 = uranus_r_0 + 1.563447d-05*cos(1.47917835549d0 + 112.9146342051d0 * t)
        uranus_r_0 = uranus_r_0 + 1.58485d-05*cos(3.16267171762d0 + 225.8292684102d0 * t)
        uranus_r_0 = uranus_r_0 + 1.63243d-05*cos(4.23061792837d0 + 22.0914005278d0 * t)
        uranus_r_0 = uranus_r_0 + 1.64292d-05*cos(0.35564102554d0 + 67.6680515665d0 * t)
        uranus_r_0 = uranus_r_0 + 1.655866d-05*cos(1.96431297431d0 + 79.2350166922d0 * t)
        uranus_r_0 = uranus_r_0 + 1.82956d-05*cos(4.01105771632d0 + 68.8437077341d0 * t)
        uranus_r_0 = uranus_r_0 + 1.848655d-05*cos(2.91111759376d0 + 909.8187330546d0 * t)
        uranus_r_0 = uranus_r_0 + 1.96251d-05*cos(5.24342224065d0 + 84.3428261229d0 * t)
        uranus_r_0 = uranus_r_0 + 1.962974d-05*cos(0.0411473912d0 + 221.3758502853d0 * t)
        uranus_r_0 = uranus_r_0 + 1.979394d-05*cos(6.12836181686d0 + 106.9767433719d0 * t)
        uranus_r_0 = uranus_r_0 + 2.182572d-05*cos(2.94040431638d0 + 305.3461693927d0 * t)
        uranus_r_0 = uranus_r_0 + 2.36355d-05*cos(0.44253328372d0 + 554.0699874828d0 * t)
        uranus_r_0 = uranus_r_0 + 2.538032d-05*cos(4.85457831993d0 + 131.4039498699d0 * t)
        uranus_r_0 = uranus_r_0 + 2.865128d-05*cos(0.30996903761d0 + 12.5301729722d0 * t)
        uranus_r_0 = uranus_r_0 + 2.937799d-05*cos(3.6765745093d0 + 140.001969579d0 * t)
        uranus_r_0 = uranus_r_0 + 2.940492d-05*cos(2.14637460319d0 + 137.0330241624d0 * t)
        uranus_r_0 = uranus_r_0 + 2.942239d-05*cos(0.42393808854d0 + 299.1263942692d0 * t)
        uranus_r_0 = uranus_r_0 + 2.962641d-05*cos(0.82977991995d0 + 56.6223513026d0 * t)
        uranus_r_0 = uranus_r_0 + 3.101743d-05*cos(4.14031063896d0 + 219.891377577d0 * t)
        uranus_r_0 = uranus_r_0 + 3.686787d-05*cos(2.48718116535d0 + 453.424893819d0 * t)
        uranus_r_0 = uranus_r_0 + 3.781219d-05*cos(3.45840272873d0 + 456.3938392356d0 * t)
        uranus_r_0 = uranus_r_0 + 3.801606d-05*cos(6.10985558505d0 + 184.7272873558d0 * t)
        uranus_r_0 = uranus_r_0 + 3.919476d-05*cos(4.25015288873d0 + 39.6175083461d0 * t)
        uranus_r_0 = uranus_r_0 + 4.079167d-05*cos(3.22064788674d0 + 340.7708920448d0 * t)
        uranus_r_0 = uranus_r_0 + 5.238103d-05*cos(2.62960141797d0 + 33.6796175129d0 * t)
        uranus_r_0 = uranus_r_0 + 5.444878d-05*cos(5.10575635361d0 + 145.1097790097d0 * t)
        uranus_r_0 = uranus_r_0 + 5.524133d-05*cos(3.11499484161d0 + 9.5612275556d0 * t)
        uranus_r_0 = uranus_r_0 + 6.04637d-05*cos(5.67960948357d0 + 78.7137518304d0 * t)
        uranus_r_0 = uranus_r_0 + 7.329454d-05*cos(3.9727752784d0 + 183.2428146475d0 * t)
        uranus_r_0 = uranus_r_0 + 7.449125d-05*cos(0.79491905956d0 + 351.8165923087d0 * t)
        uranus_r_0 = uranus_r_0 + 8.402147d-05*cos(5.03877516489d0 + 415.5524906121d0 * t)
        uranus_r_0 = uranus_r_0 + 8.42055d-05*cos(5.25350716616d0 + 222.8603229936d0 * t)
        uranus_r_0 = uranus_r_0 + 9.111446d-05*cos(4.99638600045d0 + 62.2514255951d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00010792699d0*cos(1.42104858472d0 + 213.299095438d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00011494701d0*cos(0.43774027872d0 + 65.2203710117d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00011696085d0*cos(3.29825599114d0 + 3.9321532631d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00011852996d0*cos(0.99342814582d0 + 52.6901980395d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00011959355d0*cos(1.75044072173d0 + 984.6003316219d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00012328151d0*cos(5.96039150918d0 + 127.4717966068d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00012896507d0*cos(2.62154018241d0 + 111.4301614968d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00014701566d0*cos(4.90434406648d0 + 108.4612160802d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00015502809d0*cos(5.35405037603d0 + 38.1330356378d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00017900561d0*cos(0.55455488605d0 + 2.9689454166d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00020471584d0*cos(1.555889615d0 + 202.2533951741d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00020473163d0*cos(2.79639811626d0 + 70.3281804424d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00022637152d0*cos(0.72519137745d0 + 529.6909650946d0 * t)
        uranus_r_0 = uranus_r_0 + 0.0002562036d0*cos(5.25656292802d0 + 380.12776796d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00025785805d0*cos(3.78537741503d0 + 85.8272988312d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00029156264d0*cos(3.18056174556d0 + 77.7505439839d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00030348875d0*cos(0.70100446346d0 + 151.0476698429d0 * t)
        uranus_r_0 = uranus_r_0 + 0.0003675516d0*cos(3.88648934736d0 + 146.594251718d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00039009624d0*cos(1.66971128869d0 + 70.8494453042d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00039025681d0*cos(3.36234710692d0 + 277.0349937414d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00046677322d0*cos(1.39976563936d0 + 35.1640902212d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00071424265d0*cos(4.24509327405d0 + 224.3447957019d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00089805842d0*cos(3.66105366329d0 + 109.9456887885d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00093192359d0*cos(0.17437193645d0 + 36.6485629295d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00143705902d0*cos(1.38368574483d0 + 11.0457002639d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00161858251d0*cos(2.79137863469d0 + 148.0787244263d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00190521915d0*cos(1.99809364502d0 + 1.4844727083d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00243508222d0*cos(1.57086595074d0 + 71.8126531507d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00338525522d0*cos(1.58002682946d0 + 138.5174968707d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00496404171d0*cos(1.40139934716d0 + 454.9093665273d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00602248144d0*cos(3.86003820462d0 + 63.7358983034d0 * t)
        uranus_r_0 = uranus_r_0 + 0.00649321851d0*cos(4.52247298119d0 + 76.2660712756d0 * t)
        uranus_r_0 = uranus_r_0 + 0.02055653495d0*cos(1.78295170028d0 + 149.5631971346d0 * t)
        uranus_r_0 = uranus_r_0 + 0.03440835545d0*cos(0.32836098991d0 + 73.297125859d0 * t)
        uranus_r_0 = uranus_r_0 + 0.88784984055d0*cos(5.60377526994d0 + 74.7815985673d0 * t)
        uranus_r_0 = uranus_r_0 + 19.21264847881d0*cos(0.0d0 + 0.0d0 * t)

        uranus_r_1 = uranus_r_1 + 1.00209d-06*cos(4.94084867643d0 + 120.358249606d0 * t)
        uranus_r_1 = uranus_r_1 + 1.03739d-06*cos(2.57553519741d0 + 191.2076949102d0 * t)
        uranus_r_1 = uranus_r_1 + 1.03862d-06*cos(1.81622936156d0 + 72.3339180125d0 * t)
        uranus_r_1 = uranus_r_1 + 1.04218d-06*cos(2.92152185788d0 + 134.5853436076d0 * t)
        uranus_r_1 = uranus_r_1 + 1.04772d-06*cos(4.43616414428d0 + 305.3461693927d0 * t)
        uranus_r_1 = uranus_r_1 + 1.05741d-06*cos(0.17067407327d0 + 79.2350166922d0 * t)
        uranus_r_1 = uranus_r_1 + 1.06419d-06*cos(0.69799543514d0 + 2.4476805548d0 * t)
        uranus_r_1 = uranus_r_1 + 1.06679d-06*cos(1.22996874093d0 + 225.8292684102d0 * t)
        uranus_r_1 = uranus_r_1 + 1.17171d-06*cos(0.39649791652d0 + 87.3117715395d0 * t)
        uranus_r_1 = uranus_r_1 + 1.27913d-06*cos(2.40333045173d0 + 39.6175083461d0 * t)
        uranus_r_1 = uranus_r_1 + 1.37012d-06*cos(0.40323866041d0 + 195.1398481733d0 * t)
        uranus_r_1 = uranus_r_1 + 1.50563d-06*cos(1.98966326297d0 + 54.1746707478d0 * t)
        uranus_r_1 = uranus_r_1 + 1.53102d-06*cos(5.21761881347d0 + 209.3669421749d0 * t)
        uranus_r_1 = uranus_r_1 + 1.62563d-06*cos(4.3405435361d0 + 33.6796175129d0 * t)
        uranus_r_1 = uranus_r_1 + 1.88515d-06*cos(4.41307507326d0 + 265.9892934775d0 * t)
        uranus_r_1 = uranus_r_1 + 1.96179d-06*cos(4.77152996605d0 + 299.1263942692d0 * t)
        uranus_r_1 = uranus_r_1 + 2.00648d-06*cos(1.24861003313d0 + 69.3649725959d0 * t)
        uranus_r_1 = uranus_r_1 + 2.05946d-06*cos(1.53379817229d0 + 284.1485407422d0 * t)
        uranus_r_1 = uranus_r_1 + 2.11691d-06*cos(0.68027381802d0 + 111.4301614968d0 * t)
        uranus_r_1 = uranus_r_1 + 2.2171d-06*cos(3.64727173951d0 + 137.0330241624d0 * t)
        uranus_r_1 = uranus_r_1 + 2.24731d-06*cos(3.90961468562d0 + 160.6088973985d0 * t)
        uranus_r_1 = uranus_r_1 + 2.34153d-06*cos(0.27825220612d0 + 108.4612160802d0 * t)
        uranus_r_1 = uranus_r_1 + 2.3829d-06*cos(2.04879982674d0 + 269.9214467406d0 * t)
        uranus_r_1 = uranus_r_1 + 2.54591d-06*cos(3.50411592815d0 + 38.1330356378d0 * t)
        uranus_r_1 = uranus_r_1 + 2.55585d-06*cos(2.95695013627d0 + 84.3428261229d0 * t)
        uranus_r_1 = uranus_r_1 + 2.59465d-06*cos(3.92053708924d0 + 59.8037450403d0 * t)
        uranus_r_1 = uranus_r_1 + 2.68913d-06*cos(6.24069521597d0 + 340.7708920448d0 * t)
        uranus_r_1 = uranus_r_1 + 2.72355d-06*cos(3.38363105223d0 + 222.8603229936d0 * t)
        uranus_r_1 = uranus_r_1 + 3.388d-06*cos(2.53820897704d0 + 18.1592472647d0 * t)
        uranus_r_1 = uranus_r_1 + 3.48345d-06*cos(1.74874852104d0 + 71.6002048296d0 * t)
        uranus_r_1 = uranus_r_1 + 3.72947d-06*cos(5.05141251694d0 + 529.6909650946d0 * t)
        uranus_r_1 = uranus_r_1 + 3.80908d-06*cos(3.85089591694d0 + 3.1813937377d0 * t)
        uranus_r_1 = uranus_r_1 + 4.05881d-06*cos(1.229617276d0 + 22.0914005278d0 * t)
        uranus_r_1 = uranus_r_1 + 4.44352d-06*cos(2.15558291251d0 + 67.6680515665d0 * t)
        uranus_r_1 = uranus_r_1 + 4.6008d-06*cos(4.22302465979d0 + 12.5301729722d0 * t)
        uranus_r_1 = uranus_r_1 + 4.87336d-06*cos(0.70614146398d0 + 380.12776796d0 * t)
        uranus_r_1 = uranus_r_1 + 4.9428d-06*cos(0.46291078127d0 + 145.6310438715d0 * t)
        uranus_r_1 = uranus_r_1 + 5.27794d-06*cos(5.15136007084d0 + 2.9689454166d0 * t)
        uranus_r_1 = uranus_r_1 + 5.30364d-06*cos(5.91655309045d0 + 213.299095438d0 * t)
        uranus_r_1 = uranus_r_1 + 5.61839d-06*cos(2.7177815898d0 + 462.0229135281d0 * t)
        uranus_r_1 = uranus_r_1 + 5.7471d-06*cos(3.23070708457d0 + 447.7958195265d0 * t)
        uranus_r_1 = uranus_r_1 + 6.04362d-06*cos(0.90717667985d0 + 984.6003316219d0 * t)
        uranus_r_1 = uranus_r_1 + 6.23602d-06*cos(0.8625307382d0 + 9.5612275556d0 * t)
        uranus_r_1 = uranus_r_1 + 6.46851d-06*cos(4.4729042291d0 + 70.3281804424d0 * t)
        uranus_r_1 = uranus_r_1 + 6.8747d-06*cos(2.49912565674d0 + 77.962992305d0 * t)
        uranus_r_1 = uranus_r_1 + 7.44445d-06*cos(3.07640148939d0 + 35.1640902212d0 * t)
        uranus_r_1 = uranus_r_1 + 8.61867d-06*cos(5.05530802218d0 + 351.8165923087d0 * t)
        uranus_r_1 = uranus_r_1 + 9.92085d-06*cos(2.17168865909d0 + 65.2203710117d0 * t)
        uranus_r_1 = uranus_r_1 + 1.032731d-05*cos(0.26459059027d0 + 131.4039498699d0 * t)
        uranus_r_1 = uranus_r_1 + 1.22822d-05*cos(1.04703640149d0 + 62.2514255951d0 * t)
        uranus_r_1 = uranus_r_1 + 1.403237d-05*cos(1.36985349744d0 + 77.7505439839d0 * t)
        uranus_r_1 = uranus_r_1 + 1.413112d-05*cos(4.57461892062d0 + 202.2533951741d0 * t)
        uranus_r_1 = uranus_r_1 + 1.489525d-05*cos(2.67559167316d0 + 56.6223513026d0 * t)
        uranus_r_1 = uranus_r_1 + 1.508028d-05*cos(5.05996325425d0 + 151.0476698429d0 * t)
        uranus_r_1 = uranus_r_1 + 1.583766d-05*cos(1.43045619196d0 + 78.7137518304d0 * t)
        uranus_r_1 = uranus_r_1 + 1.644719d-05*cos(2.65349313124d0 + 127.4717966068d0 * t)
        uranus_r_1 = uranus_r_1 + 2.429445d-05*cos(3.99440122468d0 + 52.6901980395d0 * t)
        uranus_r_1 = uranus_r_1 + 2.564251d-05*cos(0.98076846352d0 + 148.0787244263d0 * t)
        uranus_r_1 = uranus_r_1 + 3.06001d-05*cos(0.15321893225d0 + 1.4844727083d0 * t)
        uranus_r_1 = uranus_r_1 + 3.228835d-05*cos(5.25499602896d0 + 3.9321532631d0 * t)
        uranus_r_1 = uranus_r_1 + 3.505936d-05*cos(2.58354048851d0 + 138.5174968707d0 * t)
        uranus_r_1 = uranus_r_1 + 3.578446d-05*cos(2.31160668309d0 + 224.3447957019d0 * t)
        uranus_r_1 = uranus_r_1 + 3.926694d-05*cos(3.15513991323d0 + 71.8126531507d0 * t)
        uranus_r_1 = uranus_r_1 + 4.2438d-05*cos(1.41692350371d0 + 85.8272988312d0 * t)
        uranus_r_1 = uranus_r_1 + 7.496775d-05*cos(0.42360033283d0 + 73.297125859d0 * t)
        uranus_r_1 = uranus_r_1 + 0.00011405346d0*cos(0.01848461561d0 + 70.8494453042d0 * t)
        uranus_r_1 = uranus_r_1 + 0.00020857262d0*cos(5.24625494219d0 + 11.0457002639d0 * t)
        uranus_r_1 = uranus_r_1 + 0.00021468152d0*cos(2.6017670427d0 + 76.2660712756d0 * t)
        uranus_r_1 = uranus_r_1 + 0.00024059649d0*cos(3.14159265359d0 + 0.0d0 * t)
        uranus_r_1 = uranus_r_1 + 0.00068626972d0*cos(6.13411265052d0 + 149.5631971346d0 * t)
        uranus_r_1 = uranus_r_1 + 0.00071212085d0*cos(6.22601006675d0 + 63.7358983034d0 * t)
        uranus_r_1 = uranus_r_1 + 0.0147989637d0*cos(3.67205705317d0 + 74.7815985673d0 * t)
        uranus_r_1=uranus_r_1*t;

        uranus_r_2 = uranus_r_2 + 1.03858d-06*cos(3.58561789629d0 + 71.6002048296d0 * t)
        uranus_r_2 = uranus_r_2 + 1.1269d-06*cos(1.01361852218d0 + 462.0229135281d0 * t)
        uranus_r_2 = uranus_r_2 + 1.14066d-06*cos(4.7874187396d0 + 145.6310438715d0 * t)
        uranus_r_2 = uranus_r_2 + 1.17452d-06*cos(4.93414907433d0 + 447.7958195265d0 * t)
        uranus_r_2 = uranus_r_2 + 1.28834d-06*cos(2.08146849515d0 + 3.1813937377d0 * t)
        uranus_r_2 = uranus_r_2 + 1.48554d-06*cos(4.89840863841d0 + 127.4717966068d0 * t)
        uranus_r_2 = uranus_r_2 + 2.05449d-06*cos(3.24758017121d0 + 78.7137518304d0 * t)
        uranus_r_2 = uranus_r_2 + 2.15788d-06*cos(0.84812474187d0 + 77.962992305d0 * t)
        uranus_r_2 = uranus_r_2 + 2.19674d-06*cos(1.96418942891d0 + 131.4039498699d0 * t)
        uranus_r_2 = uranus_r_2 + 2.72898d-06*cos(3.84707823651d0 + 138.5174968707d0 * t)
        uranus_r_2 = uranus_r_2 + 2.86579d-06*cos(3.5335768327d0 + 73.297125859d0 * t)
        uranus_r_2 = uranus_r_2 + 2.92097d-06*cos(0.20389012095d0 + 52.6901980395d0 * t)
        uranus_r_2 = uranus_r_2 + 3.89945d-06*cos(5.52673426377d0 + 85.8272988312d0 * t)
        uranus_r_2 = uranus_r_2 + 3.90371d-06*cos(4.49605283502d0 + 56.6223513026d0 * t)
        uranus_r_2 = uranus_r_2 + 4.61009d-06*cos(0.76676632849d0 + 3.9321532631d0 * t)
        uranus_r_2 = uranus_r_2 + 5.00429d-06*cos(6.17229032223d0 + 76.2660712756d0 * t)
        uranus_r_2 = uranus_r_2 + 7.70188d-06*cos(0.0d0 + 0.0d0 * t)
        uranus_r_2 = uranus_r_2 + 1.433755d-05*cos(3.52119917947d0 + 149.5631971346d0 * t)
        uranus_r_2 = uranus_r_2 + 1.649559d-05*cos(3.0966007898d0 + 11.0457002639d0 * t)
        uranus_r_2 = uranus_r_2 + 1.681903d-05*cos(4.64833551727d0 + 70.8494453042d0 * t)
        uranus_r_2 = uranus_r_2 + 4.727037d-05*cos(1.69901641488d0 + 63.7358983034d0 * t)
        uranus_r_2 = uranus_r_2 + 0.00022439904d0*cos(0.6995311876d0 + 74.7815985673d0 * t)
        uranus_r_2=uranus_r_2*t*t;

        uranus_r_3 = uranus_r_3 + 1.04527d-06*cos(0.95807937648d0 + 11.0457002639d0 * t)
        uranus_r_3 = uranus_r_3 + 1.96408d-06*cos(2.98004616318d0 + 70.8494453042d0 * t)
        uranus_r_3 = uranus_r_3 + 2.12367d-06*cos(3.34255734999d0 + 63.7358983034d0 * t)
        uranus_r_3 = uranus_r_3 + 1.164382d-05*cos(4.73453291602d0 + 74.7815985673d0 * t)
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

        venus_b_0 = venus_b_0 + 1.07971d-06*cos(4.53903677647d0 + 22003.9146348698d0 * t)
        venus_b_0 = venus_b_0 + 1.19507d-06*cos(3.70468812804d0 + 2352.8661537718d0 * t)
        venus_b_0 = venus_b_0 + 1.29973d-06*cos(3.67152483651d0 + 9437.762934887d0 * t)
        venus_b_0 = venus_b_0 + 1.37788d-06*cos(0.86020146523d0 + 1577.3435424478d0 * t)
        venus_b_0 = venus_b_0 + 1.49458d-06*cos(6.25390296069d0 + 18073.7049386502d0 * t)
        venus_b_0 = venus_b_0 + 1.011392d-05*cos(1.08946123021d0 + 30639.856638633d0 * t)
        venus_b_0 = venus_b_0 + 0.00032814918d0*cos(3.14159265359d0 + 0.0d0 * t)
        venus_b_0 = venus_b_0 + 0.00040107978d0*cos(1.14737178106d0 + 20426.571092422d0 * t)
        venus_b_0 = venus_b_0 + 0.05923638472d0*cos(0.26702775813d0 + 10213.285546211d0 * t)

        venus_b_1 = venus_b_1 + 1.96586d-06*cos(2.53001197486d0 + 30639.856638633d0 * t)
        venus_b_1 = venus_b_1 + 1.99162d-06*cos(0.0d0 + 0.0d0 * t)
        venus_b_1 = venus_b_1 + 4.3801d-05*cos(3.38615711591d0 + 20426.571092422d0 * t)
        venus_b_1 = venus_b_1 + 0.00513347602d0*cos(1.80364310797d0 + 10213.285546211d0 * t)
        venus_b_1=venus_b_1*t;

        venus_b_2 = venus_b_2 + 1.73164d-06*cos(5.25563766915d0 + 20426.571092422d0 * t)
        venus_b_2 = venus_b_2 + 2.81739d-06*cos(0.0d0 + 0.0d0 * t)
        venus_b_2 = venus_b_2 + 0.00022377665d0*cos(3.38509143877d0 + 10213.285546211d0 * t)
        venus_b_2=venus_b_2*t*t;

        venus_b_3 = venus_b_3 + 6.46671d-06*cos(4.99166565277d0 + 10213.285546211d0 * t)
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

        venus_l_0 = venus_l_0 + 1.05547d-06*cos(1.53721191253d0 + 801.8209311238d0 * t)
        venus_l_0 = venus_l_0 + 1.27907d-06*cos(0.96209822685d0 + 5661.3320491522d0 * t)
        venus_l_0 = venus_l_0 + 1.28263d-06*cos(4.22604493736d0 + 20.7753954924d0 * t)
        venus_l_0 = venus_l_0 + 1.55464d-06*cos(5.57043888948d0 + 19651.048481098d0 * t)
        venus_l_0 = venus_l_0 + 1.79695d-06*cos(4.65337915578d0 + 1109.3785520934d0 * t)
        venus_l_0 = venus_l_0 + 2.31937d-06*cos(3.16251057072d0 + 9153.9036160218d0 * t)
        venus_l_0 = venus_l_0 + 3.26221d-06*cos(4.59056473097d0 + 10404.7338123226d0 * t)
        venus_l_0 = venus_l_0 + 3.26967d-06*cos(5.67736583705d0 + 5507.5532386674d0 * t)
        venus_l_0 = venus_l_0 + 4.29498d-06*cos(3.58642859752d0 + 19367.1891622328d0 * t)
        venus_l_0 = venus_l_0 + 4.99915d-06*cos(4.12340210074d0 + 15720.8387848784d0 * t)
        venus_l_0 = venus_l_0 + 5.84836d-06*cos(3.99839884762d0 + 191.4482661116d0 * t)
        venus_l_0 = venus_l_0 + 7.07676d-06*cos(1.06466707214d0 + 775.522611324d0 * t)
        venus_l_0 = venus_l_0 + 7.6138d-06*cos(1.9501470212d0 + 529.6909650946d0 * t)
        venus_l_0 = venus_l_0 + 7.69314d-06*cos(0.81629615911d0 + 9437.762934887d0 * t)
        venus_l_0 = venus_l_0 + 1.200521d-05*cos(6.15357115319d0 + 30639.856638633d0 * t)
        venus_l_0 = venus_l_0 + 1.317108d-05*cos(5.18668219093d0 + 26.2983197998d0 * t)
        venus_l_0 = venus_l_0 + 1.438322d-05*cos(4.15745043958d0 + 9683.5945811164d0 * t)
        venus_l_0 = venus_l_0 + 1.664069d-05*cos(4.2501893503d0 + 1577.3435424478d0 * t)
        venus_l_0 = venus_l_0 + 2.372061d-05*cos(2.99377539568d0 + 3930.2096962196d0 * t)
        venus_l_0 = venus_l_0 + 3.455732d-05*cos(2.69964470778d0 + 11790.6290886588d0 * t)
        venus_l_0 = venus_l_0 + 5.477201d-05*cos(4.41630652531d0 + 7860.4193924392d0 * t)
        venus_l_0 = venus_l_0 + 0.00089891645d0*cos(5.30650048468d0 + 20426.571092422d0 * t)
        venus_l_0 = venus_l_0 + 0.01353968419d0*cos(5.59313319619d0 + 10213.285546211d0 * t)
        venus_l_0 = venus_l_0 + 3.17614666774d0*cos(0.0d0 + 0.0d0 * t)

        venus_l_1 = venus_l_1 + 1.51669d-06*cos(6.10635282369d0 + 1577.3435424478d0 * t)
        venus_l_1 = venus_l_1 + 1.73904d-06*cos(2.65535879443d0 + 26.2983197998d0 * t)
        venus_l_1 = venus_l_1 + 2.13374d-06*cos(1.79547929368d0 + 30639.856638633d0 * t)
        venus_l_1 = venus_l_1 + 0.00014444977d0*cos(0.51624564679d0 + 20426.571092422d0 * t)
        venus_l_1 = venus_l_1 + 0.00095707712d0*cos(2.46424448979d0 + 10213.285546211d0 * t)
        venus_l_1 = venus_l_1 + 10213.52943052898d0*cos(0.0d0 + 0.0d0 * t)
        venus_l_1=venus_l_1*t;

        venus_l_2 = venus_l_2 + 1.33788d-05*cos(2.02011286082d0 + 20426.571092422d0 * t)
        venus_l_2 = venus_l_2 + 3.89146d-05*cos(0.34514360047d0 + 10213.285546211d0 * t)
        venus_l_2 = venus_l_2 + 0.00054127076d0*cos(0.0d0 + 0.0d0 * t)
        venus_l_2=venus_l_2*t*t;

        venus_l_3 = venus_l_3 + 1.35742d-06*cos(4.80389020993d0 + 10213.285546211d0 * t)
        venus_l_3=venus_l_3*t*t*t;

        venus_l_4 = venus_l_4 + 1.14016d-06*cos(3.14159265359d0 + 0.0d0 * t)
        venus_l_4=venus_l_4*t*t*t*t;

        r = venus_l_4+venus_l_3+venus_l_2+venus_l_1+venus_l_0
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

        venus_r_0 = venus_r_0 + 1.19467d-06*cos(3.01975365264d0 + 10404.7338123226d0 * t)
        venus_r_0 = venus_r_0 + 1.25896d-06*cos(2.72769833559d0 + 1577.3435424478d0 * t)
        venus_r_0 = venus_r_0 + 2.21983d-06*cos(2.01346776772d0 + 19367.1891622328d0 * t)
        venus_r_0 = venus_r_0 + 2.37455d-06*cos(2.55135903978d0 + 15720.8387848784d0 * t)
        venus_r_0 = venus_r_0 + 2.63616d-06*cos(5.5293818592d0 + 9437.762934887d0 * t)
        venus_r_0 = venus_r_0 + 3.73958d-06*cos(1.42314837063d0 + 3930.2096962196d0 * t)
        venus_r_0 = venus_r_0 + 4.98399d-06*cos(2.58682187717d0 + 9683.5945811164d0 * t)
        venus_r_0 = venus_r_0 + 1.378048d-05*cos(1.128465906d0 + 11790.6290886588d0 * t)
        venus_r_0 = venus_r_0 + 1.632093d-05*cos(2.84548851892d0 + 7860.4193924392d0 * t)
        venus_r_0 = venus_r_0 + 1.658058d-05*cos(4.90206728012d0 + 20426.571092422d0 * t)
        venus_r_0 = venus_r_0 + 0.00489824185d0*cos(4.02151832268d0 + 10213.285546211d0 * t)
        venus_r_0 = venus_r_0 + 0.72334820905d0*cos(0.0d0 + 0.0d0 * t)

        venus_r_1 = venus_r_1 + 2.33998d-06*cos(3.14159265359d0 + 0.0d0 * t)
        venus_r_1 = venus_r_1 + 2.34203d-06*cos(1.77224942714d0 + 20426.571092422d0 * t)
        venus_r_1 = venus_r_1 + 0.00034551039d0*cos(0.89198710598d0 + 10213.285546211d0 * t)
        venus_r_1=venus_r_1*t;

        venus_r_2 = venus_r_2 + 1.406587d-05*cos(5.0636639519d0 + 10213.285546211d0 * t)
        venus_r_2=venus_r_2*t*t;

        r = venus_r_2+venus_r_1+venus_r_0
    end function

end module VSOP87D_Xsmall
