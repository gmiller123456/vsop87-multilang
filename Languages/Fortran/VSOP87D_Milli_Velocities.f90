!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

module VSOP87D_Milli_Velocities
    implicit none

    contains
    subroutine VSOP87D_Milli_getEarthV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_b(t) / 365250.0
        result(2)=earth_l(t) / 365250.0
        result(3)=earth_r(t) / 365250.0
    end subroutine

    subroutine VSOP87D_Milli_getJupiterV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_b(t) / 365250.0
        result(2)=jupiter_l(t) / 365250.0
        result(3)=jupiter_r(t) / 365250.0
    end subroutine

    subroutine VSOP87D_Milli_getMarsV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_b(t) / 365250.0
        result(2)=mars_l(t) / 365250.0
        result(3)=mars_r(t) / 365250.0
    end subroutine

    subroutine VSOP87D_Milli_getMercuryV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_b(t) / 365250.0
        result(2)=mercury_l(t) / 365250.0
        result(3)=mercury_r(t) / 365250.0
    end subroutine

    subroutine VSOP87D_Milli_getNeptuneV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_b(t) / 365250.0
        result(2)=neptune_l(t) / 365250.0
        result(3)=neptune_r(t) / 365250.0
    end subroutine

    subroutine VSOP87D_Milli_getSaturnV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_b(t) / 365250.0
        result(2)=saturn_l(t) / 365250.0
        result(3)=saturn_r(t) / 365250.0
    end subroutine

    subroutine VSOP87D_Milli_getUranusV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_b(t) / 365250.0
        result(2)=uranus_l(t) / 365250.0
        result(3)=uranus_r(t) / 365250.0
    end subroutine

    subroutine VSOP87D_Milli_getVenusV(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=venus_b(t) / 365250.0
        result(2)=venus_l(t) / 365250.0
        result(3)=venus_r(t) / 365250.0
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

        r = 0
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

        earth_l_0 = earth_l_0 -(t**0)*1.199167d-05*1577.3435424478d0*sin(1.10962944315d0 + 1577.3435424478d0 * t)
        earth_l_0 = earth_l_0 -(t**0)*1.273166d-05*529.6909650946d0*sin(2.03709655772d0 + 529.6909650946d0 * t)
        earth_l_0 = earth_l_0 -(t**0)*1.324292d-05*11506.7697697936d0*sin(0.74246356352d0 + 11506.7697697936d0 * t)
        earth_l_0 = earth_l_0 -(t**0)*2.342687d-05*3930.2096962196d0*sin(6.13516237631d0 + 3930.2096962196d0 * t)
        earth_l_0 = earth_l_0 -(t**0)*2.676218d-05*7860.4193924392d0*sin(4.41808351397d0 + 7860.4193924392d0 * t)
        earth_l_0 = earth_l_0 -(t**0)*3.135896d-05*77713.7714681205d0*sin(3.62767041758d0 + 77713.7714681205d0 * t)
        earth_l_0 = earth_l_0 -(t**0)*3.417571d-05*3.523118349d0*sin(2.82886579606d0 + 3.523118349d0 * t)
        earth_l_0 = earth_l_0 -(t**0)*3.497056d-05*5753.3848848968d0*sin(2.74411800971d0 + 5753.3848848968d0 * t)
        earth_l_0 = earth_l_0 -(t**0)*0.00034894275d0*12566.1516999828d0*sin(4.62610241759d0 + 12566.1516999828d0 * t)
        earth_l_0 = earth_l_0 -(t**0)*0.03341656456d0*6283.0758499914d0*sin(4.66925680417d0 + 6283.0758499914d0 * t)
        earth_l_0 = earth_l_0 -(t**0)*1.75347045673d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        earth_l_1 = earth_l_1 +(t**(0))*1*4.30343d-05*cos(2.63512650414d0 + 12566.1516999828d0*t)
        earth_l_1 = earth_l_1 -(t**1)*4.30343d-05*12566.1516999828d0*sin(2.63512650414d0 + 12566.1516999828d0 * t)
        earth_l_1 = earth_l_1 +(t**(0))*1*0.00206058863d0*cos(2.67823455584d0 + 6283.0758499914d0*t)
        earth_l_1 = earth_l_1 -(t**1)*0.00206058863d0*6283.0758499914d0*sin(2.67823455584d0 + 6283.0758499914d0 * t)
        earth_l_1 = earth_l_1 +(t**(0))*1*6283.31966747491d0*cos(0.0d0 + 0.0d0*t)
        earth_l_1 = earth_l_1 -(t**1)*6283.31966747491d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        earth_l_2 = earth_l_2 +(t**(1))*2*8.719837d-05*cos(1.07209665242d0 + 6283.0758499914d0*t)
        earth_l_2 = earth_l_2 -(t**2)*8.719837d-05*6283.0758499914d0*sin(1.07209665242d0 + 6283.0758499914d0 * t)
        earth_l_2 = earth_l_2 +(t**(1))*2*0.0005291887d0*cos(0.0d0 + 0.0d0*t)
        earth_l_2 = earth_l_2 -(t**2)*0.0005291887d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        earth_r_0 = earth_r_0 -(t**0)*1.575568d-05*7860.4193924392d0*sin(2.84685245825d0 + 7860.4193924392d0 * t)
        earth_r_0 = earth_r_0 -(t**0)*1.628461d-05*5753.3848848968d0*sin(1.17387749012d0 + 5753.3848848968d0 * t)
        earth_r_0 = earth_r_0 -(t**0)*3.08372d-05*77713.7714681205d0*sin(5.19846674381d0 + 77713.7714681205d0 * t)
        earth_r_0 = earth_r_0 -(t**0)*0.00013956023d0*12566.1516999828d0*sin(3.0552460962d0 + 12566.1516999828d0 * t)
        earth_r_0 = earth_r_0 -(t**0)*0.01670699626d0*6283.0758499914d0*sin(3.09846350771d0 + 6283.0758499914d0 * t)
        earth_r_0 = earth_r_0 -(t**0)*1.00013988799d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        earth_r_1 = earth_r_1 +(t**(0))*1*1.721238d-05*cos(1.06442301418d0 + 12566.1516999828d0*t)
        earth_r_1 = earth_r_1 -(t**1)*1.721238d-05*12566.1516999828d0*sin(1.06442301418d0 + 12566.1516999828d0 * t)
        earth_r_1 = earth_r_1 +(t**(0))*1*0.00103018608d0*cos(1.10748969588d0 + 6283.0758499914d0*t)
        earth_r_1 = earth_r_1 -(t**1)*0.00103018608d0*6283.0758499914d0*sin(1.10748969588d0 + 6283.0758499914d0 * t)

        earth_r_2 = earth_r_2 +(t**(1))*2*4.359385d-05*cos(5.78455133738d0 + 6283.0758499914d0*t)
        earth_r_2 = earth_r_2 -(t**2)*4.359385d-05*6283.0758499914d0*sin(5.78455133738d0 + 6283.0758499914d0 * t)

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

        jupiter_b_0 = jupiter_b_0 -(t**0)*1.10688d-05*1162.4747044078d0*sin(2.98534421928d0 + 1162.4747044078d0 * t)
        jupiter_b_0 = jupiter_b_0 -(t**0)*6.043996d-05*1589.0728952838d0*sin(4.25883108794d0 + 1589.0728952838d0 * t)
        jupiter_b_0 = jupiter_b_0 -(t**0)*6.437782d-05*536.8045120954d0*sin(0.30627121409d0 + 536.8045120954d0 * t)
        jupiter_b_0 = jupiter_b_0 -(t**0)*8.101427d-05*522.5774180938d0*sin(3.60509573368d0 + 522.5774180938d0 * t)
        jupiter_b_0 = jupiter_b_0 -(t**0)*0.00109971634d0*1059.3819301892d0*sin(3.90809347389d0 + 1059.3819301892d0 * t)
        jupiter_b_0 = jupiter_b_0 -(t**0)*0.00110090358d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        jupiter_b_0 = jupiter_b_0 -(t**0)*0.02268615703d0*529.6909650946d0*sin(3.55852606718d0 + 529.6909650946d0 * t)

        jupiter_b_1 = jupiter_b_1 +(t**(0))*1*1.694232d-05*cos(3.14159265359d0 + 0.0d0*t)
        jupiter_b_1 = jupiter_b_1 -(t**1)*1.694232d-05*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        jupiter_b_1 = jupiter_b_1 +(t**(0))*1*2.211914d-05*cos(4.73477480209d0 + 536.8045120954d0*t)
        jupiter_b_1 = jupiter_b_1 -(t**1)*2.211914d-05*536.8045120954d0*sin(4.73477480209d0 + 536.8045120954d0 * t)
        jupiter_b_1 = jupiter_b_1 +(t**(0))*1*3.081364d-05*cos(5.47464296527d0 + 522.5774180938d0*t)
        jupiter_b_1 = jupiter_b_1 -(t**1)*3.081364d-05*522.5774180938d0*sin(5.47464296527d0 + 522.5774180938d0 * t)
        jupiter_b_1 = jupiter_b_1 +(t**(0))*1*3.230171d-05*cos(5.7794161934d0 + 1059.3819301892d0*t)
        jupiter_b_1 = jupiter_b_1 -(t**1)*3.230171d-05*1059.3819301892d0*sin(5.7794161934d0 + 1059.3819301892d0 * t)
        jupiter_b_1 = jupiter_b_1 +(t**(0))*1*0.00177351787d0*cos(5.70166488486d0 + 529.6909650946d0*t)
        jupiter_b_1 = jupiter_b_1 -(t**1)*0.00177351787d0*529.6909650946d0*sin(5.70166488486d0 + 529.6909650946d0 * t)

        jupiter_b_2 = jupiter_b_2 +(t**(1))*2*8.094051d-05*cos(1.46322843658d0 + 529.6909650946d0*t)
        jupiter_b_2 = jupiter_b_2 -(t**2)*8.094051d-05*529.6909650946d0*sin(1.46322843658d0 + 529.6909650946d0 * t)

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

        jupiter_l_0 = jupiter_l_0 -(t**0)*1.431997d-05*625.6701923124d0*sin(4.29683690269d0 + 625.6701923124d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*1.633217d-05*515.463871093d0*sin(3.58201089758d0 + 515.463871093d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*1.722983d-05*1265.5674786264d0*sin(3.88036008872d0 + 1265.5674786264d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*1.764768d-05*1066.49547719d0*sin(2.14148077766d0 + 1066.49547719d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*1.920959d-05*639.897286314d0*sin(0.97168928755d0 + 639.897286314d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*2.028191d-05*3.1813937377d0*sin(1.06376547379d0 + 3.1813937377d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*2.610001d-05*846.0828347512d0*sin(1.5666759485d0 + 846.0828347512d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*3.045009d-05*426.598190876d0*sin(4.31675960318d0 + 426.598190876d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*4.647249d-05*3.9321532631d0*sin(4.69958109497d0 + 3.9321532631d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*4.905419d-05*110.2063212194d0*sin(1.32084631684d0 + 110.2063212194d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*5.305283d-05*14.2270940016d0*sin(1.30671236848d0 + 14.2270940016d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*5.305457d-05*1052.2683831884d0*sin(4.18625053495d0 + 1052.2683831884d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*6.11405d-05*1162.4747044078d0*sin(4.51319531666d0 + 1162.4747044078d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*6.263171d-05*213.299095438d0*sin(0.02497643742d0 + 213.299095438d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*7.368057d-05*735.8765135318d0*sin(5.08101125612d0 + 735.8765135318d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*8.246362d-05*206.1855484372d0*sin(3.58227961655d0 + 206.1855484372d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*8.768686d-05*949.1756089698d0*sin(3.63000324417d0 + 949.1756089698d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.00013589738d0*1589.0728952838d0*sin(5.7748103159d0 + 1589.0728952838d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.00027964622d0*536.8045120954d0*sin(1.78454589485d0 + 536.8045120954d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.0003885778d0*316.3918696566d0*sin(1.2723172486d0 + 316.3918696566d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.00039806051d0*419.4846438752d0*sin(2.29376744855d0 + 419.4846438752d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.00064263986d0*103.0927742186d0*sin(3.41145185203d0 + 103.0927742186d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.00072903096d0*522.5774180938d0*sin(3.64042909255d0 + 522.5774180938d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.0009717828d0*632.7837393132d0*sin(4.14264708819d0 + 632.7837393132d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.0030638918d0*1059.3819301892d0*sin(5.41734729976d0 + 1059.3819301892d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.00573610145d0*7.1135470008d0*sin(1.44406205976d0 + 7.1135470008d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.09695898711d0*529.6909650946d0*sin(5.06191793105d0 + 529.6909650946d0 * t)
        jupiter_l_0 = jupiter_l_0 -(t**0)*0.59954691495d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*1.003574d-05*cos(3.15040301822d0 + 426.598190876d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*1.003574d-05*426.598190876d0*sin(3.15040301822d0 + 426.598190876d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*1.007216d-05*cos(0.46478398551d0 + 735.8765135318d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*1.007216d-05*735.8765135318d0*sin(0.46478398551d0 + 735.8765135318d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*1.098735d-05*cos(5.30704981594d0 + 515.463871093d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*1.098735d-05*515.463871093d0*sin(5.30704981594d0 + 515.463871093d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*1.163411d-05*cos(0.51450895328d0 + 3.9321532631d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*1.163411d-05*3.9321532631d0*sin(0.51450895328d0 + 3.9321532631d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*1.173129d-05*cos(5.8564730435d0 + 1052.2683831884d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*1.173129d-05*1052.2683831884d0*sin(5.8564730435d0 + 1052.2683831884d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*1.295769d-05*cos(5.55132765087d0 + 3.1813937377d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*1.295769d-05*3.1813937377d0*sin(5.55132765087d0 + 3.1813937377d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*1.745919d-05*cos(4.92669378486d0 + 1589.0728952838d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*1.745919d-05*1589.0728952838d0*sin(4.92669378486d0 + 1589.0728952838d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*2.211854d-05*cos(5.26771446618d0 + 206.1855484372d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*2.211854d-05*206.1855484372d0*sin(5.26771446618d0 + 206.1855484372d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*4.237795d-05*cos(5.89009351271d0 + 14.2270940016d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*4.237795d-05*14.2270940016d0*sin(5.89009351271d0 + 14.2270940016d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*5.433924d-05*cos(3.98478382565d0 + 419.4846438752d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*5.433924d-05*419.4846438752d0*sin(3.98478382565d0 + 419.4846438752d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*6.068051d-05*cos(4.42419502005d0 + 103.0927742186d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*6.068051d-05*103.0927742186d0*sin(4.42419502005d0 + 103.0927742186d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*0.00012105732d0*cos(0.16985765041d0 + 536.8045120954d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*0.00012105732d0*536.8045120954d0*sin(0.16985765041d0 + 536.8045120954d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*0.00020720943d0*cos(5.45938936295d0 + 522.5774180938d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*0.00020720943d0*522.5774180938d0*sin(5.45938936295d0 + 522.5774180938d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*0.0002765538d0*cos(4.57265956824d0 + 1059.3819301892d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*0.0002765538d0*1059.3819301892d0*sin(4.57265956824d0 + 1059.3819301892d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*0.00228918538d0*cos(6.02647464016d0 + 7.1135470008d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*0.00228918538d0*7.1135470008d0*sin(6.02647464016d0 + 7.1135470008d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*0.00489741194d0*cos(4.22066689928d0 + 529.6909650946d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*0.00489741194d0*529.6909650946d0*sin(4.22066689928d0 + 529.6909650946d0 * t)
        jupiter_l_1 = jupiter_l_1 +(t**(0))*1*529.93480757497d0*cos(0.0d0 + 0.0d0*t)
        jupiter_l_1 = jupiter_l_1 -(t**1)*529.93480757497d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        jupiter_l_2 = jupiter_l_2 +(t**(1))*2*1.721069d-05*cos(4.18734385158d0 + 14.2270940016d0*t)
        jupiter_l_2 = jupiter_l_2 -(t**2)*1.721069d-05*14.2270940016d0*sin(4.18734385158d0 + 14.2270940016d0 * t)
        jupiter_l_2 = jupiter_l_2 +(t**(1))*2*2.723358d-05*cos(3.41411526638d0 + 1059.3819301892d0*t)
        jupiter_l_2 = jupiter_l_2 -(t**2)*2.723358d-05*1059.3819301892d0*sin(3.41411526638d0 + 1059.3819301892d0 * t)
        jupiter_l_2 = jupiter_l_2 +(t**(1))*2*2.729292d-05*cos(4.84545481351d0 + 536.8045120954d0*t)
        jupiter_l_2 = jupiter_l_2 -(t**2)*2.729292d-05*536.8045120954d0*sin(4.84545481351d0 + 536.8045120954d0 * t)
        jupiter_l_2 = jupiter_l_2 +(t**(1))*2*3.189317d-05*cos(1.05504615595d0 + 522.5774180938d0*t)
        jupiter_l_2 = jupiter_l_2 -(t**2)*3.189317d-05*522.5774180938d0*sin(1.05504615595d0 + 522.5774180938d0 * t)
        jupiter_l_2 = jupiter_l_2 +(t**(1))*2*0.00030629053d0*cos(2.93021440216d0 + 529.6909650946d0*t)
        jupiter_l_2 = jupiter_l_2 -(t**2)*0.00030629053d0*529.6909650946d0*sin(2.93021440216d0 + 529.6909650946d0 * t)
        jupiter_l_2 = jupiter_l_2 +(t**(1))*2*0.0003896555d0*cos(0.0d0 + 0.0d0*t)
        jupiter_l_2 = jupiter_l_2 -(t**2)*0.0003896555d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        jupiter_l_2 = jupiter_l_2 +(t**(1))*2*0.00047233598d0*cos(4.32148323554d0 + 7.1135470008d0*t)
        jupiter_l_2 = jupiter_l_2 -(t**2)*0.00047233598d0*7.1135470008d0*sin(4.32148323554d0 + 7.1135470008d0 * t)

        jupiter_l_3 = jupiter_l_3 +(t**(2))*3*1.356524d-05*cos(1.34635886411d0 + 529.6909650946d0*t)
        jupiter_l_3 = jupiter_l_3 -(t**3)*1.356524d-05*529.6909650946d0*sin(1.34635886411d0 + 529.6909650946d0 * t)
        jupiter_l_3 = jupiter_l_3 +(t**(2))*3*6.501665d-05*cos(2.59862880482d0 + 7.1135470008d0*t)
        jupiter_l_3 = jupiter_l_3 -(t**3)*6.501665d-05*7.1135470008d0*sin(2.59862880482d0 + 7.1135470008d0 * t)

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

        jupiter_r_0 = jupiter_r_0 -(t**0)*1.014959d-05*454.9093665273d0*sin(1.38673237666d0 + 454.9093665273d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*1.21681d-05*110.2063212194d0*sin(1.80171561024d0 + 110.2063212194d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*1.230708d-05*323.5054166574d0*sin(1.89042979701d0 + 323.5054166574d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*1.479484d-05*1478.8665740644d0*sin(2.68026191372d0 + 1478.8665740644d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*1.610549d-05*1368.660252845d0*sin(3.08867789275d0 + 1368.660252845d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*1.911876d-05*412.3710968744d0*sin(0.85621927419d0 + 412.3710968744d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*2.127644d-05*742.9900605326d0*sin(6.1275146175d0 + 742.9900605326d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*2.499966d-05*838.9692877504d0*sin(4.55182055941d0 + 838.9692877504d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*2.616955d-05*1581.959348283d0*sin(2.00993967129d0 + 1581.959348283d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*3.502519d-05*1066.49547719d0*sin(0.56531297394d0 + 1066.49547719d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*4.13689d-05*625.6701923124d0*sin(2.72219979684d0 + 625.6701923124d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*4.170012d-05*515.463871093d0*sin(2.01605033912d0 + 515.463871093d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*5.477093d-05*639.897286314d0*sin(5.65729325169d0 + 639.897286314d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*6.137755d-05*846.0828347512d0*sin(6.26417542514d0 + 846.0828347512d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*7.057978d-05*1265.5674786264d0*sin(2.18184753111d0 + 1265.5674786264d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*7.894539d-05*426.598190876d0*sin(2.47907551404d0 + 426.598190876d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*9.161431d-05*213.299095438d0*sin(4.41352618935d0 + 213.299095438d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*9.703346d-05*206.1855484372d0*sin(1.90669572402d0 + 206.1855484372d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00012749004d0*1052.2683831884d0*sin(2.71550102862d0 + 1052.2683831884d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.000130326d0*1162.4747044078d0*sin(2.96043055741d0 + 1162.4747044078d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.0002228371d0*1589.0728952838d0*sin(4.19362773546d0 + 1589.0728952838d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00023453209d0*735.8765135318d0*sin(3.54023147303d0 + 735.8765135318d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.0002394734d0*7.1135470008d0*sin(0.27457854894d0 + 7.1135470008d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.0002913462d0*103.0927742186d0*sin(1.6775924371d0 + 103.0927742186d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00030135275d0*949.1756089698d0*sin(2.16132058449d0 + 949.1756089698d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00065517227d0*316.3918696566d0*sin(5.97995850843d0 + 316.3918696566d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00072062869d0*536.8045120954d0*sin(0.21465694745d0 + 536.8045120954d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00086792941d0*419.4846438752d0*sin(0.71001090609d0 + 419.4846438752d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00187647391d0*522.5774180938d0*sin(2.07590380082d0 + 522.5774180938d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00282029465d0*632.7837393132d0*sin(2.57419879933d0 + 632.7837393132d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.00610599902d0*1059.3819301892d0*sin(3.84115365602d0 + 1059.3819301892d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*0.2520932702d0*529.6909650946d0*sin(3.49108640015d0 + 529.6909650946d0 * t)
        jupiter_r_0 = jupiter_r_0 -(t**0)*5.20887429471d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*1.024802d-05*cos(2.55432643018d0 + 412.3710968744d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*1.024802d-05*412.3710968744d0*sin(2.55432643018d0 + 412.3710968744d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*1.049866d-05*cos(3.16113622955d0 + 213.299095438d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*1.049866d-05*213.299095438d0*sin(3.16113622955d0 + 213.299095438d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*1.641257d-05*cos(4.41628669824d0 + 625.6701923124d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*1.641257d-05*625.6701923124d0*sin(4.41628669824d0 + 625.6701923124d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*1.646182d-05*cos(5.30953510947d0 + 1066.49547719d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*1.646182d-05*1066.49547719d0*sin(5.30953510947d0 + 1066.49547719d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*2.100507d-05*cos(3.92762682306d0 + 639.897286314d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*2.100507d-05*639.897286314d0*sin(3.92762682306d0 + 639.897286314d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*2.412207d-05*cos(1.46947308304d0 + 426.598190876d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*2.412207d-05*426.598190876d0*sin(1.46947308304d0 + 426.598190876d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*2.600003d-05*cos(3.63435101622d0 + 206.1855484372d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*2.600003d-05*206.1855484372d0*sin(3.63435101622d0 + 206.1855484372d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*2.676575d-05*cos(4.33052878699d0 + 1052.2683831884d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*2.676575d-05*1052.2683831884d0*sin(4.33052878699d0 + 1052.2683831884d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*2.806064d-05*cos(3.7422369358d0 + 515.463871093d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*2.806064d-05*515.463871093d0*sin(3.7422369358d0 + 515.463871093d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*3.175763d-05*cos(2.79297987071d0 + 103.0927742186d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*3.175763d-05*103.0927742186d0*sin(2.79297987071d0 + 103.0927742186d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*3.203446d-05*cos(5.21083285476d0 + 735.8765135318d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*3.203446d-05*735.8765135318d0*sin(5.21083285476d0 + 735.8765135318d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*3.403605d-05*cos(3.34688537997d0 + 1589.0728952838d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*3.403605d-05*1589.0728952838d0*sin(3.34688537997d0 + 1589.0728952838d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*9.16636d-05*cos(4.75979408587d0 + 7.1135470008d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*9.16636d-05*7.1135470008d0*sin(4.75979408587d0 + 7.1135470008d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*0.0001184719d0*cos(2.41329588176d0 + 419.4846438752d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*0.0001184719d0*419.4846438752d0*sin(2.41329588176d0 + 419.4846438752d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*0.00031185167d0*cos(4.88276663526d0 + 536.8045120954d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*0.00031185167d0*536.8045120954d0*sin(4.88276663526d0 + 536.8045120954d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*0.00041390257d0*cos(0.0d0 + 0.0d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*0.00041390257d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*0.00053443592d0*cos(3.89717644226d0 + 522.5774180938d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*0.00053443592d0*522.5774180938d0*sin(3.89717644226d0 + 522.5774180938d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*0.00061661771d0*cos(3.00076251018d0 + 1059.3819301892d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*0.00061661771d0*1059.3819301892d0*sin(3.00076251018d0 + 1059.3819301892d0 * t)
        jupiter_r_1 = jupiter_r_1 +(t**(0))*1*0.01271801596d0*cos(2.64937511122d0 + 529.6909650946d0*t)
        jupiter_r_1 = jupiter_r_1 -(t**1)*0.01271801596d0*529.6909650946d0*sin(2.64937511122d0 + 529.6909650946d0 * t)

        jupiter_r_2 = jupiter_r_2 +(t**(1))*2*1.860833d-05*cos(2.97682139367d0 + 7.1135470008d0*t)
        jupiter_r_2 = jupiter_r_2 -(t**2)*1.860833d-05*7.1135470008d0*sin(2.97682139367d0 + 7.1135470008d0 * t)
        jupiter_r_2 = jupiter_r_2 +(t**(1))*2*5.314006d-05*cos(1.83835109712d0 + 1059.3819301892d0*t)
        jupiter_r_2 = jupiter_r_2 -(t**2)*5.314006d-05*1059.3819301892d0*sin(1.83835109712d0 + 1059.3819301892d0 * t)
        jupiter_r_2 = jupiter_r_2 +(t**(1))*2*7.029864d-05*cos(3.27476965833d0 + 536.8045120954d0*t)
        jupiter_r_2 = jupiter_r_2 -(t**2)*7.029864d-05*536.8045120954d0*sin(3.27476965833d0 + 536.8045120954d0 * t)
        jupiter_r_2 = jupiter_r_2 +(t**(1))*2*8.251618d-05*cos(5.77773935444d0 + 522.5774180938d0*t)
        jupiter_r_2 = jupiter_r_2 -(t**2)*8.251618d-05*522.5774180938d0*sin(5.77773935444d0 + 522.5774180938d0 * t)
        jupiter_r_2 = jupiter_r_2 +(t**(1))*2*0.00079644833d0*cos(1.35865896596d0 + 529.6909650946d0*t)
        jupiter_r_2 = jupiter_r_2 -(t**2)*0.00079644833d0*529.6909650946d0*sin(1.35865896596d0 + 529.6909650946d0 * t)

        jupiter_r_3 = jupiter_r_3 +(t**(2))*3*1.073239d-05*cos(1.6732134576d0 + 536.8045120954d0*t)
        jupiter_r_3 = jupiter_r_3 -(t**3)*1.073239d-05*536.8045120954d0*sin(1.6732134576d0 + 536.8045120954d0 * t)
        jupiter_r_3 = jupiter_r_3 +(t**(2))*3*3.519257d-05*cos(6.05800633846d0 + 529.6909650946d0*t)
        jupiter_r_3 = jupiter_r_3 -(t**3)*3.519257d-05*529.6909650946d0*sin(6.05800633846d0 + 529.6909650946d0 * t)

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

        mars_b_0 = mars_b_0 -(t**0)*3.4841d-05*13362.4497067992d0*sin(4.78812547889d0 + 13362.4497067992d0 * t)
        mars_b_0 = mars_b_0 -(t**0)*0.00031365538d0*10021.8372800994d0*sin(4.44651052853d0 + 10021.8372800994d0 * t)
        mars_b_0 = mars_b_0 -(t**0)*0.00289104742d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mars_b_0 = mars_b_0 -(t**0)*0.00298033234d0*6681.2248533996d0*sin(4.10616996243d0 + 6681.2248533996d0 * t)
        mars_b_0 = mars_b_0 -(t**0)*0.03197134986d0*3340.6124266998d0*sin(3.76832042432d0 + 3340.6124266998d0 * t)

        mars_b_1 = mars_b_1 +(t**(0))*1*1.471918d-05*cos(3.20205766795d0 + 10021.8372800994d0*t)
        mars_b_1 = mars_b_1 -(t**1)*1.471918d-05*10021.8372800994d0*sin(3.20205766795d0 + 10021.8372800994d0 * t)
        mars_b_1 = mars_b_1 +(t**(0))*1*9.670755d-05*cos(5.47877786506d0 + 6681.2248533996d0*t)
        mars_b_1 = mars_b_1 -(t**1)*9.670755d-05*6681.2248533996d0*sin(5.47877786506d0 + 6681.2248533996d0 * t)
        mars_b_1 = mars_b_1 +(t**(0))*1*0.0001411603d0*cos(3.14159265359d0 + 0.0d0*t)
        mars_b_1 = mars_b_1 -(t**1)*0.0001411603d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mars_b_1 = mars_b_1 +(t**(0))*1*0.00350068845d0*cos(5.36847836211d0 + 3340.6124266998d0*t)
        mars_b_1 = mars_b_1 -(t**1)*0.00350068845d0*3340.6124266998d0*sin(5.36847836211d0 + 3340.6124266998d0 * t)

        mars_b_2 = mars_b_2 +(t**(1))*2*4.986799d-05*cos(3.14159265359d0 + 0.0d0*t)
        mars_b_2 = mars_b_2 -(t**2)*4.986799d-05*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mars_b_2 = mars_b_2 +(t**(1))*2*0.0001672669d0*cos(0.60221392419d0 + 3340.6124266998d0*t)
        mars_b_2 = mars_b_2 -(t**2)*0.0001672669d0*3340.6124266998d0*sin(0.60221392419d0 + 3340.6124266998d0 * t)

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

        mars_l_0 = mars_l_0 -(t**0)*1.024907d-05*8962.4553499102d0*sin(3.69334293555d0 + 8962.4553499102d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*1.264356d-05*5092.1519581158d0*sin(3.62275092231d0 + 5092.1519581158d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*1.286232d-05*2146.1654164752d0*sin(3.06795924626d0 + 2146.1654164752d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*1.52814d-05*6151.533888305d0*sin(1.14979306228d0 + 6151.533888305d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*1.546408d-05*1751.539531416d0*sin(2.91579633392d0 + 1751.539531416d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*1.798808d-05*529.6909650946d0*sin(0.65634026844d0 + 529.6909650946d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*2.38942d-05*796.2980068164d0*sin(5.03896401349d0 + 796.2980068164d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*2.579842d-05*3344.1355450488d0*sin(0.02996706197d0 + 3344.1355450488d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*2.628122d-05*3337.0893083508d0*sin(0.6480614357d0 + 3337.0893083508d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*2.937543d-05*0.0673103028d0*sin(6.07893711408d0 + 0.0673103028d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*3.07525d-05*191.4482661116d0*sin(0.85696597082d0 + 191.4482661116d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*3.575079d-05*2544.3144198834d0*sin(1.66186540141d0 + 2544.3144198834d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*4.161101d-05*2942.4634232916d0*sin(0.2281497533d0 + 2942.4634232916d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*6.797552d-05*398.1490034082d0*sin(0.36462243626d0 + 398.1490034082d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*7.774867d-05*5621.8429232104d0*sin(3.33968655074d0 + 5621.8429232104d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*8.715688d-05*13362.4497067992d0*sin(6.11005159792d0 + 13362.4497067992d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*8.926772d-05*0.0172536522d0*sin(4.15697845939d0 + 0.0172536522d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*0.0001061023d0*2281.2304965106d0*sin(2.93958524973d0 + 2281.2304965106d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*0.00012315897d0*2810.9214616052d0*sin(0.84956081238d0 + 2810.9214616052d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*0.00027744987d0*3.523118349d0*sin(5.97049512942d0 + 3.523118349d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*0.00091798394d0*10021.8372800994d0*sin(5.75478745111d0 + 10021.8372800994d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*0.01108216792d0*6681.2248533996d0*sin(5.40099836958d0 + 6681.2248533996d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*0.186563681d0*3340.6124266998d0*sin(5.05037100303d0 + 3340.6124266998d0 * t)
        mars_l_0 = mars_l_0 -(t**0)*6.20347711583d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mars_l_1 = mars_l_1 +(t**(0))*1*2.48548d-05*cos(4.61277567318d0 + 13362.4497067992d0*t)
        mars_l_1 = mars_l_1 -(t**1)*2.48548d-05*13362.4497067992d0*sin(4.61277567318d0 + 13362.4497067992d0 * t)
        mars_l_1 = mars_l_1 +(t**(0))*1*3.452399d-05*cos(4.73210386365d0 + 3.523118349d0*t)
        mars_l_1 = mars_l_1 -(t**1)*3.452399d-05*3.523118349d0*sin(4.73210386365d0 + 3.523118349d0 * t)
        mars_l_1 = mars_l_1 +(t**(0))*1*0.00019963338d0*cos(4.2659406103d0 + 10021.8372800994d0*t)
        mars_l_1 = mars_l_1 -(t**1)*0.00019963338d0*10021.8372800994d0*sin(4.2659406103d0 + 10021.8372800994d0 * t)
        mars_l_1 = mars_l_1 +(t**(0))*1*0.00164901343d0*cos(3.92631250962d0 + 6681.2248533996d0*t)
        mars_l_1 = mars_l_1 -(t**1)*0.00164901343d0*6681.2248533996d0*sin(3.92631250962d0 + 6681.2248533996d0 * t)
        mars_l_1 = mars_l_1 +(t**(0))*1*0.01458227051d0*cos(3.60426053609d0 + 3340.6124266998d0*t)
        mars_l_1 = mars_l_1 -(t**1)*0.01458227051d0*3340.6124266998d0*sin(3.60426053609d0 + 3340.6124266998d0 * t)
        mars_l_1 = mars_l_1 +(t**(0))*1*3340.85627474342d0*cos(0.0d0 + 0.0d0*t)
        mars_l_1 = mars_l_1 -(t**1)*3340.85627474342d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mars_l_2 = mars_l_2 +(t**(1))*2*2.465104d-05*cos(2.80000020929d0 + 10021.8372800994d0*t)
        mars_l_2 = mars_l_2 -(t**2)*2.465104d-05*10021.8372800994d0*sin(2.80000020929d0 + 10021.8372800994d0 * t)
        mars_l_2 = mars_l_2 +(t**(1))*2*0.00013908426d0*cos(2.45742359888d0 + 6681.2248533996d0*t)
        mars_l_2 = mars_l_2 -(t**2)*0.00013908426d0*6681.2248533996d0*sin(2.45742359888d0 + 6681.2248533996d0 * t)
        mars_l_2 = mars_l_2 +(t**(1))*2*0.00054187645d0*cos(0.0d0 + 0.0d0*t)
        mars_l_2 = mars_l_2 -(t**2)*0.00054187645d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mars_l_2 = mars_l_2 +(t**(1))*2*0.00058015791d0*cos(2.04979463279d0 + 3340.6124266998d0*t)
        mars_l_2 = mars_l_2 -(t**2)*0.00058015791d0*3340.6124266998d0*sin(2.04979463279d0 + 3340.6124266998d0 * t)

        mars_l_3 = mars_l_3 +(t**(2))*3*1.482423d-05*cos(0.44434694876d0 + 3340.6124266998d0*t)
        mars_l_3 = mars_l_3 -(t**3)*1.482423d-05*3340.6124266998d0*sin(0.44434694876d0 + 3340.6124266998d0 * t)

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

        mars_r_0 = mars_r_0 -(t**0)*1.102828d-05*398.1490034082d0*sin(5.0090826416d0 + 398.1490034082d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*1.167115d-05*5092.1519581158d0*sin(2.11261501155d0 + 5092.1519581158d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*1.960198d-05*3344.1355450488d0*sin(4.74249386323d0 + 3344.1355450488d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*1.999399d-05*3337.0893083508d0*sin(5.36059605227d0 + 3337.0893083508d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*2.306539d-05*2544.3144198834d0*sin(0.09081742493d0 + 2544.3144198834d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*2.484385d-05*2942.4634232916d0*sin(4.92545577893d0 + 2942.4634232916d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*3.82516d-05*13362.4497067992d0*sin(4.49407182408d0 + 13362.4497067992d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*5.523193d-05*2281.2304965106d0*sin(1.3643631888d0 + 2281.2304965106d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*7.485315d-05*5621.8429232104d0*sin(1.77238998069d0 + 5621.8429232104d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*8.109738d-05*2810.9214616052d0*sin(5.55958460165d0 + 2810.9214616052d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*0.00046179117d0*10021.8372800994d0*sin(4.15595316284d0 + 10021.8372800994d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*0.00660776357d0*6681.2248533996d0*sin(3.81783442097d0 + 6681.2248533996d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*0.14184953153d0*3340.6124266998d0*sin(3.47971283519d0 + 3340.6124266998d0 * t)
        mars_r_0 = mars_r_0 -(t**0)*1.53033488276d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mars_r_1 = mars_r_1 +(t**(0))*1*1.19455d-05*cos(3.04702182503d0 + 13362.4497067992d0*t)
        mars_r_1 = mars_r_1 -(t**1)*1.19455d-05*13362.4497067992d0*sin(3.04702182503d0 + 13362.4497067992d0 * t)
        mars_r_1 = mars_r_1 +(t**(0))*1*0.0001081588d0*cos(2.70888093803d0 + 10021.8372800994d0*t)
        mars_r_1 = mars_r_1 -(t**1)*0.0001081588d0*10021.8372800994d0*sin(2.70888093803d0 + 10021.8372800994d0 * t)
        mars_r_1 = mars_r_1 +(t**(0))*1*0.000128772d0*cos(0.0d0 + 0.0d0*t)
        mars_r_1 = mars_r_1 -(t**1)*0.000128772d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mars_r_1 = mars_r_1 +(t**(0))*1*0.00103175886d0*cos(2.37071845682d0 + 6681.2248533996d0*t)
        mars_r_1 = mars_r_1 -(t**1)*0.00103175886d0*6681.2248533996d0*sin(2.37071845682d0 + 6681.2248533996d0 * t)
        mars_r_1 = mars_r_1 +(t**(0))*1*0.0110743334d0*cos(2.0325052495d0 + 3340.6124266998d0*t)
        mars_r_1 = mars_r_1 -(t**1)*0.0110743334d0*3340.6124266998d0*sin(2.0325052495d0 + 3340.6124266998d0 * t)

        mars_r_2 = mars_r_2 +(t**(1))*2*1.274915d-05*cos(1.22594050809d0 + 10021.8372800994d0*t)
        mars_r_2 = mars_r_2 -(t**2)*1.274915d-05*10021.8372800994d0*sin(1.22594050809d0 + 10021.8372800994d0 * t)
        mars_r_2 = mars_r_2 +(t**(1))*2*8.138042d-05*cos(0.86998398093d0 + 6681.2248533996d0*t)
        mars_r_2 = mars_r_2 -(t**2)*8.138042d-05*6681.2248533996d0*sin(0.86998398093d0 + 6681.2248533996d0 * t)
        mars_r_2 = mars_r_2 +(t**(1))*2*0.00044242247d0*cos(0.47930603943d0 + 3340.6124266998d0*t)
        mars_r_2 = mars_r_2 -(t**2)*0.00044242247d0*3340.6124266998d0*sin(0.47930603943d0 + 3340.6124266998d0 * t)

        mars_r_3 = mars_r_3 +(t**(2))*3*1.113107d-05*cos(5.14987350142d0 + 3340.6124266998d0*t)
        mars_r_3 = mars_r_3 -(t**3)*1.113107d-05*3340.6124266998d0*sin(5.14987350142d0 + 3340.6124266998d0 * t)

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

        mercury_b_0 = mercury_b_0 -(t**0)*2.014189d-05*182615.3219910194d0*sin(1.35324164694d0 + 182615.3219910194d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*7.963301d-05*156527.41884944518d0*sin(4.60972126348d0 + 156527.41884944518d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.00031866927d0*130439.51570787099d0*sin(1.58088495667d0 + 130439.51570787099d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.0012977877d0*104351.61256629678d0*sin(4.83232503961d0 + 104351.61256629678d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.0054325181d0*78263.70942472259d0*sin(1.79644363963d0 + 78263.70942472259d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.01222839532d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.02388076996d0*52175.8062831484d0*sin(5.03738959685d0 + 52175.8062831484d0 * t)
        mercury_b_0 = mercury_b_0 -(t**0)*0.11737528962d0*26087.9031415742d0*sin(1.98357498767d0 + 26087.9031415742d0 * t)

        mercury_b_1 = mercury_b_1 +(t**(0))*1*2.495743d-05*cos(0.16051210665d0 + 130439.51570787099d0*t)
        mercury_b_1 = mercury_b_1 -(t**1)*2.495743d-05*130439.51570787099d0*sin(0.16051210665d0 + 130439.51570787099d0 * t)
        mercury_b_1 = mercury_b_1 +(t**(0))*1*6.353462d-05*cos(3.42943919982d0 + 104351.61256629678d0*t)
        mercury_b_1 = mercury_b_1 -(t**1)*6.353462d-05*104351.61256629678d0*sin(3.42943919982d0 + 104351.61256629678d0 * t)
        mercury_b_1 = mercury_b_1 +(t**(0))*1*0.00010894981d0*cos(0.48540174006d0 + 78263.70942472259d0*t)
        mercury_b_1 = mercury_b_1 -(t**1)*0.00010894981d0*78263.70942472259d0*sin(0.48540174006d0 + 78263.70942472259d0 * t)
        mercury_b_1 = mercury_b_1 +(t**(0))*1*0.00022675295d0*cos(0.0151536688d0 + 52175.8062831484d0*t)
        mercury_b_1 = mercury_b_1 -(t**1)*0.00022675295d0*52175.8062831484d0*sin(0.0151536688d0 + 52175.8062831484d0 * t)
        mercury_b_1 = mercury_b_1 +(t**(0))*1*0.00146233668d0*cos(3.14159265359d0 + 0.0d0*t)
        mercury_b_1 = mercury_b_1 -(t**1)*0.00146233668d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        mercury_b_1 = mercury_b_1 +(t**(0))*1*0.00429151362d0*cos(3.50169780393d0 + 26087.9031415742d0*t)
        mercury_b_1 = mercury_b_1 -(t**1)*0.00429151362d0*26087.9031415742d0*sin(3.50169780393d0 + 26087.9031415742d0 * t)

        mercury_b_2 = mercury_b_2 +(t**(1))*2*1.044801d-05*cos(1.21216540536d0 + 52175.8062831484d0*t)
        mercury_b_2 = mercury_b_2 -(t**2)*1.044801d-05*52175.8062831484d0*sin(1.21216540536d0 + 52175.8062831484d0 * t)
        mercury_b_2 = mercury_b_2 +(t**(1))*2*1.913516d-05*cos(0.0d0 + 0.0d0*t)
        mercury_b_2 = mercury_b_2 -(t**2)*1.913516d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mercury_b_2 = mercury_b_2 +(t**(1))*2*0.00011830934d0*cos(4.79065585784d0 + 26087.9031415742d0*t)
        mercury_b_2 = mercury_b_2 -(t**2)*0.00011830934d0*26087.9031415742d0*sin(4.79065585784d0 + 26087.9031415742d0 * t)

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

        mercury_l_0 = mercury_l_0 -(t**0)*1.017332d-05*31749.2351907264d0*sin(0.8803143904d0 + 31749.2351907264d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*1.364682d-05*27197.2816936676d0*sin(4.59918318745d0 + 27197.2816936676d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*1.589923d-05*25028.521211385d0*sin(2.99510417815d0 + 25028.521211385d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*1.726012d-05*182615.3219910194d0*sin(0.35832239908d0 + 182615.3219910194d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*1.803463d-05*5661.3320491522d0*sin(4.1033317841d0 + 5661.3320491522d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*3.55974d-05*1109.3785520934d0*sin(1.51202669419d0 + 1109.3785520934d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*7.583476d-05*156527.41884944518d0*sin(3.7134840051d0 + 156527.41884944518d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*0.00034561897d0*130439.51570787099d0*sin(0.77930765817d0 + 130439.51570787099d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*0.00165590362d0*104351.61256629678d0*sin(4.11969163181d0 + 104351.61256629678d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*0.00855346843d0*78263.70942472259d0*sin(1.16520322351d0 + 78263.70942472259d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*0.05046294199d0*52175.8062831484d0*sin(4.4778548954d0 + 52175.8062831484d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*0.40989414976d0*26087.9031415742d0*sin(1.48302034194d0 + 26087.9031415742d0 * t)
        mercury_l_0 = mercury_l_0 -(t**0)*4.40250710144d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mercury_l_1 = mercury_l_1 +(t**(0))*1*1.472233d-05*cos(2.51845458395d0 + 156527.41884944518d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*1.472233d-05*156527.41884944518d0*sin(2.51845458395d0 + 156527.41884944518d0 * t)
        mercury_l_1 = mercury_l_1 +(t**(0))*1*5.592094d-05*cos(5.82675673328d0 + 130439.51570787099d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*5.592094d-05*130439.51570787099d0*sin(5.82675673328d0 + 130439.51570787099d0 * t)
        mercury_l_1 = mercury_l_1 +(t**(0))*1*0.00021245035d0*cos(2.83531934452d0 + 104351.61256629678d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*0.00021245035d0*104351.61256629678d0*sin(2.83531934452d0 + 104351.61256629678d0 * t)
        mercury_l_1 = mercury_l_1 +(t**(0))*1*0.00080538452d0*cos(6.10454743366d0 + 78263.70942472259d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*0.00080538452d0*78263.70942472259d0*sin(6.10454743366d0 + 78263.70942472259d0 * t)
        mercury_l_1 = mercury_l_1 +(t**(0))*1*0.00303471395d0*cos(3.05565472363d0 + 52175.8062831484d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*0.00303471395d0*52175.8062831484d0*sin(3.05565472363d0 + 52175.8062831484d0 * t)
        mercury_l_1 = mercury_l_1 +(t**(0))*1*0.01126007832d0*cos(6.21703970996d0 + 26087.9031415742d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*0.01126007832d0*26087.9031415742d0*sin(6.21703970996d0 + 26087.9031415742d0 * t)
        mercury_l_1 = mercury_l_1 +(t**(0))*1*26088.14706222746d0*cos(0.0d0 + 0.0d0*t)
        mercury_l_1 = mercury_l_1 -(t**1)*26088.14706222746d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mercury_l_2 = mercury_l_2 +(t**(1))*2*1.107419d-05*cos(1.26226537554d0 + 104351.61256629678d0*t)
        mercury_l_2 = mercury_l_2 -(t**2)*1.107419d-05*104351.61256629678d0*sin(1.26226537554d0 + 104351.61256629678d0 * t)
        mercury_l_2 = mercury_l_2 +(t**(1))*2*3.018297d-05*cos(4.45643539705d0 + 78263.70942472259d0*t)
        mercury_l_2 = mercury_l_2 -(t**2)*3.018297d-05*78263.70942472259d0*sin(4.45643539705d0 + 78263.70942472259d0 * t)
        mercury_l_2 = mercury_l_2 +(t**(1))*2*7.396711d-05*cos(1.34735624669d0 + 52175.8062831484d0*t)
        mercury_l_2 = mercury_l_2 -(t**2)*7.396711d-05*52175.8062831484d0*sin(1.34735624669d0 + 52175.8062831484d0 * t)
        mercury_l_2 = mercury_l_2 +(t**(1))*2*0.00016903658d0*cos(4.69072300649d0 + 26087.9031415742d0*t)
        mercury_l_2 = mercury_l_2 -(t**2)*0.00016903658d0*26087.9031415742d0*sin(4.69072300649d0 + 26087.9031415742d0 * t)
        mercury_l_2 = mercury_l_2 +(t**(1))*2*0.00053049845d0*cos(0.0d0 + 0.0d0*t)
        mercury_l_2 = mercury_l_2 -(t**2)*0.00053049845d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        mercury_r_0 = mercury_r_0 -(t**0)*4.354065d-05*130439.51570787099d0*sin(5.82894543257d0 + 130439.51570787099d0 * t)
        mercury_r_0 = mercury_r_0 -(t**0)*0.00021921969d0*104351.61256629678d0*sin(2.77820093975d0 + 104351.61256629678d0 * t)
        mercury_r_0 = mercury_r_0 -(t**0)*0.00121281763d0*78263.70942472259d0*sin(6.01064153805d0 + 78263.70942472259d0 * t)
        mercury_r_0 = mercury_r_0 -(t**0)*0.00795525557d0*52175.8062831484d0*sin(2.95989690096d0 + 52175.8062831484d0 * t)
        mercury_r_0 = mercury_r_0 -(t**0)*0.07834131817d0*26087.9031415742d0*sin(6.19233722599d0 + 26087.9031415742d0 * t)
        mercury_r_0 = mercury_r_0 -(t**0)*0.39528271652d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        mercury_r_1 = mercury_r_1 +(t**(0))*1*1.624367d-05*cos(0.0d0 + 0.0d0*t)
        mercury_r_1 = mercury_r_1 -(t**1)*1.624367d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)
        mercury_r_1 = mercury_r_1 +(t**(0))*1*2.432804d-05*cos(1.24226083435d0 + 104351.61256629678d0*t)
        mercury_r_1 = mercury_r_1 -(t**1)*2.432804d-05*104351.61256629678d0*sin(1.24226083435d0 + 104351.61256629678d0 * t)
        mercury_r_1 = mercury_r_1 +(t**(0))*1*0.00010094479d0*cos(4.47466326316d0 + 78263.70942472259d0*t)
        mercury_r_1 = mercury_r_1 -(t**1)*0.00010094479d0*78263.70942472259d0*sin(4.47466326316d0 + 78263.70942472259d0 * t)
        mercury_r_1 = mercury_r_1 +(t**(0))*1*0.00044141826d0*cos(1.42385543975d0 + 52175.8062831484d0*t)
        mercury_r_1 = mercury_r_1 -(t**1)*0.00044141826d0*52175.8062831484d0*sin(1.42385543975d0 + 52175.8062831484d0 * t)
        mercury_r_1 = mercury_r_1 +(t**(0))*1*0.00217347739d0*cos(4.65617158663d0 + 26087.9031415742d0*t)
        mercury_r_1 = mercury_r_1 -(t**1)*0.00217347739d0*26087.9031415742d0*sin(4.65617158663d0 + 26087.9031415742d0 * t)

        mercury_r_2 = mercury_r_2 +(t**(1))*2*1.245396d-05*cos(6.15183317423d0 + 52175.8062831484d0*t)
        mercury_r_2 = mercury_r_2 -(t**2)*1.245396d-05*52175.8062831484d0*sin(6.15183317423d0 + 52175.8062831484d0 * t)
        mercury_r_2 = mercury_r_2 +(t**(1))*2*3.117867d-05*cos(3.08231840296d0 + 26087.9031415742d0*t)
        mercury_r_2 = mercury_r_2 -(t**2)*3.117867d-05*26087.9031415742d0*sin(3.08231840296d0 + 26087.9031415742d0 * t)

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

        neptune_b_0 = neptune_b_0 -(t**0)*1.015137d-05*35.1640902212d0*sin(3.21561035875d0 + 35.1640902212d0 * t)
        neptune_b_0 = neptune_b_0 -(t**0)*1.96754d-05*1.4844727083d0*sin(4.37778195768d0 + 1.4844727083d0 * t)
        neptune_b_0 = neptune_b_0 -(t**0)*1.999919d-05*74.7815985673d0*sin(1.50998669505d0 + 74.7815985673d0 * t)
        neptune_b_0 = neptune_b_0 -(t**0)*0.0001535549d0*36.6485629295d0*sin(2.52123799481d0 + 36.6485629295d0 * t)
        neptune_b_0 = neptune_b_0 -(t**0)*0.00015448133d0*39.6175083461d0*sin(3.50877080888d0 + 39.6175083461d0 * t)
        neptune_b_0 = neptune_b_0 -(t**0)*0.00027623609d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        neptune_b_0 = neptune_b_0 -(t**0)*0.00027780087d0*76.2660712756d0*sin(5.91271882843d0 + 76.2660712756d0 * t)
        neptune_b_0 = neptune_b_0 -(t**0)*0.03088622933d0*38.1330356378d0*sin(1.44104372626d0 + 38.1330356378d0 * t)

        neptune_b_1 = neptune_b_1 +(t**(0))*1*1.073298d-05*cos(6.08054240712d0 + 39.6175083461d0*t)
        neptune_b_1 = neptune_b_1 -(t**1)*1.073298d-05*39.6175083461d0*sin(6.08054240712d0 + 39.6175083461d0 * t)
        neptune_b_1 = neptune_b_1 +(t**(0))*1*1.385733d-05*cos(4.82555548018d0 + 36.6485629295d0*t)
        neptune_b_1 = neptune_b_1 -(t**1)*1.385733d-05*36.6485629295d0*sin(4.82555548018d0 + 36.6485629295d0 * t)
        neptune_b_1 = neptune_b_1 +(t**(0))*1*1.4333d-05*cos(3.14159265359d0 + 0.0d0*t)
        neptune_b_1 = neptune_b_1 -(t**1)*1.4333d-05*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        neptune_b_1 = neptune_b_1 +(t**(0))*1*1.80312d-05*cos(1.97576485377d0 + 76.2660712756d0*t)
        neptune_b_1 = neptune_b_1 -(t**1)*1.80312d-05*76.2660712756d0*sin(1.97576485377d0 + 76.2660712756d0 * t)
        neptune_b_1 = neptune_b_1 +(t**(0))*1*0.00227279214d0*cos(3.8079308987d0 + 38.1330356378d0*t)
        neptune_b_1 = neptune_b_1 -(t**1)*0.00227279214d0*38.1330356378d0*sin(3.8079308987d0 + 38.1330356378d0 * t)

        neptune_b_2 = neptune_b_2 +(t**(1))*2*9.690766d-05*cos(5.57123750291d0 + 38.1330356378d0*t)
        neptune_b_2 = neptune_b_2 -(t**2)*9.690766d-05*38.1330356378d0*sin(5.57123750291d0 + 38.1330356378d0 * t)

        r = neptune_b_2+neptune_b_1+neptune_b_0
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

        neptune_l_0 = neptune_l_0 -(t**0)*1.433512d-05*74.7815985673d0*sin(2.78340432711d0 + 74.7815985673d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*2.2848d-05*4.4534181249d0*sin(4.20606932559d0 + 4.4534181249d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*3.364818d-05*33.6796175129d0*sin(1.03590121818d0 + 33.6796175129d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*4.216235d-05*73.297125859d0*sin(1.98711914364d0 + 73.297125859d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*8.994249d-05*175.1660598002d0*sin(0.27462142569d0 + 175.1660598002d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*9.198582d-05*39.6175083461d0*sin(4.93747059924d0 + 39.6175083461d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*0.00016482741d0*491.5579294568d0*sin(7.729261d-05 + 491.5579294568d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*0.00033784734d0*76.2660712756d0*sin(1.24488865578d0 + 76.2660712756d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*0.00037714589d0*35.1640902212d0*sin(6.09221834946d0 + 35.1640902212d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*0.0004206445d0*2.9689454166d0*sin(5.41054991607d0 + 2.9689454166d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*0.00124531845d0*36.6485629295d0*sin(4.83008090682d0 + 36.6485629295d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*0.01019727662d0*1.4844727083d0*sin(0.4858092366d0 + 1.4844727083d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*0.01798475509d0*38.1330356378d0*sin(2.9010127305d0 + 38.1330356378d0 * t)
        neptune_l_0 = neptune_l_0 -(t**0)*5.31188633047d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        neptune_l_1 = neptune_l_1 +(t**(0))*1*1.30584d-05*cos(3.67320813491d0 + 2.9689454166d0*t)
        neptune_l_1 = neptune_l_1 -(t**1)*1.30584d-05*2.9689454166d0*sin(3.67320813491d0 + 2.9689454166d0 * t)
        neptune_l_1 = neptune_l_1 +(t**(0))*1*3.334701d-05*cos(3.6819967602d0 + 76.2660712756d0*t)
        neptune_l_1 = neptune_l_1 -(t**1)*3.334701d-05*76.2660712756d0*sin(3.6819967602d0 + 76.2660712756d0 * t)
        neptune_l_1 = neptune_l_1 +(t**(0))*1*0.00015807148d0*cos(2.27923488532d0 + 38.1330356378d0*t)
        neptune_l_1 = neptune_l_1 -(t**1)*0.00015807148d0*38.1330356378d0*sin(2.27923488532d0 + 38.1330356378d0 * t)
        neptune_l_1 = neptune_l_1 +(t**(0))*1*0.00016604187d0*cos(4.86319129565d0 + 1.4844727083d0*t)
        neptune_l_1 = neptune_l_1 -(t**1)*0.00016604187d0*1.4844727083d0*sin(4.86319129565d0 + 1.4844727083d0 * t)
        neptune_l_1 = neptune_l_1 +(t**(0))*1*38.37687716731d0*cos(0.0d0 + 0.0d0*t)
        neptune_l_1 = neptune_l_1 -(t**1)*38.37687716731d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        neptune_l_2 = neptune_l_2 +(t**(1))*2*0.00053892649d0*cos(0.0d0 + 0.0d0*t)
        neptune_l_2 = neptune_l_2 -(t**2)*0.00053892649d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        neptune_r_0 = neptune_r_0 -(t**0)*1.12856d-05*9.5612275556d0*sin(5.96661179805d0 + 9.5612275556d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*1.228304d-05*77.7505439839d0*sin(1.59881465324d0 + 77.7505439839d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*1.39886d-05*176.6505325085d0*sin(0.7622031762d0 + 176.6505325085d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*1.403029d-05*498.6714764576d0*sin(4.58914203187d0 + 498.6714764576d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*1.403377d-05*173.6815870919d0*sin(6.07659416908d0 + 173.6815870919d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*1.435072d-05*484.444382456d0*sin(1.70005157785d0 + 484.444382456d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*1.499193d-05*219.891377577d0*sin(1.01623299513d0 + 219.891377577d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*1.654039d-05*145.1097790097d0*sin(1.92782545887d0 + 145.1097790097d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*1.905254d-05*182.279606801d0*sin(1.72186472126d0 + 182.279606801d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*1.976522d-05*168.0525127994d0*sin(5.1170304456d0 + 168.0525127994d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*2.087303d-05*33.9402499438d0*sin(0.61858378281d0 + 33.9402499438d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*2.306293d-05*70.3281804424d0*sin(2.80962935724d0 + 70.3281804424d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*2.523132d-05*493.0424021651d0*sin(0.48630800015d0 + 493.0424021651d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*2.530149d-05*490.0734567485d0*sin(5.79839567009d0 + 490.0734567485d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*2.635535d-05*213.299095438d0*sin(3.09755943422d0 + 213.299095438d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*2.878942d-05*350.3321196004d0*sin(3.67415901855d0 + 350.3321196004d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*2.881063d-05*137.0330241624d0*sin(1.98600105123d0 + 137.0330241624d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*3.38093d-05*183.2428146475d0*sin(0.84810683275d0 + 183.2428146475d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*4.270202d-05*453.424893819d0*sin(3.41343865825d0 + 453.424893819d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*4.35379d-05*32.1951448046d0*sin(0.6798566237d0 + 32.1951448046d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*4.420804d-05*108.4612160802d0*sin(1.74993796503d0 + 108.4612160802d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*4.483492d-05*529.6909650946d0*sin(2.90573457534d0 + 529.6909650946d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*4.839672d-05*41.1019810544d0*sin(1.9068599107d0 + 41.1019810544d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*5.720852d-05*4.4534181249d0*sin(2.59059512267d0 + 4.4534181249d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*7.5718d-05*388.4651552382d0*sin(1.07149263431d0 + 388.4651552382d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*8.394731d-05*146.594251718d0*sin(0.67816895547d0 + 146.594251718d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00012011825d0*1021.2488945514d0*sin(1.92062131635d0 + 1021.2488945514d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00014229686d0*74.7815985673d0*sin(1.07786112902d0 + 74.7815985673d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00016939242d0*71.8126531507d0*sin(1.59422166991d0 + 71.8126531507d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00024593778d0*109.9456887885d0*sin(0.50801728204d0 + 109.9456887885d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00046687838d0*33.6796175129d0*sin(5.74937810094d0 + 33.6796175129d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00069791722d0*2.9689454166d0*sin(3.79617226928d0 + 2.9689454166d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00100895397d0*73.297125859d0*sin(0.37702748681d0 + 73.297125859d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00121801825d0*76.2660712756d0*sin(5.79754444303d0 + 76.2660712756d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00135134095d0*39.6175083461d0*sin(3.37220607384d0 + 39.6175083461d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.0027457197d0*175.1660598002d0*sin(1.84552256801d0 + 175.1660598002d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00495725642d0*491.5579294568d0*sin(1.57105654815d0 + 491.5579294568d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00537760613d0*35.1640902212d0*sin(4.52113902845d0 + 35.1640902212d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.00807830737d0*1.4844727083d0*sin(5.18592836167d0 + 1.4844727083d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.01691764281d0*36.6485629295d0*sin(3.25186138896d0 + 36.6485629295d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*0.2706225949d0*38.1330356378d0*sin(1.3299945893d0 + 38.1330356378d0 * t)
        neptune_r_0 = neptune_r_0 -(t**0)*30.07013206102d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        neptune_r_1 = neptune_r_1 +(t**(0))*1*1.135773d-05*cos(3.91891199655d0 + 36.6485629295d0*t)
        neptune_r_1 = neptune_r_1 -(t**1)*1.135773d-05*36.6485629295d0*sin(3.91891199655d0 + 36.6485629295d0 * t)
        neptune_r_1 = neptune_r_1 +(t**(0))*1*1.463924d-05*cos(1.18417031047d0 + 33.6796175129d0*t)
        neptune_r_1 = neptune_r_1 -(t**1)*1.463924d-05*33.6796175129d0*sin(1.18417031047d0 + 33.6796175129d0 * t)
        neptune_r_1 = neptune_r_1 +(t**(0))*1*1.603165d-05*cos(0.0d0 + 0.0d0*t)
        neptune_r_1 = neptune_r_1 -(t**1)*1.603165d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)
        neptune_r_1 = neptune_r_1 +(t**(0))*1*2.15315d-05*cos(5.16873840979d0 + 76.2660712756d0*t)
        neptune_r_1 = neptune_r_1 -(t**1)*2.15315d-05*76.2660712756d0*sin(5.16873840979d0 + 76.2660712756d0 * t)
        neptune_r_1 = neptune_r_1 +(t**(0))*1*2.154735d-05*cos(2.09431198086d0 + 2.9689454166d0*t)
        neptune_r_1 = neptune_r_1 -(t**1)*2.154735d-05*2.9689454166d0*sin(2.09431198086d0 + 2.9689454166d0 * t)
        neptune_r_1 = neptune_r_1 +(t**(0))*1*2.70174d-05*cos(1.88140666779d0 + 39.6175083461d0*t)
        neptune_r_1 = neptune_r_1 -(t**1)*2.70174d-05*39.6175083461d0*sin(1.88140666779d0 + 39.6175083461d0 * t)
        neptune_r_1 = neptune_r_1 +(t**(0))*1*8.621863d-05*cos(6.2162895163d0 + 35.1640902212d0*t)
        neptune_r_1 = neptune_r_1 -(t**1)*8.621863d-05*35.1640902212d0*sin(6.2162895163d0 + 35.1640902212d0 * t)
        neptune_r_1 = neptune_r_1 +(t**(0))*1*0.00013220279d0*cos(3.32015499895d0 + 1.4844727083d0*t)
        neptune_r_1 = neptune_r_1 -(t**1)*0.00013220279d0*1.4844727083d0*sin(3.32015499895d0 + 1.4844727083d0 * t)
        neptune_r_1 = neptune_r_1 +(t**(0))*1*0.00236338502d0*cos(0.70498011235d0 + 38.1330356378d0*t)
        neptune_r_1 = neptune_r_1 -(t**1)*0.00236338502d0*38.1330356378d0*sin(0.70498011235d0 + 38.1330356378d0 * t)

        neptune_r_2 = neptune_r_2 +(t**(1))*2*4.247412d-05*cos(5.89910679117d0 + 38.1330356378d0*t)
        neptune_r_2 = neptune_r_2 -(t**2)*4.247412d-05*38.1330356378d0*sin(5.89910679117d0 + 38.1330356378d0 * t)

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

        saturn_b_0 = saturn_b_0 -(t**0)*1.060298d-05*529.6909650946d0*sin(5.63099292414d0 + 529.6909650946d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*1.506129d-05*103.0927742186d0*sin(6.01304536144d0 + 103.0927742186d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*3.432125d-05*433.7117378768d0*sin(2.73255752123d0 + 433.7117378768d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*4.788392d-05*110.2063212194d0*sin(4.9651292742d0 + 110.2063212194d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*4.807587d-05*316.3918696566d0*sin(5.43305315602d0 + 316.3918696566d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*6.993564d-05*7.1135470008d0*sin(4.73604689179d0 + 7.1135470008d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*9.916668d-05*419.4846438752d0*sin(5.79003189405d0 + 419.4846438752d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*0.0001473407d0*639.897286314d0*sin(2.1184659787d0 + 639.897286314d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*0.00030863357d0*220.4126424388d0*sin(3.48441504465d0 + 220.4126424388d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*0.00034116063d0*206.1855484372d0*sin(0.57297307844d0 + 206.1855484372d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*0.00084745939d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*0.00240348303d0*426.598190876d0*sin(2.8523848939d0 + 426.598190876d0 * t)
        saturn_b_0 = saturn_b_0 -(t**0)*0.0433067804d0*213.299095438d0*sin(3.60284428399d0 + 213.299095438d0 * t)

        saturn_b_1 = saturn_b_1 +(t**(0))*1*1.290595d-05*cos(2.9177085709d0 + 7.1135470008d0*t)
        saturn_b_1 = saturn_b_1 -(t**1)*1.290595d-05*7.1135470008d0*sin(2.9177085709d0 + 7.1135470008d0 * t)
        saturn_b_1 = saturn_b_1 +(t**(0))*1*1.455309d-05*cos(0.85161616532d0 + 433.7117378768d0*t)
        saturn_b_1 = saturn_b_1 -(t**1)*1.455309d-05*433.7117378768d0*sin(0.85161616532d0 + 433.7117378768d0 * t)
        saturn_b_1 = saturn_b_1 +(t**(0))*1*2.716647d-05*cos(5.91166664787d0 + 639.897286314d0*t)
        saturn_b_1 = saturn_b_1 -(t**1)*2.716647d-05*639.897286314d0*sin(5.91166664787d0 + 639.897286314d0 * t)
        saturn_b_1 = saturn_b_1 +(t**(0))*1*3.757161d-05*cos(1.25429514018d0 + 419.4846438752d0*t)
        saturn_b_1 = saturn_b_1 -(t**1)*3.757161d-05*419.4846438752d0*sin(1.25429514018d0 + 419.4846438752d0 * t)
        saturn_b_1 = saturn_b_1 +(t**(0))*1*9.643981d-05*cos(1.6967466012d0 + 220.4126424388d0*t)
        saturn_b_1 = saturn_b_1 -(t**1)*9.643981d-05*220.4126424388d0*sin(1.6967466012d0 + 220.4126424388d0 * t)
        saturn_b_1 = saturn_b_1 +(t**(0))*1*0.00014800587d0*cos(2.3058606052d0 + 206.1855484372d0*t)
        saturn_b_1 = saturn_b_1 -(t**1)*0.00014800587d0*206.1855484372d0*sin(2.3058606052d0 + 206.1855484372d0 * t)
        saturn_b_1 = saturn_b_1 +(t**(0))*1*0.00018571607d0*cos(6.09919206378d0 + 426.598190876d0*t)
        saturn_b_1 = saturn_b_1 -(t**1)*0.00018571607d0*426.598190876d0*sin(6.09919206378d0 + 426.598190876d0 * t)
        saturn_b_1 = saturn_b_1 +(t**(0))*1*0.00049478641d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_b_1 = saturn_b_1 -(t**1)*0.00049478641d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_b_1 = saturn_b_1 +(t**(0))*1*0.00397554998d0*cos(5.33289992556d0 + 213.299095438d0*t)
        saturn_b_1 = saturn_b_1 -(t**1)*0.00397554998d0*213.299095438d0*sin(5.33289992556d0 + 213.299095438d0 * t)

        saturn_b_2 = saturn_b_2 +(t**(1))*2*1.346067d-05*cos(0.0d0 + 0.0d0*t)
        saturn_b_2 = saturn_b_2 -(t**2)*1.346067d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_b_2 = saturn_b_2 +(t**(1))*2*1.627158d-05*cos(6.181899395d0 + 220.4126424388d0*t)
        saturn_b_2 = saturn_b_2 -(t**2)*1.627158d-05*220.4126424388d0*sin(6.181899395d0 + 220.4126424388d0 * t)
        saturn_b_2 = saturn_b_2 +(t**(1))*2*3.719555d-05*cos(3.99833475829d0 + 206.1855484372d0*t)
        saturn_b_2 = saturn_b_2 -(t**2)*3.719555d-05*206.1855484372d0*sin(3.99833475829d0 + 206.1855484372d0 * t)
        saturn_b_2 = saturn_b_2 +(t**(1))*2*0.00020629977d0*cos(0.50482422817d0 + 213.299095438d0*t)
        saturn_b_2 = saturn_b_2 -(t**2)*0.00020629977d0*213.299095438d0*sin(0.50482422817d0 + 213.299095438d0 * t)

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

        saturn_l_0 = saturn_l_0 -(t**0)*1.017258d-05*227.5261894396d0*sin(3.71698151814d0 + 227.5261894396d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*1.087237d-05*2.4476805548d0*sin(4.18343232481d0 + 2.4476805548d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*1.123515d-05*415.5524906121d0*sin(2.83726793572d0 + 415.5524906121d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*1.391336d-05*323.5054166574d0*sin(4.02331978116d0 + 323.5054166574d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*1.580641d-05*309.2783226558d0*sin(4.3726631412d0 + 309.2783226558d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*1.640183d-05*846.0828347512d0*sin(5.50504966218d0 + 846.0828347512d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*1.758143d-05*522.5774180938d0*sin(3.26580514774d0 + 522.5774180938d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*2.461172d-05*735.8765135318d0*sin(2.03163631205d0 + 735.8765135318d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*2.953815d-05*95.9792272178d0*sin(0.98280385206d0 + 95.9792272178d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*3.26949d-05*949.1756089698d0*sin(0.77491895787d0 + 949.1756089698d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*3.873696d-05*138.5174968707d0*sin(3.22282692566d0 + 138.5174968707d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*4.005862d-05*63.7358983034d0*sin(2.24479893937d0 + 63.7358983034d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*4.592541d-05*199.0720014364d0*sin(0.61976424374d0 + 199.0720014364d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*5.019658d-05*433.7117378768d0*sin(3.17787919533d0 + 433.7117378768d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*5.227771d-05*3.1813937377d0*sin(4.2078316238d0 + 3.1813937377d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*5.863207d-05*529.6909650946d0*sin(0.23657028777d0 + 529.6909650946d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*6.126308d-05*277.0349937414d0*sin(1.76328499656d0 + 277.0349937414d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00010725066d0*202.2533951741d0*sin(3.12939596466d0 + 202.2533951741d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00013005305d0*11.0457002639d0*sin(5.98119067061d0 + 11.0457002639d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00013160308d0*14.2270940016d0*sin(4.44891180176d0 + 14.2270940016d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00014609562d0*3.9321532631d0*sin(1.56518573691d0 + 3.9321532631d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00014906995d0*316.3918696566d0*sin(5.76903283845d0 + 316.3918696566d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00015053509d0*639.897286314d0*sin(2.71670027883d0 + 639.897286314d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.000158203d0*632.7837393132d0*sin(0.9380895376d0 + 632.7837393132d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00016573583d0*419.4846438752d0*sin(0.43719123541d0 + 419.4846438752d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00023990338d0*110.2063212194d0*sin(4.6697693486d0 + 110.2063212194d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00079271288d0*220.4126424388d0*sin(3.8400707853d0 + 220.4126424388d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00206816296d0*103.0927742186d0*sin(0.24658366938d0 + 103.0927742186d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00350769223d0*426.598190876d0*sin(3.30329903015d0 + 426.598190876d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.00398379386d0*206.1855484372d0*sin(0.52112025957d0 + 206.1855484372d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.01414150958d0*7.1135470008d0*sin(4.58581515873d0 + 7.1135470008d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.1110765978d0*213.299095438d0*sin(3.96205090194d0 + 213.299095438d0 * t)
        saturn_l_0 = saturn_l_0 -(t**0)*0.87401354029d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        saturn_l_1 = saturn_l_1 +(t**(0))*1*1.249348d-05*cos(2.62803737519d0 + 95.9792272178d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*1.249348d-05*95.9792272178d0*sin(2.62803737519d0 + 95.9792272178d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*1.953036d-05*cos(3.563946833d0 + 11.0457002639d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*1.953036d-05*11.0457002639d0*sin(3.563946833d0 + 11.0457002639d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*3.071382d-05*cos(2.3273931775d0 + 199.0720014364d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*3.071382d-05*199.0720014364d0*sin(2.3273931775d0 + 199.0720014364d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*3.3022d-05*cos(1.26256486715d0 + 433.7117378768d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*3.3022d-05*433.7117378768d0*sin(1.26256486715d0 + 433.7117378768d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*3.384684d-05*cos(2.41694251653d0 + 3.1813937377d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*3.384684d-05*3.1813937377d0*sin(2.41694251653d0 + 3.1813937377d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*3.76863d-05*cos(3.6496563146d0 + 3.9321532631d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*3.76863d-05*3.9321532631d0*sin(3.6496563146d0 + 3.9321532631d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*4.056325d-05*cos(2.92166618776d0 + 110.2063212194d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*4.056325d-05*110.2063212194d0*sin(2.92166618776d0 + 110.2063212194d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*4.803325d-05*cos(2.44194097666d0 + 419.4846438752d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*4.803325d-05*419.4846438752d0*sin(2.44194097666d0 + 419.4846438752d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*6.939233d-05*cos(0.40493079985d0 + 639.897286314d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*6.939233d-05*639.897286314d0*sin(0.40493079985d0 + 639.897286314d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.00010511706d0*cos(2.748803928d0 + 14.2270940016d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.00010511706d0*14.2270940016d0*sin(2.748803928d0 + 14.2270940016d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.00019941734d0*cos(1.27954662736d0 + 103.0927742186d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.00019941734d0*103.0927742186d0*sin(1.27954662736d0 + 103.0927742186d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.00040254586d0*cos(2.0412825709d0 + 220.4126424388d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.00040254586d0*220.4126424388d0*sin(2.0412825709d0 + 220.4126424388d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.0009832303d0*cos(1.08070061328d0 + 426.598190876d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.0009832303d0*426.598190876d0*sin(1.08070061328d0 + 426.598190876d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.0010767877d0*cos(2.27769911872d0 + 206.1855484372d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.0010767877d0*206.1855484372d0*sin(2.27769911872d0 + 206.1855484372d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.00564347566d0*cos(2.88500136429d0 + 7.1135470008d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.00564347566d0*7.1135470008d0*sin(2.88500136429d0 + 7.1135470008d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*0.01296855005d0*cos(1.82820544701d0 + 213.299095438d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*0.01296855005d0*213.299095438d0*sin(1.82820544701d0 + 213.299095438d0 * t)
        saturn_l_1 = saturn_l_1 +(t**(0))*1*213.54295595986d0*cos(0.0d0 + 0.0d0*t)
        saturn_l_1 = saturn_l_1 -(t**1)*213.54295595986d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        saturn_l_2 = saturn_l_2 +(t**(1))*2*1.020079d-05*cos(0.63369182642d0 + 3.1813937377d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*1.020079d-05*3.1813937377d0*sin(0.63369182642d0 + 3.1813937377d0 * t)
        saturn_l_2 = saturn_l_2 +(t**(1))*2*1.044754d-05*cos(4.04206453611d0 + 199.0720014364d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*1.044754d-05*199.0720014364d0*sin(4.04206453611d0 + 199.0720014364d0 * t)
        saturn_l_2 = saturn_l_2 +(t**(1))*2*1.081967d-05*cos(5.6913035167d0 + 433.7117378768d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*1.081967d-05*433.7117378768d0*sin(5.6913035167d0 + 433.7117378768d0 * t)
        saturn_l_2 = saturn_l_2 +(t**(1))*2*1.164684d-05*cos(4.60942128971d0 + 639.897286314d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*1.164684d-05*639.897286314d0*sin(4.60942128971d0 + 639.897286314d0 * t)
        saturn_l_2 = saturn_l_2 +(t**(1))*2*1.215527d-05*cos(2.91860042123d0 + 103.0927742186d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*1.215527d-05*103.0927742186d0*sin(2.91860042123d0 + 103.0927742186d0 * t)
        saturn_l_2 = saturn_l_2 +(t**(1))*2*4.265368d-05*cos(1.0459555663d0 + 14.2270940016d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*4.265368d-05*14.2270940016d0*sin(1.0459555663d0 + 14.2270940016d0 * t)
        saturn_l_2 = saturn_l_2 +(t**(1))*2*0.00010604979d0*cos(5.40963595885d0 + 426.598190876d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*0.00010604979d0*426.598190876d0*sin(5.40963595885d0 + 426.598190876d0 * t)
        saturn_l_2 = saturn_l_2 +(t**(1))*2*0.00010631396d0*cos(0.25778277414d0 + 220.4126424388d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*0.00010631396d0*220.4126424388d0*sin(0.25778277414d0 + 220.4126424388d0 * t)
        saturn_l_2 = saturn_l_2 +(t**(1))*2*0.00015276909d0*cos(4.06492007503d0 + 206.1855484372d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*0.00015276909d0*206.1855484372d0*sin(4.06492007503d0 + 206.1855484372d0 * t)
        saturn_l_2 = saturn_l_2 +(t**(1))*2*0.00090592251d0*cos(0.0d0 + 0.0d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*0.00090592251d0*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_l_2 = saturn_l_2 +(t**(1))*2*0.00091920844d0*cos(0.07425261094d0 + 213.299095438d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*0.00091920844d0*213.299095438d0*sin(0.07425261094d0 + 213.299095438d0 * t)
        saturn_l_2 = saturn_l_2 +(t**(1))*2*0.00116441181d0*cos(1.17987850633d0 + 7.1135470008d0*t)
        saturn_l_2 = saturn_l_2 -(t**2)*0.00116441181d0*7.1135470008d0*sin(1.17987850633d0 + 7.1135470008d0 * t)

        saturn_l_3 = saturn_l_3 +(t**(2))*3*1.066581d-05*cos(3.60816533142d0 + 426.598190876d0*t)
        saturn_l_3 = saturn_l_3 -(t**3)*1.066581d-05*426.598190876d0*sin(3.60816533142d0 + 426.598190876d0 * t)
        saturn_l_3 = saturn_l_3 +(t**(2))*3*1.162041d-05*cos(5.61973132428d0 + 14.2270940016d0*t)
        saturn_l_3 = saturn_l_3 -(t**3)*1.162041d-05*14.2270940016d0*sin(5.61973132428d0 + 14.2270940016d0 * t)
        saturn_l_3 = saturn_l_3 +(t**(2))*3*1.465687d-05*cos(5.91326678323d0 + 206.1855484372d0*t)
        saturn_l_3 = saturn_l_3 -(t**3)*1.465687d-05*206.1855484372d0*sin(5.91326678323d0 + 206.1855484372d0 * t)
        saturn_l_3 = saturn_l_3 +(t**(2))*3*1.906524d-05*cos(4.76082050205d0 + 220.4126424388d0*t)
        saturn_l_3 = saturn_l_3 -(t**3)*1.906524d-05*220.4126424388d0*sin(4.76082050205d0 + 220.4126424388d0 * t)
        saturn_l_3 = saturn_l_3 +(t**(2))*3*4.249793d-05*cos(4.58539675603d0 + 213.299095438d0*t)
        saturn_l_3 = saturn_l_3 -(t**3)*4.249793d-05*213.299095438d0*sin(4.58539675603d0 + 213.299095438d0 * t)
        saturn_l_3 = saturn_l_3 +(t**(2))*3*0.00016038734d0*cos(5.73945377424d0 + 7.1135470008d0*t)
        saturn_l_3 = saturn_l_3 -(t**3)*0.00016038734d0*7.1135470008d0*sin(5.73945377424d0 + 7.1135470008d0 * t)

        saturn_l_4 = saturn_l_4 +(t**(3))*4*1.661894d-05*cos(3.99826248978d0 + 7.1135470008d0*t)
        saturn_l_4 = saturn_l_4 -(t**4)*1.661894d-05*7.1135470008d0*sin(3.99826248978d0 + 7.1135470008d0 * t)

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

        saturn_r_0 = saturn_r_0 -(t**0)*1.020922d-05*1685.0521225016d0*sin(5.91233512844d0 + 1685.0521225016d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.071399d-05*1155.361157407d0*sin(1.13567265104d0 + 1155.361157407d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.099037d-05*149.5631971346d0*sin(1.81765118601d0 + 149.5631971346d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.126667d-05*265.9892934775d0*sin(4.46707803791d0 + 265.9892934775d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.149773d-05*1162.4747044078d0*sin(5.74021249703d0 + 1162.4747044078d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.207053d-05*351.8165923087d0*sin(0.7528593316d0 + 351.8165923087d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.277489d-05*1059.3819301892d0*sin(2.98412586423d0 + 1059.3819301892d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.295553d-05*1898.3512179396d0*sin(4.69184139933d0 + 1898.3512179396d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.304089d-05*647.0108333148d0*sin(0.77235613966d0 + 647.0108333148d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.315042d-05*211.8146227297d0*sin(5.11202572637d0 + 211.8146227297d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.395109d-05*127.4717966068d0*sin(5.93669404929d0 + 127.4717966068d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.462631d-05*216.4804891757d0*sin(1.92588134017d0 + 216.4804891757d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.472392d-05*137.0330241624d0*sin(1.40064915651d0 + 137.0330241624d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.474547d-05*203.7378678824d0*sin(5.6767046113d0 + 203.7378678824d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.610859d-05*74.7815985673d0*sin(1.17302463549d0 + 74.7815985673d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.740254d-05*309.2783226558d0*sin(2.34657043464d0 + 309.2783226558d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.781165d-05*217.2312487011d0*sin(0.76314388077d0 + 217.2312487011d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.817186d-05*490.3340891794d0*sin(5.77713225779d0 + 490.3340891794d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.861397d-05*625.6701923124d0*sin(5.93361638244d0 + 625.6701923124d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*1.888436d-05*3.9321532631d0*sin(0.02968443389d0 + 3.9321532631d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*2.024483d-05*11.0457002639d0*sin(5.05411271271d0 + 11.0457002639d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*2.173959d-05*340.7708920448d0*sin(0.01508587396d0 + 340.7708920448d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*2.406138d-05*117.3198682202d0*sin(2.96559220267d0 + 117.3198682202d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*2.448325d-05*1368.660252845d0*sin(6.18412386316d0 + 1368.660252845d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*2.50763d-05*742.9900605326d0*sin(3.53851863255d0 + 742.9900605326d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*2.881181d-05*853.196381752d0*sin(0.17960757891d0 + 853.196381752d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*2.885348d-05*838.9692877504d0*sin(1.38764077631d0 + 838.9692877504d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*2.976033d-05*210.1177017003d0*sin(5.68467931117d0 + 210.1177017003d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*3.376457d-05*224.3447957019d0*sin(3.69528478828d0 + 224.3447957019d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*3.400616d-05*350.3321196004d0*sin(0.55386747515d0 + 350.3321196004d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*3.419551d-05*1581.959348283d0*sin(4.94549148887d0 + 1581.959348283d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*3.460943d-05*175.1660598002d0*sin(1.85088802878d0 + 175.1660598002d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*3.688132d-05*412.3710968744d0*sin(0.7801613317d0 + 412.3710968744d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*4.043988d-05*209.3669421749d0*sin(1.64010323863d0 + 209.3669421749d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*4.695746d-05*227.5261894396d0*sin(2.14919036956d0 + 227.5261894396d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*5.307481d-05*63.7358983034d0*sin(0.5973753405d0 + 63.7358983034d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*5.850443d-05*415.5524906121d0*sin(1.45519636076d0 + 415.5524906121d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*6.465967d-05*1052.2683831884d0*sin(0.17733160145d0 + 1052.2683831884d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*6.770621d-05*14.2270940016d0*sin(3.00433479284d0 + 14.2270940016d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*7.752769d-05*95.9792272178d0*sin(5.85191318903d0 + 95.9792272178d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*9.796061d-05*1265.5674786264d0*sin(5.20475863996d0 + 1265.5674786264d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00011380261d0*522.5774180938d0*sin(1.73105746566d0 + 522.5774180938d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00011993314d0*846.0828347512d0*sin(5.98051421881d0 + 846.0828347512d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00012884128d0*138.5174968707d0*sin(1.64892310393d0 + 138.5174968707d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00014296479d0*323.5054166574d0*sin(2.60433537909d0 + 323.5054166574d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00015298457d0*529.6909650946d0*sin(3.05943652881d0 + 529.6909650946d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00020746678d0*199.0720014364d0*sin(5.33255667599d0 + 199.0720014364d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00020839118d0*433.7117378768d0*sin(1.5210259064d0 + 433.7117378768d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00020936573d0*735.8765135318d0*sin(0.46349163993d0 + 735.8765135318d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00032401718d0*949.1756089698d0*sin(5.47084606947d0 + 949.1756089698d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00034143794d0*277.0349937414d0*sin(0.19518550682d0 + 277.0349937414d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00048913044d0*202.2533951741d0*sin(1.55733388472d0 + 202.2533951741d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.0006105335d0*639.897286314d0*sin(0.94037761156d0 + 639.897286314d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00069007015d0*419.4846438752d0*sin(5.94099622447d0 + 419.4846438752d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00108974737d0*110.2063212194d0*sin(3.29313595577d0 + 110.2063212194d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00140617548d0*632.7837393132d0*sin(5.70406652991d0 + 632.7837393132d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00361778433d0*7.1135470008d0*sin(3.13904303264d0 + 7.1135470008d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00371684449d0*220.4126424388d0*sin(2.27114833428d0 + 220.4126424388d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00547506899d0*103.0927742186d0*sin(5.01532628454d0 + 103.0927742186d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.00821891059d0*316.3918696566d0*sin(5.93520025371d0 + 316.3918696566d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.01464663959d0*426.598190876d0*sin(1.64763045468d0 + 426.598190876d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.01873679934d0*206.1855484372d0*sin(5.23549605091d0 + 206.1855484372d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*0.52921382465d0*213.299095438d0*sin(2.39226219733d0 + 213.299095438d0 * t)
        saturn_r_0 = saturn_r_0 -(t**0)*9.55758135801d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        saturn_r_1 = saturn_r_1 +(t**(0))*1*1.091088d-05*cos(0.07527246854d0 + 216.4804891757d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*1.091088d-05*216.4804891757d0*sin(0.07527246854d0 + 216.4804891757d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*1.203085d-05*cos(1.86654673794d0 + 316.3918696566d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*1.203085d-05*316.3918696566d0*sin(1.86654673794d0 + 316.3918696566d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*1.31559d-05*cos(1.25296446023d0 + 117.3198682202d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*1.31559d-05*117.3198682202d0*sin(1.25296446023d0 + 117.3198682202d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*1.339511d-05*cos(4.30801821806d0 + 853.196381752d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*1.339511d-05*853.196381752d0*sin(4.30801821806d0 + 853.196381752d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*1.581446d-05*cos(1.29191789712d0 + 210.1177017003d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*1.581446d-05*210.1177017003d0*sin(1.29191789712d0 + 210.1177017003d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*1.941309d-05*cos(6.02393385142d0 + 209.3669421749d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*1.941309d-05*209.3669421749d0*sin(6.02393385142d0 + 209.3669421749d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*1.987689d-05*cos(2.45054204795d0 + 412.3710968744d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*1.987689d-05*412.3710968744d0*sin(2.45054204795d0 + 412.3710968744d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*2.856006d-05*cos(2.16731405366d0 + 735.8765135318d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*2.856006d-05*735.8765135318d0*sin(2.16731405366d0 + 735.8765135318d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*2.909411d-05*cos(4.60679154788d0 + 202.2533951741d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*2.909411d-05*202.2533951741d0*sin(4.60679154788d0 + 202.2533951741d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*3.081408d-05*cos(3.43662557418d0 + 522.5774180938d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*3.081408d-05*522.5774180938d0*sin(3.43662557418d0 + 522.5774180938d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*3.252084d-05*cos(1.25853470491d0 + 95.9792272178d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*3.252084d-05*95.9792272178d0*sin(1.25853470491d0 + 95.9792272178d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*4.247455d-05*cos(0.39299384543d0 + 227.5261894396d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*4.247455d-05*227.5261894396d0*sin(0.39299384543d0 + 227.5261894396d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*4.869308d-05*cos(0.86793894213d0 + 323.5054166574d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*4.869308d-05*323.5054166574d0*sin(0.86793894213d0 + 323.5054166574d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*5.396699d-05*cos(1.28852405908d0 + 14.2270940016d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*5.396699d-05*14.2270940016d0*sin(1.28852405908d0 + 14.2270940016d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00012892827d0*cos(5.94330258435d0 + 433.7117378768d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00012892827d0*433.7117378768d0*sin(5.94330258435d0 + 433.7117378768d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00013876565d0*cos(0.75886204364d0 + 199.0720014364d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00013876565d0*199.0720014364d0*sin(0.75886204364d0 + 199.0720014364d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00018839639d0*cos(1.60819563173d0 + 110.2063212194d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00018839639d0*110.2063212194d0*sin(1.60819563173d0 + 110.2063212194d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00019952612d0*cos(1.17560125007d0 + 419.4846438752d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00019952612d0*419.4846438752d0*sin(1.17560125007d0 + 419.4846438752d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00020928189d0*cos(5.0924565447d0 + 639.897286314d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00020928189d0*639.897286314d0*sin(5.0924565447d0 + 639.897286314d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00049621111d0*cos(6.0174446958d0 + 103.0927742186d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00049621111d0*103.0927742186d0*sin(6.0174446958d0 + 103.0927742186d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00143891176d0*cos(1.40744864239d0 + 7.1135470008d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00143891176d0*7.1135470008d0*sin(1.40744864239d0 + 7.1135470008d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.0018626154d0*cos(3.14159265359d0 + 0.0d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.0018626154d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00188491375d0*cos(0.47215719444d0 + 220.4126424388d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00188491375d0*220.4126424388d0*sin(0.47215719444d0 + 220.4126424388d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00341394136d0*cos(5.7963577396d0 + 426.598190876d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00341394136d0*426.598190876d0*sin(5.7963577396d0 + 426.598190876d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.00506577574d0*cos(0.71114650941d0 + 206.1855484372d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.00506577574d0*206.1855484372d0*sin(0.71114650941d0 + 206.1855484372d0 * t)
        saturn_r_1 = saturn_r_1 +(t**(0))*1*0.06182981282d0*cos(0.25843515034d0 + 213.299095438d0*t)
        saturn_r_1 = saturn_r_1 -(t**1)*0.06182981282d0*213.299095438d0*sin(0.25843515034d0 + 213.299095438d0 * t)

        saturn_r_2 = saturn_r_2 +(t**(1))*2*1.956896d-05*cos(4.92448618045d0 + 227.5261894396d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*1.956896d-05*227.5261894396d0*sin(4.92448618045d0 + 227.5261894396d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*2.187621d-05*cos(5.85545832218d0 + 14.2270940016d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*2.187621d-05*14.2270940016d0*sin(5.85545832218d0 + 14.2270940016d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*2.208457d-05*cos(6.27588858707d0 + 110.2063212194d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*2.208457d-05*110.2063212194d0*sin(6.27588858707d0 + 110.2063212194d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*2.326801d-05*cos(0.0d0 + 0.0d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*2.326801d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*2.556363d-05*cos(2.85065721526d0 + 419.4846438752d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*2.556363d-05*419.4846438752d0*sin(2.85065721526d0 + 419.4846438752d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*2.96399d-05*cos(1.37206248846d0 + 103.0927742186d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*2.96399d-05*103.0927742186d0*sin(1.37206248846d0 + 103.0927742186d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*3.78937d-05*cos(3.09771025067d0 + 639.897286314d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*3.78937d-05*639.897286314d0*sin(3.09771025067d0 + 639.897286314d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*4.14165d-05*cos(4.10670940823d0 + 433.7117378768d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*4.14165d-05*433.7117378768d0*sin(4.10670940823d0 + 433.7117378768d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*4.720909d-05*cos(2.47527992423d0 + 199.0720014364d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*4.720909d-05*199.0720014364d0*sin(2.47527992423d0 + 199.0720014364d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*0.00029645554d0*cos(5.96310264282d0 + 7.1135470008d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*0.00029645554d0*7.1135470008d0*sin(5.96310264282d0 + 7.1135470008d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*0.00043220894d0*cos(3.86940443794d0 + 426.598190876d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*0.00043220894d0*426.598190876d0*sin(3.86940443794d0 + 426.598190876d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*0.00049766792d0*cos(4.9716815087d0 + 220.4126424388d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*0.00049766792d0*220.4126424388d0*sin(4.9716815087d0 + 220.4126424388d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*0.0007192276d0*cos(2.50069994874d0 + 206.1855484372d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*0.0007192276d0*206.1855484372d0*sin(2.50069994874d0 + 206.1855484372d0 * t)
        saturn_r_2 = saturn_r_2 +(t**(1))*2*0.00436902464d0*cos(4.78671673044d0 + 213.299095438d0*t)
        saturn_r_2 = saturn_r_2 -(t**2)*0.00436902464d0*213.299095438d0*sin(4.78671673044d0 + 213.299095438d0 * t)

        saturn_r_3 = saturn_r_3 +(t**(2))*3*1.070788d-05*cos(4.20360341236d0 + 199.0720014364d0*t)
        saturn_r_3 = saturn_r_3 -(t**3)*1.070788d-05*199.0720014364d0*sin(4.20360341236d0 + 199.0720014364d0 * t)
        saturn_r_3 = saturn_r_3 +(t**(2))*3*3.879041d-05*cos(2.01056445995d0 + 426.598190876d0*t)
        saturn_r_3 = saturn_r_3 -(t**3)*3.879041d-05*426.598190876d0*sin(2.01056445995d0 + 426.598190876d0 * t)
        saturn_r_3 = saturn_r_3 +(t**(2))*3*4.087129d-05*cos(4.22406927376d0 + 7.1135470008d0*t)
        saturn_r_3 = saturn_r_3 -(t**3)*4.087129d-05*7.1135470008d0*sin(4.22406927376d0 + 7.1135470008d0 * t)
        saturn_r_3 = saturn_r_3 +(t**(2))*3*6.908677d-05*cos(4.35174889353d0 + 206.1855484372d0*t)
        saturn_r_3 = saturn_r_3 -(t**3)*6.908677d-05*206.1855484372d0*sin(4.35174889353d0 + 206.1855484372d0 * t)
        saturn_r_3 = saturn_r_3 +(t**(2))*3*8.923581d-05*cos(3.19144205755d0 + 220.4126424388d0*t)
        saturn_r_3 = saturn_r_3 -(t**3)*8.923581d-05*220.4126424388d0*sin(3.19144205755d0 + 220.4126424388d0 * t)
        saturn_r_3 = saturn_r_3 +(t**(2))*3*0.00020315005d0*cos(3.02186626038d0 + 213.299095438d0*t)
        saturn_r_3 = saturn_r_3 -(t**3)*0.00020315005d0*213.299095438d0*sin(3.02186626038d0 + 213.299095438d0 * t)

        saturn_r_4 = saturn_r_4 +(t**(3))*4*1.20205d-05*cos(1.41499446465d0 + 220.4126424388d0*t)
        saturn_r_4 = saturn_r_4 -(t**4)*1.20205d-05*220.4126424388d0*sin(1.41499446465d0 + 220.4126424388d0 * t)

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

        uranus_b_0 = uranus_b_0 -(t**0)*1.522172d-05*63.7358983034d0*sin(0.27960386377d0 + 63.7358983034d0 * t)
        uranus_b_0 = uranus_b_0 -(t**0)*2.010257d-05*148.0787244263d0*sin(6.05550401088d0 + 148.0787244263d0 * t)
        uranus_b_0 = uranus_b_0 -(t**0)*2.972318d-05*1.4844727083d0*sin(2.24367035538d0 + 1.4844727083d0 * t)
        uranus_b_0 = uranus_b_0 -(t**0)*3.259455d-05*224.3447957019d0*sin(1.2611938596d0 + 224.3447957019d0 * t)
        uranus_b_0 = uranus_b_0 -(t**0)*9.926151d-05*73.297125859d0*sin(0.57630387917d0 + 73.297125859d0 * t)
        uranus_b_0 = uranus_b_0 -(t**0)*9.963744d-05*76.2660712756d0*sin(1.61603876357d0 + 76.2660712756d0 * t)
        uranus_b_0 = uranus_b_0 -(t**0)*0.00061601203d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        uranus_b_0 = uranus_b_0 -(t**0)*0.00062341405d0*149.5631971346d0*sin(5.08111175856d0 + 149.5631971346d0 * t)
        uranus_b_0 = uranus_b_0 -(t**0)*0.01346277639d0*74.7815985673d0*sin(2.61877810545d0 + 74.7815985673d0 * t)

        uranus_b_1 = uranus_b_1 +(t**(0))*1*1.36886d-05*cos(3.06861722047d0 + 76.2660712756d0*t)
        uranus_b_1 = uranus_b_1 -(t**1)*1.36886d-05*76.2660712756d0*sin(3.06861722047d0 + 76.2660712756d0 * t)
        uranus_b_1 = uranus_b_1 +(t**(0))*1*1.374449d-05*cos(0.0d0 + 0.0d0*t)
        uranus_b_1 = uranus_b_1 -(t**1)*1.374449d-05*0.0d0*sin(0.0d0 + 0.0d0 * t)
        uranus_b_1 = uranus_b_1 +(t**(0))*1*1.725703d-05*cos(2.12193159895d0 + 73.297125859d0*t)
        uranus_b_1 = uranus_b_1 -(t**1)*1.725703d-05*73.297125859d0*sin(2.12193159895d0 + 73.297125859d0 * t)
        uranus_b_1 = uranus_b_1 +(t**(0))*1*8.56323d-05*cos(0.33819986165d0 + 149.5631971346d0*t)
        uranus_b_1 = uranus_b_1 -(t**1)*8.56323d-05*149.5631971346d0*sin(0.33819986165d0 + 149.5631971346d0 * t)
        uranus_b_1 = uranus_b_1 +(t**(0))*1*0.00206366162d0*cos(4.12394311407d0 + 74.7815985673d0*t)
        uranus_b_1 = uranus_b_1 -(t**1)*0.00206366162d0*74.7815985673d0*sin(4.12394311407d0 + 74.7815985673d0 * t)

        uranus_b_2 = uranus_b_2 +(t**(1))*2*9.211656d-05*cos(5.80044305785d0 + 74.7815985673d0*t)
        uranus_b_2 = uranus_b_2 -(t**2)*9.211656d-05*74.7815985673d0*sin(5.80044305785d0 + 74.7815985673d0 * t)

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

        uranus_l_0 = uranus_l_0 -(t**0)*1.072008d-05*62.2514255951d0*sin(0.23564502877d0 + 62.2514255951d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*1.090461d-05*12.5301729722d0*sin(1.77501638912d0 + 12.5301729722d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*1.150416d-05*3.1813937377d0*sin(0.93344454002d0 + 3.1813937377d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*1.150993d-05*33.6796175129d0*sin(4.17898207045d0 + 33.6796175129d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*1.220998d-05*108.4612160802d0*sin(0.19901396193d0 + 108.4612160802d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*1.244342d-05*2.4476805548d0*sin(0.91612680579d0 + 2.4476805548d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*1.281641d-05*222.8603229936d0*sin(0.54269869505d0 + 222.8603229936d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*1.284183d-05*202.2533951741d0*sin(3.11346336879d0 + 202.2533951741d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*1.3721d-05*111.4301614968d0*sin(4.19641615561d0 + 111.4301614968d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*1.376208d-05*65.2203710117d0*sin(2.04281409054d0 + 65.2203710117d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*1.533223d-05*52.6901980395d0*sin(2.58593414266d0 + 52.6901980395d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*1.66691d-05*380.12776796d0*sin(3.62744580852d0 + 380.12776796d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*1.991726d-05*277.0349937414d0*sin(4.92437290826d0 + 277.0349937414d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*2.051209d-05*0.1118745846d0*sin(1.51773563459d0 + 0.1118745846d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*2.148599d-05*38.1330356378d0*sin(0.60745800902d0 + 38.1330356378d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*2.27279d-05*70.3281804424d0*sin(4.36600802756d0 + 70.3281804424d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*2.92241d-05*85.8272988312d0*sin(5.3523674338d0 + 85.8272988312d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*2.926671d-05*9.5612275556d0*sin(4.62903695486d0 + 9.5612275556d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*3.144093d-05*77.7505439839d0*sin(4.75199307603d0 + 77.7505439839d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*3.354607d-05*4.4534181249d0*sin(1.06549008887d0 + 4.4534181249d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*3.490352d-05*146.594251718d0*sin(5.48305567292d0 + 146.594251718d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*4.05185d-05*151.0476698429d0*sin(2.27754158724d0 + 151.0476698429d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*4.22017d-05*70.8494453042d0*sin(3.23328535514d0 + 70.8494453042d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*7.545543d-05*109.9456887885d0*sin(5.23626440666d0 + 109.9456887885d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*9.527487d-05*35.1640902212d0*sin(2.95516893093d0 + 35.1640902212d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00010997934d0*138.5174968707d0*sin(0.48865493179d0 + 138.5174968707d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00011162535d0*224.3447957019d0*sin(5.82681993692d0 + 224.3447957019d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00014613471d0*3.9321532631d0*sin(4.73732047977d0 + 3.9321532631d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00017818665d0*36.6485629295d0*sin(1.74436982544d0 + 36.6485629295d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00021078897d0*148.0787244263d0*sin(4.36059465144d0 + 148.0787244263d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00025710505d0*454.9093665273d0*sin(6.11379842935d0 + 454.9093665273d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00026468869d0*71.8126531507d0*sin(3.14152087888d0 + 71.8126531507d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00061950714d0*11.0457002639d0*sin(2.85098907565d0 + 11.0457002639d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00061998592d0*2.9689454166d0*sin(2.26952040469d0 + 2.9689454166d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00068892609d0*76.2660712756d0*sin(6.09292489045d0 + 76.2660712756d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00070328499d0*63.7358983034d0*sin(5.39254431993d0 + 63.7358983034d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00272328132d0*149.5631971346d0*sin(3.35823710524d0 + 149.5631971346d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.00365981718d0*73.297125859d0*sin(1.89962189068d0 + 73.297125859d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.01504247826d0*1.4844727083d0*sin(3.62719262195d0 + 1.4844727083d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*0.09260408252d0*74.7815985673d0*sin(0.8910642153d0 + 74.7815985673d0 * t)
        uranus_l_0 = uranus_l_0 -(t**0)*5.48129294299d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        uranus_l_1 = uranus_l_1 +(t**(0))*1*1.232727d-05*cos(1.58634458237d0 + 70.8494453042d0*t)
        uranus_l_1 = uranus_l_1 -(t**1)*1.232727d-05*70.8494453042d0*sin(1.58634458237d0 + 70.8494453042d0 * t)
        uranus_l_1 = uranus_l_1 +(t**(0))*1*1.9266d-05*cos(0.53013080152d0 + 2.9689454166d0*t)
        uranus_l_1 = uranus_l_1 -(t**1)*1.9266d-05*2.9689454166d0*sin(0.53013080152d0 + 2.9689454166d0 * t)
        uranus_l_1 = uranus_l_1 +(t**(0))*1*2.283777d-05*cos(4.17367533997d0 + 76.2660712756d0*t)
        uranus_l_1 = uranus_l_1 -(t**1)*2.283777d-05*76.2660712756d0*sin(4.17367533997d0 + 76.2660712756d0 * t)
        uranus_l_1 = uranus_l_1 +(t**(0))*1*3.899105d-05*cos(0.46483574024d0 + 3.9321532631d0*t)
        uranus_l_1 = uranus_l_1 -(t**1)*3.899105d-05*3.9321532631d0*sin(0.46483574024d0 + 3.9321532631d0 * t)
        uranus_l_1 = uranus_l_1 +(t**(0))*1*7.841715d-05*cos(1.31983607251d0 + 149.5631971346d0*t)
        uranus_l_1 = uranus_l_1 -(t**1)*7.841715d-05*149.5631971346d0*sin(1.31983607251d0 + 149.5631971346d0 * t)
        uranus_l_1 = uranus_l_1 +(t**(0))*1*8.265977d-05*cos(1.5022003511d0 + 63.7358983034d0*t)
        uranus_l_1 = uranus_l_1 -(t**1)*8.265977d-05*63.7358983034d0*sin(1.5022003511d0 + 63.7358983034d0 * t)
        uranus_l_1 = uranus_l_1 +(t**(0))*1*9.257828d-05*cos(0.42844639064d0 + 11.0457002639d0*t)
        uranus_l_1 = uranus_l_1 -(t**1)*9.257828d-05*11.0457002639d0*sin(0.42844639064d0 + 11.0457002639d0 * t)
        uranus_l_1 = uranus_l_1 +(t**(0))*1*0.00024456413d0*cos(1.71255705309d0 + 1.4844727083d0*t)
        uranus_l_1 = uranus_l_1 -(t**1)*0.00024456413d0*1.4844727083d0*sin(1.71255705309d0 + 1.4844727083d0 * t)
        uranus_l_1 = uranus_l_1 +(t**(0))*1*0.00154458244d0*cos(5.24201658072d0 + 74.7815985673d0*t)
        uranus_l_1 = uranus_l_1 -(t**1)*0.00154458244d0*74.7815985673d0*sin(5.24201658072d0 + 74.7815985673d0 * t)
        uranus_l_1 = uranus_l_1 +(t**(0))*1*75.02543121646d0*cos(0.0d0 + 0.0d0*t)
        uranus_l_1 = uranus_l_1 -(t**1)*75.02543121646d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        uranus_l_2 = uranus_l_2 +(t**(1))*2*2.357636d-05*cos(2.26014661705d0 + 74.7815985673d0*t)
        uranus_l_2 = uranus_l_2 -(t**2)*2.357636d-05*74.7815985673d0*sin(2.26014661705d0 + 74.7815985673d0 * t)
        uranus_l_2 = uranus_l_2 +(t**(1))*2*0.00053033277d0*cos(0.0d0 + 0.0d0*t)
        uranus_l_2 = uranus_l_2 -(t**2)*0.00053033277d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        uranus_r_0 = uranus_r_0 -(t**0)*1.071957d-05*528.2064923863d0*sin(1.74286714339d0 + 528.2064923863d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.090681d-05*77.962992305d0*sin(4.15393813845d0 + 77.962992305d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.197439d-05*145.6310438715d0*sin(2.52185744943d0 + 145.6310438715d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.228314d-05*59.8037450403d0*sin(5.9770333104d0 + 59.8037450403d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.248054d-05*479.2883889155d0*sin(4.88984353601d0 + 479.2883889155d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.248978d-05*54.1746707478d0*sin(5.44027380866d0 + 54.1746707478d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.249958d-05*160.6088973985d0*sin(6.24484546141d0 + 160.6088973985d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.40139d-05*265.9892934775d0*sin(1.39084023521d0 + 265.9892934775d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.403717d-05*4.4534181249d0*sin(5.63563637532d0 + 4.4534181249d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.408514d-05*462.0229135281d0*sin(4.41921749601d0 + 462.0229135281d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.438838d-05*447.7958195265d0*sin(1.53046287618d0 + 447.7958195265d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.477112d-05*256.5399405065d0*sin(4.32214690647d0 + 256.5399405065d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.481746d-05*152.5321425512d0*sin(5.66203046912d0 + 152.5321425512d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.506952d-05*181.7583419392d0*sin(5.24186185583d0 + 181.7583419392d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.563447d-05*112.9146342051d0*sin(1.47917835549d0 + 112.9146342051d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.58485d-05*225.8292684102d0*sin(3.16267171762d0 + 225.8292684102d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.63243d-05*22.0914005278d0*sin(4.23061792837d0 + 22.0914005278d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.64292d-05*67.6680515665d0*sin(0.35564102554d0 + 67.6680515665d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.655866d-05*79.2350166922d0*sin(1.96431297431d0 + 79.2350166922d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.82956d-05*68.8437077341d0*sin(4.01105771632d0 + 68.8437077341d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.848655d-05*909.8187330546d0*sin(2.91111759376d0 + 909.8187330546d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.96251d-05*84.3428261229d0*sin(5.24342224065d0 + 84.3428261229d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.962974d-05*221.3758502853d0*sin(0.0411473912d0 + 221.3758502853d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*1.979394d-05*106.9767433719d0*sin(6.12836181686d0 + 106.9767433719d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*2.182572d-05*305.3461693927d0*sin(2.94040431638d0 + 305.3461693927d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*2.36355d-05*554.0699874828d0*sin(0.44253328372d0 + 554.0699874828d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*2.538032d-05*131.4039498699d0*sin(4.85457831993d0 + 131.4039498699d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*2.865128d-05*12.5301729722d0*sin(0.30996903761d0 + 12.5301729722d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*2.937799d-05*140.001969579d0*sin(3.6765745093d0 + 140.001969579d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*2.940492d-05*137.0330241624d0*sin(2.14637460319d0 + 137.0330241624d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*2.942239d-05*299.1263942692d0*sin(0.42393808854d0 + 299.1263942692d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*2.962641d-05*56.6223513026d0*sin(0.82977991995d0 + 56.6223513026d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*3.101743d-05*219.891377577d0*sin(4.14031063896d0 + 219.891377577d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*3.686787d-05*453.424893819d0*sin(2.48718116535d0 + 453.424893819d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*3.781219d-05*456.3938392356d0*sin(3.45840272873d0 + 456.3938392356d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*3.801606d-05*184.7272873558d0*sin(6.10985558505d0 + 184.7272873558d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*3.919476d-05*39.6175083461d0*sin(4.25015288873d0 + 39.6175083461d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*4.079167d-05*340.7708920448d0*sin(3.22064788674d0 + 340.7708920448d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*5.238103d-05*33.6796175129d0*sin(2.62960141797d0 + 33.6796175129d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*5.444878d-05*145.1097790097d0*sin(5.10575635361d0 + 145.1097790097d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*5.524133d-05*9.5612275556d0*sin(3.11499484161d0 + 9.5612275556d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*6.04637d-05*78.7137518304d0*sin(5.67960948357d0 + 78.7137518304d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*7.329454d-05*183.2428146475d0*sin(3.9727752784d0 + 183.2428146475d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*7.449125d-05*351.8165923087d0*sin(0.79491905956d0 + 351.8165923087d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*8.402147d-05*415.5524906121d0*sin(5.03877516489d0 + 415.5524906121d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*8.42055d-05*222.8603229936d0*sin(5.25350716616d0 + 222.8603229936d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*9.111446d-05*62.2514255951d0*sin(4.99638600045d0 + 62.2514255951d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00010792699d0*213.299095438d0*sin(1.42104858472d0 + 213.299095438d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00011494701d0*65.2203710117d0*sin(0.43774027872d0 + 65.2203710117d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00011696085d0*3.9321532631d0*sin(3.29825599114d0 + 3.9321532631d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00011852996d0*52.6901980395d0*sin(0.99342814582d0 + 52.6901980395d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00011959355d0*984.6003316219d0*sin(1.75044072173d0 + 984.6003316219d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00012328151d0*127.4717966068d0*sin(5.96039150918d0 + 127.4717966068d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00012896507d0*111.4301614968d0*sin(2.62154018241d0 + 111.4301614968d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00014701566d0*108.4612160802d0*sin(4.90434406648d0 + 108.4612160802d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00015502809d0*38.1330356378d0*sin(5.35405037603d0 + 38.1330356378d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00017900561d0*2.9689454166d0*sin(0.55455488605d0 + 2.9689454166d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00020471584d0*202.2533951741d0*sin(1.555889615d0 + 202.2533951741d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00020473163d0*70.3281804424d0*sin(2.79639811626d0 + 70.3281804424d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00022637152d0*529.6909650946d0*sin(0.72519137745d0 + 529.6909650946d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.0002562036d0*380.12776796d0*sin(5.25656292802d0 + 380.12776796d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00025785805d0*85.8272988312d0*sin(3.78537741503d0 + 85.8272988312d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00029156264d0*77.7505439839d0*sin(3.18056174556d0 + 77.7505439839d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00030348875d0*151.0476698429d0*sin(0.70100446346d0 + 151.0476698429d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.0003675516d0*146.594251718d0*sin(3.88648934736d0 + 146.594251718d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00039009624d0*70.8494453042d0*sin(1.66971128869d0 + 70.8494453042d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00039025681d0*277.0349937414d0*sin(3.36234710692d0 + 277.0349937414d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00046677322d0*35.1640902212d0*sin(1.39976563936d0 + 35.1640902212d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00071424265d0*224.3447957019d0*sin(4.24509327405d0 + 224.3447957019d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00089805842d0*109.9456887885d0*sin(3.66105366329d0 + 109.9456887885d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00093192359d0*36.6485629295d0*sin(0.17437193645d0 + 36.6485629295d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00143705902d0*11.0457002639d0*sin(1.38368574483d0 + 11.0457002639d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00161858251d0*148.0787244263d0*sin(2.79137863469d0 + 148.0787244263d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00190521915d0*1.4844727083d0*sin(1.99809364502d0 + 1.4844727083d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00243508222d0*71.8126531507d0*sin(1.57086595074d0 + 71.8126531507d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00338525522d0*138.5174968707d0*sin(1.58002682946d0 + 138.5174968707d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00496404171d0*454.9093665273d0*sin(1.40139934716d0 + 454.9093665273d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00602248144d0*63.7358983034d0*sin(3.86003820462d0 + 63.7358983034d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.00649321851d0*76.2660712756d0*sin(4.52247298119d0 + 76.2660712756d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.02055653495d0*149.5631971346d0*sin(1.78295170028d0 + 149.5631971346d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.03440835545d0*73.297125859d0*sin(0.32836098991d0 + 73.297125859d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*0.88784984055d0*74.7815985673d0*sin(5.60377526994d0 + 74.7815985673d0 * t)
        uranus_r_0 = uranus_r_0 -(t**0)*19.21264847881d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        uranus_r_1 = uranus_r_1 +(t**(0))*1*1.032731d-05*cos(0.26459059027d0 + 131.4039498699d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*1.032731d-05*131.4039498699d0*sin(0.26459059027d0 + 131.4039498699d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*1.22822d-05*cos(1.04703640149d0 + 62.2514255951d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*1.22822d-05*62.2514255951d0*sin(1.04703640149d0 + 62.2514255951d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*1.403237d-05*cos(1.36985349744d0 + 77.7505439839d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*1.403237d-05*77.7505439839d0*sin(1.36985349744d0 + 77.7505439839d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*1.413112d-05*cos(4.57461892062d0 + 202.2533951741d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*1.413112d-05*202.2533951741d0*sin(4.57461892062d0 + 202.2533951741d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*1.489525d-05*cos(2.67559167316d0 + 56.6223513026d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*1.489525d-05*56.6223513026d0*sin(2.67559167316d0 + 56.6223513026d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*1.508028d-05*cos(5.05996325425d0 + 151.0476698429d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*1.508028d-05*151.0476698429d0*sin(5.05996325425d0 + 151.0476698429d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*1.583766d-05*cos(1.43045619196d0 + 78.7137518304d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*1.583766d-05*78.7137518304d0*sin(1.43045619196d0 + 78.7137518304d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*1.644719d-05*cos(2.65349313124d0 + 127.4717966068d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*1.644719d-05*127.4717966068d0*sin(2.65349313124d0 + 127.4717966068d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*2.429445d-05*cos(3.99440122468d0 + 52.6901980395d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*2.429445d-05*52.6901980395d0*sin(3.99440122468d0 + 52.6901980395d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*2.564251d-05*cos(0.98076846352d0 + 148.0787244263d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*2.564251d-05*148.0787244263d0*sin(0.98076846352d0 + 148.0787244263d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*3.06001d-05*cos(0.15321893225d0 + 1.4844727083d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*3.06001d-05*1.4844727083d0*sin(0.15321893225d0 + 1.4844727083d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*3.228835d-05*cos(5.25499602896d0 + 3.9321532631d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*3.228835d-05*3.9321532631d0*sin(5.25499602896d0 + 3.9321532631d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*3.505936d-05*cos(2.58354048851d0 + 138.5174968707d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*3.505936d-05*138.5174968707d0*sin(2.58354048851d0 + 138.5174968707d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*3.578446d-05*cos(2.31160668309d0 + 224.3447957019d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*3.578446d-05*224.3447957019d0*sin(2.31160668309d0 + 224.3447957019d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*3.926694d-05*cos(3.15513991323d0 + 71.8126531507d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*3.926694d-05*71.8126531507d0*sin(3.15513991323d0 + 71.8126531507d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*4.2438d-05*cos(1.41692350371d0 + 85.8272988312d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*4.2438d-05*85.8272988312d0*sin(1.41692350371d0 + 85.8272988312d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*7.496775d-05*cos(0.42360033283d0 + 73.297125859d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*7.496775d-05*73.297125859d0*sin(0.42360033283d0 + 73.297125859d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*0.00011405346d0*cos(0.01848461561d0 + 70.8494453042d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*0.00011405346d0*70.8494453042d0*sin(0.01848461561d0 + 70.8494453042d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*0.00020857262d0*cos(5.24625494219d0 + 11.0457002639d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*0.00020857262d0*11.0457002639d0*sin(5.24625494219d0 + 11.0457002639d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*0.00021468152d0*cos(2.6017670427d0 + 76.2660712756d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*0.00021468152d0*76.2660712756d0*sin(2.6017670427d0 + 76.2660712756d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*0.00024059649d0*cos(3.14159265359d0 + 0.0d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*0.00024059649d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*0.00068626972d0*cos(6.13411265052d0 + 149.5631971346d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*0.00068626972d0*149.5631971346d0*sin(6.13411265052d0 + 149.5631971346d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*0.00071212085d0*cos(6.22601006675d0 + 63.7358983034d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*0.00071212085d0*63.7358983034d0*sin(6.22601006675d0 + 63.7358983034d0 * t)
        uranus_r_1 = uranus_r_1 +(t**(0))*1*0.0147989637d0*cos(3.67205705317d0 + 74.7815985673d0*t)
        uranus_r_1 = uranus_r_1 -(t**1)*0.0147989637d0*74.7815985673d0*sin(3.67205705317d0 + 74.7815985673d0 * t)

        uranus_r_2 = uranus_r_2 +(t**(1))*2*1.433755d-05*cos(3.52119917947d0 + 149.5631971346d0*t)
        uranus_r_2 = uranus_r_2 -(t**2)*1.433755d-05*149.5631971346d0*sin(3.52119917947d0 + 149.5631971346d0 * t)
        uranus_r_2 = uranus_r_2 +(t**(1))*2*1.649559d-05*cos(3.0966007898d0 + 11.0457002639d0*t)
        uranus_r_2 = uranus_r_2 -(t**2)*1.649559d-05*11.0457002639d0*sin(3.0966007898d0 + 11.0457002639d0 * t)
        uranus_r_2 = uranus_r_2 +(t**(1))*2*1.681903d-05*cos(4.64833551727d0 + 70.8494453042d0*t)
        uranus_r_2 = uranus_r_2 -(t**2)*1.681903d-05*70.8494453042d0*sin(4.64833551727d0 + 70.8494453042d0 * t)
        uranus_r_2 = uranus_r_2 +(t**(1))*2*4.727037d-05*cos(1.69901641488d0 + 63.7358983034d0*t)
        uranus_r_2 = uranus_r_2 -(t**2)*4.727037d-05*63.7358983034d0*sin(1.69901641488d0 + 63.7358983034d0 * t)
        uranus_r_2 = uranus_r_2 +(t**(1))*2*0.00022439904d0*cos(0.6995311876d0 + 74.7815985673d0*t)
        uranus_r_2 = uranus_r_2 -(t**2)*0.00022439904d0*74.7815985673d0*sin(0.6995311876d0 + 74.7815985673d0 * t)

        uranus_r_3 = uranus_r_3 +(t**(2))*3*1.164382d-05*cos(4.73453291602d0 + 74.7815985673d0*t)
        uranus_r_3 = uranus_r_3 -(t**3)*1.164382d-05*74.7815985673d0*sin(4.73453291602d0 + 74.7815985673d0 * t)

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

        venus_b_0 = venus_b_0 -(t**0)*1.011392d-05*30639.856638633d0*sin(1.08946123021d0 + 30639.856638633d0 * t)
        venus_b_0 = venus_b_0 -(t**0)*0.00032814918d0*0.0d0*sin(3.14159265359d0 + 0.0d0 * t)
        venus_b_0 = venus_b_0 -(t**0)*0.00040107978d0*20426.571092422d0*sin(1.14737178106d0 + 20426.571092422d0 * t)
        venus_b_0 = venus_b_0 -(t**0)*0.05923638472d0*10213.285546211d0*sin(0.26702775813d0 + 10213.285546211d0 * t)

        venus_b_1 = venus_b_1 +(t**(0))*1*4.3801d-05*cos(3.38615711591d0 + 20426.571092422d0*t)
        venus_b_1 = venus_b_1 -(t**1)*4.3801d-05*20426.571092422d0*sin(3.38615711591d0 + 20426.571092422d0 * t)
        venus_b_1 = venus_b_1 +(t**(0))*1*0.00513347602d0*cos(1.80364310797d0 + 10213.285546211d0*t)
        venus_b_1 = venus_b_1 -(t**1)*0.00513347602d0*10213.285546211d0*sin(1.80364310797d0 + 10213.285546211d0 * t)

        venus_b_2 = venus_b_2 +(t**(1))*2*0.00022377665d0*cos(3.38509143877d0 + 10213.285546211d0*t)
        venus_b_2 = venus_b_2 -(t**2)*0.00022377665d0*10213.285546211d0*sin(3.38509143877d0 + 10213.285546211d0 * t)

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

        venus_l_0 = venus_l_0 -(t**0)*1.200521d-05*30639.856638633d0*sin(6.15357115319d0 + 30639.856638633d0 * t)
        venus_l_0 = venus_l_0 -(t**0)*1.317108d-05*26.2983197998d0*sin(5.18668219093d0 + 26.2983197998d0 * t)
        venus_l_0 = venus_l_0 -(t**0)*1.438322d-05*9683.5945811164d0*sin(4.15745043958d0 + 9683.5945811164d0 * t)
        venus_l_0 = venus_l_0 -(t**0)*1.664069d-05*1577.3435424478d0*sin(4.2501893503d0 + 1577.3435424478d0 * t)
        venus_l_0 = venus_l_0 -(t**0)*2.372061d-05*3930.2096962196d0*sin(2.99377539568d0 + 3930.2096962196d0 * t)
        venus_l_0 = venus_l_0 -(t**0)*3.455732d-05*11790.6290886588d0*sin(2.69964470778d0 + 11790.6290886588d0 * t)
        venus_l_0 = venus_l_0 -(t**0)*5.477201d-05*7860.4193924392d0*sin(4.41630652531d0 + 7860.4193924392d0 * t)
        venus_l_0 = venus_l_0 -(t**0)*0.00089891645d0*20426.571092422d0*sin(5.30650048468d0 + 20426.571092422d0 * t)
        venus_l_0 = venus_l_0 -(t**0)*0.01353968419d0*10213.285546211d0*sin(5.59313319619d0 + 10213.285546211d0 * t)
        venus_l_0 = venus_l_0 -(t**0)*3.17614666774d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        venus_l_1 = venus_l_1 +(t**(0))*1*0.00014444977d0*cos(0.51624564679d0 + 20426.571092422d0*t)
        venus_l_1 = venus_l_1 -(t**1)*0.00014444977d0*20426.571092422d0*sin(0.51624564679d0 + 20426.571092422d0 * t)
        venus_l_1 = venus_l_1 +(t**(0))*1*0.00095707712d0*cos(2.46424448979d0 + 10213.285546211d0*t)
        venus_l_1 = venus_l_1 -(t**1)*0.00095707712d0*10213.285546211d0*sin(2.46424448979d0 + 10213.285546211d0 * t)
        venus_l_1 = venus_l_1 +(t**(0))*1*10213.52943052898d0*cos(0.0d0 + 0.0d0*t)
        venus_l_1 = venus_l_1 -(t**1)*10213.52943052898d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        venus_l_2 = venus_l_2 +(t**(1))*2*1.33788d-05*cos(2.02011286082d0 + 20426.571092422d0*t)
        venus_l_2 = venus_l_2 -(t**2)*1.33788d-05*20426.571092422d0*sin(2.02011286082d0 + 20426.571092422d0 * t)
        venus_l_2 = venus_l_2 +(t**(1))*2*3.89146d-05*cos(0.34514360047d0 + 10213.285546211d0*t)
        venus_l_2 = venus_l_2 -(t**2)*3.89146d-05*10213.285546211d0*sin(0.34514360047d0 + 10213.285546211d0 * t)
        venus_l_2 = venus_l_2 +(t**(1))*2*0.00054127076d0*cos(0.0d0 + 0.0d0*t)
        venus_l_2 = venus_l_2 -(t**2)*0.00054127076d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

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

        venus_r_0 = venus_r_0 -(t**0)*1.378048d-05*11790.6290886588d0*sin(1.128465906d0 + 11790.6290886588d0 * t)
        venus_r_0 = venus_r_0 -(t**0)*1.632093d-05*7860.4193924392d0*sin(2.84548851892d0 + 7860.4193924392d0 * t)
        venus_r_0 = venus_r_0 -(t**0)*1.658058d-05*20426.571092422d0*sin(4.90206728012d0 + 20426.571092422d0 * t)
        venus_r_0 = venus_r_0 -(t**0)*0.00489824185d0*10213.285546211d0*sin(4.02151832268d0 + 10213.285546211d0 * t)
        venus_r_0 = venus_r_0 -(t**0)*0.72334820905d0*0.0d0*sin(0.0d0 + 0.0d0 * t)

        venus_r_1 = venus_r_1 +(t**(0))*1*0.00034551039d0*cos(0.89198710598d0 + 10213.285546211d0*t)
        venus_r_1 = venus_r_1 -(t**1)*0.00034551039d0*10213.285546211d0*sin(0.89198710598d0 + 10213.285546211d0 * t)

        venus_r_2 = venus_r_2 +(t**(1))*2*1.406587d-05*cos(5.0636639519d0 + 10213.285546211d0*t)
        venus_r_2 = venus_r_2 -(t**2)*1.406587d-05*10213.285546211d0*sin(5.0636639519d0 + 10213.285546211d0 * t)

        r = venus_r_2+venus_r_1+venus_r_0
    end function

end module VSOP87D_Milli_Velocities
