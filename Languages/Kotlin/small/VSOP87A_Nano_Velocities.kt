//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

object VSOP87A_Nano_Velocities{
    @JvmStatic fun getEarth(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=earth_x(t) / 365250.0;
        temp[1]=earth_y(t) / 365250.0;
        temp[2]=earth_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getEmb(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=emb_x(t) / 365250.0;
        temp[1]=emb_y(t) / 365250.0;
        temp[2]=emb_z(t) / 365250.0;
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
        earth_x_0+=-Math.pow(t,0.0)*     0.00561144206*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        earth_x_0+=-Math.pow(t,0.0)*       0.008352573*    12566.1516999828*Math.sin(  1.7103453945 +     12566.1516999828 * t);
        earth_x_0+=-Math.pow(t,0.0)*     0.99982928844*     6283.0758499914*Math.sin( 1.75348568475 +      6283.0758499914 * t);

        var earth_x_1 = 0.0;
        earth_x_1+=Math.pow(t,0.0)*1.0*     0.00123403056*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*     0.00123403056*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return earth_x_1+earth_x_0;
    }

    @JvmStatic private fun earth_y(t: Double): Double {
        var earth_y_0 = 0.0;
        earth_y_0+=-Math.pow(t,0.0)*     0.00835292314*    12566.1516999828*Math.sin( 0.13952878991 +     12566.1516999828 * t);
        earth_y_0+=-Math.pow(t,0.0)*     0.02442699036*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        earth_y_0+=-Math.pow(t,0.0)*      0.9998921103*     6283.0758499914*Math.sin( 0.18265890456 +      6283.0758499914 * t);

        return earth_y_0;
    }

    @JvmStatic private fun earth_z(t: Double): Double {
        var earth_z_1 = 0.0;
        earth_z_1+=Math.pow(t,0.0)*1.0*     0.00227822442*Math.cos( 3.41372504278 +      6283.0758499914*t)-Math.pow(t,1.0)*     0.00227822442*     6283.0758499914*Math.sin( 3.41372504278 +      6283.0758499914 * t);

        return earth_z_1;
    }

    @JvmStatic private fun emb_x(t: Double): Double {
        var emb_x_0 = 0.0;
        emb_x_0+=-Math.pow(t,0.0)*     0.00561144161*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        emb_x_0+=-Math.pow(t,0.0)*       0.008352573*    12566.1516999828*Math.sin(  1.7103453945 +     12566.1516999828 * t);
        emb_x_0+=-Math.pow(t,0.0)*      0.9998292746*     6283.0758499914*Math.sin( 1.75348568475 +      6283.0758499914 * t);

        var emb_x_1 = 0.0;
        emb_x_1+=Math.pow(t,0.0)*1.0*     0.00123403046*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*     0.00123403046*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return emb_x_1+emb_x_0;
    }

    @JvmStatic private fun emb_y(t: Double): Double {
        var emb_y_0 = 0.0;
        emb_y_0+=-Math.pow(t,0.0)*     0.00835292314*    12566.1516999828*Math.sin( 0.13952878991 +     12566.1516999828 * t);
        emb_y_0+=-Math.pow(t,0.0)*     0.02442698841*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        emb_y_0+=-Math.pow(t,0.0)*     0.99989209645*     6283.0758499914*Math.sin( 0.18265890456 +      6283.0758499914 * t);

        return emb_y_0;
    }

    @JvmStatic private fun emb_z(t: Double): Double {
        var emb_z_1 = 0.0;
        emb_z_1+=Math.pow(t,0.0)*1.0*     0.00227822442*Math.cos( 3.41372504278 +      6283.0758499914*t)-Math.pow(t,1.0)*     0.00227822442*     6283.0758499914*Math.sin( 3.41372504278 +      6283.0758499914 * t);

        return emb_z_1;
    }

    @JvmStatic private fun jupiter_x(t: Double): Double {
        var jupiter_x_0 = 0.0;
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00103494641*     1052.2683831884*Math.sin(  6.1932476912 +      1052.2683831884 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00114201562*     1162.4747044078*Math.sin( 0.01567084269 +      1162.4747044078 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00134226996*       213.299095438*Math.sin( 0.87648567011 +        213.299095438 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00144867641*      632.7837393132*Math.sin(  5.5598057708 +       632.7837393132 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00150678793*      110.2063212194*Math.sin( 6.12003027739 +       110.2063212194 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00194025405*       426.598190876*Math.sin( 5.02580363996 +        426.598190876 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00301689798*        7.1135470008*Math.sin( 5.17372551148 +         7.1135470008 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00385975375*      103.0927742186*Math.sin( 2.01229910687 +       103.0927742186 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.00457752736*     1589.0728952838*Math.sin( 1.29883700755 +      1589.0728952838 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.01476224578*      536.8045120954*Math.sin( 3.61736921122 +       536.8045120954 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.01500672056*      522.5774180938*Math.sin(  0.7317513461 +       522.5774180938 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.12593937922*     1059.3819301892*Math.sin( 0.94911583701 +      1059.3819301892 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*      0.3666264232*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     5.19663470114*      529.6909650946*Math.sin( 0.59945082355 +       529.6909650946 * t);

        var jupiter_x_1 = 0.0;
        jupiter_x_1+=Math.pow(t,0.0)*1.0*      0.0058915706*Math.cos( 1.91556314637 +       536.8045120954*t)-Math.pow(t,1.0)*      0.0058915706*      536.8045120954*Math.sin( 1.91556314637 +       536.8045120954 * t);
        jupiter_x_1+=Math.pow(t,0.0)*1.0*     0.00599720482*Math.cos( 2.42996678275 +       522.5774180938*t)-Math.pow(t,1.0)*     0.00599720482*      522.5774180938*Math.sin( 2.42996678275 +       522.5774180938 * t);
        jupiter_x_1+=Math.pow(t,0.0)*1.0*     0.00635297172*Math.cos( 0.10662156868 +      1059.3819301892*t)-Math.pow(t,1.0)*     0.00635297172*     1059.3819301892*Math.sin( 0.10662156868 +      1059.3819301892 * t);
        jupiter_x_1+=Math.pow(t,0.0)*1.0*     0.00882389251*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1.0)*     0.00882389251*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);

        var jupiter_x_2 = 0.0;
        jupiter_x_2+=Math.pow(t,1.0)*2.0*     0.00121521296*Math.cos( 0.21155109275 +       536.8045120954*t)-Math.pow(t,2.0)*     0.00121521296*      536.8045120954*Math.sin( 0.21155109275 +       536.8045120954 * t);
        jupiter_x_2+=Math.pow(t,1.0)*2.0*     0.00123864644*Math.cos( 4.13563277513 +       522.5774180938*t)-Math.pow(t,2.0)*     0.00123864644*      522.5774180938*Math.sin( 4.13563277513 +       522.5774180938 * t);

        return jupiter_x_2+jupiter_x_1+jupiter_x_0;
    }

    @JvmStatic private fun jupiter_y(t: Double): Double {
        var jupiter_y_0 = 0.0;
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00101999807*     1052.2683831884*Math.sin( 4.57594598884 +      1052.2683831884 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*      0.0011404311*     1162.4747044078*Math.sin( 4.72982262969 +      1162.4747044078 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00132696764*       213.299095438*Math.sin( 5.62184581859 +        213.299095438 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00139480058*      632.7837393132*Math.sin( 4.00075307706 +       632.7837393132 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00146104656*      110.2063212194*Math.sin( 4.62267224431 +       110.2063212194 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00192333128*       426.598190876*Math.sin( 3.45690564771 +        426.598190876 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00300686679*        7.1135470008*Math.sin(  3.6094805074 +         7.1135470008 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00378285578*      103.0927742186*Math.sin( 3.53006782383 +       103.0927742186 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.00457750806*     1589.0728952838*Math.sin( 6.01129093501 +      1589.0728952838 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*      0.0147580937*      536.8045120954*Math.sin( 2.04679566495 +       536.8045120954 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.01508275299*      522.5774180938*Math.sin( 5.43934968102 +       522.5774180938 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.09363670616*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.12592862602*     1059.3819301892*Math.sin( 5.66160227728 +      1059.3819301892 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     5.19520046589*      529.6909650946*Math.sin( 5.31203162731 +       529.6909650946 * t);

        var jupiter_y_1 = 0.0;
        jupiter_y_1+=Math.pow(t,0.0)*1.0*     0.00588928504*Math.cos(  0.3449157689 +       536.8045120954*t)-Math.pow(t,1.0)*     0.00588928504*      536.8045120954*Math.sin(  0.3449157689 +       536.8045120954 * t);
        jupiter_y_1+=Math.pow(t,0.0)*1.0*     0.00601160431*Math.cos(  0.8581124994 +       522.5774180938*t)-Math.pow(t,1.0)*     0.00601160431*      522.5774180938*Math.sin(  0.8581124994 +       522.5774180938 * t);
        jupiter_y_1+=Math.pow(t,0.0)*1.0*     0.00634859798*Math.cos(  4.8190319965 +      1059.3819301892*t)-Math.pow(t,1.0)*     0.00634859798*     1059.3819301892*Math.sin(  4.8190319965 +      1059.3819301892 * t);
        jupiter_y_1+=Math.pow(t,0.0)*1.0*     0.01694798253*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1.0)*     0.01694798253*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);

        var jupiter_y_2 = 0.0;
        jupiter_y_2+=Math.pow(t,1.0)*2.0*     0.00121455991*Math.cos(  4.9239876638 +       536.8045120954*t)-Math.pow(t,2.0)*     0.00121455991*      536.8045120954*Math.sin(  4.9239876638 +       536.8045120954 * t);
        jupiter_y_2+=Math.pow(t,1.0)*2.0*     0.00124032509*Math.cos( 2.56495576833 +       522.5774180938*t)-Math.pow(t,2.0)*     0.00124032509*      522.5774180938*Math.sin( 2.56495576833 +       522.5774180938 * t);

        return jupiter_y_2+jupiter_y_1+jupiter_y_0;
    }

    @JvmStatic private fun jupiter_z(t: Double): Double {
        var jupiter_z_0 = 0.0;
        jupiter_z_0+=-Math.pow(t,0.0)*     0.00286562094*     1059.3819301892*Math.sin( 3.90812238338 +      1059.3819301892 * t);
        jupiter_z_0+=-Math.pow(t,0.0)*     0.00859031952*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        jupiter_z_0+=-Math.pow(t,0.0)*     0.11823100489*      529.6909650946*Math.sin( 3.55844646343 +       529.6909650946 * t);

        var jupiter_z_1 = 0.0;
        jupiter_z_1+=Math.pow(t,0.0)*1.0*     0.00407072175*Math.cos( 1.52699353482 +       529.6909650946*t)-Math.pow(t,1.0)*     0.00407072175*      529.6909650946*Math.sin( 1.52699353482 +       529.6909650946 * t);

        return jupiter_z_1+jupiter_z_0;
    }

    @JvmStatic private fun mars_x(t: Double): Double {
        var mars_x_0 = 0.0;
        mars_x_0+=-Math.pow(t,0.0)*     0.00494196914*    10021.8372800994*Math.sin( 0.59669127768 +     10021.8372800994 * t);
        mars_x_0+=-Math.pow(t,0.0)*     0.07070919655*     6681.2248533996*Math.sin( 0.25870338558 +      6681.2248533996 * t);
        mars_x_0+=-Math.pow(t,0.0)*     0.19502945246*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        mars_x_0+=-Math.pow(t,0.0)*     1.51769936383*     3340.6124266998*Math.sin( 6.20403346548 +      3340.6124266998 * t);

        var mars_x_1 = 0.0;
        mars_x_1+=Math.pow(t,0.0)*1.0*     0.00552437949*Math.cos( 5.09565872891 +      6681.2248533996*t)-Math.pow(t,1.0)*     0.00552437949*     6681.2248533996*Math.sin( 5.09565872891 +      6681.2248533996 * t);
        mars_x_1+=Math.pow(t,0.0)*1.0*     0.00861441374*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1.0)*     0.00861441374*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);

        return mars_x_1+mars_x_0;
    }

    @JvmStatic private fun mars_y(t: Double): Double {
        var mars_y_0 = 0.0;
        mars_y_0+=-Math.pow(t,0.0)*     0.00493872848*    10021.8372800994*Math.sin( 5.30877806694 +     10021.8372800994 * t);
        mars_y_0+=-Math.pow(t,0.0)*     0.07064550239*     6681.2248533996*Math.sin( 4.97051892902 +      6681.2248533996 * t);
        mars_y_0+=-Math.pow(t,0.0)*     0.08655481102*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        mars_y_0+=-Math.pow(t,0.0)*     1.51558976277*     3340.6124266998*Math.sin( 4.63212206588 +      3340.6124266998 * t);

        var mars_y_1 = 0.0;
        mars_y_1+=Math.pow(t,0.0)*1.0*     0.00551063753*Math.cos( 3.52128320402 +      6681.2248533996*t)-Math.pow(t,1.0)*     0.00551063753*     6681.2248533996*Math.sin( 3.52128320402 +      6681.2248533996 * t);
        mars_y_1+=Math.pow(t,0.0)*1.0*      0.0142732421*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1.0)*      0.0142732421*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);

        return mars_y_1+mars_y_0;
    }

    @JvmStatic private fun mars_z(t: Double): Double {
        var mars_z_0 = 0.0;
        mars_z_0+=-Math.pow(t,0.0)*     0.00228333904*     6681.2248533996*Math.sin( 4.10544022266 +      6681.2248533996 * t);
        mars_z_0+=-Math.pow(t,0.0)*     0.00660669541*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        mars_z_0+=-Math.pow(t,0.0)*      0.0490120722*     3340.6124266998*Math.sin( 3.76712324286 +      3340.6124266998 * t);

        var mars_z_1 = 0.0;
        mars_z_1+=Math.pow(t,0.0)*1.0*     0.00331842958*Math.cos( 6.05027773492 +      3340.6124266998*t)-Math.pow(t,1.0)*     0.00331842958*     3340.6124266998*Math.sin( 6.05027773492 +      3340.6124266998 * t);

        return mars_z_1+mars_z_0;
    }

    @JvmStatic private fun mercury_x(t: Double): Double {
        var mercury_x_0 = 0.0;
        mercury_x_0+=-Math.pow(t,0.0)*     0.00105716695*  104351.61256629678*Math.sin( 0.98379033182 +   104351.61256629678 * t);
        mercury_x_0+=-Math.pow(t,0.0)*     0.00584261333*   78263.70942472259*Math.sin( 4.21599394757 +    78263.70942472259 * t);
        mercury_x_0+=-Math.pow(t,0.0)*     0.02625615963*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        mercury_x_0+=-Math.pow(t,0.0)*     0.03825746672*    52175.8062831484*Math.sin( 1.16485604339 +     52175.8062831484 * t);
        mercury_x_0+=-Math.pow(t,0.0)*     0.37546291728*    26087.9031415742*Math.sin( 4.39651506942 +     26087.9031415742 * t);

        var mercury_x_1 = 0.0;
        mercury_x_1+=Math.pow(t,0.0)*1.0*     0.00105289019*Math.cos( 5.91600475006 +     52175.8062831484*t)-Math.pow(t,1.0)*     0.00105289019*    52175.8062831484*Math.sin( 5.91600475006 +     52175.8062831484 * t);
        mercury_x_1+=Math.pow(t,0.0)*1.0*     0.00318848034*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*     0.00318848034*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return mercury_x_1+mercury_x_0;
    }

    @JvmStatic private fun mercury_y(t: Double): Double {
        var mercury_y_0 = 0.0;
        mercury_y_0+=-Math.pow(t,0.0)*     0.00106235493*  104351.61256629678*Math.sin( 5.70550616735 +   104351.61256629678 * t);
        mercury_y_0+=-Math.pow(t,0.0)*     0.00587711268*   78263.70942472259*Math.sin( 2.65498896201 +    78263.70942472259 * t);
        mercury_y_0+=-Math.pow(t,0.0)*     0.03854668215*    52175.8062831484*Math.sin( 5.88780608966 +     52175.8062831484 * t);
        mercury_y_0+=-Math.pow(t,0.0)*     0.11626131831*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        mercury_y_0+=-Math.pow(t,0.0)*     0.37953642888*    26087.9031415742*Math.sin(  2.8378061782 +     26087.9031415742 * t);

        var mercury_y_1 = 0.0;
        mercury_y_1+=Math.pow(t,0.0)*1.0*     0.00107803852*Math.cos( 4.34964793883 +     52175.8062831484*t)-Math.pow(t,1.0)*     0.00107803852*    52175.8062831484*Math.sin( 4.34964793883 +     52175.8062831484 * t);

        return mercury_y_1+mercury_y_0;
    }

    @JvmStatic private fun mercury_z(t: Double): Double {
        var mercury_z_0 = 0.0;
        mercury_z_0+=-Math.pow(t,0.0)*     0.00469171617*    52175.8062831484*Math.sin( 5.04215742764 +     52175.8062831484 * t);
        mercury_z_0+=-Math.pow(t,0.0)*     0.00708734365*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        mercury_z_0+=-Math.pow(t,0.0)*     0.04607665326*    26087.9031415742*Math.sin( 1.99295081967 +     26087.9031415742 * t);

        var mercury_z_1 = 0.0;
        mercury_z_1+=Math.pow(t,0.0)*1.0*     0.00108722177*Math.cos( 3.91134750825 +     26087.9031415742*t)-Math.pow(t,1.0)*     0.00108722177*    26087.9031415742*Math.sin( 3.91134750825 +     26087.9031415742 * t);

        return mercury_z_1+mercury_z_0;
    }

    @JvmStatic private fun neptune_x(t: Double): Double {
        var neptune_x_0 = 0.0;
        neptune_x_0+=-Math.pow(t,0.0)*     0.00135887219*       77.7505439839*Math.sin( 5.54676577816 +        77.7505439839 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.00272253551*       213.299095438*Math.sin( 0.87443494387 +        213.299095438 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.00307525907*        73.297125859*Math.sin( 0.40023311011 +         73.297125859 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.00495719107*      529.6909650946*Math.sin( 0.59948143567 +       529.6909650946 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.00565534918*       41.1019810544*Math.sin( 5.98964907613 +        41.1019810544 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.00817588813*        2.9689454166*Math.sin( 0.78180174031 +         2.9689454166 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.00823793287*       35.1640902212*Math.sin( 1.43221581862 +        35.1640902212 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.01074040708*       74.7815985673*Math.sin( 5.38502938672 +        74.7815985673 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.02597313814*        1.4844727083*Math.sin( 1.99590301412 +         1.4844727083 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.13505661755*       76.2660712756*Math.sin( 3.50078975634 +        76.2660712756 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.14935120126*       39.6175083461*Math.sin( 1.08499403018 +        39.6175083461 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.15726094556*       36.6485629295*Math.sin( 0.11319072675 +        36.6485629295 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.27080164222*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        neptune_x_0+=-Math.pow(t,0.0)*    30.05890004476*       38.1330356378*Math.sin( 5.31211340029 +        38.1330356378 * t);

        var neptune_x_1 = 0.0;
        neptune_x_1+=Math.pow(t,0.0)*1.0*     0.00118398168*Math.cos( 2.88251845061 +        76.2660712756*t)-Math.pow(t,1.0)*     0.00118398168*       76.2660712756*Math.sin( 2.88251845061 +        76.2660712756 * t);
        neptune_x_1+=Math.pow(t,0.0)*1.0*     0.00243125299*Math.cos( 5.46214902873 +        39.6175083461*t)-Math.pow(t,1.0)*     0.00243125299*       39.6175083461*Math.sin( 5.46214902873 +        39.6175083461 * t);
        neptune_x_1+=Math.pow(t,0.0)*1.0*     0.00255840261*Math.cos( 2.01935686795 +        36.6485629295*t)-Math.pow(t,1.0)*     0.00255840261*       36.6485629295*Math.sin( 2.01935686795 +        36.6485629295 * t);

        return neptune_x_1+neptune_x_0;
    }

    @JvmStatic private fun neptune_y(t: Double): Double {
        var neptune_y_0 = 0.0;
        neptune_y_0+=-Math.pow(t,0.0)*     0.00135897385*       77.7505439839*Math.sin( 3.97553750964 +        77.7505439839 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.00272640298*       213.299095438*Math.sin( 5.58603690785 +        213.299095438 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.00304525203*        73.297125859*Math.sin( 5.11048113661 +         73.297125859 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.00495581047*      529.6909650946*Math.sin( 5.31205825784 +       529.6909650946 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.00565576412*       41.1019810544*Math.sin( 4.41843009015 +        41.1019810544 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.00582199295*       35.1640902212*Math.sin( 6.19633718936 +        35.1640902212 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.00815187583*        2.9689454166*Math.sin( 5.49429775826 +         2.9689454166 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.01073739772*       74.7815985673*Math.sin( 3.81371728533 +        74.7815985673 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.02584250749*        1.4844727083*Math.sin( 0.42549700754 +         1.4844727083 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.13506391797*       76.2660712756*Math.sin( 1.92953034883 +        76.2660712756 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.14936165806*       39.6175083461*Math.sin( 5.79694900665 +        39.6175083461 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.15706589373*       36.6485629295*Math.sin( 4.82539970129 +        36.6485629295 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.30205857683*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        neptune_y_0+=-Math.pow(t,0.0)*    30.06056351665*       38.1330356378*Math.sin( 3.74086294714 +        38.1330356378 * t);

        var neptune_y_1 = 0.0;
        neptune_y_1+=Math.pow(t,0.0)*1.0*     0.00118427205*Math.cos( 1.31128027037 +        76.2660712756*t)-Math.pow(t,1.0)*     0.00118427205*       76.2660712756*Math.sin( 1.31128027037 +        76.2660712756 * t);
        neptune_y_1+=Math.pow(t,0.0)*1.0*     0.00243147725*Math.cos( 3.89099798696 +        39.6175083461*t)-Math.pow(t,1.0)*     0.00243147725*       39.6175083461*Math.sin( 3.89099798696 +        39.6175083461 * t);
        neptune_y_1+=Math.pow(t,0.0)*1.0*     0.00256125493*Math.cos( 0.44757496817 +        36.6485629295*t)-Math.pow(t,1.0)*     0.00256125493*       36.6485629295*Math.sin( 0.44757496817 +        36.6485629295 * t);
        neptune_y_1+=Math.pow(t,0.0)*1.0*     0.00352947493*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1.0)*     0.00352947493*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);

        return neptune_y_1+neptune_y_0;
    }

    @JvmStatic private fun neptune_z(t: Double): Double {
        var neptune_z_0 = 0.0;
        neptune_z_0+=-Math.pow(t,0.0)*     0.00417558068*       76.2660712756*Math.sin( 5.91310695421 +        76.2660712756 * t);
        neptune_z_0+=-Math.pow(t,0.0)*     0.00451987936*       39.6175083461*Math.sin( 3.50949720541 +        39.6175083461 * t);
        neptune_z_0+=-Math.pow(t,0.0)*     0.00474333567*       36.6485629295*Math.sin( 2.52218774238 +        36.6485629295 * t);
        neptune_z_0+=-Math.pow(t,0.0)*     0.01245978462*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        neptune_z_0+=-Math.pow(t,0.0)*     0.92866054405*       38.1330356378*Math.sin( 1.44103930278 +        38.1330356378 * t);

        var neptune_z_1 = 0.0;
        neptune_z_1+=Math.pow(t,0.0)*1.0*     0.00154885971*Math.cos( 2.14239039664 +        38.1330356378*t)-Math.pow(t,1.0)*     0.00154885971*       38.1330356378*Math.sin( 2.14239039664 +        38.1330356378 * t);

        return neptune_z_1+neptune_z_0;
    }

    @JvmStatic private fun saturn_x(t: Double): Double {
        var saturn_x_0 = 0.0;
        saturn_x_0+=-Math.pow(t,0.0)*     0.00372894461*      433.7117378768*Math.sin( 0.00137195497 +       433.7117378768 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.00433994439*      529.6909650946*Math.sin( 0.72012820974 +       529.6909650946 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.00509313365*      103.0927742186*Math.sin(  4.9586562478 +       103.0927742186 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.00716328481*      316.3918696566*Math.sin( 2.71149993708 +       316.3918696566 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.01097683232*       639.897286314*Math.sin( 5.65753337256 +        639.897286314 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.01115684467*      419.4846438752*Math.sin( 3.15686878377 +       419.4846438752 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.01255372247*      110.2063212194*Math.sin( 2.17338917731 +       110.2063212194 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.02336340488*        7.1135470008*Math.sin( 2.02227784673 +         7.1135470008 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.04244797817*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.06624260115*      220.4126424388*Math.sin(  0.7509473778 +       220.4126424388 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.06760430339*      206.1855484372*Math.sin( 4.16767145778 +       206.1855484372 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.26412374238*       426.598190876*Math.sin(  0.1239089262 +        426.598190876 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     9.51638335797*       213.299095438*Math.sin( 0.87441380794 +        213.299095438 * t);

        var saturn_x_1 = 0.0;
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.00119531145*Math.cos( 1.14735096078 +       110.2063212194*t)-Math.pow(t,1.0)*     0.00119531145*      110.2063212194*Math.sin( 1.14735096078 +       110.2063212194 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.00189196274*Math.cos( 4.48642453552 +       433.7117378768*t)-Math.pow(t,1.0)*     0.00189196274*      433.7117378768*Math.sin( 4.48642453552 +       433.7117378768 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*      0.0020364657*Math.cos( 1.10998681782 +        213.299095438*t)-Math.pow(t,1.0)*      0.0020364657*       213.299095438*Math.sin( 1.10998681782 +        213.299095438 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.00256560953*Math.cos( 3.52478934343 +        639.897286314*t)-Math.pow(t,1.0)*     0.00256560953*       639.897286314*Math.sin( 3.52478934343 +        639.897286314 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.00312356512*Math.cos( 4.83001724941 +       419.4846438752*t)-Math.pow(t,1.0)*     0.00312356512*      419.4846438752*Math.sin( 4.83001724941 +       419.4846438752 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*      0.0062710452*Math.cos( 0.32898307969 +         7.1135470008*t)-Math.pow(t,1.0)*      0.0062710452*        7.1135470008*Math.sin( 0.32898307969 +         7.1135470008 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.02643100909*Math.cos( 5.33291950584 +       220.4126424388*t)-Math.pow(t,1.0)*     0.02643100909*      220.4126424388*Math.sin( 5.33291950584 +       220.4126424388 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.02714918399*Math.cos( 5.85229412397 +       206.1855484372*t)-Math.pow(t,1.0)*     0.02714918399*      206.1855484372*Math.sin( 5.85229412397 +       206.1855484372 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.03085041716*Math.cos( 4.27565749128 +        426.598190876*t)-Math.pow(t,1.0)*     0.03085041716*       426.598190876*Math.sin( 4.27565749128 +        426.598190876 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.07575103962*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*     0.07575103962*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var saturn_x_2 = 0.0;
        saturn_x_2+=Math.pow(t,1.0)*2.0*     0.00224302269*Math.cos( 2.49151203519 +        426.598190876*t)-Math.pow(t,2.0)*     0.00224302269*       426.598190876*Math.sin( 2.49151203519 +        426.598190876 * t);
        saturn_x_2+=Math.pow(t,1.0)*2.0*     0.00336109713*Math.cos(  2.4254743246 +        213.299095438*t)-Math.pow(t,2.0)*     0.00336109713*       213.299095438*Math.sin(  2.4254743246 +        213.299095438 * t);
        saturn_x_2+=Math.pow(t,1.0)*2.0*     0.00443342186*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,2.0)*     0.00443342186*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        saturn_x_2+=Math.pow(t,1.0)*2.0*     0.00545834518*Math.cos( 3.62343709657 +       220.4126424388*t)-Math.pow(t,2.0)*     0.00545834518*      220.4126424388*Math.sin( 3.62343709657 +       220.4126424388 * t);
        saturn_x_2+=Math.pow(t,1.0)*2.0*     0.00560746334*Math.cos( 1.26401632282 +       206.1855484372*t)-Math.pow(t,2.0)*     0.00560746334*      206.1855484372*Math.sin( 1.26401632282 +       206.1855484372 * t);

        return saturn_x_2+saturn_x_1+saturn_x_0;
    }

    @JvmStatic private fun saturn_y(t: Double): Double {
        var saturn_y_0 = 0.0;
        saturn_y_0+=-Math.pow(t,0.0)*     0.00335162363*      103.0927742186*Math.sin( 0.66422253983 +       103.0927742186 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.00373327342*      433.7117378768*Math.sin( 4.71308726958 +       433.7117378768 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.00434466176*      529.6909650946*Math.sin( 5.42474696262 +       529.6909650946 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.00700849336*      316.3918696566*Math.sin( 1.13611298025 +       316.3918696566 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.01098751131*       639.897286314*Math.sin( 4.08608782813 +        639.897286314 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.01183874652*      419.4846438752*Math.sin( 1.34638298371 +       419.4846438752 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.01245790434*      110.2063212194*Math.sin( 0.60367177975 +       110.2063212194 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.02345609742*        7.1135470008*Math.sin( 0.44652132519 +         7.1135470008 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.06633570703*      220.4126424388*Math.sin( 5.46258848288 +       220.4126424388 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.06916653915*      206.1855484372*Math.sin( 2.55279408706 +       206.1855484372 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.26441781302*       426.598190876*Math.sin( 4.83528061849 +        426.598190876 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.79387988806*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     9.52986882699*       213.299095438*Math.sin( 5.58600556665 +        213.299095438 * t);

        var saturn_y_1 = 0.0;
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.00116791227*Math.cos(  5.8914667576 +       110.2063212194*t)-Math.pow(t,1.0)*     0.00116791227*      110.2063212194*Math.sin(  5.8914667576 +       110.2063212194 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.00164133553*Math.cos( 5.29239290066 +        213.299095438*t)-Math.pow(t,1.0)*     0.00164133553*       213.299095438*Math.sin( 5.29239290066 +        213.299095438 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.00189433319*Math.cos( 2.91501840819 +       433.7117378768*t)-Math.pow(t,1.0)*     0.00189433319*      433.7117378768*Math.sin( 2.91501840819 +       433.7117378768 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.00256799701*Math.cos( 1.95351819758 +        639.897286314*t)-Math.pow(t,1.0)*     0.00256799701*       639.897286314*Math.sin( 1.95351819758 +        639.897286314 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*      0.0031227193*Math.cos( 3.25850205023 +       419.4846438752*t)-Math.pow(t,1.0)*      0.0031227193*      419.4846438752*Math.sin( 3.25850205023 +       419.4846438752 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.00631520527*Math.cos(  5.0324550528 +         7.1135470008*t)-Math.pow(t,1.0)*     0.00631520527*        7.1135470008*Math.sin(  5.0324550528 +         7.1135470008 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.02647489677*Math.cos( 3.76132298889 +       220.4126424388*t)-Math.pow(t,1.0)*     0.02647489677*      220.4126424388*Math.sin( 3.76132298889 +       220.4126424388 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.02741594312*Math.cos( 4.26667636015 +       206.1855484372*t)-Math.pow(t,1.0)*     0.02741594312*      206.1855484372*Math.sin( 4.26667636015 +       206.1855484372 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.03090575152*Math.cos( 2.70346890906 +        426.598190876*t)-Math.pow(t,1.0)*     0.03090575152*       426.598190876*Math.sin( 2.70346890906 +        426.598190876 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.05373889135*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*     0.05373889135*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var saturn_y_2 = 0.0;
        saturn_y_2+=Math.pow(t,1.0)*2.0*     0.00225521642*Math.cos( 0.91699821445 +        426.598190876*t)-Math.pow(t,2.0)*     0.00225521642*       426.598190876*Math.sin( 0.91699821445 +        426.598190876 * t);
        saturn_y_2+=Math.pow(t,1.0)*2.0*     0.00362294249*Math.cos( 0.89540100509 +        213.299095438*t)-Math.pow(t,2.0)*     0.00362294249*       213.299095438*Math.sin( 0.89540100509 +        213.299095438 * t);
        saturn_y_2+=Math.pow(t,1.0)*2.0*     0.00458518613*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,2.0)*     0.00458518613*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        saturn_y_2+=Math.pow(t,1.0)*2.0*     0.00547012116*Math.cos( 2.05154973426 +       220.4126424388*t)-Math.pow(t,2.0)*     0.00547012116*      220.4126424388*Math.sin( 2.05154973426 +       220.4126424388 * t);
        saturn_y_2+=Math.pow(t,1.0)*2.0*     0.00563706537*Math.cos( 5.97115878242 +       206.1855484372*t)-Math.pow(t,2.0)*     0.00563706537*      206.1855484372*Math.sin( 5.97115878242 +       206.1855484372 * t);

        return saturn_y_2+saturn_y_1+saturn_y_0;
    }

    @JvmStatic private fun saturn_z(t: Double): Double {
        var saturn_z_0 = 0.0;
        saturn_z_0+=-Math.pow(t,0.0)*     0.00286934048*      220.4126424388*Math.sin( 3.48073526693 +       220.4126424388 * t);
        saturn_z_0+=-Math.pow(t,0.0)*     0.00329280791*      206.1855484372*Math.sin( 0.57121407104 +       206.1855484372 * t);
        saturn_z_0+=-Math.pow(t,0.0)*     0.01148283576*       426.598190876*Math.sin( 2.85128367469 +        426.598190876 * t);
        saturn_z_0+=-Math.pow(t,0.0)*     0.01214249867*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        saturn_z_0+=-Math.pow(t,0.0)*      0.4135695094*       213.299095438*Math.sin( 3.60234142982 +        213.299095438 * t);

        var saturn_z_1 = 0.0;
        saturn_z_1+=Math.pow(t,0.0)*1.0*     0.00101466332*Math.cos( 1.79095829545 +       220.4126424388*t)-Math.pow(t,1.0)*     0.00101466332*      220.4126424388*Math.sin( 1.79095829545 +       220.4126424388 * t);
        saturn_z_1+=Math.pow(t,0.0)*1.0*     0.00130262284*Math.cos( 2.26140980879 +       206.1855484372*t)-Math.pow(t,1.0)*     0.00130262284*      206.1855484372*Math.sin( 2.26140980879 +       206.1855484372 * t);
        saturn_z_1+=Math.pow(t,0.0)*1.0*     0.00528301265*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1.0)*     0.00528301265*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        saturn_z_1+=Math.pow(t,0.0)*1.0*     0.01906503283*Math.cos( 4.94544746116 +        213.299095438*t)-Math.pow(t,1.0)*     0.01906503283*       213.299095438*Math.sin( 4.94544746116 +        213.299095438 * t);

        var saturn_z_2 = 0.0;
        saturn_z_2+=Math.pow(t,1.0)*2.0*     0.00131275155*Math.cos( 0.08868998101 +        213.299095438*t)-Math.pow(t,2.0)*     0.00131275155*       213.299095438*Math.sin( 0.08868998101 +        213.299095438 * t);

        return saturn_z_2+saturn_z_1+saturn_z_0;
    }

    @JvmStatic private fun uranus_x(t: Double): Double {
        var uranus_x_0 = 0.0;
        uranus_x_0+=-Math.pow(t,0.0)*     0.00104619827*       146.594251718*Math.sin( 3.90538916334 +        146.594251718 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00110125387*       35.1640902212*Math.sin( 4.45473528724 +        35.1640902212 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00111260244*      222.8603229936*Math.sin( 5.12252784325 +       222.8603229936 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00119593859*       39.6175083461*Math.sin( 4.10138544267 +        39.6175083461 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00125105686*      111.4301614968*Math.sin( 2.51455273063 +       111.4301614968 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00135340032*       78.7137518304*Math.sin( 5.51062460816 +        78.7137518304 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00145505389*       70.8494453042*Math.sin( 2.31759757085 +        70.8494453042 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00215368005*       38.1330356378*Math.sin( 5.30877641428 +        38.1330356378 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00267938156*       213.299095438*Math.sin( 0.96885660137 +        213.299095438 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00383625535*      138.5174968707*Math.sin( 6.18762010576 +       138.5174968707 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00458219984*        2.9689454166*Math.sin( 3.90788284112 +         2.9689454166 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00496087649*      529.6909650946*Math.sin( 0.59947400861 +       529.6909650946 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00547699056*       85.8272988312*Math.sin( 3.63127725056 +        85.8272988312 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00585182542*       71.8126531507*Math.sin( 4.79934779678 +        71.8126531507 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00621624676*       77.7505439839*Math.sin( 3.05882246638 +        77.7505439839 * t);
        uranus_x_0+=-Math.pow(t,0.0)*      0.0063400027*       63.7358983034*Math.sin( 4.09556589724 +        63.7358983034 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00657524815*      151.0476698429*Math.sin( 0.57595170636 +       151.0476698429 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.00944995563*       11.0457002639*Math.sin( 1.65869338757 +        11.0457002639 * t);
        uranus_x_0+=-Math.pow(t,0.0)*      0.0144421666*      148.0787244263*Math.sin( 2.65117115201 +       148.0787244263 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.01542951343*      224.3447957019*Math.sin( 4.12121838072 +       224.3447957019 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.06201106178*        1.4844727083*Math.sin( 5.14043574125 +         1.4844727083 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.14130269479*       76.2660712756*Math.sin( 4.39572927934 +        76.2660712756 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.14668209481*        73.297125859*Math.sin( 3.42395862804 +         73.297125859 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.44402496796*      149.5631971346*Math.sin( 1.65967519586 +       149.5631971346 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     1.32272523872*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        uranus_x_0+=-Math.pow(t,0.0)*    19.17370730359*       74.7815985673*Math.sin( 5.48133416489 +        74.7815985673 * t);

        var uranus_x_1 = 0.0;
        uranus_x_1+=Math.pow(t,0.0)*1.0*     0.00111045158*Math.cos(  5.5715723596 +        11.0457002639*t)-Math.pow(t,1.0)*     0.00111045158*       11.0457002639*Math.sin(  5.5715723596 +        11.0457002639 * t);
        uranus_x_1+=Math.pow(t,0.0)*1.0*     0.00229676787*Math.cos( 2.48204455775 +        76.2660712756*t)-Math.pow(t,1.0)*     0.00229676787*       76.2660712756*Math.sin( 2.48204455775 +        76.2660712756 * t);
        uranus_x_1+=Math.pow(t,0.0)*1.0*     0.00239840801*Math.cos( 5.33657762707 +         73.297125859*t)-Math.pow(t,1.0)*     0.00239840801*        73.297125859*Math.sin( 5.33657762707 +         73.297125859 * t);
        uranus_x_1+=Math.pow(t,0.0)*1.0*     0.00526878306*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1.0)*     0.00526878306*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        uranus_x_1+=Math.pow(t,0.0)*1.0*     0.00739730021*Math.cos( 6.01067825116 +       149.5631971346*t)-Math.pow(t,1.0)*     0.00739730021*      149.5631971346*Math.sin( 6.01067825116 +       149.5631971346 * t);

        return uranus_x_1+uranus_x_0;
    }

    @JvmStatic private fun uranus_y(t: Double): Double {
        var uranus_y_0 = 0.0;
        uranus_y_0+=-Math.pow(t,0.0)*     0.00104507929*       146.594251718*Math.sin( 2.33345675603 +        146.594251718 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00108584454*       35.1640902212*Math.sin( 6.02234848388 +        35.1640902212 * t);
        uranus_y_0+=-Math.pow(t,0.0)*      0.0011120486*      222.8603229936*Math.sin( 3.55163219419 +       222.8603229936 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00119670613*       39.6175083461*Math.sin(  2.5305878378 +        39.6175083461 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00124868545*      111.4301614968*Math.sin( 0.94315917319 +       111.4301614968 * t);
        uranus_y_0+=-Math.pow(t,0.0)*      0.0013529082*       78.7137518304*Math.sin( 3.93970260616 +        78.7137518304 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00144032475*       70.8494453042*Math.sin(  0.7501570092 +        70.8494453042 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00216239629*       38.1330356378*Math.sin(  3.7380076758 +        38.1330356378 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00268363417*       213.299095438*Math.sin(  5.6808529902 +        213.299095438 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00387922853*      138.5174968707*Math.sin( 4.62026923885 +       138.5174968707 * t);
        uranus_y_0+=-Math.pow(t,0.0)*      0.0045958912*        2.9689454166*Math.sin(  2.3374553607 +         2.9689454166 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00495936105*      529.6909650946*Math.sin(  5.3120575374 +       529.6909650946 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00541961958*       71.8126531507*Math.sin( 3.24476486661 +        71.8126531507 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00547472694*       85.8272988312*Math.sin( 2.06037924573 +        85.8272988312 * t);
        uranus_y_0+=-Math.pow(t,0.0)*      0.0062132677*       77.7505439839*Math.sin( 1.48795811387 +        77.7505439839 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00650331846*       63.7358983034*Math.sin( 2.76142680222 +        63.7358983034 * t);
        uranus_y_0+=-Math.pow(t,0.0)*      0.0065734312*      151.0476698429*Math.sin( 5.28830704469 +       151.0476698429 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.00938975501*       11.0457002639*Math.sin( 0.09275714761 +        11.0457002639 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.01442356575*      148.0787244263*Math.sin( 1.08004542712 +       148.0787244263 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.01542668264*      224.3447957019*Math.sin( 2.55040539213 +       224.3447957019 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.06250078231*        1.4844727083*Math.sin( 3.56960243857 +         1.4844727083 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.14123958128*       76.2660712756*Math.sin( 2.82486076549 +        76.2660712756 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.14755940186*        73.297125859*Math.sin( 1.85423280679 +         73.297125859 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.16256125476*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.44390465203*      149.5631971346*Math.sin( 0.08884111329 +       149.5631971346 * t);
        uranus_y_0+=-Math.pow(t,0.0)*    19.16518231584*       74.7815985673*Math.sin( 3.91045677002 +        74.7815985673 * t);

        var uranus_y_1 = 0.0;
        uranus_y_1+=Math.pow(t,0.0)*1.0*     0.00110137111*Math.cos( 4.00844441616 +        11.0457002639*t)-Math.pow(t,1.0)*     0.00110137111*       11.0457002639*Math.sin( 4.00844441616 +        11.0457002639 * t);
        uranus_y_1+=Math.pow(t,0.0)*1.0*     0.00229396424*Math.cos( 0.91090183978 +        76.2660712756*t)-Math.pow(t,1.0)*     0.00229396424*       76.2660712756*Math.sin( 0.91090183978 +        76.2660712756 * t);
        uranus_y_1+=Math.pow(t,0.0)*1.0*     0.00238545685*Math.cos( 3.76882493145 +         73.297125859*t)-Math.pow(t,1.0)*     0.00238545685*        73.297125859*Math.sin( 3.76882493145 +         73.297125859 * t);
        uranus_y_1+=Math.pow(t,0.0)*1.0*     0.00739227349*Math.cos( 4.43963890935 +       149.5631971346*t)-Math.pow(t,1.0)*     0.00739227349*      149.5631971346*Math.sin( 4.43963890935 +       149.5631971346 * t);
        uranus_y_1+=Math.pow(t,0.0)*1.0*     0.02157896385*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*     0.02157896385*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return uranus_y_1+uranus_y_0;
    }

    @JvmStatic private fun uranus_z(t: Double): Double {
        var uranus_z_0 = 0.0;
        uranus_z_0+=-Math.pow(t,0.0)*      0.0019028189*       76.2660712756*Math.sin( 1.61643841193 +        76.2660712756 * t);
        uranus_z_0+=-Math.pow(t,0.0)*     0.00190881685*        73.297125859*Math.sin( 0.57869575952 +         73.297125859 * t);
        uranus_z_0+=-Math.pow(t,0.0)*     0.00599316131*      149.5631971346*Math.sin( 5.08119500585 +       149.5631971346 * t);
        uranus_z_0+=-Math.pow(t,0.0)*     0.01774318778*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        uranus_z_0+=-Math.pow(t,0.0)*     0.25878127698*       74.7815985673*Math.sin( 2.61861272578 +        74.7815985673 * t);

        var uranus_z_1 = 0.0;
        uranus_z_1+=Math.pow(t,0.0)*1.0*     0.00655916626*Math.cos(  0.0127194766 +        74.7815985673*t)-Math.pow(t,1.0)*     0.00655916626*       74.7815985673*Math.sin(  0.0127194766 +        74.7815985673 * t);

        return uranus_z_1+uranus_z_0;
    }

    @JvmStatic private fun venus_x(t: Double): Double {
        var venus_x_0 = 0.0;
        venus_x_0+=-Math.pow(t,0.0)*     0.00244500474*     20426.571092422*Math.sin( 4.05566613861 +      20426.571092422 * t);
        venus_x_0+=-Math.pow(t,0.0)*     0.00486448018*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        venus_x_0+=-Math.pow(t,0.0)*     0.72211281391*     10213.285546211*Math.sin( 3.17575836361 +      10213.285546211 * t);

        return venus_x_0;
    }

    @JvmStatic private fun venus_y(t: Double): Double {
        var venus_y_0 = 0.0;
        venus_y_0+=-Math.pow(t,0.0)*      0.0024488479*     20426.571092422*Math.sin( 2.48564954004 +      20426.571092422 * t);
        venus_y_0+=-Math.pow(t,0.0)*     0.00549506273*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        venus_y_0+=-Math.pow(t,0.0)*     0.72324820731*     10213.285546211*Math.sin( 1.60573808356 +      10213.285546211 * t);

        return venus_y_0;
    }

    @JvmStatic private fun venus_z(t: Double): Double {
        var venus_z_0 = 0.0;
        venus_z_0+=-Math.pow(t,0.0)*     0.04282990302*     10213.285546211*Math.sin( 0.26703856476 +      10213.285546211 * t);

        var venus_z_1 = 0.0;
        venus_z_1+=Math.pow(t,0.0)*1.0*     0.00208096402*Math.cos( 1.88967278742 +      10213.285546211*t)-Math.pow(t,1.0)*     0.00208096402*     10213.285546211*Math.sin( 1.88967278742 +      10213.285546211 * t);

        return venus_z_1+venus_z_0;
    }

}
