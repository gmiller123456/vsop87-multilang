//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2023.  Released as Public Domain

export class VSOP87_Pico{
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
        return 0;
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
        return 0;
    }

    private static jupiter_a(t: number): number {
        let jupiter_a_0 = 0.0;
        jupiter_a_0+=     5.20260319132*Math.cos(           0.0 +                  0.0 * t);

        return jupiter_a_0;
    }

    private static jupiter_h(t: number): number {
        let jupiter_h_0 = 0.0;
        jupiter_h_0+=     0.01200385748*Math.cos(           0.0 +                  0.0 * t);

        return jupiter_h_0;
    }

    private static jupiter_k(t: number): number {
        let jupiter_k_0 = 0.0;
        jupiter_k_0+=     0.04698572124*Math.cos(           0.0 +                  0.0 * t);

        return jupiter_k_0;
    }

    private static jupiter_l(t: number): number {
        let jupiter_l_0 = 0.0;
        jupiter_l_0+=     0.59954649739*Math.cos(           0.0 +                  0.0 * t);

        let jupiter_l_1 = 0.0;
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
        return 0;
    }

    private static mars_a(t: number): number {
        let mars_a_0 = 0.0;
        mars_a_0+=     1.52367934191*Math.cos(           0.0 +                  0.0 * t);

        return mars_a_0;
    }

    private static mars_h(t: number): number {
        let mars_h_0 = 0.0;
        mars_h_0+=     0.03789973236*Math.cos( 3.14159265359 +                  0.0 * t);

        return mars_h_0;
    }

    private static mars_k(t: number): number {
        let mars_k_0 = 0.0;
        mars_k_0+=     0.08536560252*Math.cos(           0.0 +                  0.0 * t);

        return mars_k_0;
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

        return mars_p_0;
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

        return mercury_h_0;
    }

    private static mercury_k(t: number): number {
        let mercury_k_0 = 0.0;
        mercury_k_0+=      0.0446605976*Math.cos(           0.0 +                  0.0 * t);

        return mercury_k_0;
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

        return mercury_p_0;
    }

    private static mercury_q(t: number): number {
        let mercury_q_0 = 0.0;
        mercury_q_0+=     0.04061563384*Math.cos(           0.0 +                  0.0 * t);

        return mercury_q_0;
    }

    private static neptune_a(t: number): number {
        let neptune_a_0 = 0.0;
        neptune_a_0+=     0.03597274341*Math.cos( 1.84552690821 +       175.1660598002 * t);
        neptune_a_0+=     0.14818172119*Math.cos( 1.57105922541 +       491.5579294568 * t);
        neptune_a_0+=    30.11038686942*Math.cos(           0.0 +                  0.0 * t);

        return neptune_a_0;
    }

    private static neptune_h(t: number): number {
        return 0;
    }

    private static neptune_k(t: number): number {
        return 0;
    }

    private static neptune_l(t: number): number {
        let neptune_l_0 = 0.0;
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
        saturn_a_0+=     0.03363448736*Math.cos(  6.0097367346 +       316.3918696566 * t);
        saturn_a_0+=     9.55490959574*Math.cos(           0.0 +                  0.0 * t);

        return saturn_a_0;
    }

    private static saturn_h(t: number): number {
        let saturn_h_0 = 0.0;
        saturn_h_0+=     0.05542964254*Math.cos(           0.0 +                  0.0 * t);

        return saturn_h_0;
    }

    private static saturn_k(t: number): number {
        return 0;
    }

    private static saturn_l(t: number): number {
        let saturn_l_0 = 0.0;
        saturn_l_0+=     0.01411655077*Math.cos( 4.58553469006 +         7.1135470008 * t);
        saturn_l_0+=      0.8740167565*Math.cos(           0.0 +                  0.0 * t);

        let saturn_l_1 = 0.0;
        saturn_l_1+=     213.299095438*Math.cos(           0.0 +                  0.0 * t);
        saturn_l_1=saturn_l_1*t;

        return saturn_l_1+saturn_l_0;
    }

    private static saturn_p(t: number): number {
        let saturn_p_0 = 0.0;
        saturn_p_0+=     0.01989147301*Math.cos(           0.0 +                  0.0 * t);

        return saturn_p_0;
    }

    private static saturn_q(t: number): number {
        return 0;
    }

    private static uranus_a(t: number): number {
        let uranus_a_0 = 0.0;
        uranus_a_0+=     0.02068375131*Math.cos( 1.67626096637 +       138.5174968707 * t);
        uranus_a_0+=      0.0803047624*Math.cos( 1.40140954803 +       454.9093665273 * t);
        uranus_a_0+=    19.21844606178*Math.cos(           0.0 +                  0.0 * t);

        return uranus_a_0;
    }

    private static uranus_h(t: number): number {
        return 0;
    }

    private static uranus_k(t: number): number {
        let uranus_k_0 = 0.0;
        uranus_k_0+=     0.04595132376*Math.cos( 3.14159265359 +                  0.0 * t);

        return uranus_k_0;
    }

    private static uranus_l(t: number): number {
        let uranus_l_0 = 0.0;
        uranus_l_0+=     0.01503941337*Math.cos( 3.62721239702 +         1.4844727083 * t);
        uranus_l_0+=     5.48129387159*Math.cos(           0.0 +                  0.0 * t);

        let uranus_l_1 = 0.0;
        uranus_l_1+=     74.7815985673*Math.cos(           0.0 +                  0.0 * t);
        uranus_l_1=uranus_l_1*t;

        return uranus_l_1+uranus_l_0;
    }

    private static uranus_p(t: number): number {
        return 0;
    }

    private static uranus_q(t: number): number {
        return 0;
    }

    private static venus_a(t: number): number {
        let venus_a_0 = 0.0;
        venus_a_0+=     0.72332981996*Math.cos(           0.0 +                  0.0 * t);

        return venus_a_0;
    }

    private static venus_h(t: number): number {
        return 0;
    }

    private static venus_k(t: number): number {
        return 0;
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
        return 0;
    }

}
