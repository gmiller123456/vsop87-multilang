//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

object VSOP87E_Micro{
    @JvmStatic fun getEarth(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=earth_x(t);
        temp[1]=earth_y(t);
        temp[2]=earth_z(t);
        return temp;
    }

    @JvmStatic fun getJupiter(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=jupiter_x(t);
        temp[1]=jupiter_y(t);
        temp[2]=jupiter_z(t);
        return temp;
    }

    @JvmStatic fun getMars(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=mars_x(t);
        temp[1]=mars_y(t);
        temp[2]=mars_z(t);
        return temp;
    }

    @JvmStatic fun getMercury(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=mercury_x(t);
        temp[1]=mercury_y(t);
        temp[2]=mercury_z(t);
        return temp;
    }

    @JvmStatic fun getNeptune(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=neptune_x(t);
        temp[1]=neptune_y(t);
        temp[2]=neptune_z(t);
        return temp;
    }

    @JvmStatic fun getSaturn(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=saturn_x(t);
        temp[1]=saturn_y(t);
        temp[2]=saturn_z(t);
        return temp;
    }

    @JvmStatic fun getSun(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=sun_x(t);
        temp[1]=sun_y(t);
        temp[2]=sun_z(t);
        return temp;
    }

    @JvmStatic fun getUranus(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=uranus_x(t);
        temp[1]=uranus_y(t);
        temp[2]=uranus_z(t);
        return temp;
    }

    @JvmStatic fun getVenus(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=venus_x(t);
        temp[1]=venus_y(t);
        temp[2]=venus_z(t);
        return temp;
    }

    @JvmStatic private fun earth_x(t: Double): Double {
        var earth_x_0 = 0.0;
        earth_x_0+=     0.00010466596*Math.cos( 1.66722645223 +     18849.2275499742 * t);
        earth_x_0+=     0.00011821467*Math.cos( 4.04599151293 +      1059.3819301892 * t);
        earth_x_0+=     0.00083789104*Math.cos( 2.33967726393 +        74.7815985673 * t);
        earth_x_0+=      0.0015543422*Math.cos( 2.17052065758 +        38.1330356378 * t);
        earth_x_0+=     0.00271650686*Math.cos( 4.01601440281 +        213.299095438 * t);
        earth_x_0+=     0.00493120585*Math.cos( 3.74115834452 +       529.6909650946 * t);
        earth_x_0+=     0.00590518455*Math.cos(           0.0 +                  0.0 * t);
        earth_x_0+=     0.00835254761*Math.cos( 1.71034539458 +     12566.1516999828 * t);
        earth_x_0+=     0.99982624851*Math.cos( 1.75348568475 +      6283.0758499914 * t);

        var earth_x_1 = 0.0;
        earth_x_1+=          0.000515*Math.cos( 6.00266267204 +     12566.1516999828 * t);
        earth_x_1+=     0.00122106982*Math.cos(           0.0 +                  0.0 * t);
        earth_x_1=earth_x_1*t;

        return earth_x_1+earth_x_0;
    }

    @JvmStatic private fun earth_y(t: Double): Double {
        var earth_y_0 = 0.0;
        earth_y_0+=     0.00010466933*Math.cos( 0.09641690558 +     18849.2275499742 * t);
        earth_y_0+=     0.00011819755*Math.cos( 2.47524448851 +      1059.3819301892 * t);
        earth_y_0+=      0.0008375191*Math.cos( 0.76880010707 +        74.7815985673 * t);
        earth_y_0+=     0.00155442849*Math.cos( 0.59927021065 +        38.1330356378 * t);
        earth_y_0+=     0.00272033033*Math.cos( 2.44443635549 +        213.299095438 * t);
        earth_y_0+=     0.00492966037*Math.cos(   2.170524584 +       529.6909650946 * t);
        earth_y_0+=     0.00835289774*Math.cos( 0.13952879005 +     12566.1516999828 * t);
        earth_y_0+=     0.02408829501*Math.cos( 3.14159265359 +                  0.0 * t);
        earth_y_0+=     0.99988907017*Math.cos( 0.18265890456 +      6283.0758499914 * t);

        var earth_y_1 = 0.0;
        earth_y_1+=     0.00051506453*Math.cos( 4.43180499286 +     12566.1516999828 * t);
        earth_y_1+=     0.00093052441*Math.cos(           0.0 +                  0.0 * t);
        earth_y_1=earth_y_1*t;

        return earth_y_1+earth_y_0;
    }

    @JvmStatic private fun earth_z(t: Double): Double {
        var earth_z_0 = 0.0;
        earth_z_0+=     0.00011270511*Math.cos( 0.41685732455 +       529.6909650946 * t);
        earth_z_0+=     0.00011810174*Math.cos( 0.46078312048 +        213.299095438 * t);

        var earth_z_1 = 0.0;
        earth_z_1+=      0.0022782175*Math.cos( 3.41372504278 +      6283.0758499914 * t);
        earth_z_1=earth_z_1*t;

        return earth_z_1+earth_z_0;
    }

    @JvmStatic private fun jupiter_x(t: Double): Double {
        var jupiter_x_0 = 0.0;
        jupiter_x_0+=     0.00011412363*Math.cos(  3.4814594322 +       543.9180590962 * t);
        jupiter_x_0+=     0.00011984824*Math.cos( 0.58568596255 +       533.6231183577 * t);
        jupiter_x_0+=     0.00012143698*Math.cos( 3.75229920148 +       525.7588118315 * t);
        jupiter_x_0+=     0.00014193776*Math.cos( 2.07763165706 +       742.9900605326 * t);
        jupiter_x_0+=     0.00015178545*Math.cos(  6.2587881143 +       735.8765135318 * t);
        jupiter_x_0+=     0.00016086488*Math.cos( 0.87974686945 +        515.463871093 * t);
        jupiter_x_0+=     0.00016318258*Math.cos( 1.94286700529 +       316.3918696566 * t);
        jupiter_x_0+=     0.00019708639*Math.cos( 1.64891620821 +      2118.7638603784 * t);
        jupiter_x_0+=     0.00026609536*Math.cos( 4.85102664902 +       323.5054166574 * t);
        jupiter_x_0+=     0.00029905661*Math.cos( 2.93170826549 +       206.1855484372 * t);
        jupiter_x_0+=     0.00047092829*Math.cos( 1.43942906349 +       419.4846438752 * t);
        jupiter_x_0+=     0.00059429203*Math.cos( 4.45768709661 +       949.1756089698 * t);
        jupiter_x_0+=     0.00068217918*Math.cos( 3.44053291909 +       846.0828347512 * t);
        jupiter_x_0+=     0.00072025988*Math.cos( 3.96117200382 +        1066.49547719 * t);
        jupiter_x_0+=     0.00082181886*Math.cos( 2.33944503932 +        74.7815985673 * t);
        jupiter_x_0+=     0.00103396684*Math.cos( 6.19327175097 +      1052.2683831884 * t);
        jupiter_x_0+=     0.00114092461*Math.cos( 0.01567031739 +      1162.4747044078 * t);
        jupiter_x_0+=     0.00137575946*Math.cos(  4.0139949837 +        213.299095438 * t);
        jupiter_x_0+=     0.00144750651*Math.cos( 5.55980048541 +       632.7837393132 * t);
        jupiter_x_0+=      0.0015078374*Math.cos(  6.1183167133 +       110.2063212194 * t);
        jupiter_x_0+=     0.00154896097*Math.cos( 2.17051189575 +        38.1330356378 * t);
        jupiter_x_0+=     0.00192562451*Math.cos( 4.98733787115 +        426.598190876 * t);
        jupiter_x_0+=     0.00302068886*Math.cos( 5.17370377723 +         7.1135470008 * t);
        jupiter_x_0+=     0.00385749947*Math.cos( 2.01222596811 +       103.0927742186 * t);
        jupiter_x_0+=     0.00457316096*Math.cos( 1.29883699143 +      1589.0728952838 * t);
        jupiter_x_0+=     0.01474818211*Math.cos( 3.61736901402 +       536.8045120954 * t);
        jupiter_x_0+=     0.01499237862*Math.cos( 0.73175554601 +       522.5774180938 * t);
        jupiter_x_0+=     0.12581924842*Math.cos( 0.94911581432 +      1059.3819301892 * t);
        jupiter_x_0+=      0.3663326807*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_x_0+=     5.19167797375*Math.cos( 0.59945079482 +       529.6909650946 * t);

        var jupiter_x_1 = 0.0;
        jupiter_x_1+=     0.00012877132*Math.cos( 2.57490337554 +        515.463871093 * t);
        jupiter_x_1+=     0.00013566605*Math.cos( 0.30040958696 +       632.7837393132 * t);
        jupiter_x_1+=     0.00017292154*Math.cos( 3.99214003946 +        426.598190876 * t);
        jupiter_x_1+=     0.00021258131*Math.cos( 4.36563858679 +       110.2063212194 * t);
        jupiter_x_1+=     0.00031204139*Math.cos( 2.34698443027 +        1066.49547719 * t);
        jupiter_x_1+=     0.00032477578*Math.cos( 1.74648870966 +      1052.2683831884 * t);
        jupiter_x_1+=     0.00033859106*Math.cos( 4.10112469499 +       529.6909650946 * t);
        jupiter_x_1+=     0.00046157824*Math.cos( 0.45714213541 +      1589.0728952838 * t);
        jupiter_x_1+=     0.00081798277*Math.cos( 3.46668967473 +         7.1135470008 * t);
        jupiter_x_1+=     0.00588595541*Math.cos( 1.91556289228 +       536.8045120954 * t);
        jupiter_x_1+=     0.00599147916*Math.cos(  2.4299683255 +       522.5774180938 * t);
        jupiter_x_1+=     0.00634691138*Math.cos( 0.10662162351 +      1059.3819301892 * t);
        jupiter_x_1+=     0.00883685325*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_x_1=jupiter_x_1*t;

        var jupiter_x_2 = 0.0;
        jupiter_x_2+=     0.00011437051*Math.cos( 1.72922178247 +         7.1135470008 * t);
        jupiter_x_2+=     0.00041371381*Math.cos( 5.12291606259 +      1059.3819301892 * t);
        jupiter_x_2+=     0.00077611336*Math.cos( 5.29776152037 +       529.6909650946 * t);
        jupiter_x_2+=     0.00085400287*Math.cos(           0.0 +                  0.0 * t);
        jupiter_x_2+=     0.00121405454*Math.cos( 0.21155087534 +       536.8045120954 * t);
        jupiter_x_2+=     0.00123746423*Math.cos( 4.13563340107 +       522.5774180938 * t);
        jupiter_x_2=jupiter_x_2*t*t;

        var jupiter_x_3 = 0.0;
        jupiter_x_3+=     0.00016697614*Math.cos( 4.77458774773 +       536.8045120954 * t);
        jupiter_x_3+=     0.00017055031*Math.cos( 5.86133054086 +       522.5774180938 * t);
        jupiter_x_3=jupiter_x_3*t*t*t;

        return jupiter_x_3+jupiter_x_2+jupiter_x_1+jupiter_x_0;
    }

