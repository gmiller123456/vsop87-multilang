//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2023.  Released as Public Domain

export class VSOP87A_Nano{
    public static getEarth(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.earth_x(t);
        temp[1]=this.earth_y(t);
        temp[2]=this.earth_z(t);
        return temp;
    }

    public static getEmb(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.emb_x(t);
        temp[1]=this.emb_y(t);
        temp[2]=this.emb_z(t);
        return temp;
    }

    public static getJupiter(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.jupiter_x(t);
        temp[1]=this.jupiter_y(t);
        temp[2]=this.jupiter_z(t);
        return temp;
    }

    public static getMars(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.mars_x(t);
        temp[1]=this.mars_y(t);
        temp[2]=this.mars_z(t);
        return temp;
    }

    public static getMercury(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.mercury_x(t);
        temp[1]=this.mercury_y(t);
        temp[2]=this.mercury_z(t);
        return temp;
    }

    public static getNeptune(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.neptune_x(t);
        temp[1]=this.neptune_y(t);
        temp[2]=this.neptune_z(t);
        return temp;
    }

    public static getSaturn(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.saturn_x(t);
        temp[1]=this.saturn_y(t);
        temp[2]=this.saturn_z(t);
        return temp;
    }

    public static getUranus(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.uranus_x(t);
        temp[1]=this.uranus_y(t);
        temp[2]=this.uranus_z(t);
        return temp;
    }

    public static getVenus(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.venus_x(t);
        temp[1]=this.venus_y(t);
        temp[2]=this.venus_z(t);
        return temp;
    }

    private static earth_x(t: number): number {
        let earth_x_0 = 0.0;
        earth_x_0+=     0.00561144206*Math.cos(           0.0 +                  0.0 * t);
        earth_x_0+=       0.008352573*Math.cos(  1.7103453945 +     12566.1516999828 * t);
        earth_x_0+=     0.99982928844*Math.cos( 1.75348568475 +      6283.0758499914 * t);

        let earth_x_1 = 0.0;
        earth_x_1+=     0.00123403056*Math.cos(           0.0 +                  0.0 * t);
        earth_x_1=earth_x_1*t;

        return earth_x_1+earth_x_0;
    }

    private static earth_y(t: number): number {
        let earth_y_0 = 0.0;
        earth_y_0+=     0.00835292314*Math.cos( 0.13952878991 +     12566.1516999828 * t);
        earth_y_0+=     0.02442699036*Math.cos( 3.14159265359 +                  0.0 * t);
        earth_y_0+=      0.9998921103*Math.cos( 0.18265890456 +      6283.0758499914 * t);

        return earth_y_0;
    }

    private static earth_z(t: number): number {
        let earth_z_1 = 0.0;
        earth_z_1+=     0.00227822442*Math.cos( 3.41372504278 +      6283.0758499914 * t);
        earth_z_1=earth_z_1*t;

        return earth_z_1;
    }

    private static emb_x(t: number): number {
        let emb_x_0 = 0.0;
        emb_x_0+=     0.00561144161*Math.cos(           0.0 +                  0.0 * t);
        emb_x_0+=       0.008352573*Math.cos(  1.7103453945 +     12566.1516999828 * t);
        emb_x_0+=      0.9998292746*Math.cos( 1.75348568475 +      6283.0758499914 * t);

        let emb_x_1 = 0.0;
        emb_x_1+=     0.00123403046*Math.cos(           0.0 +                  0.0 * t);
        emb_x_1=emb_x_1*t;

        return emb_x_1+emb_x_0;
    }

    private static emb_y(t: number): number {
        let emb_y_0 = 0.0;
        emb_y_0+=     0.00835292314*Math.cos( 0.13952878991 +     12566.1516999828 * t);
        emb_y_0+=     0.02442698841*Math.cos( 3.14159265359 +                  0.0 * t);
        emb_y_0+=     0.99989209645*Math.cos( 0.18265890456 +      6283.0758499914 * t);

        return emb_y_0;
    }

    private static emb_z(t: number): number {
        let emb_z_1 = 0.0;
        emb_z_1+=     0.00227822442*Math.cos( 3.41372504278 +      6283.0758499914 * t);
        emb_z_1=emb_z_1*t;

        return emb_z_1;
    }

