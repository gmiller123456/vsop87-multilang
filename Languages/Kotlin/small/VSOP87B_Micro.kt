//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

object VSOP87B_Micro{
    @JvmStatic fun getEarth(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=earth_b(t);
        temp[1]=earth_l(t);
        temp[2]=earth_r(t);
        return temp;
    }

    @JvmStatic fun getJupiter(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=jupiter_b(t);
        temp[1]=jupiter_l(t);
        temp[2]=jupiter_r(t);
        return temp;
    }

    @JvmStatic fun getMars(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=mars_b(t);
        temp[1]=mars_l(t);
        temp[2]=mars_r(t);
        return temp;
    }

    @JvmStatic fun getMercury(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=mercury_b(t);
        temp[1]=mercury_l(t);
        temp[2]=mercury_r(t);
        return temp;
    }

    @JvmStatic fun getNeptune(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=neptune_b(t);
        temp[1]=neptune_l(t);
        temp[2]=neptune_r(t);
        return temp;
    }

    @JvmStatic fun getSaturn(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=saturn_b(t);
        temp[1]=saturn_l(t);
        temp[2]=saturn_r(t);
        return temp;
    }

    @JvmStatic fun getUranus(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=uranus_b(t);
        temp[1]=uranus_l(t);
        temp[2]=uranus_r(t);
        return temp;
    }

    @JvmStatic fun getVenus(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=venus_b(t);
        temp[1]=venus_l(t);
        temp[2]=venus_r(t);
        return temp;
    }

    @JvmStatic private fun earth_b(t: Double): Double {
        var earth_b_1 = 0.0;
        earth_b_1+=     0.00227777722*Math.cos(  3.4137662053 +      6283.0758499914 * t);
        earth_b_1=earth_b_1*t;

        return earth_b_1;
    }

    @JvmStatic private fun earth_l(t: Double): Double {
        var earth_l_0 = 0.0;
        earth_l_0+=     0.00034894275*Math.cos( 4.62610242189 +     12566.1516999828 * t);
        earth_l_0+=     0.03341656453*Math.cos( 4.66925680415 +      6283.0758499914 * t);
        earth_l_0+=     1.75347045673*Math.cos(           0.0 +                  0.0 * t);

        var earth_l_1 = 0.0;
        earth_l_1+=     0.00206058863*Math.cos( 2.67823455808 +      6283.0758499914 * t);
        earth_l_1+=   6283.0758499914*Math.cos(           0.0 +                  0.0 * t);
        earth_l_1=earth_l_1*t;

        return earth_l_1+earth_l_0;
    }

    @JvmStatic private fun earth_r(t: Double): Double {
        var earth_r_0 = 0.0;
        earth_r_0+=     0.00013956024*Math.cos( 3.05524609456 +     12566.1516999828 * t);
        earth_r_0+=     0.01670699632*Math.cos( 3.09846350258 +      6283.0758499914 * t);
        earth_r_0+=     1.00013988784*Math.cos(           0.0 +                  0.0 * t);

        var earth_r_1 = 0.0;
        earth_r_1+=     0.00103018607*Math.cos( 1.10748968172 +      6283.0758499914 * t);
        earth_r_1=earth_r_1*t;

        return earth_r_1+earth_r_0;
    }

    @JvmStatic private fun jupiter_b(t: Double): Double {
        var jupiter_b_0 = 0.0;
        jupiter_b_0+=     0.00109971634*Math.cos( 3.90809347197 +      1059.3819301892 * t);
        jupiter_b_0+=     0.00110090358*Math.cos(           0.0 +                  0.0 * t);
        jupiter_b_0+=     0.02268615702*Math.cos( 3.55852606721 +       529.6909650946 * t);

        var jupiter_b_1 = 0.0;
        jupiter_b_1+=     0.00078203446*Math.cos( 1.52377859742 +       529.6909650946 * t);
        jupiter_b_1=jupiter_b_1*t;

        return jupiter_b_1+jupiter_b_0;
    }

    @JvmStatic private fun jupiter_l(t: Double): Double {
        var jupiter_l_0 = 0.0;
        jupiter_l_0+=      0.0001358973*Math.cos(  5.7748104079 +      1589.0728952838 * t);
        jupiter_l_0+=     0.00027964629*Math.cos(  1.7845459182 +       536.8045120954 * t);
        jupiter_l_0+=     0.00038857767*Math.cos( 1.27231755835 +       316.3918696566 * t);
        jupiter_l_0+=     0.00039806064*Math.cos( 2.29376740788 +       419.4846438752 * t);
        jupiter_l_0+=     0.00064263975*Math.cos( 3.41145165351 +       103.0927742186 * t);
        jupiter_l_0+=     0.00072903078*Math.cos( 3.64042916389 +       522.5774180938 * t);
        jupiter_l_0+=     0.00097178296*Math.cos( 4.14264726552 +       632.7837393132 * t);
        jupiter_l_0+=     0.00306389205*Math.cos( 5.41734730184 +      1059.3819301892 * t);
        jupiter_l_0+=     0.00573610142*Math.cos( 1.44406205629 +         7.1135470008 * t);
        jupiter_l_0+=     0.09695898719*Math.cos( 5.06191793158 +       529.6909650946 * t);
        jupiter_l_0+=     0.59954691494*Math.cos(           0.0 +                  0.0 * t);

        var jupiter_l_1 = 0.0;
        jupiter_l_1+=     0.00012103653*Math.cos( 0.16994816098 +       536.8045120954 * t);
        jupiter_l_1+=      0.0002072092*Math.cos( 5.45943156902 +       522.5774180938 * t);
        jupiter_l_1+=     0.00030099479*Math.cos( 4.54540782858 +      1059.3819301892 * t);
        jupiter_l_1+=     0.00228917222*Math.cos( 6.02646855621 +         7.1135470008 * t);
        jupiter_l_1+=     0.00489503243*Math.cos(  4.2208293947 +       529.6909650946 * t);
        jupiter_l_1+=   529.69096508814*Math.cos(           0.0 +                  0.0 * t);
        jupiter_l_1=jupiter_l_1*t;

        var jupiter_l_2 = 0.0;
        jupiter_l_2+=     0.00014837605*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_l_2+=     0.00030649436*Math.cos(   2.929777887 +       529.6909650946 * t);
        jupiter_l_2+=     0.00047233601*Math.cos( 4.32148536482 +         7.1135470008 * t);
        jupiter_l_2=jupiter_l_2*t*t;

        return jupiter_l_2+jupiter_l_1+jupiter_l_0;
    }