    @JvmStatic private fun jupiter_y(t: Double): Double {
        var jupiter_y_0 = 0.0;
        jupiter_y_0+=      0.0001140902*Math.cos( 1.91089175916 +       543.9180590962 * t);
        jupiter_y_0+=      0.0001197744*Math.cos( 5.29687559056 +       533.6231183577 * t);
        jupiter_y_0+=     0.00012141842*Math.cos( 2.18151948736 +       525.7588118315 * t);
        jupiter_y_0+=     0.00014591238*Math.cos(  0.4774986561 +       742.9900605326 * t);
        jupiter_y_0+=     0.00016340182*Math.cos( 5.56996543941 +        515.463871093 * t);
        jupiter_y_0+=     0.00018475985*Math.cos( 0.38014924174 +       316.3918696566 * t);
        jupiter_y_0+=     0.00019708579*Math.cos( 0.07818533602 +      2118.7638603784 * t);
        jupiter_y_0+=     0.00020859553*Math.cos( 3.79339751809 +       735.8765135318 * t);
        jupiter_y_0+=     0.00026615785*Math.cos( 3.28135958246 +       323.5054166574 * t);
        jupiter_y_0+=     0.00027182574*Math.cos( 3.86962082273 +       419.4846438752 * t);
        jupiter_y_0+=     0.00030597479*Math.cos( 4.58059597562 +       206.1855484372 * t);
        jupiter_y_0+=     0.00058995131*Math.cos( 2.89529666872 +       949.1756089698 * t);
        jupiter_y_0+=     0.00068308433*Math.cos( 1.86538762629 +       846.0828347512 * t);
        jupiter_y_0+=     0.00072021597*Math.cos( 2.39048430255 +        1066.49547719 * t);
        jupiter_y_0+=     0.00082109296*Math.cos( 0.76861586597 +        74.7815985673 * t);
        jupiter_y_0+=     0.00101901831*Math.cos(  4.5759216528 +      1052.2683831884 * t);
        jupiter_y_0+=     0.00113934096*Math.cos( 4.72982346991 +      1162.4747044078 * t);
        jupiter_y_0+=     0.00139367298*Math.cos( 4.00075739657 +       632.7837393132 * t);
        jupiter_y_0+=      0.0013965505*Math.cos( 2.41039954154 +        213.299095438 * t);
        jupiter_y_0+=     0.00146192922*Math.cos( 4.62080103783 +       110.2063212194 * t);
        jupiter_y_0+=     0.00154904248*Math.cos( 0.59924790507 +        38.1330356378 * t);
        jupiter_y_0+=     0.00190850034*Math.cos( 3.41807324121 +        426.598190876 * t);
        jupiter_y_0+=     0.00301069256*Math.cos( 3.60943303554 +         7.1135470008 * t);
        jupiter_y_0+=     0.00378016915*Math.cos( 3.53013675622 +       103.0927742186 * t);
        jupiter_y_0+=     0.00457314174*Math.cos( 6.01129093508 +      1589.0728952838 * t);
        jupiter_y_0+=     0.01474403395*Math.cos( 2.04679547637 +       536.8045120954 * t);
        jupiter_y_0+=     0.01506838468*Math.cos( 5.43934599781 +       522.5774180938 * t);
        jupiter_y_0+=     0.09329801081*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_y_0+=     0.12580850775*Math.cos( 5.66160225641 +      1059.3819301892 * t);
        jupiter_y_0+=     5.19024510371*Math.cos( 5.31203160043 +       529.6909650946 * t);

        var jupiter_y_1 = 0.0;
        jupiter_y_1+=     0.00013022204*Math.cos( 0.98978959368 +        515.463871093 * t);
        jupiter_y_1+=     0.00013690691*Math.cos( 5.02101628562 +       632.7837393132 * t);
        jupiter_y_1+=     0.00016865586*Math.cos( 2.45297644533 +        426.598190876 * t);
        jupiter_y_1+=     0.00019475766*Math.cos( 3.00913152396 +       110.2063212194 * t);
        jupiter_y_1+=     0.00031201535*Math.cos( 0.77624038457 +        1066.49547719 * t);
        jupiter_y_1+=     0.00032472443*Math.cos( 0.17640771395 +      1052.2683831884 * t);
        jupiter_y_1+=     0.00046150068*Math.cos( 5.16955995419 +      1589.0728952838 * t);
        jupiter_y_1+=     0.00046843519*Math.cos( 1.91294033052 +       529.6909650946 * t);
        jupiter_y_1+=     0.00081289939*Math.cos( 1.90910271853 +         7.1135470008 * t);
        jupiter_y_1+=       0.005883672*Math.cos( 0.34491553018 +       536.8045120954 * t);
        jupiter_y_1+=      0.0060058715*Math.cos( 0.85811137383 +       522.5774180938 * t);
        jupiter_y_1+=     0.00634254247*Math.cos( 4.81903195356 +      1059.3819301892 * t);
        jupiter_y_1+=     0.01694792137*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_y_1=jupiter_y_1*t;

        var jupiter_y_2 = 0.0;
        jupiter_y_2+=     0.00011292133*Math.cos( 0.18554488524 +         7.1135470008 * t);
        jupiter_y_2+=     0.00041318153*Math.cos( 3.55228415274 +      1059.3819301892 * t);
        jupiter_y_2+=     0.00076450198*Math.cos( 3.75913373191 +       529.6909650946 * t);
        jupiter_y_2+=     0.00076998857*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_y_2+=     0.00121340211*Math.cos( 4.92398747363 +       536.8045120954 * t);
        jupiter_y_2+=     0.00123914193*Math.cos( 2.56495551373 +       522.5774180938 * t);
        jupiter_y_2=jupiter_y_2*t*t;

        var jupiter_y_3 = 0.0;
        jupiter_y_3+=      0.0001668543*Math.cos( 3.20365723177 +       536.8045120954 * t);
        jupiter_y_3+=     0.00017069216*Math.cos( 4.29096907367 +       522.5774180938 * t);
        jupiter_y_3=jupiter_y_3*t*t*t;

        return jupiter_y_3+jupiter_y_2+jupiter_y_1+jupiter_y_0;
    }

    @JvmStatic private fun jupiter_z(t: Double): Double {
        var jupiter_z_0 = 0.0;
        jupiter_z_0+=     0.00010406225*Math.cos( 4.25764578777 +      1589.0728952838 * t);
        jupiter_z_0+=     0.00033263796*Math.cos(  0.3029697193 +       536.8045120954 * t);
        jupiter_z_0+=     0.00042347799*Math.cos( 3.60144639424 +       522.5774180938 * t);
        jupiter_z_0+=     0.00286288759*Math.cos( 3.90812239092 +      1059.3819301892 * t);
        jupiter_z_0+=     0.00857879296*Math.cos(           0.0 +                  0.0 * t);
        jupiter_z_0+=     0.11811822789*Math.cos( 3.55844641987 +       529.6909650946 * t);

        var jupiter_z_1 = 0.0;
        jupiter_z_1+=     0.00012718197*Math.cos( 5.45536889012 +       522.5774180938 * t);
        jupiter_z_1+=     0.00014411207*Math.cos( 4.85400100506 +       536.8045120954 * t);
        jupiter_z_1+=     0.00015608009*Math.cos(           0.0 +                  0.0 * t);
        jupiter_z_1+=     0.00020287968*Math.cos( 2.59878263946 +      1059.3819301892 * t);
        jupiter_z_1+=     0.00406683941*Math.cos( 1.52699356726 +       529.6909650946 * t);
        jupiter_z_1=jupiter_z_1*t;

        var jupiter_z_2 = 0.0;
        jupiter_z_2+=     0.00028608011*Math.cos( 3.01374191263 +       529.6909650946 * t);
        jupiter_z_2=jupiter_z_2*t*t;

        return jupiter_z_2+jupiter_z_1+jupiter_z_0;
    }

    @JvmStatic private fun mars_x(t: Double): Double {
        var mars_x_0 = 0.0;
        mars_x_0+=     0.00021041626*Math.cos( 1.17895619474 +      3344.1355450488 * t);
        mars_x_0+=     0.00021067199*Math.cos( 1.80435656154 +      3337.0893083508 * t);
        mars_x_0+=     0.00021794152*Math.cos( 4.45100162839 +      1059.3819301892 * t);
        mars_x_0+=     0.00040938237*Math.cos( 0.93473307419 +     13362.4497067992 * t);
        mars_x_0+=      0.0008377764*Math.cos( 2.33969868905 +        74.7815985673 * t);
        mars_x_0+=     0.00155429009*Math.cos( 2.17051900894 +        38.1330356378 * t);
        mars_x_0+=     0.00271094292*Math.cos( 4.01586959956 +        213.299095438 * t);
        mars_x_0+=     0.00482151285*Math.cos( 3.74021439144 +       529.6909650946 * t);
        mars_x_0+=     0.00494196754*Math.cos( 0.59669127752 +     10021.8372800994 * t);
        mars_x_0+=     0.07070917372*Math.cos( 0.25870338552 +      6681.2248533996 * t);
        mars_x_0+=     0.19473570996*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_x_0+=     1.51769887405*Math.cos( 6.20403346548 +      3340.6124266998 * t);

        var mars_x_1 = 0.0;
        mars_x_1+=     0.00020467294*Math.cos( 5.57051812369 +      3340.6124266998 * t);
        mars_x_1+=     0.00077184951*Math.cos( 5.43315636209 +     10021.8372800994 * t);
        mars_x_1+=     0.00552437771*Math.cos( 5.09565872891 +      6681.2248533996 * t);
        mars_x_1+=     0.00862737448*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_x_1=mars_x_1*t;

        var mars_x_2 = 0.0;
        mars_x_2+=     0.00022122521*Math.cos( 3.54372113272 +      6681.2248533996 * t);
        mars_x_2+=     0.00056368724*Math.cos(           0.0 +                  0.0 * t);
        mars_x_2=mars_x_2*t*t;

        return mars_x_2+mars_x_1+mars_x_0;
    }