    private static jupiter_x(t: number): number {
        let jupiter_x_0 = 0.0;
        jupiter_x_0+=     0.00103494641*Math.cos(  6.1932476912 +      1052.2683831884 * t);
        jupiter_x_0+=     0.00114201562*Math.cos( 0.01567084269 +      1162.4747044078 * t);
        jupiter_x_0+=     0.00134226996*Math.cos( 0.87648567011 +        213.299095438 * t);
        jupiter_x_0+=     0.00144867641*Math.cos(  5.5598057708 +       632.7837393132 * t);
        jupiter_x_0+=     0.00150678793*Math.cos( 6.12003027739 +       110.2063212194 * t);
        jupiter_x_0+=     0.00194025405*Math.cos( 5.02580363996 +        426.598190876 * t);
        jupiter_x_0+=     0.00301689798*Math.cos( 5.17372551148 +         7.1135470008 * t);
        jupiter_x_0+=     0.00385975375*Math.cos( 2.01229910687 +       103.0927742186 * t);
        jupiter_x_0+=     0.00457752736*Math.cos( 1.29883700755 +      1589.0728952838 * t);
        jupiter_x_0+=     0.01476224578*Math.cos( 3.61736921122 +       536.8045120954 * t);
        jupiter_x_0+=     0.01500672056*Math.cos(  0.7317513461 +       522.5774180938 * t);
        jupiter_x_0+=     0.12593937922*Math.cos( 0.94911583701 +      1059.3819301892 * t);
        jupiter_x_0+=      0.3666264232*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_x_0+=     5.19663470114*Math.cos( 0.59945082355 +       529.6909650946 * t);

        let jupiter_x_1 = 0.0;
        jupiter_x_1+=      0.0058915706*Math.cos( 1.91556314637 +       536.8045120954 * t);
        jupiter_x_1+=     0.00599720482*Math.cos( 2.42996678275 +       522.5774180938 * t);
        jupiter_x_1+=     0.00635297172*Math.cos( 0.10662156868 +      1059.3819301892 * t);
        jupiter_x_1+=     0.00882389251*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_x_1=jupiter_x_1*t;

        let jupiter_x_2 = 0.0;
        jupiter_x_2+=     0.00121521296*Math.cos( 0.21155109275 +       536.8045120954 * t);
        jupiter_x_2+=     0.00123864644*Math.cos( 4.13563277513 +       522.5774180938 * t);
        jupiter_x_2=jupiter_x_2*t*t;

        return jupiter_x_2+jupiter_x_1+jupiter_x_0;
    }

    private static jupiter_y(t: number): number {
        let jupiter_y_0 = 0.0;
        jupiter_y_0+=     0.00101999807*Math.cos( 4.57594598884 +      1052.2683831884 * t);
        jupiter_y_0+=      0.0011404311*Math.cos( 4.72982262969 +      1162.4747044078 * t);
        jupiter_y_0+=     0.00132696764*Math.cos( 5.62184581859 +        213.299095438 * t);
        jupiter_y_0+=     0.00139480058*Math.cos( 4.00075307706 +       632.7837393132 * t);
        jupiter_y_0+=     0.00146104656*Math.cos( 4.62267224431 +       110.2063212194 * t);
        jupiter_y_0+=     0.00192333128*Math.cos( 3.45690564771 +        426.598190876 * t);
        jupiter_y_0+=     0.00300686679*Math.cos(  3.6094805074 +         7.1135470008 * t);
        jupiter_y_0+=     0.00378285578*Math.cos( 3.53006782383 +       103.0927742186 * t);
        jupiter_y_0+=     0.00457750806*Math.cos( 6.01129093501 +      1589.0728952838 * t);
        jupiter_y_0+=      0.0147580937*Math.cos( 2.04679566495 +       536.8045120954 * t);
        jupiter_y_0+=     0.01508275299*Math.cos( 5.43934968102 +       522.5774180938 * t);
        jupiter_y_0+=     0.09363670616*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_y_0+=     0.12592862602*Math.cos( 5.66160227728 +      1059.3819301892 * t);
        jupiter_y_0+=     5.19520046589*Math.cos( 5.31203162731 +       529.6909650946 * t);

        let jupiter_y_1 = 0.0;
        jupiter_y_1+=     0.00588928504*Math.cos(  0.3449157689 +       536.8045120954 * t);
        jupiter_y_1+=     0.00601160431*Math.cos(  0.8581124994 +       522.5774180938 * t);
        jupiter_y_1+=     0.00634859798*Math.cos(  4.8190319965 +      1059.3819301892 * t);
        jupiter_y_1+=     0.01694798253*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_y_1=jupiter_y_1*t;

        let jupiter_y_2 = 0.0;
        jupiter_y_2+=     0.00121455991*Math.cos(  4.9239876638 +       536.8045120954 * t);
        jupiter_y_2+=     0.00124032509*Math.cos( 2.56495576833 +       522.5774180938 * t);
        jupiter_y_2=jupiter_y_2*t*t;

        return jupiter_y_2+jupiter_y_1+jupiter_y_0;
    }