    @JvmStatic private fun jupiter_r(t: Double): Double {
        var jupiter_r_0 = 0.0;
        jupiter_r_0+=     0.00012749023*Math.cos( 2.71550286592 +      1052.2683831884 * t);
        jupiter_r_0+=     0.00013032614*Math.cos( 2.96042965363 +      1162.4747044078 * t);
        jupiter_r_0+=     0.00022283743*Math.cos( 4.19362594399 +      1589.0728952838 * t);
        jupiter_r_0+=     0.00023453271*Math.cos( 3.54023522184 +       735.8765135318 * t);
        jupiter_r_0+=     0.00023947298*Math.cos(  0.2745803748 +         7.1135470008 * t);
        jupiter_r_0+=     0.00029134542*Math.cos( 1.67759379655 +       103.0927742186 * t);
        jupiter_r_0+=     0.00030135335*Math.cos( 2.16132003734 +       949.1756089698 * t);
        jupiter_r_0+=     0.00065517248*Math.cos(  5.9799588479 +       316.3918696566 * t);
        jupiter_r_0+=     0.00072062974*Math.cos( 0.21465724607 +       536.8045120954 * t);
        jupiter_r_0+=     0.00086792905*Math.cos( 0.71001145545 +       419.4846438752 * t);
        jupiter_r_0+=     0.00187647346*Math.cos( 2.07590383214 +       522.5774180938 * t);
        jupiter_r_0+=     0.00282029458*Math.cos( 2.57419881293 +       632.7837393132 * t);
        jupiter_r_0+=     0.00610599976*Math.cos( 3.84115365948 +      1059.3819301892 * t);
        jupiter_r_0+=     0.25209327119*Math.cos( 3.49108639871 +       529.6909650946 * t);
        jupiter_r_0+=     5.20887429326*Math.cos(           0.0 +                  0.0 * t);

        var jupiter_r_1 = 0.0;
        jupiter_r_1+=     0.00011847263*Math.cos( 2.41328764459 +       419.4846438752 * t);
        jupiter_r_1+=     0.00031185171*Math.cos( 4.88276958012 +       536.8045120954 * t);
        jupiter_r_1+=     0.00041390269*Math.cos(           0.0 +                  0.0 * t);
        jupiter_r_1+=     0.00053443713*Math.cos( 3.89717383175 +       522.5774180938 * t);
        jupiter_r_1+=     0.00061661816*Math.cos( 3.00076460387 +      1059.3819301892 * t);
        jupiter_r_1+=      0.0127180152*Math.cos( 2.64937512894 +       529.6909650946 * t);
        jupiter_r_1=jupiter_r_1*t;

        var jupiter_r_2 = 0.0;
        jupiter_r_2+=     0.00079644957*Math.cos( 1.35865949884 +       529.6909650946 * t);
        jupiter_r_2=jupiter_r_2*t*t;

        return jupiter_r_2+jupiter_r_1+jupiter_r_0;
    }

    @JvmStatic private fun mars_b(t: Double): Double {
        var mars_b_0 = 0.0;
        mars_b_0+=     0.00031365539*Math.cos(  4.4465105309 +     10021.8372800994 * t);
        mars_b_0+=     0.00289104742*Math.cos(           0.0 +                  0.0 * t);
        mars_b_0+=     0.00298033234*Math.cos( 4.10616996305 +      6681.2248533996 * t);
        mars_b_0+=     0.03197134986*Math.cos( 3.76832042431 +      3340.6124266998 * t);

        var mars_b_1 = 0.0;
        mars_b_1+=     0.00012834709*Math.cos( 1.60810667915 +      6681.2248533996 * t);
        mars_b_1+=     0.00020976948*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_b_1+=     0.00217310991*Math.cos( 6.04472194776 +      3340.6124266998 * t);
        mars_b_1=mars_b_1*t;

        return mars_b_1+mars_b_0;
    }

