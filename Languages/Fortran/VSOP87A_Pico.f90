!VSOP87-Multilang http://www.celestialprogramming.com/
!Greg Miller (gmiller@gregmiller.net) 2023.  Released as Public Domain

module VSOP87A_Pico
    implicit none

    public :: getEarth
    public :: test

    contains

    subroutine test()
        print *, 'It is a test'
    end subroutine

    subroutine test2()
        print *, 'It is a test!'
    end subroutine

    subroutine getEarth(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=earth_x(t)
        result(2)=earth_y(t)
        result(3)=earth_z(t)
    end subroutine

    subroutine getEmb(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=emb_x(t)
        result(2)=emb_y(t)
        result(3)=emb_z(t)
    end subroutine

    subroutine getJupiter(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=jupiter_x(t)
        result(2)=jupiter_y(t)
        result(3)=jupiter_z(t)
    end subroutine

    subroutine getMars(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mars_x(t)
        result(2)=mars_y(t)
        result(3)=mars_z(t)
    end subroutine

    subroutine getMercury(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=mercury_x(t)
        result(2)=mercury_y(t)
        result(3)=mercury_z(t)
    end subroutine

    subroutine getNeptune(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=neptune_x(t)
        result(2)=neptune_y(t)
        result(3)=neptune_z(t)
    end subroutine

    subroutine getSaturn(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=saturn_x(t)
        result(2)=saturn_y(t)
        result(3)=saturn_z(t)
    end subroutine

    subroutine getUranus(t, result)
        double precision :: t
        double precision, dimension(3) :: result

        result(1)=uranus_x(t)
        result(2)=uranus_y(t)
        result(3)=uranus_z(t)
    end subroutine

    subroutine getVenus(t, result)
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

        earth_x_0 = earth_x_0 +      0.99982928844*cos( 1.75348568475 +      6283.0758499914 * t)

        r = earth_x_0
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

        earth_y_0 = earth_y_0 +      0.02442699036*cos( 3.14159265359 +                  0.0 * t)
        earth_y_0 = earth_y_0 +       0.9998921103*cos( 0.18265890456 +      6283.0758499914 * t)

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

        r = 0
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

        emb_x_0 = emb_x_0 +       0.9998292746*cos( 1.75348568475 +      6283.0758499914 * t)

        r = emb_x_0
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

        emb_y_0 = emb_y_0 +      0.02442698841*cos( 3.14159265359 +                  0.0 * t)
        emb_y_0 = emb_y_0 +      0.99989209645*cos( 0.18265890456 +      6283.0758499914 * t)

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

        r = 0
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

        jupiter_x_0 = jupiter_x_0 +      0.01476224578*cos( 3.61736921122 +       536.8045120954 * t)
        jupiter_x_0 = jupiter_x_0 +      0.01500672056*cos(  0.7317513461 +       522.5774180938 * t)
        jupiter_x_0 = jupiter_x_0 +      0.12593937922*cos( 0.94911583701 +      1059.3819301892 * t)
        jupiter_x_0 = jupiter_x_0 +       0.3666264232*cos( 3.14159265359 +                  0.0 * t)
        jupiter_x_0 = jupiter_x_0 +      5.19663470114*cos( 0.59945082355 +       529.6909650946 * t)

        r = jupiter_x_0
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

        jupiter_y_0 = jupiter_y_0 +       0.0147580937*cos( 2.04679566495 +       536.8045120954 * t)
        jupiter_y_0 = jupiter_y_0 +      0.01508275299*cos( 5.43934968102 +       522.5774180938 * t)
        jupiter_y_0 = jupiter_y_0 +      0.09363670616*cos( 3.14159265359 +                  0.0 * t)
        jupiter_y_0 = jupiter_y_0 +      0.12592862602*cos( 5.66160227728 +      1059.3819301892 * t)
        jupiter_y_0 = jupiter_y_0 +      5.19520046589*cos( 5.31203162731 +       529.6909650946 * t)

        jupiter_y_1 = jupiter_y_1 +      0.01694798253*cos( 3.14159265359 +                  0.0 * t)
        jupiter_y_1=jupiter_y_1*t;

        r = jupiter_y_1+jupiter_y_0
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

        jupiter_z_0 = jupiter_z_0 +      0.11823100489*cos( 3.55844646343 +       529.6909650946 * t)

        r = jupiter_z_0
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

        mars_x_0 = mars_x_0 +      0.07070919655*cos( 0.25870338558 +      6681.2248533996 * t)
        mars_x_0 = mars_x_0 +      0.19502945246*cos( 3.14159265359 +                  0.0 * t)
        mars_x_0 = mars_x_0 +      1.51769936383*cos( 6.20403346548 +      3340.6124266998 * t)

        r = mars_x_0
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

        mars_y_0 = mars_y_0 +      0.07064550239*cos( 4.97051892902 +      6681.2248533996 * t)
        mars_y_0 = mars_y_0 +      0.08655481102*cos(           0.0 +                  0.0 * t)
        mars_y_0 = mars_y_0 +      1.51558976277*cos( 4.63212206588 +      3340.6124266998 * t)

        mars_y_1 = mars_y_1 +       0.0142732421*cos( 3.14159265359 +                  0.0 * t)
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

        mars_z_0 = mars_z_0 +       0.0490120722*cos( 3.76712324286 +      3340.6124266998 * t)

        r = mars_z_0
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

        mercury_x_0 = mercury_x_0 +      0.02625615963*cos( 3.14159265359 +                  0.0 * t)
        mercury_x_0 = mercury_x_0 +      0.03825746672*cos( 1.16485604339 +     52175.8062831484 * t)
        mercury_x_0 = mercury_x_0 +      0.37546291728*cos( 4.39651506942 +     26087.9031415742 * t)

        r = mercury_x_0
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

        mercury_y_0 = mercury_y_0 +      0.03854668215*cos( 5.88780608966 +     52175.8062831484 * t)
        mercury_y_0 = mercury_y_0 +      0.11626131831*cos( 3.14159265359 +                  0.0 * t)
        mercury_y_0 = mercury_y_0 +      0.37953642888*cos(  2.8378061782 +     26087.9031415742 * t)

        r = mercury_y_0
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

        mercury_z_0 = mercury_z_0 +      0.04607665326*cos( 1.99295081967 +     26087.9031415742 * t)

        r = mercury_z_0
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

        neptune_x_0 = neptune_x_0 +      0.01074040708*cos( 5.38502938672 +        74.7815985673 * t)
        neptune_x_0 = neptune_x_0 +      0.02597313814*cos( 1.99590301412 +         1.4844727083 * t)
        neptune_x_0 = neptune_x_0 +      0.13505661755*cos( 3.50078975634 +        76.2660712756 * t)
        neptune_x_0 = neptune_x_0 +      0.14935120126*cos( 1.08499403018 +        39.6175083461 * t)
        neptune_x_0 = neptune_x_0 +      0.15726094556*cos( 0.11319072675 +        36.6485629295 * t)
        neptune_x_0 = neptune_x_0 +      0.27080164222*cos( 3.14159265359 +                  0.0 * t)
        neptune_x_0 = neptune_x_0 +     30.05890004476*cos( 5.31211340029 +        38.1330356378 * t)

        r = neptune_x_0
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

        neptune_y_0 = neptune_y_0 +      0.01073739772*cos( 3.81371728533 +        74.7815985673 * t)
        neptune_y_0 = neptune_y_0 +      0.02584250749*cos( 0.42549700754 +         1.4844727083 * t)
        neptune_y_0 = neptune_y_0 +      0.13506391797*cos( 1.92953034883 +        76.2660712756 * t)
        neptune_y_0 = neptune_y_0 +      0.14936165806*cos( 5.79694900665 +        39.6175083461 * t)
        neptune_y_0 = neptune_y_0 +      0.15706589373*cos( 4.82539970129 +        36.6485629295 * t)
        neptune_y_0 = neptune_y_0 +      0.30205857683*cos( 3.14159265359 +                  0.0 * t)
        neptune_y_0 = neptune_y_0 +     30.06056351665*cos( 3.74086294714 +        38.1330356378 * t)

        r = neptune_y_0
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

        neptune_z_0 = neptune_z_0 +      0.01245978462*cos(           0.0 +                  0.0 * t)
        neptune_z_0 = neptune_z_0 +      0.92866054405*cos( 1.44103930278 +        38.1330356378 * t)

        r = neptune_z_0
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

        saturn_x_0 = saturn_x_0 +      0.01097683232*cos( 5.65753337256 +        639.897286314 * t)
        saturn_x_0 = saturn_x_0 +      0.01115684467*cos( 3.15686878377 +       419.4846438752 * t)
        saturn_x_0 = saturn_x_0 +      0.01255372247*cos( 2.17338917731 +       110.2063212194 * t)
        saturn_x_0 = saturn_x_0 +      0.02336340488*cos( 2.02227784673 +         7.1135470008 * t)
        saturn_x_0 = saturn_x_0 +      0.04244797817*cos(           0.0 +                  0.0 * t)
        saturn_x_0 = saturn_x_0 +      0.06624260115*cos(  0.7509473778 +       220.4126424388 * t)
        saturn_x_0 = saturn_x_0 +      0.06760430339*cos( 4.16767145778 +       206.1855484372 * t)
        saturn_x_0 = saturn_x_0 +      0.26412374238*cos(  0.1239089262 +        426.598190876 * t)
        saturn_x_0 = saturn_x_0 +      9.51638335797*cos( 0.87441380794 +        213.299095438 * t)

        saturn_x_1 = saturn_x_1 +      0.02643100909*cos( 5.33291950584 +       220.4126424388 * t)
        saturn_x_1 = saturn_x_1 +      0.02714918399*cos( 5.85229412397 +       206.1855484372 * t)
        saturn_x_1 = saturn_x_1 +      0.03085041716*cos( 4.27565749128 +        426.598190876 * t)
        saturn_x_1 = saturn_x_1 +      0.07575103962*cos(           0.0 +                  0.0 * t)
        saturn_x_1=saturn_x_1*t;

        r = saturn_x_1+saturn_x_0
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

        saturn_y_0 = saturn_y_0 +      0.01098751131*cos( 4.08608782813 +        639.897286314 * t)
        saturn_y_0 = saturn_y_0 +      0.01183874652*cos( 1.34638298371 +       419.4846438752 * t)
        saturn_y_0 = saturn_y_0 +      0.01245790434*cos( 0.60367177975 +       110.2063212194 * t)
        saturn_y_0 = saturn_y_0 +      0.02345609742*cos( 0.44652132519 +         7.1135470008 * t)
        saturn_y_0 = saturn_y_0 +      0.06633570703*cos( 5.46258848288 +       220.4126424388 * t)
        saturn_y_0 = saturn_y_0 +      0.06916653915*cos( 2.55279408706 +       206.1855484372 * t)
        saturn_y_0 = saturn_y_0 +      0.26441781302*cos( 4.83528061849 +        426.598190876 * t)
        saturn_y_0 = saturn_y_0 +      0.79387988806*cos( 3.14159265359 +                  0.0 * t)
        saturn_y_0 = saturn_y_0 +      9.52986882699*cos( 5.58600556665 +        213.299095438 * t)

        saturn_y_1 = saturn_y_1 +      0.02647489677*cos( 3.76132298889 +       220.4126424388 * t)
        saturn_y_1 = saturn_y_1 +      0.02741594312*cos( 4.26667636015 +       206.1855484372 * t)
        saturn_y_1 = saturn_y_1 +      0.03090575152*cos( 2.70346890906 +        426.598190876 * t)
        saturn_y_1 = saturn_y_1 +      0.05373889135*cos(           0.0 +                  0.0 * t)
        saturn_y_1=saturn_y_1*t;

        r = saturn_y_1+saturn_y_0
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

        saturn_z_0 = saturn_z_0 +      0.01148283576*cos( 2.85128367469 +        426.598190876 * t)
        saturn_z_0 = saturn_z_0 +      0.01214249867*cos(           0.0 +                  0.0 * t)
        saturn_z_0 = saturn_z_0 +       0.4135695094*cos( 3.60234142982 +        213.299095438 * t)

        saturn_z_1 = saturn_z_1 +      0.01906503283*cos( 4.94544746116 +        213.299095438 * t)
        saturn_z_1=saturn_z_1*t;

        r = saturn_z_1+saturn_z_0
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

        uranus_x_0 = uranus_x_0 +       0.0144421666*cos( 2.65117115201 +       148.0787244263 * t)
        uranus_x_0 = uranus_x_0 +      0.01542951343*cos( 4.12121838072 +       224.3447957019 * t)
        uranus_x_0 = uranus_x_0 +      0.06201106178*cos( 5.14043574125 +         1.4844727083 * t)
        uranus_x_0 = uranus_x_0 +      0.14130269479*cos( 4.39572927934 +        76.2660712756 * t)
        uranus_x_0 = uranus_x_0 +      0.14668209481*cos( 3.42395862804 +         73.297125859 * t)
        uranus_x_0 = uranus_x_0 +      0.44402496796*cos( 1.65967519586 +       149.5631971346 * t)
        uranus_x_0 = uranus_x_0 +      1.32272523872*cos(           0.0 +                  0.0 * t)
        uranus_x_0 = uranus_x_0 +     19.17370730359*cos( 5.48133416489 +        74.7815985673 * t)

        r = uranus_x_0
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

        uranus_y_0 = uranus_y_0 +      0.01442356575*cos( 1.08004542712 +       148.0787244263 * t)
        uranus_y_0 = uranus_y_0 +      0.01542668264*cos( 2.55040539213 +       224.3447957019 * t)
        uranus_y_0 = uranus_y_0 +      0.06250078231*cos( 3.56960243857 +         1.4844727083 * t)
        uranus_y_0 = uranus_y_0 +      0.14123958128*cos( 2.82486076549 +        76.2660712756 * t)
        uranus_y_0 = uranus_y_0 +      0.14755940186*cos( 1.85423280679 +         73.297125859 * t)
        uranus_y_0 = uranus_y_0 +      0.16256125476*cos( 3.14159265359 +                  0.0 * t)
        uranus_y_0 = uranus_y_0 +      0.44390465203*cos( 0.08884111329 +       149.5631971346 * t)
        uranus_y_0 = uranus_y_0 +     19.16518231584*cos( 3.91045677002 +        74.7815985673 * t)

        uranus_y_1 = uranus_y_1 +      0.02157896385*cos(           0.0 +                  0.0 * t)
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

        uranus_z_0 = uranus_z_0 +      0.01774318778*cos( 3.14159265359 +                  0.0 * t)
        uranus_z_0 = uranus_z_0 +      0.25878127698*cos( 2.61861272578 +        74.7815985673 * t)

        r = uranus_z_0
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

        venus_x_0 = venus_x_0 +      0.72211281391*cos( 3.17575836361 +      10213.285546211 * t)

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

        venus_y_0 = venus_y_0 +      0.72324820731*cos( 1.60573808356 +      10213.285546211 * t)

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

        venus_z_0 = venus_z_0 +      0.04282990302*cos( 0.26703856476 +      10213.285546211 * t)

        r = venus_z_0
    end function

end module VSOP87A_Pico
