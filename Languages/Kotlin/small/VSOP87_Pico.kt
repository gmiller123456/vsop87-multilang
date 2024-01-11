//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

object VSOP87_Pico{
    @JvmStatic fun getEmb(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=emb_a(t);
        temp[1]=emb_h(t);
        temp[2]=emb_k(t);
        temp[3]=emb_l(t);
        temp[4]=emb_p(t);
        temp[5]=emb_q(t);
        return temp;
    }

    @JvmStatic fun getJupiter(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=jupiter_a(t);
        temp[1]=jupiter_h(t);
        temp[2]=jupiter_k(t);
        temp[3]=jupiter_l(t);
        temp[4]=jupiter_p(t);
        temp[5]=jupiter_q(t);
        return temp;
    }

    @JvmStatic fun getMars(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=mars_a(t);
        temp[1]=mars_h(t);
        temp[2]=mars_k(t);
        temp[3]=mars_l(t);
        temp[4]=mars_p(t);
        temp[5]=mars_q(t);
        return temp;
    }

    @JvmStatic fun getMercury(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=mercury_a(t);
        temp[1]=mercury_h(t);
        temp[2]=mercury_k(t);
        temp[3]=mercury_l(t);
        temp[4]=mercury_p(t);
        temp[5]=mercury_q(t);
        return temp;
    }

    @JvmStatic fun getNeptune(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=neptune_a(t);
        temp[1]=neptune_h(t);
        temp[2]=neptune_k(t);
        temp[3]=neptune_l(t);
        temp[4]=neptune_p(t);
        temp[5]=neptune_q(t);
        return temp;
    }

    @JvmStatic fun getSaturn(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=saturn_a(t);
        temp[1]=saturn_h(t);
        temp[2]=saturn_k(t);
        temp[3]=saturn_l(t);
        temp[4]=saturn_p(t);
        temp[5]=saturn_q(t);
        return temp;
    }

    @JvmStatic fun getUranus(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=uranus_a(t);
        temp[1]=uranus_h(t);
        temp[2]=uranus_k(t);
        temp[3]=uranus_l(t);
        temp[4]=uranus_p(t);
        temp[5]=uranus_q(t);
        return temp;
    }

    @JvmStatic fun getVenus(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=venus_a(t);
        temp[1]=venus_h(t);
        temp[2]=venus_k(t);
        temp[3]=venus_l(t);
        temp[4]=venus_p(t);
        temp[5]=venus_q(t);
        return temp;
    }

    @JvmStatic private fun emb_a(t: Double): Double {
        var emb_a_0 = 0.0;
        emb_a_0+=     1.00000101778*Math.cos(           0.0 +                  0.0 * t);

        return emb_a_0;
    }

    @JvmStatic private fun emb_h(t: Double): Double {
        var emb_h_0 = 0.0;
        emb_h_0+=     0.01628447663*Math.cos(           0.0 +                  0.0 * t);

        return emb_h_0;
    }