    @JvmStatic private fun mars_l(t: Double): Double {
        var mars_l_0 = 0.0;
        mars_l_0+=     0.00010610235*Math.cos( 2.93958560338 +      2281.2304965106 * t);
        mars_l_0+=     0.00012315897*Math.cos( 0.84956094002 +      2810.9214616052 * t);
        mars_l_0+=     0.00027744987*Math.cos( 5.97049513147 +          3.523118349 * t);
        mars_l_0+=     0.00091798406*Math.cos( 5.75478744667 +     10021.8372800994 * t);
        mars_l_0+=     0.01108216816*Math.cos( 5.40099836344 +      6681.2248533996 * t);
        mars_l_0+=     0.18656368093*Math.cos(  5.0503710027 +      3340.6124266998 * t);
        mars_l_0+=     6.20347711581*Math.cos(           0.0 +                  0.0 * t);

        var mars_l_1 = 0.0;
        mars_l_1+=     0.00020622975*Math.cos( 4.26108844583 +     10021.8372800994 * t);
        mars_l_1+=     0.00168414711*Math.cos( 3.92318567804 +      6681.2248533996 * t);
        mars_l_1+=     0.01457554523*Math.cos( 3.60433733236 +      3340.6124266998 * t);
        mars_l_1+=  3340.61242700512*Math.cos(           0.0 +                  0.0 * t);
        mars_l_1=mars_l_1*t;

        var mars_l_2 = 0.0;
        mars_l_2+=     0.00013459579*Math.cos( 2.45738706163 +      6681.2248533996 * t);
        mars_l_2+=     0.00058152577*Math.cos( 2.04961712429 +      3340.6124266998 * t);
        mars_l_2=mars_l_2*t*t;

        return mars_l_2+mars_l_1+mars_l_0;
    }

    @JvmStatic private fun mars_r(t: Double): Double {
        var mars_r_0 = 0.0;
        mars_r_0+=     0.00046179117*Math.cos( 4.15595316782 +     10021.8372800994 * t);
        mars_r_0+=     0.00660776362*Math.cos( 3.81783443019 +      6681.2248533996 * t);
        mars_r_0+=      0.1418495316*Math.cos( 3.47971283528 +      3340.6124266998 * t);
        mars_r_0+=     1.53033488271*Math.cos(           0.0 +                  0.0 * t);

        var mars_r_1 = 0.0;
        mars_r_1+=      0.0001081588*Math.cos( 2.70888095665 +     10021.8372800994 * t);
        mars_r_1+=       0.000128772*Math.cos(           0.0 +                  0.0 * t);
        mars_r_1+=     0.00103175887*Math.cos( 2.37071847807 +      6681.2248533996 * t);
        mars_r_1+=     0.01107433345*Math.cos( 2.03250524857 +      3340.6124266998 * t);
        mars_r_1=mars_r_1*t;

        var mars_r_2 = 0.0;
        mars_r_2+=     0.00044242249*Math.cos( 0.47930604954 +      3340.6124266998 * t);
        mars_r_2=mars_r_2*t*t;

        return mars_r_2+mars_r_1+mars_r_0;
    }

    @JvmStatic private fun mercury_b(t: Double): Double {
        var mercury_b_0 = 0.0;
        mercury_b_0+=     0.00031866927*Math.cos( 1.58088495658 +   130439.51570787099 * t);
        mercury_b_0+=      0.0012977877*Math.cos( 4.83232503958 +   104351.61256629678 * t);
        mercury_b_0+=      0.0054325181*Math.cos( 1.79644363964 +    78263.70942472259 * t);
        mercury_b_0+=     0.01222839532*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_b_0+=     0.02388076996*Math.cos( 5.03738959686 +     52175.8062831484 * t);
        mercury_b_0+=     0.11737528961*Math.cos( 1.98357498767 +     26087.9031415742 * t);

        var mercury_b_1 = 0.0;
        mercury_b_1+=     0.00018772047*Math.cos( 0.05141288887 +    78263.70942472259 * t);
        mercury_b_1+=     0.00023970726*Math.cos( 2.53272082947 +     52175.8062831484 * t);
        mercury_b_1+=     0.00099737713*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_b_1+=     0.00274646065*Math.cos( 3.95008450011 +     26087.9031415742 * t);
        mercury_b_1=mercury_b_1*t;

        return mercury_b_1+mercury_b_0;
    }

    @JvmStatic private fun mercury_l(t: Double): Double {
        var mercury_l_0 = 0.0;
        mercury_l_0+=     0.00034561897*Math.cos( 0.77930768443 +   130439.51570787099 * t);
        mercury_l_0+=     0.00165590362*Math.cos( 4.11969163423 +   104351.61256629678 * t);
        mercury_l_0+=     0.00855346844*Math.cos( 1.16520322459 +    78263.70942472259 * t);
        mercury_l_0+=       0.050462942*Math.cos( 4.47785489551 +     52175.8062831484 * t);
        mercury_l_0+=     0.40989414977*Math.cos( 1.48302034195 +     26087.9031415742 * t);
        mercury_l_0+=     4.40250710144*Math.cos(           0.0 +                  0.0 * t);

        var mercury_l_1 = 0.0;
        mercury_l_1+=     0.00019676525*Math.cos( 2.80965111777 +   104351.61256629678 * t);
        mercury_l_1+=     0.00075775081*Math.cos( 6.08568821653 +    78263.70942472259 * t);
        mercury_l_1+=     0.00292242298*Math.cos( 3.04449355541 +     52175.8062831484 * t);
        mercury_l_1+=     0.01131199811*Math.cos( 6.21874197797 +     26087.9031415742 * t);
        mercury_l_1+= 26087.90313685529*Math.cos(           0.0 +                  0.0 * t);
        mercury_l_1=mercury_l_1*t;

        var mercury_l_2 = 0.0;
        mercury_l_2+=     0.00016395129*Math.cos( 4.67759555504 +     26087.9031415742 * t);
        mercury_l_2=mercury_l_2*t*t;

        return mercury_l_2+mercury_l_1+mercury_l_0;
    }