    @JvmStatic private fun mars_y(t: Double): Double {
        var mars_y_0 = 0.0;
        mars_y_0+=     0.00021012921*Math.cos( 5.89022773653 +      3344.1355450488 * t);
        mars_y_0+=     0.00021036784*Math.cos( 0.23240270955 +      3337.0893083508 * t);
        mars_y_0+=     0.00021795361*Math.cos( 2.88000673227 +      1059.3819301892 * t);
        mars_y_0+=     0.00040917422*Math.cos( 5.64698263703 +     13362.4497067992 * t);
        mars_y_0+=     0.00083738369*Math.cos( 0.76880567376 +        74.7815985673 * t);
        mars_y_0+=     0.00155437832*Math.cos( 0.59926749768 +        38.1330356378 * t);
        mars_y_0+=     0.00271492455*Math.cos( 2.44409624683 +        213.299095438 * t);
        mars_y_0+=     0.00482218424*Math.cos( 2.16962356915 +       529.6909650946 * t);
        mars_y_0+=     0.00493872689*Math.cos( 5.30877806678 +     10021.8372800994 * t);
        mars_y_0+=     0.07064547959*Math.cos( 4.97051892898 +      6681.2248533996 * t);
        mars_y_0+=     0.08689350637*Math.cos(           0.0 +                  0.0 * t);
        mars_y_0+=     1.51558927367*Math.cos( 4.63212206588 +      3340.6124266998 * t);

        var mars_y_1 = 0.0;
        mars_y_1+=     0.00037310479*Math.cos( 1.16016958445 +      3340.6124266998 * t);
        mars_y_1+=     0.00077091888*Math.cos( 3.86082685753 +     10021.8372800994 * t);
        mars_y_1+=     0.00551063576*Math.cos( 3.52128320402 +      6681.2248533996 * t);
        mars_y_1+=     0.01427318093*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_y_1=mars_y_1*t;

        var mars_y_2 = 0.0;
        mars_y_2+=     0.00021950751*Math.cos( 1.96291594946 +      6681.2248533996 * t);
        mars_y_2+=     0.00035452579*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_y_2=mars_y_2*t*t;

        return mars_y_2+mars_y_1+mars_y_0;
    }

    @JvmStatic private fun mars_z(t: Double): Double {
        var mars_z_0 = 0.0;
        mars_z_0+=     0.00011012894*Math.cos(  0.3930742899 +       529.6909650946 * t);
        mars_z_0+=     0.00011803129*Math.cos( 0.45922638235 +        213.299095438 * t);
        mars_z_0+=     0.00015958402*Math.cos( 4.44367058261 +     10021.8372800994 * t);
        mars_z_0+=     0.00228333831*Math.cos( 4.10544022266 +      6681.2248533996 * t);
        mars_z_0+=     0.00659516885*Math.cos(           0.0 +                  0.0 * t);
        mars_z_0+=     0.04901205639*Math.cos( 3.76712324293 +      3340.6124266998 * t);

        var mars_z_1 = 0.0;
        mars_z_1+=     0.00047797013*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_z_1+=     0.00331842851*Math.cos( 6.05027773492 +      3340.6124266998 * t);
        mars_z_1=mars_z_1*t;

        var mars_z_2 = 0.0;
        mars_z_2+=     0.00013705355*Math.cos( 1.04212852598 +      3340.6124266998 * t);
        mars_z_2=mars_z_2*t*t;

        return mars_z_2+mars_z_1+mars_z_0;
    }

    @JvmStatic private fun mercury_x(t: Double): Double {
        var mercury_x_0 = 0.0;
        mercury_x_0+=     0.00012216168*Math.cos( 4.05786119279 +      1059.3819301892 * t);
        mercury_x_0+=     0.00021011726*Math.cos( 4.03469353923 +   130439.51570787099 * t);
        mercury_x_0+=     0.00083792888*Math.cos(  2.3396763991 +        74.7815985673 * t);
        mercury_x_0+=     0.00105716677*Math.cos( 0.98379033182 +   104351.61256629678 * t);
        mercury_x_0+=     0.00155435621*Math.cos( 2.17052060921 +        38.1330356378 * t);
        mercury_x_0+=      0.0027179749*Math.cos( 4.01600769847 +        213.299095438 * t);
        mercury_x_0+=     0.00495586029*Math.cos( 3.74115422358 +       529.6909650946 * t);
        mercury_x_0+=     0.00584261236*Math.cos( 4.21599394757 +    78263.70942472259 * t);
        mercury_x_0+=     0.02596241714*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_x_0+=     0.03825746037*Math.cos( 1.16485604343 +     52175.8062831484 * t);
        mercury_x_0+=     0.37546285495*Math.cos( 4.39651506942 +     26087.9031415742 * t);

        var mercury_x_1 = 0.0;
        mercury_x_1+=     0.00011992887*Math.cos( 5.81575112963 +     26087.9031415742 * t);
        mercury_x_1+=     0.00032315996*Math.cos( 2.68247273347 +    78263.70942472259 * t);
        mercury_x_1+=     0.00105289001*Math.cos( 5.91600475006 +     52175.8062831484 * t);
        mercury_x_1+=      0.0031755196*Math.cos(           0.0 +                  0.0 * t);
        mercury_x_1=mercury_x_1*t;

        return mercury_x_1+mercury_x_0;
    }

    @JvmStatic private fun mercury_y(t: Double): Double {
        var mercury_y_0 = 0.0;
        mercury_y_0+=     0.00012216279*Math.cos( 2.48707059837 +      1059.3819301892 * t);
        mercury_y_0+=     0.00021100825*Math.cos( 2.47291315849 +   130439.51570787099 * t);
        mercury_y_0+=     0.00083755636*Math.cos( 0.76879995697 +        74.7815985673 * t);
        mercury_y_0+=     0.00106235475*Math.cos( 5.70550616735 +   104351.61256629678 * t);
        mercury_y_0+=     0.00155444251*Math.cos( 0.59927014783 +        38.1330356378 * t);
        mercury_y_0+=     0.00272177927*Math.cos( 2.44442843667 +        213.299095438 * t);
        mercury_y_0+=     0.00495452148*Math.cos( 2.17050902176 +       529.6909650946 * t);
        mercury_y_0+=     0.00587711171*Math.cos( 2.65498896201 +    78263.70942472259 * t);
        mercury_y_0+=     0.03854667576*Math.cos( 5.88780608961 +     52175.8062831484 * t);
        mercury_y_0+=     0.11592262295*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_y_0+=     0.37953636588*Math.cos( 2.83780617821 +     26087.9031415742 * t);

        var mercury_y_1 = 0.0;
        mercury_y_1+=     0.00011914707*Math.cos(  1.2213998634 +     26087.9031415742 * t);
        mercury_y_1+=     0.00032715349*Math.cos( 1.11763734425 +    78263.70942472259 * t);
        mercury_y_1+=     0.00080645427*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_y_1+=     0.00107803834*Math.cos( 4.34964793883 +     52175.8062831484 * t);
        mercury_y_1=mercury_y_1*t;

        return mercury_y_1+mercury_y_0;
    }

    @JvmStatic private fun mercury_z(t: Double): Double {
        var mercury_z_0 = 0.0;
        mercury_z_0+=     0.00011268745*Math.cos(  0.4166999186 +       529.6909650946 * t);
        mercury_z_0+=     0.00011810801*Math.cos( 0.46073218799 +        213.299095438 * t);
        mercury_z_0+=     0.00012957444*Math.cos(  4.8592203201 +   104351.61256629678 * t);
        mercury_z_0+=     0.00071626383*Math.cos( 1.80894256071 +    78263.70942472259 * t);
        mercury_z_0+=      0.0046917154*Math.cos( 5.04215742764 +     52175.8062831484 * t);
        mercury_z_0+=     0.00709887021*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_z_0+=     0.04607664562*Math.cos( 1.99295081967 +     26087.9031415742 * t);

        var mercury_z_1 = 0.0;
        mercury_z_1+=     0.00057693223*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_z_1+=     0.00108722159*Math.cos( 3.91134750825 +     26087.9031415742 * t);
        mercury_z_1=mercury_z_1*t;

        return mercury_z_1+mercury_z_0;
    }

