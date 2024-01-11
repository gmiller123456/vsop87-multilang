//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

object VSOP87E_Pico{
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
        earth_x_0+=     0.99982624851*Math.cos( 1.75348568475 +      6283.0758499914 * t);

        return earth_x_0;
    }

    @JvmStatic private fun earth_y(t: Double): Double {
        var earth_y_0 = 0.0;
        earth_y_0+=     0.02408829501*Math.cos( 3.14159265359 +                  0.0 * t);
        earth_y_0+=     0.99988907017*Math.cos( 0.18265890456 +      6283.0758499914 * t);

        return earth_y_0;
    }

    @JvmStatic private fun earth_z(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun jupiter_x(t: Double): Double {
        var jupiter_x_0 = 0.0;
        jupiter_x_0+=     0.01474818211*Math.cos( 3.61736901402 +       536.8045120954 * t);
        jupiter_x_0+=     0.01499237862*Math.cos( 0.73175554601 +       522.5774180938 * t);
        jupiter_x_0+=     0.12581924842*Math.cos( 0.94911581432 +      1059.3819301892 * t);
        jupiter_x_0+=      0.3663326807*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_x_0+=     5.19167797375*Math.cos( 0.59945079482 +       529.6909650946 * t);

        return jupiter_x_0;
    }

    @JvmStatic private fun jupiter_y(t: Double): Double {
        var jupiter_y_0 = 0.0;
        jupiter_y_0+=     0.01474403395*Math.cos( 2.04679547637 +       536.8045120954 * t);
        jupiter_y_0+=     0.01506838468*Math.cos( 5.43934599781 +       522.5774180938 * t);
        jupiter_y_0+=     0.09329801081*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_y_0+=     0.12580850775*Math.cos( 5.66160225641 +      1059.3819301892 * t);
        jupiter_y_0+=     5.19024510371*Math.cos( 5.31203160043 +       529.6909650946 * t);

        var jupiter_y_1 = 0.0;
        jupiter_y_1+=     0.01694792137*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_y_1=jupiter_y_1*t;

        return jupiter_y_1+jupiter_y_0;
    }

    @JvmStatic private fun jupiter_z(t: Double): Double {
        var jupiter_z_0 = 0.0;
        jupiter_z_0+=     0.11811822789*Math.cos( 3.55844641987 +       529.6909650946 * t);

        return jupiter_z_0;
    }

    @JvmStatic private fun mars_x(t: Double): Double {
        var mars_x_0 = 0.0;
        mars_x_0+=     0.07070917372*Math.cos( 0.25870338552 +      6681.2248533996 * t);
        mars_x_0+=     0.19473570996*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_x_0+=     1.51769887405*Math.cos( 6.20403346548 +      3340.6124266998 * t);

        return mars_x_0;
    }

    @JvmStatic private fun mars_y(t: Double): Double {
        var mars_y_0 = 0.0;
        mars_y_0+=     0.07064547959*Math.cos( 4.97051892898 +      6681.2248533996 * t);
        mars_y_0+=     0.08689350637*Math.cos(           0.0 +                  0.0 * t);
        mars_y_0+=     1.51558927367*Math.cos( 4.63212206588 +      3340.6124266998 * t);

        var mars_y_1 = 0.0;
        mars_y_1+=     0.01427318093*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_y_1=mars_y_1*t;

        return mars_y_1+mars_y_0;
    }

    @JvmStatic private fun mars_z(t: Double): Double {
        var mars_z_0 = 0.0;
        mars_z_0+=     0.04901205639*Math.cos( 3.76712324293 +      3340.6124266998 * t);

        return mars_z_0;
    }

    @JvmStatic private fun mercury_x(t: Double): Double {
        var mercury_x_0 = 0.0;
        mercury_x_0+=     0.02596241714*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_x_0+=     0.03825746037*Math.cos( 1.16485604343 +     52175.8062831484 * t);
        mercury_x_0+=     0.37546285495*Math.cos( 4.39651506942 +     26087.9031415742 * t);

        return mercury_x_0;
    }

    @JvmStatic private fun mercury_y(t: Double): Double {
        var mercury_y_0 = 0.0;
        mercury_y_0+=     0.03854667576*Math.cos( 5.88780608961 +     52175.8062831484 * t);
        mercury_y_0+=     0.11592262295*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_y_0+=     0.37953636588*Math.cos( 2.83780617821 +     26087.9031415742 * t);

        return mercury_y_0;
    }

    @JvmStatic private fun mercury_z(t: Double): Double {
        var mercury_z_0 = 0.0;
        mercury_z_0+=     0.04607664562*Math.cos( 1.99295081967 +     26087.9031415742 * t);

        return mercury_z_0;
    }

    @JvmStatic private fun neptune_x(t: Double): Double {
        var neptune_x_0 = 0.0;
        neptune_x_0+=     0.02597449604*Math.cos( 1.99590330725 +         1.4844727083 * t);
        neptune_x_0+=      0.1350457827*Math.cos( 3.50075407055 +        76.2660712756 * t);
        neptune_x_0+=     0.14934353052*Math.cos( 1.08499398649 +        39.6175083461 * t);
        neptune_x_0+=     0.15725280871*Math.cos( 0.11319072402 +        36.6485629295 * t);
        neptune_x_0+=     0.27050789973*Math.cos( 3.14159265359 +                  0.0 * t);
        neptune_x_0+=    30.05734568801*Math.cos(  5.3121134003 +        38.1330356378 * t);

        return neptune_x_0;
    }

    @JvmStatic private fun neptune_y(t: Double): Double {
        var neptune_y_0 = 0.0;
        neptune_y_0+=     0.02584389323*Math.cos( 0.42549727257 +         1.4844727083 * t);
        neptune_y_0+=     0.13505308635*Math.cos( 1.92949466968 +        76.2660712756 * t);
        neptune_y_0+=     0.14935398681*Math.cos( 5.79694896309 +        39.6175083461 * t);
        neptune_y_0+=     0.15705776296*Math.cos( 4.82539969469 +        36.6485629295 * t);
        neptune_y_0+=     0.30171988148*Math.cos( 3.14159265359 +                  0.0 * t);
        neptune_y_0+=    30.05900907352*Math.cos( 3.74086294715 +        38.1330356378 * t);

        return neptune_y_0;
    }

    @JvmStatic private fun neptune_z(t: Double): Double {
        var neptune_z_0 = 0.0;
        neptune_z_0+=     0.01244825806*Math.cos(           0.0 +                  0.0 * t);
        neptune_z_0+=     0.92861252357*Math.cos( 1.44103930199 +        38.1330356378 * t);

        return neptune_z_0;
    }

    @JvmStatic private fun saturn_x(t: Double): Double {
        var saturn_x_0 = 0.0;
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
        saturn_x_1+=     0.02642347272*Math.cos( 5.33291950842 +       220.4126424388 * t);
        saturn_x_1+=     0.02714141496*Math.cos( 5.85229546861 +       206.1855484372 * t);
        saturn_x_1+=     0.03084144308*Math.cos( 4.27565898829 +        426.598190876 * t);
        saturn_x_1+=     0.07573807889*Math.cos(           0.0 +                  0.0 * t);
        saturn_x_1=saturn_x_1*t;

        return saturn_x_1+saturn_x_0;
    }

    @JvmStatic private fun saturn_y(t: Double): Double {
        var saturn_y_0 = 0.0;
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
        saturn_y_1+=     0.02646734779*Math.cos( 3.76132299914 +       220.4126424388 * t);
        saturn_y_1+=     0.02740812928*Math.cos(  4.2666750646 +       206.1855484372 * t);
        saturn_y_1+=     0.03089676414*Math.cos( 2.70347020059 +        426.598190876 * t);
        saturn_y_1+=     0.05373895252*Math.cos(           0.0 +                  0.0 * t);
        saturn_y_1=saturn_y_1*t;

        return saturn_y_1+saturn_y_0;
    }

    @JvmStatic private fun saturn_z(t: Double): Double {
        var saturn_z_0 = 0.0;
        saturn_z_0+=     0.01147953788*Math.cos( 2.85128771957 +        426.598190876 * t);
        saturn_z_0+=     0.01213097211*Math.cos(           0.0 +                  0.0 * t);
        saturn_z_0+=     0.41345140292*Math.cos( 3.60234141893 +        213.299095438 * t);

        var saturn_z_1 = 0.0;
        saturn_z_1+=      0.0190595894*Math.cos( 4.94544746619 +        213.299095438 * t);
        saturn_z_1=saturn_z_1*t;

        return saturn_z_1+saturn_z_0;
    }

    @JvmStatic private fun sun_x(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun sun_y(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun sun_z(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun uranus_x(t: Double): Double {
        var uranus_x_0 = 0.0;
        uranus_x_0+=      0.0144415347*Math.cos( 2.65117108186 +       148.0787244263 * t);
        uranus_x_0+=     0.01542890129*Math.cos( 4.12122840701 +       224.3447957019 * t);
        uranus_x_0+=     0.06200970387*Math.cos( 5.14043568284 +         1.4844727083 * t);
        uranus_x_0+=     0.14129215712*Math.cos( 4.39576776954 +        76.2660712756 * t);
        uranus_x_0+=     0.14667584671*Math.cos( 3.42395875589 +         73.297125859 * t);
        uranus_x_0+=     0.44400556159*Math.cos( 1.65967535182 +       149.5631971346 * t);
        uranus_x_0+=     1.32301898121*Math.cos(           0.0 +                  0.0 * t);
        uranus_x_0+=    19.17286937362*Math.cos( 5.48133416758 +        74.7815985673 * t);

        return uranus_x_0;
    }

    @JvmStatic private fun uranus_y(t: Double): Double {
        var uranus_y_0 = 0.0;
        uranus_y_0+=     0.01442293466*Math.cos( 1.08004535633 +       148.0787244263 * t);
        uranus_y_0+=     0.01542607086*Math.cos(  2.5504154317 +       224.3447957019 * t);
        uranus_y_0+=     0.06249939655*Math.cos( 3.56960238469 +         1.4844727083 * t);
        uranus_y_0+=     0.14122904825*Math.cos( 2.82489928705 +        76.2660712756 * t);
        uranus_y_0+=     0.14755311401*Math.cos( 1.85423292905 +         73.297125859 * t);
        uranus_y_0+=     0.16222255941*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_y_0+=     0.44388525091*Math.cos( 0.08884126943 +       149.5631971346 * t);
        uranus_y_0+=    19.16434475791*Math.cos( 3.91045677275 +        74.7815985673 * t);

        var uranus_y_1 = 0.0;
        uranus_y_1+=     0.02157902502*Math.cos(           0.0 +                  0.0 * t);
        uranus_y_1=uranus_y_1*t;

        return uranus_y_1+uranus_y_0;
    }

    @JvmStatic private fun uranus_z(t: Double): Double {
        var uranus_z_0 = 0.0;
        uranus_z_0+=     0.01775471434*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_z_0+=     0.25876996652*Math.cos( 2.61861278845 +        74.7815985673 * t);

        return uranus_z_0;
    }

    @JvmStatic private fun venus_x(t: Double): Double {
        var venus_x_0 = 0.0;
        venus_x_0+=     0.72211104628*Math.cos( 3.17575836361 +      10213.285546211 * t);

        return venus_x_0;
    }

    @JvmStatic private fun venus_y(t: Double): Double {
        var venus_y_0 = 0.0;
        venus_y_0+=     0.72324643689*Math.cos( 1.60573808356 +      10213.285546211 * t);

        return venus_y_0;
    }

    @JvmStatic private fun venus_z(t: Double): Double {
        var venus_z_0 = 0.0;
        venus_z_0+=     0.04282979819*Math.cos( 0.26703856471 +      10213.285546211 * t);

        return venus_z_0;
    }

}
