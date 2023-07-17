//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2023.  Released as Public Domain

export class VSOP87_Milli{
    public static getEmb(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.emb_a(t);
        temp[1]=this.emb_h(t);
        temp[2]=this.emb_k(t);
        temp[3]=this.emb_l(t);
        temp[4]=this.emb_p(t);
        temp[5]=this.emb_q(t);
        return temp;
    }

    public static getJupiter(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.jupiter_a(t);
        temp[1]=this.jupiter_h(t);
        temp[2]=this.jupiter_k(t);
        temp[3]=this.jupiter_l(t);
        temp[4]=this.jupiter_p(t);
        temp[5]=this.jupiter_q(t);
        return temp;
    }

    public static getMars(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.mars_a(t);
        temp[1]=this.mars_h(t);
        temp[2]=this.mars_k(t);
        temp[3]=this.mars_l(t);
        temp[4]=this.mars_p(t);
        temp[5]=this.mars_q(t);
        return temp;
    }

    public static getMercury(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.mercury_a(t);
        temp[1]=this.mercury_h(t);
        temp[2]=this.mercury_k(t);
        temp[3]=this.mercury_l(t);
        temp[4]=this.mercury_p(t);
        temp[5]=this.mercury_q(t);
        return temp;
    }

    public static getNeptune(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.neptune_a(t);
        temp[1]=this.neptune_h(t);
        temp[2]=this.neptune_k(t);
        temp[3]=this.neptune_l(t);
        temp[4]=this.neptune_p(t);
        temp[5]=this.neptune_q(t);
        return temp;
    }

    public static getSaturn(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.saturn_a(t);
        temp[1]=this.saturn_h(t);
        temp[2]=this.saturn_k(t);
        temp[3]=this.saturn_l(t);
        temp[4]=this.saturn_p(t);
        temp[5]=this.saturn_q(t);
        return temp;
    }

    public static getUranus(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.uranus_a(t);
        temp[1]=this.uranus_h(t);
        temp[2]=this.uranus_k(t);
        temp[3]=this.uranus_l(t);
        temp[4]=this.uranus_p(t);
        temp[5]=this.uranus_q(t);
        return temp;
    }

    public static getVenus(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.venus_a(t);
        temp[1]=this.venus_h(t);
        temp[2]=this.venus_k(t);
        temp[3]=this.venus_l(t);
        temp[4]=this.venus_p(t);
        temp[5]=this.venus_q(t);
        return temp;
    }

    private static emb_a(t: number): number {
        let emb_a_0 = 0.0;
        emb_a_0+=      1.120473e-05*Math.cos( 2.30855131827 +     11506.7697697936 * t);
        emb_a_0+=     1.00000101778*Math.cos(           0.0 +                  0.0 * t);

        return emb_a_0;
    }

    private static emb_h(t: number): number {
        let emb_h_0 = 0.0;
        emb_h_0+=      1.510978e-05*Math.cos( 2.16070229051 +       529.6909650946 * t);
        emb_h_0+=      1.864029e-05*Math.cos( 2.12650300196 +      5223.6939198022 * t);
        emb_h_0+=      1.986929e-05*Math.cos( 5.80464886318 +      1577.3435424478 * t);
        emb_h_0+=     0.01628447663*Math.cos(           0.0 +                  0.0 * t);

        let emb_h_1 = 0.0;
        emb_h_1+=     0.00062029655*Math.cos( 3.14159265359 +                  0.0 * t);
        emb_h_1=emb_h_1*t;

        let emb_h_2 = 0.0;
        emb_h_2+=      3.382631e-05*Math.cos( 3.14159265359 +                  0.0 * t);
        emb_h_2=emb_h_2*t*t;

        return emb_h_2+emb_h_1+emb_h_0;
    }

    private static emb_k(t: number): number {
        let emb_k_0 = 0.0;
        emb_k_0+=      1.497439e-05*Math.cos( 3.72409379834 +       529.6909650946 * t);
        emb_k_0+=      1.859231e-05*Math.cos( 0.55463591479 +      5223.6939198022 * t);
        emb_k_0+=      1.988852e-05*Math.cos( 4.23374621009 +      1577.3435424478 * t);
        emb_k_0+=      0.0037408165*Math.cos( 3.14159265359 +                  0.0 * t);

        let emb_k_1 = 0.0;
        emb_k_1+=     0.00082267418*Math.cos( 3.14159265359 +                  0.0 * t);
        emb_k_1=emb_k_1*t;

        let emb_k_2 = 0.0;
        emb_k_2+=      2.762465e-05*Math.cos(           0.0 +                  0.0 * t);
        emb_k_2=emb_k_2*t*t;

        return emb_k_2+emb_k_1+emb_k_0;
    }

    private static emb_l(t: number): number {
        let emb_l_0 = 0.0;
        emb_l_0+=      1.089612e-05*Math.cos( 1.10654596593 +      1577.3435424478 * t);
        emb_l_0+=      1.263517e-05*Math.cos( 2.03240137643 +       529.6909650946 * t);
        emb_l_0+=      1.268612e-05*Math.cos( 1.27476353113 +      7860.4193924392 * t);
        emb_l_0+=      1.664099e-05*Math.cos( 6.13527980181 +      3930.2096962196 * t);
        emb_l_0+=      2.056367e-05*Math.cos( 3.87949142209 +     11506.7697697936 * t);
        emb_l_0+=      3.417568e-05*Math.cos( 2.82887613695 +          3.523118349 * t);
        emb_l_0+=     1.75347045953*Math.cos(           0.0 +                  0.0 * t);

        let emb_l_1 = 0.0;
        emb_l_1+=   6283.0758499914*Math.cos(           0.0 +                  0.0 * t);
        emb_l_1=emb_l_1*t;

        return emb_l_1+emb_l_0;
    }

    private static emb_p(t: number): number {
        let emb_p_1 = 0.0;
        emb_p_1+=     0.00010180375*Math.cos(           0.0 +                  0.0 * t);
        emb_p_1=emb_p_1*t;

        let emb_p_2 = 0.0;
        emb_p_2+=      4.701998e-05*Math.cos(           0.0 +                  0.0 * t);
        emb_p_2=emb_p_2*t*t;

        return emb_p_2+emb_p_1;
    }

    private static emb_q(t: number): number {
        let emb_q_1 = 0.0;
        emb_q_1+=     0.00113468869*Math.cos( 3.14159265359 +                  0.0 * t);
        emb_q_1=emb_q_1*t;

        let emb_q_2 = 0.0;
        emb_q_2+=      1.237314e-05*Math.cos(           0.0 +                  0.0 * t);
        emb_q_2=emb_q_2*t*t;

        return emb_q_2+emb_q_1;
    }

    private static jupiter_a(t: number): number {
        let jupiter_a_0 = 0.0;
        jupiter_a_0+=      1.103727e-05*Math.cos(   6.066784314 +       1795.258443721 * t);
        jupiter_a_0+=      1.186903e-05*Math.cos( 2.64995167523 +       846.0828347512 * t);
        jupiter_a_0+=      1.213593e-05*Math.cos( 1.06750572685 +       1155.361157407 * t);
        jupiter_a_0+=      1.214418e-05*Math.cos( 5.61722097881 +      2001.4439921582 * t);
        jupiter_a_0+=      1.269999e-05*Math.cos( 3.71806964818 +        426.598190876 * t);
        jupiter_a_0+=      1.312912e-05*Math.cos( 2.44966148532 +        639.897286314 * t);
        jupiter_a_0+=      1.629945e-05*Math.cos( 0.03571048023 +      1478.8665740644 * t);
        jupiter_a_0+=      1.661953e-05*Math.cos( 4.44977785904 +      2214.7430875962 * t);
        jupiter_a_0+=      1.907151e-05*Math.cos(  1.3857317786 +       838.9692877504 * t);
        jupiter_a_0+=      2.098973e-05*Math.cos( 0.26695969427 +      1162.4747044078 * t);
        jupiter_a_0+=      2.137176e-05*Math.cos( 4.12641996837 +       529.6909650946 * t);
        jupiter_a_0+=      2.159445e-05*Math.cos( 5.88093480007 +      1685.0521225016 * t);
        jupiter_a_0+=      3.161638e-05*Math.cos( 1.66903371591 +       522.5774180938 * t);
        jupiter_a_0+=      3.403855e-05*Math.cos( 4.69439311157 +      1898.3512179396 * t);
        jupiter_a_0+=      3.812238e-05*Math.cos(  6.1488951165 +       1368.660252845 * t);
        jupiter_a_0+=      5.492322e-05*Math.cos( 6.22811858833 +       110.2063212194 * t);
        jupiter_a_0+=      6.545032e-05*Math.cos( 1.97539564312 +       206.1855484372 * t);
        jupiter_a_0+=      6.702248e-05*Math.cos( 0.13787303369 +      1052.2683831884 * t);
        jupiter_a_0+=      7.016965e-05*Math.cos( 4.94542752265 +       1581.959348283 * t);
        jupiter_a_0+=      7.170006e-05*Math.cos( 2.57687162897 +      9683.5945811164 * t);
        jupiter_a_0+=      7.808378e-05*Math.cos(  1.1539218525 +      5753.3848848968 * t);
        jupiter_a_0+=     0.00011836569*Math.cos( 0.41496888665 +       735.8765135318 * t);
        jupiter_a_0+=     0.00014633106*Math.cos( 5.20240925402 +      1265.5674786264 * t);
        jupiter_a_0+=     0.00020585372*Math.cos( 5.98131661466 +       316.3918696566 * t);
        jupiter_a_0+=      0.0002181433*Math.cos( 0.70025220178 +       419.4846438752 * t);
        jupiter_a_0+=     0.00025558941*Math.cos( 6.15962426898 +         7.1135470008 * t);
        jupiter_a_0+=     0.00031138634*Math.cos( 5.46486196547 +       949.1756089698 * t);
        jupiter_a_0+=     0.00032272046*Math.cos( 1.90381613358 +       103.0927742186 * t);
        jupiter_a_0+=     0.00069070151*Math.cos( 5.72686174779 +       632.7837393132 * t);
        jupiter_a_0+=     5.20260319132*Math.cos(           0.0 +                  0.0 * t);

        let jupiter_a_1 = 0.0;
        jupiter_a_1+=      1.611596e-05*Math.cos( 2.13915074201 +       735.8765135318 * t);
        jupiter_a_1+=      1.760156e-05*Math.cos( 3.67637229071 +       206.1855484372 * t);
        jupiter_a_1+=      2.846542e-05*Math.cos( 2.88143856615 +       103.0927742186 * t);
        jupiter_a_1+=      2.974577e-05*Math.cos( 2.40984161552 +       419.4846438752 * t);
        jupiter_a_1+=     0.00010177614*Math.cos( 4.46063225487 +         7.1135470008 * t);
        jupiter_a_1=jupiter_a_1*t;

        let jupiter_a_2 = 0.0;
        jupiter_a_2+=      2.100381e-05*Math.cos( 2.75770207184 +         7.1135470008 * t);
        jupiter_a_2=jupiter_a_2*t*t;

        return jupiter_a_2+jupiter_a_1+jupiter_a_0;
    }

    private static jupiter_h(t: number): number {
        let jupiter_h_0 = 0.0;
        jupiter_h_0+=       1.03816e-05*Math.cos( 0.18273665816 +      6283.0758499914 * t);
        jupiter_h_0+=      1.205591e-05*Math.cos( 3.58200423326 +       316.3918696566 * t);
        jupiter_h_0+=      1.251514e-05*Math.cos( 0.53303247088 +        426.598190876 * t);
        jupiter_h_0+=      1.501758e-05*Math.cos( 4.71935111593 +      1162.4747044078 * t);
        jupiter_h_0+=      1.580155e-05*Math.cos( 5.93627628914 +      1052.2683831884 * t);
        jupiter_h_0+=      2.032835e-05*Math.cos( 1.12581931301 +       522.5774180938 * t);
        jupiter_h_0+=      2.842733e-05*Math.cos( 2.22519565559 +       529.6909650946 * t);
        jupiter_h_0+=      3.749183e-05*Math.cos( 6.17601797762 +       735.8765135318 * t);
        jupiter_h_0+=      6.402161e-05*Math.cos( 1.39213151486 +       206.1855484372 * t);
        jupiter_h_0+=       7.91439e-05*Math.cos( 2.52216677357 +        213.299095438 * t);
        jupiter_h_0+=     0.00010468075*Math.cos( 0.14414631816 +       419.4846438752 * t);
        jupiter_h_0+=     0.00012686502*Math.cos( 1.52173271472 +       110.2063212194 * t);
        jupiter_h_0+=     0.00037689163*Math.cos( 0.46902799622 +         7.1135470008 * t);
        jupiter_h_0+=     0.00064278139*Math.cos( 0.39928981461 +       103.0927742186 * t);
        jupiter_h_0+=     0.01200385748*Math.cos(           0.0 +                  0.0 * t);

        let jupiter_h_1 = 0.0;
        jupiter_h_1+=      1.666197e-05*Math.cos( 6.26691415094 +       110.2063212194 * t);
        jupiter_h_1+=     0.00010164439*Math.cos( 5.05135857516 +         7.1135470008 * t);
        jupiter_h_1+=      0.0021714936*Math.cos(           0.0 +                  0.0 * t);
        jupiter_h_1=jupiter_h_1*t;

        let jupiter_h_2 = 0.0;
        jupiter_h_2+=      1.409659e-05*Math.cos( 3.32663555725 +         7.1135470008 * t);
        jupiter_h_2+=      9.858539e-05*Math.cos(           0.0 +                  0.0 * t);
        jupiter_h_2=jupiter_h_2*t*t;

        return jupiter_h_2+jupiter_h_1+jupiter_h_0;
    }