    private static jupiter_z(t: number): number {
        let jupiter_z_0 = 0.0;
        jupiter_z_0+=     0.00286562094*Math.cos( 3.90812238338 +      1059.3819301892 * t);
        jupiter_z_0+=     0.00859031952*Math.cos(           0.0 +                  0.0 * t);
        jupiter_z_0+=     0.11823100489*Math.cos( 3.55844646343 +       529.6909650946 * t);

        let jupiter_z_1 = 0.0;
        jupiter_z_1+=     0.00407072175*Math.cos( 1.52699353482 +       529.6909650946 * t);
        jupiter_z_1=jupiter_z_1*t;

        return jupiter_z_1+jupiter_z_0;
    }

    private static mars_x(t: number): number {
        let mars_x_0 = 0.0;
        mars_x_0+=     0.00494196914*Math.cos( 0.59669127768 +     10021.8372800994 * t);
        mars_x_0+=     0.07070919655*Math.cos( 0.25870338558 +      6681.2248533996 * t);
        mars_x_0+=     0.19502945246*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_x_0+=     1.51769936383*Math.cos( 6.20403346548 +      3340.6124266998 * t);

        let mars_x_1 = 0.0;
        mars_x_1+=     0.00552437949*Math.cos( 5.09565872891 +      6681.2248533996 * t);
        mars_x_1+=     0.00861441374*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_x_1=mars_x_1*t;

        return mars_x_1+mars_x_0;
    }

    private static mars_y(t: number): number {
        let mars_y_0 = 0.0;
        mars_y_0+=     0.00493872848*Math.cos( 5.30877806694 +     10021.8372800994 * t);
        mars_y_0+=     0.07064550239*Math.cos( 4.97051892902 +      6681.2248533996 * t);
        mars_y_0+=     0.08655481102*Math.cos(           0.0 +                  0.0 * t);
        mars_y_0+=     1.51558976277*Math.cos( 4.63212206588 +      3340.6124266998 * t);

        let mars_y_1 = 0.0;
        mars_y_1+=     0.00551063753*Math.cos( 3.52128320402 +      6681.2248533996 * t);
        mars_y_1+=      0.0142732421*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_y_1=mars_y_1*t;

        return mars_y_1+mars_y_0;
    }

    private static mars_z(t: number): number {
        let mars_z_0 = 0.0;
        mars_z_0+=     0.00228333904*Math.cos( 4.10544022266 +      6681.2248533996 * t);
        mars_z_0+=     0.00660669541*Math.cos(           0.0 +                  0.0 * t);
        mars_z_0+=      0.0490120722*Math.cos( 3.76712324286 +      3340.6124266998 * t);

        let mars_z_1 = 0.0;
        mars_z_1+=     0.00331842958*Math.cos( 6.05027773492 +      3340.6124266998 * t);
        mars_z_1=mars_z_1*t;

        return mars_z_1+mars_z_0;
    }

    private static mercury_x(t: number): number {
        let mercury_x_0 = 0.0;
        mercury_x_0+=     0.00105716695*Math.cos( 0.98379033182 +   104351.61256629678 * t);
        mercury_x_0+=     0.00584261333*Math.cos( 4.21599394757 +    78263.70942472259 * t);
        mercury_x_0+=     0.02625615963*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_x_0+=     0.03825746672*Math.cos( 1.16485604339 +     52175.8062831484 * t);
        mercury_x_0+=     0.37546291728*Math.cos( 4.39651506942 +     26087.9031415742 * t);

        let mercury_x_1 = 0.0;
        mercury_x_1+=     0.00105289019*Math.cos( 5.91600475006 +     52175.8062831484 * t);
        mercury_x_1+=     0.00318848034*Math.cos(           0.0 +                  0.0 * t);
        mercury_x_1=mercury_x_1*t;

        return mercury_x_1+mercury_x_0;
    }

    private static mercury_y(t: number): number {
        let mercury_y_0 = 0.0;
        mercury_y_0+=     0.00106235493*Math.cos( 5.70550616735 +   104351.61256629678 * t);
        mercury_y_0+=     0.00587711268*Math.cos( 2.65498896201 +    78263.70942472259 * t);
        mercury_y_0+=     0.03854668215*Math.cos( 5.88780608966 +     52175.8062831484 * t);
        mercury_y_0+=     0.11626131831*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_y_0+=     0.37953642888*Math.cos(  2.8378061782 +     26087.9031415742 * t);

        let mercury_y_1 = 0.0;
        mercury_y_1+=     0.00107803852*Math.cos( 4.34964793883 +     52175.8062831484 * t);
        mercury_y_1=mercury_y_1*t;

        return mercury_y_1+mercury_y_0;
    }