    @JvmStatic private fun mercury_r(t: Double): Double {
        var mercury_r_0 = 0.0;
        mercury_r_0+=     0.00021921969*Math.cos( 2.77820093972 +   104351.61256629678 * t);
        mercury_r_0+=     0.00121281764*Math.cos( 6.01064153797 +    78263.70942472259 * t);
        mercury_r_0+=     0.00795525558*Math.cos( 2.95989690104 +     52175.8062831484 * t);
        mercury_r_0+=     0.07834131818*Math.cos( 6.19233722598 +     26087.9031415742 * t);
        mercury_r_0+=     0.39528271651*Math.cos(           0.0 +                  0.0 * t);

        var mercury_r_1 = 0.0;
        mercury_r_1+=     0.00010094479*Math.cos( 4.47466326327 +    78263.70942472259 * t);
        mercury_r_1+=     0.00044141826*Math.cos( 1.42385544001 +     52175.8062831484 * t);
        mercury_r_1+=      0.0021734774*Math.cos( 4.65617158665 +     26087.9031415742 * t);
        mercury_r_1=mercury_r_1*t;

        return mercury_r_1+mercury_r_0;
    }

    @JvmStatic private fun neptune_b(t: Double): Double {
        var neptune_b_0 = 0.0;
        neptune_b_0+=     0.00015355489*Math.cos( 2.52123799551 +        36.6485629295 * t);
        neptune_b_0+=     0.00015448133*Math.cos( 3.50877079215 +        39.6175083461 * t);
        neptune_b_0+=     0.00027623609*Math.cos(           0.0 +                  0.0 * t);
        neptune_b_0+=     0.00027780087*Math.cos( 5.91271884599 +        76.2660712756 * t);
        neptune_b_0+=     0.03088622933*Math.cos( 1.44104372644 +        38.1330356378 * t);

        return neptune_b_0;
    }

    @JvmStatic private fun neptune_l(t: Double): Double {
        var neptune_l_0 = 0.0;
        neptune_l_0+=     0.00016482741*Math.cos(  7.727998e-05 +       491.5579294568 * t);
        neptune_l_0+=     0.00033784738*Math.cos( 1.24488874087 +        76.2660712756 * t);
        neptune_l_0+=     0.00037714584*Math.cos( 6.09221808686 +        35.1640902212 * t);
        neptune_l_0+=     0.00042064466*Math.cos( 5.41054993053 +         2.9689454166 * t);
        neptune_l_0+=     0.00124531845*Math.cos( 4.83008090676 +        36.6485629295 * t);
        neptune_l_0+=     0.01019727652*Math.cos( 0.48580922867 +         1.4844727083 * t);
        neptune_l_0+=      0.0179847553*Math.cos(  2.9010127389 +        38.1330356378 * t);
        neptune_l_0+=     5.31188633046*Math.cos(           0.0 +                  0.0 * t);

        var neptune_l_1 = 0.0;
        neptune_l_1+=     0.00015744045*Math.cos( 2.27887427527 +        38.1330356378 * t);
        neptune_l_1+=     0.00016604172*Math.cos( 4.86323329249 +         1.4844727083 * t);
        neptune_l_1+=    38.13303563957*Math.cos(           0.0 +                  0.0 * t);
        neptune_l_1=neptune_l_1*t;

        return neptune_l_1+neptune_l_0;
    }

    @JvmStatic private fun neptune_r(t: Double): Double {
        var neptune_r_0 = 0.0;
        neptune_r_0+=      0.0001201232*Math.cos( 1.92059384991 +      1021.2488945514 * t);
        neptune_r_0+=     0.00014229808*Math.cos( 1.07785898723 +        74.7815985673 * t);
        neptune_r_0+=     0.00016939478*Math.cos( 1.59422512526 +        71.8126531507 * t);
        neptune_r_0+=     0.00024594531*Math.cos( 0.50801745878 +       109.9456887885 * t);
        neptune_r_0+=     0.00046687836*Math.cos( 5.74938034313 +        33.6796175129 * t);
        neptune_r_0+=     0.00069791331*Math.cos( 3.79616637768 +         2.9689454166 * t);
        neptune_r_0+=     0.00100896068*Math.cos(  0.3770272493 +         73.297125859 * t);
        neptune_r_0+=     0.00121801746*Math.cos( 5.79754470298 +        76.2660712756 * t);
        neptune_r_0+=     0.00135134092*Math.cos( 3.37220609835 +        39.6175083461 * t);
        neptune_r_0+=     0.00274571975*Math.cos( 1.84552258866 +       175.1660598002 * t);
        neptune_r_0+=     0.00495725141*Math.cos(  1.5710564165 +       491.5579294568 * t);
        neptune_r_0+=      0.0053776051*Math.cos( 4.52113935896 +        35.1640902212 * t);
        neptune_r_0+=     0.00807830553*Math.cos( 5.18592878704 +         1.4844727083 * t);
        neptune_r_0+=     0.01691764014*Math.cos( 3.25186135653 +        36.6485629295 * t);
        neptune_r_0+=     0.27062259632*Math.cos( 1.32999459377 +        38.1330356378 * t);
        neptune_r_0+=    30.07013205828*Math.cos(           0.0 +                  0.0 * t);

        var neptune_r_1 = 0.0;
        neptune_r_1+=     0.00013220034*Math.cos(  3.3201438793 +         1.4844727083 * t);
        neptune_r_1+=     0.00236338618*Math.cos( 0.70497954792 +        38.1330356378 * t);
        neptune_r_1=neptune_r_1*t;

        return neptune_r_1+neptune_r_0;
    }

