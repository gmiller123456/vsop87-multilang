//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

object VSOP87_Nano{
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
        var emb_k_0 = 0.0;
        emb_k_0+=      0.0037408165*Math.cos( 3.14159265359 +                  0.0 * t);

        return emb_k_0;
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
        var emb_q_1 = 0.0;
        emb_q_1+=     0.00113468869*Math.cos( 3.14159265359 +                  0.0 * t);
        emb_q_1=emb_q_1*t;

        return emb_q_1;
    }

    @JvmStatic private fun jupiter_a(t: Double): Double {
        var jupiter_a_0 = 0.0;
        jupiter_a_0+=     5.20260319132*Math.cos(           0.0 +                  0.0 * t);

        return jupiter_a_0;
    }

    @JvmStatic private fun jupiter_h(t: Double): Double {
        var jupiter_h_0 = 0.0;
        jupiter_h_0+=     0.01200385748*Math.cos(           0.0 +                  0.0 * t);

        var jupiter_h_1 = 0.0;
        jupiter_h_1+=      0.0021714936*Math.cos(           0.0 +                  0.0 * t);
        jupiter_h_1=jupiter_h_1*t;

        return jupiter_h_1+jupiter_h_0;
    }

    @JvmStatic private fun jupiter_k(t: Double): Double {
        var jupiter_k_0 = 0.0;
        jupiter_k_0+=     0.04698572124*Math.cos(           0.0 +                  0.0 * t);

        var jupiter_k_1 = 0.0;
        jupiter_k_1+=     0.00113010377*Math.cos(           0.0 +                  0.0 * t);
        jupiter_k_1=jupiter_k_1*t;

        return jupiter_k_1+jupiter_k_0;
    }

    @JvmStatic private fun jupiter_l(t: Double): Double {
        var jupiter_l_0 = 0.0;
        jupiter_l_0+=     0.00573506125*Math.cos(  1.4439630642 +         7.1135470008 * t);
        jupiter_l_0+=     0.59954649739*Math.cos(           0.0 +                  0.0 * t);

        var jupiter_l_1 = 0.0;
        jupiter_l_1+=     0.00228875491*Math.cos( 6.02639570653 +         7.1135470008 * t);
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
        var jupiter_q_0 = 0.0;
        jupiter_q_0+=     0.00206561098*Math.cos( 3.14159265359 +                  0.0 * t);

        return jupiter_q_0;
    }

    @JvmStatic private fun mars_a(t: Double): Double {
        var mars_a_0 = 0.0;
        mars_a_0+=     1.52367934191*Math.cos(           0.0 +                  0.0 * t);

        return mars_a_0;
    }

    @JvmStatic private fun mars_h(t: Double): Double {
        var mars_h_0 = 0.0;
        mars_h_0+=     0.03789973236*Math.cos( 3.14159265359 +                  0.0 * t);

        var mars_h_1 = 0.0;
        mars_h_1+=     0.00624657465*Math.cos(           0.0 +                  0.0 * t);
        mars_h_1=mars_h_1*t;

        return mars_h_1+mars_h_0;
    }

    @JvmStatic private fun mars_k(t: Double): Double {
        var mars_k_0 = 0.0;
        mars_k_0+=     0.08536560252*Math.cos(           0.0 +                  0.0 * t);

        var mars_k_1 = 0.0;
        mars_k_1+=     0.00376330152*Math.cos(           0.0 +                  0.0 * t);
        mars_k_1=mars_k_1*t;

        return mars_k_1+mars_k_0;
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

        var mars_p_1 = 0.0;
        mars_p_1+=     0.00108020083*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_p_1=mars_p_1*t;

        return mars_p_1+mars_p_0;
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

        var mercury_h_1 = 0.0;
        mercury_h_1+=     0.00143750118*Math.cos(           0.0 +                  0.0 * t);
        mercury_h_1=mercury_h_1*t;

        return mercury_h_1+mercury_h_0;
    }

    @JvmStatic private fun mercury_k(t: Double): Double {
        var mercury_k_0 = 0.0;
        mercury_k_0+=      0.0446605976*Math.cos(           0.0 +                  0.0 * t);

        var mercury_k_1 = 0.0;
        mercury_k_1+=     0.00552114624*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_k_1=mercury_k_1*t;

        return mercury_k_1+mercury_k_0;
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

        var mercury_p_1 = 0.0;
        mercury_p_1+=     0.00127633657*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_p_1=mercury_p_1*t;

        return mercury_p_1+mercury_p_0;
    }

    @JvmStatic private fun mercury_q(t: Double): Double {
        var mercury_q_0 = 0.0;
        mercury_q_0+=     0.04061563384*Math.cos(           0.0 +                  0.0 * t);

        return mercury_q_0;
    }

    @JvmStatic private fun neptune_a(t: Double): Double {
        var neptune_a_0 = 0.0;
        neptune_a_0+=     0.00101174992*Math.cos( 2.72476929716 +      6244.9428143536 * t);
        neptune_a_0+=     0.00105687575*Math.cos(  3.4844777292 +         73.297125859 * t);
        neptune_a_0+=     0.00144701407*Math.cos(  3.3696710207 +        453.424893819 * t);
        neptune_a_0+=      0.0018566634*Math.cos( 1.07141029917 +       388.4651552382 * t);
        neptune_a_0+=     0.00462318447*Math.cos( 0.16921610518 +        36.6485629295 * t);
        neptune_a_0+=      0.0069430399*Math.cos( 1.92062235445 +      1021.2488945514 * t);
        neptune_a_0+=     0.00832345688*Math.cos( 5.19528065894 +         1.4844727083 * t);
        neptune_a_0+=     0.03597274341*Math.cos( 1.84552690821 +       175.1660598002 * t);
        neptune_a_0+=     0.14818172119*Math.cos( 1.57105922541 +       491.5579294568 * t);
        neptune_a_0+=    30.11038686942*Math.cos(           0.0 +                  0.0 * t);

        return neptune_a_0;
    }

    @JvmStatic private fun neptune_h(t: Double): Double {
        var neptune_h_0 = 0.0;
        neptune_h_0+=     0.00131043136*Math.cos( 4.11313570675 +        453.424893819 * t);
        neptune_h_0+=     0.00136278888*Math.cos( 3.74103613444 +        38.1330356378 * t);
        neptune_h_0+=     0.00344034784*Math.cos( 5.31201105782 +       529.6909650946 * t);
        neptune_h_0+=     0.00669242413*Math.cos(           0.0 +                  0.0 * t);

        return neptune_h_0;
    }

    @JvmStatic private fun neptune_k(t: Double): Double {
        var neptune_k_0 = 0.0;
        neptune_k_0+=     0.00131042161*Math.cos( 2.54238248127 +        453.424893819 * t);
        neptune_k_0+=      0.0013623298*Math.cos( 5.31190360139 +        38.1330356378 * t);
        neptune_k_0+=     0.00343810387*Math.cos( 0.59989432818 +       529.6909650946 * t);
        neptune_k_0+=     0.00599977571*Math.cos(           0.0 +                  0.0 * t);

        return neptune_k_0;
    }

    @JvmStatic private fun neptune_l(t: Double): Double {
        var neptune_l_0 = 0.0;
        neptune_l_0+=     0.00441710236*Math.cos( 0.00020868462 +       491.5579294568 * t);
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
        saturn_a_0+=     0.00142075017*Math.cos( 2.32273369924 +       949.1756089698 * t);
        saturn_a_0+=     0.00143605062*Math.cos(  4.8591750507 +        213.299095438 * t);
        saturn_a_0+=     0.00146816895*Math.cos( 0.07437685257 +       846.0828347512 * t);
        saturn_a_0+=     0.00149912686*Math.cos( 3.86270340354 +       419.4846438752 * t);
        saturn_a_0+=     0.00289062242*Math.cos( 3.01816520038 +         7.1135470008 * t);
        saturn_a_0+=      0.0030846159*Math.cos( 2.55488166399 +       632.7837393132 * t);
        saturn_a_0+=     0.00354492417*Math.cos( 5.81482665415 +       103.0927742186 * t);
        saturn_a_0+=     0.03363448736*Math.cos(  6.0097367346 +       316.3918696566 * t);
        saturn_a_0+=     9.55490959574*Math.cos(           0.0 +                  0.0 * t);

        var saturn_a_1 = 0.0;
        saturn_a_1+=     0.00115108584*Math.cos( 1.31913907888 +         7.1135470008 * t);
        saturn_a_1=saturn_a_1*t;

        return saturn_a_1+saturn_a_0;
    }

    @JvmStatic private fun saturn_h(t: Double): Double {
        var saturn_h_0 = 0.0;
        saturn_h_0+=     0.00124537423*Math.cos(  5.6029550572 +        213.299095438 * t);
        saturn_h_0+=     0.00154553684*Math.cos(  3.5944713223 +         7.1135470008 * t);
        saturn_h_0+=     0.00196887619*Math.cos( 5.31528897782 +       529.6909650946 * t);
        saturn_h_0+=     0.05542964254*Math.cos(           0.0 +                  0.0 * t);

        var saturn_h_1 = 0.0;
        saturn_h_1+=     0.00375593887*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_h_1=saturn_h_1*t;

        return saturn_h_1+saturn_h_0;
    }

    @JvmStatic private fun saturn_k(t: Double): Double {
        var saturn_k_0 = 0.0;
        saturn_k_0+=     0.00126322249*Math.cos( 0.86230560136 +        213.299095438 * t);
        saturn_k_0+=     0.00155326496*Math.cos( 5.16402515606 +         7.1135470008 * t);
        saturn_k_0+=     0.00197268763*Math.cos( 0.59616692002 +       529.6909650946 * t);
        saturn_k_0+=     0.00296003595*Math.cos( 3.14159265359 +                  0.0 * t);

        var saturn_k_1 = 0.0;
        saturn_k_1+=     0.00529602626*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_k_1=saturn_k_1*t;

        return saturn_k_1+saturn_k_0;
    }

    @JvmStatic private fun saturn_l(t: Double): Double {
        var saturn_l_0 = 0.0;
        saturn_l_0+=     0.00149861955*Math.cos( 0.26851062811 +       103.0927742186 * t);
        saturn_l_0+=     0.00259784547*Math.cos( 4.43343036691 +       316.3918696566 * t);
        saturn_l_0+=     0.01411655077*Math.cos( 4.58553469006 +         7.1135470008 * t);
        saturn_l_0+=      0.8740167565*Math.cos(           0.0 +                  0.0 * t);

        var saturn_l_1 = 0.0;
        saturn_l_1+=     0.00563352798*Math.cos(  2.8847856166 +         7.1135470008 * t);
        saturn_l_1+=     213.299095438*Math.cos(           0.0 +                  0.0 * t);
        saturn_l_1=saturn_l_1*t;

        var saturn_l_2 = 0.0;
        saturn_l_2+=     0.00116235667*Math.cos( 1.17971682406 +         7.1135470008 * t);
        saturn_l_2=saturn_l_2*t*t;

        return saturn_l_2+saturn_l_1+saturn_l_0;
    }

    @JvmStatic private fun saturn_p(t: Double): Double {
        var saturn_p_0 = 0.0;
        saturn_p_0+=     0.01989147301*Math.cos(           0.0 +                  0.0 * t);

        return saturn_p_0;
    }

    @JvmStatic private fun saturn_q(t: Double): Double {
        var saturn_q_0 = 0.0;
        saturn_q_0+=     0.00871747436*Math.cos( 3.14159265359 +                  0.0 * t);

        return saturn_q_0;
    }

    @JvmStatic private fun uranus_a(t: Double): Double {
        var uranus_a_0 = 0.0;
        uranus_a_0+=     0.00102755162*Math.cos( 0.89451486294 +       351.8165923087 * t);
        uranus_a_0+=     0.00120436873*Math.cos( 0.15931700196 +       277.0349937414 * t);
        uranus_a_0+=     0.00124336026*Math.cos( 1.34101096123 +        11.0457002639 * t);
        uranus_a_0+=     0.00148020073*Math.cos( 4.84763548983 +        63.7358983034 * t);
        uranus_a_0+=     0.00313720406*Math.cos( 2.19852745462 +        74.7815985673 * t);
        uranus_a_0+=     0.00365190162*Math.cos( 1.75064255586 +       984.6003316219 * t);
        uranus_a_0+=     0.00391818405*Math.cos( 2.05935807638 +         1.4844727083 * t);
        uranus_a_0+=     0.00406413575*Math.cos( 5.21303965129 +         380.12776796 * t);
        uranus_a_0+=     0.02068375131*Math.cos( 1.67626096637 +       138.5174968707 * t);
        uranus_a_0+=      0.0803047624*Math.cos( 1.40140954803 +       454.9093665273 * t);
        uranus_a_0+=    19.21844606178*Math.cos(           0.0 +                  0.0 * t);

        return uranus_a_0;
    }

    @JvmStatic private fun uranus_h(t: Double): Double {
        var uranus_h_0 = 0.0;
        uranus_h_0+=     0.00116288289*Math.cos( 3.77434233468 +         380.12776796 * t);
        uranus_h_0+=     0.00136132837*Math.cos( 3.91136489012 +        74.7815985673 * t);
        uranus_h_0+=     0.00210407426*Math.cos( 0.42744224313 +         1.4844727083 * t);
        uranus_h_0+=     0.00274676149*Math.cos( 5.31178834743 +       529.6909650946 * t);
        uranus_h_0+=     0.00563791307*Math.cos(           0.0 +                  0.0 * t);

        return uranus_h_0;
    }

    @JvmStatic private fun uranus_k(t: Double): Double {
        var uranus_k_0 = 0.0;
        uranus_k_0+=      0.0011637991*Math.cos( 2.20321839185 +         380.12776796 * t);
        uranus_k_0+=     0.00136013862*Math.cos( 5.48189691557 +        74.7815985673 * t);
        uranus_k_0+=     0.00209611522*Math.cos( 1.99913587697 +         1.4844727083 * t);
        uranus_k_0+=     0.00274532742*Math.cos( 0.59960944961 +       529.6909650946 * t);
        uranus_k_0+=     0.04595132376*Math.cos( 3.14159265359 +                  0.0 * t);

        return uranus_k_0;
    }

    @JvmStatic private fun uranus_l(t: Double): Double {
        var uranus_l_0 = 0.0;
        uranus_l_0+=     0.00341045477*Math.cos( 6.11377091373 +       454.9093665273 * t);
        uranus_l_0+=     0.01503941337*Math.cos( 3.62721239702 +         1.4844727083 * t);
        uranus_l_0+=     5.48129387159*Math.cos(           0.0 +                  0.0 * t);

        var uranus_l_1 = 0.0;
        uranus_l_1+=     74.7815985673*Math.cos(           0.0 +                  0.0 * t);
        uranus_l_1=uranus_l_1*t;

        return uranus_l_1+uranus_l_0;
    }

    @JvmStatic private fun uranus_p(t: Double): Double {
        var uranus_p_0 = 0.0;
        uranus_p_0+=     0.00648617008*Math.cos(           0.0 +                  0.0 * t);

        return uranus_p_0;
    }

    @JvmStatic private fun uranus_q(t: Double): Double {
        var uranus_q_0 = 0.0;
        uranus_q_0+=     0.00185915075*Math.cos(           0.0 +                  0.0 * t);

        return uranus_q_0;
    }

    @JvmStatic private fun venus_a(t: Double): Double {
        var venus_a_0 = 0.0;
        venus_a_0+=     0.72332981996*Math.cos(           0.0 +                  0.0 * t);

        return venus_a_0;
    }

    @JvmStatic private fun venus_h(t: Double): Double {
        var venus_h_0 = 0.0;
        venus_h_0+=     0.00506684726*Math.cos(           0.0 +                  0.0 * t);

        return venus_h_0;
    }

    @JvmStatic private fun venus_k(t: Double): Double {
        var venus_k_0 = 0.0;
        venus_k_0+=     0.00449282133*Math.cos( 3.14159265359 +                  0.0 * t);

        return venus_k_0;
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
        var venus_q_0 = 0.0;
        venus_q_0+=     0.00682410142*Math.cos(           0.0 +                  0.0 * t);

        var venus_q_1 = 0.0;
        venus_q_1+=     0.00138133826*Math.cos(           0.0 +                  0.0 * t);
        venus_q_1=venus_q_1*t;

        return venus_q_1+venus_q_0;
    }

}