    private static mercury_z(t: number): number {
        let mercury_z_0 = 0.0;
        mercury_z_0+=     0.00469171617*Math.cos( 5.04215742764 +     52175.8062831484 * t);
        mercury_z_0+=     0.00708734365*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_z_0+=     0.04607665326*Math.cos( 1.99295081967 +     26087.9031415742 * t);

        let mercury_z_1 = 0.0;
        mercury_z_1+=     0.00108722177*Math.cos( 3.91134750825 +     26087.9031415742 * t);
        mercury_z_1=mercury_z_1*t;

        return mercury_z_1+mercury_z_0;
    }

    private static neptune_x(t: number): number {
        let neptune_x_0 = 0.0;
        neptune_x_0+=     0.00135887219*Math.cos( 5.54676577816 +        77.7505439839 * t);
        neptune_x_0+=     0.00272253551*Math.cos( 0.87443494387 +        213.299095438 * t);
        neptune_x_0+=     0.00307525907*Math.cos( 0.40023311011 +         73.297125859 * t);
        neptune_x_0+=     0.00495719107*Math.cos( 0.59948143567 +       529.6909650946 * t);
        neptune_x_0+=     0.00565534918*Math.cos( 5.98964907613 +        41.1019810544 * t);
        neptune_x_0+=     0.00817588813*Math.cos( 0.78180174031 +         2.9689454166 * t);
        neptune_x_0+=     0.00823793287*Math.cos( 1.43221581862 +        35.1640902212 * t);
        neptune_x_0+=     0.01074040708*Math.cos( 5.38502938672 +        74.7815985673 * t);
        neptune_x_0+=     0.02597313814*Math.cos( 1.99590301412 +         1.4844727083 * t);
        neptune_x_0+=     0.13505661755*Math.cos( 3.50078975634 +        76.2660712756 * t);
        neptune_x_0+=     0.14935120126*Math.cos( 1.08499403018 +        39.6175083461 * t);
        neptune_x_0+=     0.15726094556*Math.cos( 0.11319072675 +        36.6485629295 * t);
        neptune_x_0+=     0.27080164222*Math.cos( 3.14159265359 +                  0.0 * t);
        neptune_x_0+=    30.05890004476*Math.cos( 5.31211340029 +        38.1330356378 * t);

        let neptune_x_1 = 0.0;
        neptune_x_1+=     0.00118398168*Math.cos( 2.88251845061 +        76.2660712756 * t);
        neptune_x_1+=     0.00243125299*Math.cos( 5.46214902873 +        39.6175083461 * t);
        neptune_x_1+=     0.00255840261*Math.cos( 2.01935686795 +        36.6485629295 * t);
        neptune_x_1=neptune_x_1*t;

        return neptune_x_1+neptune_x_0;
    }

    private static neptune_y(t: number): number {
        let neptune_y_0 = 0.0;
        neptune_y_0+=     0.00135897385*Math.cos( 3.97553750964 +        77.7505439839 * t);
        neptune_y_0+=     0.00272640298*Math.cos( 5.58603690785 +        213.299095438 * t);
        neptune_y_0+=     0.00304525203*Math.cos( 5.11048113661 +         73.297125859 * t);
        neptune_y_0+=     0.00495581047*Math.cos( 5.31205825784 +       529.6909650946 * t);
        neptune_y_0+=     0.00565576412*Math.cos( 4.41843009015 +        41.1019810544 * t);
        neptune_y_0+=     0.00582199295*Math.cos( 6.19633718936 +        35.1640902212 * t);
        neptune_y_0+=     0.00815187583*Math.cos( 5.49429775826 +         2.9689454166 * t);
        neptune_y_0+=     0.01073739772*Math.cos( 3.81371728533 +        74.7815985673 * t);
        neptune_y_0+=     0.02584250749*Math.cos( 0.42549700754 +         1.4844727083 * t);
        neptune_y_0+=     0.13506391797*Math.cos( 1.92953034883 +        76.2660712756 * t);
        neptune_y_0+=     0.14936165806*Math.cos( 5.79694900665 +        39.6175083461 * t);
        neptune_y_0+=     0.15706589373*Math.cos( 4.82539970129 +        36.6485629295 * t);
        neptune_y_0+=     0.30205857683*Math.cos( 3.14159265359 +                  0.0 * t);
        neptune_y_0+=    30.06056351665*Math.cos( 3.74086294714 +        38.1330356378 * t);

        let neptune_y_1 = 0.0;
        neptune_y_1+=     0.00118427205*Math.cos( 1.31128027037 +        76.2660712756 * t);
        neptune_y_1+=     0.00243147725*Math.cos( 3.89099798696 +        39.6175083461 * t);
        neptune_y_1+=     0.00256125493*Math.cos( 0.44757496817 +        36.6485629295 * t);
        neptune_y_1+=     0.00352947493*Math.cos( 3.14159265359 +                  0.0 * t);
        neptune_y_1=neptune_y_1*t;

        return neptune_y_1+neptune_y_0;
    }