    @JvmStatic private fun neptune_x(t: Double): Double {
        var neptune_x_0 = 0.0;
        neptune_x_0+=     0.00012614574*Math.cos( 3.57008196751 +       112.9146342051 * t);
        neptune_x_0+=     0.00012743164*Math.cos( 2.73728741519 +       111.4301614968 * t);
        neptune_x_0+=     0.00028887848*Math.cos( 4.78966833702 +        42.5864537627 * t);
        neptune_x_0+=     0.00054713428*Math.cos( 1.55804647862 +        71.8126531507 * t);
        neptune_x_0+=     0.00060811221*Math.cos( 2.62589871314 +        33.6796175129 * t);
        neptune_x_0+=      0.0006903868*Math.cos( 5.83469111908 +         4.4534181249 * t);
        neptune_x_0+=     0.00090960996*Math.cos( 1.68910476933 +       114.3991069134 * t);
        neptune_x_0+=     0.00135901755*Math.cos( 5.54688721933 +        77.7505439839 * t);
        neptune_x_0+=     0.00308146172*Math.cos( 0.39998862713 +         73.297125859 * t);
        neptune_x_0+=     0.00565506338*Math.cos( 5.98964911841 +        41.1019810544 * t);
        neptune_x_0+=     0.00817566529*Math.cos( 0.78180136001 +         2.9689454166 * t);
        neptune_x_0+=     0.00823755467*Math.cos( 1.43221512492 +        35.1640902212 * t);
        neptune_x_0+=     0.00990668211*Math.cos( 5.37690139386 +        74.7815985673 * t);
        neptune_x_0+=     0.02597449604*Math.cos( 1.99590330725 +         1.4844727083 * t);
        neptune_x_0+=      0.1350457827*Math.cos( 3.50075407055 +        76.2660712756 * t);
        neptune_x_0+=     0.14934353052*Math.cos( 1.08499398649 +        39.6175083461 * t);
        neptune_x_0+=     0.15725280871*Math.cos( 0.11319072402 +        36.6485629295 * t);
        neptune_x_0+=     0.27050789973*Math.cos( 3.14159265359 +                  0.0 * t);
        neptune_x_0+=    30.05734568801*Math.cos(  5.3121134003 +        38.1330356378 * t);

        var neptune_x_1 = 0.0;
        neptune_x_1+=     0.00013130617*Math.cos( 5.36424961848 +         2.9689454166 * t);
        neptune_x_1+=     0.00017458926*Math.cos( 4.26349403115 +        41.1019810544 * t);
        neptune_x_1+=     0.00021923572*Math.cos( 3.20156162709 +        35.1640902212 * t);
        neptune_x_1+=     0.00039261522*Math.cos( 3.14159265359 +                  0.0 * t);
        neptune_x_1+=     0.00118382753*Math.cos( 2.88255085978 +        76.2660712756 * t);
        neptune_x_1+=     0.00243112812*Math.cos( 5.46214905602 +        39.6175083461 * t);
        neptune_x_1+=     0.00255827017*Math.cos( 2.01935687782 +        36.6485629295 * t);
        neptune_x_1=neptune_x_1*t;

        return neptune_x_1+neptune_x_0;
    }

    @JvmStatic private fun neptune_y(t: Double): Double {
        var neptune_y_0 = 0.0;
        neptune_y_0+=     0.00012613423*Math.cos( 1.99783010734 +       112.9146342051 * t);
        neptune_y_0+=     0.00012822727*Math.cos( 1.16749515319 +       111.4301614968 * t);
        neptune_y_0+=     0.00020079747*Math.cos( 1.19788749777 +        33.6796175129 * t);
        neptune_y_0+=     0.00028891942*Math.cos( 3.21848982783 +        42.5864537627 * t);
        neptune_y_0+=     0.00068788416*Math.cos( 4.26391987401 +         4.4534181249 * t);
        neptune_y_0+=     0.00090966163*Math.cos( 0.11783850542 +       114.3991069134 * t);
        neptune_y_0+=     0.00135911904*Math.cos( 3.97565894083 +        77.7505439839 * t);
        neptune_y_0+=     0.00305149662*Math.cos( 5.11023952334 +         73.297125859 * t);
        neptune_y_0+=      0.0056554783*Math.cos( 4.41843013268 +        41.1019810544 * t);
        neptune_y_0+=      0.0058216452*Math.cos(  6.1963385998 +        35.1640902212 * t);
        neptune_y_0+=     0.00815165481*Math.cos( 5.49429738442 +         2.9689454166 * t);
        neptune_y_0+=     0.00990408083*Math.cos( 3.80555424385 +        74.7815985673 * t);
        neptune_y_0+=     0.02584389323*Math.cos( 0.42549727257 +         1.4844727083 * t);
        neptune_y_0+=     0.13505308635*Math.cos( 1.92949466968 +        76.2660712756 * t);
        neptune_y_0+=     0.14935398681*Math.cos( 5.79694896309 +        39.6175083461 * t);
        neptune_y_0+=     0.15705776296*Math.cos( 4.82539969469 +        36.6485629295 * t);
        neptune_y_0+=     0.30171988148*Math.cos( 3.14159265359 +                  0.0 * t);
        neptune_y_0+=    30.05900907352*Math.cos( 3.74086294715 +        38.1330356378 * t);

        var neptune_y_1 = 0.0;
        neptune_y_1+=      0.0001299238*Math.cos( 3.79578633002 +         2.9689454166 * t);
        neptune_y_1+=      0.0001746145*Math.cos( 2.69229907252 +        41.1019810544 * t);
        neptune_y_1+=     0.00021935569*Math.cos( 1.63124087146 +        35.1640902212 * t);
        neptune_y_1+=       0.001184118*Math.cos( 1.31131262408 +        76.2660712756 * t);
        neptune_y_1+=     0.00243135236*Math.cos(  3.8909980142 +        39.6175083461 * t);
        neptune_y_1+=     0.00256112241*Math.cos( 0.44757496381 +        36.6485629295 * t);
        neptune_y_1+=     0.00352941377*Math.cos( 3.14159265359 +                  0.0 * t);
        neptune_y_1=neptune_y_1*t;

        return neptune_y_1+neptune_y_0;
    }

    @JvmStatic private fun neptune_z(t: Double): Double {
        var neptune_z_0 = 0.0;
        neptune_z_0+=     0.00016864457*Math.cos( 2.13251137546 +        41.1019810544 * t);
        neptune_z_0+=     0.00025811465*Math.cos(  3.1930392971 +         2.9689454166 * t);
        neptune_z_0+=     0.00030871862*Math.cos( 3.29017492215 +        35.1640902212 * t);
        neptune_z_0+=     0.00032204313*Math.cos( 1.48923465055 +        74.7815985673 * t);
        neptune_z_0+=     0.00084101913*Math.cos( 4.38932612685 +         1.4844727083 * t);
        neptune_z_0+=     0.00417539868*Math.cos(  5.9130887139 +        76.2660712756 * t);
        neptune_z_0+=     0.00451964646*Math.cos( 3.50949727943 +        39.6175083461 * t);
        neptune_z_0+=     0.00474309033*Math.cos( 2.52218768352 +        36.6485629295 * t);
        neptune_z_0+=     0.01244825806*Math.cos(           0.0 +                  0.0 * t);
        neptune_z_0+=     0.92861252357*Math.cos( 1.44103930199 +        38.1330356378 * t);

        var neptune_z_1 = 0.0;
        neptune_z_1+=     0.00154877961*Math.cos( 2.14239038882 +        38.1330356378 * t);
        neptune_z_1=neptune_z_1*t;

        return neptune_z_1+neptune_z_0;
    }