    @JvmStatic private fun saturn_b(t: Double): Double {
        var saturn_b_0 = 0.0;
        saturn_b_0+=      0.0001473407*Math.cos( 2.11846596715 +        639.897286314 * t);
        saturn_b_0+=     0.00030863357*Math.cos( 3.48441504555 +       220.4126424388 * t);
        saturn_b_0+=     0.00034116062*Math.cos( 0.57297307557 +       206.1855484372 * t);
        saturn_b_0+=     0.00084745939*Math.cos(           0.0 +                  0.0 * t);
        saturn_b_0+=     0.00240348302*Math.cos( 2.85238489373 +        426.598190876 * t);
        saturn_b_0+=     0.04330678039*Math.cos( 3.60284428399 +        213.299095438 * t);

        var saturn_b_1 = 0.0;
        saturn_b_1+=     0.00010919721*Math.cos( 1.79463271368 +       220.4126424388 * t);
        saturn_b_1+=     0.00013320265*Math.cos( 2.26481519893 +       206.1855484372 * t);
        saturn_b_1+=     0.00017966989*Math.cos(  0.5197943111 +        426.598190876 * t);
        saturn_b_1+=     0.00036947916*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_b_1+=     0.00198927992*Math.cos( 4.93901017903 +        213.299095438 * t);
        saturn_b_1=saturn_b_1*t;

        var saturn_b_2 = 0.0;
        saturn_b_2+=     0.00013884264*Math.cos( 0.08994998691 +        213.299095438 * t);
        saturn_b_2=saturn_b_2*t*t;

        return saturn_b_2+saturn_b_1+saturn_b_0;
    }

    @JvmStatic private fun saturn_l(t: Double): Double {
        var saturn_l_0 = 0.0;
        saturn_l_0+=     0.00010725067*Math.cos( 3.12939523827 +       202.2533951741 * t);
        saturn_l_0+=     0.00013005299*Math.cos( 5.98119023644 +        11.0457002639 * t);
        saturn_l_0+=     0.00013160301*Math.cos( 4.44891291899 +        14.2270940016 * t);
        saturn_l_0+=     0.00014609559*Math.cos(    1.56518472 +         3.9321532631 * t);
        saturn_l_0+=     0.00014906995*Math.cos( 5.76903183869 +       316.3918696566 * t);
        saturn_l_0+=     0.00015053543*Math.cos( 2.71669915667 +        639.897286314 * t);
        saturn_l_0+=      0.0001582029*Math.cos( 0.93809155235 +       632.7837393132 * t);
        saturn_l_0+=     0.00016573588*Math.cos( 0.43719228296 +       419.4846438752 * t);
        saturn_l_0+=     0.00023990355*Math.cos( 4.66976924553 +       110.2063212194 * t);
        saturn_l_0+=       0.000792713*Math.cos( 3.84007056878 +       220.4126424388 * t);
        saturn_l_0+=     0.00206816305*Math.cos( 0.24658372002 +       103.0927742186 * t);
        saturn_l_0+=     0.00350769243*Math.cos( 3.30329907896 +        426.598190876 * t);
        saturn_l_0+=     0.00398379389*Math.cos( 0.52112032699 +       206.1855484372 * t);
        saturn_l_0+=     0.01414150957*Math.cos( 4.58581516874 +         7.1135470008 * t);
        saturn_l_0+=     0.11107659762*Math.cos( 3.96205090159 +        213.299095438 * t);
        saturn_l_0+=     0.87401354025*Math.cos(           0.0 +                  0.0 * t);

        var saturn_l_1 = 0.0;
        saturn_l_1+=     0.00010511678*Math.cos(  2.7488034213 +        14.2270940016 * t);
        saturn_l_1+=     0.00019941774*Math.cos(  1.2795439047 +       103.0927742186 * t);
        saturn_l_1+=     0.00040244455*Math.cos( 2.04108104671 +       220.4126424388 * t);
        saturn_l_1+=     0.00093734369*Math.cos( 1.06311793502 +        426.598190876 * t);
        saturn_l_1+=     0.00107674962*Math.cos( 2.27769131009 +       206.1855484372 * t);
        saturn_l_1+=     0.00564345393*Math.cos( 2.88499717272 +         7.1135470008 * t);
        saturn_l_1+=     0.01297370862*Math.cos( 1.82834923978 +        213.299095438 * t);
        saturn_l_1+=    213.2990952169*Math.cos(           0.0 +                  0.0 * t);
        saturn_l_1=saturn_l_1*t;

        var saturn_l_2 = 0.0;
        saturn_l_2+=      0.0001062983*Math.cos( 0.25764306189 +       220.4126424388 * t);
        saturn_l_2+=     0.00010987259*Math.cos(  5.4447918831 +        426.598190876 * t);
        saturn_l_2+=     0.00015274496*Math.cos( 4.06493179167 +       206.1855484372 * t);
        saturn_l_2+=     0.00036661728*Math.cos(           0.0 +                  0.0 * t);
        saturn_l_2+=     0.00091841837*Math.cos(  0.0732519584 +        213.299095438 * t);
        saturn_l_2+=      0.0011644133*Math.cos( 1.17988132879 +         7.1135470008 * t);
        saturn_l_2=saturn_l_2*t*t;

        var saturn_l_3 = 0.0;
        saturn_l_3+=     0.00016038732*Math.cos( 5.73945573267 +         7.1135470008 * t);
        saturn_l_3=saturn_l_3*t*t*t;

        return saturn_l_3+saturn_l_2+saturn_l_1+saturn_l_0;
    }