    private static jupiter_k(t: number): number {
        let jupiter_k_0 = 0.0;
        jupiter_k_0+=      1.038475e-05*Math.cos( 1.75340907792 +      6283.0758499914 * t);
        jupiter_k_0+=      1.472174e-05*Math.cos(  0.0738901965 +      1162.4747044078 * t);
        jupiter_k_0+=      1.558179e-05*Math.cos( 4.27725789559 +      1052.2683831884 * t);
        jupiter_k_0+=      1.747828e-05*Math.cos( 1.94483888566 +        426.598190876 * t);
        jupiter_k_0+=      2.035004e-05*Math.cos( 5.81350208632 +       522.5774180938 * t);
        jupiter_k_0+=      2.959813e-05*Math.cos( 3.68441778896 +       529.6909650946 * t);
        jupiter_k_0+=      3.765858e-05*Math.cos( 4.56504910618 +       735.8765135318 * t);
        jupiter_k_0+=      6.494479e-05*Math.cos( 6.11501213894 +       206.1855484372 * t);
        jupiter_k_0+=      8.220806e-05*Math.cos( 3.97331004047 +        213.299095438 * t);
        jupiter_k_0+=     0.00010740857*Math.cos( 4.85106997988 +       419.4846438752 * t);
        jupiter_k_0+=     0.00013518804*Math.cos( 2.94820975394 +       110.2063212194 * t);
        jupiter_k_0+=     0.00038006128*Math.cos( 2.03714771852 +         7.1135470008 * t);
        jupiter_k_0+=      0.0006528701*Math.cos( 5.14135675663 +       103.0927742186 * t);
        jupiter_k_0+=     0.04698572124*Math.cos(           0.0 +                  0.0 * t);

        let jupiter_k_1 = 0.0;
        jupiter_k_1+=      1.978042e-05*Math.cos( 1.13748818129 +       110.2063212194 * t);
        jupiter_k_1+=     0.00010303903*Math.cos( 0.33250058601 +         7.1135470008 * t);
        jupiter_k_1+=     0.00113010377*Math.cos(           0.0 +                  0.0 * t);
        jupiter_k_1=jupiter_k_1*t;

        let jupiter_k_2 = 0.0;
        jupiter_k_2+=      1.442597e-05*Math.cos( 4.88233039271 +         7.1135470008 * t);
        jupiter_k_2+=     0.00010930126*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_k_2=jupiter_k_2*t*t;

        return jupiter_k_2+jupiter_k_1+jupiter_k_0;
    }

    private static jupiter_l(t: number): number {
        let jupiter_l_0 = 0.0;
        jupiter_l_0+=      1.238477e-05*Math.cos( 1.47069491582 +       1368.660252845 * t);
        jupiter_l_0+=      1.277074e-05*Math.cos( 1.00600288328 +      9683.5945811164 * t);
        jupiter_l_0+=      1.327642e-05*Math.cos( 5.86632120612 +      5753.3848848968 * t);
        jupiter_l_0+=      1.712597e-05*Math.cos( 3.32169437274 +       522.5774180938 * t);
        jupiter_l_0+=        1.8247e-05*Math.cos( 5.72883078185 +       529.6909650946 * t);
        jupiter_l_0+=      2.028225e-05*Math.cos( 1.06374295158 +         3.1813937377 * t);
        jupiter_l_0+=      2.129932e-05*Math.cos(  0.2186774321 +       1581.959348283 * t);
        jupiter_l_0+=      2.441576e-05*Math.cos(  1.7497498297 +      1052.2683831884 * t);
        jupiter_l_0+=      4.646804e-05*Math.cos( 4.69958744435 +         3.9321532631 * t);
        jupiter_l_0+=      4.844502e-05*Math.cos( 0.48003774299 +      1265.5674786264 * t);
        jupiter_l_0+=      4.874926e-05*Math.cos( 0.14125173816 +        213.299095438 * t);
        jupiter_l_0+=       5.02848e-05*Math.cos( 1.30119547663 +       110.2063212194 * t);
        jupiter_l_0+=      5.167226e-05*Math.cos( 2.03396982022 +       735.8765135318 * t);
        jupiter_l_0+=      5.301368e-05*Math.cos( 1.30630311058 +        14.2270940016 * t);
        jupiter_l_0+=      6.812004e-05*Math.cos( 3.60956583595 +       206.1855484372 * t);
        jupiter_l_0+=      0.0001173059*Math.cos( 0.74641135653 +       949.1756089698 * t);
        jupiter_l_0+=     0.00013391386*Math.cos( 2.32518571601 +       419.4846438752 * t);
        jupiter_l_0+=     0.00023791184*Math.cos( 1.27622244841 +       316.3918696566 * t);
        jupiter_l_0+=     0.00032251188*Math.cos( 1.01358443926 +       632.7837393132 * t);
        jupiter_l_0+=     0.00062308554*Math.cos( 3.41857056095 +       103.0927742186 * t);
        jupiter_l_0+=     0.00573506125*Math.cos(  1.4439630642 +         7.1135470008 * t);
        jupiter_l_0+=     0.59954649739*Math.cos(           0.0 +                  0.0 * t);

        let jupiter_l_1 = 0.0;
        jupiter_l_1+=      1.163261e-05*Math.cos( 0.51449095629 +         3.9321532631 * t);
        jupiter_l_1+=      1.295763e-05*Math.cos( 5.55131472287 +         3.1813937377 * t);
        jupiter_l_1+=      1.825678e-05*Math.cos( 5.28404506455 +       206.1855484372 * t);
        jupiter_l_1+=      1.827425e-05*Math.cos( 3.98800487338 +       419.4846438752 * t);
        jupiter_l_1+=      4.234649e-05*Math.cos( 5.88973718187 +        14.2270940016 * t);
        jupiter_l_1+=      5.840251e-05*Math.cos(  4.4273475525 +       103.0927742186 * t);
        jupiter_l_1+=     0.00228875491*Math.cos( 6.02639570653 +         7.1135470008 * t);
        jupiter_l_1+=    529.6909650946*Math.cos(           0.0 +                  0.0 * t);
        jupiter_l_1=jupiter_l_1*t;

        let jupiter_l_2 = 0.0;
        jupiter_l_2+=       1.71976e-05*Math.cos( 4.18704068143 +        14.2270940016 * t);
        jupiter_l_2+=     0.00014837133*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_l_2+=     0.00047224495*Math.cos( 4.32142959829 +         7.1135470008 * t);
        jupiter_l_2=jupiter_l_2*t*t;

        let jupiter_l_3 = 0.0;
        jupiter_l_3+=      6.500387e-05*Math.cos(  2.5985888016 +         7.1135470008 * t);
        jupiter_l_3=jupiter_l_3*t*t*t;

        return jupiter_l_3+jupiter_l_2+jupiter_l_1+jupiter_l_0;
    }

    private static jupiter_p(t: number): number {
        let jupiter_p_0 = 0.0;
        jupiter_p_0+=     0.01118377157*Math.cos(           0.0 +                  0.0 * t);

        let jupiter_p_1 = 0.0;
        jupiter_p_1+=     0.00023427562*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_p_1=jupiter_p_1*t;

        let jupiter_p_2 = 0.0;
        jupiter_p_2+=       2.08676e-05*Math.cos(           0.0 +                  0.0 * t);
        jupiter_p_2=jupiter_p_2*t*t;

        return jupiter_p_2+jupiter_p_1+jupiter_p_0;
    }

    private static jupiter_q(t: number): number {
        let jupiter_q_0 = 0.0;
        jupiter_q_0+=     0.00206561098*Math.cos( 3.14159265359 +                  0.0 * t);

        let jupiter_q_1 = 0.0;
        jupiter_q_1+=     0.00031340156*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_q_1=jupiter_q_1*t;

        let jupiter_q_2 = 0.0;
        jupiter_q_2+=      1.667392e-05*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_q_2=jupiter_q_2*t*t;

        return jupiter_q_2+jupiter_q_1+jupiter_q_0;
    }

    private static mars_a(t: number): number {
        let mars_a_0 = 0.0;
        mars_a_0+=      1.039285e-05*Math.cos(  5.5584889074 +      2810.9214616052 * t);
        mars_a_0+=      1.214966e-05*Math.cos( 5.01404770046 +       398.1490034082 * t);
        mars_a_0+=      1.412662e-05*Math.cos(  3.2553877172 +      6872.6731195112 * t);
        mars_a_0+=      1.580816e-05*Math.cos(   1.832327862 +      2942.4634232916 * t);
        mars_a_0+=      1.639879e-05*Math.cos( 4.27793460842 +      8432.7643848156 * t);
        mars_a_0+=      2.201786e-05*Math.cos( 1.39247552912 +      2281.2304965106 * t);
        mars_a_0+=      6.601698e-05*Math.cos( 4.92149777465 +      5621.8429232104 * t);
        mars_a_0+=     1.52367934191*Math.cos(           0.0 +                  0.0 * t);

        return mars_a_0;
    }

    private static mars_h(t: number): number {
        let mars_h_0 = 0.0;
        mars_h_0+=      1.024786e-05*Math.cos( 1.39271679546 +       796.2980068164 * t);
        mars_h_0+=      1.168491e-05*Math.cos( 0.61541102304 +       1751.539531416 * t);
        mars_h_0+=      1.376104e-05*Math.cos( 5.91426857264 +      5092.1519581158 * t);
        mars_h_0+=      1.767646e-05*Math.cos( 2.80798995472 +       398.1490034082 * t);
        mars_h_0+=      2.592276e-05*Math.cos( 0.12646371989 +      1059.3819301892 * t);
        mars_h_0+=      4.516507e-05*Math.cos( 2.19998239682 +       529.6909650946 * t);
        mars_h_0+=      8.158391e-05*Math.cos( 0.29399378947 +      2281.2304965106 * t);
        mars_h_0+=     0.03789973236*Math.cos( 3.14159265359 +                  0.0 * t);

        let mars_h_1 = 0.0;
        mars_h_1+=     0.00624657465*Math.cos(           0.0 +                  0.0 * t);
        mars_h_1=mars_h_1*t;

        let mars_h_2 = 0.0;
        mars_h_2+=     0.00015529482*Math.cos(           0.0 +                  0.0 * t);
        mars_h_2=mars_h_2*t*t;

        return mars_h_2+mars_h_1+mars_h_0;
    }

    private static mars_k(t: number): number {
        let mars_k_0 = 0.0;
        mars_k_0+=      1.023098e-05*Math.cos( 2.96623191194 +       796.2980068164 * t);
        mars_k_0+=      1.174163e-05*Math.cos( 5.31228741951 +       1751.539531416 * t);
        mars_k_0+=       1.30058e-05*Math.cos( 4.32747267803 +      5092.1519581158 * t);
        mars_k_0+=      1.710954e-05*Math.cos( 4.34158755371 +       398.1490034082 * t);
        mars_k_0+=      2.590017e-05*Math.cos( 1.69837709855 +      1059.3819301892 * t);
        mars_k_0+=      4.631835e-05*Math.cos( 3.76981942051 +       529.6909650946 * t);
        mars_k_0+=      8.228685e-05*Math.cos( 4.99515670335 +      2281.2304965106 * t);
        mars_k_0+=     0.08536560252*Math.cos(           0.0 +                  0.0 * t);

        let mars_k_1 = 0.0;
        mars_k_1+=     0.00376330152*Math.cos(           0.0 +                  0.0 * t);
        mars_k_1=mars_k_1*t;

        let mars_k_2 = 0.0;
        mars_k_2+=     0.00024657776*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_k_2=mars_k_2*t*t;

        return mars_k_2+mars_k_1+mars_k_0;
    }

    private static mars_l(t: number): number {
        let mars_l_0 = 0.0;
        mars_l_0+=      1.044992e-05*Math.cos( 0.65472060539 +      5092.1519581158 * t);
        mars_l_0+=      1.124144e-05*Math.cos( 2.94366443964 +       1751.539531416 * t);
        mars_l_0+=      1.238027e-05*Math.cos( 1.66209647251 +      2544.3144198834 * t);
        mars_l_0+=      1.262899e-05*Math.cos( 0.26625922905 +      2942.4634232916 * t);
        mars_l_0+=      1.686484e-05*Math.cos( 0.77141234937 +       529.6909650946 * t);
        mars_l_0+=      1.733875e-05*Math.cos( 5.83752078998 +      8432.7643848156 * t);
        mars_l_0+=      2.124413e-05*Math.cos( 5.04195951157 +       796.2980068164 * t);
        mars_l_0+=       2.93759e-05*Math.cos( 6.07893711376 +         0.0673103028 * t);
        mars_l_0+=      3.054393e-05*Math.cos( 0.85670458531 +       191.4482661116 * t);
        mars_l_0+=      3.321877e-05*Math.cos( 0.85790353464 +      2810.9214616052 * t);
        mars_l_0+=      5.745457e-05*Math.cos( 2.94479034922 +      2281.2304965106 * t);
        mars_l_0+=      6.592291e-05*Math.cos(  0.3679227134 +       398.1490034082 * t);
        mars_l_0+=      8.395541e-05*Math.cos( 0.20835197721 +      5621.8429232104 * t);
        mars_l_0+=      8.926849e-05*Math.cos( 4.15697846934 +         0.0172536522 * t);
        mars_l_0+=     0.00027745033*Math.cos( 5.97049541372 +          3.523118349 * t);
        mars_l_0+=     6.20347611291*Math.cos(           0.0 +                  0.0 * t);

        let mars_l_1 = 0.0;
        mars_l_1+=      3.452439e-05*Math.cos( 4.73210379431 +          3.523118349 * t);
        mars_l_1+=  3340.61242669981*Math.cos(           0.0 +                  0.0 * t);
        mars_l_1=mars_l_1*t;

        return mars_l_1+mars_l_0;
    }

