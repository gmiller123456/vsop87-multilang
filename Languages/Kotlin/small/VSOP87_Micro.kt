//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

object VSOP87_Micro{
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

        var emb_h_1 = 0.0;
        emb_h_1+=     0.00062029655*Math.cos( 3.14159265359 +                  0.0 * t);
        emb_h_1=emb_h_1*t;

        return emb_h_1+emb_h_0;
    }

    @JvmStatic private fun emb_k(t: Double): Double {
        var emb_k_0 = 0.0;
        emb_k_0+=      0.0037408165*Math.cos( 3.14159265359 +                  0.0 * t);

        var emb_k_1 = 0.0;
        emb_k_1+=     0.00082267418*Math.cos( 3.14159265359 +                  0.0 * t);
        emb_k_1=emb_k_1*t;

        return emb_k_1+emb_k_0;
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
        var emb_p_1 = 0.0;
        emb_p_1+=     0.00010180375*Math.cos(           0.0 +                  0.0 * t);
        emb_p_1=emb_p_1*t;

        return emb_p_1;
    }

    @JvmStatic private fun emb_q(t: Double): Double {
        var emb_q_1 = 0.0;
        emb_q_1+=     0.00113468869*Math.cos( 3.14159265359 +                  0.0 * t);
        emb_q_1=emb_q_1*t;

        return emb_q_1;
    }

    @JvmStatic private fun jupiter_a(t: Double): Double {
        var jupiter_a_0 = 0.0;
        jupiter_a_0+=     0.00011836569*Math.cos( 0.41496888665 +       735.8765135318 * t);
        jupiter_a_0+=     0.00014633106*Math.cos( 5.20240925402 +      1265.5674786264 * t);
        jupiter_a_0+=     0.00020585372*Math.cos( 5.98131661466 +       316.3918696566 * t);
        jupiter_a_0+=      0.0002181433*Math.cos( 0.70025220178 +       419.4846438752 * t);
        jupiter_a_0+=     0.00025558941*Math.cos( 6.15962426898 +         7.1135470008 * t);
        jupiter_a_0+=     0.00031138634*Math.cos( 5.46486196547 +       949.1756089698 * t);
        jupiter_a_0+=     0.00032272046*Math.cos( 1.90381613358 +       103.0927742186 * t);
        jupiter_a_0+=     0.00069070151*Math.cos( 5.72686174779 +       632.7837393132 * t);
        jupiter_a_0+=     5.20260319132*Math.cos(           0.0 +                  0.0 * t);

        var jupiter_a_1 = 0.0;
        jupiter_a_1+=     0.00010177614*Math.cos( 4.46063225487 +         7.1135470008 * t);
        jupiter_a_1=jupiter_a_1*t;

        return jupiter_a_1+jupiter_a_0;
    }

    @JvmStatic private fun jupiter_h(t: Double): Double {
        var jupiter_h_0 = 0.0;
        jupiter_h_0+=     0.00010468075*Math.cos( 0.14414631816 +       419.4846438752 * t);
        jupiter_h_0+=     0.00012686502*Math.cos( 1.52173271472 +       110.2063212194 * t);
        jupiter_h_0+=     0.00037689163*Math.cos( 0.46902799622 +         7.1135470008 * t);
        jupiter_h_0+=     0.00064278139*Math.cos( 0.39928981461 +       103.0927742186 * t);
        jupiter_h_0+=     0.01200385748*Math.cos(           0.0 +                  0.0 * t);

        var jupiter_h_1 = 0.0;
        jupiter_h_1+=     0.00010164439*Math.cos( 5.05135857516 +         7.1135470008 * t);
        jupiter_h_1+=      0.0021714936*Math.cos(           0.0 +                  0.0 * t);
        jupiter_h_1=jupiter_h_1*t;

        return jupiter_h_1+jupiter_h_0;
    }

    @JvmStatic private fun jupiter_k(t: Double): Double {
        var jupiter_k_0 = 0.0;
        jupiter_k_0+=     0.00010740857*Math.cos( 4.85106997988 +       419.4846438752 * t);
        jupiter_k_0+=     0.00013518804*Math.cos( 2.94820975394 +       110.2063212194 * t);
        jupiter_k_0+=     0.00038006128*Math.cos( 2.03714771852 +         7.1135470008 * t);
        jupiter_k_0+=      0.0006528701*Math.cos( 5.14135675663 +       103.0927742186 * t);
        jupiter_k_0+=     0.04698572124*Math.cos(           0.0 +                  0.0 * t);

        var jupiter_k_1 = 0.0;
        jupiter_k_1+=     0.00010303903*Math.cos( 0.33250058601 +         7.1135470008 * t);
        jupiter_k_1+=     0.00113010377*Math.cos(           0.0 +                  0.0 * t);
        jupiter_k_1=jupiter_k_1*t;

        var jupiter_k_2 = 0.0;
        jupiter_k_2+=     0.00010930126*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_k_2=jupiter_k_2*t*t;

        return jupiter_k_2+jupiter_k_1+jupiter_k_0;
    }

    @JvmStatic private fun jupiter_l(t: Double): Double {
        var jupiter_l_0 = 0.0;
        jupiter_l_0+=      0.0001173059*Math.cos( 0.74641135653 +       949.1756089698 * t);
        jupiter_l_0+=     0.00013391386*Math.cos( 2.32518571601 +       419.4846438752 * t);
        jupiter_l_0+=     0.00023791184*Math.cos( 1.27622244841 +       316.3918696566 * t);
        jupiter_l_0+=     0.00032251188*Math.cos( 1.01358443926 +       632.7837393132 * t);
        jupiter_l_0+=     0.00062308554*Math.cos( 3.41857056095 +       103.0927742186 * t);
        jupiter_l_0+=     0.00573506125*Math.cos(  1.4439630642 +         7.1135470008 * t);
        jupiter_l_0+=     0.59954649739*Math.cos(           0.0 +                  0.0 * t);

        var jupiter_l_1 = 0.0;
        jupiter_l_1+=     0.00228875491*Math.cos( 6.02639570653 +         7.1135470008 * t);
        jupiter_l_1+=    529.6909650946*Math.cos(           0.0 +                  0.0 * t);
        jupiter_l_1=jupiter_l_1*t;

        var jupiter_l_2 = 0.0;
        jupiter_l_2+=     0.00014837133*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_l_2+=     0.00047224495*Math.cos( 4.32142959829 +         7.1135470008 * t);
        jupiter_l_2=jupiter_l_2*t*t;

        return jupiter_l_2+jupiter_l_1+jupiter_l_0;
    }

    @JvmStatic private fun jupiter_p(t: Double): Double {
        var jupiter_p_0 = 0.0;
        jupiter_p_0+=     0.01118377157*Math.cos(           0.0 +                  0.0 * t);

        var jupiter_p_1 = 0.0;
        jupiter_p_1+=     0.00023427562*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_p_1=jupiter_p_1*t;

        return jupiter_p_1+jupiter_p_0;
    }

    @JvmStatic private fun jupiter_q(t: Double): Double {
        var jupiter_q_0 = 0.0;
        jupiter_q_0+=     0.00206561098*Math.cos( 3.14159265359 +                  0.0 * t);

        var jupiter_q_1 = 0.0;
        jupiter_q_1+=     0.00031340156*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_q_1=jupiter_q_1*t;

        return jupiter_q_1+jupiter_q_0;
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

        var mars_h_2 = 0.0;
        mars_h_2+=     0.00015529482*Math.cos(           0.0 +                  0.0 * t);
        mars_h_2=mars_h_2*t*t;

        return mars_h_2+mars_h_1+mars_h_0;
    }

    @JvmStatic private fun mars_k(t: Double): Double {
        var mars_k_0 = 0.0;
        mars_k_0+=     0.08536560252*Math.cos(           0.0 +                  0.0 * t);

        var mars_k_1 = 0.0;
        mars_k_1+=     0.00376330152*Math.cos(           0.0 +                  0.0 * t);
        mars_k_1=mars_k_1*t;

        var mars_k_2 = 0.0;
        mars_k_2+=     0.00024657776*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_k_2=mars_k_2*t*t;

        return mars_k_2+mars_k_1+mars_k_0;
    }

    @JvmStatic private fun mars_l(t: Double): Double {
        var mars_l_0 = 0.0;
        mars_l_0+=     0.00027745033*Math.cos( 5.97049541372 +          3.523118349 * t);
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

        var mars_q_1 = 0.0;
        mars_q_1+=     0.00017138526*Math.cos(           0.0 +                  0.0 * t);
        mars_q_1=mars_q_1*t;

        return mars_q_1+mars_q_0;
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

        var mercury_q_1 = 0.0;
        mercury_q_1+=     0.00065433117*Math.cos(           0.0 +                  0.0 * t);
        mercury_q_1=mercury_q_1*t;

        return mercury_q_1+mercury_q_0;
    }

    @JvmStatic private fun neptune_a(t: Double): Double {
        var neptune_a_0 = 0.0;
        neptune_a_0+=     0.00010396544*Math.cos( 4.15850491413 +        219.891377577 * t);
        neptune_a_0+=     0.00011035877*Math.cos( 0.32439741096 +       601.7642506762 * t);
        neptune_a_0+=     0.00011159386*Math.cos( 4.90170178578 +       108.4612160802 * t);
        neptune_a_0+=     0.00013243147*Math.cos( 1.48517883768 +       454.9093665273 * t);
        neptune_a_0+=     0.00014186982*Math.cos( 0.39055348945 +        38.1330356378 * t);
        neptune_a_0+=     0.00017526509*Math.cos( 3.41680716222 +        666.723989257 * t);
        neptune_a_0+=     0.00017669174*Math.cos( 6.07111527239 +       173.6815870919 * t);
        neptune_a_0+=     0.00017938336*Math.cos( 3.98996043594 +       183.2428146475 * t);
        neptune_a_0+=     0.00018971774*Math.cos( 0.76073169118 +       176.6505325085 * t);
        neptune_a_0+=      0.0001988739*Math.cos( 4.72200680846 +        71.8126531507 * t);
        neptune_a_0+=     0.00021792087*Math.cos( 2.62371458707 +       111.4301614968 * t);
        neptune_a_0+=     0.00024649447*Math.cos( 6.00875947773 +       316.3918696566 * t);
        neptune_a_0+=     0.00025130259*Math.cos( 5.11703371894 +       168.0525127994 * t);
        neptune_a_0+=     0.00025671325*Math.cos( 1.72232760443 +        182.279606801 * t);
        neptune_a_0+=     0.00026057248*Math.cos( 0.60013829511 +       350.3321196004 * t);
        neptune_a_0+=     0.00031426284*Math.cos( 3.82119024473 +        146.594251718 * t);
        neptune_a_0+=      0.0003179202*Math.cos( 3.25530033905 +       983.1158589136 * t);
        neptune_a_0+=     0.00037417236*Math.cos( 2.27030739588 +       1550.939859646 * t);
        neptune_a_0+=     0.00042415052*Math.cos( 1.70067649012 +        484.444382456 * t);
        neptune_a_0+=      0.0004253901*Math.cos( 4.58925849638 +       498.6714764576 * t);
        neptune_a_0+=      0.0004687645*Math.cos( 3.85081593965 +       137.0330241624 * t);
        neptune_a_0+=      0.0005078132*Math.cos( 4.51488159732 +        35.1640902212 * t);
        neptune_a_0+=       0.000569767*Math.cos( 3.65157409569 +       109.9456887885 * t);
        neptune_a_0+=     0.00069569587*Math.cos( 3.84742919656 +         2.9689454166 * t);
        neptune_a_0+=     0.00072554259*Math.cos( 5.79767484989 +       490.0734567485 * t);
        neptune_a_0+=      0.0007839139*Math.cos( 0.48629941459 +       493.0424021651 * t);
        neptune_a_0+=      0.0009553057*Math.cos( 4.14819625611 +     10175.1525105732 * t);
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

        var neptune_a_1 = 0.0;
        neptune_a_1+=     0.00010028658*Math.cos( 0.53331428424 +       168.0525127994 * t);
        neptune_a_1+=     0.00010242826*Math.cos( 0.02106658542 +        182.279606801 * t);
        neptune_a_1+=     0.00013646732*Math.cos( 3.31887794551 +         1.4844727083 * t);
        neptune_a_1+=     0.00016926224*Math.cos( 3.40079518197 +        484.444382456 * t);
        neptune_a_1+=      0.0001698372*Math.cos( 2.88749614679 +       498.6714764576 * t);
        neptune_a_1+=     0.00021981792*Math.cos( 5.24159938374 +       388.4651552382 * t);
        neptune_a_1+=     0.00035017221*Math.cos( 1.07792431879 +      1021.2488945514 * t);
        neptune_a_1=neptune_a_1*t;

        return neptune_a_1+neptune_a_0;
    }

    @JvmStatic private fun neptune_h(t: Double): Double {
        var neptune_h_0 = 0.0;
        neptune_h_0+=     0.00015834646*Math.cos( 2.35068672532 +         2.9689454166 * t);
        neptune_h_0+=     0.00016671327*Math.cos( 5.66175544286 +      1059.3819301892 * t);
        neptune_h_0+=     0.00034070791*Math.cos( 4.38749299404 +       137.0330241624 * t);
        neptune_h_0+=     0.00059736086*Math.cos( 3.56479788019 +         1.4844727083 * t);
        neptune_h_0+=     0.00076068364*Math.cos( 5.58664660018 +        213.299095438 * t);
        neptune_h_0+=     0.00131043136*Math.cos( 4.11313570675 +        453.424893819 * t);
        neptune_h_0+=     0.00136278888*Math.cos( 3.74103613444 +        38.1330356378 * t);
        neptune_h_0+=     0.00344034784*Math.cos( 5.31201105782 +       529.6909650946 * t);
        neptune_h_0+=     0.00669242413*Math.cos(           0.0 +                  0.0 * t);

        return neptune_h_0;
    }

    @JvmStatic private fun neptune_k(t: Double): Double {
        var neptune_k_0 = 0.0;
        neptune_k_0+=     0.00015893727*Math.cos( 3.92171062449 +         2.9689454166 * t);
        neptune_k_0+=     0.00016663303*Math.cos( 0.94954464976 +      1059.3819301892 * t);
        neptune_k_0+=     0.00034074986*Math.cos( 2.81681245358 +       137.0330241624 * t);
        neptune_k_0+=     0.00059960933*Math.cos(  5.1374603101 +         1.4844727083 * t);
        neptune_k_0+=     0.00076137558*Math.cos( 0.87421757435 +        213.299095438 * t);
        neptune_k_0+=     0.00131042161*Math.cos( 2.54238248127 +        453.424893819 * t);
        neptune_k_0+=      0.0013623298*Math.cos( 5.31190360139 +        38.1330356378 * t);
        neptune_k_0+=     0.00343810387*Math.cos( 0.59989432818 +       529.6909650946 * t);
        neptune_k_0+=     0.00599977571*Math.cos(           0.0 +                  0.0 * t);

        return neptune_k_0;
    }

    @JvmStatic private fun neptune_l(t: Double): Double {
        var neptune_l_0 = 0.0;
        neptune_l_0+=     0.00016297466*Math.cos( 4.88440388945 +        36.6485629295 * t);
        neptune_l_0+=     0.00021806166*Math.cos( 0.34972092081 +      1021.2488945514 * t);
        neptune_l_0+=     0.00041703723*Math.cos( 5.41098453927 +         2.9689454166 * t);
        neptune_l_0+=     0.00092919548*Math.cos( 0.27470534254 +       175.1660598002 * t);
        neptune_l_0+=     0.00441710236*Math.cos( 0.00020868462 +       491.5579294568 * t);
        neptune_l_0+=     0.01017628072*Math.cos( 0.48586478491 +         1.4844727083 * t);
        neptune_l_0+=     5.31188628676*Math.cos(           0.0 +                  0.0 * t);

        var neptune_l_1 = 0.0;
        neptune_l_1+=     0.00016569412*Math.cos( 4.86311838543 +         1.4844727083 * t);
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
        saturn_a_0+=     0.00011535604*Math.cos( 2.74021432418 +      1685.0521225016 * t);
        saturn_a_0+=     0.00013277748*Math.cos( 3.34520712627 +       277.0349937414 * t);
        saturn_a_0+=     0.00013849443*Math.cos( 4.65107330724 +       838.9692877504 * t);
        saturn_a_0+=     0.00015605088*Math.cos( 1.55158323786 +      1898.3512179396 * t);
        saturn_a_0+=     0.00017342295*Math.cos( 2.30290130287 +       9999.986450773 * t);
        saturn_a_0+=     0.00018549188*Math.cos( 0.87944999842 +      6069.7767545534 * t);
        saturn_a_0+=     0.00020860007*Math.cos( 3.01028862668 +       1368.660252845 * t);
        saturn_a_0+=     0.00024471393*Math.cos( 4.81178790264 +       522.5774180938 * t);
        saturn_a_0+=     0.00032196433*Math.cos( 1.80319862777 +       1581.959348283 * t);
        saturn_a_0+=      0.0003786136*Math.cos( 2.71073622362 +       323.5054166574 * t);
        saturn_a_0+=     0.00038450594*Math.cos( 3.28109764968 +      1052.2683831884 * t);
        saturn_a_0+=     0.00040372154*Math.cos( 6.12336876226 +       309.2783226558 * t);
        saturn_a_0+=     0.00054284469*Math.cos( 5.12517048023 +       206.1855484372 * t);
        saturn_a_0+=     0.00067160409*Math.cos( 2.06145646779 +      1265.5674786264 * t);
        saturn_a_0+=      0.0007341234*Math.cos( 3.55846055429 +       735.8765135318 * t);
        saturn_a_0+=     0.00081821669*Math.cos( 3.45006412768 +       110.2063212194 * t);
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
        saturn_a_1+=     0.00014543221*Math.cos( 0.53828819496 +       206.1855484372 * t);
        saturn_a_1+=     0.00014944585*Math.cos( 1.01717765228 +       323.5054166574 * t);
        saturn_a_1+=     0.00016133051*Math.cos( 1.54311529056 +       309.2783226558 * t);
        saturn_a_1+=     0.00017963494*Math.cos( 1.85653949491 +       110.2063212194 * t);
        saturn_a_1+=     0.00019395929*Math.cos( 3.30487092881 +        213.299095438 * t);
        saturn_a_1+=     0.00020477409*Math.cos( 5.54887034001 +       419.4846438752 * t);
        saturn_a_1+=     0.00115108584*Math.cos( 1.31913907888 +         7.1135470008 * t);
        saturn_a_1=saturn_a_1*t;

        var saturn_a_2 = 0.0;
        saturn_a_2+=     0.00023754277*Math.cos( 5.89931397638 +         7.1135470008 * t);
        saturn_a_2=saturn_a_2*t*t;

        return saturn_a_2+saturn_a_1+saturn_a_0;
    }

    @JvmStatic private fun saturn_h(t: Double): Double {
        var saturn_h_0 = 0.0;
        saturn_h_0+=     0.00016256954*Math.cos( 3.02503473426 +       735.8765135318 * t);
        saturn_h_0+=     0.00026520042*Math.cos( 4.52478837442 +       206.1855484372 * t);
        saturn_h_0+=      0.0003298126*Math.cos( 4.13131540179 +       110.2063212194 * t);
        saturn_h_0+=     0.00044695611*Math.cos( 3.26423001884 +       419.4846438752 * t);
        saturn_h_0+=     0.00068728896*Math.cos( 0.46796586407 +       103.0927742186 * t);
        saturn_h_0+=     0.00124537423*Math.cos(  5.6029550572 +        213.299095438 * t);
        saturn_h_0+=     0.00154553684*Math.cos(  3.5944713223 +         7.1135470008 * t);
        saturn_h_0+=     0.00196887619*Math.cos( 5.31528897782 +       529.6909650946 * t);
        saturn_h_0+=     0.05542964254*Math.cos(           0.0 +                  0.0 * t);

        var saturn_h_1 = 0.0;
        saturn_h_1+=     0.00041501368*Math.cos( 1.90158625579 +         7.1135470008 * t);
        saturn_h_1+=     0.00375593887*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_h_1=saturn_h_1*t;

        var saturn_h_2 = 0.0;
        saturn_h_2+=     0.00031990236*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_h_2=saturn_h_2*t*t;

        return saturn_h_2+saturn_h_1+saturn_h_0;
    }

    @JvmStatic private fun saturn_k(t: Double): Double {
        var saturn_k_0 = 0.0;
        saturn_k_0+=      0.0001247418*Math.cos( 1.09305375439 +       316.3918696566 * t);
        saturn_k_0+=     0.00016225491*Math.cos(  1.4279916691 +       735.8765135318 * t);
        saturn_k_0+=     0.00027272443*Math.cos(  3.0089088392 +       206.1855484372 * t);
        saturn_k_0+=     0.00031292923*Math.cos( 5.75285406117 +       110.2063212194 * t);
        saturn_k_0+=     0.00045181084*Math.cos( 1.69923556056 +       419.4846438752 * t);
        saturn_k_0+=     0.00065050158*Math.cos( 5.14656256627 +       103.0927742186 * t);
        saturn_k_0+=     0.00126322249*Math.cos( 0.86230560136 +        213.299095438 * t);
        saturn_k_0+=     0.00155326496*Math.cos( 5.16402515606 +         7.1135470008 * t);
        saturn_k_0+=     0.00197268763*Math.cos( 0.59616692002 +       529.6909650946 * t);
        saturn_k_0+=     0.00296003595*Math.cos( 3.14159265359 +                  0.0 * t);

        var saturn_k_1 = 0.0;
        saturn_k_1+=     0.00041825363*Math.cos( 3.46891617076 +         7.1135470008 * t);
        saturn_k_1+=     0.00529602626*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_k_1=saturn_k_1*t;

        var saturn_k_2 = 0.0;
        saturn_k_2+=     0.00030928405*Math.cos(           0.0 +                  0.0 * t);
        saturn_k_2=saturn_k_2*t*t;

        return saturn_k_2+saturn_k_1+saturn_k_0;
    }

    @JvmStatic private fun saturn_l(t: Double): Double {
        var saturn_l_0 = 0.0;
        saturn_l_0+=     0.00010143831*Math.cos( 4.81233412109 +       846.0828347512 * t);
        saturn_l_0+=     0.00011053979*Math.cos( 3.62184165245 +      1265.5674786264 * t);
        saturn_l_0+=     0.00012172375*Math.cos( 2.85599565676 +        213.299095438 * t);
        saturn_l_0+=     0.00012249591*Math.cos( 5.17809413714 +       735.8765135318 * t);
        saturn_l_0+=     0.00012478276*Math.cos( 4.43427037492 +       110.2063212194 * t);
        saturn_l_0+=     0.00012994507*Math.cos( 5.98000018071 +        11.0457002639 * t);
        saturn_l_0+=     0.00013067003*Math.cos( 4.44777987188 +        14.2270940016 * t);
        saturn_l_0+=     0.00014601573*Math.cos( 1.56514416532 +         3.9321532631 * t);
        saturn_l_0+=      0.0001464809*Math.cos( 0.80489143062 +       529.6909650946 * t);
        saturn_l_0+=       0.000166785*Math.cos( 0.46554866763 +       206.1855484372 * t);
        saturn_l_0+=      0.0002654809*Math.cos( 3.88757160092 +       949.1756089698 * t);
        saturn_l_0+=     0.00031452707*Math.cos( 5.46081855509 +       419.4846438752 * t);
        saturn_l_0+=     0.00071179955*Math.cos( 4.15641496284 +       632.7837393132 * t);
        saturn_l_0+=     0.00149861955*Math.cos( 0.26851062811 +       103.0927742186 * t);
        saturn_l_0+=     0.00259784547*Math.cos( 4.43343036691 +       316.3918696566 * t);
        saturn_l_0+=     0.01411655077*Math.cos( 4.58553469006 +         7.1135470008 * t);
        saturn_l_0+=      0.8740167565*Math.cos(           0.0 +                  0.0 * t);

        var saturn_l_1 = 0.0;
        saturn_l_1+=     0.00010437362*Math.cos( 2.74781046876 +        14.2270940016 * t);
        saturn_l_1+=     0.00014171331*Math.cos( 1.28319722079 +       103.0927742186 * t);
        saturn_l_1+=     0.00563352798*Math.cos(  2.8847856166 +         7.1135470008 * t);
        saturn_l_1+=     213.299095438*Math.cos(           0.0 +                  0.0 * t);
        saturn_l_1=saturn_l_1*t;

        var saturn_l_2 = 0.0;
        saturn_l_2+=     0.00036659741*Math.cos(           0.0 +                  0.0 * t);
        saturn_l_2+=     0.00116235667*Math.cos( 1.17971682406 +         7.1135470008 * t);
        saturn_l_2=saturn_l_2*t*t;

        var saturn_l_3 = 0.0;
        saturn_l_3+=     0.00016010484*Math.cos( 5.73932776276 +         7.1135470008 * t);
        saturn_l_3=saturn_l_3*t*t*t;

        return saturn_l_3+saturn_l_2+saturn_l_1+saturn_l_0;
    }

    @JvmStatic private fun saturn_p(t: Double): Double {
        var saturn_p_0 = 0.0;
        saturn_p_0+=     0.01989147301*Math.cos(           0.0 +                  0.0 * t);

        var saturn_p_1 = 0.0;
        saturn_p_1+=     0.00059439766*Math.cos(           0.0 +                  0.0 * t);
        saturn_p_1=saturn_p_1*t;

        return saturn_p_1+saturn_p_0;
    }

    @JvmStatic private fun saturn_q(t: Double): Double {
        var saturn_q_0 = 0.0;
        saturn_q_0+=     0.00871747436*Math.cos( 3.14159265359 +                  0.0 * t);

        var saturn_q_1 = 0.0;
        saturn_q_1+=     0.00080171499*Math.cos(           0.0 +                  0.0 * t);
        saturn_q_1=saturn_q_1*t;

        return saturn_q_1+saturn_q_0;
    }

    @JvmStatic private fun uranus_a(t: Double): Double {
        var uranus_a_0 = 0.0;
        uranus_a_0+=     0.00010515353*Math.cos( 1.70301075392 +       479.2883889155 * t);
        uranus_a_0+=      0.0001101356*Math.cos(   3.543073512 +       835.0371344873 * t);
        uranus_a_0+=     0.00011020208*Math.cos( 3.19000442755 +         3.9321532631 * t);
        uranus_a_0+=     0.00011334332*Math.cos(  5.9796356063 +       316.3918696566 * t);
        uranus_a_0+=     0.00012687891*Math.cos( 1.58735697797 +        71.8126531507 * t);
        uranus_a_0+=     0.00012998808*Math.cos( 2.85105295526 +       127.4717966068 * t);
        uranus_a_0+=      0.0001307766*Math.cos( 4.23675214362 +       381.6122406683 * t);
        uranus_a_0+=     0.00014478423*Math.cos(  4.9498312979 +       131.4039498699 * t);
        uranus_a_0+=     0.00014762015*Math.cos( 1.55212266318 +       145.6310438715 * t);
        uranus_a_0+=      0.0001515997*Math.cos( 2.76239188887 +       137.0330241624 * t);
        uranus_a_0+=     0.00015930221*Math.cos( 3.73134883667 +        140.001969579 * t);
        uranus_a_0+=     0.00016880093*Math.cos(  0.8479805848 +       183.2428146475 * t);
        uranus_a_0+=     0.00018767795*Math.cos( 4.43338724151 +       149.5631971346 * t);
        uranus_a_0+=      0.0001947827*Math.cos(  2.1004139056 +      1514.2912967165 * t);
        uranus_a_0+=     0.00020141604*Math.cos( 2.67711439002 +       305.3461693927 * t);
        uranus_a_0+=     0.00021391939*Math.cos( 0.02845030511 +       340.7708920448 * t);
        uranus_a_0+=     0.00021559916*Math.cos( 3.58530830565 +       554.0699874828 * t);
        uranus_a_0+=     0.00022997542*Math.cos( 1.53103267798 +       447.7958195265 * t);
        uranus_a_0+=      0.0002303434*Math.cos( 4.41961897942 +       462.0229135281 * t);
        uranus_a_0+=     0.00028704578*Math.cos( 1.39041828806 +        35.1640902212 * t);
        uranus_a_0+=     0.00029696881*Math.cos( 0.67903436338 +        146.594251718 * t);
        uranus_a_0+=     0.00032917894*Math.cos( 0.70483800006 +         2.9689454166 * t);
        uranus_a_0+=     0.00034892404*Math.cos( 5.75418250485 +       909.8187330546 * t);
        uranus_a_0+=     0.00036972301*Math.cos( 0.17475135689 +        36.6485629295 * t);
        uranus_a_0+=     0.00045935079*Math.cos(  4.6428671115 +       202.2533951741 * t);
        uranus_a_0+=     0.00048838076*Math.cos( 3.97801797335 +     10138.5039476437 * t);
        uranus_a_0+=     0.00050469671*Math.cos( 1.89418222433 +       415.5524906121 * t);
        uranus_a_0+=     0.00051844499*Math.cos( 2.55536031544 +      6208.2942514241 * t);
        uranus_a_0+=     0.00053293996*Math.cos(  0.5099564439 +       109.9456887885 * t);
        uranus_a_0+=     0.00058841165*Math.cos( 2.48705383463 +        453.424893819 * t);
        uranus_a_0+=      0.0006192097*Math.cos(  3.4581808792 +       456.3938392356 * t);
        uranus_a_0+=     0.00090078269*Math.cos( 0.33585778387 +         73.297125859 * t);
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

        var uranus_a_1 = 0.0;
        uranus_a_1+=     0.00011411513*Math.cos( 0.08109503303 +        63.7358983034 * t);
        uranus_a_1+=     0.00012155731*Math.cos( 5.07129450662 +       351.8165923087 * t);
        uranus_a_1+=     0.00018428974*Math.cos( 0.90876002089 +       984.6003316219 * t);
        uranus_a_1+=     0.00018892174*Math.cos( 5.14166599806 +        11.0457002639 * t);
        uranus_a_1=uranus_a_1*t;

        return uranus_a_1+uranus_a_0;
    }

    @JvmStatic private fun uranus_h(t: Double): Double {
        var uranus_h_0 = 0.0;
        uranus_h_0+=     0.00013315732*Math.cos( 5.66170904346 +      1059.3819301892 * t);
        uranus_h_0+=     0.00014988819*Math.cos( 5.47840346834 +         2.9689454166 * t);
        uranus_h_0+=     0.00025966791*Math.cos( 3.35174050484 +        11.0457002639 * t);
        uranus_h_0+=     0.00028214307*Math.cos( 4.05785385739 +        63.7358983034 * t);
        uranus_h_0+=     0.00061308823*Math.cos( 5.58629337039 +        213.299095438 * t);
        uranus_h_0+=     0.00116288289*Math.cos( 3.77434233468 +         380.12776796 * t);
        uranus_h_0+=     0.00136132837*Math.cos( 3.91136489012 +        74.7815985673 * t);
        uranus_h_0+=     0.00210407426*Math.cos( 0.42744224313 +         1.4844727083 * t);
        uranus_h_0+=     0.00274676149*Math.cos( 5.31178834743 +       529.6909650946 * t);
        uranus_h_0+=     0.00563791307*Math.cos(           0.0 +                  0.0 * t);

        var uranus_h_1 = 0.0;
        uranus_h_1+=      0.0007496435*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_h_1=uranus_h_1*t;

        return uranus_h_1+uranus_h_0;
    }

    @JvmStatic private fun uranus_k(t: Double): Double {
        var uranus_k_0 = 0.0;
        uranus_k_0+=     0.00013311384*Math.cos( 0.94943515364 +      1059.3819301892 * t);
        uranus_k_0+=     0.00015021315*Math.cos( 0.76594621932 +         2.9689454166 * t);
        uranus_k_0+=     0.00025955084*Math.cos( 4.91660280043 +        11.0457002639 * t);
        uranus_k_0+=     0.00028383762*Math.cos( 2.48454325825 +        63.7358983034 * t);
        uranus_k_0+=     0.00061367654*Math.cos( 0.87377399008 +        213.299095438 * t);
        uranus_k_0+=      0.0011637991*Math.cos( 2.20321839185 +         380.12776796 * t);
        uranus_k_0+=     0.00136013862*Math.cos( 5.48189691557 +        74.7815985673 * t);
        uranus_k_0+=     0.00209611522*Math.cos( 1.99913587697 +         1.4844727083 * t);
        uranus_k_0+=     0.00274532742*Math.cos( 0.59960944961 +       529.6909650946 * t);
        uranus_k_0+=     0.04595132376*Math.cos( 3.14159265359 +                  0.0 * t);

        var uranus_k_1 = 0.0;
        uranus_k_1+=     0.00018344115*Math.cos(           0.0 +                  0.0 * t);
        uranus_k_1=uranus_k_1*t;

        return uranus_k_1+uranus_k_0;
    }

    @JvmStatic private fun uranus_l(t: Double): Double {
        var uranus_l_0 = 0.0;
        uranus_l_0+=     0.00012930477*Math.cos( 1.77673119432 +       277.0349937414 * t);
        uranus_l_0+=     0.00013047912*Math.cos( 1.74402938964 +        36.6485629295 * t);
        uranus_l_0+=     0.00014437567*Math.cos( 1.91368590597 +         73.297125859 * t);
        uranus_l_0+=     0.00014543819*Math.cos(  4.7364457576 +         3.9321532631 * t);
        uranus_l_0+=     0.00016468518*Math.cos( 5.36717518314 +        63.7358983034 * t);
        uranus_l_0+=     0.00017129222*Math.cos( 0.18104766503 +       984.6003316219 * t);
        uranus_l_0+=     0.00018867012*Math.cos( 5.43708395337 +       529.6909650946 * t);
        uranus_l_0+=     0.00059722283*Math.cos( 2.84455045894 +        11.0457002639 * t);
        uranus_l_0+=     0.00061937506*Math.cos( 2.26973190883 +         2.9689454166 * t);
        uranus_l_0+=      0.0007557155*Math.cos( 0.10254572902 +       138.5174968707 * t);
        uranus_l_0+=     0.00341045477*Math.cos( 6.11377091373 +       454.9093665273 * t);
        uranus_l_0+=     0.01503941337*Math.cos( 3.62721239702 +         1.4844727083 * t);
        uranus_l_0+=     5.48129387159*Math.cos(           0.0 +                  0.0 * t);

        var uranus_l_1 = 0.0;
        uranus_l_1+=     0.00024451511*Math.cos( 1.71261369505 +         1.4844727083 * t);
        uranus_l_1+=     74.7815985673*Math.cos(           0.0 +                  0.0 * t);
        uranus_l_1=uranus_l_1*t;

        return uranus_l_1+uranus_l_0;
    }

    @JvmStatic private fun uranus_p(t: Double): Double {
        var uranus_p_0 = 0.0;
        uranus_p_0+=     0.00648617008*Math.cos(           0.0 +                  0.0 * t);

        var uranus_p_1 = 0.0;
        uranus_p_1+=     0.00011744733*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_p_1=uranus_p_1*t;

        return uranus_p_1+uranus_p_0;
    }

    @JvmStatic private fun uranus_q(t: Double): Double {
        var uranus_q_0 = 0.0;
        uranus_q_0+=     0.00185915075*Math.cos(           0.0 +                  0.0 * t);

        var uranus_q_1 = 0.0;
        uranus_q_1+=     0.00012449382*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_q_1=uranus_q_1*t;

        return uranus_q_1+uranus_q_0;
    }

    @JvmStatic private fun venus_a(t: Double): Double {
        var venus_a_0 = 0.0;
        venus_a_0+=     0.72332981996*Math.cos(           0.0 +                  0.0 * t);

        return venus_a_0;
    }

    @JvmStatic private fun venus_h(t: Double): Double {
        var venus_h_0 = 0.0;
        venus_h_0+=     0.00506684726*Math.cos(           0.0 +                  0.0 * t);

        var venus_h_1 = 0.0;
        venus_h_1+=     0.00036121239*Math.cos( 3.14159265359 +                  0.0 * t);
        venus_h_1=venus_h_1*t;

        return venus_h_1+venus_h_0;
    }

    @JvmStatic private fun venus_k(t: Double): Double {
        var venus_k_0 = 0.0;
        venus_k_0+=     0.00449282133*Math.cos( 3.14159265359 +                  0.0 * t);

        var venus_k_1 = 0.0;
        venus_k_1+=     0.00031259019*Math.cos(           0.0 +                  0.0 * t);
        venus_k_1=venus_k_1*t;

        return venus_k_1+venus_k_0;
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

        var venus_p_1 = 0.0;
        venus_p_1+=     0.00040384791*Math.cos( 3.14159265359 +                  0.0 * t);
        venus_p_1=venus_p_1*t;

        return venus_p_1+venus_p_0;
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
