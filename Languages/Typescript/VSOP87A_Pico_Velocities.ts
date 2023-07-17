//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2023.  Released as Public Domain

export class VSOP87A_Pico_Velocities{
    public static getEarth(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.earth_x(t) / 365250.0;
        temp[1]=this.earth_y(t) / 365250.0;
        temp[2]=this.earth_z(t) / 365250.0;
        return temp;
    }

    public static getEmb(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.emb_x(t) / 365250.0;
        temp[1]=this.emb_y(t) / 365250.0;
        temp[2]=this.emb_z(t) / 365250.0;
        return temp;
    }

    public static getJupiter(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.jupiter_x(t) / 365250.0;
        temp[1]=this.jupiter_y(t) / 365250.0;
        temp[2]=this.jupiter_z(t) / 365250.0;
        return temp;
    }

    public static getMars(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.mars_x(t) / 365250.0;
        temp[1]=this.mars_y(t) / 365250.0;
        temp[2]=this.mars_z(t) / 365250.0;
        return temp;
    }

    public static getMercury(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.mercury_x(t) / 365250.0;
        temp[1]=this.mercury_y(t) / 365250.0;
        temp[2]=this.mercury_z(t) / 365250.0;
        return temp;
    }

    public static getNeptune(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.neptune_x(t) / 365250.0;
        temp[1]=this.neptune_y(t) / 365250.0;
        temp[2]=this.neptune_z(t) / 365250.0;
        return temp;
    }

    public static getSaturn(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.saturn_x(t) / 365250.0;
        temp[1]=this.saturn_y(t) / 365250.0;
        temp[2]=this.saturn_z(t) / 365250.0;
        return temp;
    }

    public static getUranus(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.uranus_x(t) / 365250.0;
        temp[1]=this.uranus_y(t) / 365250.0;
        temp[2]=this.uranus_z(t) / 365250.0;
        return temp;
    }

    public static getVenus(t: number): number[]{
        const temp: number[] = [];
        temp[0]=this.venus_x(t) / 365250.0;
        temp[1]=this.venus_y(t) / 365250.0;
        temp[2]=this.venus_z(t) / 365250.0;
        return temp;
    }

    private static earth_x(t: number): number {
        let earth_x_0 = 0.0;
        earth_x_0+=-Math.pow(t,0)*     0.99982928844*     6283.0758499914*Math.sin( 1.75348568475 +      6283.0758499914 * t);

        return earth_x_0;
    }

    private static earth_y(t: number): number {
        let earth_y_0 = 0.0;
        earth_y_0+=-Math.pow(t,0)*     0.02442699036*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        earth_y_0+=-Math.pow(t,0)*      0.9998921103*     6283.0758499914*Math.sin( 0.18265890456 +      6283.0758499914 * t);

        return earth_y_0;
    }

    private static earth_z(t: number): number {
        return 0;
    }

    private static emb_x(t: number): number {
        let emb_x_0 = 0.0;
        emb_x_0+=-Math.pow(t,0)*      0.9998292746*     6283.0758499914*Math.sin( 1.75348568475 +      6283.0758499914 * t);

        return emb_x_0;
    }

    private static emb_y(t: number): number {
        let emb_y_0 = 0.0;
        emb_y_0+=-Math.pow(t,0)*     0.02442698841*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        emb_y_0+=-Math.pow(t,0)*     0.99989209645*     6283.0758499914*Math.sin( 0.18265890456 +      6283.0758499914 * t);

        return emb_y_0;
    }

    private static emb_z(t: number): number {
        return 0;
    }

    private static jupiter_x(t: number): number {
        let jupiter_x_0 = 0.0;
        jupiter_x_0+=-Math.pow(t,0)*     0.01476224578*      536.8045120954*Math.sin( 3.61736921122 +       536.8045120954 * t);
        jupiter_x_0+=-Math.pow(t,0)*     0.01500672056*      522.5774180938*Math.sin(  0.7317513461 +       522.5774180938 * t);
        jupiter_x_0+=-Math.pow(t,0)*     0.12593937922*     1059.3819301892*Math.sin( 0.94911583701 +      1059.3819301892 * t);
        jupiter_x_0+=-Math.pow(t,0)*      0.3666264232*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        jupiter_x_0+=-Math.pow(t,0)*     5.19663470114*      529.6909650946*Math.sin( 0.59945082355 +       529.6909650946 * t);

        return jupiter_x_0;
    }