    private static mars_p(t: number): number {
        let mars_p_0 = 0.0;
        mars_p_0+=     0.01228449307*Math.cos(           0.0 +                  0.0 * t);

        let mars_p_1 = 0.0;
        mars_p_1+=     0.00108020083*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_p_1=mars_p_1*t;

        let mars_p_2 = 0.0;
        mars_p_2+=      1.922224e-05*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_p_2=mars_p_2*t*t;

        return mars_p_2+mars_p_1+mars_p_0;
    }

    private static mars_q(t: number): number {
        let mars_q_0 = 0.0;
        mars_q_0+=     0.01047042574*Math.cos(           0.0 +                  0.0 * t);

        let mars_q_1 = 0.0;
        mars_q_1+=     0.00017138526*Math.cos(           0.0 +                  0.0 * t);
        mars_q_1=mars_q_1*t;

        let mars_q_2 = 0.0;
        mars_q_2+=      4.077491e-05*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_q_2=mars_q_2*t*t;

        return mars_q_2+mars_q_1+mars_q_0;
    }

    private static mercury_a(t: number): number {
        let mercury_a_0 = 0.0;
        mercury_a_0+=     0.38709830982*Math.cos(           0.0 +                  0.0 * t);

        return mercury_a_0;
    }

    private static mercury_h(t: number): number {
        let mercury_h_0 = 0.0;
        mercury_h_0+=     0.20072331368*Math.cos(           0.0 +                  0.0 * t);

        let mercury_h_1 = 0.0;
        mercury_h_1+=     0.00143750118*Math.cos(           0.0 +                  0.0 * t);
        mercury_h_1=mercury_h_1*t;

        let mercury_h_2 = 0.0;
        mercury_h_2+=       7.97412e-05*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_h_2=mercury_h_2*t*t;

        return mercury_h_2+mercury_h_1+mercury_h_0;
    }

    private static mercury_k(t: number): number {
        let mercury_k_0 = 0.0;
        mercury_k_0+=      0.0446605976*Math.cos(           0.0 +                  0.0 * t);

        let mercury_k_1 = 0.0;
        mercury_k_1+=     0.00552114624*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_k_1=mercury_k_1*t;

        let mercury_k_2 = 0.0;
        mercury_k_2+=      1.860568e-05*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_k_2=mercury_k_2*t*t;

        return mercury_k_2+mercury_k_1+mercury_k_0;
    }

    private static mercury_l(t: number): number {
        let mercury_l_0 = 0.0;
        mercury_l_0+=      1.732389e-05*Math.cos( 4.10404056787 +      5661.3320491522 * t);
        mercury_l_0+=      3.557754e-05*Math.cos( 1.51229384945 +      1109.3785520934 * t);
        mercury_l_0+=      4.4026088424*Math.cos(           0.0 +                  0.0 * t);

        let mercury_l_1 = 0.0;
        mercury_l_1+=  26087.9031415742*Math.cos(           0.0 +                  0.0 * t);
        mercury_l_1=mercury_l_1*t;

        return mercury_l_1+mercury_l_0;
    }

    private static mercury_p(t: number): number {
        let mercury_p_0 = 0.0;
        mercury_p_0+=     0.04563550461*Math.cos(           0.0 +                  0.0 * t);

        let mercury_p_1 = 0.0;
        mercury_p_1+=     0.00127633657*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_p_1=mercury_p_1*t;

        return mercury_p_1+mercury_p_0;
    }

    private static mercury_q(t: number): number {
        let mercury_q_0 = 0.0;
        mercury_q_0+=     0.04061563384*Math.cos(           0.0 +                  0.0 * t);

        let mercury_q_1 = 0.0;
        mercury_q_1+=     0.00065433117*Math.cos(           0.0 +                  0.0 * t);
        mercury_q_1=mercury_q_1*t;

        let mercury_q_2 = 0.0;
        mercury_q_2+=      1.071215e-05*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_q_2=mercury_q_2*t*t;

        return mercury_q_2+mercury_q_1+mercury_q_0;
    }

    private static neptune_a(t: number): number {
        let neptune_a_0 = 0.0;
        neptune_a_0+=      1.003414e-05*Math.cos( 3.30114109938 +         31.019488637 * t);
        neptune_a_0+=      1.009977e-05*Math.cos( 5.10943006583 +        98.8999885246 * t);
        neptune_a_0+=      1.048012e-05*Math.cos( 5.77490234485 +       291.7040307277 * t);
        neptune_a_0+=      1.051232e-05*Math.cos( 5.05228678509 +       564.8550553158 * t);
        neptune_a_0+=      1.128798e-05*Math.cos(  6.1764413465 +       251.4321310758 * t);
        neptune_a_0+=      1.166454e-05*Math.cos( 0.07504784936 +       846.0828347512 * t);
        neptune_a_0+=      1.259933e-05*Math.cos( 4.82781905172 +        366.485629295 * t);
        neptune_a_0+=      1.297766e-05*Math.cos( 0.47959536188 +       103.0927742186 * t);
        neptune_a_0+=      1.385383e-05*Math.cos( 1.54908001242 +      1474.6737883704 * t);
        neptune_a_0+=      1.433109e-05*Math.cos( 1.33180211256 +       451.9404211107 * t);
        neptune_a_0+=      1.599634e-05*Math.cos( 6.13584178809 +       106.9767433719 * t);
        neptune_a_0+=      1.625124e-05*Math.cos( 5.18800512745 +       415.2918581812 * t);
        neptune_a_0+=      1.646734e-05*Math.cos( 5.60253199044 +       255.0554677982 * t);
        neptune_a_0+=      1.685284e-05*Math.cos(  2.6816552433 +      12528.018664345 * t);
        neptune_a_0+=      1.749735e-05*Math.cos( 1.73835044368 +       528.2064923863 * t);
        neptune_a_0+=       1.75293e-05*Math.cos( 2.14333475172 +    52137.67324751059 * t);
        neptune_a_0+=      2.121509e-05*Math.cos( 4.66119138983 +       329.8370663655 * t);
        neptune_a_0+=      2.137597e-05*Math.cos(  2.6204097208 +      2080.6308247406 * t);
        neptune_a_0+=      2.141554e-05*Math.cos( 4.23262734613 +       700.6642392008 * t);
        neptune_a_0+=      2.189863e-05*Math.cos( 2.76170836241 +        72.0732855816 * t);
        neptune_a_0+=      2.504618e-05*Math.cos( 0.44310110215 +       312.1990839626 * t);
        neptune_a_0+=      2.598581e-05*Math.cos( 5.42929247282 +       218.4069048687 * t);
        neptune_a_0+=      2.620355e-05*Math.cos( 0.95334129551 +        395.578702239 * t);
        neptune_a_0+=      2.699023e-05*Math.cos( 0.89541716557 +       488.5889840402 * t);
        neptune_a_0+=      2.717873e-05*Math.cos( 2.38333001564 +        74.7815985673 * t);
        neptune_a_0+=      2.776207e-05*Math.cos( 5.94937385502 +        70.3281804424 * t);
        neptune_a_0+=      2.846186e-05*Math.cos( 0.20239512935 +       456.3938392356 * t);
        neptune_a_0+=      2.951694e-05*Math.cos(   5.433836195 +        911.042573332 * t);
        neptune_a_0+=       2.98295e-05*Math.cos( 4.38693444607 +       807.9497991134 * t);
        neptune_a_0+=        3.3533e-05*Math.cos( 1.79815387525 +       138.5174968707 * t);
        neptune_a_0+=       3.38612e-05*Math.cos( 6.14643908326 +      1019.7644218431 * t);
        neptune_a_0+=      3.392909e-05*Math.cos( 3.54659671932 +      1512.8068240082 * t);
        neptune_a_0+=      3.543495e-05*Math.cos( 5.42973911153 +       494.5268748734 * t);
        neptune_a_0+=      3.583908e-05*Math.cos( 4.49408030978 +        293.188503436 * t);
        neptune_a_0+=      3.677143e-05*Math.cos( 0.83586785926 +      1022.7333672597 * t);
        neptune_a_0+=      3.927886e-05*Math.cos( 3.58953387923 +       278.2588340188 * t);
        neptune_a_0+=      4.046438e-05*Math.cos( 4.93509230909 +      1028.3624415522 * t);
        neptune_a_0+=      4.057513e-05*Math.cos( 0.25568522011 +       594.6507036754 * t);
        neptune_a_0+=      4.133043e-05*Math.cos(  5.2548493513 +       181.7583419392 * t);
        neptune_a_0+=      4.369251e-05*Math.cos( 4.06194785498 +        39.6175083461 * t);
        neptune_a_0+=      4.544908e-05*Math.cos( 2.35139605515 +       567.8240007324 * t);
        neptune_a_0+=      4.934813e-05*Math.cos( 0.36064784582 +       529.6909650946 * t);
        neptune_a_0+=       5.62918e-05*Math.cos( 0.85835852864 +      1014.1353475506 * t);
        neptune_a_0+=      5.773397e-05*Math.cos( 2.64610145306 +         4.4534181249 * t);
        neptune_a_0+=       6.08335e-05*Math.cos( 4.32651626591 +       256.5399405065 * t);
        neptune_a_0+=      6.376652e-05*Math.cos( 5.76130274516 +        33.6796175129 * t);
        neptune_a_0+=       6.67486e-05*Math.cos( 5.07928918413 +       145.1097790097 * t);
        neptune_a_0+=      6.895671e-05*Math.cos( 0.98793536426 +        1124.34166877 * t);
        neptune_a_0+=      7.632319e-05*Math.cos( 3.96168072784 +       381.3516082374 * t);
        neptune_a_0+=      7.782789e-05*Math.cos( 2.39187318497 +       525.4981794006 * t);
        neptune_a_0+=      8.622145e-05*Math.cos( 5.37576545499 +     26049.7701059364 * t);
        neptune_a_0+=      8.707313e-05*Math.cos( 0.89208438481 +       3302.479391062 * t);
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

        let neptune_a_1 = 0.0;
        neptune_a_1+=       1.10546e-05*Math.cos(  4.8830643462 +       491.5579294568 * t);
        neptune_a_1+=      1.181676e-05*Math.cos( 1.42716610982 +       490.0734567485 * t);
        neptune_a_1+=      1.279417e-05*Math.cos( 4.85952483354 +       493.0424021651 * t);
        neptune_a_1+=      1.294918e-05*Math.cos(  0.1025818495 +       137.0330241624 * t);
        neptune_a_1+=      1.334471e-05*Math.cos( 5.44088442936 +        395.578702239 * t);
        neptune_a_1+=      1.396569e-05*Math.cos(  3.9522429184 +        453.424893819 * t);
        neptune_a_1+=      1.753956e-05*Math.cos( 3.31444002417 +      1028.3624415522 * t);
        neptune_a_1+=       1.78129e-05*Math.cos( 2.71816195692 +      1014.1353475506 * t);
        neptune_a_1+=        2.1102e-05*Math.cos( 5.77549830815 +       381.3516082374 * t);
        neptune_a_1+=      2.161942e-05*Math.cos( 2.11259824319 +         2.9689454166 * t);
        neptune_a_1+=       2.59404e-05*Math.cos( 4.47823296834 +       601.7642506762 * t);
        neptune_a_1+=      3.075458e-05*Math.cos( 4.97970096897 +        38.1330356378 * t);
        neptune_a_1+=      3.776476e-05*Math.cos( 1.42851534633 +       1550.939859646 * t);
        neptune_a_1+=     0.00010028658*Math.cos( 0.53331428424 +       168.0525127994 * t);
        neptune_a_1+=     0.00010242826*Math.cos( 0.02106658542 +        182.279606801 * t);
        neptune_a_1+=     0.00013646732*Math.cos( 3.31887794551 +         1.4844727083 * t);
        neptune_a_1+=     0.00016926224*Math.cos( 3.40079518197 +        484.444382456 * t);
        neptune_a_1+=      0.0001698372*Math.cos( 2.88749614679 +       498.6714764576 * t);
        neptune_a_1+=     0.00021981792*Math.cos( 5.24159938374 +       388.4651552382 * t);
        neptune_a_1+=     0.00035017221*Math.cos( 1.07792431879 +      1021.2488945514 * t);
        neptune_a_1=neptune_a_1*t;

        let neptune_a_2 = 0.0;
        neptune_a_2+=       1.31513e-05*Math.cos( 3.42363937604 +       175.1660598002 * t);
        neptune_a_2+=       1.59701e-05*Math.cos( 3.46010091566 +       388.4651552382 * t);
        neptune_a_2+=      2.066951e-05*Math.cos( 2.23303786678 +       168.0525127994 * t);
        neptune_a_2+=      2.115677e-05*Math.cos( 4.59469314887 +        182.279606801 * t);
        neptune_a_2+=      2.216295e-05*Math.cos( 0.00738785922 +       491.5579294568 * t);
        neptune_a_2+=      2.282135e-05*Math.cos( 6.09486118766 +      1021.2488945514 * t);
        neptune_a_2+=      3.493966e-05*Math.cos( 5.10707633632 +        484.444382456 * t);
        neptune_a_2+=      3.503585e-05*Math.cos( 1.18344352637 +       498.6714764576 * t);
        neptune_a_2=neptune_a_2*t*t;

        return neptune_a_2+neptune_a_1+neptune_a_0;
    }