    private static neptune_z(t: number): number {
        let neptune_z_0 = 0.0;
        neptune_z_0+=     0.00417558068*Math.cos( 5.91310695421 +        76.2660712756 * t);
        neptune_z_0+=     0.00451987936*Math.cos( 3.50949720541 +        39.6175083461 * t);
        neptune_z_0+=     0.00474333567*Math.cos( 2.52218774238 +        36.6485629295 * t);
        neptune_z_0+=     0.01245978462*Math.cos(           0.0 +                  0.0 * t);
        neptune_z_0+=     0.92866054405*Math.cos( 1.44103930278 +        38.1330356378 * t);

        let neptune_z_1 = 0.0;
        neptune_z_1+=     0.00154885971*Math.cos( 2.14239039664 +        38.1330356378 * t);
        neptune_z_1=neptune_z_1*t;

        return neptune_z_1+neptune_z_0;
    }

    private static saturn_x(t: number): number {
        let saturn_x_0 = 0.0;
        saturn_x_0+=     0.00372894461*Math.cos( 0.00137195497 +       433.7117378768 * t);
        saturn_x_0+=     0.00433994439*Math.cos( 0.72012820974 +       529.6909650946 * t);
        saturn_x_0+=     0.00509313365*Math.cos(  4.9586562478 +       103.0927742186 * t);
        saturn_x_0+=     0.00716328481*Math.cos( 2.71149993708 +       316.3918696566 * t);
        saturn_x_0+=     0.01097683232*Math.cos( 5.65753337256 +        639.897286314 * t);
        saturn_x_0+=     0.01115684467*Math.cos( 3.15686878377 +       419.4846438752 * t);
        saturn_x_0+=     0.01255372247*Math.cos( 2.17338917731 +       110.2063212194 * t);
        saturn_x_0+=     0.02336340488*Math.cos( 2.02227784673 +         7.1135470008 * t);
        saturn_x_0+=     0.04244797817*Math.cos(           0.0 +                  0.0 * t);
        saturn_x_0+=     0.06624260115*Math.cos(  0.7509473778 +       220.4126424388 * t);
        saturn_x_0+=     0.06760430339*Math.cos( 4.16767145778 +       206.1855484372 * t);
        saturn_x_0+=     0.26412374238*Math.cos(  0.1239089262 +        426.598190876 * t);
        saturn_x_0+=     9.51638335797*Math.cos( 0.87441380794 +        213.299095438 * t);

        let saturn_x_1 = 0.0;
        saturn_x_1+=     0.00119531145*Math.cos( 1.14735096078 +       110.2063212194 * t);
        saturn_x_1+=     0.00189196274*Math.cos( 4.48642453552 +       433.7117378768 * t);
        saturn_x_1+=      0.0020364657*Math.cos( 1.10998681782 +        213.299095438 * t);
        saturn_x_1+=     0.00256560953*Math.cos( 3.52478934343 +        639.897286314 * t);
        saturn_x_1+=     0.00312356512*Math.cos( 4.83001724941 +       419.4846438752 * t);
        saturn_x_1+=      0.0062710452*Math.cos( 0.32898307969 +         7.1135470008 * t);
        saturn_x_1+=     0.02643100909*Math.cos( 5.33291950584 +       220.4126424388 * t);
        saturn_x_1+=     0.02714918399*Math.cos( 5.85229412397 +       206.1855484372 * t);
        saturn_x_1+=     0.03085041716*Math.cos( 4.27565749128 +        426.598190876 * t);
        saturn_x_1+=     0.07575103962*Math.cos(           0.0 +                  0.0 * t);
        saturn_x_1=saturn_x_1*t;

        let saturn_x_2 = 0.0;
        saturn_x_2+=     0.00224302269*Math.cos( 2.49151203519 +        426.598190876 * t);
        saturn_x_2+=     0.00336109713*Math.cos(  2.4254743246 +        213.299095438 * t);
        saturn_x_2+=     0.00443342186*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_x_2+=     0.00545834518*Math.cos( 3.62343709657 +       220.4126424388 * t);
        saturn_x_2+=     0.00560746334*Math.cos( 1.26401632282 +       206.1855484372 * t);
        saturn_x_2=saturn_x_2*t*t;

        return saturn_x_2+saturn_x_1+saturn_x_0;
    }

