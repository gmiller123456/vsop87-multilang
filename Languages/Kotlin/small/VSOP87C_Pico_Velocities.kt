//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

object VSOP87C_Pico_Velocities{
    @JvmStatic fun getEarth(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=earth_x(t) / 365250.0;
        temp[1]=earth_y(t) / 365250.0;
        temp[2]=earth_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getJupiter(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=jupiter_x(t) / 365250.0;
        temp[1]=jupiter_y(t) / 365250.0;
        temp[2]=jupiter_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getMars(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=mars_x(t) / 365250.0;
        temp[1]=mars_y(t) / 365250.0;
        temp[2]=mars_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getMercury(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=mercury_x(t) / 365250.0;
        temp[1]=mercury_y(t) / 365250.0;
        temp[2]=mercury_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getNeptune(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=neptune_x(t) / 365250.0;
        temp[1]=neptune_y(t) / 365250.0;
        temp[2]=neptune_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getSaturn(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=saturn_x(t) / 365250.0;
        temp[1]=saturn_y(t) / 365250.0;
        temp[2]=saturn_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getUranus(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=uranus_x(t) / 365250.0;
        temp[1]=uranus_y(t) / 365250.0;
        temp[2]=uranus_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic fun getVenus(t: Double): DoubleArray{
        val temp = DoubleArray(3);
        temp[0]=venus_x(t) / 365250.0;
        temp[1]=venus_y(t) / 365250.0;
        temp[2]=venus_z(t) / 365250.0;
        return temp;
    }

    @JvmStatic private fun earth_x(t: Double): Double {
        var earth_x_0 = 0.0;
        earth_x_0+=-Math.pow(t,0.0)*     0.02506324281*        0.2438174835*Math.sin( 4.93819429098 +         0.2438174835 * t);
        earth_x_0+=-Math.pow(t,0.0)*     0.99986069925*     6283.3196674749*Math.sin( 1.75347045757 +      6283.3196674749 * t);

        return earth_x_0;
    }

    @JvmStatic private fun earth_y(t: Double): Double {
        var earth_y_0 = 0.0;
        earth_y_0+=-Math.pow(t,0.0)*     0.02506324281*        0.2438174835*Math.sin( 3.36739796418 +         0.2438174835 * t);
        earth_y_0+=-Math.pow(t,0.0)*     0.99986069925*     6283.3196674749*Math.sin( 0.18267413078 +      6283.3196674749 * t);

        return earth_y_0;
    }

    @JvmStatic private fun earth_z(t: Double): Double {
        return 0.0;
    }

    @JvmStatic private fun jupiter_x(t: Double): Double {
        var jupiter_x_0 = 0.0;
        jupiter_x_0+=-Math.pow(t,0.0)*     0.01476016965*      537.0483295789*Math.sin( 3.61748058581 +       537.0483295789 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.01504469362*      522.8212355773*Math.sin( 0.72934997067 +       522.8212355773 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.12593400247*     1059.6257476727*Math.sin( 0.94916456487 +      1059.6257476727 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     0.37839498798*        0.2438174835*Math.sin( 3.39164799011 +         0.2438174835 * t);
        jupiter_x_0+=-Math.pow(t,0.0)*     5.19591755961*      529.9347825781*Math.sin(   0.599546722 +       529.9347825781 * t);

        var jupiter_x_1 = 0.0;
        jupiter_x_1+=Math.pow(t,0.0)*1.0*      0.0191255649*Math.cos( 4.23275123829 +         0.2438174835*t)-Math.pow(t,1.0)*      0.0191255649*        0.2438174835*Math.sin( 4.23275123829 +         0.2438174835 * t);

        return jupiter_x_1+jupiter_x_0;
    }

    @JvmStatic private fun jupiter_y(t: Double): Double {
        var jupiter_y_0 = 0.0;
        jupiter_y_0+=-Math.pow(t,0.0)*     0.01476016965*      537.0483295789*Math.sin( 2.04668425902 +       537.0483295789 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.01504469362*      522.8212355773*Math.sin( 5.44173895105 +       522.8212355773 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.12593400247*     1059.6257476727*Math.sin( 5.66155354525 +      1059.6257476727 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     0.37839498798*        0.2438174835*Math.sin( 1.82085166331 +         0.2438174835 * t);
        jupiter_y_0+=-Math.pow(t,0.0)*     5.19591755961*      529.9347825781*Math.sin( 5.31193570238 +       529.9347825781 * t);

        var jupiter_y_1 = 0.0;
        jupiter_y_1+=Math.pow(t,0.0)*1.0*      0.0191255649*Math.cos( 2.66195491149 +         0.2438174835*t)-Math.pow(t,1.0)*      0.0191255649*        0.2438174835*Math.sin( 2.66195491149 +         0.2438174835 * t);

        return jupiter_y_1+jupiter_y_0;
    }

    @JvmStatic private fun jupiter_z(t: Double): Double {
        var jupiter_z_0 = 0.0;
        jupiter_z_0+=-Math.pow(t,0.0)*     0.11823100489*      529.6909650946*Math.sin( 3.55844646343 +       529.6909650946 * t);

        return jupiter_z_0;
    }

    @JvmStatic private fun mars_x(t: Double): Double {
        var mars_x_0 = 0.0;
        mars_x_0+=-Math.pow(t,0.0)*     0.07067734657*    6681.46867088311*Math.sin(  0.2584167963 +     6681.46867088311 * t);
        mars_x_0+=-Math.pow(t,0.0)*      0.2133734347*        0.2438174835*Math.sin(   2.723903427 +         0.2438174835 * t);
        mars_x_0+=-Math.pow(t,0.0)*     1.51664432758*     3340.8562441833*Math.sin( 6.20347631684 +      3340.8562441833 * t);

        var mars_x_1 = 0.0;
        mars_x_1+=Math.pow(t,0.0)*1.0*     0.01668487239*Math.cos( 4.16976892466 +         0.2438174835*t)-Math.pow(t,1.0)*     0.01668487239*        0.2438174835*Math.sin( 4.16976892466 +         0.2438174835 * t);

        return mars_x_1+mars_x_0;
    }

    @JvmStatic private fun mars_y(t: Double): Double {
        var mars_y_0 = 0.0;
        mars_y_0+=-Math.pow(t,0.0)*     0.07067734657*    6681.46867088311*Math.sin( 4.97080577669 +     6681.46867088311 * t);
        mars_y_0+=-Math.pow(t,0.0)*      0.2133734347*        0.2438174835*Math.sin( 1.15310710021 +         0.2438174835 * t);
        mars_y_0+=-Math.pow(t,0.0)*     1.51664432758*     3340.8562441833*Math.sin( 4.63267999004 +      3340.8562441833 * t);

        var mars_y_1 = 0.0;
        mars_y_1+=Math.pow(t,0.0)*1.0*     0.01668487239*Math.cos( 2.59897259786 +         0.2438174835*t)-Math.pow(t,1.0)*     0.01668487239*        0.2438174835*Math.sin( 2.59897259786 +         0.2438174835 * t);

        return mars_y_1+mars_y_0;
    }

    @JvmStatic private fun mars_z(t: Double): Double {
        var mars_z_0 = 0.0;
        mars_z_0+=-Math.pow(t,0.0)*      0.0490120722*     3340.6124266998*Math.sin( 3.76712324286 +      3340.6124266998 * t);

        return mars_z_0;
    }

    @JvmStatic private fun mercury_x(t: Double): Double {
        var mercury_x_0 = 0.0;
        mercury_x_0+=-Math.pow(t,0.0)*     0.03840153904*    52176.0501006319*Math.sin( 1.17015646101 +     52176.0501006319 * t);
        mercury_x_0+=-Math.pow(t,0.0)*     0.11918926148*        0.2438174835*Math.sin( 4.49027758439 +         0.2438174835 * t);
        mercury_x_0+=-Math.pow(t,0.0)*     0.37749277893*    26088.1469590577*Math.sin( 4.40259139579 +     26088.1469590577 * t);

        return mercury_x_0;
    }

    @JvmStatic private fun mercury_y(t: Double): Double {
        var mercury_y_0 = 0.0;
        mercury_y_0+=-Math.pow(t,0.0)*     0.03840153904*    52176.0501006319*Math.sin(  5.8825454414 +     52176.0501006319 * t);
        mercury_y_0+=-Math.pow(t,0.0)*     0.11918926148*        0.2438174835*Math.sin(  2.9194812576 +         0.2438174835 * t);
        mercury_y_0+=-Math.pow(t,0.0)*     0.37749277893*    26088.1469590577*Math.sin( 2.83179506899 +     26088.1469590577 * t);

        return mercury_y_0;
    }

    @JvmStatic private fun mercury_z(t: Double): Double {
        var mercury_z_0 = 0.0;
        mercury_z_0+=-Math.pow(t,0.0)*     0.04607665326*    26087.9031415742*Math.sin( 1.99295081967 +     26087.9031415742 * t);

        return mercury_z_0;
    }

    @JvmStatic private fun neptune_x(t: Double): Double {
        var neptune_x_0 = 0.0;
        neptune_x_0+=-Math.pow(t,0.0)*     0.01073890204*       75.0254160508*Math.sin( 5.38477153556 +        75.0254160508 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.02590782232*        1.7282901918*Math.sin( 1.99609768221 +         1.7282901918 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.13506026414*      76.50988875911*Math.sin( 3.50055820972 +       76.50988875911 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.14935642614*      39.86132582961*Math.sin( 1.08477702063 +       39.86132582961 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.15716341901*        36.892380413*Math.sin( 0.11310077968 +         36.892380413 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     0.40567587218*        0.2438174835*Math.sin( 3.98149970131 +         0.2438174835 * t);
        neptune_x_0+=-Math.pow(t,0.0)*     30.0597310058*       38.3768531213*Math.sin( 5.31188633083 +        38.3768531213 * t);

        var neptune_x_2 = 0.0;
        neptune_x_2+=Math.pow(t,1.0)*2.0*     0.01620002167*Math.cos( 0.60038473142 +        38.3768531213*t)-Math.pow(t,2.0)*     0.01620002167*       38.3768531213*Math.sin( 0.60038473142 +        38.3768531213 * t);

        return neptune_x_2+neptune_x_0;
    }

    @JvmStatic private fun neptune_y(t: Double): Double {
        var neptune_y_0 = 0.0;
        neptune_y_0+=-Math.pow(t,0.0)*     0.01073890204*       75.0254160508*Math.sin( 3.81397520876 +        75.0254160508 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.02590782232*        1.7282901918*Math.sin( 0.42530135542 +         1.7282901918 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.13506026414*      76.50988875911*Math.sin( 1.92976188293 +       76.50988875911 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.14935642614*      39.86132582961*Math.sin( 5.79716600101 +       39.86132582961 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.15716341901*        36.892380413*Math.sin( 4.82548976006 +         36.892380413 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     0.40567587218*        0.2438174835*Math.sin( 2.41070337452 +         0.2438174835 * t);
        neptune_y_0+=-Math.pow(t,0.0)*     30.0597310058*       38.3768531213*Math.sin( 3.74109000403 +        38.3768531213 * t);

        var neptune_y_2 = 0.0;
        neptune_y_2+=Math.pow(t,1.0)*2.0*     0.01620002167*Math.cos( 5.31277371181 +        38.3768531213*t)-Math.pow(t,2.0)*     0.01620002167*       38.3768531213*Math.sin( 5.31277371181 +        38.3768531213 * t);

        return neptune_y_2+neptune_y_0;
    }

    @JvmStatic private fun neptune_z(t: Double): Double {
        var neptune_z_0 = 0.0;
        neptune_z_0+=-Math.pow(t,0.0)*     0.01245978462*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        neptune_z_0+=-Math.pow(t,0.0)*     0.92866054405*       38.1330356378*Math.sin( 1.44103930278 +        38.1330356378 * t);

        var neptune_z_1 = 0.0;
        neptune_z_1+=Math.pow(t,0.0)*1.0*     0.06832633707*Math.cos( 3.80782656293 +        38.1330356378*t)-Math.pow(t,1.0)*     0.06832633707*       38.1330356378*Math.sin( 3.80782656293 +        38.1330356378 * t);

        return neptune_z_1+neptune_z_0;
    }

    @JvmStatic private fun saturn_x(t: Double): Double {
        var saturn_x_0 = 0.0;
        saturn_x_0+=-Math.pow(t,0.0)*     0.01098217124*      640.1411037975*Math.sin( 5.65720860592 +       640.1411037975 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.01141539711*     419.72846135871*Math.sin( 3.03345312296 +      419.72846135871 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.01250581159*     110.45013870291*Math.sin( 2.17392657526 +      110.45013870291 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.02340967916*        7.3573644843*Math.sin( 2.01979283929 +         7.3573644843 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.06628914946*      220.6564599223*Math.sin( 0.75057317755 +       220.6564599223 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.06836881382*     206.42936592071*Math.sin( 4.14537914189 +      206.42936592071 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.26427074351*      426.8420083595*Math.sin( 0.12339999915 +       426.8420083595 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     0.79501390398*        0.2438174835*Math.sin( 4.76580713096 +         0.2438174835 * t);
        saturn_x_0+=-Math.pow(t,0.0)*     9.52312533591*      213.5429129215*Math.sin( 0.87401491487 +       213.5429129215 * t);

        var saturn_x_1 = 0.0;
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.02644990371*Math.cos( 5.33256382404 +       220.6564599223*t)-Math.pow(t,1.0)*     0.02644990371*      220.6564599223*Math.sin( 5.33256382404 +       220.6564599223 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.02728479923*Math.cos(  5.8447638902 +      206.42936592071*t)-Math.pow(t,1.0)*     0.02728479923*     206.42936592071*Math.sin(  5.8447638902 +      206.42936592071 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*      0.0308650168*Math.cos( 4.27493632359 +       426.8420083595*t)-Math.pow(t,1.0)*      0.0308650168*      426.8420083595*Math.sin( 4.27493632359 +       426.8420083595 * t);
        saturn_x_1+=Math.pow(t,0.0)*1.0*     0.09285877988*Math.cos( 0.61678993503 +         0.2438174835*t)-Math.pow(t,1.0)*     0.09285877988*        0.2438174835*Math.sin( 0.61678993503 +         0.2438174835 * t);

        return saturn_x_1+saturn_x_0;
    }

    @JvmStatic private fun saturn_y(t: Double): Double {
        var saturn_y_0 = 0.0;
        saturn_y_0+=-Math.pow(t,0.0)*     0.01098217124*      640.1411037975*Math.sin( 4.08641227912 +       640.1411037975 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.01141539711*     419.72846135871*Math.sin( 1.46265679616 +      419.72846135871 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.01250581159*     110.45013870291*Math.sin( 0.60313024847 +      110.45013870291 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.02340967916*        7.3573644843*Math.sin( 0.44899651249 +         7.3573644843 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.06628914946*      220.6564599223*Math.sin( 5.46296215793 +       220.6564599223 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.06836881382*     206.42936592071*Math.sin( 2.57458281509 +      206.42936592071 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.26427074351*      426.8420083595*Math.sin( 4.83578897954 +       426.8420083595 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     0.79501390398*        0.2438174835*Math.sin( 3.19501080417 +         0.2438174835 * t);
        saturn_y_0+=-Math.pow(t,0.0)*     9.52312533591*      213.5429129215*Math.sin( 5.58640389526 +       213.5429129215 * t);

        var saturn_y_1 = 0.0;
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.02644990371*Math.cos( 3.76176749725 +       220.6564599223*t)-Math.pow(t,1.0)*     0.02644990371*      220.6564599223*Math.sin( 3.76176749725 +       220.6564599223 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.02728479923*Math.cos( 4.27396756341 +      206.42936592071*t)-Math.pow(t,1.0)*     0.02728479923*     206.42936592071*Math.sin( 4.27396756341 +      206.42936592071 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*      0.0308650168*Math.cos( 2.70413999679 +       426.8420083595*t)-Math.pow(t,1.0)*      0.0308650168*      426.8420083595*Math.sin( 2.70413999679 +       426.8420083595 * t);
        saturn_y_1+=Math.pow(t,0.0)*1.0*     0.09285877988*Math.cos( 5.32917891541 +         0.2438174835*t)-Math.pow(t,1.0)*     0.09285877988*        0.2438174835*Math.sin( 5.32917891541 +         0.2438174835 * t);

        return saturn_y_1+saturn_y_0;
    }

    @JvmStatic private fun saturn_z(t: Double): Double {
        var saturn_z_0 = 0.0;
        saturn_z_0+=-Math.pow(t,0.0)*     0.01148283576*       426.598190876*Math.sin( 2.85128367469 +        426.598190876 * t);
        saturn_z_0+=-Math.pow(t,0.0)*     0.01214249867*                 0.0*Math.sin(           0.0 +                  0.0 * t);
        saturn_z_0+=-Math.pow(t,0.0)*      0.4135695094*       213.299095438*Math.sin( 3.60234142982 +        213.299095438 * t);

        var saturn_z_1 = 0.0;
        saturn_z_1+=Math.pow(t,0.0)*1.0*      0.0381030832*Math.cos( 5.33520316778 +        213.299095438*t)-Math.pow(t,1.0)*      0.0381030832*       213.299095438*Math.sin( 5.33520316778 +        213.299095438 * t);

        return saturn_z_1+saturn_z_0;
    }

    @JvmStatic private fun uranus_x(t: Double): Double {
        var uranus_x_0 = 0.0;
        uranus_x_0+=-Math.pow(t,0.0)*     0.01443286598*     148.32254190981*Math.sin( 2.65100655909 +      148.32254190981 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.01542809804*      224.5886131854*Math.sin( 4.12121005059 +       224.5886131854 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.06225592204*        1.7282901918*Math.sin( 5.14041718059 +         1.7282901918 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.14127113794*      76.50988875911*Math.sin( 4.39569319388 +       76.50988875911 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.14712072726*       73.5409433425*Math.sin( 3.42449547672 +        73.5409433425 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     0.44396480992*      149.8070146181*Math.sin( 1.65965632053 +       149.8070146181 * t);
        uranus_x_0+=-Math.pow(t,0.0)*     1.33267708718*        0.2438174835*Math.sin( 6.16089978558 +         0.2438174835 * t);
        uranus_x_0+=-Math.pow(t,0.0)*    19.16944479396*       75.0254160508*Math.sin( 5.48129363987 +        75.0254160508 * t);

        var uranus_x_1 = 0.0;
        uranus_x_1+=Math.pow(t,0.0)*1.0*      0.0222511375*Math.cos( 1.80968682072 +         0.2438174835*t)-Math.pow(t,1.0)*      0.0222511375*        0.2438174835*Math.sin( 1.80968682072 +         0.2438174835 * t);

        var uranus_x_2 = 0.0;
        uranus_x_2+=Math.pow(t,1.0)*2.0*      0.0101661895*Math.cos( 0.77056492682 +        75.0254160508*t)-Math.pow(t,2.0)*      0.0101661895*       75.0254160508*Math.sin( 0.77056492682 +        75.0254160508 * t);

        return uranus_x_2+uranus_x_1+uranus_x_0;
    }

    @JvmStatic private fun uranus_y(t: Double): Double {
        var uranus_y_0 = 0.0;
        uranus_y_0+=-Math.pow(t,0.0)*     0.01443286598*     148.32254190981*Math.sin( 1.08021023229 +      148.32254190981 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.01542809804*      224.5886131854*Math.sin( 2.55041372379 +       224.5886131854 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.06225592204*        1.7282901918*Math.sin( 3.56962085379 +         1.7282901918 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.14127113794*      76.50988875911*Math.sin( 2.82489686708 +       76.50988875911 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.14712072726*       73.5409433425*Math.sin( 1.85369914992 +        73.5409433425 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     0.44396480992*      149.8070146181*Math.sin( 0.08885999374 +       149.8070146181 * t);
        uranus_y_0+=-Math.pow(t,0.0)*     1.33267708718*        0.2438174835*Math.sin( 4.59010345878 +         0.2438174835 * t);
        uranus_y_0+=-Math.pow(t,0.0)*    19.16944479396*       75.0254160508*Math.sin( 3.91049731307 +        75.0254160508 * t);

        var uranus_y_1 = 0.0;
        uranus_y_1+=Math.pow(t,0.0)*1.0*      0.0222511375*Math.cos( 0.23889049392 +         0.2438174835*t)-Math.pow(t,1.0)*      0.0222511375*        0.2438174835*Math.sin( 0.23889049392 +         0.2438174835 * t);

        var uranus_y_2 = 0.0;
        uranus_y_2+=Math.pow(t,1.0)*2.0*      0.0101661895*Math.cos(  5.4829539072 +        75.0254160508*t)-Math.pow(t,2.0)*      0.0101661895*       75.0254160508*Math.sin(  5.4829539072 +        75.0254160508 * t);

        return uranus_y_2+uranus_y_1+uranus_y_0;
    }

    @JvmStatic private fun uranus_z(t: Double): Double {
        var uranus_z_0 = 0.0;
        uranus_z_0+=-Math.pow(t,0.0)*     0.01774318778*                 0.0*Math.sin( 3.14159265359 +                  0.0 * t);
        uranus_z_0+=-Math.pow(t,0.0)*     0.25878127698*       74.7815985673*Math.sin( 2.61861272578 +        74.7815985673 * t);

        var uranus_z_1 = 0.0;
        uranus_z_1+=Math.pow(t,0.0)*1.0*     0.03962262983*Math.cos( 4.12418900865 +        74.7815985673*t)-Math.pow(t,1.0)*     0.03962262983*       74.7815985673*Math.sin( 4.12418900865 +        74.7815985673 * t);

        return uranus_z_1+uranus_z_0;
    }

    @JvmStatic private fun venus_x(t: Double): Double {
        var venus_x_0 = 0.0;
        venus_x_0+=-Math.pow(t,0.0)*     0.72268045621*    10213.5293636945*Math.sin( 3.17614669179 +     10213.5293636945 * t);

        return venus_x_0;
    }

    @JvmStatic private fun venus_y(t: Double): Double {
        var venus_y_0 = 0.0;
        venus_y_0+=-Math.pow(t,0.0)*     0.72268045621*    10213.5293636945*Math.sin( 1.60535036499 +     10213.5293636945 * t);

        return venus_y_0;
    }

    @JvmStatic private fun venus_z(t: Double): Double {
        var venus_z_0 = 0.0;
        venus_z_0+=-Math.pow(t,0.0)*     0.04282990302*     10213.285546211*Math.sin( 0.26703856476 +      10213.285546211 * t);

        return venus_z_0;
    }

}