    private static neptune_h(t: number): number {
        let neptune_h_0 = 0.0;
        neptune_h_0+=      1.135355e-05*Math.cos( 4.85626290641 +        36.6485629295 * t);
        neptune_h_0+=      1.142076e-05*Math.cos( 0.98492427695 +        33.6796175129 * t);
        neptune_h_0+=      1.184075e-05*Math.cos( 0.08056022972 +       108.4612160802 * t);
        neptune_h_0+=      1.246945e-05*Math.cos( 1.12070201833 +         4.4534181249 * t);
        neptune_h_0+=      1.331561e-05*Math.cos( 2.05769294802 +       451.9404211107 * t);
        neptune_h_0+=      1.340035e-05*Math.cos( 3.02916883266 +       454.9093665273 * t);
        neptune_h_0+=      1.677116e-05*Math.cos( 5.77508123167 +       491.5579294568 * t);
        neptune_h_0+=      1.685035e-05*Math.cos( 3.61864095194 +       350.3321196004 * t);
        neptune_h_0+=      1.961993e-05*Math.cos( 5.89537496236 +       415.2918581812 * t);
        neptune_h_0+=      2.367379e-05*Math.cos( 1.60551412353 +      10213.285546211 * t);
        neptune_h_0+=      2.501304e-05*Math.cos( 0.18292649334 +      6283.0758499914 * t);
        neptune_h_0+=      2.507622e-05*Math.cos( 6.19465876991 +        71.8126531507 * t);
        neptune_h_0+=      4.234919e-05*Math.cos( 4.81228455925 +        426.598190876 * t);
        neptune_h_0+=      5.954962e-05*Math.cos( 4.46229789809 +       983.1158589136 * t);
        neptune_h_0+=       6.86858e-05*Math.cos( 6.02685250841 +        35.1640902212 * t);
        neptune_h_0+=      8.735589e-05*Math.cos( 3.91135863579 +        74.7815985673 * t);
        neptune_h_0+=     0.00015834646*Math.cos( 2.35068672532 +         2.9689454166 * t);
        neptune_h_0+=     0.00016671327*Math.cos( 5.66175544286 +      1059.3819301892 * t);
        neptune_h_0+=     0.00034070791*Math.cos( 4.38749299404 +       137.0330241624 * t);
        neptune_h_0+=     0.00059736086*Math.cos( 3.56479788019 +         1.4844727083 * t);
        neptune_h_0+=     0.00076068364*Math.cos( 5.58664660018 +        213.299095438 * t);
        neptune_h_0+=     0.00131043136*Math.cos( 4.11313570675 +        453.424893819 * t);
        neptune_h_0+=     0.00136278888*Math.cos( 3.74103613444 +        38.1330356378 * t);
        neptune_h_0+=     0.00344034784*Math.cos( 5.31201105782 +       529.6909650946 * t);
        neptune_h_0+=     0.00669242413*Math.cos(           0.0 +                  0.0 * t);

        let neptune_h_1 = 0.0;
        neptune_h_1+=      7.824336e-05*Math.cos(           0.0 +                  0.0 * t);
        neptune_h_1=neptune_h_1*t;

        return neptune_h_1+neptune_h_0;
    }