    private static jupiter_y(t: number): number {
        let jupiter_y_0 = 0.0;
        jupiter_y_0+=-Math.pow(t,0)*      0.0147580937*      536.8045120954*Math.sin( 2.04679566495 +       536.8045120954 * t);
        jupiter_y_0+=-Math.pow(t,0)*     0.01508275299*      522.5774180938*Math.sin( 5.43934968102 +       522.5774180938 * t);
        jupiter_y_0+=-Math.pow(t,0)*     0.09363670616*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        jupiter_y_0+=-Math.pow(t,0)*     0.12592862602*     1059.3819301892*Math.sin( 5.66160227728 +      1059.3819301892 * t);
        jupiter_y_0+=-Math.pow(t,0)*     5.19520046589*      529.6909650946*Math.sin( 5.31203162731 +       529.6909650946 * t);

        let jupiter_y_1 = 0.0;
        jupiter_y_1+=Math.pow(t,0)*1*     0.01694798253*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1)*     0.01694798253*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);

        return jupiter_y_1+jupiter_y_0;
    }

    private static jupiter_z(t: number): number {
        let jupiter_z_0 = 0.0;
        jupiter_z_0+=-Math.pow(t,0)*     0.11823100489*      529.6909650946*Math.sin( 3.55844646343 +       529.6909650946 * t);

        return jupiter_z_0;
    }

    private static mars_x(t: number): number {
        let mars_x_0 = 0.0;
        mars_x_0+=-Math.pow(t,0)*     0.07070919655*     6681.2248533996*Math.sin( 0.25870338558 +      6681.2248533996 * t);
        mars_x_0+=-Math.pow(t,0)*     0.19502945246*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        mars_x_0+=-Math.pow(t,0)*     1.51769936383*     3340.6124266998*Math.sin( 6.20403346548 +      3340.6124266998 * t);

        return mars_x_0;
    }

    private static mars_y(t: number): number {
        let mars_y_0 = 0.0;
        mars_y_0+=-Math.pow(t,0)*     0.07064550239*     6681.2248533996*Math.sin( 4.97051892902 +      6681.2248533996 * t);
        mars_y_0+=-Math.pow(t,0)*     0.08655481102*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        mars_y_0+=-Math.pow(t,0)*     1.51558976277*     3340.6124266998*Math.sin( 4.63212206588 +      3340.6124266998 * t);

        let mars_y_1 = 0.0;
        mars_y_1+=Math.pow(t,0)*1*      0.0142732421*Math.cos( 3.14159265359 +                  0.0*t)-Math.pow(t,1)*      0.0142732421*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);

        return mars_y_1+mars_y_0;
    }

    private static mars_z(t: number): number {
        let mars_z_0 = 0.0;
        mars_z_0+=-Math.pow(t,0)*      0.0490120722*     3340.6124266998*Math.sin( 3.76712324286 +      3340.6124266998 * t);

        return mars_z_0;
    }

    private static mercury_x(t: number): number {
        let mercury_x_0 = 0.0;
        mercury_x_0+=-Math.pow(t,0)*     0.02625615963*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        mercury_x_0+=-Math.pow(t,0)*     0.03825746672*    52175.8062831484*Math.sin( 1.16485604339 +     52175.8062831484 * t);
        mercury_x_0+=-Math.pow(t,0)*     0.37546291728*    26087.9031415742*Math.sin( 4.39651506942 +     26087.9031415742 * t);

        return mercury_x_0;
    }

    private static mercury_y(t: number): number {
        let mercury_y_0 = 0.0;
        mercury_y_0+=-Math.pow(t,0)*     0.03854668215*    52175.8062831484*Math.sin( 5.88780608966 +     52175.8062831484 * t);
        mercury_y_0+=-Math.pow(t,0)*     0.11626131831*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        mercury_y_0+=-Math.pow(t,0)*     0.37953642888*    26087.9031415742*Math.sin(  2.8378061782 +     26087.9031415742 * t);

        return mercury_y_0;
    }

    private static mercury_z(t: number): number {
        let mercury_z_0 = 0.0;
        mercury_z_0+=-Math.pow(t,0)*     0.04607665326*    26087.9031415742*Math.sin( 1.99295081967 +     26087.9031415742 * t);

        return mercury_z_0;
    }

    private static neptune_x(t: number): number {
        let neptune_x_0 = 0.0;
        neptune_x_0+=-Math.pow(t,0)*     0.01074040708*       74.7815985673*Math.sin( 5.38502938672 +        74.7815985673 * t);
        neptune_x_0+=-Math.pow(t,0)*     0.02597313814*        1.4844727083*Math.sin( 1.99590301412 +         1.4844727083 * t);
        neptune_x_0+=-Math.pow(t,0)*     0.13505661755*       76.2660712756*Math.sin( 3.50078975634 +        76.2660712756 * t);
        neptune_x_0+=-Math.pow(t,0)*     0.14935120126*       39.6175083461*Math.sin( 1.08499403018 +        39.6175083461 * t);
        neptune_x_0+=-Math.pow(t,0)*     0.15726094556*       36.6485629295*Math.sin( 0.11319072675 +        36.6485629295 * t);
        neptune_x_0+=-Math.pow(t,0)*     0.27080164222*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        neptune_x_0+=-Math.pow(t,0)*    30.05890004476*       38.1330356378*Math.sin( 5.31211340029 +        38.1330356378 * t);

        return neptune_x_0;
    }

    private static neptune_y(t: number): number {
        let neptune_y_0 = 0.0;
        neptune_y_0+=-Math.pow(t,0)*     0.01073739772*       74.7815985673*Math.sin( 3.81371728533 +        74.7815985673 * t);
        neptune_y_0+=-Math.pow(t,0)*     0.02584250749*        1.4844727083*Math.sin( 0.42549700754 +         1.4844727083 * t);
        neptune_y_0+=-Math.pow(t,0)*     0.13506391797*       76.2660712756*Math.sin( 1.92953034883 +        76.2660712756 * t);
        neptune_y_0+=-Math.pow(t,0)*     0.14936165806*       39.6175083461*Math.sin( 5.79694900665 +        39.6175083461 * t);
        neptune_y_0+=-Math.pow(t,0)*     0.15706589373*       36.6485629295*Math.sin( 4.82539970129 +        36.6485629295 * t);
        neptune_y_0+=-Math.pow(t,0)*     0.30205857683*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        neptune_y_0+=-Math.pow(t,0)*    30.06056351665*       38.1330356378*Math.sin( 3.74086294714 +        38.1330356378 * t);

        return neptune_y_0;
    }

    private static neptune_z(t: number): number {
        let neptune_z_0 = 0.0;
        neptune_z_0+=-Math.pow(t,0)*     0.01245978462*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        neptune_z_0+=-Math.pow(t,0)*     0.92866054405*       38.1330356378*Math.sin( 1.44103930278 +        38.1330356378 * t);

        return neptune_z_0;
    }

    private static saturn_x(t: number): number {
        let saturn_x_0 = 0.0;
        saturn_x_0+=-Math.pow(t,0)*     0.01097683232*       639.897286314*Math.sin( 5.65753337256 +        639.897286314 * t);
        saturn_x_0+=-Math.pow(t,0)*     0.01115684467*      419.4846438752*Math.sin( 3.15686878377 +       419.4846438752 * t);
        saturn_x_0+=-Math.pow(t,0)*     0.01255372247*      110.2063212194*Math.sin( 2.17338917731 +       110.2063212194 * t);
        saturn_x_0+=-Math.pow(t,0)*     0.02336340488*        7.1135470008*Math.sin( 2.02227784673 +         7.1135470008 * t);
        saturn_x_0+=-Math.pow(t,0)*     0.04244797817*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        saturn_x_0+=-Math.pow(t,0)*     0.06624260115*      220.4126424388*Math.sin(  0.7509473778 +       220.4126424388 * t);
        saturn_x_0+=-Math.pow(t,0)*     0.06760430339*      206.1855484372*Math.sin( 4.16767145778 +       206.1855484372 * t);
        saturn_x_0+=-Math.pow(t,0)*     0.26412374238*       426.598190876*Math.sin(  0.1239089262 +        426.598190876 * t);
        saturn_x_0+=-Math.pow(t,0)*     9.51638335797*       213.299095438*Math.sin( 0.87441380794 +        213.299095438 * t);

        let saturn_x_1 = 0.0;
        saturn_x_1+=Math.pow(t,0)*1*     0.02643100909*Math.cos( 5.33291950584 +       220.4126424388*t)-Math.pow(t,1)*     0.02643100909*      220.4126424388*Math.sin( 5.33291950584 +       220.4126424388 * t);
        saturn_x_1+=Math.pow(t,0)*1*     0.02714918399*Math.cos( 5.85229412397 +       206.1855484372*t)-Math.pow(t,1)*     0.02714918399*      206.1855484372*Math.sin( 5.85229412397 +       206.1855484372 * t);
        saturn_x_1+=Math.pow(t,0)*1*     0.03085041716*Math.cos( 4.27565749128 +        426.598190876*t)-Math.pow(t,1)*     0.03085041716*       426.598190876*Math.sin( 4.27565749128 +        426.598190876 * t);
        saturn_x_1+=Math.pow(t,0)*1*     0.07575103962*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1)*     0.07575103962*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return saturn_x_1+saturn_x_0;
    }

    private static saturn_y(t: number): number {
        let saturn_y_0 = 0.0;
        saturn_y_0+=-Math.pow(t,0)*     0.01098751131*       639.897286314*Math.sin( 4.08608782813 +        639.897286314 * t);
        saturn_y_0+=-Math.pow(t,0)*     0.01183874652*      419.4846438752*Math.sin( 1.34638298371 +       419.4846438752 * t);
        saturn_y_0+=-Math.pow(t,0)*     0.01245790434*      110.2063212194*Math.sin( 0.60367177975 +       110.2063212194 * t);
        saturn_y_0+=-Math.pow(t,0)*     0.02345609742*        7.1135470008*Math.sin( 0.44652132519 +         7.1135470008 * t);
        saturn_y_0+=-Math.pow(t,0)*     0.06633570703*      220.4126424388*Math.sin( 5.46258848288 +       220.4126424388 * t);
        saturn_y_0+=-Math.pow(t,0)*     0.06916653915*      206.1855484372*Math.sin( 2.55279408706 +       206.1855484372 * t);
        saturn_y_0+=-Math.pow(t,0)*     0.26441781302*       426.598190876*Math.sin( 4.83528061849 +        426.598190876 * t);
        saturn_y_0+=-Math.pow(t,0)*     0.79387988806*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        saturn_y_0+=-Math.pow(t,0)*     9.52986882699*       213.299095438*Math.sin( 5.58600556665 +        213.299095438 * t);

        let saturn_y_1 = 0.0;
        saturn_y_1+=Math.pow(t,0)*1*     0.02647489677*Math.cos( 3.76132298889 +       220.4126424388*t)-Math.pow(t,1)*     0.02647489677*      220.4126424388*Math.sin( 3.76132298889 +       220.4126424388 * t);
        saturn_y_1+=Math.pow(t,0)*1*     0.02741594312*Math.cos( 4.26667636015 +       206.1855484372*t)-Math.pow(t,1)*     0.02741594312*      206.1855484372*Math.sin( 4.26667636015 +       206.1855484372 * t);
        saturn_y_1+=Math.pow(t,0)*1*     0.03090575152*Math.cos( 2.70346890906 +        426.598190876*t)-Math.pow(t,1)*     0.03090575152*       426.598190876*Math.sin( 2.70346890906 +        426.598190876 * t);
        saturn_y_1+=Math.pow(t,0)*1*     0.05373889135*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1)*     0.05373889135*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return saturn_y_1+saturn_y_0;
    }

    private static saturn_z(t: number): number {
        let saturn_z_0 = 0.0;
        saturn_z_0+=-Math.pow(t,0)*     0.01148283576*       426.598190876*Math.sin( 2.85128367469 +        426.598190876 * t);
        saturn_z_0+=-Math.pow(t,0)*     0.01214249867*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        saturn_z_0+=-Math.pow(t,0)*      0.4135695094*       213.299095438*Math.sin( 3.60234142982 +        213.299095438 * t);

        let saturn_z_1 = 0.0;
        saturn_z_1+=Math.pow(t,0)*1*     0.01906503283*Math.cos( 4.94544746116 +        213.299095438*t)-Math.pow(t,1)*     0.01906503283*       213.299095438*Math.sin( 4.94544746116 +        213.299095438 * t);

        return saturn_z_1+saturn_z_0;
    }

    private static uranus_x(t: number): number {
        let uranus_x_0 = 0.0;
        uranus_x_0+=-Math.pow(t,0)*      0.0144421666*      148.0787244263*Math.sin( 2.65117115201 +       148.0787244263 * t);
        uranus_x_0+=-Math.pow(t,0)*     0.01542951343*      224.3447957019*Math.sin( 4.12121838072 +       224.3447957019 * t);
        uranus_x_0+=-Math.pow(t,0)*     0.06201106178*        1.4844727083*Math.sin( 5.14043574125 +         1.4844727083 * t);
        uranus_x_0+=-Math.pow(t,0)*     0.14130269479*       76.2660712756*Math.sin( 4.39572927934 +        76.2660712756 * t);
        uranus_x_0+=-Math.pow(t,0)*     0.14668209481*        73.297125859*Math.sin( 3.42395862804 +         73.297125859 * t);
        uranus_x_0+=-Math.pow(t,0)*     0.44402496796*      149.5631971346*Math.sin( 1.65967519586 +       149.5631971346 * t);
        uranus_x_0+=-Math.pow(t,0)*     1.32272523872*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        uranus_x_0+=-Math.pow(t,0)*    19.17370730359*       74.7815985673*Math.sin( 5.48133416489 +        74.7815985673 * t);

        return uranus_x_0;
    }

    private static uranus_y(t: number): number {
        let uranus_y_0 = 0.0;
        uranus_y_0+=-Math.pow(t,0)*     0.01442356575*      148.0787244263*Math.sin( 1.08004542712 +       148.0787244263 * t);
        uranus_y_0+=-Math.pow(t,0)*     0.01542668264*      224.3447957019*Math.sin( 2.55040539213 +       224.3447957019 * t);
        uranus_y_0+=-Math.pow(t,0)*     0.06250078231*        1.4844727083*Math.sin( 3.56960243857 +         1.4844727083 * t);
        uranus_y_0+=-Math.pow(t,0)*     0.14123958128*       76.2660712756*Math.sin( 2.82486076549 +        76.2660712756 * t);
        uranus_y_0+=-Math.pow(t,0)*     0.14755940186*        73.297125859*Math.sin( 1.85423280679 +         73.297125859 * t);
        uranus_y_0+=-Math.pow(t,0)*     0.16256125476*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        uranus_y_0+=-Math.pow(t,0)*     0.44390465203*      149.5631971346*Math.sin( 0.08884111329 +       149.5631971346 * t);
        uranus_y_0+=-Math.pow(t,0)*    19.16518231584*       74.7815985673*Math.sin( 3.91045677002 +        74.7815985673 * t);

        let uranus_y_1 = 0.0;
        uranus_y_1+=Math.pow(t,0)*1*     0.02157896385*Math.cos(           0.0 +                  0.0*t)-Math.pow(t,1)*     0.02157896385*                 0.0*Math.sin(           0.0 +                  0.0 * t);

        return uranus_y_1+uranus_y_0;
    }

    private static uranus_z(t: number): number {
        let uranus_z_0 = 0.0;
        uranus_z_0+=-Math.pow(t,0)*     0.01774318778*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        uranus_z_0+=-Math.pow(t,0)*     0.25878127698*       74.7815985673*Math.sin( 2.61861272578 +        74.7815985673 * t);

        return uranus_z_0;
    }

    private static venus_x(t: number): number {
        let venus_x_0 = 0.0;
        venus_x_0+=-Math.pow(t,0)*     0.72211281391*     10213.285546211*Math.sin( 3.17575836361 +      10213.285546211 * t);

        return venus_x_0;
    }

    private static venus_y(t: number): number {
        let venus_y_0 = 0.0;
        venus_y_0+=-Math.pow(t,0)*     0.72324820731*     10213.285546211*Math.sin( 1.60573808356 +      10213.285546211 * t);

        return venus_y_0;
    }

    private static venus_z(t: number): number {
        let venus_z_0 = 0.0;
        venus_z_0+=-Math.pow(t,0)*     0.04282990302*     10213.285546211*Math.sin( 0.26703856476 +      10213.285546211 * t);

        return venus_z_0;
    }

}
