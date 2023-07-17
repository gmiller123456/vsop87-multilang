//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2023.  Released as Public Domain

export class VSOP87_Nano{
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
        emb_a_0+=     1.00000101778*Math.cos(           0.0 +                  0.0 * t);

        return emb_a_0;
    }

    private static emb_h(t: number): number {
        let emb_h_0 = 0.0;
        emb_h_0+=     0.01628447663*Math.cos(           0.0 +                  0.0 * t);

        return emb_h_0;
    }

    private static emb_k(t: number): number {
        let emb_k_0 = 0.0;
        emb_k_0+=      0.0037408165*Math.cos( 3.14159265359 +                  0.0 * t);

        return emb_k_0;
    }

    private static emb_l(t: number): number {
        let emb_l_0 = 0.0;
        emb_l_0+=     1.75347045953*Math.cos(           0.0 +                  0.0 * t);

        let emb_l_1 = 0.0;
        emb_l_1+=   6283.0758499914*Math.cos(           0.0 +                  0.0 * t);
        emb_l_1=emb_l_1*t;

        return emb_l_1+emb_l_0;
    }

    private static emb_p(t: number): number {
        return 0;
    }

    private static emb_q(t: number): number {
        let emb_q_1 = 0.0;
        emb_q_1+=     0.00113468869*Math.cos( 3.14159265359 +                  0.0 * t);
        emb_q_1=emb_q_1*t;

        return emb_q_1;
    }

    private static jupiter_a(t: number): number {
        let jupiter_a_0 = 0.0;
        jupiter_a_0+=     5.20260319132*Math.cos(           0.0 +                  0.0 * t);

        return jupiter_a_0;
    }

    private static jupiter_h(t: number): number {
        let jupiter_h_0 = 0.0;
        jupiter_h_0+=     0.01200385748*Math.cos(           0.0 +                  0.0 * t);

        let jupiter_h_1 = 0.0;
        jupiter_h_1+=      0.0021714936*Math.cos(           0.0 +                  0.0 * t);
        jupiter_h_1=jupiter_h_1*t;

        return jupiter_h_1+jupiter_h_0;
    }

    private static jupiter_k(t: number): number {
        let jupiter_k_0 = 0.0;
        jupiter_k_0+=     0.04698572124*Math.cos(           0.0 +                  0.0 * t);

        let jupiter_k_1 = 0.0;
        jupiter_k_1+=     0.00113010377*Math.cos(           0.0 +                  0.0 * t);
        jupiter_k_1=jupiter_k_1*t;

        return jupiter_k_1+jupiter_k_0;
    }

    private static jupiter_l(t: number): number {
        let jupiter_l_0 = 0.0;
        jupiter_l_0+=     0.00573506125*Math.cos(  1.4439630642 +         7.1135470008 * t);
        jupiter_l_0+=     0.59954649739*Math.cos(           0.0 +                  0.0 * t);

        let jupiter_l_1 = 0.0;
        jupiter_l_1+=     0.00228875491*Math.cos( 6.02639570653 +         7.1135470008 * t);
        jupiter_l_1+=    529.6909650946*Math.cos(           0.0 +                  0.0 * t);
        jupiter_l_1=jupiter_l_1*t;

        return jupiter_l_1+jupiter_l_0;
    }

    private static jupiter_p(t: number): number {
        let jupiter_p_0 = 0.0;
        jupiter_p_0+=     0.01118377157*Math.cos(           0.0 +                  0.0 * t);

        return jupiter_p_0;
    }

    private static jupiter_q(t: number): number {
        let jupiter_q_0 = 0.0;
        jupiter_q_0+=     0.00206561098*Math.cos( 3.14159265359 +                  0.0 * t);

        return jupiter_q_0;
    }

    private static mars_a(t: number): number {
        let mars_a_0 = 0.0;
        mars_a_0+=     1.52367934191*Math.cos(           0.0 +                  0.0 * t);

        return mars_a_0;
    }

    private static mars_h(t: number): number {
        let mars_h_0 = 0.0;
        mars_h_0+=     0.03789973236*Math.cos( 3.14159265359 +                  0.0 * t);

        let mars_h_1 = 0.0;
        mars_h_1+=     0.00624657465*Math.cos(           0.0 +                  0.0 * t);
        mars_h_1=mars_h_1*t;

        return mars_h_1+mars_h_0;
    }

    private static mars_k(t: number): number {
        let mars_k_0 = 0.0;
        mars_k_0+=     0.08536560252*Math.cos(           0.0 +                  0.0 * t);

        let mars_k_1 = 0.0;
        mars_k_1+=     0.00376330152*Math.cos(           0.0 +                  0.0 * t);
        mars_k_1=mars_k_1*t;

        return mars_k_1+mars_k_0;
    }

    private static mars_l(t: number): number {
        let mars_l_0 = 0.0;
        mars_l_0+=     6.20347611291*Math.cos(           0.0 +                  0.0 * t);

        let mars_l_1 = 0.0;
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

        return mars_p_1+mars_p_0;
    }

    private static mars_q(t: number): number {
        let mars_q_0 = 0.0;
        mars_q_0+=     0.01047042574*Math.cos(           0.0 +                  0.0 * t);

        return mars_q_0;
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

        return mercury_h_1+mercury_h_0;
    }

    private static mercury_k(t: number): number {
        let mercury_k_0 = 0.0;
        mercury_k_0+=      0.0446605976*Math.cos(           0.0 +                  0.0 * t);

        let mercury_k_1 = 0.0;
        mercury_k_1+=     0.00552114624*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_k_1=mercury_k_1*t;

        return mercury_k_1+mercury_k_0;
    }

    private static mercury_l(t: number): number {
        let mercury_l_0 = 0.0;
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

        return mercury_q_0;
    }

    private static neptune_a(t: number): number {
        let neptune_a_0 = 0.0;
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

    private static neptune_h(t: number): number {
        let neptune_h_0 = 0.0;
        neptune_h_0+=     0.00131043136*Math.cos( 4.11313570675 +        453.424893819 * t);
        neptune_h_0+=     0.00136278888*Math.cos( 3.74103613444 +        38.1330356378 * t);
        neptune_h_0+=     0.00344034784*Math.cos( 5.31201105782 +       529.6909650946 * t);
        neptune_h_0+=     0.00669242413*Math.cos(           0.0 +                  0.0 * t);

        return neptune_h_0;
    }

    private static neptune_k(t: number): number {
        let neptune_k_0 = 0.0;
        neptune_k_0+=     0.00131042161*Math.cos( 2.54238248127 +        453.424893819 * t);
        neptune_k_0+=      0.0013623298*Math.cos( 5.31190360139 +        38.1330356378 * t);
        neptune_k_0+=     0.00343810387*Math.cos( 0.59989432818 +       529.6909650946 * t);
        neptune_k_0+=     0.00599977571*Math.cos(           0.0 +                  0.0 * t);

        return neptune_k_0;
    }

    private static neptune_l(t: number): number {
        let neptune_l_0 = 0.0;
        neptune_l_0+=     0.00441710236*Math.cos( 0.00020868462 +       491.5579294568 * t);
        neptune_l_0+=     0.01017628072*Math.cos( 0.48586478491 +         1.4844727083 * t);
        neptune_l_0+=     5.31188628676*Math.cos(           0.0 +                  0.0 * t);

        let neptune_l_1 = 0.0;
        neptune_l_1+=     38.1330356378*Math.cos(           0.0 +                  0.0 * t);
        neptune_l_1=neptune_l_1*t;

        return neptune_l_1+neptune_l_0;
    }

    private static neptune_p(t: number): number {
        let neptune_p_0 = 0.0;
        neptune_p_0+=     0.01151683985*Math.cos(           0.0 +                  0.0 * t);

        return neptune_p_0;
    }

    private static neptune_q(t: number): number {
        let neptune_q_0 = 0.0;
        neptune_q_0+=     0.01029147819*Math.cos( 3.14159265359 +                  0.0 * t);

        return neptune_q_0;
    }

    private static saturn_a(t: number): number {
        let saturn_a_0 = 0.0;
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
        saturn_a_1+=     0.00115108584*Math.cos( 1.31913907888 +         7.1135470008 * t);
        saturn_a_1=saturn_a_1*t;

        return saturn_a_1+saturn_a_0;
    }

    private static saturn_h(t: number): number {
        let saturn_h_0 = 0.0;
        saturn_h_0+=     0.00124537423*Math.cos(  5.6029550572 +        213.299095438 * t);
        saturn_h_0+=     0.00154553684*Math.cos(  3.5944713223 +         7.1135470008 * t);
        saturn_h_0+=     0.00196887619*Math.cos( 5.31528897782 +       529.6909650946 * t);
        saturn_h_0+=     0.05542964254*Math.cos(           0.0 +                  0.0 * t);

        let saturn_h_1 = 0.0;
        saturn_h_1+=     0.00375593887*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_h_1=saturn_h_1*t;

        return saturn_h_1+saturn_h_0;
    }

    private static saturn_k(t: number): number {
        let saturn_k_0 = 0.0;
        saturn_k_0+=     0.00126322249*Math.cos( 0.86230560136 +        213.299095438 * t);
        saturn_k_0+=     0.00155326496*Math.cos( 5.16402515606 +         7.1135470008 * t);
        saturn_k_0+=     0.00197268763*Math.cos( 0.59616692002 +       529.6909650946 * t);
        saturn_k_0+=     0.00296003595*Math.cos( 3.14159265359 +                  0.0 * t);

        let saturn_k_1 = 0.0;
        saturn_k_1+=     0.00529602626*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_k_1=saturn_k_1*t;

        return saturn_k_1+saturn_k_0;
    }

    private static saturn_l(t: number): number {
        let saturn_l_0 = 0.0;
        saturn_l_0+=     0.00149861955*Math.cos( 0.26851062811 +       103.0927742186 * t);
        saturn_l_0+=     0.00259784547*Math.cos( 4.43343036691 +       316.3918696566 * t);
        saturn_l_0+=     0.01411655077*Math.cos( 4.58553469006 +         7.1135470008 * t);
        saturn_l_0+=      0.8740167565*Math.cos(           0.0 +                  0.0 * t);

        let saturn_l_1 = 0.0;
        saturn_l_1+=     0.00563352798*Math.cos(  2.8847856166 +         7.1135470008 * t);
        saturn_l_1+=     213.299095438*Math.cos(           0.0 +                  0.0 * t);
        saturn_l_1=saturn_l_1*t;

        let saturn_l_2 = 0.0;
        saturn_l_2+=     0.00116235667*Math.cos( 1.17971682406 +         7.1135470008 * t);
        saturn_l_2=saturn_l_2*t*t;

        return saturn_l_2+saturn_l_1+saturn_l_0;
    }

    private static saturn_p(t: number): number {
        let saturn_p_0 = 0.0;
        saturn_p_0+=     0.01989147301*Math.cos(           0.0 +                  0.0 * t);

        return saturn_p_0;
    }

    private static saturn_q(t: number): number {
        let saturn_q_0 = 0.0;
        saturn_q_0+=     0.00871747436*Math.cos( 3.14159265359 +                  0.0 * t);

        return saturn_q_0;
    }

    private static uranus_a(t: number): number {
        let uranus_a_0 = 0.0;
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

    private static uranus_h(t: number): number {
        let uranus_h_0 = 0.0;
        uranus_h_0+=     0.00116288289*Math.cos( 3.77434233468 +         380.12776796 * t);
        uranus_h_0+=     0.00136132837*Math.cos( 3.91136489012 +        74.7815985673 * t);
        uranus_h_0+=     0.00210407426*Math.cos( 0.42744224313 +         1.4844727083 * t);
        uranus_h_0+=     0.00274676149*Math.cos( 5.31178834743 +       529.6909650946 * t);
        uranus_h_0+=     0.00563791307*Math.cos(           0.0 +                  0.0 * t);

        return uranus_h_0;
    }

    private static uranus_k(t: number): number {
        let uranus_k_0 = 0.0;
        uranus_k_0+=      0.0011637991*Math.cos( 2.20321839185 +         380.12776796 * t);
        uranus_k_0+=     0.00136013862*Math.cos( 5.48189691557 +        74.7815985673 * t);
        uranus_k_0+=     0.00209611522*Math.cos( 1.99913587697 +         1.4844727083 * t);
        uranus_k_0+=     0.00274532742*Math.cos( 0.59960944961 +       529.6909650946 * t);
        uranus_k_0+=     0.04595132376*Math.cos( 3.14159265359 +                  0.0 * t);

        return uranus_k_0;
    }

    private static uranus_l(t: number): number {
        let uranus_l_0 = 0.0;
        uranus_l_0+=     0.00341045477*Math.cos( 6.11377091373 +       454.9093665273 * t);
        uranus_l_0+=     0.01503941337*Math.cos( 3.62721239702 +         1.4844727083 * t);
        uranus_l_0+=     5.48129387159*Math.cos(           0.0 +                  0.0 * t);

        let uranus_l_1 = 0.0;
        uranus_l_1+=     74.7815985673*Math.cos(           0.0 +                  0.0 * t);
        uranus_l_1=uranus_l_1*t;

        return uranus_l_1+uranus_l_0;
    }

    private static uranus_p(t: number): number {
        let uranus_p_0 = 0.0;
        uranus_p_0+=     0.00648617008*Math.cos(           0.0 +                  0.0 * t);

        return uranus_p_0;
    }

    private static uranus_q(t: number): number {
        let uranus_q_0 = 0.0;
        uranus_q_0+=     0.00185915075*Math.cos(           0.0 +                  0.0 * t);

        return uranus_q_0;
    }

    private static venus_a(t: number): number {
        let venus_a_0 = 0.0;
        venus_a_0+=     0.72332981996*Math.cos(           0.0 +                  0.0 * t);

        return venus_a_0;
    }

    private static venus_h(t: number): number {
        let venus_h_0 = 0.0;
        venus_h_0+=     0.00506684726*Math.cos(           0.0 +                  0.0 * t);

        return venus_h_0;
    }

    private static venus_k(t: number): number {
        let venus_k_0 = 0.0;
        venus_k_0+=     0.00449282133*Math.cos( 3.14159265359 +                  0.0 * t);

        return venus_k_0;
    }

    private static venus_l(t: number): number {
        let venus_l_0 = 0.0;
        venus_l_0+=     3.17614669689*Math.cos(           0.0 +                  0.0 * t);

        let venus_l_1 = 0.0;
        venus_l_1+=   10213.285546211*Math.cos(           0.0 +                  0.0 * t);
        venus_l_1=venus_l_1*t;

        return venus_l_1+venus_l_0;
    }

    private static venus_p(t: number): number {
        let venus_p_0 = 0.0;
        venus_p_0+=     0.02882285775*Math.cos(           0.0 +                  0.0 * t);

        return venus_p_0;
    }

    private static venus_q(t: number): number {
        let venus_q_0 = 0.0;
        venus_q_0+=     0.00682410142*Math.cos(           0.0 +                  0.0 * t);

        let venus_q_1 = 0.0;
        venus_q_1+=     0.00138133826*Math.cos(           0.0 +                  0.0 * t);
        venus_q_1=venus_q_1*t;

        return venus_q_1+venus_q_0;
    }

}