    @JvmStatic private fun saturn_x(t: Double): Double {
        var saturn_x_0 = 0.0;
        saturn_x_0+=     0.00012023054*Math.cos( 5.66372239094 +       351.8165923087 * t);
        saturn_x_0+=      0.0001238976*Math.cos( 4.19747910039 +       490.3340891794 * t);
        saturn_x_0+=     0.00014727416*Math.cos( 4.67982458404 +       277.0349937414 * t);
        saturn_x_0+=     0.00023237024*Math.cos( 0.10474288122 +       149.5631971346 * t);
        saturn_x_0+=     0.00023365871*Math.cos( 5.53492454782 +       647.0108333148 * t);
        saturn_x_0+=     0.00024058786*Math.cos( 5.85571939691 +       522.5774180938 * t);
        saturn_x_0+=     0.00024547484*Math.cos( 4.53150636994 +       210.1177017003 * t);
        saturn_x_0+=      0.0002466993*Math.cos( 5.60389432714 +       415.5524906121 * t);
        saturn_x_0+=        0.00025158*Math.cos( 0.37800583496 +       216.4804891757 * t);
        saturn_x_0+=     0.00025485006*Math.cos( 1.63932503888 +       117.3198682202 * t);
        saturn_x_0+=     0.00031244965*Math.cos(  4.6293031128 +       735.8765135318 * t);
        saturn_x_0+=      0.0003833447*Math.cos( 4.39817733456 +       199.0720014364 * t);
        saturn_x_0+=     0.00044537354*Math.cos( 5.60825622208 +        63.7358983034 * t);
        saturn_x_0+=     0.00045542953*Math.cos(   1.882351964 +        14.2270940016 * t);
        saturn_x_0+=     0.00054006503*Math.cos( 4.90926255487 +        853.196381752 * t);
        saturn_x_0+=     0.00058306839*Math.cos( 2.16048044319 +       224.3447957019 * t);
        saturn_x_0+=     0.00058995712*Math.cos( 2.33042838103 +        74.7815985673 * t);
        saturn_x_0+=     0.00065601455*Math.cos( 2.69726244676 +       202.2533951741 * t);
        saturn_x_0+=     0.00068836111*Math.cos(  4.0178812181 +       217.2312487011 * t);
        saturn_x_0+=     0.00070199356*Math.cos( 0.88789759781 +       209.3669421749 * t);
        saturn_x_0+=     0.00074267111*Math.cos( 2.38212789877 +       632.7837393132 * t);
        saturn_x_0+=       0.000806058*Math.cos( 5.62066478674 +        11.0457002639 * t);
        saturn_x_0+=     0.00083256484*Math.cos( 3.06289145446 +       529.6909650946 * t);
        saturn_x_0+=     0.00083758534*Math.cos( 0.62038891091 +       227.5261894396 * t);
        saturn_x_0+=      0.0009783508*Math.cos( 1.01502366873 +       323.5054166574 * t);
        saturn_x_0+=     0.00149659945*Math.cos( 2.17071100189 +        38.1330356378 * t);
        saturn_x_0+=     0.00372789068*Math.cos( 0.00137750888 +       433.7117378768 * t);
        saturn_x_0+=     0.00509529043*Math.cos( 4.95879639669 +       103.0927742186 * t);
        saturn_x_0+=     0.00716112591*Math.cos( 2.71151505735 +       316.3918696566 * t);
        saturn_x_0+=     0.01097374519*Math.cos( 5.65753938643 +        639.897286314 * t);
        saturn_x_0+=     0.01115372225*Math.cos( 3.15690865182 +       419.4846438752 * t);
        saturn_x_0+=     0.01255113414*Math.cos( 2.17347170552 +       110.2063212194 * t);
        saturn_x_0+=     0.02335961354*Math.cos( 2.02227905783 +         7.1135470008 * t);
        saturn_x_0+=     0.04274172066*Math.cos(           0.0 +                  0.0 * t);
        saturn_x_0+=     0.06622371284*Math.cos( 0.75094738122 +       220.4126424388 * t);
        saturn_x_0+=     0.06758489145*Math.cos( 4.16767544586 +       206.1855484372 * t);
        saturn_x_0+=     0.26404799161*Math.cos( 0.12391580771 +        426.598190876 * t);
        saturn_x_0+=     9.51366533422*Math.cos(  0.8744138065 +        213.299095438 * t);

        var saturn_x_1 = 0.0;
        saturn_x_1+=     0.00011058978*Math.cos( 0.03175095579 +       117.3198682202 * t);
        saturn_x_1+=     0.00014461916*Math.cos( 3.67449803828 +       647.0108333148 * t);
        saturn_x_1+=      0.0001588995*Math.cos(  0.0365352681 +       210.1177017003 * t);
        saturn_x_1+=     0.00016193213*Math.cos( 5.60825312945 +       323.5054166574 * t);
        saturn_x_1+=     0.00016291548*Math.cos( 4.86945682592 +       216.4804891757 * t);
        saturn_x_1+=     0.00017120603*Math.cos( 4.59542499292 +       632.7837393132 * t);
        saturn_x_1+=     0.00017772775*Math.cos( 6.10381591303 +       217.2312487011 * t);
        saturn_x_1+=      0.0001808785*Math.cos( 5.09162753222 +       209.3669421749 * t);
        saturn_x_1+=     0.00018933918*Math.cos( 2.77615609434 +        853.196381752 * t);
        saturn_x_1+=     0.00022268129*Math.cos( 6.19542444435 +       103.0927742186 * t);
        saturn_x_1+=     0.00030413111*Math.cos( 0.18746990038 +        14.2270940016 * t);
        saturn_x_1+=     0.00030991837*Math.cos( 6.06069383491 +       199.0720014364 * t);
        saturn_x_1+=     0.00066742869*Math.cos( 3.72347003212 +       316.3918696566 * t);
        saturn_x_1+=     0.00066882235*Math.cos( 5.20257498551 +       227.5261894396 * t);
        saturn_x_1+=     0.00119517217*Math.cos( 1.14736396934 +       110.2063212194 * t);
        saturn_x_1+=     0.00189142591*Math.cos( 4.48642939502 +       433.7117378768 * t);
        saturn_x_1+=     0.00203589147*Math.cos( 1.10998720016 +        213.299095438 * t);
        saturn_x_1+=     0.00256488381*Math.cos( 3.52479443238 +        639.897286314 * t);
        saturn_x_1+=     0.00312269012*Math.cos( 4.83002443322 +       419.4846438752 * t);
        saturn_x_1+=     0.00627003445*Math.cos( 0.32898258729 +         7.1135470008 * t);
        saturn_x_1+=     0.02642347272*Math.cos( 5.33291950842 +       220.4126424388 * t);
        saturn_x_1+=     0.02714141496*Math.cos( 5.85229546861 +       206.1855484372 * t);
        saturn_x_1+=     0.03084144308*Math.cos( 4.27565898829 +        426.598190876 * t);
        saturn_x_1+=     0.07573807889*Math.cos(           0.0 +                  0.0 * t);
        saturn_x_1=saturn_x_1*t;

        var saturn_x_2 = 0.0;
        saturn_x_2+=     0.00010329051*Math.cos( 4.76949570032 +        14.2270940016 * t);
        saturn_x_2+=     0.00012672501*Math.cos( 1.45466696358 +       199.0720014364 * t);
        saturn_x_2+=     0.00027145848*Math.cos( 3.49804001342 +       227.5261894396 * t);
        saturn_x_2+=     0.00032838505*Math.cos( 1.59210694211 +        639.897286314 * t);
        saturn_x_2+=      0.0004510988*Math.cos( 0.36735560493 +       419.4846438752 * t);
        saturn_x_2+=     0.00050013864*Math.cos( 2.70119455991 +       433.7117378768 * t);
        saturn_x_2+=     0.00087156936*Math.cos( 4.89048703815 +         7.1135470008 * t);
        saturn_x_2+=     0.00224237163*Math.cos( 2.49151267683 +        426.598190876 * t);
        saturn_x_2+=     0.00336013651*Math.cos(  2.4254743221 +        213.299095438 * t);
        saturn_x_2+=     0.00443297401*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_x_2+=     0.00545678885*Math.cos( 3.62343709789 +       220.4126424388 * t);
        saturn_x_2+=     0.00560586041*Math.cos( 1.26401676555 +       206.1855484372 * t);
        saturn_x_2=saturn_x_2*t*t;

        var saturn_x_3 = 0.0;
        saturn_x_3+=     0.00010524182*Math.cos( 0.66368351849 +        426.598190876 * t);
        saturn_x_3+=     0.00018448888*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_x_3+=     0.00075318954*Math.cos( 1.89208004954 +       220.4126424388 * t);
        saturn_x_3+=     0.00077093916*Math.cos( 2.97714400003 +       206.1855484372 * t);
        saturn_x_3=saturn_x_3*t*t*t;

        return saturn_x_3+saturn_x_2+saturn_x_1+saturn_x_0;
    }

    @JvmStatic private fun saturn_y(t: Double): Double {
        var saturn_y_0 = 0.0;
        saturn_y_0+=     0.00012044624*Math.cos( 4.09265940857 +       351.8165923087 * t);
        saturn_y_0+=     0.00012419205*Math.cos(  2.6255814302 +       490.3340891794 * t);
        saturn_y_0+=     0.00015379504*Math.cos(  3.1022791367 +       277.0349937414 * t);
        saturn_y_0+=     0.00020269405*Math.cos( 2.34321183269 +       309.2783226558 * t);
        saturn_y_0+=     0.00020506212*Math.cos( 1.05154502619 +       522.5774180938 * t);
        saturn_y_0+=     0.00023261688*Math.cos( 4.81745174067 +       149.5631971346 * t);
        saturn_y_0+=     0.00023390138*Math.cos( 3.96337860167 +       647.0108333148 * t);
        saturn_y_0+=       0.000246338*Math.cos( 2.95445207628 +       210.1177017003 * t);
        saturn_y_0+=     0.00024828004*Math.cos( 4.02630021779 +       415.5524906121 * t);
        saturn_y_0+=      0.0002519238*Math.cos( 5.08963506546 +       216.4804891757 * t);
        saturn_y_0+=     0.00025539506*Math.cos( 0.06636302741 +       117.3198682202 * t);
        saturn_y_0+=      0.0002967171*Math.cos( 6.09960421165 +       735.8765135318 * t);
        saturn_y_0+=     0.00041964833*Math.cos( 2.62589505876 +       199.0720014364 * t);
        saturn_y_0+=     0.00044692371*Math.cos( 0.90600229248 +        63.7358983034 * t);
        saturn_y_0+=     0.00045783362*Math.cos( 0.30331816441 +        14.2270940016 * t);
        saturn_y_0+=     0.00054033488*Math.cos( 3.33755971377 +        853.196381752 * t);
        saturn_y_0+=     0.00058391222*Math.cos( 0.58871774298 +       224.3447957019 * t);
        saturn_y_0+=     0.00058932599*Math.cos( 0.76188426024 +        74.7815985673 * t);
        saturn_y_0+=     0.00065919181*Math.cos( 1.25972156533 +       202.2533951741 * t);
        saturn_y_0+=     0.00068966168*Math.cos( 2.44460285922 +       217.2312487011 * t);
        saturn_y_0+=     0.00070138439*Math.cos( 5.59777958177 +       209.3669421749 * t);
        saturn_y_0+=     0.00071069917*Math.cos( 0.88882645933 +       632.7837393132 * t);
        saturn_y_0+=     0.00080377512*Math.cos( 1.51715226439 +       529.6909650946 * t);
        saturn_y_0+=     0.00080576954*Math.cos( 4.05258308529 +        11.0457002639 * t);
        saturn_y_0+=     0.00083875875*Math.cos( 5.33204068233 +       227.5261894396 * t);
        saturn_y_0+=     0.00097829309*Math.cos(  5.7286091022 +       323.5054166574 * t);
        saturn_y_0+=     0.00149675444*Math.cos( 0.59938943096 +        38.1330356378 * t);
        saturn_y_0+=     0.00335413797*Math.cos( 0.66392970394 +       103.0927742186 * t);
        saturn_y_0+=     0.00373221824*Math.cos( 4.71309283502 +       433.7117378768 * t);
        saturn_y_0+=     0.00700636234*Math.cos( 1.13613024684 +       316.3918696566 * t);
        saturn_y_0+=     0.01098442011*Math.cos( 4.08609387384 +        639.897286314 * t);
        saturn_y_0+=     0.01183557497*Math.cos( 1.34637027573 +       419.4846438752 * t);
        saturn_y_0+=       0.012455238*Math.cos( 0.60375781288 +       110.2063212194 * t);
        saturn_y_0+=     0.02345226948*Math.cos( 0.44652393276 +         7.1135470008 * t);
        saturn_y_0+=       0.066316792*Math.cos( 5.46258849076 +       220.4126424388 * t);
        saturn_y_0+=     0.06914690347*Math.cos( 2.55279029588 +       206.1855484372 * t);
        saturn_y_0+=     0.26434197609*Math.cos( 4.83528742856 +        426.598190876 * t);
        saturn_y_0+=     0.79354119271*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_y_0+=     9.52714696877*Math.cos( 5.58600556072 +        213.299095438 * t);

        var saturn_y_1 = 0.0;
        saturn_y_1+=      0.0001108147*Math.cos( 4.74085903299 +       117.3198682202 * t);
        saturn_y_1+=     0.00014477333*Math.cos( 2.10298721499 +       647.0108333148 * t);
        saturn_y_1+=     0.00015939705*Math.cos( 4.74503240139 +       210.1177017003 * t);
        saturn_y_1+=     0.00016150533*Math.cos( 4.04213724873 +       323.5054166574 * t);
        saturn_y_1+=     0.00016316041*Math.cos( 3.29784030574 +       216.4804891757 * t);
        saturn_y_1+=     0.00016718004*Math.cos( 3.00200323762 +       632.7837393132 * t);
        saturn_y_1+=     0.00017786462*Math.cos( 4.53214139341 +       217.2312487011 * t);
        saturn_y_1+=     0.00018074789*Math.cos( 3.51566121826 +       209.3669421749 * t);
        saturn_y_1+=     0.00018939541*Math.cos( 1.20409782475 +        853.196381752 * t);
        saturn_y_1+=     0.00022227517*Math.cos( 4.62224969869 +       103.0927742186 * t);
        saturn_y_1+=     0.00030623941*Math.cos(  4.8886201945 +        14.2270940016 * t);
        saturn_y_1+=     0.00032993193*Math.cos( 4.35526131741 +       199.0720014364 * t);
        saturn_y_1+=     0.00066984273*Math.cos( 3.63101074215 +       227.5261894396 * t);
        saturn_y_1+=     0.00067189505*Math.cos(   2.170429775 +       316.3918696566 * t);
        saturn_y_1+=     0.00116775818*Math.cos( 5.89150757121 +       110.2063212194 * t);
        saturn_y_1+=     0.00164086267*Math.cos( 5.29239224879 +        213.299095438 * t);
        saturn_y_1+=     0.00189379568*Math.cos(  2.9150232868 +       433.7117378768 * t);
        saturn_y_1+=     0.00256727017*Math.cos( 1.95352327208 +        639.897286314 * t);
        saturn_y_1+=     0.00312184641*Math.cos( 3.25850939353 +       419.4846438752 * t);
        saturn_y_1+=     0.00631417689*Math.cos( 5.03245728319 +         7.1135470008 * t);
        saturn_y_1+=     0.02646734779*Math.cos( 3.76132299914 +       220.4126424388 * t);
        saturn_y_1+=     0.02740812928*Math.cos(  4.2666750646 +       206.1855484372 * t);
        saturn_y_1+=     0.03089676414*Math.cos( 2.70347020059 +        426.598190876 * t);
        saturn_y_1+=     0.05373895252*Math.cos(           0.0 +                  0.0 * t);
        saturn_y_1=saturn_y_1*t;

        var saturn_y_2 = 0.0;
        saturn_y_2+=     0.00010424268*Math.cos( 3.18247070949 +        14.2270940016 * t);
        saturn_y_2+=     0.00013247777*Math.cos( 6.07692233033 +       199.0720014364 * t);
        saturn_y_2+=     0.00027192023*Math.cos( 1.92638417379 +       227.5261894396 * t);
        saturn_y_2+=     0.00032887404*Math.cos( 0.02089587128 +        639.897286314 * t);
        saturn_y_2+=     0.00045503682*Math.cos( 5.07669915666 +       419.4846438752 * t);
        saturn_y_2+=     0.00050087062*Math.cos( 1.12976577868 +       433.7117378768 * t);
        saturn_y_2+=     0.00088376134*Math.cos(  3.3028974379 +         7.1135470008 * t);
        saturn_y_2+=     0.00225456249*Math.cos( 0.91699830789 +        426.598190876 * t);
        saturn_y_2+=     0.00362190876*Math.cos( 0.89540102818 +        213.299095438 * t);
        saturn_y_2+=     0.00458462799*Math.cos(           0.0 +                  0.0 * t);
        saturn_y_2+=     0.00546856143*Math.cos( 2.05154974712 +       220.4126424388 * t);
        saturn_y_2+=     0.00563545688*Math.cos( 5.97115835983 +       206.1855484372 * t);
        saturn_y_2=saturn_y_2*t*t;

        var saturn_y_3 = 0.0;
        saturn_y_3+=      0.0001066917*Math.cos(   5.364956122 +        426.598190876 * t);
        saturn_y_3+=     0.00022841198*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_y_3+=     0.00075542804*Math.cos( 0.31962897945 +       220.4126424388 * t);
        saturn_y_3+=     0.00077354527*Math.cos( 1.40391035241 +       206.1855484372 * t);
        saturn_y_3=saturn_y_3*t*t*t;

        return saturn_y_3+saturn_y_2+saturn_y_1+saturn_y_0;
    }

