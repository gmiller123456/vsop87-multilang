//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

object VSOP87D_Nano_Velocities{
    @JvmStatic fun getEarth(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=earth_b(t) / 365250.0;
        temp[1]=earth_l(t) / 365250.0;
        temp[2]=earth_r(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getJupiter(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=jupiter_b(t) / 365250.0;
        temp[1]=jupiter_l(t) / 365250.0;
        temp[2]=jupiter_r(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getMars(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=mars_b(t) / 365250.0;
        temp[1]=mars_l(t) / 365250.0;
        temp[2]=mars_r(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getMercury(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=mercury_b(t) / 365250.0;
        temp[1]=mercury_l(t) / 365250.0;
        temp[2]=mercury_r(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getNeptune(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=neptune_b(t) / 365250.0;
        temp[1]=neptune_l(t) / 365250.0;
        temp[2]=neptune_r(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getSaturn(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=saturn_b(t) / 365250.0;
        temp[1]=saturn_l(t) / 365250.0;
        temp[2]=saturn_r(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getUranus(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=uranus_b(t) / 365250.0;
        temp[1]=uranus_l(t) / 365250.0;
        temp[2]=uranus_r(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getVenus(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=venus_b(t) / 365250.0;
        temp[1]=venus_l(t) / 365250.0;
        temp[2]=venus_r(t) / 365250.0;
        return temp;
    }

    @JvmStatic private fun earth_b(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun earth_l(t: Double): Double {
        var earth_l_0 = 0.0;
        earth_l_0+=-Math.pow(t,0.0)*     0.03341656456*     6283.0758499914*Math.sin( 4.66925680417 +      6283.0758499914 * t);
        earth_l_0+=-Math.pow(t,0.0)*     1.75347045673*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var earth_l_1 = 0.0;
        earth_l_1+=Math.pow(t,0.0)*1.0*     0.00206058863*Math.cos( 2.67823455584 +      6283.0758499914*t)-Math.pow(t,1.0)*     0.00206058863*     6283.0758499914*Math.sin( 2.67823455584 +      6283.0758499914 * t);
        earth_l_1+=Math.pow(t,0.0)*1.0*  6283.31966747491*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*  6283.31966747491*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return earth_l_1+earth_l_0;
    }

    @JvmStatic private fun earth_r(t: Double): Double {
        var earth_r_0 = 0.0;
        earth_r_0+=-Math.pow(t,0.0)*     0.01670699626*     6283.0758499914*Math.sin( 3.09846350771 +      6283.0758499914 * t);
        earth_r_0+=-Math.pow(t,0.0)*     1.00013988799*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var earth_r_1 = 0.0;
        earth_r_1+=Math.pow(t,0.0)*1.0*     0.00103018608*Math.cos( 1.10748969588 +      6283.0758499914*t)-Math.pow(t,1.0)*     0.00103018608*     6283.0758499914*Math.sin( 1.10748969588 +      6283.0758499914 * t);

        return earth_r_1+earth_r_0;
    }

    @JvmStatic private fun jupiter_b(t: Double): Double {
        var jupiter_b_0 = 0.0;
        jupiter_b_0+=-Math.pow(t,0.0)*     0.00109971634*     1059.3819301892*Math.sin( 3.90809347389 +      1059.3819301892 * t);
        jupiter_b_0+=-Math.pow(t,0.0)*     0.00110090358*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        jupiter_b_0+=-Math.pow(t,0.0)*     0.02268615703*      529.6909650946*Math.sin( 3.55852606718 +       529.6909650946 * t);

        var jupiter_b_1 = 0.0;
        jupiter_b_1+=Math.pow(t,0.0)*1.0*     0.00177351787*Math.cos( 5.70166488486 +       529.6909650946*t)-Math.pow(t,1.0)*     0.00177351787*      529.6909650946*Math.sin( 5.70166488486 +       529.6909650946 * t);

        return jupiter_b_1+jupiter_b_0;
    }

    @JvmStatic private fun jupiter_l(t: Double): Double {
        var jupiter_l_0 = 0.0;
        jupiter_l_0+=-Math.pow(t,0.0)*      0.0030638918*     1059.3819301892*Math.sin( 5.41734729976 +      1059.3819301892 * t);
        jupiter_l_0+=-Math.pow(t,0.0)*     0.00573610145*        7.1135470008*Math.sin( 1.44406205976 +         7.1135470008 * t);
        jupiter_l_0+=-Math.pow(t,0.0)*     0.09695898711*      529.6909650946*Math.sin( 5.06191793105 +       529.6909650946 * t);
        jupiter_l_0+=-Math.pow(t,0.0)*     0.59954691495*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var jupiter_l_1 = 0.0;
        jupiter_l_1+=Math.pow(t,0.0)*1.0*     0.00228918538*Math.cos( 6.02647464016 +         7.1135470008*t)-Math.pow(t,1.0)*     0.00228918538*        7.1135470008*Math.sin( 6.02647464016 +         7.1135470008 * t);
        jupiter_l_1+=Math.pow(t,0.0)*1.0*     0.00489741194*Math.cos( 4.22066689928 +       529.6909650946*t)-Math.pow(t,1.0)*     0.00489741194*      529.6909650946*Math.sin( 4.22066689928 +       529.6909650946 * t);
        jupiter_l_1+=Math.pow(t,0.0)*1.0*   529.93480757497*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*   529.93480757497*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return jupiter_l_1+jupiter_l_0;
    }

    @JvmStatic private fun jupiter_r(t: Double): Double {
        var jupiter_r_0 = 0.0;
        jupiter_r_0+=-Math.pow(t,0.0)*     0.00187647391*      522.5774180938*Math.sin( 2.07590380082 +       522.5774180938 * t);
        jupiter_r_0+=-Math.pow(t,0.0)*     0.00282029465*      632.7837393132*Math.sin( 2.57419879933 +       632.7837393132 * t);
        jupiter_r_0+=-Math.pow(t,0.0)*     0.00610599902*     1059.3819301892*Math.sin( 3.84115365602 +      1059.3819301892 * t);
        jupiter_r_0+=-Math.pow(t,0.0)*      0.2520932702*      529.6909650946*Math.sin( 3.49108640015 +       529.6909650946 * t);
        jupiter_r_0+=-Math.pow(t,0.0)*     5.20887429471*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var jupiter_r_1 = 0.0;
        jupiter_r_1+=Math.pow(t,0.0)*1.0*     0.01271801596*Math.cos( 2.64937511122 +       529.6909650946*t)-Math.pow(t,1.0)*     0.01271801596*      529.6909650946*Math.sin( 2.64937511122 +       529.6909650946 * t);

        return jupiter_r_1+jupiter_r_0;
    }

    @JvmStatic private fun mars_b(t: Double): Double {
        var mars_b_0 = 0.0;
        mars_b_0+=-Math.pow(t,0.0)*     0.00289104742*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        mars_b_0+=-Math.pow(t,0.0)*     0.00298033234*     6681.2248533996*Math.sin( 4.10616996243 +      6681.2248533996 * t);
        mars_b_0+=-Math.pow(t,0.0)*     0.03197134986*     3340.6124266998*Math.sin( 3.76832042432 +      3340.6124266998 * t);

        var mars_b_1 = 0.0;
        mars_b_1+=Math.pow(t,0.0)*1.0*     0.00350068845*Math.cos( 5.36847836211 +      3340.6124266998*t)-Math.pow(t,1.0)*     0.00350068845*     3340.6124266998*Math.sin( 5.36847836211 +      3340.6124266998 * t);

        return mars_b_1+mars_b_0;
    }

    @JvmStatic private fun mars_l(t: Double): Double {
        var mars_l_0 = 0.0;
        mars_l_0+=-Math.pow(t,0.0)*     0.01108216792*     6681.2248533996*Math.sin( 5.40099836958 +      6681.2248533996 * t);
        mars_l_0+=-Math.pow(t,0.0)*       0.186563681*     3340.6124266998*Math.sin( 5.05037100303 +      3340.6124266998 * t);
        mars_l_0+=-Math.pow(t,0.0)*     6.20347711583*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var mars_l_1 = 0.0;
        mars_l_1+=Math.pow(t,0.0)*1.0*     0.00164901343*Math.cos( 3.92631250962 +      6681.2248533996*t)-Math.pow(t,1.0)*     0.00164901343*     6681.2248533996*Math.sin( 3.92631250962 +      6681.2248533996 * t);
        mars_l_1+=Math.pow(t,0.0)*1.0*     0.01458227051*Math.cos( 3.60426053609 +      3340.6124266998*t)-Math.pow(t,1.0)*     0.01458227051*     3340.6124266998*Math.sin( 3.60426053609 +      3340.6124266998 * t);
        mars_l_1+=Math.pow(t,0.0)*1.0*  3340.85627474342*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*  3340.85627474342*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return mars_l_1+mars_l_0;
    }

    @JvmStatic private fun mars_r(t: Double): Double {
        var mars_r_0 = 0.0;
        mars_r_0+=-Math.pow(t,0.0)*     0.00660776357*     6681.2248533996*Math.sin( 3.81783442097 +      6681.2248533996 * t);
        mars_r_0+=-Math.pow(t,0.0)*     0.14184953153*     3340.6124266998*Math.sin( 3.47971283519 +      3340.6124266998 * t);
        mars_r_0+=-Math.pow(t,0.0)*     1.53033488276*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var mars_r_1 = 0.0;
        mars_r_1+=Math.pow(t,0.0)*1.0*     0.00103175886*Math.cos( 2.37071845682 +      6681.2248533996*t)-Math.pow(t,1.0)*     0.00103175886*     6681.2248533996*Math.sin( 2.37071845682 +      6681.2248533996 * t);
        mars_r_1+=Math.pow(t,0.0)*1.0*      0.0110743334*Math.cos(  2.0325052495 +      3340.6124266998*t)-Math.pow(t,1.0)*      0.0110743334*     3340.6124266998*Math.sin(  2.0325052495 +      3340.6124266998 * t);

        return mars_r_1+mars_r_0;
    }

    @JvmStatic private fun mercury_b(t: Double): Double {
        var mercury_b_0 = 0.0;
        mercury_b_0+=-Math.pow(t,0.0)*      0.0012977877*  104351.61256629678*Math.sin( 4.83232503961 +   104351.61256629678 * t);
        mercury_b_0+=-Math.pow(t,0.0)*      0.0054325181*   78263.70942472259*Math.sin( 1.79644363963 +    78263.70942472259 * t);
        mercury_b_0+=-Math.pow(t,0.0)*     0.01222839532*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        mercury_b_0+=-Math.pow(t,0.0)*     0.02388076996*    52175.8062831484*Math.sin( 5.03738959685 +     52175.8062831484 * t);
        mercury_b_0+=-Math.pow(t,0.0)*     0.11737528962*    26087.9031415742*Math.sin( 1.98357498767 +     26087.9031415742 * t);

        var mercury_b_1 = 0.0;
        mercury_b_1+=Math.pow(t,0.0)*1.0*     0.00146233668*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1.0)*     0.00146233668*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        mercury_b_1+=Math.pow(t,0.0)*1.0*     0.00429151362*Math.cos( 3.50169780393 +     26087.9031415742*t)-Math.pow(t,1.0)*     0.00429151362*    26087.9031415742*Math.sin( 3.50169780393 +     26087.9031415742 * t);

        return mercury_b_1+mercury_b_0;
    }

    @JvmStatic private fun mercury_l(t: Double): Double {
        var mercury_l_0 = 0.0;
        mercury_l_0+=-Math.pow(t,0.0)*     0.00165590362*  104351.61256629678*Math.sin( 4.11969163181 +   104351.61256629678 * t);
        mercury_l_0+=-Math.pow(t,0.0)*     0.00855346843*   78263.70942472259*Math.sin( 1.16520322351 +    78263.70942472259 * t);
        mercury_l_0+=-Math.pow(t,0.0)*     0.05046294199*    52175.8062831484*Math.sin(  4.4778548954 +     52175.8062831484 * t);
        mercury_l_0+=-Math.pow(t,0.0)*     0.40989414976*    26087.9031415742*Math.sin( 1.48302034194 +     26087.9031415742 * t);
        mercury_l_0+=-Math.pow(t,0.0)*     4.40250710144*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var mercury_l_1 = 0.0;
        mercury_l_1+=Math.pow(t,0.0)*1.0*     0.00303471395*Math.cos( 3.05565472363 +     52175.8062831484*t)-Math.pow(t,1.0)*     0.00303471395*    52175.8062831484*Math.sin( 3.05565472363 +     52175.8062831484 * t);
        mercury_l_1+=Math.pow(t,0.0)*1.0*     0.01126007832*Math.cos( 6.21703970996 +     26087.9031415742*t)-Math.pow(t,1.0)*     0.01126007832*    26087.9031415742*Math.sin( 6.21703970996 +     26087.9031415742 * t);
        mercury_l_1+=Math.pow(t,0.0)*1.0* 26088.14706222746*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)* 26088.14706222746*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return mercury_l_1+mercury_l_0;
    }

    @JvmStatic private fun mercury_r(t: Double): Double {
        var mercury_r_0 = 0.0;
        mercury_r_0+=-Math.pow(t,0.0)*     0.00121281763*   78263.70942472259*Math.sin( 6.01064153805 +    78263.70942472259 * t);
        mercury_r_0+=-Math.pow(t,0.0)*     0.00795525557*    52175.8062831484*Math.sin( 2.95989690096 +     52175.8062831484 * t);
        mercury_r_0+=-Math.pow(t,0.0)*     0.07834131817*    26087.9031415742*Math.sin( 6.19233722599 +     26087.9031415742 * t);
        mercury_r_0+=-Math.pow(t,0.0)*     0.39528271652*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var mercury_r_1 = 0.0;
        mercury_r_1+=Math.pow(t,0.0)*1.0*     0.00217347739*Math.cos( 4.65617158663 +     26087.9031415742*t)-Math.pow(t,1.0)*     0.00217347739*    26087.9031415742*Math.sin( 4.65617158663 +     26087.9031415742 * t);

        return mercury_r_1+mercury_r_0;
    }

    @JvmStatic private fun neptune_b(t: Double): Double {
        var neptune_b_0 = 0.0;
        neptune_b_0+=-Math.pow(t,0.0)*     0.03088622933*       38.1330356378*Math.sin( 1.44104372626 +        38.1330356378 * t);

        var neptune_b_1 = 0.0;
        neptune_b_1+=Math.pow(t,0.0)*1.0*     0.00227279214*Math.cos(  3.8079308987 +        38.1330356378*t)-Math.pow(t,1.0)*     0.00227279214*       38.1330356378*Math.sin(  3.8079308987 +        38.1330356378 * t);

        return neptune_b_1+neptune_b_0;
    }

    @JvmStatic private fun neptune_l(t: Double): Double {
        var neptune_l_0 = 0.0;
        neptune_l_0+=-Math.pow(t,0.0)*     0.00124531845*       36.6485629295*Math.sin( 4.83008090682 +        36.6485629295 * t);
        neptune_l_0+=-Math.pow(t,0.0)*     0.01019727662*        1.4844727083*Math.sin(  0.4858092366 +         1.4844727083 * t);
        neptune_l_0+=-Math.pow(t,0.0)*     0.01798475509*       38.1330356378*Math.sin(  2.9010127305 +        38.1330356378 * t);
        neptune_l_0+=-Math.pow(t,0.0)*     5.31188633047*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var neptune_l_1 = 0.0;
        neptune_l_1+=Math.pow(t,0.0)*1.0*    38.37687716731*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*    38.37687716731*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return neptune_l_1+neptune_l_0;
    }

    @JvmStatic private fun neptune_r(t: Double): Double {
        var neptune_r_0 = 0.0;
        neptune_r_0+=-Math.pow(t,0.0)*     0.00100895397*        73.297125859*Math.sin( 0.37702748681 +         73.297125859 * t);
        neptune_r_0+=-Math.pow(t,0.0)*     0.00121801825*       76.2660712756*Math.sin( 5.79754444303 +        76.2660712756 * t);
        neptune_r_0+=-Math.pow(t,0.0)*     0.00135134095*       39.6175083461*Math.sin( 3.37220607384 +        39.6175083461 * t);
        neptune_r_0+=-Math.pow(t,0.0)*      0.0027457197*      175.1660598002*Math.sin( 1.84552256801 +       175.1660598002 * t);
        neptune_r_0+=-Math.pow(t,0.0)*     0.00495725642*      491.5579294568*Math.sin( 1.57105654815 +       491.5579294568 * t);
        neptune_r_0+=-Math.pow(t,0.0)*     0.00537760613*       35.1640902212*Math.sin( 4.52113902845 +        35.1640902212 * t);
        neptune_r_0+=-Math.pow(t,0.0)*     0.00807830737*        1.4844727083*Math.sin( 5.18592836167 +         1.4844727083 * t);
        neptune_r_0+=-Math.pow(t,0.0)*     0.01691764281*       36.6485629295*Math.sin( 3.25186138896 +        36.6485629295 * t);
        neptune_r_0+=-Math.pow(t,0.0)*      0.2706225949*       38.1330356378*Math.sin(  1.3299945893 +        38.1330356378 * t);
        neptune_r_0+=-Math.pow(t,0.0)*    30.07013206102*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var neptune_r_1 = 0.0;
        neptune_r_1+=Math.pow(t,0.0)*1.0*     0.00236338502*Math.cos( 0.70498011235 +        38.1330356378*t)-Math.pow(t,1.0)*     0.00236338502*       38.1330356378*Math.sin( 0.70498011235 +        38.1330356378 * t);

        return neptune_r_1+neptune_r_0;
    }

    @JvmStatic private fun saturn_b(t: Double): Double {
        var saturn_b_0 = 0.0;
        saturn_b_0+=-Math.pow(t,0.0)*     0.00240348303*       426.598190876*Math.sin(  2.8523848939 +        426.598190876 * t);
        saturn_b_0+=-Math.pow(t,0.0)*      0.0433067804*       213.299095438*Math.sin( 3.60284428399 +        213.299095438 * t);

        var saturn_b_1 = 0.0;
        saturn_b_1+=Math.pow(t,0.0)*1.0*     0.00397554998*Math.cos( 5.33289992556 +        213.299095438*t)-Math.pow(t,1.0)*     0.00397554998*       213.299095438*Math.sin( 5.33289992556 +        213.299095438 * t);

        return saturn_b_1+saturn_b_0;
    }

    @JvmStatic private fun saturn_l(t: Double): Double {
        var saturn_l_0 = 0.0;
        saturn_l_0+=-Math.pow(t,0.0)*     0.00206816296*      103.0927742186*Math.sin( 0.24658366938 +       103.0927742186 * t);
        saturn_l_0+=-Math.pow(t,0.0)*     0.00350769223*       426.598190876*Math.sin( 3.30329903015 +        426.598190876 * t);
        saturn_l_0+=-Math.pow(t,0.0)*     0.00398379386*      206.1855484372*Math.sin( 0.52112025957 +       206.1855484372 * t);
        saturn_l_0+=-Math.pow(t,0.0)*     0.01414150958*        7.1135470008*Math.sin( 4.58581515873 +         7.1135470008 * t);
        saturn_l_0+=-Math.pow(t,0.0)*      0.1110765978*       213.299095438*Math.sin( 3.96205090194 +        213.299095438 * t);
        saturn_l_0+=-Math.pow(t,0.0)*     0.87401354029*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var saturn_l_1 = 0.0;
        saturn_l_1+=Math.pow(t,0.0)*1.0*      0.0010767877*Math.cos( 2.27769911872 +       206.1855484372*t)-Math.pow(t,1.0)*      0.0010767877*      206.1855484372*Math.sin( 2.27769911872 +       206.1855484372 * t);
        saturn_l_1+=Math.pow(t,0.0)*1.0*     0.00564347566*Math.cos( 2.88500136429 +         7.1135470008*t)-Math.pow(t,1.0)*     0.00564347566*        7.1135470008*Math.sin( 2.88500136429 +         7.1135470008 * t);
        saturn_l_1+=Math.pow(t,0.0)*1.0*     0.01296855005*Math.cos( 1.82820544701 +        213.299095438*t)-Math.pow(t,1.0)*     0.01296855005*       213.299095438*Math.sin( 1.82820544701 +        213.299095438 * t);
        saturn_l_1+=Math.pow(t,0.0)*1.0*   213.54295595986*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*   213.54295595986*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var saturn_l_2 = 0.0;
        saturn_l_2+=Math.pow(t,1.0)*2.0*     0.00116441181*Math.cos( 1.17987850633 +         7.1135470008*t)-Math.pow(t,2.0)*     0.00116441181*        7.1135470008*Math.sin( 1.17987850633 +         7.1135470008 * t);

        return saturn_l_2+saturn_l_1+saturn_l_0;
    }

    @JvmStatic private fun saturn_r(t: Double): Double {
        var saturn_r_0 = 0.0;
        saturn_r_0+=-Math.pow(t,0.0)*     0.00108974737*      110.2063212194*Math.sin( 3.29313595577 +       110.2063212194 * t);
        saturn_r_0+=-Math.pow(t,0.0)*     0.00140617548*      632.7837393132*Math.sin( 5.70406652991 +       632.7837393132 * t);
        saturn_r_0+=-Math.pow(t,0.0)*     0.00361778433*        7.1135470008*Math.sin( 3.13904303264 +         7.1135470008 * t);
        saturn_r_0+=-Math.pow(t,0.0)*     0.00371684449*      220.4126424388*Math.sin( 2.27114833428 +       220.4126424388 * t);
        saturn_r_0+=-Math.pow(t,0.0)*     0.00547506899*      103.0927742186*Math.sin( 5.01532628454 +       103.0927742186 * t);
        saturn_r_0+=-Math.pow(t,0.0)*     0.00821891059*      316.3918696566*Math.sin( 5.93520025371 +       316.3918696566 * t);
        saturn_r_0+=-Math.pow(t,0.0)*     0.01464663959*       426.598190876*Math.sin( 1.64763045468 +        426.598190876 * t);
        saturn_r_0+=-Math.pow(t,0.0)*     0.01873679934*      206.1855484372*Math.sin( 5.23549605091 +       206.1855484372 * t);
        saturn_r_0+=-Math.pow(t,0.0)*     0.52921382465*       213.299095438*Math.sin( 2.39226219733 +        213.299095438 * t);
        saturn_r_0+=-Math.pow(t,0.0)*     9.55758135801*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var saturn_r_1 = 0.0;
        saturn_r_1+=Math.pow(t,0.0)*1.0*     0.00143891176*Math.cos( 1.40744864239 +         7.1135470008*t)-Math.pow(t,1.0)*     0.00143891176*        7.1135470008*Math.sin( 1.40744864239 +         7.1135470008 * t);
        saturn_r_1+=Math.pow(t,0.0)*1.0*      0.0018626154*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1.0)*      0.0018626154*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        saturn_r_1+=Math.pow(t,0.0)*1.0*     0.00188491375*Math.cos( 0.47215719444 +       220.4126424388*t)-Math.pow(t,1.0)*     0.00188491375*      220.4126424388*Math.sin( 0.47215719444 +       220.4126424388 * t);
        saturn_r_1+=Math.pow(t,0.0)*1.0*     0.00341394136*Math.cos(  5.7963577396 +        426.598190876*t)-Math.pow(t,1.0)*     0.00341394136*       426.598190876*Math.sin(  5.7963577396 +        426.598190876 * t);
        saturn_r_1+=Math.pow(t,0.0)*1.0*     0.00506577574*Math.cos( 0.71114650941 +       206.1855484372*t)-Math.pow(t,1.0)*     0.00506577574*      206.1855484372*Math.sin( 0.71114650941 +       206.1855484372 * t);
        saturn_r_1+=Math.pow(t,0.0)*1.0*     0.06182981282*Math.cos( 0.25843515034 +        213.299095438*t)-Math.pow(t,1.0)*     0.06182981282*       213.299095438*Math.sin( 0.25843515034 +        213.299095438 * t);

        var saturn_r_2 = 0.0;
        saturn_r_2+=Math.pow(t,1.0)*2.0*     0.00436902464*Math.cos( 4.78671673044 +        213.299095438*t)-Math.pow(t,2.0)*     0.00436902464*       213.299095438*Math.sin( 4.78671673044 +        213.299095438 * t);

        return saturn_r_2+saturn_r_1+saturn_r_0;
    }

    @JvmStatic private fun uranus_b(t: Double): Double {
        var uranus_b_0 = 0.0;
        uranus_b_0+=-Math.pow(t,0.0)*     0.01346277639*       74.7815985673*Math.sin( 2.61877810545 +        74.7815985673 * t);

        var uranus_b_1 = 0.0;
        uranus_b_1+=Math.pow(t,0.0)*1.0*     0.00206366162*Math.cos( 4.12394311407 +        74.7815985673*t)-Math.pow(t,1.0)*     0.00206366162*       74.7815985673*Math.sin( 4.12394311407 +        74.7815985673 * t);

        return uranus_b_1+uranus_b_0;
    }

    @JvmStatic private fun uranus_l(t: Double): Double {
        var uranus_l_0 = 0.0;
        uranus_l_0+=-Math.pow(t,0.0)*     0.00272328132*      149.5631971346*Math.sin( 3.35823710524 +       149.5631971346 * t);
        uranus_l_0+=-Math.pow(t,0.0)*     0.00365981718*        73.297125859*Math.sin( 1.89962189068 +         73.297125859 * t);
        uranus_l_0+=-Math.pow(t,0.0)*     0.01504247826*        1.4844727083*Math.sin( 3.62719262195 +         1.4844727083 * t);
        uranus_l_0+=-Math.pow(t,0.0)*     0.09260408252*       74.7815985673*Math.sin(  0.8910642153 +        74.7815985673 * t);
        uranus_l_0+=-Math.pow(t,0.0)*     5.48129294299*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var uranus_l_1 = 0.0;
        uranus_l_1+=Math.pow(t,0.0)*1.0*     0.00154458244*Math.cos( 5.24201658072 +        74.7815985673*t)-Math.pow(t,1.0)*     0.00154458244*       74.7815985673*Math.sin( 5.24201658072 +        74.7815985673 * t);
        uranus_l_1+=Math.pow(t,0.0)*1.0*    75.02543121646*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*    75.02543121646*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return uranus_l_1+uranus_l_0;
    }

    @JvmStatic private fun uranus_r(t: Double): Double {
        var uranus_r_0 = 0.0;
        uranus_r_0+=-Math.pow(t,0.0)*     0.00143705902*       11.0457002639*Math.sin( 1.38368574483 +        11.0457002639 * t);
        uranus_r_0+=-Math.pow(t,0.0)*     0.00161858251*      148.0787244263*Math.sin( 2.79137863469 +       148.0787244263 * t);
        uranus_r_0+=-Math.pow(t,0.0)*     0.00190521915*        1.4844727083*Math.sin( 1.99809364502 +         1.4844727083 * t);
        uranus_r_0+=-Math.pow(t,0.0)*     0.00243508222*       71.8126531507*Math.sin( 1.57086595074 +        71.8126531507 * t);
        uranus_r_0+=-Math.pow(t,0.0)*     0.00338525522*      138.5174968707*Math.sin( 1.58002682946 +       138.5174968707 * t);
        uranus_r_0+=-Math.pow(t,0.0)*     0.00496404171*      454.9093665273*Math.sin( 1.40139934716 +       454.9093665273 * t);
        uranus_r_0+=-Math.pow(t,0.0)*     0.00602248144*       63.7358983034*Math.sin( 3.86003820462 +        63.7358983034 * t);
        uranus_r_0+=-Math.pow(t,0.0)*     0.00649321851*       76.2660712756*Math.sin( 4.52247298119 +        76.2660712756 * t);
        uranus_r_0+=-Math.pow(t,0.0)*     0.02055653495*      149.5631971346*Math.sin( 1.78295170028 +       149.5631971346 * t);
        uranus_r_0+=-Math.pow(t,0.0)*     0.03440835545*        73.297125859*Math.sin( 0.32836098991 +         73.297125859 * t);
        uranus_r_0+=-Math.pow(t,0.0)*     0.88784984055*       74.7815985673*Math.sin( 5.60377526994 +        74.7815985673 * t);
        uranus_r_0+=-Math.pow(t,0.0)*    19.21264847881*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var uranus_r_1 = 0.0;
        uranus_r_1+=Math.pow(t,0.0)*1.0*      0.0147989637*Math.cos( 3.67205705317 +        74.7815985673*t)-Math.pow(t,1.0)*      0.0147989637*       74.7815985673*Math.sin( 3.67205705317 +        74.7815985673 * t);

        return uranus_r_1+uranus_r_0;
    }

    @JvmStatic private fun venus_b(t: Double): Double {
        var venus_b_0 = 0.0;
        venus_b_0+=-Math.pow(t,0.0)*     0.05923638472*     10213.285546211*Math.sin( 0.26702775813 +      10213.285546211 * t);

        var venus_b_1 = 0.0;
        venus_b_1+=Math.pow(t,0.0)*1.0*     0.00513347602*Math.cos( 1.80364310797 +      10213.285546211*t)-Math.pow(t,1.0)*     0.00513347602*     10213.285546211*Math.sin( 1.80364310797 +      10213.285546211 * t);

        return venus_b_1+venus_b_0;
    }

    @JvmStatic private fun venus_l(t: Double): Double {
        var venus_l_0 = 0.0;
        venus_l_0+=-Math.pow(t,0.0)*     0.01353968419*     10213.285546211*Math.sin( 5.59313319619 +      10213.285546211 * t);
        venus_l_0+=-Math.pow(t,0.0)*     3.17614666774*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var venus_l_1 = 0.0;
        venus_l_1+=Math.pow(t,0.0)*1.0* 10213.52943052898*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)* 10213.52943052898*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return venus_l_1+venus_l_0;
    }

    @JvmStatic private fun venus_r(t: Double): Double {
        var venus_r_0 = 0.0;
        venus_r_0+=-Math.pow(t,0.0)*     0.00489824185*     10213.285546211*Math.sin( 4.02151832268 +      10213.285546211 * t);
        venus_r_0+=-Math.pow(t,0.0)*     0.72334820905*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return venus_r_0;
    }

}