    private static neptune_k(t: number): number {
        let neptune_k_0 = 0.0;
        neptune_k_0+=      1.146706e-05*Math.cos( 5.69699174151 +        33.6796175129 * t);
        neptune_k_0+=      1.205329e-05*Math.cos(   4.794655076 +       108.4612160802 * t);
        neptune_k_0+=      1.253789e-05*Math.cos( 2.69174021181 +         4.4534181249 * t);
        neptune_k_0+=      1.331545e-05*Math.cos( 0.48693991119 +       451.9404211107 * t);
        neptune_k_0+=        1.3393e-05*Math.cos( 1.45875695517 +       454.9093665273 * t);
        neptune_k_0+=      1.660368e-05*Math.cos( 2.04259826446 +       350.3321196004 * t);
        neptune_k_0+=       1.78782e-05*Math.cos( 3.54792002715 +       491.5579294568 * t);
        neptune_k_0+=      1.961981e-05*Math.cos( 4.32459826389 +       415.2918581812 * t);
        neptune_k_0+=      2.367417e-05*Math.cos(  3.1774841957 +      10213.285546211 * t);
        neptune_k_0+=      2.501595e-05*Math.cos( 1.75321813791 +      6283.0758499914 * t);
        neptune_k_0+=      2.537316e-05*Math.cos(  4.6245678947 +        71.8126531507 * t);
        neptune_k_0+=      4.237518e-05*Math.cos( 0.09987056189 +        426.598190876 * t);
        neptune_k_0+=      5.959757e-05*Math.cos(  2.8919574042 +       983.1158589136 * t);
        neptune_k_0+=       6.85341e-05*Math.cos( 4.45483856472 +        35.1640902212 * t);
        neptune_k_0+=      8.693527e-05*Math.cos( 5.48153407016 +        74.7815985673 * t);
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

    private static neptune_l(t: number): number {
        let neptune_l_0 = 0.0;
        neptune_l_0+=      1.095165e-05*Math.cos( 1.53739829302 +        213.299095438 * t);
        neptune_l_0+=      1.181561e-05*Math.cos( 1.89487772228 +        453.424893819 * t);
        neptune_l_0+=       1.19645e-05*Math.cos( 0.69928495249 +       1550.939859646 * t);
        neptune_l_0+=      1.262634e-05*Math.cos( 0.12984088183 +        484.444382456 * t);
        neptune_l_0+=      1.269673e-05*Math.cos( 3.01840568374 +       498.6714764576 * t);
        neptune_l_0+=      1.404152e-05*Math.cos(  6.2802571865 +        71.8126531507 * t);
        neptune_l_0+=      1.659134e-05*Math.cos( 2.11418238398 +       350.3321196004 * t);
        neptune_l_0+=      1.735754e-05*Math.cos( 5.54936890835 +        38.1330356378 * t);
        neptune_l_0+=      1.859332e-05*Math.cos( 5.39275689304 +        146.594251718 * t);
        neptune_l_0+=      2.219849e-05*Math.cos( 4.22711801112 +       490.0734567485 * t);
        neptune_l_0+=      2.240383e-05*Math.cos( 4.20707088869 +         4.4534181249 * t);
        neptune_l_0+=      2.281838e-05*Math.cos( 5.19871056223 +       493.0424021651 * t);
        neptune_l_0+=      3.147352e-05*Math.cos( 2.57721133604 +     10175.1525105732 * t);
        neptune_l_0+=      3.322163e-05*Math.cos( 1.15397315005 +      6244.9428143536 * t);
        neptune_l_0+=      3.802349e-05*Math.cos( 5.22333208877 +       109.9456887885 * t);
        neptune_l_0+=      4.659994e-05*Math.cos( 1.33477314139 +       529.6909650946 * t);
        neptune_l_0+=      4.680334e-05*Math.cos( 6.09321391056 +        35.1640902212 * t);
        neptune_l_0+=      5.377245e-05*Math.cos( 5.78272041689 +       388.4651552382 * t);
        neptune_l_0+=      8.886033e-05*Math.cos( 5.05361823928 +         73.297125859 * t);
        neptune_l_0+=     0.00016297466*Math.cos( 4.88440388945 +        36.6485629295 * t);
        neptune_l_0+=     0.00021806166*Math.cos( 0.34972092081 +      1021.2488945514 * t);
        neptune_l_0+=     0.00041703723*Math.cos( 5.41098453927 +         2.9689454166 * t);
        neptune_l_0+=     0.00092919548*Math.cos( 0.27470534254 +       175.1660598002 * t);
        neptune_l_0+=     0.00441710236*Math.cos( 0.00020868462 +       491.5579294568 * t);
        neptune_l_0+=     0.01017628072*Math.cos( 0.48586478491 +         1.4844727083 * t);
        neptune_l_0+=     5.31188628676*Math.cos(           0.0 +                  0.0 * t);

        let neptune_l_1 = 0.0;
        neptune_l_1+=      1.099574e-05*Math.cos( 5.79033065445 +      1021.2488945514 * t);
        neptune_l_1+=      1.295022e-05*Math.cos( 3.67289349677 +         2.9689454166 * t);
        neptune_l_1+=     0.00016569412*Math.cos( 4.86311838543 +         1.4844727083 * t);
        neptune_l_1+=     38.1330356378*Math.cos(           0.0 +                  0.0 * t);
        neptune_l_1=neptune_l_1*t;

        return neptune_l_1+neptune_l_0;
    }

    private static neptune_p(t: number): number {
        let neptune_p_0 = 0.0;
        neptune_p_0+=      1.009343e-05*Math.cos( 3.18233913691 +       491.5579294568 * t);
        neptune_p_0+=     0.01151683985*Math.cos(           0.0 +                  0.0 * t);

        let neptune_p_1 = 0.0;
        neptune_p_1+=      2.575536e-05*Math.cos(           0.0 +                  0.0 * t);
        neptune_p_1=neptune_p_1*t;

        return neptune_p_1+neptune_p_0;
    }

    private static neptune_q(t: number): number {
        let neptune_q_0 = 0.0;
        neptune_q_0+=       1.01007e-05*Math.cos( 1.61174508752 +       491.5579294568 * t);
        neptune_q_0+=     0.01029147819*Math.cos( 3.14159265359 +                  0.0 * t);

        return neptune_q_0;
    }

    private static saturn_a(t: number): number {
        let saturn_a_0 = 0.0;
        saturn_a_0+=      1.010817e-05*Math.cos( 2.14079742612 +       692.5874843535 * t);
        saturn_a_0+=      1.039659e-05*Math.cos( 1.70722458368 +       2950.619601128 * t);
        saturn_a_0+=      1.065404e-05*Math.cos( 1.63151081253 +      5856.4776591154 * t);
        saturn_a_0+=      1.073545e-05*Math.cos( 3.09127102485 +      2420.9286360334 * t);
        saturn_a_0+=      1.144205e-05*Math.cos( 5.63300199931 +      1692.1656695024 * t);
        saturn_a_0+=      1.374324e-05*Math.cos( 2.32562998878 +      1258.4539316256 * t);
        saturn_a_0+=      1.424893e-05*Math.cos( 3.20459836704 +       117.3198682202 * t);
        saturn_a_0+=      1.496629e-05*Math.cos( 3.43523329566 +      1045.1548361876 * t);
        saturn_a_0+=       1.49986e-05*Math.cos( 4.84564304198 +      1589.0728952838 * t);
        saturn_a_0+=      1.549891e-05*Math.cos( 3.53099004581 +     25874.6040461362 * t);
        saturn_a_0+=      1.609936e-05*Math.cos( 2.39037566076 +      2428.0421830342 * t);
        saturn_a_0+=      1.634105e-05*Math.cos( 5.33009798117 +      3127.3133312618 * t);
        saturn_a_0+=      1.720664e-05*Math.cos(  3.1685072882 +       340.7708920448 * t);
        saturn_a_0+=      1.763236e-05*Math.cos( 5.27023251258 +       199.0720014364 * t);
        saturn_a_0+=      1.772523e-05*Math.cos( 3.36928951644 +      2104.5367663768 * t);
        saturn_a_0+=      1.812532e-05*Math.cos( 0.02345178075 +         3.9321532631 * t);
        saturn_a_0+=      1.830544e-05*Math.cos( 0.83908078121 +      2847.5268269094 * t);
        saturn_a_0+=       1.87633e-05*Math.cos( 3.07619330668 +        853.196381752 * t);
        saturn_a_0+=       1.90707e-05*Math.cos( 1.95952356206 +      2634.2277314714 * t);
        saturn_a_0+=      2.180444e-05*Math.cos( 2.56104191923 +        942.062061969 * t);
        saturn_a_0+=      2.231204e-05*Math.cos( 3.70941707745 +        728.762966531 * t);
        saturn_a_0+=      2.318289e-05*Math.cos( 0.44379732912 +       554.0699874828 * t);
        saturn_a_0+=      2.510095e-05*Math.cos( 5.09716024446 +      1272.6810256272 * t);
        saturn_a_0+=      2.556787e-05*Math.cos( 2.77336009184 +       625.6701923124 * t);
        saturn_a_0+=      2.574202e-05*Math.cos( 2.64518630194 +      2111.6503133776 * t);
        saturn_a_0+=      2.908609e-05*Math.cos( 3.65144679149 +      1788.1448967202 * t);
        saturn_a_0+=      3.017391e-05*Math.cos( 3.69181538175 +       350.3321196004 * t);
        saturn_a_0+=      3.038127e-05*Math.cos( 0.03748334373 +      1059.3819301892 * t);
        saturn_a_0+=      3.185981e-05*Math.cos( 2.91148783391 +        426.598190876 * t);
        saturn_a_0+=       3.19113e-05*Math.cos( 1.49704278283 +       202.2533951741 * t);
        saturn_a_0+=       3.19244e-05*Math.cos(  4.0242542795 +       412.3710968744 * t);
        saturn_a_0+=      3.484692e-05*Math.cos(  2.2158950068 +      2317.8358618148 * t);
        saturn_a_0+=      3.520766e-05*Math.cos( 1.64836730035 +       138.5174968707 * t);
        saturn_a_0+=      3.730627e-05*Math.cos( 1.06943140301 +      2531.1349572528 * t);
        saturn_a_0+=        3.8852e-05*Math.cos( 2.89854059721 +       1795.258443721 * t);
        saturn_a_0+=      3.964442e-05*Math.cos( 5.34743947465 +       956.2891559706 * t);
        saturn_a_0+=      4.322446e-05*Math.cos( 1.13068618048 +       529.6909650946 * t);
        saturn_a_0+=      4.577121e-05*Math.cos( 4.42047324112 +        11.0457002639 * t);
        saturn_a_0+=      4.577761e-05*Math.cos( 0.35760617578 +       742.9900605326 * t);
        saturn_a_0+=      4.759551e-05*Math.cos( 3.93823562434 +      1471.7530270636 * t);
        saturn_a_0+=       4.90821e-05*Math.cos( 0.72709275611 +        63.7358983034 * t);
        saturn_a_0+=      5.101971e-05*Math.cos( 3.30359991147 +      1162.4747044078 * t);
        saturn_a_0+=      5.139135e-05*Math.cos(  5.5403888705 +        639.897286314 * t);
        saturn_a_0+=      5.202303e-05*Math.cos( 3.14859040562 +      1478.8665740644 * t);
        saturn_a_0+=      5.411083e-05*Math.cos( 2.87617167843 +        14.2270940016 * t);
        saturn_a_0+=      5.415736e-05*Math.cos( 5.03747123641 +       415.5524906121 * t);
        saturn_a_0+=      6.346406e-05*Math.cos( 2.47617493807 +      2001.4439921582 * t);
        saturn_a_0+=      7.616638e-05*Math.cos( 1.30738426041 +      2214.7430875962 * t);
        saturn_a_0+=      7.636461e-05*Math.cos( 0.08643307957 +        95.9792272178 * t);
        saturn_a_0+=      7.822638e-05*Math.cos( 4.22985906112 +       1155.361157407 * t);
        saturn_a_0+=       9.00776e-05*Math.cos( 0.28957280814 +      1375.7737998458 * t);
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

        let saturn_a_1 = 0.0;
        saturn_a_1+=      1.000522e-05*Math.cos( 4.42966424505 +       625.6701923124 * t);
        saturn_a_1+=      1.004969e-05*Math.cos( 3.38841558218 +      1272.6810256272 * t);
        saturn_a_1+=      1.176712e-05*Math.cos( 0.68336133189 +       199.0720014364 * t);
        saturn_a_1+=      1.192975e-05*Math.cos( 5.41193208721 +        728.762966531 * t);
        saturn_a_1+=      1.289901e-05*Math.cos( 5.66421564917 +      1471.7530270636 * t);
        saturn_a_1+=      1.324172e-05*Math.cos( 4.84316362024 +       742.9900605326 * t);
        saturn_a_1+=       1.56739e-05*Math.cos( 4.48491632282 +      1685.0521225016 * t);
        saturn_a_1+=      1.594273e-05*Math.cos( 3.64295931777 +       956.2891559706 * t);
        saturn_a_1+=      1.709753e-05*Math.cos( 5.71449088168 +       412.3710968744 * t);
        saturn_a_1+=      2.070562e-05*Math.cos( 3.85273193471 +        639.897286314 * t);
        saturn_a_1+=      2.118165e-05*Math.cos( 5.95564480205 +       1155.361157407 * t);
        saturn_a_1+=      2.138957e-05*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_a_1+=      2.815592e-05*Math.cos( 4.75042687464 +       1368.660252845 * t);
        saturn_a_1+=      3.432323e-05*Math.cos( 1.89093890567 +        95.9792272178 * t);
        saturn_a_1+=      3.777478e-05*Math.cos( 0.13473525815 +       838.9692877504 * t);
        saturn_a_1+=      4.317657e-05*Math.cos(  1.1777276099 +        14.2270940016 * t);
        saturn_a_1+=      5.231753e-05*Math.cos( 5.01328016493 +      1052.2683831884 * t);
        saturn_a_1+=      6.615475e-05*Math.cos( 0.24404793981 +       522.5774180938 * t);
        saturn_a_1+=      7.440338e-05*Math.cos( 5.50519123677 +       846.0828347512 * t);
        saturn_a_1+=      8.158206e-05*Math.cos( 1.61713789294 +       103.0927742186 * t);
        saturn_a_1+=      9.998081e-05*Math.cos( 5.28159092946 +       735.8765135318 * t);
        saturn_a_1+=     0.00014543221*Math.cos( 0.53828819496 +       206.1855484372 * t);
        saturn_a_1+=     0.00014944585*Math.cos( 1.01717765228 +       323.5054166574 * t);
        saturn_a_1+=     0.00016133051*Math.cos( 1.54311529056 +       309.2783226558 * t);
        saturn_a_1+=     0.00017963494*Math.cos( 1.85653949491 +       110.2063212194 * t);
        saturn_a_1+=     0.00019395929*Math.cos( 3.30487092881 +        213.299095438 * t);
        saturn_a_1+=     0.00020477409*Math.cos( 5.54887034001 +       419.4846438752 * t);
        saturn_a_1+=     0.00115108584*Math.cos( 1.31913907888 +         7.1135470008 * t);
        saturn_a_1=saturn_a_1*t;

        let saturn_a_2 = 0.0;
        saturn_a_2+=      1.317805e-05*Math.cos( 1.65305610809 +        213.299095438 * t);
        saturn_a_2+=       1.44407e-05*Math.cos(  1.0432495901 +       419.4846438752 * t);
        saturn_a_2+=      1.751432e-05*Math.cos( 5.75969476921 +        14.2270940016 * t);
        saturn_a_2+=      1.756009e-05*Math.cos(  4.4346498361 +       316.3918696566 * t);
        saturn_a_2+=      2.021192e-05*Math.cos( 2.25480844844 +       206.1855484372 * t);
        saturn_a_2+=      2.367005e-05*Math.cos(  0.2258564976 +       110.2063212194 * t);
        saturn_a_2+=      3.067531e-05*Math.cos( 5.60883291989 +       323.5054166574 * t);
        saturn_a_2+=      3.334839e-05*Math.cos(  3.2558917841 +       309.2783226558 * t);
        saturn_a_2+=     0.00023754277*Math.cos( 5.89931397638 +         7.1135470008 * t);
        saturn_a_2=saturn_a_2*t*t;

        let saturn_a_3 = 0.0;
        saturn_a_3+=      3.271907e-05*Math.cos(  4.1775654813 +         7.1135470008 * t);
        saturn_a_3=saturn_a_3*t*t*t;

        return saturn_a_3+saturn_a_2+saturn_a_1+saturn_a_0;
    }

    private static saturn_h(t: number): number {
        let saturn_h_0 = 0.0;
        saturn_h_0+=      1.014997e-05*Math.cos( 1.23700809353 +      1478.8665740644 * t);
        saturn_h_0+=      1.059846e-05*Math.cos( 3.42145576578 +      1471.7530270636 * t);
        saturn_h_0+=      1.116994e-05*Math.cos( 3.87361907926 +       949.1756089698 * t);
        saturn_h_0+=      1.332016e-05*Math.cos( 1.60585238019 +      10213.285546211 * t);
        saturn_h_0+=      1.406014e-05*Math.cos( 0.18303643712 +      6283.0758499914 * t);
        saturn_h_0+=      1.433129e-05*Math.cos( 5.28852869095 +       625.6701923124 * t);
        saturn_h_0+=      1.463393e-05*Math.cos( 2.27697571268 +      1685.0521225016 * t);
        saturn_h_0+=      1.865955e-05*Math.cos( 1.45632551073 +      1162.4747044078 * t);
        saturn_h_0+=      2.014723e-05*Math.cos( 3.69869782746 +       1155.361157407 * t);
        saturn_h_0+=      2.154026e-05*Math.cos( 1.83308758095 +       846.0828347512 * t);
        saturn_h_0+=      2.433657e-05*Math.cos( 3.06052361648 +       323.5054166574 * t);
        saturn_h_0+=      2.892864e-05*Math.cos( 3.45123584181 +        14.2270940016 * t);
        saturn_h_0+=      3.016338e-05*Math.cos( 0.51522702738 +        95.9792272178 * t);
        saturn_h_0+=      3.124342e-05*Math.cos( 2.51775310612 +       1368.660252845 * t);
        saturn_h_0+=      3.543754e-05*Math.cos( 5.51791276866 +       309.2783226558 * t);
        saturn_h_0+=      3.981833e-05*Math.cos( 3.98208427033 +       838.9692877504 * t);
        saturn_h_0+=       4.31094e-05*Math.cos( 0.63154377287 +       632.7837393132 * t);
        saturn_h_0+=      4.719662e-05*Math.cos( 4.04332030354 +        63.7358983034 * t);
        saturn_h_0+=      4.973295e-05*Math.cos( 2.43801254153 +       316.3918696566 * t);
        saturn_h_0+=      5.195115e-05*Math.cos( 0.91409726646 +        11.0457002639 * t);
        saturn_h_0+=      6.887017e-05*Math.cos( 2.77760844184 +      1052.2683831884 * t);
        saturn_h_0+=      8.341142e-05*Math.cos( 4.31606267639 +        426.598190876 * t);
        saturn_h_0+=      8.862147e-05*Math.cos( 4.32059038009 +       522.5774180938 * t);
        saturn_h_0+=      9.619733e-05*Math.cos( 5.65804295918 +      1059.3819301892 * t);
        saturn_h_0+=     0.00016256954*Math.cos( 3.02503473426 +       735.8765135318 * t);
        saturn_h_0+=     0.00026520042*Math.cos( 4.52478837442 +       206.1855484372 * t);
        saturn_h_0+=      0.0003298126*Math.cos( 4.13131540179 +       110.2063212194 * t);
        saturn_h_0+=     0.00044695611*Math.cos( 3.26423001884 +       419.4846438752 * t);
        saturn_h_0+=     0.00068728896*Math.cos( 0.46796586407 +       103.0927742186 * t);
        saturn_h_0+=     0.00124537423*Math.cos(  5.6029550572 +        213.299095438 * t);
        saturn_h_0+=     0.00154553684*Math.cos(  3.5944713223 +         7.1135470008 * t);
        saturn_h_0+=     0.00196887619*Math.cos( 5.31528897782 +       529.6909650946 * t);
        saturn_h_0+=     0.05542964254*Math.cos(           0.0 +                  0.0 * t);

        let saturn_h_1 = 0.0;
        saturn_h_1+=      1.104707e-05*Math.cos( 3.00012484887 +        426.598190876 * t);
        saturn_h_1+=      1.210043e-05*Math.cos( 2.22093790004 +        95.9792272178 * t);
        saturn_h_1+=      1.282809e-05*Math.cos( 6.14149672159 +       522.5774180938 * t);
        saturn_h_1+=      1.308124e-05*Math.cos( 0.93411525898 +       316.3918696566 * t);
        saturn_h_1+=      1.933431e-05*Math.cos( 1.75458256507 +        14.2270940016 * t);
        saturn_h_1+=      3.540921e-05*Math.cos( 6.15678987566 +       206.1855484372 * t);
        saturn_h_1+=      4.266149e-05*Math.cos( 2.73559155724 +       110.2063212194 * t);
        saturn_h_1+=     0.00041501368*Math.cos( 1.90158625579 +         7.1135470008 * t);
        saturn_h_1+=     0.00375593887*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_h_1=saturn_h_1*t;

        let saturn_h_2 = 0.0;
        saturn_h_2+=      5.775783e-05*Math.cos( 0.17981518193 +         7.1135470008 * t);
        saturn_h_2+=     0.00031990236*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_h_2=saturn_h_2*t*t;

        let saturn_h_3 = 0.0;
        saturn_h_3+=      1.598633e-05*Math.cos(           0.0 +                  0.0 * t);
        saturn_h_3=saturn_h_3*t*t*t;

        return saturn_h_3+saturn_h_2+saturn_h_1+saturn_h_0;
    }

    private static saturn_k(t: number): number {
        let saturn_k_0 = 0.0;
        saturn_k_0+=      1.022359e-05*Math.cos( 3.75811763978 +       949.1756089698 * t);
        saturn_k_0+=      1.075575e-05*Math.cos( 1.87545739154 +      1471.7530270636 * t);
        saturn_k_0+=      1.331587e-05*Math.cos( 3.17719333564 +      10213.285546211 * t);
        saturn_k_0+=       1.34085e-05*Math.cos( 3.43892164589 +      1162.4747044078 * t);
        saturn_k_0+=       1.37536e-05*Math.cos( 3.92909866961 +       742.9900605326 * t);
        saturn_k_0+=      1.407002e-05*Math.cos( 1.75310748024 +      6283.0758499914 * t);
        saturn_k_0+=      1.413794e-05*Math.cos( 0.61962547117 +      1685.0521225016 * t);
        saturn_k_0+=      1.432191e-05*Math.cos(  3.7321168376 +       625.6701923124 * t);
        saturn_k_0+=      1.684438e-05*Math.cos( 3.42782020268 +       846.0828347512 * t);
        saturn_k_0+=      2.034707e-05*Math.cos( 2.13784947592 +       1155.361157407 * t);
        saturn_k_0+=       2.59979e-05*Math.cos( 4.59077939806 +       323.5054166574 * t);
        saturn_k_0+=      2.901643e-05*Math.cos( 5.02556493525 +        14.2270940016 * t);
        saturn_k_0+=      2.995571e-05*Math.cos( 5.22987374446 +        95.9792272178 * t);
        saturn_k_0+=      3.067391e-05*Math.cos( 0.88647766071 +       1368.660252845 * t);
        saturn_k_0+=      3.491448e-05*Math.cos( 3.93248075292 +       309.2783226558 * t);
        saturn_k_0+=      3.998727e-05*Math.cos( 2.40540369269 +       838.9692877504 * t);
        saturn_k_0+=      4.686144e-05*Math.cos( 2.46891397169 +        63.7358983034 * t);
        saturn_k_0+=      5.175953e-05*Math.cos( 2.47945708486 +        11.0457002639 * t);
        saturn_k_0+=       5.94995e-05*Math.cos( 5.31181339398 +       632.7837393132 * t);
        saturn_k_0+=      6.874937e-05*Math.cos( 1.14613721578 +      1052.2683831884 * t);
        saturn_k_0+=      8.447407e-05*Math.cos( 2.62011176262 +       522.5774180938 * t);
        saturn_k_0+=      9.010523e-05*Math.cos( 0.93814801735 +      1059.3819301892 * t);
        saturn_k_0+=       9.45961e-05*Math.cos( 5.65507805945 +        426.598190876 * t);
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

        let saturn_k_1 = 0.0;
        saturn_k_1+=      1.068601e-05*Math.cos( 4.94949412559 +       316.3918696566 * t);
        saturn_k_1+=      1.111374e-05*Math.cos( 4.19595906021 +       522.5774180938 * t);
        saturn_k_1+=      1.198499e-05*Math.cos( 0.65283485226 +        95.9792272178 * t);
        saturn_k_1+=      1.445541e-05*Math.cos( 3.87182632473 +        426.598190876 * t);
        saturn_k_1+=      1.940192e-05*Math.cos(  3.3300409354 +        14.2270940016 * t);
        saturn_k_1+=       3.82222e-05*Math.cos( 4.74856256975 +       206.1855484372 * t);
        saturn_k_1+=      3.861305e-05*Math.cos( 4.51435630426 +       110.2063212194 * t);
        saturn_k_1+=     0.00041825363*Math.cos( 3.46891617076 +         7.1135470008 * t);
        saturn_k_1+=     0.00529602626*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_k_1=saturn_k_1*t;

        let saturn_k_2 = 0.0;
        saturn_k_2+=      5.845583e-05*Math.cos( 1.74297057661 +         7.1135470008 * t);
        saturn_k_2+=     0.00030928405*Math.cos(           0.0 +                  0.0 * t);
        saturn_k_2=saturn_k_2*t*t;

        let saturn_k_3 = 0.0;
        saturn_k_3+=      1.296215e-05*Math.cos(           0.0 +                  0.0 * t);
        saturn_k_3=saturn_k_3*t*t*t;

        return saturn_k_3+saturn_k_2+saturn_k_1+saturn_k_0;
    }

    private static saturn_l(t: number): number {
        let saturn_l_0 = 0.0;
        saturn_l_0+=      1.000292e-05*Math.cos( 3.14098540005 +       202.2533951741 * t);
        saturn_l_0+=      1.048677e-05*Math.cos( 4.52538911077 +       309.2783226558 * t);
        saturn_l_0+=      1.050929e-05*Math.cos( 2.85814270959 +      2214.7430875962 * t);
        saturn_l_0+=      1.054337e-05*Math.cos( 0.32336241328 +       415.5524906121 * t);
        saturn_l_0+=      1.057378e-05*Math.cos(  5.8684342126 +       1155.361157407 * t);
        saturn_l_0+=      1.058307e-05*Math.cos( 1.79920590132 +       742.9900605326 * t);
        saturn_l_0+=      1.086719e-05*Math.cos( 4.18346682205 +         2.4476805548 * t);
        saturn_l_0+=      1.111089e-05*Math.cos( 5.15881839411 +      1162.4747044078 * t);
        saturn_l_0+=      1.239001e-05*Math.cos( 1.17392796131 +      1059.3819301892 * t);
        saturn_l_0+=      1.401273e-05*Math.cos( 0.85436221114 +        639.897286314 * t);
        saturn_l_0+=      1.552009e-05*Math.cos( 4.34051151899 +      1685.0521225016 * t);
        saturn_l_0+=       1.75685e-05*Math.cos( 0.73191225121 +       9999.986450773 * t);
        saturn_l_0+=      1.843741e-05*Math.cos( 5.59184716219 +      6069.7767545534 * t);
        saturn_l_0+=      1.905306e-05*Math.cos( 6.10909332977 +       838.9692877504 * t);
        saturn_l_0+=      2.115472e-05*Math.cos( 3.22612886457 +       138.5174968707 * t);
        saturn_l_0+=      2.247112e-05*Math.cos( 3.10725805492 +      1898.3512179396 * t);
        saturn_l_0+=      2.268759e-05*Math.cos( 0.97085130424 +        95.9792272178 * t);
        saturn_l_0+=      2.570657e-05*Math.cos(  1.9713258472 +        426.598190876 * t);
        saturn_l_0+=      2.596442e-05*Math.cos( 1.15530311275 +       323.5054166574 * t);
        saturn_l_0+=      2.971924e-05*Math.cos( 4.61344086907 +       1368.660252845 * t);
        saturn_l_0+=      3.154129e-05*Math.cos( 4.91543855458 +       277.0349937414 * t);
        saturn_l_0+=      3.696376e-05*Math.cos( 2.25340821564 +        63.7358983034 * t);
        saturn_l_0+=      3.772571e-05*Math.cos( 0.19095255187 +       522.5774180938 * t);
        saturn_l_0+=      4.901096e-05*Math.cos(  3.3620349335 +       1581.959348283 * t);
        saturn_l_0+=      5.226823e-05*Math.cos(  4.2077322018 +         3.1813937377 * t);
        saturn_l_0+=      5.836217e-05*Math.cos( 4.89069547157 +      1052.2683831884 * t);
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

        let saturn_l_1 = 0.0;
        saturn_l_1+=      1.017683e-05*Math.cos( 1.87434917863 +       522.5774180938 * t);
        saturn_l_1+=      1.048311e-05*Math.cos( 5.74264387213 +       323.5054166574 * t);
        saturn_l_1+=       1.40924e-05*Math.cos( 4.77172107316 +       529.6909650946 * t);
        saturn_l_1+=      1.423856e-05*Math.cos( 1.60681848195 +        213.299095438 * t);
        saturn_l_1+=      1.670947e-05*Math.cos( 0.57244091662 +       735.8765135318 * t);
        saturn_l_1+=      1.951948e-05*Math.cos( 3.56235240442 +        11.0457002639 * t);
        saturn_l_1+=      2.144886e-05*Math.cos( 2.60845915192 +       110.2063212194 * t);
        saturn_l_1+=      3.384387e-05*Math.cos( 2.41681908344 +         3.1813937377 * t);
        saturn_l_1+=      3.766525e-05*Math.cos( 3.64960431172 +         3.9321532631 * t);
        saturn_l_1+=      4.293054e-05*Math.cos( 0.84432021204 +       419.4846438752 * t);
        saturn_l_1+=       4.47255e-05*Math.cos( 2.13913005932 +       206.1855484372 * t);
        saturn_l_1+=     0.00010437362*Math.cos( 2.74781046876 +        14.2270940016 * t);
        saturn_l_1+=     0.00014171331*Math.cos( 1.28319722079 +       103.0927742186 * t);
        saturn_l_1+=     0.00563352798*Math.cos(  2.8847856166 +         7.1135470008 * t);
        saturn_l_1+=     213.299095438*Math.cos(           0.0 +                  0.0 * t);
        saturn_l_1=saturn_l_1*t;

        let saturn_l_2 = 0.0;
        saturn_l_2+=      1.020168e-05*Math.cos( 0.63355848198 +         3.1813937377 * t);
        saturn_l_2+=      4.235353e-05*Math.cos( 1.04508642603 +        14.2270940016 * t);
        saturn_l_2+=     0.00036659741*Math.cos(           0.0 +                  0.0 * t);
        saturn_l_2+=     0.00116235667*Math.cos( 1.17971682406 +         7.1135470008 * t);
        saturn_l_2=saturn_l_2*t*t;

        let saturn_l_3 = 0.0;
        saturn_l_3+=      1.153866e-05*Math.cos( 5.61897587419 +        14.2270940016 * t);
        saturn_l_3+=     0.00016010484*Math.cos( 5.73932776276 +         7.1135470008 * t);
        saturn_l_3=saturn_l_3*t*t*t;

        let saturn_l_4 = 0.0;
        saturn_l_4+=      1.658821e-05*Math.cos( 3.99816906699 +         7.1135470008 * t);
        saturn_l_4=saturn_l_4*t*t*t*t;

        return saturn_l_4+saturn_l_3+saturn_l_2+saturn_l_1+saturn_l_0;
    }

    private static saturn_p(t: number): number {
        let saturn_p_0 = 0.0;
        saturn_p_0+=      2.063161e-05*Math.cos( 3.60620665217 +         7.1135470008 * t);
        saturn_p_0+=     0.01989147301*Math.cos(           0.0 +                  0.0 * t);

        let saturn_p_1 = 0.0;
        saturn_p_1+=     0.00059439766*Math.cos(           0.0 +                  0.0 * t);
        saturn_p_1=saturn_p_1*t;

        let saturn_p_2 = 0.0;
        saturn_p_2+=      5.235117e-05*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_p_2=saturn_p_2*t*t;

        return saturn_p_2+saturn_p_1+saturn_p_0;
    }

    private static saturn_q(t: number): number {
        let saturn_q_0 = 0.0;
        saturn_q_0+=      2.058688e-05*Math.cos(  5.2332061164 +         7.1135470008 * t);
        saturn_q_0+=     0.00871747436*Math.cos( 3.14159265359 +                  0.0 * t);

        let saturn_q_1 = 0.0;
        saturn_q_1+=     0.00080171499*Math.cos(           0.0 +                  0.0 * t);
        saturn_q_1=saturn_q_1*t;

        let saturn_q_2 = 0.0;
        saturn_q_2+=      4.142282e-05*Math.cos(           0.0 +                  0.0 * t);
        saturn_q_2=saturn_q_2*t*t;

        return saturn_q_2+saturn_q_1+saturn_q_0;
    }

    private static uranus_a(t: number): number {
        let uranus_a_0 = 0.0;
        uranus_a_0+=      1.000535e-05*Math.cos( 3.00278670295 +       106.9767433719 * t);
        uranus_a_0+=      1.002948e-05*Math.cos( 0.20860179042 +       529.6909650946 * t);
        uranus_a_0+=      1.024449e-05*Math.cos( 3.66634638445 +       209.3669421749 * t);
        uranus_a_0+=      1.042369e-05*Math.cos( 1.78835296097 +       422.6660376129 * t);
        uranus_a_0+=      1.048262e-05*Math.cos( 5.72125675593 +       200.7689224658 * t);
        uranus_a_0+=      1.051862e-05*Math.cos( 3.20890164599 +       258.0244132148 * t);
        uranus_a_0+=      1.090992e-05*Math.cos( 1.75846110374 +        56.6223513026 * t);
        uranus_a_0+=      1.101963e-05*Math.cos( 2.00743750884 +       387.2413149608 * t);
        uranus_a_0+=      1.104506e-05*Math.cos(  5.1938226906 +       408.4389436113 * t);
        uranus_a_0+=      1.106945e-05*Math.cos( 2.45059253084 +      2043.9822618111 * t);
        uranus_a_0+=      1.121356e-05*Math.cos(  3.9774734862 +        22.0914005278 * t);
        uranus_a_0+=      1.135575e-05*Math.cos( 2.96083781186 +       414.0680179038 * t);
        uranus_a_0+=      1.137556e-05*Math.cos( 3.91569154137 +       417.0369633204 * t);
        uranus_a_0+=      1.141596e-05*Math.cos( 3.45007547281 +        67.6680515665 * t);
        uranus_a_0+=      1.164785e-05*Math.cos( 5.34173102494 +       373.0142209592 * t);
        uranus_a_0+=      1.170276e-05*Math.cos( 0.55774352633 +       224.3447957019 * t);
        uranus_a_0+=      1.175745e-05*Math.cos( 2.54359813462 +        35.4247226521 * t);
        uranus_a_0+=       1.17664e-05*Math.cos( 5.99924085122 +       518.6452648307 * t);
        uranus_a_0+=      1.187262e-05*Math.cos( 1.68527478275 +        366.485629295 * t);
        uranus_a_0+=        1.2132e-05*Math.cos( 2.60560141797 +       191.2076949102 * t);
        uranus_a_0+=      1.213214e-05*Math.cos( 2.51630720379 +       203.7378678824 * t);
        uranus_a_0+=      1.263638e-05*Math.cos( 0.95663861038 +        39.6175083461 * t);
        uranus_a_0+=       1.31932e-05*Math.cos( 2.46920131818 +       255.0554677982 * t);
        uranus_a_0+=      1.324437e-05*Math.cos( 3.03887629712 +       221.3758502853 * t);
        uranus_a_0+=      1.343524e-05*Math.cos(   0.474667145 +       894.8408795276 * t);
        uranus_a_0+=      1.431799e-05*Math.cos( 1.11504717533 +        70.8494453042 * t);
        uranus_a_0+=       1.44881e-05*Math.cos( 0.77642344329 +       358.9301393095 * t);
        uranus_a_0+=      1.470376e-05*Math.cos( 2.86944648936 +       184.7272873558 * t);
        uranus_a_0+=      1.559141e-05*Math.cos( 5.26393444399 +       874.3940104025 * t);
        uranus_a_0+=      1.574883e-05*Math.cos( 2.81434037404 +        70.3281804424 * t);
        uranus_a_0+=      1.614461e-05*Math.cos( 1.74465474119 +        306.830642101 * t);
        uranus_a_0+=      1.630969e-05*Math.cos( 0.04305088147 +       284.1485407422 * t);
        uranus_a_0+=      1.631375e-05*Math.cos( 3.21025158737 +       767.3690829208 * t);
        uranus_a_0+=      1.644295e-05*Math.cos( 4.20035521857 +       771.3012361839 * t);
        uranus_a_0+=      1.659166e-05*Math.cos( 1.50290332246 +       543.0242872189 * t);
        uranus_a_0+=      1.665496e-05*Math.cos( 2.48866254865 +      1819.6374661092 * t);
        uranus_a_0+=      1.665753e-05*Math.cos( 3.35750378382 +       269.9214467406 * t);
        uranus_a_0+=       1.83374e-05*Math.cos( 2.35881785143 +       278.5194664497 * t);
        uranus_a_0+=      1.833954e-05*Math.cos( 1.23032377815 +       275.5505210331 * t);
        uranus_a_0+=      1.839887e-05*Math.cos( 2.41449652179 +       969.6224780949 * t);
        uranus_a_0+=      1.939068e-05*Math.cos( 3.50613473107 +        85.8272988312 * t);
        uranus_a_0+=      1.998215e-05*Math.cos( 1.51874856901 +       329.8370663655 * t);
        uranus_a_0+=      2.043785e-05*Math.cos( 2.29629591754 +       218.4069048687 * t);
        uranus_a_0+=       2.12792e-05*Math.cos( 4.76506016217 +       991.7138786227 * t);
        uranus_a_0+=      2.185288e-05*Math.cos(  0.0870470871 +       558.0021407459 * t);
        uranus_a_0+=       2.19188e-05*Math.cos( 3.25202521002 +       443.8636662634 * t);
        uranus_a_0+=      2.208093e-05*Math.cos(  1.1125835943 +        76.2660712756 * t);
        uranus_a_0+=      2.285405e-05*Math.cos( 5.88369666833 +        62.2514255951 * t);
        uranus_a_0+=       2.28616e-05*Math.cos( 1.51729619521 +     10063.7223490764 * t);
        uranus_a_0+=      2.382826e-05*Math.cos( 2.07601865522 +       457.8783119439 * t);
        uranus_a_0+=      2.437755e-05*Math.cos( 0.09462956632 +      6133.5126528568 * t);
        uranus_a_0+=      2.457441e-05*Math.cos( 0.26974942497 +        12.5301729722 * t);
        uranus_a_0+=       2.49744e-05*Math.cos( 1.50739311442 +       628.8515860501 * t);
        uranus_a_0+=       2.50334e-05*Math.cos( 1.15805847644 +         760.25553592 * t);
        uranus_a_0+=      2.567379e-05*Math.cos( 3.82445495974 +       451.9404211107 * t);
        uranus_a_0+=      2.659333e-05*Math.cos( 2.83464668205 +       983.1158589136 * t);
        uranus_a_0+=      2.666132e-05*Math.cos(  5.0690386125 +       756.3233826569 * t);
        uranus_a_0+=      2.666466e-05*Math.cos( 3.46267434311 +       241.6102710893 * t);
        uranus_a_0+=      2.730392e-05*Math.cos( 5.78713322924 +         4.4534181249 * t);
        uranus_a_0+=      2.757762e-05*Math.cos( 2.67859821585 +       465.9550667912 * t);
        uranus_a_0+=        2.8189e-05*Math.cos( 3.80744526388 +       986.0848043302 * t);
        uranus_a_0+=      2.926742e-05*Math.cos( 5.75954860599 +       111.4301614968 * t);
        uranus_a_0+=      2.963941e-05*Math.cos(  0.6879360851 +       977.4867846211 * t);
        uranus_a_0+=      2.974538e-05*Math.cos( 6.11550996496 +       404.5067903482 * t);
        uranus_a_0+=      3.020651e-05*Math.cos(  0.8552739557 +       391.1734682239 * t);
        uranus_a_0+=      3.023905e-05*Math.cos( 5.99911376627 +       490.3340891794 * t);
        uranus_a_0+=      3.026812e-05*Math.cos( 2.86723045009 +       604.4725636619 * t);
        uranus_a_0+=      3.177071e-05*Math.cos( 2.12223452915 +       181.7583419392 * t);
        uranus_a_0+=      3.238153e-05*Math.cos( 4.97184215613 +      1289.9465010146 * t);
        uranus_a_0+=      3.342906e-05*Math.cos( 4.92188150151 +        65.2203710117 * t);
        uranus_a_0+=      3.374452e-05*Math.cos( 1.35172822834 +        293.188503436 * t);
        uranus_a_0+=        3.4419e-05*Math.cos( 2.62220453188 +        33.6796175129 * t);
        uranus_a_0+=      3.622075e-05*Math.cos( 0.81820459592 +      1087.6931058405 * t);
        uranus_a_0+=      4.125871e-05*Math.cos( 0.98003717672 +        52.6901980395 * t);
        uranus_a_0+=      4.144967e-05*Math.cos( 0.70303785867 +       831.1049812242 * t);
        uranus_a_0+=      4.242318e-05*Math.cos( 3.78803520227 +       344.7030453079 * t);
        uranus_a_0+=      4.401244e-05*Math.cos( 5.20484038271 +     26013.1215430069 * t);
        uranus_a_0+=      4.484929e-05*Math.cos( 0.72226959421 +      3265.8308281325 * t);
        uranus_a_0+=      4.993616e-05*Math.cos( 1.94640108019 +       145.1097790097 * t);
        uranus_a_0+=      5.284447e-05*Math.cos( 3.38391584822 +       617.8058857862 * t);
        uranus_a_0+=      5.292312e-05*Math.cos( 3.18563288325 +         9.5612275556 * t);
        uranus_a_0+=      5.558128e-05*Math.cos( 4.45343942123 +       265.9892934775 * t);
        uranus_a_0+=      5.725815e-05*Math.cos( 1.18425005561 +       256.5399405065 * t);
        uranus_a_0+=      5.940367e-05*Math.cos( 0.14725300349 +       565.1156877467 * t);
        uranus_a_0+=      6.001971e-05*Math.cos( 0.01328538618 +       378.6432952517 * t);
        uranus_a_0+=      7.565892e-05*Math.cos(  1.0704767805 +      1364.7280995819 * t);
        uranus_a_0+=       7.98955e-05*Math.cos(  1.7687764394 +       108.4612160802 * t);
        uranus_a_0+=       8.13928e-05*Math.cos( 3.07429274553 +        593.426863398 * t);
        uranus_a_0+=      9.400054e-05*Math.cos( 5.28230095127 +       692.5874843535 * t);
        uranus_a_0+=      9.781311e-05*Math.cos( 1.01633313183 +        219.891377577 * t);
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

        let uranus_a_1 = 0.0;
        uranus_a_1+=      1.009835e-05*Math.cos( 1.54231948299 +       456.3938392356 * t);
        uranus_a_1+=       1.02322e-05*Math.cos(  5.2524136325 +         2.9689454166 * t);
        uranus_a_1+=       1.17335e-05*Math.cos( 5.60143868445 +       344.7030453079 * t);
        uranus_a_1+=      1.298191e-05*Math.cos( 3.07363226782 +       340.7708920448 * t);
        uranus_a_1+=      1.397028e-05*Math.cos( 4.30180049174 +       565.1156877467 * t);
        uranus_a_1+=      1.757222e-05*Math.cos( 5.83779207506 +       127.4717966068 * t);
        uranus_a_1+=      1.966175e-05*Math.cos( 1.25902379202 +      1514.2912967165 * t);
        uranus_a_1+=      2.960951e-05*Math.cos( 5.18940714206 +         3.9321532631 * t);
        uranus_a_1+=      2.970471e-05*Math.cos( 1.38398543524 +       202.2533951741 * t);
        uranus_a_1+=      5.730767e-05*Math.cos( 6.15517032108 +        74.7815985673 * t);
        uranus_a_1+=      5.774171e-05*Math.cos( 0.36554818918 +       131.4039498699 * t);
        uranus_a_1+=      5.888953e-05*Math.cos( 6.13448987217 +       145.6310438715 * t);
        uranus_a_1+=      6.431936e-05*Math.cos( 0.17368297794 +         1.4844727083 * t);
        uranus_a_1+=      6.522823e-05*Math.cos( 0.94154848017 +         380.12776796 * t);
        uranus_a_1+=      9.178456e-05*Math.cos( 3.23114420803 +       447.7958195265 * t);
        uranus_a_1+=      9.196301e-05*Math.cos( 2.71787369185 +       462.0229135281 * t);
        uranus_a_1+=     0.00011411513*Math.cos( 0.08109503303 +        63.7358983034 * t);
        uranus_a_1+=     0.00012155731*Math.cos( 5.07129450662 +       351.8165923087 * t);
        uranus_a_1+=     0.00018428974*Math.cos( 0.90876002089 +       984.6003316219 * t);
        uranus_a_1+=     0.00018892174*Math.cos( 5.14166599806 +        11.0457002639 * t);
        uranus_a_1=uranus_a_1*t;

        let uranus_a_2 = 0.0;
        uranus_a_2+=      1.126662e-05*Math.cos( 6.11539656112 +       454.9093665273 * t);
        uranus_a_2+=      1.189319e-05*Math.cos( 2.06463695518 +       131.4039498699 * t);
        uranus_a_2+=      1.198486e-05*Math.cos( 5.92364914461 +       984.6003316219 * t);
        uranus_a_2+=      1.216263e-05*Math.cos( 4.42512858481 +       145.6310438715 * t);
        uranus_a_2+=      1.597619e-05*Math.cos(   2.941941902 +        11.0457002639 * t);
        uranus_a_2+=      1.894669e-05*Math.cos(  4.9373256852 +       447.7958195265 * t);
        uranus_a_2+=      1.897156e-05*Math.cos( 1.01368771445 +       462.0229135281 * t);
        uranus_a_2=uranus_a_2*t*t;

        return uranus_a_2+uranus_a_1+uranus_a_0;
    }

    private static uranus_h(t: number): number {
        let uranus_h_0 = 0.0;
        uranus_h_0+=       1.05445e-05*Math.cos( 5.93243913005 +       479.2883889155 * t);
        uranus_h_0+=      1.140119e-05*Math.cos( 4.12796709847 +        33.6796175129 * t);
        uranus_h_0+=      1.151876e-05*Math.cos( 3.22140030118 +       108.4612160802 * t);
        uranus_h_0+=      1.152188e-05*Math.cos( 2.40279714309 +       265.9892934775 * t);
        uranus_h_0+=      1.173615e-05*Math.cos( 5.66962620922 +        39.6175083461 * t);
        uranus_h_0+=      1.237727e-05*Math.cos( 4.25933563667 +         4.4534181249 * t);
        uranus_h_0+=      1.281964e-05*Math.cos( 5.21148314354 +        52.6901980395 * t);
        uranus_h_0+=      1.709322e-05*Math.cos( 5.52324273057 +         3.9321532631 * t);
        uranus_h_0+=      1.717023e-05*Math.cos( 4.86065335559 +       378.6432952517 * t);
        uranus_h_0+=      1.773957e-05*Math.cos( 3.12382158926 +       277.0349937414 * t);
        uranus_h_0+=      1.780292e-05*Math.cos(  4.6402544245 +       604.4725636619 * t);
        uranus_h_0+=      1.788174e-05*Math.cos( 5.83091825172 +       381.6122406683 * t);
        uranus_h_0+=      1.888635e-05*Math.cos( 1.60511548878 +      10213.285546211 * t);
        uranus_h_0+=      1.996633e-05*Math.cos( 0.18266518036 +      6283.0758499914 * t);
        uranus_h_0+=      2.023612e-05*Math.cos( 1.96586131259 +       835.0371344873 * t);
        uranus_h_0+=      2.503832e-05*Math.cos( 3.05546144902 +        71.8126531507 * t);
        uranus_h_0+=      2.643494e-05*Math.cos( 0.59736266096 +        38.1330356378 * t);
        uranus_h_0+=      2.701158e-05*Math.cos( 4.25025054889 +       340.7708920448 * t);
        uranus_h_0+=      2.766958e-05*Math.cos( 3.15085054061 +       138.5174968707 * t);
        uranus_h_0+=      3.203231e-05*Math.cos( 0.74162702216 +       127.4717966068 * t);
        uranus_h_0+=      3.366895e-05*Math.cos( 4.80879668305 +        426.598190876 * t);
        uranus_h_0+=      4.932965e-05*Math.cos( 4.11649972191 +       909.8187330546 * t);
        uranus_h_0+=      6.885341e-05*Math.cos( 2.88387180772 +        35.1640902212 * t);
        uranus_h_0+=      7.836952e-05*Math.cos( 2.55128696169 +       202.2533951741 * t);
        uranus_h_0+=      8.258031e-05*Math.cos(  1.2827959516 +       305.3461693927 * t);
        uranus_h_0+=      8.613819e-05*Math.cos( 6.10470674406 +       149.5631971346 * t);
        uranus_h_0+=      9.637333e-05*Math.cos( 3.03051043787 +       454.9093665273 * t);
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

        let uranus_h_1 = 0.0;
        uranus_h_1+=      2.977624e-05*Math.cos( 0.88815201141 +        11.0457002639 * t);
        uranus_h_1+=      0.0007496435*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_h_1=uranus_h_1*t;

        let uranus_h_2 = 0.0;
        uranus_h_2+=        1.2102e-05*Math.cos(           0.0 +                  0.0 * t);
        uranus_h_2=uranus_h_2*t*t;

        return uranus_h_2+uranus_h_1+uranus_h_0;
    }

    private static uranus_k(t: number): number {
        let uranus_k_0 = 0.0;
        uranus_k_0+=      1.066135e-05*Math.cos( 4.39404038232 +       479.2883889155 * t);
        uranus_k_0+=       1.14899e-05*Math.cos( 2.55760174097 +        33.6796175129 * t);
        uranus_k_0+=      1.152601e-05*Math.cos( 0.84158185752 +       265.9892934775 * t);
        uranus_k_0+=      1.170872e-05*Math.cos( 0.95700465854 +        39.6175083461 * t);
        uranus_k_0+=      1.183423e-05*Math.cos( 1.65363141402 +       108.4612160802 * t);
        uranus_k_0+=      1.212991e-05*Math.cos( 1.80950191649 +       138.5174968707 * t);
        uranus_k_0+=      1.243311e-05*Math.cos( 5.82960143419 +         4.4534181249 * t);
        uranus_k_0+=      1.279999e-05*Math.cos( 3.64452387804 +        52.6901980395 * t);
        uranus_k_0+=      1.482095e-05*Math.cos( 1.64693904292 +       277.0349937414 * t);
        uranus_k_0+=      1.713289e-05*Math.cos( 0.78221760868 +         3.9321532631 * t);
        uranus_k_0+=      1.718373e-05*Math.cos( 3.28952325407 +       378.6432952517 * t);
        uranus_k_0+=      1.778887e-05*Math.cos( 4.26115437583 +       381.6122406683 * t);
        uranus_k_0+=      1.779124e-05*Math.cos( 6.21057499329 +       604.4725636619 * t);
        uranus_k_0+=       1.89043e-05*Math.cos( 3.17634406186 +      10213.285546211 * t);
        uranus_k_0+=      1.996913e-05*Math.cos( 1.75347937234 +      6283.0758499914 * t);
        uranus_k_0+=      2.046607e-05*Math.cos( 0.39514553771 +       835.0371344873 * t);
        uranus_k_0+=      2.469608e-05*Math.cos( 1.48073003218 +        71.8126531507 * t);
        uranus_k_0+=      2.576299e-05*Math.cos( 2.16681422946 +        38.1330356378 * t);
        uranus_k_0+=      2.711395e-05*Math.cos( 2.69940614144 +       340.7708920448 * t);
        uranus_k_0+=       3.19786e-05*Math.cos( 5.45909450367 +       127.4717966068 * t);
        uranus_k_0+=      3.369044e-05*Math.cos( 0.09586840146 +        426.598190876 * t);
        uranus_k_0+=      5.042081e-05*Math.cos( 1.63759327657 +       454.9093665273 * t);
        uranus_k_0+=      5.042578e-05*Math.cos( 2.55138995972 +       909.8187330546 * t);
        uranus_k_0+=      6.933537e-05*Math.cos( 1.31290038532 +        35.1640902212 * t);
        uranus_k_0+=       7.82792e-05*Math.cos( 0.99164832808 +       202.2533951741 * t);
        uranus_k_0+=      8.256877e-05*Math.cos( 5.99479016175 +       305.3461693927 * t);
        uranus_k_0+=      8.609639e-05*Math.cos( 1.39257421698 +       149.5631971346 * t);
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

        let uranus_k_1 = 0.0;
        uranus_k_1+=      2.974032e-05*Math.cos( 2.44820580252 +        11.0457002639 * t);
        uranus_k_1+=     0.00018344115*Math.cos(           0.0 +                  0.0 * t);
        uranus_k_1=uranus_k_1*t;

        return uranus_k_1+uranus_k_0;
    }

    private static uranus_l(t: number): number {
        let uranus_l_0 = 0.0;
        uranus_l_0+=      1.039877e-05*Math.cos( 1.76673081468 +        12.5301729722 * t);
        uranus_l_0+=      1.148235e-05*Math.cos( 0.93360896167 +         3.1813937377 * t);
        uranus_l_0+=      1.241845e-05*Math.cos( 0.91639009863 +         2.4476805548 * t);
        uranus_l_0+=      1.248928e-05*Math.cos( 4.47213079744 +       127.4717966068 * t);
        uranus_l_0+=      1.262396e-05*Math.cos(  0.5796086167 +        38.1330356378 * t);
        uranus_l_0+=      1.526537e-05*Math.cos( 2.42021066976 +       183.2428146475 * t);
        uranus_l_0+=      1.678162e-05*Math.cos( 1.65932418312 +       340.7708920448 * t);
        uranus_l_0+=      1.697822e-05*Math.cos( 5.14575670776 +       554.0699874828 * t);
        uranus_l_0+=      2.051032e-05*Math.cos( 1.51771174508 +         0.1118745846 * t);
        uranus_l_0+=      2.120344e-05*Math.cos( 3.14091027042 +        71.8126531507 * t);
        uranus_l_0+=      2.488918e-05*Math.cos(  1.2689363137 +       909.8187330546 * t);
        uranus_l_0+=      2.508604e-05*Math.cos( 2.40722875719 +     10138.5039476437 * t);
        uranus_l_0+=      2.537281e-05*Math.cos( 0.91575331225 +        453.424893819 * t);
        uranus_l_0+=      2.592173e-05*Math.cos( 1.88721711257 +       456.3938392356 * t);
        uranus_l_0+=      2.645235e-05*Math.cos( 0.98456705247 +      6208.2942514241 * t);
        uranus_l_0+=      2.849022e-05*Math.cos( 4.62497396881 +         9.5612275556 * t);
        uranus_l_0+=      2.947374e-05*Math.cos( 2.25120769096 +        146.594251718 * t);
        uranus_l_0+=      3.347344e-05*Math.cos( 1.06594762369 +         4.4534181249 * t);
        uranus_l_0+=      3.938215e-05*Math.cos(  5.6425816291 +       351.8165923087 * t);
        uranus_l_0+=      4.088827e-05*Math.cos( 5.88694542212 +        213.299095438 * t);
        uranus_l_0+=      4.280688e-05*Math.cos( 6.19027964445 +        74.7815985673 * t);
        uranus_l_0+=      4.336166e-05*Math.cos( 6.27925448992 +       202.2533951741 * t);
        uranus_l_0+=      4.429228e-05*Math.cos( 3.45893911136 +       415.5524906121 * t);
        uranus_l_0+=        5.8595e-05*Math.cos( 3.72301900014 +         380.12776796 * t);
        uranus_l_0+=      6.111877e-05*Math.cos( 2.08145057987 +       109.9456887885 * t);
        uranus_l_0+=      7.275693e-05*Math.cos( 2.94925722754 +        35.1640902212 * t);
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

        let uranus_l_1 = 0.0;
        uranus_l_1+=      1.918566e-05*Math.cos( 1.47255222866 +        63.7358983034 * t);
        uranus_l_1+=      1.925567e-05*Math.cos(  0.5298869298 +         2.9689454166 * t);
        uranus_l_1+=      3.879375e-05*Math.cos( 0.46426879091 +         3.9321532631 * t);
        uranus_l_1+=      8.935001e-05*Math.cos( 0.42318902886 +        11.0457002639 * t);
        uranus_l_1+=     0.00024451511*Math.cos( 1.71261369505 +         1.4844727083 * t);
        uranus_l_1+=     74.7815985673*Math.cos(           0.0 +                  0.0 * t);
        uranus_l_1=uranus_l_1*t;

        return uranus_l_1+uranus_l_0;
    }

    private static uranus_p(t: number): number {
        let uranus_p_0 = 0.0;
        uranus_p_0+=     0.00648617008*Math.cos(           0.0 +                  0.0 * t);

        let uranus_p_1 = 0.0;
        uranus_p_1+=     0.00011744733*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_p_1=uranus_p_1*t;

        return uranus_p_1+uranus_p_0;
    }

    private static uranus_q(t: number): number {
        let uranus_q_0 = 0.0;
        uranus_q_0+=     0.00185915075*Math.cos(           0.0 +                  0.0 * t);

        let uranus_q_1 = 0.0;
        uranus_q_1+=     0.00012449382*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_q_1=uranus_q_1*t;

        return uranus_q_1+uranus_q_0;
    }

    private static venus_a(t: number): number {
        let venus_a_0 = 0.0;
        venus_a_0+=     0.72332981996*Math.cos(           0.0 +                  0.0 * t);

        return venus_a_0;
    }

    private static venus_h(t: number): number {
        let venus_h_0 = 0.0;
        venus_h_0+=      1.690127e-05*Math.cos(  1.8992445137 +      2352.8661537718 * t);
        venus_h_0+=      2.230653e-05*Math.cos( 2.66432207509 +      1577.3435424478 * t);
        venus_h_0+=     0.00506684726*Math.cos(           0.0 +                  0.0 * t);

        let venus_h_1 = 0.0;
        venus_h_1+=     0.00036121239*Math.cos( 3.14159265359 +                  0.0 * t);
        venus_h_1=venus_h_1*t;

        let venus_h_2 = 0.0;
        venus_h_2+=      1.846764e-05*Math.cos(           0.0 +                  0.0 * t);
        venus_h_2=venus_h_2*t*t;

        return venus_h_2+venus_h_1+venus_h_0;
    }

    private static venus_k(t: number): number {
        let venus_k_0 = 0.0;
        venus_k_0+=      1.705727e-05*Math.cos( 3.47431815156 +      2352.8661537718 * t);
        venus_k_0+=      2.247401e-05*Math.cos( 1.09074471887 +      1577.3435424478 * t);
        venus_k_0+=     0.00449282133*Math.cos( 3.14159265359 +                  0.0 * t);

        let venus_k_1 = 0.0;
        venus_k_1+=     0.00031259019*Math.cos(           0.0 +                  0.0 * t);
        venus_k_1=venus_k_1*t;

        return venus_k_1+venus_k_0;
    }

    private static venus_l(t: number): number {
        let venus_l_0 = 0.0;
        venus_l_0+=      1.317126e-05*Math.cos( 5.18666796835 +        26.2983197998 * t);
        venus_l_0+=      1.609772e-05*Math.cos( 4.24819541738 +      1577.3435424478 * t);
        venus_l_0+=      1.974219e-05*Math.cos( 2.99373531667 +      3930.2096962196 * t);
        venus_l_0+=      2.003673e-05*Math.cos( 4.41634412285 +      7860.4193924392 * t);
        venus_l_0+=     3.17614669689*Math.cos(           0.0 +                  0.0 * t);

        let venus_l_1 = 0.0;
        venus_l_1+=   10213.285546211*Math.cos(           0.0 +                  0.0 * t);
        venus_l_1=venus_l_1*t;

        return venus_l_1+venus_l_0;
    }

    private static venus_p(t: number): number {
        let venus_p_0 = 0.0;
        venus_p_0+=     0.02882285775*Math.cos(           0.0 +                  0.0 * t);

        let venus_p_1 = 0.0;
        venus_p_1+=     0.00040384791*Math.cos( 3.14159265359 +                  0.0 * t);
        venus_p_1=venus_p_1*t;

        let venus_p_2 = 0.0;
        venus_p_2+=      6.232891e-05*Math.cos( 3.14159265359 +                  0.0 * t);
        venus_p_2=venus_p_2*t*t;

        return venus_p_2+venus_p_1+venus_p_0;
    }

    private static venus_q(t: number): number {
        let venus_q_0 = 0.0;
        venus_q_0+=     0.00682410142*Math.cos(           0.0 +                  0.0 * t);

        let venus_q_1 = 0.0;
        venus_q_1+=     0.00138133826*Math.cos(           0.0 +                  0.0 * t);
        venus_q_1=venus_q_1*t;

        let venus_q_2 = 0.0;
        venus_q_2+=      1.090942e-05*Math.cos( 3.14159265359 +                  0.0 * t);
        venus_q_2=venus_q_2*t*t;

        return venus_q_2+venus_q_1+venus_q_0;
    }

}
