//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2023.  Released as Public Domain

export class VSOP87D_Pico_Velocities{
    public static getEarth(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.earth_b(t) / 365250.0;
        temp[1]=this.earth_l(t) / 365250.0;
        temp[2]=this.earth_r(t) / 365250.0;
        return temp;
    }

    public static getJupiter(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.jupiter_b(t) / 365250.0;
        temp[1]=this.jupiter_l(t) / 365250.0;
        temp[2]=this.jupiter_r(t) / 365250.0;
        return temp;
    }

    public static getMars(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.mars_b(t) / 365250.0;
        temp[1]=this.mars_l(t) / 365250.0;
        temp[2]=this.mars_r(t) / 365250.0;
        return temp;
    }

    public static getMercury(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.mercury_b(t) / 365250.0;
        temp[1]=this.mercury_l(t) / 365250.0;
        temp[2]=this.mercury_r(t) / 365250.0;
        return temp;
    }

    public static getNeptune(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.neptune_b(t) / 365250.0;
        temp[1]=this.neptune_l(t) / 365250.0;
        temp[2]=this.neptune_r(t) / 365250.0;
        return temp;
    }

    public static getSaturn(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.saturn_b(t) / 365250.0;
        temp[1]=this.saturn_l(t) / 365250.0;
        temp[2]=this.saturn_r(t) / 365250.0;
        return temp;
    }

    public static getUranus(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.uranus_b(t) / 365250.0;
        temp[1]=this.uranus_l(t) / 365250.0;
        temp[2]=this.uranus_r(t) / 365250.0;
        return temp;
    }

    public static getVenus(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.venus_b(t) / 365250.0;
        temp[1]=this.venus_l(t) / 365250.0;
        temp[2]=this.venus_r(t) / 365250.0;
        return temp;
    }

    private static earth_b(t: number): number {
        return 0;
    }