    @JvmStatic private fun saturn_z(t: Double): Double {
        var saturn_z_0 = 0.0;
        saturn_z_0+=     0.00016180782*Math.cos( 2.72987541776 +       433.7117378768 * t);
        saturn_z_0+=     0.00034555171*Math.cos( 5.42614764541 +       316.3918696566 * t);
        saturn_z_0+=     0.00043448305*Math.cos( 5.84904880596 +       419.4846438752 * t);
        saturn_z_0+=     0.00047724545*Math.cos(  2.1003983837 +        639.897286314 * t);
        saturn_z_0+=       0.000573476*Math.cos( 4.92616271331 +       110.2063212194 * t);
        saturn_z_0+=     0.00099054808*Math.cos( 4.73370561217 +         7.1135470008 * t);
        saturn_z_0+=     0.00286852189*Math.cos( 3.48073528206 +       220.4126424388 * t);
        saturn_z_0+=     0.00329186544*Math.cos( 0.57121482436 +       206.1855484372 * t);
        saturn_z_0+=     0.01147953788*Math.cos( 2.85128771957 +        426.598190876 * t);
        saturn_z_0+=     0.01213097211*Math.cos(           0.0 +                  0.0 * t);
        saturn_z_0+=     0.41345140292*Math.cos( 3.60234141893 +        213.299095438 * t);

        var saturn_z_1 = 0.0;
        saturn_z_1+=     0.00016174973*Math.cos( 1.19988846625 +       419.4846438752 * t);
        saturn_z_1+=      0.0002225307*Math.cos( 3.07685453172 +         7.1135470008 * t);
        saturn_z_1+=      0.0008592259*Math.cos( 0.51612794233 +        426.598190876 * t);
        saturn_z_1+=     0.00101437388*Math.cos( 1.79095832223 +       220.4126424388 * t);
        saturn_z_1+=      0.0013022499*Math.cos( 2.26141028606 +       206.1855484372 * t);
        saturn_z_1+=     0.00528167867*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_z_1+=      0.0190595894*Math.cos( 4.94544746619 +        213.299095438 * t);
        saturn_z_1=saturn_z_1*t;

        var saturn_z_2 = 0.0;
        saturn_z_2+=     0.00019316662*Math.cos(  0.0922875161 +       220.4126424388 * t);
        saturn_z_2+=     0.00030139033*Math.cos( 3.91396211806 +       206.1855484372 * t);
        saturn_z_2+=     0.00131237677*Math.cos( 0.08868998014 +        213.299095438 * t);
        saturn_z_2=saturn_z_2*t*t;

        return saturn_z_2+saturn_z_1+saturn_z_0;
    }

    @JvmStatic private fun sun_x(t: Double): Double {
        var sun_x_0 = 0.0;
        sun_x_0+=     0.00012013079*Math.cos( 4.09073224903 +      1059.3819301892 * t);
        sun_x_0+=     0.00029374249*Math.cos(           0.0 +                  0.0 * t);
        sun_x_0+=     0.00083792997*Math.cos( 2.33967985523 +        74.7815985673 * t);
        sun_x_0+=     0.00155435675*Math.cos( 2.17052050061 +        38.1330356378 * t);
        sun_x_0+=     0.00271802376*Math.cos( 4.01601149775 +        213.299095438 * t);
        sun_x_0+=     0.00495672739*Math.cos( 3.74107356792 +       529.6909650946 * t);

        return sun_x_0;
    }

    @JvmStatic private fun sun_y(t: Double): Double {
        var sun_y_0 = 0.0;
        sun_y_0+=     0.00012011827*Math.cos(  2.5200314788 +      1059.3819301892 * t);
        sun_y_0+=     0.00033869535*Math.cos(           0.0 +                  0.0 * t);
        sun_y_0+=     0.00083755792*Math.cos(  0.7688016471 +        74.7815985673 * t);
        sun_y_0+=     0.00155444313*Math.cos(  0.5992701084 +        38.1330356378 * t);
        sun_y_0+=     0.00272185821*Math.cos( 2.44443364925 +        213.299095438 * t);
        sun_y_0+=     0.00495536218*Math.cos( 2.17046712634 +       529.6909650946 * t);

        return sun_y_0;
    }

    @JvmStatic private fun sun_z(t: Double): Double {
        var sun_z_0 = 0.0;
        sun_z_0+=       0.000112777*Math.cos( 0.41689943638 +       529.6909650946 * t);
        sun_z_0+=     0.00011810648*Math.cos( 0.46078690233 +        213.299095438 * t);

        return sun_z_0;
    }

