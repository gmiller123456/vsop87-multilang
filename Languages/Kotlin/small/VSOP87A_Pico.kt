//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

object VSOP87A_Pico{
    @JvmStatic fun getEarth(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=earth_x(t);
        temp[1]=earth_y(t);
        temp[2]=earth_z(t);
        return temp;
    }

    @JvmStatic fun getEmb(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=emb_x(t);
        temp[1]=emb_y(t);
        temp[2]=emb_z(t);
        return temp;
    }

    @JvmStatic fun getJupiter(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=jupiter_x(t);
        temp[1]=jupiter_y(t);
        temp[2]=jupiter_z(t);
        return temp;
    }

    @JvmStatic fun getMars(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=mars_x(t);
        temp[1]=mars_y(t);
        temp[2]=mars_z(t);
        return temp;
    }

    @JvmStatic fun getMercury(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=mercury_x(t);
        temp[1]=mercury_y(t);
        temp[2]=mercury_z(t);
        return temp;
    }

    @JvmStatic fun getNeptune(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=neptune_x(t);
        temp[1]=neptune_y(t);
        temp[2]=neptune_z(t);
        return temp;
    }

    @JvmStatic fun getSaturn(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=saturn_x(t);
        temp[1]=saturn_y(t);
        temp[2]=saturn_z(t);
        return temp;
    }

    @JvmStatic fun getUranus(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=uranus_x(t);
        temp[1]=uranus_y(t);
        temp[2]=uranus_z(t);
        return temp;
    }

    @JvmStatic fun getVenus(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=venus_x(t);
        temp[1]=venus_y(t);
        temp[2]=venus_z(t);
        return temp;
    }

    @JvmStatic private fun earth_x(t: Double): Double {
        var earth_x_0 = 0.0;
        earth_x_0+=     0.99982928844*Math.cos( 1.75348568475 +      6283.0758499914 * t);

        return earth_x_0;
    }

    @JvmStatic private fun earth_y(t: Double): Double {
        var earth_y_0 = 0.0;
        earth_y_0+=     0.02442699036*Math.cos( 3.14159265359 +                  0.0 * t);
        earth_y_0+=      0.9998921103*Math.cos( 0.18265890456 +      6283.0758499914 * t);

        return earth_y_0;
    }