    private static earth_l(t: number): number {
        let earth_l_0 = 0.0;
        earth_l_0+=-Math.pow(t,0)*     0.03341656456*     6283.0758499914*Math.sin( 4.66925680417 +      6283.0758499914 * t);
        earth_l_0+=-Math.pow(t,0)*     1.75347045673*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        let earth_l_1 = 0.0;
        earth_l_1+=Math.pow(t,0)*1*  6283.31966747491*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1)*  6283.31966747491*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return earth_l_1+earth_l_0;
    }

    private static earth_r(t: number): number {
        let earth_r_0 = 0.0;
        earth_r_0+=-Math.pow(t,0)*     0.01670699626*     6283.0758499914*Math.sin( 3.09846350771 +      6283.0758499914 * t);
        earth_r_0+=-Math.pow(t,0)*     1.00013988799*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return earth_r_0;
    }

    private static jupiter_b(t: number): number {
        let jupiter_b_0 = 0.0;
        jupiter_b_0+=-Math.pow(t,0)*     0.02268615703*      529.6909650946*Math.sin( 3.55852606718 +       529.6909650946 * t);

        return jupiter_b_0;
    }

    private static jupiter_l(t: number): number {
        let jupiter_l_0 = 0.0;
        jupiter_l_0+=-Math.pow(t,0)*     0.09695898711*      529.6909650946*Math.sin( 5.06191793105 +       529.6909650946 * t);
        jupiter_l_0+=-Math.pow(t,0)*     0.59954691495*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        let jupiter_l_1 = 0.0;
        jupiter_l_1+=Math.pow(t,0)*1*   529.93480757497*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1)*   529.93480757497*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return jupiter_l_1+jupiter_l_0;
    }

    private static jupiter_r(t: number): number {
        let jupiter_r_0 = 0.0;
        jupiter_r_0+=-Math.pow(t,0)*      0.2520932702*      529.6909650946*Math.sin( 3.49108640015 +       529.6909650946 * t);
        jupiter_r_0+=-Math.pow(t,0)*     5.20887429471*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        let jupiter_r_1 = 0.0;
        jupiter_r_1+=Math.pow(t,0)*1*     0.01271801596*Math.cos( 2.64937511122 +       529.6909650946*t)-Math.pow(t,1)*     0.01271801596*      529.6909650946*Math.sin( 2.64937511122 +       529.6909650946 * t);

        return jupiter_r_1+jupiter_r_0;
    }

    private static mars_b(t: number): number {
        let mars_b_0 = 0.0;
        mars_b_0+=-Math.pow(t,0)*     0.03197134986*     3340.6124266998*Math.sin( 3.76832042432 +      3340.6124266998 * t);

        return mars_b_0;
    }

    private static mars_l(t: number): number {
        let mars_l_0 = 0.0;
        mars_l_0+=-Math.pow(t,0)*     0.01108216792*     6681.2248533996*Math.sin( 5.40099836958 +      6681.2248533996 * t);
        mars_l_0+=-Math.pow(t,0)*       0.186563681*     3340.6124266998*Math.sin( 5.05037100303 +      3340.6124266998 * t);
        mars_l_0+=-Math.pow(t,0)*     6.20347711583*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        let mars_l_1 = 0.0;
        mars_l_1+=Math.pow(t,0)*1*     0.01458227051*Math.cos( 3.60426053609 +      3340.6124266998*t)-Math.pow(t,1)*     0.01458227051*     3340.6124266998*Math.sin( 3.60426053609 +      3340.6124266998 * t);
        mars_l_1+=Math.pow(t,0)*1*  3340.85627474342*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1)*  3340.85627474342*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return mars_l_1+mars_l_0;
    }

    private static mars_r(t: number): number {
        let mars_r_0 = 0.0;
        mars_r_0+=-Math.pow(t,0)*     0.14184953153*     3340.6124266998*Math.sin( 3.47971283519 +      3340.6124266998 * t);
        mars_r_0+=-Math.pow(t,0)*     1.53033488276*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        let mars_r_1 = 0.0;
        mars_r_1+=Math.pow(t,0)*1*      0.0110743334*Math.cos(  2.0325052495 +      3340.6124266998*t)-Math.pow(t,1)*      0.0110743334*     3340.6124266998*Math.sin(  2.0325052495 +      3340.6124266998 * t);

        return mars_r_1+mars_r_0;
    }

    private static mercury_b(t: number): number {
        let mercury_b_0 = 0.0;
        mercury_b_0+=-Math.pow(t,0)*     0.01222839532*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        mercury_b_0+=-Math.pow(t,0)*     0.02388076996*    52175.8062831484*Math.sin( 5.03738959685 +     52175.8062831484 * t);
        mercury_b_0+=-Math.pow(t,0)*     0.11737528962*    26087.9031415742*Math.sin( 1.98357498767 +     26087.9031415742 * t);

        return mercury_b_0;
    }

    private static mercury_l(t: number): number {
        let mercury_l_0 = 0.0;
        mercury_l_0+=-Math.pow(t,0)*     0.05046294199*    52175.8062831484*Math.sin(  4.4778548954 +     52175.8062831484 * t);
        mercury_l_0+=-Math.pow(t,0)*     0.40989414976*    26087.9031415742*Math.sin( 1.48302034194 +     26087.9031415742 * t);
        mercury_l_0+=-Math.pow(t,0)*     4.40250710144*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        let mercury_l_1 = 0.0;
        mercury_l_1+=Math.pow(t,0)*1*     0.01126007832*Math.cos( 6.21703970996 +     26087.9031415742*t)-Math.pow(t,1)*     0.01126007832*    26087.9031415742*Math.sin( 6.21703970996 +     26087.9031415742 * t);
        mercury_l_1+=Math.pow(t,0)*1* 26088.14706222746*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1)* 26088.14706222746*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return mercury_l_1+mercury_l_0;
    }

    private static mercury_r(t: number): number {
        let mercury_r_0 = 0.0;
        mercury_r_0+=-Math.pow(t,0)*     0.07834131817*    26087.9031415742*Math.sin( 6.19233722599 +     26087.9031415742 * t);
        mercury_r_0+=-Math.pow(t,0)*     0.39528271652*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return mercury_r_0;
    }

    private static neptune_b(t: number): number {
        let neptune_b_0 = 0.0;
        neptune_b_0+=-Math.pow(t,0)*     0.03088622933*       38.1330356378*Math.sin( 1.44104372626 +        38.1330356378 * t);

        return neptune_b_0;
    }

    private static neptune_l(t: number): number {
        let neptune_l_0 = 0.0;
        neptune_l_0+=-Math.pow(t,0)*     0.01019727662*        1.4844727083*Math.sin(  0.4858092366 +         1.4844727083 * t);
        neptune_l_0+=-Math.pow(t,0)*     0.01798475509*       38.1330356378*Math.sin(  2.9010127305 +        38.1330356378 * t);
        neptune_l_0+=-Math.pow(t,0)*     5.31188633047*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        let neptune_l_1 = 0.0;
        neptune_l_1+=Math.pow(t,0)*1*    38.37687716731*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1)*    38.37687716731*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return neptune_l_1+neptune_l_0;
    }

    private static neptune_r(t: number): number {
        let neptune_r_0 = 0.0;
        neptune_r_0+=-Math.pow(t,0)*     0.01691764281*       36.6485629295*Math.sin( 3.25186138896 +        36.6485629295 * t);
        neptune_r_0+=-Math.pow(t,0)*      0.2706225949*       38.1330356378*Math.sin(  1.3299945893 +        38.1330356378 * t);
        neptune_r_0+=-Math.pow(t,0)*    30.07013206102*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return neptune_r_0;
    }

    private static saturn_b(t: number): number {
        let saturn_b_0 = 0.0;
        saturn_b_0+=-Math.pow(t,0)*      0.0433067804*       213.299095438*Math.sin( 3.60284428399 +        213.299095438 * t);

        return saturn_b_0;
    }

    private static saturn_l(t: number): number {
        let saturn_l_0 = 0.0;
        saturn_l_0+=-Math.pow(t,0)*     0.01414150958*        7.1135470008*Math.sin( 4.58581515873 +         7.1135470008 * t);
        saturn_l_0+=-Math.pow(t,0)*      0.1110765978*       213.299095438*Math.sin( 3.96205090194 +        213.299095438 * t);
        saturn_l_0+=-Math.pow(t,0)*     0.87401354029*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        let saturn_l_1 = 0.0;
        saturn_l_1+=Math.pow(t,0)*1*     0.01296855005*Math.cos( 1.82820544701 +        213.299095438*t)-Math.pow(t,1)*     0.01296855005*       213.299095438*Math.sin( 1.82820544701 +        213.299095438 * t);
        saturn_l_1+=Math.pow(t,0)*1*   213.54295595986*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1)*   213.54295595986*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return saturn_l_1+saturn_l_0;
    }

    private static saturn_r(t: number): number {
        let saturn_r_0 = 0.0;
        saturn_r_0+=-Math.pow(t,0)*     0.01464663959*       426.598190876*Math.sin( 1.64763045468 +        426.598190876 * t);
        saturn_r_0+=-Math.pow(t,0)*     0.01873679934*      206.1855484372*Math.sin( 5.23549605091 +       206.1855484372 * t);
        saturn_r_0+=-Math.pow(t,0)*     0.52921382465*       213.299095438*Math.sin( 2.39226219733 +        213.299095438 * t);
        saturn_r_0+=-Math.pow(t,0)*     9.55758135801*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        let saturn_r_1 = 0.0;
        saturn_r_1+=Math.pow(t,0)*1*     0.06182981282*Math.cos( 0.25843515034 +        213.299095438*t)-Math.pow(t,1)*     0.06182981282*       213.299095438*Math.sin( 0.25843515034 +        213.299095438 * t);

        return saturn_r_1+saturn_r_0;
    }

    private static uranus_b(t: number): number {
        let uranus_b_0 = 0.0;
        uranus_b_0+=-Math.pow(t,0)*     0.01346277639*       74.7815985673*Math.sin( 2.61877810545 +        74.7815985673 * t);

        return uranus_b_0;
    }

    private static uranus_l(t: number): number {
        let uranus_l_0 = 0.0;
        uranus_l_0+=-Math.pow(t,0)*     0.01504247826*        1.4844727083*Math.sin( 3.62719262195 +         1.4844727083 * t);
        uranus_l_0+=-Math.pow(t,0)*     0.09260408252*       74.7815985673*Math.sin(  0.8910642153 +        74.7815985673 * t);
        uranus_l_0+=-Math.pow(t,0)*     5.48129294299*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        let uranus_l_1 = 0.0;
        uranus_l_1+=Math.pow(t,0)*1*    75.02543121646*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1)*    75.02543121646*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return uranus_l_1+uranus_l_0;
    }

    private static uranus_r(t: number): number {
        let uranus_r_0 = 0.0;
        uranus_r_0+=-Math.pow(t,0)*     0.02055653495*      149.5631971346*Math.sin( 1.78295170028 +       149.5631971346 * t);
        uranus_r_0+=-Math.pow(t,0)*     0.03440835545*        73.297125859*Math.sin( 0.32836098991 +         73.297125859 * t);
        uranus_r_0+=-Math.pow(t,0)*     0.88784984055*       74.7815985673*Math.sin( 5.60377526994 +        74.7815985673 * t);
        uranus_r_0+=-Math.pow(t,0)*    19.21264847881*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        let uranus_r_1 = 0.0;
        uranus_r_1+=Math.pow(t,0)*1*      0.0147989637*Math.cos( 3.67205705317 +        74.7815985673*t)-Math.pow(t,1)*      0.0147989637*       74.7815985673*Math.sin( 3.67205705317 +        74.7815985673 * t);

        return uranus_r_1+uranus_r_0;
    }

    private static venus_b(t: number): number {
        let venus_b_0 = 0.0;
        venus_b_0+=-Math.pow(t,0)*     0.05923638472*     10213.285546211*Math.sin( 0.26702775813 +      10213.285546211 * t);

        return venus_b_0;
    }

    private static venus_l(t: number): number {
        let venus_l_0 = 0.0;
        venus_l_0+=-Math.pow(t,0)*     0.01353968419*     10213.285546211*Math.sin( 5.59313319619 +      10213.285546211 * t);
        venus_l_0+=-Math.pow(t,0)*     3.17614666774*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        let venus_l_1 = 0.0;
        venus_l_1+=Math.pow(t,0)*1* 10213.52943052898*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1)* 10213.52943052898*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return venus_l_1+venus_l_0;
    }

    private static venus_r(t: number): number {
        let venus_r_0 = 0.0;
        venus_r_0+=-Math.pow(t,0)*     0.72334820905*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return venus_r_0;
    }

}
