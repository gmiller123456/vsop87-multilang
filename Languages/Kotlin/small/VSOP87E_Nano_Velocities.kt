//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

object VSOP87E_Nano_Velocities{
    @JvmStatic fun getEarth(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=earth_x(t) / 365250.0;
        temp[1]=earth_y(t) / 365250.0;
        temp[2]=earth_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getJupiter(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=jupiter_x(t) / 365250.0;
        temp[1]=jupiter_y(t) / 365250.0;
        temp[2]=jupiter_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getMars(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=mars_x(t) / 365250.0;
        temp[1]=mars_y(t) / 365250.0;
        temp[2]=mars_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getMercury(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=mercury_x(t) / 365250.0;
        temp[1]=mercury_y(t) / 365250.0;
        temp[2]=mercury_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getNeptune(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=neptune_x(t) / 365250.0;
        temp[1]=neptune_y(t) / 365250.0;
        temp[2]=neptune_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getSaturn(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=saturn_x(t) / 365250.0;
        temp[1]=saturn_y(t) / 365250.0;
        temp[2]=saturn_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getSun(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=sun_x(t) / 365250.0;
        temp[1]=sun_y(t) / 365250.0;
        temp[2]=sun_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getUranus(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=uranus_x(t) / 365250.0;
        temp[1]=uranus_y(t) / 365250.0;
        temp[2]=uranus_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getVenus(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=venus_x(t) / 365250.0;
        temp[1]=venus_y(t) / 365250.0;
        temp[2]=venus_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic private fun earth_x(t: Double): Double {
        var earth_x_0 = 0.0;
        earth_x_0+=-Math.pow(t,0.0)*      0.0015543422*       38.1330356378*Math.sin( 2.17052065758 +        38.1330356378 * t);
        earth_x_0+=-Math.pow(t,0.0)*     0.00271650686*       213.299095438*Math.sin( 4.01601440281 +        213.299095438 * t);
        earth_x_0+=-Math.pow(t,0.0)*     0.00493120585*      529.6909650946*Math.sin( 3.74115834452 +       529.6909650946 * t);
        earth_x_0+=-Math.pow(t,0.0)*     0.00590518455*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        earth_x_0+=-Math.pow(t,0.0)*     0.00835254761*    12566.1516999828*Math.sin( 1.71034539458 +     12566.1516999828 * t);
        earth_x_0+=-Math.pow(t,0.0)*     0.99982624851*     6283.0758499914*Math.sin( 1.75348568475 +      6283.0758499914 * t);

        var earth_x_1 = 0.0;
        earth_x_1+=Math.pow(t,0.0)*1.0*     0.00122106982*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*     0.00122106982*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return earth_x_1+earth_x_0;
    }

    @JvmStatic private fun earth_y(t: Double): Double {
        var earth_y_0 = 0.0;
        earth_y_0+=-Math.pow(t,0.0)*     0.00155442849*       38.1330356378*Math.sin( 0.59927021065 +        38.1330356378 * t);
        earth_y_0+=-Math.pow(t,0.0)*     0.00272033033*       213.299095438*Math.sin( 2.44443635549 +        213.299095438 * t);
        earth_y_0+=-Math.pow(t,0.0)*     0.00492966037*      529.6909650946*Math.sin(   2.170524584 +       529.6909650946 * t);
        earth_y_0+=-Math.pow(t,0.0)*     0.00835289774*    12566.1516999828*Math.sin( 0.13952879005 +     12566.1516999828 * t);
        earth_y_0+=-Math.pow(t,0.0)*     0.02408829501*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        earth_y_0+=-Math.pow(t,0.0)*     0.99988907017*     6283.0758499914*Math.sin( 0.18265890456 +      6283.0758499914 * t);

        return earth_y_0;
    }

    @JvmStatic private fun earth_z(t: Double): Double {
        var earth_z_1 = 0.0;
        earth_z_1+=Math.pow(t,0.0)*1.0*      0.0022782175*Math.cos( 3.41372504278 +      6283.0758499914*t)-Math.pow(t,1.0)*      0.0022782175*     6283.0758499914*Math.sin( 3.41372504278 +      6283.0758499914 * t);

        return earth_z_1;
    }

    @JvmStatic private fun jupiter_x(t: Double): Double {
        var jupiter_x_0 = 0.0;
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00103396684*     1052.2683831884*Math.sin( 6.19327175097 +      1052.2683831884 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00114092461*     1162.4747044078*Math.sin( 0.01567031739 +      1162.4747044078 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00137575946*       213.299095438*Math.sin(  4.0139949837 +        213.299095438 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00144750651*      632.7837393132*Math.sin( 5.55980048541 +       632.7837393132 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*      0.0015078374*      110.2063212194*Math.sin(  6.1183167133 +       110.2063212194 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00154896097*       38.1330356378*Math.sin( 2.17051189575 +        38.1330356378 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00192562451*       426.598190876*Math.sin( 4.98733787115 +        426.598190876 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00302068886*        7.1135470008*Math.sin( 5.17370377723 +         7.1135470008 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00385749947*      103.0927742186*Math.sin( 2.01222596811 +       103.0927742186 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00457316096*     1589.0728952838*Math.sin( 1.29883699143 +      1589.0728952838 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.01474818211*      536.8045120954*Math.sin( 3.61736901402 +       536.8045120954 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.01499237862*      522.5774180938*Math.sin( 0.73175554601 +       522.5774180938 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.12581924842*     1059.3819301892*Math.sin( 0.94911581432 +      1059.3819301892 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*      0.3663326807*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     5.19167797375*      529.6909650946*Math.sin( 0.59945079482 +       529.6909650946 * t);

        var jupiter_x_1 = 0.0;
        jupiter_x_1+=Math.pow(t,0.0)*1.0*     0.00588595541*Math.cos( 1.91556289228 +       536.8045120954*t)-Math.pow(t,1.0)*     0.00588595541*      536.8045120954*Math.sin( 1.91556289228 +       536.8045120954 * t);
        jupiter_x_1+=Math.pow(t,0.0)*1.0*     0.00599147916*Math.cos(  2.4299683255 +       522.5774180938*t)-Math.pow(t,1.0)*     0.00599147916*      522.5774180938*Math.sin(  2.4299683255 +       522.5774180938 * t);
        jupiter_x_1+=Math.pow(t,0.0)*1.0*     0.00634691138*Math.cos( 0.10662162351 +      1059.3819301892*t)-Math.pow(t,1.0)*     0.00634691138*     1059.3819301892*Math.sin( 0.10662162351 +      1059.3819301892 * t);
        jupiter_x_1+=Math.pow(t,0.0)*1.0*     0.00883685325*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1.0)*     0.00883685325*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);

        var jupiter_x_2 = 0.0;
        jupiter_x_2+=Math.pow(t,1.0)*2.0*     0.00121405454*Math.cos( 0.21155087534 +       536.8045120954*t)-Math.pow(t,2.0)*     0.00121405454*      536.8045120954*Math.sin( 0.21155087534 +       536.8045120954 * t);
        jupiter_x_2+=Math.pow(t,1.0)*2.0*     0.00123746423*Math.cos( 4.13563340107 +       522.5774180938*t)-Math.pow(t,2.0)*     0.00123746423*      522.5774180938*Math.sin( 4.13563340107 +       522.5774180938 * t);

        return jupiter_x_2+jupiter_x_1+jupiter_x_0;
    }

    @JvmStatic private fun jupiter_y(t: Double): Double {
        var jupiter_y_0 = 0.0;
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00101901831*     1052.2683831884*Math.sin(  4.5759216528 +      1052.2683831884 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00113934096*     1162.4747044078*Math.sin( 4.72982346991 +      1162.4747044078 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00139367298*      632.7837393132*Math.sin( 4.00075739657 +       632.7837393132 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*      0.0013965505*       213.299095438*Math.sin( 2.41039954154 +        213.299095438 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00146192922*      110.2063212194*Math.sin( 4.62080103783 +       110.2063212194 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00154904248*       38.1330356378*Math.sin( 0.59924790507 +        38.1330356378 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00190850034*       426.598190876*Math.sin( 3.41807324121 +        426.598190876 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00301069256*        7.1135470008*Math.sin( 3.60943303554 +         7.1135470008 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00378016915*      103.0927742186*Math.sin( 3.53013675622 +       103.0927742186 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00457314174*     1589.0728952838*Math.sin( 6.01129093508 +      1589.0728952838 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.01474403395*      536.8045120954*Math.sin( 2.04679547637 +       536.8045120954 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.01506838468*      522.5774180938*Math.sin( 5.43934599781 +       522.5774180938 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.09329801081*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.12580850775*     1059.3819301892*Math.sin( 5.66160225641 +      1059.3819301892 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     5.19024510371*      529.6909650946*Math.sin( 5.31203160043 +       529.6909650946 * t);

        var jupiter_y_1 = 0.0;
        jupiter_y_1+=Math.pow(t,0.0)*1.0*       0.005883672*Math.cos( 0.34491553018 +       536.8045120954*t)-Math.pow(t,1.0)*       0.005883672*      536.8045120954*Math.sin( 0.34491553018 +       536.8045120954 * t);
        jupiter_y_1+=Math.pow(t,0.0)*1.0*      0.0060058715*Math.cos( 0.85811137383 +       522.5774180938*t)-Math.pow(t,1.0)*      0.0060058715*      522.5774180938*Math.sin( 0.85811137383 +       522.5774180938 * t);
        jupiter_y_1+=Math.pow(t,0.0)*1.0*     0.00634254247*Math.cos( 4.81903195356 +      1059.3819301892*t)-Math.pow(t,1.0)*     0.00634254247*     1059.3819301892*Math.sin( 4.81903195356 +      1059.3819301892 * t);
        jupiter_y_1+=Math.pow(t,0.0)*1.0*     0.01694792137*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1.0)*     0.01694792137*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);

        var jupiter_y_2 = 0.0;
        jupiter_y_2+=Math.pow(t,1.0)*2.0*     0.00121340211*Math.cos( 4.92398747363 +       536.8045120954*t)-Math.pow(t,2.0)*     0.00121340211*      536.8045120954*Math.sin( 4.92398747363 +       536.8045120954 * t);
        jupiter_y_2+=Math.pow(t,1.0)*2.0*     0.00123914193*Math.cos( 2.56495551373 +       522.5774180938*t)-Math.pow(t,2.0)*     0.00123914193*      522.5774180938*Math.sin( 2.56495551373 +       522.5774180938 * t);

        return jupiter_y_2+jupiter_y_1+jupiter_y_0;
    }

    @JvmStatic private fun jupiter_z(t: Double): Double {
        var jupiter_z_0 = 0.0;
        jupiter_z_0+=-Math.pow(t,0.0)*     0.00286288759*     1059.3819301892*Math.sin( 3.90812239092 +      1059.3819301892 * t);
        jupiter_z_0+=-Math.pow(t,0.0)*     0.00857879296*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        jupiter_z_0+=-Math.pow(t,0.0)*     0.11811822789*      529.6909650946*Math.sin( 3.55844641987 +       529.6909650946 * t);

        var jupiter_z_1 = 0.0;
        jupiter_z_1+=Math.pow(t,0.0)*1.0*     0.00406683941*Math.cos( 1.52699356726 +       529.6909650946*t)-Math.pow(t,1.0)*     0.00406683941*      529.6909650946*Math.sin( 1.52699356726 +       529.6909650946 * t);

        return jupiter_z_1+jupiter_z_0;
    }

    @JvmStatic private fun mars_x(t: Double): Double {
        var mars_x_0 = 0.0;
        mars_x_0+=-Math.pow(t,0.0)*     0.00155429009*       38.1330356378*Math.sin( 2.17051900894 +        38.1330356378 * t);
        mars_x_0+=-Math.pow(t,0.0)*     0.00271094292*       213.299095438*Math.sin( 4.01586959956 +        213.299095438 * t);
        mars_x_0+=-Math.pow(t,0.0)*     0.00482151285*      529.6909650946*Math.sin( 3.74021439144 +       529.6909650946 * t);
        mars_x_0+=-Math.pow(t,0.0)*     0.00494196754*    10021.8372800994*Math.sin( 0.59669127752 +     10021.8372800994 * t);
        mars_x_0+=-Math.pow(t,0.0)*     0.07070917372*     6681.2248533996*Math.sin( 0.25870338552 +      6681.2248533996 * t);
        mars_x_0+=-Math.pow(t,0.0)*     0.19473570996*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        mars_x_0+=-Math.pow(t,0.0)*     1.51769887405*     3340.6124266998*Math.sin( 6.20403346548 +      3340.6124266998 * t);

        var mars_x_1 = 0.0;
        mars_x_1+=Math.pow(t,0.0)*1.0*     0.00552437771*Math.cos( 5.09565872891 +      6681.2248533996*t)-Math.pow(t,1.0)*     0.00552437771*     6681.2248533996*Math.sin( 5.09565872891 +      6681.2248533996 * t);
        mars_x_1+=Math.pow(t,0.0)*1.0*     0.00862737448*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1.0)*     0.00862737448*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);

        return mars_x_1+mars_x_0;
    }

    @JvmStatic private fun mars_y(t: Double): Double {
        var mars_y_0 = 0.0;
        mars_y_0+=-Math.pow(t,0.0)*     0.00155437832*       38.1330356378*Math.sin( 0.59926749768 +        38.1330356378 * t);
        mars_y_0+=-Math.pow(t,0.0)*     0.00271492455*       213.299095438*Math.sin( 2.44409624683 +        213.299095438 * t);
        mars_y_0+=-Math.pow(t,0.0)*     0.00482218424*      529.6909650946*Math.sin( 2.16962356915 +       529.6909650946 * t);
        mars_y_0+=-Math.pow(t,0.0)*     0.00493872689*    10021.8372800994*Math.sin( 5.30877806678 +     10021.8372800994 * t);
        mars_y_0+=-Math.pow(t,0.0)*     0.07064547959*     6681.2248533996*Math.sin( 4.97051892898 +      6681.2248533996 * t);
        mars_y_0+=-Math.pow(t,0.0)*     0.08689350637*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        mars_y_0+=-Math.pow(t,0.0)*     1.51558927367*     3340.6124266998*Math.sin( 4.63212206588 +      3340.6124266998 * t);

        var mars_y_1 = 0.0;
        mars_y_1+=Math.pow(t,0.0)*1.0*     0.00551063576*Math.cos( 3.52128320402 +      6681.2248533996*t)-Math.pow(t,1.0)*     0.00551063576*     6681.2248533996*Math.sin( 3.52128320402 +      6681.2248533996 * t);
        mars_y_1+=Math.pow(t,0.0)*1.0*     0.01427318093*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1.0)*     0.01427318093*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);

        return mars_y_1+mars_y_0;
    }

    @JvmStatic private fun mars_z(t: Double): Double {
        var mars_z_0 = 0.0;
        mars_z_0+=-Math.pow(t,0.0)*     0.00228333831*     6681.2248533996*Math.sin( 4.10544022266 +      6681.2248533996 * t);
        mars_z_0+=-Math.pow(t,0.0)*     0.00659516885*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        mars_z_0+=-Math.pow(t,0.0)*     0.04901205639*     3340.6124266998*Math.sin( 3.76712324293 +      3340.6124266998 * t);

        var mars_z_1 = 0.0;
        mars_z_1+=Math.pow(t,0.0)*1.0*     0.00331842851*Math.cos( 6.05027773492 +      3340.6124266998*t)-Math.pow(t,1.0)*     0.00331842851*     3340.6124266998*Math.sin( 6.05027773492 +      3340.6124266998 * t);

        return mars_z_1+mars_z_0;
    }

    @JvmStatic private fun mercury_x(t: Double): Double {
        var mercury_x_0 = 0.0;
        mercury_x_0+=-Math.pow(t,0.0)*     0.00105716677*  104351.61256629678*Math.sin( 0.98379033182 +   104351.61256629678 * t);
        mercury_x_0+=-Math.pow(t,0.0)*     0.00155435621*       38.1330356378*Math.sin( 2.17052060921 +        38.1330356378 * t);
        mercury_x_0+=-Math.pow(t,0.0)*      0.0027179749*       213.299095438*Math.sin( 4.01600769847 +        213.299095438 * t);
        mercury_x_0+=-Math.pow(t,0.0)*     0.00495586029*      529.6909650946*Math.sin( 3.74115422358 +       529.6909650946 * t);
        mercury_x_0+=-Math.pow(t,0.0)*     0.00584261236*   78263.70942472259*Math.sin( 4.21599394757 +    78263.70942472259 * t);
        mercury_x_0+=-Math.pow(t,0.0)*     0.02596241714*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        mercury_x_0+=-Math.pow(t,0.0)*     0.03825746037*    52175.8062831484*Math.sin( 1.16485604343 +     52175.8062831484 * t);
        mercury_x_0+=-Math.pow(t,0.0)*     0.37546285495*    26087.9031415742*Math.sin( 4.39651506942 +     26087.9031415742 * t);

        var mercury_x_1 = 0.0;
        mercury_x_1+=Math.pow(t,0.0)*1.0*     0.00105289001*Math.cos( 5.91600475006 +     52175.8062831484*t)-Math.pow(t,1.0)*     0.00105289001*    52175.8062831484*Math.sin( 5.91600475006 +     52175.8062831484 * t);
        mercury_x_1+=Math.pow(t,0.0)*1.0*      0.0031755196*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*      0.0031755196*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return mercury_x_1+mercury_x_0;
    }

    @JvmStatic private fun mercury_y(t: Double): Double {
        var mercury_y_0 = 0.0;
        mercury_y_0+=-Math.pow(t,0.0)*     0.00106235475*  104351.61256629678*Math.sin( 5.70550616735 +   104351.61256629678 * t);
        mercury_y_0+=-Math.pow(t,0.0)*     0.00155444251*       38.1330356378*Math.sin( 0.59927014783 +        38.1330356378 * t);
        mercury_y_0+=-Math.pow(t,0.0)*     0.00272177927*       213.299095438*Math.sin( 2.44442843667 +        213.299095438 * t);
        mercury_y_0+=-Math.pow(t,0.0)*     0.00495452148*      529.6909650946*Math.sin( 2.17050902176 +       529.6909650946 * t);
        mercury_y_0+=-Math.pow(t,0.0)*     0.00587711171*   78263.70942472259*Math.sin( 2.65498896201 +    78263.70942472259 * t);
        mercury_y_0+=-Math.pow(t,0.0)*     0.03854667576*    52175.8062831484*Math.sin( 5.88780608961 +     52175.8062831484 * t);
        mercury_y_0+=-Math.pow(t,0.0)*     0.11592262295*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        mercury_y_0+=-Math.pow(t,0.0)*     0.37953636588*    26087.9031415742*Math.sin( 2.83780617821 +     26087.9031415742 * t);

        var mercury_y_1 = 0.0;
        mercury_y_1+=Math.pow(t,0.0)*1.0*     0.00107803834*Math.cos( 4.34964793883 +     52175.8062831484*t)-Math.pow(t,1.0)*     0.00107803834*    52175.8062831484*Math.sin( 4.34964793883 +     52175.8062831484 * t);

        return mercury_y_1+mercury_y_0;
    }

    @JvmStatic private fun mercury_z(t: Double): Double {
        var mercury_z_0 = 0.0;
        mercury_z_0+=-Math.pow(t,0.0)*      0.0046917154*    52175.8062831484*Math.sin( 5.04215742764 +     52175.8062831484 * t);
        mercury_z_0+=-Math.pow(t,0.0)*     0.00709887021*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        mercury_z_0+=-Math.pow(t,0.0)*     0.04607664562*    26087.9031415742*Math.sin( 1.99295081967 +     26087.9031415742 * t);

        var mercury_z_1 = 0.0;
        mercury_z_1+=Math.pow(t,0.0)*1.0*     0.00108722159*Math.cos( 3.91134750825 +     26087.9031415742*t)-Math.pow(t,1.0)*     0.00108722159*    26087.9031415742*Math.sin( 3.91134750825 +     26087.9031415742 * t);

        return mercury_z_1+mercury_z_0;
    }

    @JvmStatic private fun neptune_x(t: Double): Double {
        var neptune_x_0 = 0.0;
        neptune_x_0+=-Math.pow(t,0.0)*     0.00135901755*       77.7505439839*Math.sin( 5.54688721933 +        77.7505439839 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.00308146172*        73.297125859*Math.sin( 0.39998862713 +         73.297125859 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.00565506338*       41.1019810544*Math.sin( 5.98964911841 +        41.1019810544 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.00817566529*        2.9689454166*Math.sin( 0.78180136001 +         2.9689454166 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.00823755467*       35.1640902212*Math.sin( 1.43221512492 +        35.1640902212 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.00990668211*       74.7815985673*Math.sin( 5.37690139386 +        74.7815985673 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.02597449604*        1.4844727083*Math.sin( 1.99590330725 +         1.4844727083 * t);
        neptune_x_0+=-Math.pow(t,0.0)*      0.1350457827*       76.2660712756*Math.sin( 3.50075407055 +        76.2660712756 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.14934353052*       39.6175083461*Math.sin( 1.08499398649 +        39.6175083461 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.15725280871*       36.6485629295*Math.sin( 0.11319072402 +        36.6485629295 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.27050789973*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        neptune_x_0+=-Math.pow(t,0.0)*    30.05734568801*       38.1330356378*Math.sin(  5.3121134003 +        38.1330356378 * t);

        var neptune_x_1 = 0.0;
        neptune_x_1+=Math.pow(t,0.0)*1.0*     0.00118382753*Math.cos( 2.88255085978 +        76.2660712756*t)-Math.pow(t,1.0)*     0.00118382753*       76.2660712756*Math.sin( 2.88255085978 +        76.2660712756 * t);
        neptune_x_1+=Math.pow(t,0.0)*1.0*     0.00243112812*Math.cos( 5.46214905602 +        39.6175083461*t)-Math.pow(t,1.0)*     0.00243112812*       39.6175083461*Math.sin( 5.46214905602 +        39.6175083461 * t);
        neptune_x_1+=Math.pow(t,0.0)*1.0*     0.00255827017*Math.cos( 2.01935687782 +        36.6485629295*t)-Math.pow(t,1.0)*     0.00255827017*       36.6485629295*Math.sin( 2.01935687782 +        36.6485629295 * t);

        return neptune_x_1+neptune_x_0;
    }

    @JvmStatic private fun neptune_y(t: Double): Double {
        var neptune_y_0 = 0.0;
        neptune_y_0+=-Math.pow(t,0.0)*     0.00135911904*       77.7505439839*Math.sin( 3.97565894083 +        77.7505439839 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.00305149662*        73.297125859*Math.sin( 5.11023952334 +         73.297125859 * t);
        neptune_y_0+=-Math.pow(t,0.0)*      0.0056554783*       41.1019810544*Math.sin( 4.41843013268 +        41.1019810544 * t);
        neptune_y_0+=-Math.pow(t,0.0)*      0.0058216452*       35.1640902212*Math.sin(  6.1963385998 +        35.1640902212 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.00815165481*        2.9689454166*Math.sin( 5.49429738442 +         2.9689454166 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.00990408083*       74.7815985673*Math.sin( 3.80555424385 +        74.7815985673 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.02584389323*        1.4844727083*Math.sin( 0.42549727257 +         1.4844727083 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.13505308635*       76.2660712756*Math.sin( 1.92949466968 +        76.2660712756 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.14935398681*       39.6175083461*Math.sin( 5.79694896309 +        39.6175083461 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.15705776296*       36.6485629295*Math.sin( 4.82539969469 +        36.6485629295 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.30171988148*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        neptune_y_0+=-Math.pow(t,0.0)*    30.05900907352*       38.1330356378*Math.sin( 3.74086294715 +        38.1330356378 * t);

        var neptune_y_1 = 0.0;
        neptune_y_1+=Math.pow(t,0.0)*1.0*       0.001184118*Math.cos( 1.31131262408 +        76.2660712756*t)-Math.pow(t,1.0)*       0.001184118*       76.2660712756*Math.sin( 1.31131262408 +        76.2660712756 * t);
        neptune_y_1+=Math.pow(t,0.0)*1.0*     0.00243135236*Math.cos(  3.8909980142 +        39.6175083461*t)-Math.pow(t,1.0)*     0.00243135236*       39.6175083461*Math.sin(  3.8909980142 +        39.6175083461 * t);
        neptune_y_1+=Math.pow(t,0.0)*1.0*     0.00256112241*Math.cos( 0.44757496381 +        36.6485629295*t)-Math.pow(t,1.0)*     0.00256112241*       36.6485629295*Math.sin( 0.44757496381 +        36.6485629295 * t);
        neptune_y_1+=Math.pow(t,0.0)*1.0*     0.00352941377*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1.0)*     0.00352941377*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);

        return neptune_y_1+neptune_y_0;
    }

    @JvmStatic private fun neptune_z(t: Double): Double {
        var neptune_z_0 = 0.0;
        neptune_z_0+=-Math.pow(t,0.0)*     0.00417539868*       76.2660712756*Math.sin(  5.9130887139 +        76.2660712756 * t);
        neptune_z_0+=-Math.pow(t,0.0)*     0.00451964646*       39.6175083461*Math.sin( 3.50949727943 +        39.6175083461 * t);
        neptune_z_0+=-Math.pow(t,0.0)*     0.00474309033*       36.6485629295*Math.sin( 2.52218768352 +        36.6485629295 * t);
        neptune_z_0+=-Math.pow(t,0.0)*     0.01244825806*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        neptune_z_0+=-Math.pow(t,0.0)*     0.92861252357*       38.1330356378*Math.sin( 1.44103930199 +        38.1330356378 * t);

        var neptune_z_1 = 0.0;
        neptune_z_1+=Math.pow(t,0.0)*1.0*     0.00154877961*Math.cos( 2.14239038882 +        38.1330356378*t)-Math.pow(t,1.0)*     0.00154877961*       38.1330356378*Math.sin( 2.14239038882 +        38.1330356378 * t);

        return neptune_z_1+neptune_z_0;
    }

    @JvmStatic private fun saturn_x(t: Double): Double {
        var saturn_x_0 = 0.0;
        saturn_x_0+=-Math.pow(t,0.0)*     0.00149659945*       38.1330356378*Math.sin( 2.17071100189 +        38.1330356378 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.00372789068*      433.7117378768*Math.sin( 0.00137750888 +       433.7117378768 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.00509529043*      103.0927742186*Math.sin( 4.95879639669 +       103.0927742186 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.00716112591*      316.3918696566*Math.sin( 2.71151505735 +       316.3918696566 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.01097374519*       639.897286314*Math.sin( 5.65753938643 +        639.897286314 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.01115372225*      419.4846438752*Math.sin( 3.15690865182 +       419.4846438752 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.01255113414*      110.2063212194*Math.sin( 2.17347170552 +       110.2063212194 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.02335961354*        7.1135470008*Math.sin( 2.02227905783 +         7.1135470008 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.04274172066*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.06622371284*      220.4126424388*Math.sin( 0.75094738122 +       220.4126424388 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.06758489145*      206.1855484372*Math.sin( 4.16767544586 +       206.1855484372 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.26404799161*       426.598190876*Math.sin( 0.12391580771 +        426.598190876 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     9.51366533422*       213.299095438*Math.sin(  0.8744138065 +        213.299095438 * t);

        var saturn_x_1 = 0.0;
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.00119517217*Math.cos( 1.14736396934 +       110.2063212194*t)-Math.pow(t,1.0)*     0.00119517217*      110.2063212194*Math.sin( 1.14736396934 +       110.2063212194 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.00189142591*Math.cos( 4.48642939502 +       433.7117378768*t)-Math.pow(t,1.0)*     0.00189142591*      433.7117378768*Math.sin( 4.48642939502 +       433.7117378768 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.00203589147*Math.cos( 1.10998720016 +        213.299095438*t)-Math.pow(t,1.0)*     0.00203589147*       213.299095438*Math.sin( 1.10998720016 +        213.299095438 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.00256488381*Math.cos( 3.52479443238 +        639.897286314*t)-Math.pow(t,1.0)*     0.00256488381*       639.897286314*Math.sin( 3.52479443238 +        639.897286314 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.00312269012*Math.cos( 4.83002443322 +       419.4846438752*t)-Math.pow(t,1.0)*     0.00312269012*      419.4846438752*Math.sin( 4.83002443322 +       419.4846438752 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.00627003445*Math.cos( 0.32898258729 +         7.1135470008*t)-Math.pow(t,1.0)*     0.00627003445*        7.1135470008*Math.sin( 0.32898258729 +         7.1135470008 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.02642347272*Math.cos( 5.33291950842 +       220.4126424388*t)-Math.pow(t,1.0)*     0.02642347272*      220.4126424388*Math.sin( 5.33291950842 +       220.4126424388 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.02714141496*Math.cos( 5.85229546861 +       206.1855484372*t)-Math.pow(t,1.0)*     0.02714141496*      206.1855484372*Math.sin( 5.85229546861 +       206.1855484372 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.03084144308*Math.cos( 4.27565898829 +        426.598190876*t)-Math.pow(t,1.0)*     0.03084144308*       426.598190876*Math.sin( 4.27565898829 +        426.598190876 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.07573807889*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*     0.07573807889*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var saturn_x_2 = 0.0;
        saturn_x_2+=Math.pow(t,1.0)*2.0*     0.00224237163*Math.cos( 2.49151267683 +        426.598190876*t)-Math.pow(t,2.0)*     0.00224237163*       426.598190876*Math.sin( 2.49151267683 +        426.598190876 * t);
        saturn_x_2+=Math.pow(t,1.0)*2.0*     0.00336013651*Math.cos(  2.4254743221 +        213.299095438*t)-Math.pow(t,2.0)*     0.00336013651*       213.299095438*Math.sin(  2.4254743221 +        213.299095438 * t);
        saturn_x_2+=Math.pow(t,1.0)*2.0*     0.00443297401*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,2.0)*     0.00443297401*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        saturn_x_2+=Math.pow(t,1.0)*2.0*     0.00545678885*Math.cos( 3.62343709789 +       220.4126424388*t)-Math.pow(t,2.0)*     0.00545678885*      220.4126424388*Math.sin( 3.62343709789 +       220.4126424388 * t);
        saturn_x_2+=Math.pow(t,1.0)*2.0*     0.00560586041*Math.cos( 1.26401676555 +       206.1855484372*t)-Math.pow(t,2.0)*     0.00560586041*      206.1855484372*Math.sin( 1.26401676555 +       206.1855484372 * t);

        return saturn_x_2+saturn_x_1+saturn_x_0;
    }

    @JvmStatic private fun saturn_y(t: Double): Double {
        var saturn_y_0 = 0.0;
        saturn_y_0+=-Math.pow(t,0.0)*     0.00149675444*       38.1330356378*Math.sin( 0.59938943096 +        38.1330356378 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.00335413797*      103.0927742186*Math.sin( 0.66392970394 +       103.0927742186 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.00373221824*      433.7117378768*Math.sin( 4.71309283502 +       433.7117378768 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.00700636234*      316.3918696566*Math.sin( 1.13613024684 +       316.3918696566 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.01098442011*       639.897286314*Math.sin( 4.08609387384 +        639.897286314 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.01183557497*      419.4846438752*Math.sin( 1.34637027573 +       419.4846438752 * t);
        saturn_y_0+=-Math.pow(t,0.0)*       0.012455238*      110.2063212194*Math.sin( 0.60375781288 +       110.2063212194 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.02345226948*        7.1135470008*Math.sin( 0.44652393276 +         7.1135470008 * t);
        saturn_y_0+=-Math.pow(t,0.0)*       0.066316792*      220.4126424388*Math.sin( 5.46258849076 +       220.4126424388 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.06914690347*      206.1855484372*Math.sin( 2.55279029588 +       206.1855484372 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.26434197609*       426.598190876*Math.sin( 4.83528742856 +        426.598190876 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.79354119271*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     9.52714696877*       213.299095438*Math.sin( 5.58600556072 +        213.299095438 * t);

        var saturn_y_1 = 0.0;
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.00116775818*Math.cos( 5.89150757121 +       110.2063212194*t)-Math.pow(t,1.0)*     0.00116775818*      110.2063212194*Math.sin( 5.89150757121 +       110.2063212194 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.00164086267*Math.cos( 5.29239224879 +        213.299095438*t)-Math.pow(t,1.0)*     0.00164086267*       213.299095438*Math.sin( 5.29239224879 +        213.299095438 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.00189379568*Math.cos(  2.9150232868 +       433.7117378768*t)-Math.pow(t,1.0)*     0.00189379568*      433.7117378768*Math.sin(  2.9150232868 +       433.7117378768 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.00256727017*Math.cos( 1.95352327208 +        639.897286314*t)-Math.pow(t,1.0)*     0.00256727017*       639.897286314*Math.sin( 1.95352327208 +        639.897286314 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.00312184641*Math.cos( 3.25850939353 +       419.4846438752*t)-Math.pow(t,1.0)*     0.00312184641*      419.4846438752*Math.sin( 3.25850939353 +       419.4846438752 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.00631417689*Math.cos( 5.03245728319 +         7.1135470008*t)-Math.pow(t,1.0)*     0.00631417689*        7.1135470008*Math.sin( 5.03245728319 +         7.1135470008 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.02646734779*Math.cos( 3.76132299914 +       220.4126424388*t)-Math.pow(t,1.0)*     0.02646734779*      220.4126424388*Math.sin( 3.76132299914 +       220.4126424388 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.02740812928*Math.cos(  4.2666750646 +       206.1855484372*t)-Math.pow(t,1.0)*     0.02740812928*      206.1855484372*Math.sin(  4.2666750646 +       206.1855484372 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.03089676414*Math.cos( 2.70347020059 +        426.598190876*t)-Math.pow(t,1.0)*     0.03089676414*       426.598190876*Math.sin( 2.70347020059 +        426.598190876 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.05373895252*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*     0.05373895252*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var saturn_y_2 = 0.0;
        saturn_y_2+=Math.pow(t,1.0)*2.0*     0.00225456249*Math.cos( 0.91699830789 +        426.598190876*t)-Math.pow(t,2.0)*     0.00225456249*       426.598190876*Math.sin( 0.91699830789 +        426.598190876 * t);
        saturn_y_2+=Math.pow(t,1.0)*2.0*     0.00362190876*Math.cos( 0.89540102818 +        213.299095438*t)-Math.pow(t,2.0)*     0.00362190876*       213.299095438*Math.sin( 0.89540102818 +        213.299095438 * t);
        saturn_y_2+=Math.pow(t,1.0)*2.0*     0.00458462799*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,2.0)*     0.00458462799*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        saturn_y_2+=Math.pow(t,1.0)*2.0*     0.00546856143*Math.cos( 2.05154974712 +       220.4126424388*t)-Math.pow(t,2.0)*     0.00546856143*      220.4126424388*Math.sin( 2.05154974712 +       220.4126424388 * t);
        saturn_y_2+=Math.pow(t,1.0)*2.0*     0.00563545688*Math.cos( 5.97115835983 +       206.1855484372*t)-Math.pow(t,2.0)*     0.00563545688*      206.1855484372*Math.sin( 5.97115835983 +       206.1855484372 * t);

        return saturn_y_2+saturn_y_1+saturn_y_0;
    }

    @JvmStatic private fun saturn_z(t: Double): Double {
        var saturn_z_0 = 0.0;
        saturn_z_0+=-Math.pow(t,0.0)*     0.00286852189*      220.4126424388*Math.sin( 3.48073528206 +       220.4126424388 * t);
        saturn_z_0+=-Math.pow(t,0.0)*     0.00329186544*      206.1855484372*Math.sin( 0.57121482436 +       206.1855484372 * t);
        saturn_z_0+=-Math.pow(t,0.0)*     0.01147953788*       426.598190876*Math.sin( 2.85128771957 +        426.598190876 * t);
        saturn_z_0+=-Math.pow(t,0.0)*     0.01213097211*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        saturn_z_0+=-Math.pow(t,0.0)*     0.41345140292*       213.299095438*Math.sin( 3.60234141893 +        213.299095438 * t);

        var saturn_z_1 = 0.0;
        saturn_z_1+=Math.pow(t,0.0)*1.0*     0.00101437388*Math.cos( 1.79095832223 +       220.4126424388*t)-Math.pow(t,1.0)*     0.00101437388*      220.4126424388*Math.sin( 1.79095832223 +       220.4126424388 * t);
        saturn_z_1+=Math.pow(t,0.0)*1.0*      0.0013022499*Math.cos( 2.26141028606 +       206.1855484372*t)-Math.pow(t,1.0)*      0.0013022499*      206.1855484372*Math.sin( 2.26141028606 +       206.1855484372 * t);
        saturn_z_1+=Math.pow(t,0.0)*1.0*     0.00528167867*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1.0)*     0.00528167867*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        saturn_z_1+=Math.pow(t,0.0)*1.0*      0.0190595894*Math.cos( 4.94544746619 +        213.299095438*t)-Math.pow(t,1.0)*      0.0190595894*       213.299095438*Math.sin( 4.94544746619 +        213.299095438 * t);

        var saturn_z_2 = 0.0;
        saturn_z_2+=Math.pow(t,1.0)*2.0*     0.00131237677*Math.cos( 0.08868998014 +        213.299095438*t)-Math.pow(t,2.0)*     0.00131237677*       213.299095438*Math.sin( 0.08868998014 +        213.299095438 * t);

        return saturn_z_2+saturn_z_1+saturn_z_0;
    }

    @JvmStatic private fun sun_x(t: Double): Double {
        var sun_x_0 = 0.0;
        sun_x_0+=-Math.pow(t,0.0)*     0.00155435675*       38.1330356378*Math.sin( 2.17052050061 +        38.1330356378 * t);
        sun_x_0+=-Math.pow(t,0.0)*     0.00271802376*       213.299095438*Math.sin( 4.01601149775 +        213.299095438 * t);
        sun_x_0+=-Math.pow(t,0.0)*     0.00495672739*      529.6909650946*Math.sin( 3.74107356792 +       529.6909650946 * t);

        return sun_x_0;
    }

    @JvmStatic private fun sun_y(t: Double): Double {
        var sun_y_0 = 0.0;
        sun_y_0+=-Math.pow(t,0.0)*     0.00155444313*       38.1330356378*Math.sin(  0.5992701084 +        38.1330356378 * t);
        sun_y_0+=-Math.pow(t,0.0)*     0.00272185821*       213.299095438*Math.sin( 2.44443364925 +        213.299095438 * t);
        sun_y_0+=-Math.pow(t,0.0)*     0.00495536218*      529.6909650946*Math.sin( 2.17046712634 +       529.6909650946 * t);

        return sun_y_0;
    }

    @JvmStatic private fun sun_z(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun uranus_x(t: Double): Double {
        var uranus_x_0 = 0.0;
        uranus_x_0+=-Math.pow(t,0.0)*     0.00104615229*       146.594251718*Math.sin( 3.90538915195 +        146.594251718 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00110162872*       35.1640902212*Math.sin( 4.45478121996 +        35.1640902212 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00111255099*      222.8603229936*Math.sin( 5.12253353573 +       222.8603229936 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00120354886*       39.6175083461*Math.sin(  4.1021867007 +        39.6175083461 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00125099578*      111.4301614968*Math.sin( 2.51455157066 +       111.4301614968 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00135334157*       78.7137518304*Math.sin( 5.51062460646 +        78.7137518304 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00145499145*       70.8494453042*Math.sin( 2.31759819136 +        70.8494453042 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00383608186*      138.5174968707*Math.sin( 6.18762167352 +       138.5174968707 * t);
        uranus_x_0+=-Math.pow(t,0.0)*      0.0045824226*        2.9689454166*Math.sin( 3.90788427382 +         2.9689454166 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00547675794*       85.8272988312*Math.sin( 3.63127816021 +        85.8272988312 * t);
        uranus_x_0+=-Math.pow(t,0.0)*       0.005851598*       71.8126531507*Math.sin( 4.79934731599 +        71.8126531507 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00621603101*       77.7505439839*Math.sin( 3.05881560775 +        77.7505439839 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00633971831*       63.7358983034*Math.sin(  4.0955458474 +        63.7358983034 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00657496073*      151.0476698429*Math.sin( 0.57595186181 +       151.0476698429 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00944969862*       11.0457002639*Math.sin( 1.65871112189 +        11.0457002639 * t);
        uranus_x_0+=-Math.pow(t,0.0)*      0.0144415347*      148.0787244263*Math.sin( 2.65117108186 +       148.0787244263 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.01542890129*      224.3447957019*Math.sin( 4.12122840701 +       224.3447957019 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.06200970387*        1.4844727083*Math.sin( 5.14043568284 +         1.4844727083 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.14129215712*       76.2660712756*Math.sin( 4.39576776954 +        76.2660712756 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.14667584671*        73.297125859*Math.sin( 3.42395875589 +         73.297125859 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.44400556159*      149.5631971346*Math.sin( 1.65967535182 +       149.5631971346 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     1.32301898121*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        uranus_x_0+=-Math.pow(t,0.0)*    19.17286937362*       74.7815985673*Math.sin( 5.48133416758 +        74.7815985673 * t);

        var uranus_x_1 = 0.0;
        uranus_x_1+=Math.pow(t,0.0)*1.0*     0.00111041831*Math.cos( 5.57157483973 +        11.0457002639*t)-Math.pow(t,1.0)*     0.00111041831*       11.0457002639*Math.sin( 5.57157483973 +        11.0457002639 * t);
        uranus_x_1+=Math.pow(t,0.0)*1.0*     0.00229661096*Math.cos( 2.48203377424 +        76.2660712756*t)-Math.pow(t,1.0)*     0.00229661096*       76.2660712756*Math.sin( 2.48203377424 +        76.2660712756 * t);
        uranus_x_1+=Math.pow(t,0.0)*1.0*     0.00239830578*Math.cos( 5.33657752107 +         73.297125859*t)-Math.pow(t,1.0)*     0.00239830578*        73.297125859*Math.sin( 5.33657752107 +         73.297125859 * t);
        uranus_x_1+=Math.pow(t,0.0)*1.0*     0.00528174379*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1.0)*     0.00528174379*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        uranus_x_1+=Math.pow(t,0.0)*1.0*     0.00739697937*Math.cos( 6.01067921255 +       149.5631971346*t)-Math.pow(t,1.0)*     0.00739697937*      149.5631971346*Math.sin( 6.01067921255 +       149.5631971346 * t);

        return uranus_x_1+uranus_x_0;
    }

    @JvmStatic private fun uranus_y(t: Double): Double {
        var uranus_y_0 = 0.0;
        uranus_y_0+=-Math.pow(t,0.0)*     0.00104503352*       146.594251718*Math.sin( 2.33345670641 +        146.594251718 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00108550063*       35.1640902212*Math.sin( 6.02230047678 +        35.1640902212 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00111199717*      222.8603229936*Math.sin( 3.55163790142 +       222.8603229936 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00120431731*       39.6175083461*Math.sin( 2.53138588744 +        39.6175083461 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00124862444*      111.4301614968*Math.sin( 0.94315799565 +       111.4301614968 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00135284941*       78.7137518304*Math.sin( 3.93970261854 +        78.7137518304 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00144026146*       70.8494453042*Math.sin( 0.75015758735 +        70.8494453042 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00387905368*      138.5174968707*Math.sin( 4.62027047251 +       138.5174968707 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00459611215*        2.9689454166*Math.sin( 2.33745675699 +         2.9689454166 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00541938502*       71.8126531507*Math.sin( 3.24476518729 +        71.8126531507 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00547449443*       85.8272988312*Math.sin( 2.06038015757 +        85.8272988312 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00621305207*       77.7505439839*Math.sin( 1.48795124826 +        77.7505439839 * t);
        uranus_y_0+=-Math.pow(t,0.0)*      0.0065030702*       63.7358983034*Math.sin( 2.76144565363 +        63.7358983034 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00657314387*      151.0476698429*Math.sin( 5.28830720039 +       151.0476698429 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00938950136*       11.0457002639*Math.sin( 0.09277492739 +        11.0457002639 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.01442293466*      148.0787244263*Math.sin( 1.08004535633 +       148.0787244263 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.01542607086*      224.3447957019*Math.sin(  2.5504154317 +       224.3447957019 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.06249939655*        1.4844727083*Math.sin( 3.56960238469 +         1.4844727083 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.14122904825*       76.2660712756*Math.sin( 2.82489928705 +        76.2660712756 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.14755311401*        73.297125859*Math.sin( 1.85423292905 +         73.297125859 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.16222255941*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.44388525091*      149.5631971346*Math.sin( 0.08884126943 +       149.5631971346 * t);
        uranus_y_0+=-Math.pow(t,0.0)*    19.16434475791*       74.7815985673*Math.sin( 3.91045677275 +        74.7815985673 * t);

        var uranus_y_1 = 0.0;
        uranus_y_1+=Math.pow(t,0.0)*1.0*     0.00110133819*Math.cos( 4.00844673444 +        11.0457002639*t)-Math.pow(t,1.0)*     0.00110133819*       11.0457002639*Math.sin( 4.00844673444 +        11.0457002639 * t);
        uranus_y_1+=Math.pow(t,0.0)*1.0*     0.00229380743*Math.cos( 0.91089104293 +        76.2660712756*t)-Math.pow(t,1.0)*     0.00229380743*       76.2660712756*Math.sin( 0.91089104293 +        76.2660712756 * t);
        uranus_y_1+=Math.pow(t,0.0)*1.0*     0.00238535521*Math.cos( 3.76882481679 +         73.297125859*t)-Math.pow(t,1.0)*     0.00238535521*        73.297125859*Math.sin( 3.76882481679 +         73.297125859 * t);
        uranus_y_1+=Math.pow(t,0.0)*1.0*     0.00739195286*Math.cos( 4.43963987365 +       149.5631971346*t)-Math.pow(t,1.0)*     0.00739195286*      149.5631971346*Math.sin( 4.43963987365 +       149.5631971346 * t);
        uranus_y_1+=Math.pow(t,0.0)*1.0*     0.02157902502*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*     0.02157902502*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return uranus_y_1+uranus_y_0;
    }

    @JvmStatic private fun uranus_z(t: Double): Double {
        var uranus_z_0 = 0.0;
        uranus_z_0+=-Math.pow(t,0.0)*     0.00190282274*       76.2660712756*Math.sin( 1.61654207891 +        76.2660712756 * t);
        uranus_z_0+=-Math.pow(t,0.0)*     0.00190873655*        73.297125859*Math.sin( 0.57869366179 +         73.297125859 * t);
        uranus_z_0+=-Math.pow(t,0.0)*     0.00599290075*      149.5631971346*Math.sin( 5.08119534568 +       149.5631971346 * t);
        uranus_z_0+=-Math.pow(t,0.0)*     0.01775471434*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        uranus_z_0+=-Math.pow(t,0.0)*     0.25876996652*       74.7815985673*Math.sin( 2.61861278845 +        74.7815985673 * t);

        var uranus_z_1 = 0.0;
        uranus_z_1+=Math.pow(t,0.0)*1.0*     0.00655887992*Math.cos( 0.01271946942 +        74.7815985673*t)-Math.pow(t,1.0)*     0.00655887992*       74.7815985673*Math.sin( 0.01271946942 +        74.7815985673 * t);

        return uranus_z_1+uranus_z_0;
    }

    @JvmStatic private fun venus_x(t: Double): Double {
        var venus_x_0 = 0.0;
        venus_x_0+=-Math.pow(t,0.0)*     0.00155435209*       38.1330356378*Math.sin(  2.1705205205 +        38.1330356378 * t);
        venus_x_0+=-Math.pow(t,0.0)*     0.00244499876*     20426.571092422*Math.sin( 4.05566613867 +      20426.571092422 * t);
        venus_x_0+=-Math.pow(t,0.0)*     0.00271754748*       213.299095438*Math.sin( 4.01601261142 +        213.299095438 * t);
        venus_x_0+=-Math.pow(t,0.0)*     0.00494908458*      529.6909650946*Math.sin( 3.74108234732 +       529.6909650946 * t);
        venus_x_0+=-Math.pow(t,0.0)*     0.00515822267*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        venus_x_0+=-Math.pow(t,0.0)*     0.72211104628*     10213.285546211*Math.sin( 3.17575836361 +      10213.285546211 * t);

        return venus_x_0;
    }

    @JvmStatic private fun venus_y(t: Double): Double {
        var venus_y_0 = 0.0;
        venus_y_0+=-Math.pow(t,0.0)*     0.00155443844*       38.1330356378*Math.sin( 0.59927014146 +        38.1330356378 * t);
        venus_y_0+=-Math.pow(t,0.0)*      0.0024488419*     20426.571092422*Math.sin( 2.48564953999 +      20426.571092422 * t);
        venus_y_0+=-Math.pow(t,0.0)*     0.00272138024*       213.299095438*Math.sin( 2.44443638845 +        213.299095438 * t);
        venus_y_0+=-Math.pow(t,0.0)*     0.00494765697*      529.6909650946*Math.sin( 2.17048019743 +       529.6909650946 * t);
        venus_y_0+=-Math.pow(t,0.0)*     0.00515636737*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        venus_y_0+=-Math.pow(t,0.0)*     0.72324643689*     10213.285546211*Math.sin( 1.60573808356 +      10213.285546211 * t);

        return venus_y_0;
    }

    @JvmStatic private fun venus_z(t: Double): Double {
        var venus_z_0 = 0.0;
        venus_z_0+=-Math.pow(t,0.0)*     0.04282979819*     10213.285546211*Math.sin( 0.26703856471 +      10213.285546211 * t);

        var venus_z_1 = 0.0;
        venus_z_1+=Math.pow(t,0.0)*1.0*     0.00208095894*Math.cos( 1.88967278742 +      10213.285546211*t)-Math.pow(t,1.0)*     0.00208095894*     10213.285546211*Math.sin( 1.88967278742 +      10213.285546211 * t);

        return venus_z_1+venus_z_0;
    }

}
