//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

object VSOP87B_Pico_Velocities{
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
        earth_l_0+=-Math.pow(t,0.0)*     0.03341656453*     6283.0758499914*Math.sin( 4.66925680415 +      6283.0758499914 * t);
        earth_l_0+=-Math.pow(t,0.0)*     1.75347045673*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var earth_l_1 = 0.0;
        earth_l_1+=Math.pow(t,0.0)*1.0*   6283.0758499914*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*   6283.0758499914*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return earth_l_1+earth_l_0;
    }

    @JvmStatic private fun earth_r(t: Double): Double {
        var earth_r_0 = 0.0;
        earth_r_0+=-Math.pow(t,0.0)*     0.01670699632*     6283.0758499914*Math.sin( 3.09846350258 +      6283.0758499914 * t);
        earth_r_0+=-Math.pow(t,0.0)*     1.00013988784*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return earth_r_0;
    }

    @JvmStatic private fun jupiter_b(t: Double): Double {
        var jupiter_b_0 = 0.0;
        jupiter_b_0+=-Math.pow(t,0.0)*     0.02268615702*      529.6909650946*Math.sin( 3.55852606721 +       529.6909650946 * t);

        return jupiter_b_0;
    }

    @JvmStatic private fun jupiter_l(t: Double): Double {
        var jupiter_l_0 = 0.0;
        jupiter_l_0+=-Math.pow(t,0.0)*     0.09695898719*      529.6909650946*Math.sin( 5.06191793158 +       529.6909650946 * t);
        jupiter_l_0+=-Math.pow(t,0.0)*     0.59954691494*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var jupiter_l_1 = 0.0;
        jupiter_l_1+=Math.pow(t,0.0)*1.0*   529.69096508814*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*   529.69096508814*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return jupiter_l_1+jupiter_l_0;
    }

    @JvmStatic private fun jupiter_r(t: Double): Double {
        var jupiter_r_0 = 0.0;
        jupiter_r_0+=-Math.pow(t,0.0)*     0.25209327119*      529.6909650946*Math.sin( 3.49108639871 +       529.6909650946 * t);
        jupiter_r_0+=-Math.pow(t,0.0)*     5.20887429326*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var jupiter_r_1 = 0.0;
        jupiter_r_1+=Math.pow(t,0.0)*1.0*      0.0127180152*Math.cos( 2.64937512894 +       529.6909650946*t)-Math.pow(t,1.0)*      0.0127180152*      529.6909650946*Math.sin( 2.64937512894 +       529.6909650946 * t);

        return jupiter_r_1+jupiter_r_0;
    }

    @JvmStatic private fun mars_b(t: Double): Double {
        var mars_b_0 = 0.0;
        mars_b_0+=-Math.pow(t,0.0)*     0.03197134986*     3340.6124266998*Math.sin( 3.76832042431 +      3340.6124266998 * t);

        return mars_b_0;
    }

    @JvmStatic private fun mars_l(t: Double): Double {
        var mars_l_0 = 0.0;
        mars_l_0+=-Math.pow(t,0.0)*     0.01108216816*     6681.2248533996*Math.sin( 5.40099836344 +      6681.2248533996 * t);
        mars_l_0+=-Math.pow(t,0.0)*     0.18656368093*     3340.6124266998*Math.sin(  5.0503710027 +      3340.6124266998 * t);
        mars_l_0+=-Math.pow(t,0.0)*     6.20347711581*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var mars_l_1 = 0.0;
        mars_l_1+=Math.pow(t,0.0)*1.0*     0.01457554523*Math.cos( 3.60433733236 +      3340.6124266998*t)-Math.pow(t,1.0)*     0.01457554523*     3340.6124266998*Math.sin( 3.60433733236 +      3340.6124266998 * t);
        mars_l_1+=Math.pow(t,0.0)*1.0*  3340.61242700512*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*  3340.61242700512*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return mars_l_1+mars_l_0;
    }

    @JvmStatic private fun mars_r(t: Double): Double {
        var mars_r_0 = 0.0;
        mars_r_0+=-Math.pow(t,0.0)*      0.1418495316*     3340.6124266998*Math.sin( 3.47971283528 +      3340.6124266998 * t);
        mars_r_0+=-Math.pow(t,0.0)*     1.53033488271*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var mars_r_1 = 0.0;
        mars_r_1+=Math.pow(t,0.0)*1.0*     0.01107433345*Math.cos( 2.03250524857 +      3340.6124266998*t)-Math.pow(t,1.0)*     0.01107433345*     3340.6124266998*Math.sin( 2.03250524857 +      3340.6124266998 * t);

        return mars_r_1+mars_r_0;
    }

    @JvmStatic private fun mercury_b(t: Double): Double {
        var mercury_b_0 = 0.0;
        mercury_b_0+=-Math.pow(t,0.0)*     0.01222839532*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        mercury_b_0+=-Math.pow(t,0.0)*     0.02388076996*    52175.8062831484*Math.sin( 5.03738959686 +     52175.8062831484 * t);
        mercury_b_0+=-Math.pow(t,0.0)*     0.11737528961*    26087.9031415742*Math.sin( 1.98357498767 +     26087.9031415742 * t);

        return mercury_b_0;
    }

    @JvmStatic private fun mercury_l(t: Double): Double {
        var mercury_l_0 = 0.0;
        mercury_l_0+=-Math.pow(t,0.0)*       0.050462942*    52175.8062831484*Math.sin( 4.47785489551 +     52175.8062831484 * t);
        mercury_l_0+=-Math.pow(t,0.0)*     0.40989414977*    26087.9031415742*Math.sin( 1.48302034195 +     26087.9031415742 * t);
        mercury_l_0+=-Math.pow(t,0.0)*     4.40250710144*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var mercury_l_1 = 0.0;
        mercury_l_1+=Math.pow(t,0.0)*1.0*     0.01131199811*Math.cos( 6.21874197797 +     26087.9031415742*t)-Math.pow(t,1.0)*     0.01131199811*    26087.9031415742*Math.sin( 6.21874197797 +     26087.9031415742 * t);
        mercury_l_1+=Math.pow(t,0.0)*1.0* 26087.90313685529*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)* 26087.90313685529*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return mercury_l_1+mercury_l_0;
    }

    @JvmStatic private fun mercury_r(t: Double): Double {
        var mercury_r_0 = 0.0;
        mercury_r_0+=-Math.pow(t,0.0)*     0.07834131818*    26087.9031415742*Math.sin( 6.19233722598 +     26087.9031415742 * t);
        mercury_r_0+=-Math.pow(t,0.0)*     0.39528271651*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return mercury_r_0;
    }

    @JvmStatic private fun neptune_b(t: Double): Double {
        var neptune_b_0 = 0.0;
        neptune_b_0+=-Math.pow(t,0.0)*     0.03088622933*       38.1330356378*Math.sin( 1.44104372644 +        38.1330356378 * t);

        return neptune_b_0;
    }

    @JvmStatic private fun neptune_l(t: Double): Double {
        var neptune_l_0 = 0.0;
        neptune_l_0+=-Math.pow(t,0.0)*     0.01019727652*        1.4844727083*Math.sin( 0.48580922867 +         1.4844727083 * t);
        neptune_l_0+=-Math.pow(t,0.0)*      0.0179847553*       38.1330356378*Math.sin(  2.9010127389 +        38.1330356378 * t);
        neptune_l_0+=-Math.pow(t,0.0)*     5.31188633046*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var neptune_l_1 = 0.0;
        neptune_l_1+=Math.pow(t,0.0)*1.0*    38.13303563957*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*    38.13303563957*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return neptune_l_1+neptune_l_0;
    }

    @JvmStatic private fun neptune_r(t: Double): Double {
        var neptune_r_0 = 0.0;
        neptune_r_0+=-Math.pow(t,0.0)*     0.01691764014*       36.6485629295*Math.sin( 3.25186135653 +        36.6485629295 * t);
        neptune_r_0+=-Math.pow(t,0.0)*     0.27062259632*       38.1330356378*Math.sin( 1.32999459377 +        38.1330356378 * t);
        neptune_r_0+=-Math.pow(t,0.0)*    30.07013205828*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return neptune_r_0;
    }

    @JvmStatic private fun saturn_b(t: Double): Double {
        var saturn_b_0 = 0.0;
        saturn_b_0+=-Math.pow(t,0.0)*     0.04330678039*       213.299095438*Math.sin( 3.60284428399 +        213.299095438 * t);

        return saturn_b_0;
    }

    @JvmStatic private fun saturn_l(t: Double): Double {
        var saturn_l_0 = 0.0;
        saturn_l_0+=-Math.pow(t,0.0)*     0.01414150957*        7.1135470008*Math.sin( 4.58581516874 +         7.1135470008 * t);
        saturn_l_0+=-Math.pow(t,0.0)*     0.11107659762*       213.299095438*Math.sin( 3.96205090159 +        213.299095438 * t);
        saturn_l_0+=-Math.pow(t,0.0)*     0.87401354025*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var saturn_l_1 = 0.0;
        saturn_l_1+=Math.pow(t,0.0)*1.0*     0.01297370862*Math.cos( 1.82834923978 +        213.299095438*t)-Math.pow(t,1.0)*     0.01297370862*       213.299095438*Math.sin( 1.82834923978 +        213.299095438 * t);
        saturn_l_1+=Math.pow(t,0.0)*1.0*    213.2990952169*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*    213.2990952169*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return saturn_l_1+saturn_l_0;
    }

    @JvmStatic private fun saturn_r(t: Double): Double {
        var saturn_r_0 = 0.0;
        saturn_r_0+=-Math.pow(t,0.0)*     0.01464663929*       426.598190876*Math.sin( 1.64763042902 +        426.598190876 * t);
        saturn_r_0+=-Math.pow(t,0.0)*     0.01873679867*      206.1855484372*Math.sin(  5.2354960466 +       206.1855484372 * t);
        saturn_r_0+=-Math.pow(t,0.0)*     0.52921382865*       213.299095438*Math.sin( 2.39226219573 +        213.299095438 * t);
        saturn_r_0+=-Math.pow(t,0.0)*     9.55758135486*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var saturn_r_1 = 0.0;
        saturn_r_1+=Math.pow(t,0.0)*1.0*      0.0618298134*Math.cos(  0.2584351148 +        213.299095438*t)-Math.pow(t,1.0)*      0.0618298134*       213.299095438*Math.sin(  0.2584351148 +        213.299095438 * t);

        return saturn_r_1+saturn_r_0;
    }

    @JvmStatic private fun uranus_b(t: Double): Double {
        var uranus_b_0 = 0.0;
        uranus_b_0+=-Math.pow(t,0.0)*     0.01346277648*       74.7815985673*Math.sin( 2.61877810547 +        74.7815985673 * t);

        return uranus_b_0;
    }

    @JvmStatic private fun uranus_l(t: Double): Double {
        var uranus_l_0 = 0.0;
        uranus_l_0+=-Math.pow(t,0.0)*     0.01504247898*        1.4844727083*Math.sin(  3.6271926092 +         1.4844727083 * t);
        uranus_l_0+=-Math.pow(t,0.0)*     0.09260408234*       74.7815985673*Math.sin( 0.89106421507 +        74.7815985673 * t);
        uranus_l_0+=-Math.pow(t,0.0)*     5.48129294297*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var uranus_l_1 = 0.0;
        uranus_l_1+=Math.pow(t,0.0)*1.0*     74.7815986091*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)*     74.7815986091*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return uranus_l_1+uranus_l_0;
    }

    @JvmStatic private fun uranus_r(t: Double): Double {
        var uranus_r_0 = 0.0;
        uranus_r_0+=-Math.pow(t,0.0)*      0.0205565386*      149.5631971346*Math.sin(  1.7829515933 +       149.5631971346 * t);
        uranus_r_0+=-Math.pow(t,0.0)*     0.03440836062*        73.297125859*Math.sin( 0.32836099706 +         73.297125859 * t);
        uranus_r_0+=-Math.pow(t,0.0)*     0.88784984413*       74.7815985673*Math.sin( 5.60377527014 +        74.7815985673 * t);
        uranus_r_0+=-Math.pow(t,0.0)*    19.21264847206*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var uranus_r_1 = 0.0;
        uranus_r_1+=Math.pow(t,0.0)*1.0*     0.01479896629*Math.cos( 3.67205697578 +        74.7815985673*t)-Math.pow(t,1.0)*     0.01479896629*       74.7815985673*Math.sin( 3.67205697578 +        74.7815985673 * t);

        return uranus_r_1+uranus_r_0;
    }

    @JvmStatic private fun venus_b(t: Double): Double {
        var venus_b_0 = 0.0;
        venus_b_0+=-Math.pow(t,0.0)*     0.05923638472*     10213.285546211*Math.sin( 0.26702775812 +      10213.285546211 * t);

        return venus_b_0;
    }

    @JvmStatic private fun venus_l(t: Double): Double {
        var venus_l_0 = 0.0;
        venus_l_0+=-Math.pow(t,0.0)*     0.01353968419*     10213.285546211*Math.sin( 5.59313319619 +      10213.285546211 * t);
        venus_l_0+=-Math.pow(t,0.0)*     3.17614666774*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        var venus_l_1 = 0.0;
        venus_l_1+=Math.pow(t,0.0)*1.0* 10213.28554621638*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1.0)* 10213.28554621638*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return venus_l_1+venus_l_0;
    }

    @JvmStatic private fun venus_r(t: Double): Double {
        var venus_r_0 = 0.0;
        venus_r_0+=-Math.pow(t,0.0)*     0.72334820891*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return venus_r_0;
    }

}