    @JvmStatic private fun emb_k(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun emb_l(t: Double): Double {
        var emb_l_0 = 0.0;
        emb_l_0+=     1.75347045953*Math.cos(           0.0 +                  0.0 * t);

        var emb_l_1 = 0.0;
        emb_l_1+=   6283.0758499914*Math.cos(           0.0 +                  0.0 * t);
        emb_l_1=emb_l_1*t;

        return emb_l_1+emb_l_0;
    }

    @JvmStatic private fun emb_p(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun emb_q(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun jupiter_a(t: Double): Double {
        var jupiter_a_0 = 0.0;
        jupiter_a_0+=     5.20260319132*Math.cos(           0.0 +                  0.0 * t);

        return jupiter_a_0;
    }

    @JvmStatic private fun jupiter_h(t: Double): Double {
        var jupiter_h_0 = 0.0;
        jupiter_h_0+=     0.01200385748*Math.cos(           0.0 +                  0.0 * t);

        return jupiter_h_0;
    }

    @JvmStatic private fun jupiter_k(t: Double): Double {
        var jupiter_k_0 = 0.0;
        jupiter_k_0+=     0.04698572124*Math.cos(           0.0 +                  0.0 * t);

        return jupiter_k_0;
    }

    @JvmStatic private fun jupiter_l(t: Double): Double {
        var jupiter_l_0 = 0.0;
        jupiter_l_0+=     0.59954649739*Math.cos(           0.0 +                  0.0 * t);

        var jupiter_l_1 = 0.0;
        jupiter_l_1+=    529.6909650946*Math.cos(           0.0 +                  0.0 * t);
        jupiter_l_1=jupiter_l_1*t;

        return jupiter_l_1+jupiter_l_0;
    }

    @JvmStatic private fun jupiter_p(t: Double): Double {
        var jupiter_p_0 = 0.0;
        jupiter_p_0+=     0.01118377157*Math.cos(           0.0 +                  0.0 * t);

        return jupiter_p_0;
    }

    @JvmStatic private fun jupiter_q(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun mars_a(t: Double): Double {
        var mars_a_0 = 0.0;
        mars_a_0+=     1.52367934191*Math.cos(           0.0 +                  0.0 * t);

        return mars_a_0;
    }

    @JvmStatic private fun mars_h(t: Double): Double {
        var mars_h_0 = 0.0;
        mars_h_0+=     0.03789973236*Math.cos( 3.14159265359 +                  0.0 * t);

        return mars_h_0;
    }

    @JvmStatic private fun mars_k(t: Double): Double {
        var mars_k_0 = 0.0;
        mars_k_0+=     0.08536560252*Math.cos(           0.0 +                  0.0 * t);

        return mars_k_0;
    }

    @JvmStatic private fun mars_l(t: Double): Double {
        var mars_l_0 = 0.0;
        mars_l_0+=     6.20347611291*Math.cos(           0.0 +                  0.0 * t);

        var mars_l_1 = 0.0;
        mars_l_1+=  3340.61242669981*Math.cos(           0.0 +                  0.0 * t);
        mars_l_1=mars_l_1*t;

        return mars_l_1+mars_l_0;
    }

    @JvmStatic private fun mars_p(t: Double): Double {
        var mars_p_0 = 0.0;
        mars_p_0+=     0.01228449307*Math.cos(           0.0 +                  0.0 * t);

        return mars_p_0;
    }

    @JvmStatic private fun mars_q(t: Double): Double {
        var mars_q_0 = 0.0;
        mars_q_0+=     0.01047042574*Math.cos(           0.0 +                  0.0 * t);

        return mars_q_0;
    }

    @JvmStatic private fun mercury_a(t: Double): Double {
        var mercury_a_0 = 0.0;
        mercury_a_0+=     0.38709830982*Math.cos(           0.0 +                  0.0 * t);

        return mercury_a_0;
    }

    @JvmStatic private fun mercury_h(t: Double): Double {
        var mercury_h_0 = 0.0;
        mercury_h_0+=     0.20072331368*Math.cos(           0.0 +                  0.0 * t);

        return mercury_h_0;
    }

    @JvmStatic private fun mercury_k(t: Double): Double {
        var mercury_k_0 = 0.0;
        mercury_k_0+=      0.0446605976*Math.cos(           0.0 +                  0.0 * t);

        return mercury_k_0;
    }

    @JvmStatic private fun mercury_l(t: Double): Double {
        var mercury_l_0 = 0.0;
        mercury_l_0+=      4.4026088424*Math.cos(           0.0 +                  0.0 * t);

        var mercury_l_1 = 0.0;
        mercury_l_1+=  26087.9031415742*Math.cos(           0.0 +                  0.0 * t);
        mercury_l_1=mercury_l_1*t;

        return mercury_l_1+mercury_l_0;
    }

    @JvmStatic private fun mercury_p(t: Double): Double {
        var mercury_p_0 = 0.0;
        mercury_p_0+=     0.04563550461*Math.cos(           0.0 +                  0.0 * t);

        return mercury_p_0;
    }

    @JvmStatic private fun mercury_q(t: Double): Double {
        var mercury_q_0 = 0.0;
        mercury_q_0+=     0.04061563384*Math.cos(           0.0 +                  0.0 * t);

        return mercury_q_0;
    }

    @JvmStatic private fun neptune_a(t: Double): Double {
        var neptune_a_0 = 0.0;
        neptune_a_0+=     0.03597274341*Math.cos( 1.84552690821 +       175.1660598002 * t);
        neptune_a_0+=     0.14818172119*Math.cos( 1.57105922541 +       491.5579294568 * t);
        neptune_a_0+=    30.11038686942*Math.cos(           0.0 +                  0.0 * t);

        return neptune_a_0;
    }

    @JvmStatic private fun neptune_h(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun neptune_k(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun neptune_l(t: Double): Double {
        var neptune_l_0 = 0.0;
        neptune_l_0+=     0.01017628072*Math.cos( 0.48586478491 +         1.4844727083 * t);
        neptune_l_0+=     5.31188628676*Math.cos(           0.0 +                  0.0 * t);

        var neptune_l_1 = 0.0;
        neptune_l_1+=     38.1330356378*Math.cos(           0.0 +                  0.0 * t);
        neptune_l_1=neptune_l_1*t;

        return neptune_l_1+neptune_l_0;
    }

    @JvmStatic private fun neptune_p(t: Double): Double {
        var neptune_p_0 = 0.0;
        neptune_p_0+=     0.01151683985*Math.cos(           0.0 +                  0.0 * t);

        return neptune_p_0;
    }

    @JvmStatic private fun neptune_q(t: Double): Double {
        var neptune_q_0 = 0.0;
        neptune_q_0+=     0.01029147819*Math.cos( 3.14159265359 +                  0.0 * t);

        return neptune_q_0;
    }

    @JvmStatic private fun saturn_a(t: Double): Double {
        var saturn_a_0 = 0.0;
        saturn_a_0+=     0.03363448736*Math.cos(  6.0097367346 +       316.3918696566 * t);
        saturn_a_0+=     9.55490959574*Math.cos(           0.0 +                  0.0 * t);

        return saturn_a_0;
    }

    @JvmStatic private fun saturn_h(t: Double): Double {
        var saturn_h_0 = 0.0;
        saturn_h_0+=     0.05542964254*Math.cos(           0.0 +                  0.0 * t);

        return saturn_h_0;
    }

    @JvmStatic private fun saturn_k(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun saturn_l(t: Double): Double {
        var saturn_l_0 = 0.0;
        saturn_l_0+=     0.01411655077*Math.cos( 4.58553469006 +         7.1135470008 * t);
        saturn_l_0+=      0.8740167565*Math.cos(           0.0 +                  0.0 * t);

        var saturn_l_1 = 0.0;
        saturn_l_1+=     213.299095438*Math.cos(           0.0 +                  0.0 * t);
        saturn_l_1=saturn_l_1*t;

        return saturn_l_1+saturn_l_0;
    }

    @JvmStatic private fun saturn_p(t: Double): Double {
        var saturn_p_0 = 0.0;
        saturn_p_0+=     0.01989147301*Math.cos(           0.0 +                  0.0 * t);

        return saturn_p_0;
    }

    @JvmStatic private fun saturn_q(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun uranus_a(t: Double): Double {
        var uranus_a_0 = 0.0;
        uranus_a_0+=     0.02068375131*Math.cos( 1.67626096637 +       138.5174968707 * t);
        uranus_a_0+=      0.0803047624*Math.cos( 1.40140954803 +       454.9093665273 * t);
        uranus_a_0+=    19.21844606178*Math.cos(           0.0 +                  0.0 * t);

        return uranus_a_0;
    }

    @JvmStatic private fun uranus_h(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun uranus_k(t: Double): Double {
        var uranus_k_0 = 0.0;
        uranus_k_0+=     0.04595132376*Math.cos( 3.14159265359 +                  0.0 * t);

        return uranus_k_0;
    }

    @JvmStatic private fun uranus_l(t: Double): Double {
        var uranus_l_0 = 0.0;
        uranus_l_0+=     0.01503941337*Math.cos( 3.62721239702 +         1.4844727083 * t);
        uranus_l_0+=     5.48129387159*Math.cos(           0.0 +                  0.0 * t);

        var uranus_l_1 = 0.0;
        uranus_l_1+=     74.7815985673*Math.cos(           0.0 +                  0.0 * t);
        uranus_l_1=uranus_l_1*t;

        return uranus_l_1+uranus_l_0;
    }

    @JvmStatic private fun uranus_p(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun uranus_q(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun venus_a(t: Double): Double {
        var venus_a_0 = 0.0;
        venus_a_0+=     0.72332981996*Math.cos(           0.0 +                  0.0 * t);

        return venus_a_0;
    }

    @JvmStatic private fun venus_h(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun venus_k(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun venus_l(t: Double): Double {
        var venus_l_0 = 0.0;
        venus_l_0+=     3.17614669689*Math.cos(           0.0 +                  0.0 * t);

        var venus_l_1 = 0.0;
        venus_l_1+=   10213.285546211*Math.cos(           0.0 +                  0.0 * t);
        venus_l_1=venus_l_1*t;

        return venus_l_1+venus_l_0;
    }

    @JvmStatic private fun venus_p(t: Double): Double {
        var venus_p_0 = 0.0;
        venus_p_0+=     0.02882285775*Math.cos(           0.0 +                  0.0 * t);

        return venus_p_0;
    }

    @JvmStatic private fun venus_q(t: Double): Double {
        return 0.0;
    }

}