    private static saturn_y(t: number): number {
        let saturn_y_0 = 0.0;
        saturn_y_0+=     0.00335162363*Math.cos( 0.66422253983 +       103.0927742186 * t);
        saturn_y_0+=     0.00373327342*Math.cos( 4.71308726958 +       433.7117378768 * t);
        saturn_y_0+=     0.00434466176*Math.cos( 5.42474696262 +       529.6909650946 * t);
        saturn_y_0+=     0.00700849336*Math.cos( 1.13611298025 +       316.3918696566 * t);
        saturn_y_0+=     0.01098751131*Math.cos( 4.08608782813 +        639.897286314 * t);
        saturn_y_0+=     0.01183874652*Math.cos( 1.34638298371 +       419.4846438752 * t);
        saturn_y_0+=     0.01245790434*Math.cos( 0.60367177975 +       110.2063212194 * t);
        saturn_y_0+=     0.02345609742*Math.cos( 0.44652132519 +         7.1135470008 * t);
        saturn_y_0+=     0.06633570703*Math.cos( 5.46258848288 +       220.4126424388 * t);
        saturn_y_0+=     0.06916653915*Math.cos( 2.55279408706 +       206.1855484372 * t);
        saturn_y_0+=     0.26441781302*Math.cos( 4.83528061849 +        426.598190876 * t);
        saturn_y_0+=     0.79387988806*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_y_0+=     9.52986882699*Math.cos( 5.58600556665 +        213.299095438 * t);

        let saturn_y_1 = 0.0;
        saturn_y_1+=     0.00116791227*Math.cos(  5.8914667576 +       110.2063212194 * t);
        saturn_y_1+=     0.00164133553*Math.cos( 5.29239290066 +        213.299095438 * t);
        saturn_y_1+=     0.00189433319*Math.cos( 2.91501840819 +       433.7117378768 * t);
        saturn_y_1+=     0.00256799701*Math.cos( 1.95351819758 +        639.897286314 * t);
        saturn_y_1+=      0.0031227193*Math.cos( 3.25850205023 +       419.4846438752 * t);
        saturn_y_1+=     0.00631520527*Math.cos(  5.0324550528 +         7.1135470008 * t);
        saturn_y_1+=     0.02647489677*Math.cos( 3.76132298889 +       220.4126424388 * t);
        saturn_y_1+=     0.02741594312*Math.cos( 4.26667636015 +       206.1855484372 * t);
        saturn_y_1+=     0.03090575152*Math.cos( 2.70346890906 +        426.598190876 * t);
        saturn_y_1+=     0.05373889135*Math.cos(           0.0 +                  0.0 * t);
        saturn_y_1=saturn_y_1*t;

        let saturn_y_2 = 0.0;
        saturn_y_2+=     0.00225521642*Math.cos( 0.91699821445 +        426.598190876 * t);
        saturn_y_2+=     0.00362294249*Math.cos( 0.89540100509 +        213.299095438 * t);
        saturn_y_2+=     0.00458518613*Math.cos(           0.0 +                  0.0 * t);
        saturn_y_2+=     0.00547012116*Math.cos( 2.05154973426 +       220.4126424388 * t);
        saturn_y_2+=     0.00563706537*Math.cos( 5.97115878242 +       206.1855484372 * t);
        saturn_y_2=saturn_y_2*t*t;

        return saturn_y_2+saturn_y_1+saturn_y_0;
    }

    private static saturn_z(t: number): number {
        let saturn_z_0 = 0.0;
        saturn_z_0+=     0.00286934048*Math.cos( 3.48073526693 +       220.4126424388 * t);
        saturn_z_0+=     0.00329280791*Math.cos( 0.57121407104 +       206.1855484372 * t);
        saturn_z_0+=     0.01148283576*Math.cos( 2.85128367469 +        426.598190876 * t);
        saturn_z_0+=     0.01214249867*Math.cos(           0.0 +                  0.0 * t);
        saturn_z_0+=      0.4135695094*Math.cos( 3.60234142982 +        213.299095438 * t);

        let saturn_z_1 = 0.0;
        saturn_z_1+=     0.00101466332*Math.cos( 1.79095829545 +       220.4126424388 * t);
        saturn_z_1+=     0.00130262284*Math.cos( 2.26140980879 +       206.1855484372 * t);
        saturn_z_1+=     0.00528301265*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_z_1+=     0.01906503283*Math.cos( 4.94544746116 +        213.299095438 * t);
        saturn_z_1=saturn_z_1*t;

        let saturn_z_2 = 0.0;
        saturn_z_2+=     0.00131275155*Math.cos( 0.08868998101 +        213.299095438 * t);
        saturn_z_2=saturn_z_2*t*t;

        return saturn_z_2+saturn_z_1+saturn_z_0;
    }