    @JvmStatic private fun saturn_r(t: Double): Double {
        var saturn_r_0 = 0.0;
        saturn_r_0+=     0.00011380257*Math.cos(  1.7310542704 +       522.5774180938 * t);
        saturn_r_0+=     0.00011993338*Math.cos( 5.98050967385 +       846.0828347512 * t);
        saturn_r_0+=     0.00012884624*Math.cos( 1.64890652873 +       138.5174968707 * t);
        saturn_r_0+=     0.00014296484*Math.cos( 2.60433479142 +       323.5054166574 * t);
        saturn_r_0+=     0.00015298404*Math.cos(  3.0594381494 +       529.6909650946 * t);
        saturn_r_0+=     0.00020746751*Math.cos( 5.33255457763 +       199.0720014364 * t);
        saturn_r_0+=       0.000208393*Math.cos( 1.52102476129 +       433.7117378768 * t);
        saturn_r_0+=     0.00020936596*Math.cos( 0.46349251129 +       735.8765135318 * t);
        saturn_r_0+=     0.00032401773*Math.cos( 5.47084567016 +       949.1756089698 * t);
        saturn_r_0+=     0.00034143772*Math.cos( 0.19519102597 +       277.0349937414 * t);
        saturn_r_0+=     0.00048913294*Math.cos( 1.55733638681 +       202.2533951741 * t);
        saturn_r_0+=     0.00061053367*Math.cos( 0.94037691801 +        639.897286314 * t);
        saturn_r_0+=     0.00069006962*Math.cos( 5.94099540992 +       419.4846438752 * t);
        saturn_r_0+=     0.00108974848*Math.cos( 3.29313390175 +       110.2063212194 * t);
        saturn_r_0+=     0.00140617506*Math.cos( 5.70406606781 +       632.7837393132 * t);
        saturn_r_0+=     0.00361778765*Math.cos( 3.13904301847 +         7.1135470008 * t);
        saturn_r_0+=      0.0037168465*Math.cos( 2.27114821115 +       220.4126424388 * t);
        saturn_r_0+=     0.00547506923*Math.cos(  5.0153261898 +       103.0927742186 * t);
        saturn_r_0+=     0.00821891141*Math.cos( 5.93520042303 +       316.3918696566 * t);
        saturn_r_0+=     0.01464663929*Math.cos( 1.64763042902 +        426.598190876 * t);
        saturn_r_0+=     0.01873679867*Math.cos(  5.2354960466 +       206.1855484372 * t);
        saturn_r_0+=     0.52921382865*Math.cos( 2.39226219573 +        213.299095438 * t);
        saturn_r_0+=     9.55758135486*Math.cos(           0.0 +                  0.0 * t);

        var saturn_r_1 = 0.0;
        saturn_r_1+=     0.00012892843*Math.cos(  5.9432943302 +       433.7117378768 * t);
        saturn_r_1+=     0.00013876849*Math.cos( 0.75884928866 +       199.0720014364 * t);
        saturn_r_1+=     0.00018839544*Math.cos( 1.60818334043 +       110.2063212194 * t);
        saturn_r_1+=     0.00019952564*Math.cos(  1.1756060613 +       419.4846438752 * t);
        saturn_r_1+=     0.00020928426*Math.cos( 5.09244947411 +        639.897286314 * t);
        saturn_r_1+=     0.00049621208*Math.cos(  6.0174427982 +       103.0927742186 * t);
        saturn_r_1+=     0.00143891146*Math.cos( 1.40744822888 +         7.1135470008 * t);
        saturn_r_1+=     0.00186261486*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_r_1+=     0.00188491195*Math.cos( 0.47215589652 +       220.4126424388 * t);
        saturn_r_1+=     0.00341394029*Math.cos( 5.79635741658 +        426.598190876 * t);
        saturn_r_1+=     0.00506577242*Math.cos( 0.71114625261 +       206.1855484372 * t);
        saturn_r_1+=      0.0618298134*Math.cos(  0.2584351148 +        213.299095438 * t);
        saturn_r_1=saturn_r_1*t;

        var saturn_r_2 = 0.0;
        saturn_r_2+=     0.00029645766*Math.cos( 5.96309886479 +         7.1135470008 * t);
        saturn_r_2+=     0.00043220783*Math.cos( 3.86941044212 +        426.598190876 * t);
        saturn_r_2+=     0.00049766872*Math.cos( 4.97167777235 +       220.4126424388 * t);
        saturn_r_2+=     0.00071922498*Math.cos(  2.5007006993 +       206.1855484372 * t);
        saturn_r_2+=     0.00436902572*Math.cos( 4.78671677509 +        213.299095438 * t);
        saturn_r_2=saturn_r_2*t*t;

        var saturn_r_3 = 0.0;
        saturn_r_3+=     0.00020315239*Math.cos( 3.02186068237 +        213.299095438 * t);
        saturn_r_3=saturn_r_3*t*t*t;

        return saturn_r_3+saturn_r_2+saturn_r_1+saturn_r_0;
    }