    @JvmStatic private fun uranus_x(t: Double): Double {
        var uranus_x_0 = 0.0;
        uranus_x_0+=     0.00010797879*Math.cos( 1.70031895074 +         77.962992305 * t);
        uranus_x_0+=      0.0001124531*Math.cos( 6.11597014635 +        71.6002048296 * t);
        uranus_x_0+=      0.0001144251*Math.cos( 0.20030247485 +        36.6485629295 * t);
        uranus_x_0+=     0.00011538642*Math.cos( 1.77241794539 +        77.2292791221 * t);
        uranus_x_0+=     0.00012394786*Math.cos(  6.2189287885 +        72.3339180125 * t);
        uranus_x_0+=     0.00012884351*Math.cos(  5.0873799947 +       145.1097790097 * t);
        uranus_x_0+=     0.00013593381*Math.cos( 2.55407931798 +        87.3117715395 * t);
        uranus_x_0+=     0.00013947849*Math.cos(  6.2754594407 +       221.3758502853 * t);
        uranus_x_0+=     0.00015199755*Math.cos( 2.88408510221 +        41.1019810544 * t);
        uranus_x_0+=      0.0001658787*Math.cos( 4.86920309163 +       108.4612160802 * t);
        uranus_x_0+=     0.00018565067*Math.cos( 0.62225019017 +        52.6901980395 * t);
        uranus_x_0+=     0.00018577959*Math.cos( 5.70218580551 +        33.6796175129 * t);
        uranus_x_0+=     0.00019653015*Math.cos( 2.28660913421 +        74.8934731519 * t);
        uranus_x_0+=     0.00019675903*Math.cos( 5.53431398332 +        74.6697239827 * t);
        uranus_x_0+=     0.00019925827*Math.cos( 1.39875506889 +       112.9146342051 * t);
        uranus_x_0+=     0.00019953738*Math.cos( 0.57452653801 +        12.5301729722 * t);
        uranus_x_0+=     0.00020084107*Math.cos( 4.47297514058 +        22.0914005278 * t);
        uranus_x_0+=      0.0002296296*Math.cos(  5.5147524227 +        84.3428261229 * t);
        uranus_x_0+=      0.0002346678*Math.cos( 4.09729826283 +       145.6310438715 * t);
        uranus_x_0+=     0.00025208291*Math.cos( 5.30270440656 +         9.5612275556 * t);
        uranus_x_0+=      0.0002576722*Math.cos( 2.64279937947 +        213.299095438 * t);
        uranus_x_0+=      0.0002665625*Math.cos( 6.11027934265 +       160.6088973985 * t);
        uranus_x_0+=     0.00028371102*Math.cos( 2.58026061716 +       127.4717966068 * t);
        uranus_x_0+=     0.00028383708*Math.cos( 6.01785438397 +       184.7272873558 * t);
        uranus_x_0+=      0.0003182253*Math.cos( 5.53948530245 +       152.5321425512 * t);
        uranus_x_0+=     0.00033133106*Math.cos( 2.54202102521 +        65.2203710117 * t);
        uranus_x_0+=      0.0003386596*Math.cos(   5.984183616 +        70.3281804424 * t);
        uranus_x_0+=     0.00034340286*Math.cos( 3.03782445102 +       225.8292684102 * t);
        uranus_x_0+=     0.00034554296*Math.cos( 1.84698778371 +        79.2350166922 * t);
        uranus_x_0+=     0.00035938423*Math.cos( 4.08805817528 +       202.2533951741 * t);
        uranus_x_0+=     0.00039183521*Math.cos( 2.68841323459 +         4.4534181249 * t);
        uranus_x_0+=     0.00053904041*Math.cos( 3.92590422507 +         3.9321532631 * t);
        uranus_x_0+=      0.0005993544*Math.cos( 5.30012287089 +        38.1330356378 * t);
        uranus_x_0+=     0.00063581767*Math.cos( 0.29966264689 +       299.1263942692 * t);
        uranus_x_0+=     0.00065063923*Math.cos( 3.73008432701 +       109.9456887885 * t);
        uranus_x_0+=     0.00104615229*Math.cos( 3.90538915195 +        146.594251718 * t);
        uranus_x_0+=     0.00110162872*Math.cos( 4.45478121996 +        35.1640902212 * t);
        uranus_x_0+=     0.00111255099*Math.cos( 5.12253353573 +       222.8603229936 * t);
        uranus_x_0+=     0.00120354886*Math.cos(  4.1021867007 +        39.6175083461 * t);
        uranus_x_0+=     0.00125099578*Math.cos( 2.51455157066 +       111.4301614968 * t);
        uranus_x_0+=     0.00135334157*Math.cos( 5.51062460646 +        78.7137518304 * t);
        uranus_x_0+=     0.00145499145*Math.cos( 2.31759819136 +        70.8494453042 * t);
        uranus_x_0+=     0.00383608186*Math.cos( 6.18762167352 +       138.5174968707 * t);
        uranus_x_0+=      0.0045824226*Math.cos( 3.90788427382 +         2.9689454166 * t);
        uranus_x_0+=     0.00547675794*Math.cos( 3.63127816021 +        85.8272988312 * t);
        uranus_x_0+=       0.005851598*Math.cos( 4.79934731599 +        71.8126531507 * t);
        uranus_x_0+=     0.00621603101*Math.cos( 3.05881560775 +        77.7505439839 * t);
        uranus_x_0+=     0.00633971831*Math.cos(  4.0955458474 +        63.7358983034 * t);
        uranus_x_0+=     0.00657496073*Math.cos( 0.57595186181 +       151.0476698429 * t);
        uranus_x_0+=     0.00944969862*Math.cos( 1.65871112189 +        11.0457002639 * t);
        uranus_x_0+=      0.0144415347*Math.cos( 2.65117108186 +       148.0787244263 * t);
        uranus_x_0+=     0.01542890129*Math.cos( 4.12122840701 +       224.3447957019 * t);
        uranus_x_0+=     0.06200970387*Math.cos( 5.14043568284 +         1.4844727083 * t);
        uranus_x_0+=     0.14129215712*Math.cos( 4.39576776954 +        76.2660712756 * t);
        uranus_x_0+=     0.14667584671*Math.cos( 3.42395875589 +         73.297125859 * t);
        uranus_x_0+=     0.44400556159*Math.cos( 1.65967535182 +       149.5631971346 * t);
        uranus_x_0+=     1.32301898121*Math.cos(           0.0 +                  0.0 * t);
        uranus_x_0+=    19.17286937362*Math.cos( 5.48133416758 +        74.7815985673 * t);

        var uranus_x_1 = 0.0;
        uranus_x_1+=     0.00015211071*Math.cos(  5.5314163314 +         3.9321532631 * t);
        uranus_x_1+=      0.0001737553*Math.cos( 0.24607209329 +        71.8126531507 * t);
        uranus_x_1+=     0.00019441253*Math.cos( 1.30617221059 +        77.7505439839 * t);
        uranus_x_1+=     0.00021684713*Math.cos( 4.93711029212 +       151.0476698429 * t);
        uranus_x_1+=     0.00032331648*Math.cos( 5.06666434496 +        74.7815985673 * t);
        uranus_x_1+=     0.00036156923*Math.cos( 1.23634800002 +        78.7137518304 * t);
        uranus_x_1+=     0.00038842663*Math.cos( 0.30724636172 +        70.8494453042 * t);
        uranus_x_1+=     0.00045685509*Math.cos( 2.29216605538 +       138.5174968707 * t);
        uranus_x_1+=     0.00051382144*Math.cos( 2.18938250169 +       224.3447957019 * t);
        uranus_x_1+=     0.00081508425*Math.cos( 1.21058628422 +        85.8272988312 * t);
        uranus_x_1+=     0.00096348588*Math.cos( 0.35070396367 +        63.7358983034 * t);
        uranus_x_1+=     0.00111041831*Math.cos( 5.57157483973 +        11.0457002639 * t);
        uranus_x_1+=     0.00229661096*Math.cos( 2.48203377424 +        76.2660712756 * t);
        uranus_x_1+=     0.00239830578*Math.cos( 5.33657752107 +         73.297125859 * t);
        uranus_x_1+=     0.00528174379*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_x_1+=     0.00739697937*Math.cos( 6.01067921255 +       149.5631971346 * t);
        uranus_x_1=uranus_x_1*t;

        var uranus_x_2 = 0.0;
        uranus_x_2+=     0.00010915299*Math.cos(  3.0298777627 +       149.5631971346 * t);
        uranus_x_2+=     0.00016015031*Math.cos( 3.83700030134 +        74.7815985673 * t);
        uranus_x_2=uranus_x_2*t*t;

        return uranus_x_2+uranus_x_1+uranus_x_0;
    }