    private static uranus_x(t: number): number {
        let uranus_x_0 = 0.0;
        uranus_x_0+=     0.00104619827*Math.cos( 3.90538916334 +        146.594251718 * t);
        uranus_x_0+=     0.00110125387*Math.cos( 4.45473528724 +        35.1640902212 * t);
        uranus_x_0+=     0.00111260244*Math.cos( 5.12252784325 +       222.8603229936 * t);
        uranus_x_0+=     0.00119593859*Math.cos( 4.10138544267 +        39.6175083461 * t);
        uranus_x_0+=     0.00125105686*Math.cos( 2.51455273063 +       111.4301614968 * t);
        uranus_x_0+=     0.00135340032*Math.cos( 5.51062460816 +        78.7137518304 * t);
        uranus_x_0+=     0.00145505389*Math.cos( 2.31759757085 +        70.8494453042 * t);
        uranus_x_0+=     0.00215368005*Math.cos( 5.30877641428 +        38.1330356378 * t);
        uranus_x_0+=     0.00267938156*Math.cos( 0.96885660137 +        213.299095438 * t);
        uranus_x_0+=     0.00383625535*Math.cos( 6.18762010576 +       138.5174968707 * t);
        uranus_x_0+=     0.00458219984*Math.cos( 3.90788284112 +         2.9689454166 * t);
        uranus_x_0+=     0.00496087649*Math.cos( 0.59947400861 +       529.6909650946 * t);
        uranus_x_0+=     0.00547699056*Math.cos( 3.63127725056 +        85.8272988312 * t);
        uranus_x_0+=     0.00585182542*Math.cos( 4.79934779678 +        71.8126531507 * t);
        uranus_x_0+=     0.00621624676*Math.cos( 3.05882246638 +        77.7505439839 * t);
        uranus_x_0+=      0.0063400027*Math.cos( 4.09556589724 +        63.7358983034 * t);
        uranus_x_0+=     0.00657524815*Math.cos( 0.57595170636 +       151.0476698429 * t);
        uranus_x_0+=     0.00944995563*Math.cos( 1.65869338757 +        11.0457002639 * t);
        uranus_x_0+=      0.0144421666*Math.cos( 2.65117115201 +       148.0787244263 * t);
        uranus_x_0+=     0.01542951343*Math.cos( 4.12121838072 +       224.3447957019 * t);
        uranus_x_0+=     0.06201106178*Math.cos( 5.14043574125 +         1.4844727083 * t);
        uranus_x_0+=     0.14130269479*Math.cos( 4.39572927934 +        76.2660712756 * t);
        uranus_x_0+=     0.14668209481*Math.cos( 3.42395862804 +         73.297125859 * t);
        uranus_x_0+=     0.44402496796*Math.cos( 1.65967519586 +       149.5631971346 * t);
        uranus_x_0+=     1.32272523872*Math.cos(           0.0 +                  0.0 * t);
        uranus_x_0+=    19.17370730359*Math.cos( 5.48133416489 +        74.7815985673 * t);

        let uranus_x_1 = 0.0;
        uranus_x_1+=     0.00111045158*Math.cos(  5.5715723596 +        11.0457002639 * t);
        uranus_x_1+=     0.00229676787*Math.cos( 2.48204455775 +        76.2660712756 * t);
        uranus_x_1+=     0.00239840801*Math.cos( 5.33657762707 +         73.297125859 * t);
        uranus_x_1+=     0.00526878306*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_x_1+=     0.00739730021*Math.cos( 6.01067825116 +       149.5631971346 * t);
        uranus_x_1=uranus_x_1*t;

        return uranus_x_1+uranus_x_0;
    }