    @JvmStatic private fun uranus_b(t: Double): Double {
        var uranus_b_0 = 0.0;
        uranus_b_0+=     0.00061601196*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_b_0+=       0.000623414*Math.cos( 5.08111189648 +       149.5631971346 * t);
        uranus_b_0+=     0.01346277648*Math.cos( 2.61877810547 +        74.7815985673 * t);

        var uranus_b_1 = 0.0;
        uranus_b_1+=     0.00034101978*Math.cos( 0.01321929936 +        74.7815985673 * t);
        uranus_b_1=uranus_b_1*t;

        return uranus_b_1+uranus_b_0;
    }

    @JvmStatic private fun uranus_l(t: Double): Double {
        var uranus_l_0 = 0.0;
        uranus_l_0+=      0.0001099791*Math.cos( 0.48865004018 +       138.5174968707 * t);
        uranus_l_0+=     0.00011162509*Math.cos(  5.8268179635 +       224.3447957019 * t);
        uranus_l_0+=     0.00014613507*Math.cos( 4.73732166022 +         3.9321532631 * t);
        uranus_l_0+=     0.00017818647*Math.cos( 1.74436930289 +        36.6485629295 * t);
        uranus_l_0+=      0.0002107885*Math.cos( 4.36059339067 +       148.0787244263 * t);
        uranus_l_0+=     0.00025710476*Math.cos( 6.11379840493 +       454.9093665273 * t);
        uranus_l_0+=      0.0002646877*Math.cos( 3.14152083966 +        71.8126531507 * t);
        uranus_l_0+=     0.00061950719*Math.cos( 2.85098872691 +        11.0457002639 * t);
        uranus_l_0+=     0.00061998615*Math.cos( 2.26952066061 +         2.9689454166 * t);
        uranus_l_0+=     0.00068892678*Math.cos( 6.09292483287 +        76.2660712756 * t);
        uranus_l_0+=     0.00070328461*Math.cos( 5.39254450063 +        63.7358983034 * t);
        uranus_l_0+=     0.00272328168*Math.cos( 3.35823706307 +       149.5631971346 * t);
        uranus_l_0+=     0.00365981674*Math.cos( 1.89962179044 +         73.297125859 * t);
        uranus_l_0+=     0.01504247898*Math.cos(  3.6271926092 +         1.4844727083 * t);
        uranus_l_0+=     0.09260408234*Math.cos( 0.89106421507 +        74.7815985673 * t);
        uranus_l_0+=     5.48129294297*Math.cos(           0.0 +                  0.0 * t);

        var uranus_l_1 = 0.0;
        uranus_l_1+=     0.00024456474*Math.cos( 1.71260334156 +         1.4844727083 * t);
        uranus_l_1+=     0.00154332863*Math.cos( 5.24158770553 +        74.7815985673 * t);
        uranus_l_1+=     74.7815986091*Math.cos(           0.0 +                  0.0 * t);
        uranus_l_1=uranus_l_1*t;

        return uranus_l_1+uranus_l_0;
    }