    @JvmStatic private fun earth_z(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun emb_x(t: Double): Double {
        var emb_x_0 = 0.0;
        emb_x_0+=      0.9998292746*Math.cos( 1.75348568475 +      6283.0758499914 * t);

        return emb_x_0;
    }

    @JvmStatic private fun emb_y(t: Double): Double {
        var emb_y_0 = 0.0;
        emb_y_0+=     0.02442698841*Math.cos( 3.14159265359 +                  0.0 * t);
        emb_y_0+=     0.99989209645*Math.cos( 0.18265890456 +      6283.0758499914 * t);

        return emb_y_0;
    }

    @JvmStatic private fun emb_z(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun jupiter_x(t: Double): Double {
        var jupiter_x_0 = 0.0;
        jupiter_x_0+=     0.01476224578*Math.cos( 3.61736921122 +       536.8045120954 * t);
        jupiter_x_0+=     0.01500672056*Math.cos(  0.7317513461 +       522.5774180938 * t);
        jupiter_x_0+=     0.12593937922*Math.cos( 0.94911583701 +      1059.3819301892 * t);
        jupiter_x_0+=      0.3666264232*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_x_0+=     5.19663470114*Math.cos( 0.59945082355 +       529.6909650946 * t);

        return jupiter_x_0;
    }

    @JvmStatic private fun jupiter_y(t: Double): Double {
        var jupiter_y_0 = 0.0;
        jupiter_y_0+=      0.0147580937*Math.cos( 2.04679566495 +       536.8045120954 * t);
        jupiter_y_0+=     0.01508275299*Math.cos( 5.43934968102 +       522.5774180938 * t);
        jupiter_y_0+=     0.09363670616*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_y_0+=     0.12592862602*Math.cos( 5.66160227728 +      1059.3819301892 * t);
        jupiter_y_0+=     5.19520046589*Math.cos( 5.31203162731 +       529.6909650946 * t);

        var jupiter_y_1 = 0.0;
        jupiter_y_1+=     0.01694798253*Math.cos( 3.14159265359 +                  0.0 * t);
        jupiter_y_1=jupiter_y_1*t;

        return jupiter_y_1+jupiter_y_0;
    }

    @JvmStatic private fun jupiter_z(t: Double): Double {
        var jupiter_z_0 = 0.0;
        jupiter_z_0+=     0.11823100489*Math.cos( 3.55844646343 +       529.6909650946 * t);

        return jupiter_z_0;
    }

    @JvmStatic private fun mars_x(t: Double): Double {
        var mars_x_0 = 0.0;
        mars_x_0+=     0.07070919655*Math.cos( 0.25870338558 +      6681.2248533996 * t);
        mars_x_0+=     0.19502945246*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_x_0+=     1.51769936383*Math.cos( 6.20403346548 +      3340.6124266998 * t);

        return mars_x_0;
    }

    @JvmStatic private fun mars_y(t: Double): Double {
        var mars_y_0 = 0.0;
        mars_y_0+=     0.07064550239*Math.cos( 4.97051892902 +      6681.2248533996 * t);
        mars_y_0+=     0.08655481102*Math.cos(           0.0 +                  0.0 * t);
        mars_y_0+=     1.51558976277*Math.cos( 4.63212206588 +      3340.6124266998 * t);

        var mars_y_1 = 0.0;
        mars_y_1+=      0.0142732421*Math.cos( 3.14159265359 +                  0.0 * t);
        mars_y_1=mars_y_1*t;

        return mars_y_1+mars_y_0;
    }

    @JvmStatic private fun mars_z(t: Double): Double {
        var mars_z_0 = 0.0;
        mars_z_0+=      0.0490120722*Math.cos( 3.76712324286 +      3340.6124266998 * t);

        return mars_z_0;
    }

    @JvmStatic private fun mercury_x(t: Double): Double {
        var mercury_x_0 = 0.0;
        mercury_x_0+=     0.02625615963*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_x_0+=     0.03825746672*Math.cos( 1.16485604339 +     52175.8062831484 * t);
        mercury_x_0+=     0.37546291728*Math.cos( 4.39651506942 +     26087.9031415742 * t);

        return mercury_x_0;
    }

    @JvmStatic private fun mercury_y(t: Double): Double {
        var mercury_y_0 = 0.0;
        mercury_y_0+=     0.03854668215*Math.cos( 5.88780608966 +     52175.8062831484 * t);
        mercury_y_0+=     0.11626131831*Math.cos( 3.14159265359 +                  0.0 * t);
        mercury_y_0+=     0.37953642888*Math.cos(  2.8378061782 +     26087.9031415742 * t);

        return mercury_y_0;
    }

    @JvmStatic private fun mercury_z(t: Double): Double {
        var mercury_z_0 = 0.0;
        mercury_z_0+=     0.04607665326*Math.cos( 1.99295081967 +     26087.9031415742 * t);

        return mercury_z_0;
    }

    @JvmStatic private fun neptune_x(t: Double): Double {
        var neptune_x_0 = 0.0;
        neptune_x_0+=     0.01074040708*Math.cos( 5.38502938672 +        74.7815985673 * t);
        neptune_x_0+=     0.02597313814*Math.cos( 1.99590301412 +         1.4844727083 * t);
        neptune_x_0+=     0.13505661755*Math.cos( 3.50078975634 +        76.2660712756 * t);
        neptune_x_0+=     0.14935120126*Math.cos( 1.08499403018 +        39.6175083461 * t);
        neptune_x_0+=     0.15726094556*Math.cos( 0.11319072675 +        36.6485629295 * t);
        neptune_x_0+=     0.27080164222*Math.cos( 3.14159265359 +                  0.0 * t);
        neptune_x_0+=    30.05890004476*Math.cos( 5.31211340029 +        38.1330356378 * t);

        return neptune_x_0;
    }

    @JvmStatic private fun neptune_y(t: Double): Double {
        var neptune_y_0 = 0.0;
        neptune_y_0+=     0.01073739772*Math.cos( 3.81371728533 +        74.7815985673 * t);
        neptune_y_0+=     0.02584250749*Math.cos( 0.42549700754 +         1.4844727083 * t);
        neptune_y_0+=     0.13506391797*Math.cos( 1.92953034883 +        76.2660712756 * t);
        neptune_y_0+=     0.14936165806*Math.cos( 5.79694900665 +        39.6175083461 * t);
        neptune_y_0+=     0.15706589373*Math.cos( 4.82539970129 +        36.6485629295 * t);
        neptune_y_0+=     0.30205857683*Math.cos( 3.14159265359 +                  0.0 * t);
        neptune_y_0+=    30.06056351665*Math.cos( 3.74086294714 +        38.1330356378 * t);

        return neptune_y_0;
    }

    @JvmStatic private fun neptune_z(t: Double): Double {
        var neptune_z_0 = 0.0;
        neptune_z_0+=     0.01245978462*Math.cos(           0.0 +                  0.0 * t);
        neptune_z_0+=     0.92866054405*Math.cos( 1.44103930278 +        38.1330356378 * t);

        return neptune_z_0;
    }

    @JvmStatic private fun saturn_x(t: Double): Double {
        var saturn_x_0 = 0.0;
        saturn_x_0+=     0.01097683232*Math.cos( 5.65753337256 +        639.897286314 * t);
        saturn_x_0+=     0.01115684467*Math.cos( 3.15686878377 +       419.4846438752 * t);
        saturn_x_0+=     0.01255372247*Math.cos( 2.17338917731 +       110.2063212194 * t);
        saturn_x_0+=     0.02336340488*Math.cos( 2.02227784673 +         7.1135470008 * t);
        saturn_x_0+=     0.04244797817*Math.cos(           0.0 +                  0.0 * t);
        saturn_x_0+=     0.06624260115*Math.cos(  0.7509473778 +       220.4126424388 * t);
        saturn_x_0+=     0.06760430339*Math.cos( 4.16767145778 +       206.1855484372 * t);
        saturn_x_0+=     0.26412374238*Math.cos(  0.1239089262 +        426.598190876 * t);
        saturn_x_0+=     9.51638335797*Math.cos( 0.87441380794 +        213.299095438 * t);

        var saturn_x_1 = 0.0;
        saturn_x_1+=     0.02643100909*Math.cos( 5.33291950584 +       220.4126424388 * t);
        saturn_x_1+=     0.02714918399*Math.cos( 5.85229412397 +       206.1855484372 * t);
        saturn_x_1+=     0.03085041716*Math.cos( 4.27565749128 +        426.598190876 * t);
        saturn_x_1+=     0.07575103962*Math.cos(           0.0 +                  0.0 * t);
        saturn_x_1=saturn_x_1*t;

        return saturn_x_1+saturn_x_0;
    }

    @JvmStatic private fun saturn_y(t: Double): Double {
        var saturn_y_0 = 0.0;
        saturn_y_0+=     0.01098751131*Math.cos( 4.08608782813 +        639.897286314 * t);
        saturn_y_0+=     0.01183874652*Math.cos( 1.34638298371 +       419.4846438752 * t);
        saturn_y_0+=     0.01245790434*Math.cos( 0.60367177975 +       110.2063212194 * t);
        saturn_y_0+=     0.02345609742*Math.cos( 0.44652132519 +         7.1135470008 * t);
        saturn_y_0+=     0.06633570703*Math.cos( 5.46258848288 +       220.4126424388 * t);
        saturn_y_0+=     0.06916653915*Math.cos( 2.55279408706 +       206.1855484372 * t);
        saturn_y_0+=     0.26441781302*Math.cos( 4.83528061849 +        426.598190876 * t);
        saturn_y_0+=     0.79387988806*Math.cos( 3.14159265359 +                  0.0 * t);
        saturn_y_0+=     9.52986882699*Math.cos( 5.58600556665 +        213.299095438 * t);

        var saturn_y_1 = 0.0;
        saturn_y_1+=     0.02647489677*Math.cos( 3.76132298889 +       220.4126424388 * t);
        saturn_y_1+=     0.02741594312*Math.cos( 4.26667636015 +       206.1855484372 * t);
        saturn_y_1+=     0.03090575152*Math.cos( 2.70346890906 +        426.598190876 * t);
        saturn_y_1+=     0.05373889135*Math.cos(           0.0 +                  0.0 * t);
        saturn_y_1=saturn_y_1*t;

        return saturn_y_1+saturn_y_0;
    }

    @JvmStatic private fun saturn_z(t: Double): Double {
        var saturn_z_0 = 0.0;
        saturn_z_0+=     0.01148283576*Math.cos( 2.85128367469 +        426.598190876 * t);
        saturn_z_0+=     0.01214249867*Math.cos(           0.0 +                  0.0 * t);
        saturn_z_0+=      0.4135695094*Math.cos( 3.60234142982 +        213.299095438 * t);

        var saturn_z_1 = 0.0;
        saturn_z_1+=     0.01906503283*Math.cos( 4.94544746116 +        213.299095438 * t);
        saturn_z_1=saturn_z_1*t;

        return saturn_z_1+saturn_z_0;
    }

    @JvmStatic private fun uranus_x(t: Double): Double {
        var uranus_x_0 = 0.0;
        uranus_x_0+=      0.0144421666*Math.cos( 2.65117115201 +       148.0787244263 * t);
        uranus_x_0+=     0.01542951343*Math.cos( 4.12121838072 +       224.3447957019 * t);
        uranus_x_0+=     0.06201106178*Math.cos( 5.14043574125 +         1.4844727083 * t);
        uranus_x_0+=     0.14130269479*Math.cos( 4.39572927934 +        76.2660712756 * t);
        uranus_x_0+=     0.14668209481*Math.cos( 3.42395862804 +         73.297125859 * t);
        uranus_x_0+=     0.44402496796*Math.cos( 1.65967519586 +       149.5631971346 * t);
        uranus_x_0+=     1.32272523872*Math.cos(           0.0 +                  0.0 * t);
        uranus_x_0+=    19.17370730359*Math.cos( 5.48133416489 +        74.7815985673 * t);

        return uranus_x_0;
    }

    @JvmStatic private fun uranus_y(t: Double): Double {
        var uranus_y_0 = 0.0;
        uranus_y_0+=     0.01442356575*Math.cos( 1.08004542712 +       148.0787244263 * t);
        uranus_y_0+=     0.01542668264*Math.cos( 2.55040539213 +       224.3447957019 * t);
        uranus_y_0+=     0.06250078231*Math.cos( 3.56960243857 +         1.4844727083 * t);
        uranus_y_0+=     0.14123958128*Math.cos( 2.82486076549 +        76.2660712756 * t);
        uranus_y_0+=     0.14755940186*Math.cos( 1.85423280679 +         73.297125859 * t);
        uranus_y_0+=     0.16256125476*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_y_0+=     0.44390465203*Math.cos( 0.08884111329 +       149.5631971346 * t);
        uranus_y_0+=    19.16518231584*Math.cos( 3.91045677002 +        74.7815985673 * t);

        var uranus_y_1 = 0.0;
        uranus_y_1+=     0.02157896385*Math.cos(           0.0 +                  0.0 * t);
        uranus_y_1=uranus_y_1*t;

        return uranus_y_1+uranus_y_0;
    }

    @JvmStatic private fun uranus_z(t: Double): Double {
        var uranus_z_0 = 0.0;
        uranus_z_0+=     0.01774318778*Math.cos( 3.14159265359 +                  0.0 * t);
        uranus_z_0+=     0.25878127698*Math.cos( 2.61861272578 +        74.7815985673 * t);

        return uranus_z_0;
    }

    @JvmStatic private fun venus_x(t: Double): Double {
        var venus_x_0 = 0.0;
        venus_x_0+=     0.72211281391*Math.cos( 3.17575836361 +      10213.285546211 * t);

        return venus_x_0;
    }

    @JvmStatic private fun venus_y(t: Double): Double {
        var venus_y_0 = 0.0;
        venus_y_0+=     0.72324820731*Math.cos( 1.60573808356 +      10213.285546211 * t);

        return venus_y_0;
    }

    @JvmStatic private fun venus_z(t: Double): Double {
        var venus_z_0 = 0.0;
        venus_z_0+=     0.04282990302*Math.cos( 0.26703856476 +      10213.285546211 * t);

        return venus_z_0;
    }

}