    private static uranus_y(t: number): number {
        let uranus_y_0 = 0.0;
        uranus_y_0+=     0.00104507929*Math.cos( 2.33345675603 +        146.594251718 * t);
        uranus_y_0+=     0.00108584454*Math.cos( 6.02234848388 +        35.1640902212 * t);
        uranus_y_0+=      0.0011120486*Math.cos( 3.55163219419 +       222.8603229936 * t);
        uranus_y_0+=     0.00119670613*Math.cos(  2.5305878378 +        39.6175083461 * t);
        uranus_y_0+=     0.00124868545*Math.cos( 0.94315917319 +       111.4301614968 * t);
        uranus_y_0+=      0.0013529082*Math.cos( 3.93970260616 +        78.7137518304 * t);
        uranus_y_0+=     0.00144032475*Math.cos(  0.7501570092 +        70.8494453042 * t);
        uranus_y_0+=     0.00216239629*Math.cos(  3.7380076758 +        38.1330356378 * t);
        uranus_y_0+=     0.00268363417*Math.cos(  5.6808529902 +        213.299095438 * t);
        uranus_y_0+=     0.00387922853*Math.cos( 4.62026923885 +       138.5174968707 * t);
        uranus_y_0+=      0.0045958912*Math.cos(  2.3374553607 +         2.9689454166 * t);
        uranus_y_0+=     0.00495936105*Math.cos(  5.3120575374 +       529.6909650946 * t);
        uranus_y_0+=     0.00541961958*Math.cos( 3.24476486661 +        71.8126531507 * t);
        uranus_y_0+=     0.00547472694*Math.cos( 2.06037924573 +        85.8272988312 * t);
        uranus_y_0+=      0.0062132677*Math.cos( 1.48795811387 +        77.7505439839 * t);
        uranus_y_0+=     0.00650331846*Math.cos( 2.76142680222 +        63.7358983034 * t);
        uranus_y_0+=      0.0065734312*Math.cos( 5.28830704469 +       151.0476698429 * t);
        uranus_y_0+=     0.00938975501*Math.cos( 0.09275714761 +        11.0457002639 * t);
        uranus_y_0+=     0.01442356575*Math.cos( 1.08004542712 +       148.0787244263 * t);
        uranus_y_0+=     0.01542668264*Math.cos( 2.55040539213 +       224.3447957019 * t);
        uranus_y_0+=     0.06250078231*Math.cos( 3.56960243857 +         1.4844727083 * t);
        uranus_y_0+=     0.14123958128*Math.cos( 2.82486076549 +        76.2660712756 * t);
        uranus_y_0+=     0.14755940186*Math.cos( 1.85423280679 +         73.297125859 * t);
        uranus_y_0+=     0.16256125476*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_y_0+=     0.44390465203*Math.cos( 0.08884111329 +       149.5631971346 * t);
        uranus_y_0+=    19.16518231584*Math.cos( 3.91045677002 +        74.7815985673 * t);

        let uranus_y_1 = 0.0;
        uranus_y_1+=     0.00110137111*Math.cos( 4.00844441616 +        11.0457002639 * t);
        uranus_y_1+=     0.00229396424*Math.cos( 0.91090183978 +        76.2660712756 * t);
        uranus_y_1+=     0.00238545685*Math.cos( 3.76882493145 +         73.297125859 * t);
        uranus_y_1+=     0.00739227349*Math.cos( 4.43963890935 +       149.5631971346 * t);
        uranus_y_1+=     0.02157896385*Math.cos(           0.0 +                  0.0 * t);
        uranus_y_1=uranus_y_1*t;

        return uranus_y_1+uranus_y_0;
    }

    private static uranus_z(t: number): number {
        let uranus_z_0 = 0.0;
        uranus_z_0+=      0.0019028189*Math.cos( 1.61643841193 +        76.2660712756 * t);
        uranus_z_0+=     0.00190881685*Math.cos( 0.57869575952 +         73.297125859 * t);
        uranus_z_0+=     0.00599316131*Math.cos( 5.08119500585 +       149.5631971346 * t);
        uranus_z_0+=     0.01774318778*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_z_0+=     0.25878127698*Math.cos( 2.61861272578 +        74.7815985673 * t);

        let uranus_z_1 = 0.0;
        uranus_z_1+=     0.00655916626*Math.cos(  0.0127194766 +        74.7815985673 * t);
        uranus_z_1=uranus_z_1*t;

        return uranus_z_1+uranus_z_0;
    }

    private static venus_x(t: number): number {
        let venus_x_0 = 0.0;
        venus_x_0+=     0.00244500474*Math.cos( 4.05566613861 +      20426.571092422 * t);
        venus_x_0+=     0.00486448018*Math.cos(           0.0 +                  0.0 * t);
        venus_x_0+=     0.72211281391*Math.cos( 3.17575836361 +      10213.285546211 * t);

        return venus_x_0;
    }

    private static venus_y(t: number): number {
        let venus_y_0 = 0.0;
        venus_y_0+=      0.0024488479*Math.cos( 2.48564954004 +      20426.571092422 * t);
        venus_y_0+=     0.00549506273*Math.cos( 3.14159265359 +                  0.0 * t);
        venus_y_0+=     0.72324820731*Math.cos( 1.60573808356 +      10213.285546211 * t);

        return venus_y_0;
    }

    private static venus_z(t: number): number {
        let venus_z_0 = 0.0;
        venus_z_0+=     0.04282990302*Math.cos( 0.26703856476 +      10213.285546211 * t);

        let venus_z_1 = 0.0;
        venus_z_1+=     0.00208096402*Math.cos( 1.88967278742 +      10213.285546211 * t);
        venus_z_1=venus_z_1*t;

        return venus_z_1+venus_z_0;
    }

}