    @JvmStatic private fun uranus_r(t: Double): Double {
        var uranus_r_0 = 0.0;
        uranus_r_0+=     0.00010792498*Math.cos( 1.42106296264 +        213.299095438 * t);
        uranus_r_0+=      0.0001149468*Math.cos( 0.43772043395 +        65.2203710117 * t);
        uranus_r_0+=     0.00011695693*Math.cos( 3.29824190199 +         3.9321532631 * t);
        uranus_r_0+=     0.00011852959*Math.cos( 0.99344161196 +        52.6901980395 * t);
        uranus_r_0+=     0.00011959076*Math.cos(  1.7504339214 +       984.6003316219 * t);
        uranus_r_0+=     0.00012328114*Math.cos( 5.96037276805 +       127.4717966068 * t);
        uranus_r_0+=     0.00012896452*Math.cos( 2.62154084288 +       111.4301614968 * t);
        uranus_r_0+=     0.00014701666*Math.cos( 4.90434516516 +       108.4612160802 * t);
        uranus_r_0+=     0.00015502375*Math.cos( 5.35405396163 +        38.1330356378 * t);
        uranus_r_0+=       0.000179013*Math.cos( 0.55455066863 +         2.9689454166 * t);
        uranus_r_0+=     0.00020471591*Math.cos( 1.55587964879 +       202.2533951741 * t);
        uranus_r_0+=     0.00020473534*Math.cos( 2.79640244248 +        70.3281804424 * t);
        uranus_r_0+=     0.00022637073*Math.cos( 0.72518687029 +       529.6909650946 * t);
        uranus_r_0+=     0.00025620756*Math.cos( 5.25656086672 +         380.12776796 * t);
        uranus_r_0+=      0.0002578588*Math.cos(  3.7853770987 +        85.8272988312 * t);
        uranus_r_0+=     0.00029156413*Math.cos(   3.180563367 +        77.7505439839 * t);
        uranus_r_0+=     0.00030348723*Math.cos( 0.70100838798 +       151.0476698429 * t);
        uranus_r_0+=     0.00036755274*Math.cos( 3.88649278513 +        146.594251718 * t);
        uranus_r_0+=     0.00039009723*Math.cos( 1.66971401684 +        70.8494453042 * t);
        uranus_r_0+=     0.00039025624*Math.cos( 3.36234773834 +       277.0349937414 * t);
        uranus_r_0+=     0.00046677296*Math.cos( 1.39976401694 +        35.1640902212 * t);
        uranus_r_0+=     0.00071424548*Math.cos( 4.24509236074 +       224.3447957019 * t);
        uranus_r_0+=     0.00089806014*Math.cos( 3.66105364565 +       109.9456887885 * t);
        uranus_r_0+=     0.00093192405*Math.cos( 0.17437220467 +        36.6485629295 * t);
        uranus_r_0+=     0.00143706183*Math.cos( 1.38368544947 +        11.0457002639 * t);
        uranus_r_0+=     0.00161858838*Math.cos( 2.79137786799 +       148.0787244263 * t);
        uranus_r_0+=     0.00190522303*Math.cos( 1.99809394714 +         1.4844727083 * t);
        uranus_r_0+=     0.00243509114*Math.cos( 1.57086606044 +        71.8126531507 * t);
        uranus_r_0+=     0.00338525369*Math.cos( 1.58002770318 +       138.5174968707 * t);
        uranus_r_0+=     0.00496404167*Math.cos( 1.40139935333 +       454.9093665273 * t);
        uranus_r_0+=     0.00602247865*Math.cos( 3.86003823674 +        63.7358983034 * t);
        uranus_r_0+=      0.0064932241*Math.cos( 4.52247285911 +        76.2660712756 * t);
        uranus_r_0+=      0.0205565386*Math.cos(  1.7829515933 +       149.5631971346 * t);
        uranus_r_0+=     0.03440836062*Math.cos( 0.32836099706 +         73.297125859 * t);
        uranus_r_0+=     0.88784984413*Math.cos( 5.60377527014 +        74.7815985673 * t);
        uranus_r_0+=    19.21264847206*Math.cos(           0.0 +                  0.0 * t);

        var uranus_r_1 = 0.0;
        uranus_r_1+=     0.00011405056*Math.cos( 0.01849738017 +        70.8494453042 * t);
        uranus_r_1+=     0.00020857554*Math.cos(  5.2462584896 +        11.0457002639 * t);
        uranus_r_1+=     0.00021468362*Math.cos( 2.60175716374 +        76.2660712756 * t);
        uranus_r_1+=     0.00024059369*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_r_1+=      0.0006862716*Math.cos( 6.13411179902 +       149.5631971346 * t);
        uranus_r_1+=     0.00071212143*Math.cos( 6.22600975161 +        63.7358983034 * t);
        uranus_r_1+=     0.01479896629*Math.cos( 3.67205697578 +        74.7815985673 * t);
        uranus_r_1=uranus_r_1*t;

        var uranus_r_2 = 0.0;
        uranus_r_2+=     0.00022439899*Math.cos( 0.69953310903 +        74.7815985673 * t);
        uranus_r_2=uranus_r_2*t*t;

        return uranus_r_2+uranus_r_1+uranus_r_0;
    }

    @JvmStatic private fun venus_b(t: Double): Double {
        var venus_b_0 = 0.0;
        venus_b_0+=     0.00032814918*Math.cos( 3.14159265359 +                  0.0 * t);
        venus_b_0+=     0.00040107978*Math.cos( 1.14737178112 +      20426.571092422 * t);
        venus_b_0+=     0.05923638472*Math.cos( 0.26702775812 +      10213.285546211 * t);

        var venus_b_1 = 0.0;
        venus_b_1+=     0.00287821243*Math.cos( 1.88964962838 +      10213.285546211 * t);
        venus_b_1=venus_b_1*t;

        var venus_b_2 = 0.0;
        venus_b_2+=     0.00012657745*Math.cos( 3.34796457029 +      10213.285546211 * t);
        venus_b_2=venus_b_2*t*t;

        return venus_b_2+venus_b_1+venus_b_0;
    }

    @JvmStatic private fun venus_l(t: Double): Double {
        var venus_l_0 = 0.0;
        venus_l_0+=     0.00089891645*Math.cos( 5.30650047764 +      20426.571092422 * t);
        venus_l_0+=     0.01353968419*Math.cos( 5.59313319619 +      10213.285546211 * t);
        venus_l_0+=     3.17614666774*Math.cos(           0.0 +                  0.0 * t);

        var venus_l_1 = 0.0;
        venus_l_1+=     0.00095617813*Math.cos(  2.4640651111 +      10213.285546211 * t);
        venus_l_1+= 10213.28554621638*Math.cos(           0.0 +                  0.0 * t);
        venus_l_1=venus_l_1*t;

        return venus_l_1+venus_l_0;
    }

    @JvmStatic private fun venus_r(t: Double): Double {
        var venus_r_0 = 0.0;
        venus_r_0+=     0.00489824182*Math.cos( 4.02151831717 +      10213.285546211 * t);
        venus_r_0+=     0.72334820891*Math.cos(           0.0 +                  0.0 * t);

        var venus_r_1 = 0.0;
        venus_r_1+=     0.00034551041*Math.cos( 0.89198706276 +      10213.285546211 * t);
        venus_r_1=venus_r_1*t;

        return venus_r_1+venus_r_0;
    }

}
