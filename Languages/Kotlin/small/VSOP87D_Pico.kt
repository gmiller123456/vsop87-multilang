//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

object VSOP87D_Pico{
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
        return 0.0;
    }

    @JvmStatic private fun earth_l(t: Double): Double {
        var earth_l_0 = 0.0;
        earth_l_0+=     0.03341656456*Math.cos( 4.66925680417 +      6283.0758499914 * t);
        earth_l_0+=     1.75347045673*Math.cos(           0.0 +                  0.0 * t);

        var earth_l_1 = 0.0;
        earth_l_1+=  6283.31966747491*Math.cos(           0.0 +                  0.0 * t);
        earth_l_1=earth_l_1*t;

        return earth_l_1+earth_l_0;
    }

    @JvmStatic private fun earth_r(t: Double): Double {
        var earth_r_0 = 0.0;
        earth_r_0+=     0.01670699626*Math.cos( 3.09846350771 +      6283.0758499914 * t);
        earth_r_0+=     1.00013988799*Math.cos(           0.0 +                  0.0 * t);

        return earth_r_0;
    }

    @JvmStatic private fun jupiter_b(t: Double): Double {
        var jupiter_b_0 = 0.0;
        jupiter_b_0+=     0.02268615703*Math.cos( 3.55852606718 +       529.6909650946 * t);

        return jupiter_b_0;
    }

    @JvmStatic private fun jupiter_l(t: Double): Double {
        var jupiter_l_0 = 0.0;
        jupiter_l_0+=     0.09695898711*Math.cos( 5.06191793105 +       529.6909650946 * t);
        jupiter_l_0+=     0.59954691495*Math.cos(           0.0 +                  0.0 * t);

        var jupiter_l_1 = 0.0;
        jupiter_l_1+=   529.93480757497*Math.cos(           0.0 +                  0.0 * t);
        jupiter_l_1=jupiter_l_1*t;

        return jupiter_l_1+jupiter_l_0;
    }

    @JvmStatic private fun jupiter_r(t: Double): Double {
        var jupiter_r_0 = 0.0;
        jupiter_r_0+=      0.2520932702*Math.cos( 3.49108640015 +       529.6909650946 * t);
        jupiter_r_0+=     5.20887429471*Math.cos(           0.0 +                  0.0 * t);

        var jupiter_r_1 = 0.0;
        jupiter_r_1+=     0.01271801596*Math.cos( 2.64937511122 +       529.6909650946 * t);
        jupiter_r_1=jupiter_r_1*t;

        return jupiter_r_1+jupiter_r_0;
    }

    @JvmStatic private fun mars_b(t: Double): Double {
        var mars_b_0 = 0.0;
        mars_b_0+=     0.03197134986*Math.cos( 3.76832042432 +      3340.6124266998 * t);

        return mars_b_0;
    }

    @JvmStatic private fun mars_l(t: Double): Double {
        var mars_l_0 = 0.0;
        mars_l_0+=     0.01108216792*Math.cos( 5.40099836958 +      6681.2248533996 * t);
        mars_l_0+=       0.186563681*Math.cos( 5.05037100303 +      3340.6124266998 * t);
        mars_l_0+=     6.20347711583*Math.cos(           0.0 +                  0.0 * t);

        var mars_l_1 = 0.0;
        mars_l_1+=     0.01458227051*Math.cos( 3.60426053609 +      3340.6124266998 * t);
        mars_l_1+=  3340.85627474342*Math.cos(           0.0 +                  0.0 * t);
        mars_l_1=mars_l_1*t;

        return mars_l_1+mars_l_0;
    }

    @JvmStatic private fun mars_r(t: Double): Double {
        var mars_r_0 = 0.0;
        mars_r_0+=     0.14184953153*Math.cos( 3.47971283519 +      3340.6124266998 * t);
        mars_r_0+=     1.53033488276*Math.cos(           0.0 +                  0.0 * t);

        var mars_r_1 = 0.0;
        mars_r_1+=      0.0110743334*Math.cos(  2.0325052495 +      3340.6124266998 * t);
        mars_r_1=mars_r_1*t;

        return mars_r_1+mars_r_0;
    }

    @JvmStatic private fun mercury_b(t: Double): Double {
        var mercury_b_0 = 0.0;
        mercury_b_0+=     0.01222839532*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_b_0+=     0.02388076996*Math.cos( 5.03738959685 +     52175.8062831484 * t);
        mercury_b_0+=     0.11737528962*Math.cos( 1.98357498767 +     26087.9031415742 * t);

        return mercury_b_0;
    }

    @JvmStatic private fun mercury_l(t: Double): Double {
        var mercury_l_0 = 0.0;
        mercury_l_0+=     0.05046294199*Math.cos(  4.4778548954 +     52175.8062831484 * t);
        mercury_l_0+=     0.40989414976*Math.cos( 1.48302034194 +     26087.9031415742 * t);
        mercury_l_0+=     4.40250710144*Math.cos(           0.0 +                  0.0 * t);

        var mercury_l_1 = 0.0;
        mercury_l_1+=     0.01126007832*Math.cos( 6.21703970996 +     26087.9031415742 * t);
        mercury_l_1+= 26088.14706222746*Math.cos(           0.0 +                  0.0 * t);
        mercury_l_1=mercury_l_1*t;

        return mercury_l_1+mercury_l_0;
    }

    @JvmStatic private fun mercury_r(t: Double): Double {
        var mercury_r_0 = 0.0;
        mercury_r_0+=     0.07834131817*Math.cos( 6.19233722599 +     26087.9031415742 * t);
        mercury_r_0+=     0.39528271652*Math.cos(           0.0 +                  0.0 * t);

        return mercury_r_0;
    }

    @JvmStatic private fun neptune_b(t: Double): Double {
        var neptune_b_0 = 0.0;
        neptune_b_0+=     0.03088622933*Math.cos( 1.44104372626 +        38.1330356378 * t);

        return neptune_b_0;
    }

    @JvmStatic private fun neptune_l(t: Double): Double {
        var neptune_l_0 = 0.0;
        neptune_l_0+=     0.01019727662*Math.cos(  0.4858092366 +         1.4844727083 * t);
        neptune_l_0+=     0.01798475509*Math.cos(  2.9010127305 +        38.1330356378 * t);
        neptune_l_0+=     5.31188633047*Math.cos(           0.0 +                  0.0 * t);

        var neptune_l_1 = 0.0;
        neptune_l_1+=    38.37687716731*Math.cos(           0.0 +                  0.0 * t);
        neptune_l_1=neptune_l_1*t;

        return neptune_l_1+neptune_l_0;
    }

    @JvmStatic private fun neptune_r(t: Double): Double {
        var neptune_r_0 = 0.0;
        neptune_r_0+=     0.01691764281*Math.cos( 3.25186138896 +        36.6485629295 * t);
        neptune_r_0+=      0.2706225949*Math.cos(  1.3299945893 +        38.1330356378 * t);
        neptune_r_0+=    30.07013206102*Math.cos(           0.0 +                  0.0 * t);

        return neptune_r_0;
    }

    @JvmStatic private fun saturn_b(t: Double): Double {
        var saturn_b_0 = 0.0;
        saturn_b_0+=      0.0433067804*Math.cos( 3.60284428399 +        213.299095438 * t);

        return saturn_b_0;
    }

    @JvmStatic private fun saturn_l(t: Double): Double {
        var saturn_l_0 = 0.0;
        saturn_l_0+=     0.01414150958*Math.cos( 4.58581515873 +         7.1135470008 * t);
        saturn_l_0+=      0.1110765978*Math.cos( 3.96205090194 +        213.299095438 * t);
        saturn_l_0+=     0.87401354029*Math.cos(           0.0 +                  0.0 * t);

        var saturn_l_1 = 0.0;
        saturn_l_1+=     0.01296855005*Math.cos( 1.82820544701 +        213.299095438 * t);
        saturn_l_1+=   213.54295595986*Math.cos(           0.0 +                  0.0 * t);
        saturn_l_1=saturn_l_1*t;

        return saturn_l_1+saturn_l_0;
    }

    @JvmStatic private fun saturn_r(t: Double): Double {
        var saturn_r_0 = 0.0;
        saturn_r_0+=     0.01464663959*Math.cos( 1.64763045468 +        426.598190876 * t);
        saturn_r_0+=     0.01873679934*Math.cos( 5.23549605091 +       206.1855484372 * t);
        saturn_r_0+=     0.52921382465*Math.cos( 2.39226219733 +        213.299095438 * t);
        saturn_r_0+=     9.55758135801*Math.cos(           0.0 +                  0.0 * t);

        var saturn_r_1 = 0.0;
        saturn_r_1+=     0.06182981282*Math.cos( 0.25843515034 +        213.299095438 * t);
        saturn_r_1=saturn_r_1*t;

        return saturn_r_1+saturn_r_0;
    }

    @JvmStatic private fun uranus_b(t: Double): Double {
        var uranus_b_0 = 0.0;
        uranus_b_0+=     0.01346277639*Math.cos( 2.61877810545 +        74.7815985673 * t);

        return uranus_b_0;
    }

    @JvmStatic private fun uranus_l(t: Double): Double {
        var uranus_l_0 = 0.0;
        uranus_l_0+=     0.01504247826*Math.cos( 3.62719262195 +         1.4844727083 * t);
        uranus_l_0+=     0.09260408252*Math.cos(  0.8910642153 +        74.7815985673 * t);
        uranus_l_0+=     5.48129294299*Math.cos(           0.0 +                  0.0 * t);

        var uranus_l_1 = 0.0;
        uranus_l_1+=    75.02543121646*Math.cos(           0.0 +                  0.0 * t);
        uranus_l_1=uranus_l_1*t;

        return uranus_l_1+uranus_l_0;
    }

    @JvmStatic private fun uranus_r(t: Double): Double {
        var uranus_r_0 = 0.0;
        uranus_r_0+=     0.02055653495*Math.cos( 1.78295170028 +       149.5631971346 * t);
        uranus_r_0+=     0.03440835545*Math.cos( 0.32836098991 +         73.297125859 * t);
        uranus_r_0+=     0.88784984055*Math.cos( 5.60377526994 +        74.7815985673 * t);
        uranus_r_0+=    19.21264847881*Math.cos(           0.0 +                  0.0 * t);

        var uranus_r_1 = 0.0;
        uranus_r_1+=      0.0147989637*Math.cos( 3.67205705317 +        74.7815985673 * t);
        uranus_r_1=uranus_r_1*t;

        return uranus_r_1+uranus_r_0;
    }

    @JvmStatic private fun venus_b(t: Double): Double {
        var venus_b_0 = 0.0;
        venus_b_0+=     0.05923638472*Math.cos( 0.26702775813 +      10213.285546211 * t);

        return venus_b_0;
    }

    @JvmStatic private fun venus_l(t: Double): Double {
        var venus_l_0 = 0.0;
        venus_l_0+=     0.01353968419*Math.cos( 5.59313319619 +      10213.285546211 * t);
        venus_l_0+=     3.17614666774*Math.cos(           0.0 +                  0.0 * t);

        var venus_l_1 = 0.0;
        venus_l_1+= 10213.52943052898*Math.cos(           0.0 +                  0.0 * t);
        venus_l_1=venus_l_1*t;

        return venus_l_1+venus_l_0;
    }

    @JvmStatic private fun venus_r(t: Double): Double {
        var venus_r_0 = 0.0;
        venus_r_0+=     0.72334820905*Math.cos(           0.0 +                  0.0 * t);

        return venus_r_0;
    }

}