    @JvmStatic private fun uranus_y(t: Double): Double {
        var uranus_y_0 = 0.0;
        uranus_y_0+=     0.00010819255*Math.cos( 0.12807059988 +         77.962992305 * t);
        uranus_y_0+=      0.0001123853*Math.cos( 4.54508332436 +        71.6002048296 * t);
        uranus_y_0+=      0.0001153114*Math.cos( 0.20190074645 +        77.2292791221 * t);
        uranus_y_0+=     0.00012407787*Math.cos(  4.6494578334 +        72.3339180125 * t);
        uranus_y_0+=     0.00013589092*Math.cos( 0.98313830596 +        87.3117715395 * t);
        uranus_y_0+=     0.00013948178*Math.cos( 4.70475195371 +       221.3758502853 * t);
        uranus_y_0+=     0.00015203524*Math.cos( 1.31307053626 +        41.1019810544 * t);
        uranus_y_0+=     0.00015537967*Math.cos(  1.8786327546 +        52.6901980395 * t);
        uranus_y_0+=      0.0001812497*Math.cos( 0.98477642246 +        33.6796175129 * t);
        uranus_y_0+=     0.00019642987*Math.cos( 0.71577796385 +        74.8934731519 * t);
        uranus_y_0+=     0.00019665349*Math.cos( 3.96350065335 +        74.6697239827 * t);
        uranus_y_0+=     0.00019838446*Math.cos( 5.29115100742 +        12.5301729722 * t);
        uranus_y_0+=     0.00019900975*Math.cos( 6.11072709584 +       112.9146342051 * t);
        uranus_y_0+=     0.00020050993*Math.cos( 2.90386377392 +        22.0914005278 * t);
        uranus_y_0+=       0.000201151*Math.cos( 3.45473780762 +       127.4717966068 * t);
        uranus_y_0+=     0.00020715948*Math.cos( 4.93996485297 +        36.6485629295 * t);
        uranus_y_0+=     0.00022932162*Math.cos( 3.94455708202 +        84.3428261229 * t);
        uranus_y_0+=     0.00023426309*Math.cos( 2.52740094518 +       145.6310438715 * t);
        uranus_y_0+=     0.00025235989*Math.cos( 4.45141520694 +        70.3281804424 * t);
        uranus_y_0+=      0.0002590259*Math.cos( 1.06899231907 +        213.299095438 * t);
        uranus_y_0+=     0.00026157159*Math.cos( 3.74095916304 +         9.5612275556 * t);
        uranus_y_0+=     0.00026651934*Math.cos( 4.53944389687 +       160.6088973985 * t);
        uranus_y_0+=     0.00028371248*Math.cos( 4.44714636367 +       184.7272873558 * t);
        uranus_y_0+=     0.00031814882*Math.cos(  3.9686011734 +       152.5321425512 * t);
        uranus_y_0+=     0.00034204008*Math.cos( 0.92405447828 +        65.2203710117 * t);
        uranus_y_0+=     0.00034332981*Math.cos(   1.466969538 +       225.8292684102 * t);
        uranus_y_0+=     0.00034536961*Math.cos( 0.27613229331 +        79.2350166922 * t);
        uranus_y_0+=     0.00039220442*Math.cos( 1.11841144768 +         4.4534181249 * t);
        uranus_y_0+=     0.00039259031*Math.cos( 5.75909949077 +       202.2533951741 * t);
        uranus_y_0+=     0.00053287586*Math.cos( 2.38436439892 +         3.9321532631 * t);
        uranus_y_0+=      0.0006079757*Math.cos(  3.7307078734 +        38.1330356378 * t);
        uranus_y_0+=     0.00063570927*Math.cos( 5.01204999475 +       299.1263942692 * t);
        uranus_y_0+=     0.00063771339*Math.cos( 2.15607569061 +       109.9456887885 * t);
        uranus_y_0+=     0.00104503352*Math.cos( 2.33345670641 +        146.594251718 * t);
        uranus_y_0+=     0.00108550063*Math.cos( 6.02230047678 +        35.1640902212 * t);
        uranus_y_0+=     0.00111199717*Math.cos( 3.55163790142 +       222.8603229936 * t);
        uranus_y_0+=     0.00120431731*Math.cos( 2.53138588744 +        39.6175083461 * t);
        uranus_y_0+=     0.00124862444*Math.cos( 0.94315799565 +       111.4301614968 * t);
        uranus_y_0+=     0.00135284941*Math.cos( 3.93970261854 +        78.7137518304 * t);
        uranus_y_0+=     0.00144026146*Math.cos( 0.75015758735 +        70.8494453042 * t);
        uranus_y_0+=     0.00387905368*Math.cos( 4.62027047251 +       138.5174968707 * t);
        uranus_y_0+=     0.00459611215*Math.cos( 2.33745675699 +         2.9689454166 * t);
        uranus_y_0+=     0.00541938502*Math.cos( 3.24476518729 +        71.8126531507 * t);
        uranus_y_0+=     0.00547449443*Math.cos( 2.06038015757 +        85.8272988312 * t);
        uranus_y_0+=     0.00621305207*Math.cos( 1.48795124826 +        77.7505439839 * t);
        uranus_y_0+=      0.0065030702*Math.cos( 2.76144565363 +        63.7358983034 * t);
        uranus_y_0+=     0.00657314387*Math.cos( 5.28830720039 +       151.0476698429 * t);
        uranus_y_0+=     0.00938950136*Math.cos( 0.09277492739 +        11.0457002639 * t);
        uranus_y_0+=     0.01442293466*Math.cos( 1.08004535633 +       148.0787244263 * t);
        uranus_y_0+=     0.01542607086*Math.cos(  2.5504154317 +       224.3447957019 * t);
        uranus_y_0+=     0.06249939655*Math.cos( 3.56960238469 +         1.4844727083 * t);
        uranus_y_0+=     0.14122904825*Math.cos( 2.82489928705 +        76.2660712756 * t);
        uranus_y_0+=     0.14755311401*Math.cos( 1.85423292905 +         73.297125859 * t);
        uranus_y_0+=     0.16222255941*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_y_0+=     0.44388525091*Math.cos( 0.08884126943 +       149.5631971346 * t);
        uranus_y_0+=    19.16434475791*Math.cos( 3.91045677275 +        74.7815985673 * t);

        var uranus_y_1 = 0.0;
        uranus_y_1+=     0.00014991169*Math.cos( 3.97176856758 +         3.9321532631 * t);
        uranus_y_1+=     0.00017392494*Math.cos( 4.96098883366 +        71.8126531507 * t);
        uranus_y_1+=      0.0001942437*Math.cos(  6.0184191837 +        77.7505439839 * t);
        uranus_y_1+=     0.00021672326*Math.cos(  3.3660732442 +       151.0476698429 * t);
        uranus_y_1+=     0.00032419094*Math.cos( 4.32617246805 +        74.7815985673 * t);
        uranus_y_1+=     0.00036144546*Math.cos( 5.94859451726 +        78.7137518304 * t);
        uranus_y_1+=     0.00038294306*Math.cos( 5.01873585224 +        70.8494453042 * t);
        uranus_y_1+=      0.0004545513*Math.cos( 0.73292269945 +       138.5174968707 * t);
        uranus_y_1+=     0.00051366624*Math.cos( 0.61847245463 +       224.3447957019 * t);
        uranus_y_1+=     0.00081470719*Math.cos( 5.92275377361 +        85.8272988312 * t);
        uranus_y_1+=     0.00094974903*Math.cos( 5.07141531968 +        63.7358983034 * t);
        uranus_y_1+=     0.00110133819*Math.cos( 4.00844673444 +        11.0457002639 * t);
        uranus_y_1+=     0.00229380743*Math.cos( 0.91089104293 +        76.2660712756 * t);
        uranus_y_1+=     0.00238535521*Math.cos( 3.76882481679 +         73.297125859 * t);
        uranus_y_1+=     0.00739195286*Math.cos( 4.43963987365 +       149.5631971346 * t);
        uranus_y_1+=     0.02157902502*Math.cos(           0.0 +                  0.0 * t);
        uranus_y_1=uranus_y_1*t;

        var uranus_y_2 = 0.0;
        uranus_y_2+=     0.00010905147*Math.cos( 1.45737963668 +       149.5631971346 * t);
        uranus_y_2+=     0.00016588468*Math.cos( 2.29556740317 +        74.7815985673 * t);
        uranus_y_2+=     0.00034868461*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_y_2=uranus_y_2*t*t;

        return uranus_y_2+uranus_y_1+uranus_y_0;
    }

    @JvmStatic private fun uranus_z(t: Double): Double {
        var uranus_z_0 = 0.0;
        uranus_z_0+=      0.0001253753*Math.cos( 5.17169051466 +        11.0457002639 * t);
        uranus_z_0+=     0.00014582183*Math.cos( 6.14852624696 +        71.8126531507 * t);
        uranus_z_0+=      0.0001973341*Math.cos( 6.04314596336 +       148.0787244263 * t);
        uranus_z_0+=     0.00020842052*Math.cos( 1.26054208091 +       224.3447957019 * t);
        uranus_z_0+=     0.00030733539*Math.cos( 0.23570745974 +        63.7358983034 * t);
        uranus_z_0+=     0.00084625392*Math.cos( 2.26025774942 +         1.4844727083 * t);
        uranus_z_0+=     0.00190282274*Math.cos( 1.61654207891 +        76.2660712756 * t);
        uranus_z_0+=     0.00190873655*Math.cos( 0.57869366179 +         73.297125859 * t);
        uranus_z_0+=     0.00599290075*Math.cos( 5.08119534568 +       149.5631971346 * t);
        uranus_z_0+=     0.01775471434*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_z_0+=     0.25876996652*Math.cos( 2.61861278845 +        74.7815985673 * t);

        var uranus_z_1 = 0.0;
        uranus_z_1+=     0.00023873149*Math.cos( 2.73870549601 +       149.5631971346 * t);
        uranus_z_1+=     0.00049782349*Math.cos(           0.0 +                  0.0 * t);
        uranus_z_1+=     0.00655887992*Math.cos( 0.01271946942 +        74.7815985673 * t);
        uranus_z_1=uranus_z_1*t;

        var uranus_z_2 = 0.0;
        uranus_z_2+=     0.00014697217*Math.cos( 1.75149164608 +        74.7815985673 * t);
        uranus_z_2=uranus_z_2*t*t;

        return uranus_z_2+uranus_z_1+uranus_z_0;
    }

    @JvmStatic private fun venus_x(t: Double): Double {
        var venus_x_0 = 0.0;
        venus_x_0+=     0.00011914665*Math.cos( 4.08456666781 +      1059.3819301892 * t);
        venus_x_0+=     0.00083791771*Math.cos( 2.33967946884 +        74.7815985673 * t);
        venus_x_0+=     0.00155435209*Math.cos(  2.1705205205 +        38.1330356378 * t);
        venus_x_0+=     0.00244499876*Math.cos( 4.05566613867 +      20426.571092422 * t);
        venus_x_0+=     0.00271754748*Math.cos( 4.01601261142 +        213.299095438 * t);
        venus_x_0+=     0.00494908458*Math.cos( 3.74108234732 +       529.6909650946 * t);
        venus_x_0+=     0.00515822267*Math.cos(           0.0 +                  0.0 * t);
        venus_x_0+=     0.72211104628*Math.cos( 3.17575836361 +      10213.285546211 * t);

        var venus_x_1 = 0.0;
        venus_x_1+=      0.0001723495*Math.cos( 0.92721124604 +      20426.571092422 * t);
        venus_x_1+=      0.0003515871*Math.cos( 3.14159265359 +                  0.0 * t);
        venus_x_1=venus_x_1*t;

        return venus_x_1+venus_x_0;
    }

    @JvmStatic private fun venus_y(t: Double): Double {
        var venus_y_0 = 0.0;
        venus_y_0+=     0.00011913202*Math.cos( 2.51387064934 +      1059.3819301892 * t);
        venus_y_0+=     0.00083754576*Math.cos( 0.76880143132 +        74.7815985673 * t);
        venus_y_0+=     0.00155443844*Math.cos( 0.59927014146 +        38.1330356378 * t);
        venus_y_0+=      0.0024488419*Math.cos( 2.48564953999 +      20426.571092422 * t);
        venus_y_0+=     0.00272138024*Math.cos( 2.44443638845 +        213.299095438 * t);
        venus_y_0+=     0.00494765697*Math.cos( 2.17048019743 +       529.6909650946 * t);
        venus_y_0+=     0.00515636737*Math.cos( 3.14159265359 +                  0.0 * t);
        venus_y_0+=     0.72324643689*Math.cos( 1.60573808356 +      10213.285546211 * t);

        var venus_y_1 = 0.0;
        venus_y_1+=     0.00017282284*Math.cos(   5.638247359 +      20426.571092422 * t);
        venus_y_1+=     0.00039237546*Math.cos(           0.0 +                  0.0 * t);
        venus_y_1=venus_y_1*t;

        return venus_y_1+venus_y_0;
    }

    @JvmStatic private fun venus_z(t: Double): Double {
        var venus_z_0 = 0.0;
        venus_z_0+=     0.00011238047*Math.cos( 0.41541669438 +       529.6909650946 * t);
        venus_z_0+=     0.00011808377*Math.cos( 0.46064367724 +        213.299095438 * t);
        venus_z_0+=     0.00014501844*Math.cos(  1.1469691139 +      20426.571092422 * t);
        venus_z_0+=     0.00036740999*Math.cos( 3.14159265359 +                  0.0 * t);
        venus_z_0+=     0.04282979819*Math.cos( 0.26703856471 +      10213.285546211 * t);

        var venus_z_1 = 0.0;
        venus_z_1+=     0.00208095894*Math.cos( 1.88967278742 +      10213.285546211 * t);
        venus_z_1=venus_z_1*t;

        return venus_z_1+venus_z_0;
    }

}
