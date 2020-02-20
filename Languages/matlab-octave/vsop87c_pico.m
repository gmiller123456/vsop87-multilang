%VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
%Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain



classdef vsop87c_pico
   methods(Static)
   function retval=getEarth(t)
      temp=[0 0 0];
      temp(0+1)=vsop87c_pico.earth_x(t);
      temp(1+1)=vsop87c_pico.earth_y(t);
      temp(2+1)=vsop87c_pico.earth_z(t);
      retval= temp;
   end

   function retval=getJupiter(t)
      temp=[0 0 0];
      temp(0+1)=vsop87c_pico.jupiter_x(t);
      temp(1+1)=vsop87c_pico.jupiter_y(t);
      temp(2+1)=vsop87c_pico.jupiter_z(t);
      retval= temp;
   end

   function retval=getMars(t)
      temp=[0 0 0];
      temp(0+1)=vsop87c_pico.mars_x(t);
      temp(1+1)=vsop87c_pico.mars_y(t);
      temp(2+1)=vsop87c_pico.mars_z(t);
      retval= temp;
   end

   function retval=getMercury(t)
      temp=[0 0 0];
      temp(0+1)=vsop87c_pico.mercury_x(t);
      temp(1+1)=vsop87c_pico.mercury_y(t);
      temp(2+1)=vsop87c_pico.mercury_z(t);
      retval= temp;
   end

   function retval=getNeptune(t)
      temp=[0 0 0];
      temp(0+1)=vsop87c_pico.neptune_x(t);
      temp(1+1)=vsop87c_pico.neptune_y(t);
      temp(2+1)=vsop87c_pico.neptune_z(t);
      retval= temp;
   end

   function retval=getSaturn(t)
      temp=[0 0 0];
      temp(0+1)=vsop87c_pico.saturn_x(t);
      temp(1+1)=vsop87c_pico.saturn_y(t);
      temp(2+1)=vsop87c_pico.saturn_z(t);
      retval= temp;
   end

   function retval=getUranus(t)
      temp=[0 0 0];
      temp(0+1)=vsop87c_pico.uranus_x(t);
      temp(1+1)=vsop87c_pico.uranus_y(t);
      temp(2+1)=vsop87c_pico.uranus_z(t);
      retval= temp;
   end

   function retval=getVenus(t)
      temp=[0 0 0];
      temp(0+1)=vsop87c_pico.venus_x(t);
      temp(1+1)=vsop87c_pico.venus_y(t);
      temp(2+1)=vsop87c_pico.venus_z(t);
      retval= temp;
   end

   function retval=earth_x(t)
      earth_x_0=0.0;
      earth_x_0+=     0.99986069925 * cos( 1.75347045757 +     6283.31966747490*t);
      earth_x_0+=     0.02506324281 * cos( 4.93819429098 +        0.24381748350*t);

      retval= earth_x_0;
   end

   function retval=earth_y(t)
      earth_y_0=0.0;
      earth_y_0+=     0.99986069925 * cos( 0.18267413078 +     6283.31966747490*t);
      earth_y_0+=     0.02506324281 * cos( 3.36739796418 +        0.24381748350*t);

      retval= earth_y_0;
   end

   function retval=earth_z(t)
      retval= 0;
   end

   function retval=jupiter_x(t)
      jupiter_x_0=0.0;
      jupiter_x_0+=     5.19591755961 * cos( 0.59954672200 +      529.93478257810*t);
      jupiter_x_0+=     0.37839498798 * cos( 3.39164799011 +        0.24381748350*t);
      jupiter_x_0+=     0.12593400247 * cos( 0.94916456487 +     1059.62574767270*t);
      jupiter_x_0+=     0.01504469362 * cos( 0.72934997067 +      522.82123557730*t);
      jupiter_x_0+=     0.01476016965 * cos( 3.61748058581 +      537.04832957890*t);

      jupiter_x_1=0.0;
      jupiter_x_1+=     0.01912556490 * cos( 4.23275123829 +        0.24381748350*t);
      jupiter_x_1=jupiter_x_1 * t;

      retval= jupiter_x_0+jupiter_x_1;
   end

   function retval=jupiter_y(t)
      jupiter_y_0=0.0;
      jupiter_y_0+=     5.19591755961 * cos( 5.31193570238 +      529.93478257810*t);
      jupiter_y_0+=     0.37839498798 * cos( 1.82085166331 +        0.24381748350*t);
      jupiter_y_0+=     0.12593400247 * cos( 5.66155354525 +     1059.62574767270*t);
      jupiter_y_0+=     0.01504469362 * cos( 5.44173895105 +      522.82123557730*t);
      jupiter_y_0+=     0.01476016965 * cos( 2.04668425902 +      537.04832957890*t);

      jupiter_y_1=0.0;
      jupiter_y_1+=     0.01912556490 * cos( 2.66195491149 +        0.24381748350*t);
      jupiter_y_1=jupiter_y_1 * t;

      retval= jupiter_y_0+jupiter_y_1;
   end

   function retval=jupiter_z(t)
      jupiter_z_0=0.0;
      jupiter_z_0+=     0.11823100489 * cos( 3.55844646343 +      529.69096509460*t);

      retval= jupiter_z_0;
   end

   function retval=mars_x(t)
      mars_x_0=0.0;
      mars_x_0+=     1.51664432758 * cos( 6.20347631684 +     3340.85624418330*t);
      mars_x_0+=     0.21337343470 * cos( 2.72390342700 +        0.24381748350*t);
      mars_x_0+=     0.07067734657 * cos( 0.25841679630 +     6681.46867088311*t);

      mars_x_1=0.0;
      mars_x_1+=     0.01668487239 * cos( 4.16976892466 +        0.24381748350*t);
      mars_x_1=mars_x_1 * t;

      retval= mars_x_0+mars_x_1;
   end

   function retval=mars_y(t)
      mars_y_0=0.0;
      mars_y_0+=     1.51664432758 * cos( 4.63267999004 +     3340.85624418330*t);
      mars_y_0+=     0.21337343470 * cos( 1.15310710021 +        0.24381748350*t);
      mars_y_0+=     0.07067734657 * cos( 4.97080577669 +     6681.46867088311*t);

      mars_y_1=0.0;
      mars_y_1+=     0.01668487239 * cos( 2.59897259786 +        0.24381748350*t);
      mars_y_1=mars_y_1 * t;

      retval= mars_y_0+mars_y_1;
   end

   function retval=mars_z(t)
      mars_z_0=0.0;
      mars_z_0+=     0.04901207220 * cos( 3.76712324286 +     3340.61242669980*t);

      retval= mars_z_0;
   end

   function retval=mercury_x(t)
      mercury_x_0=0.0;
      mercury_x_0+=     0.37749277893 * cos( 4.40259139579 +    26088.14695905770*t);
      mercury_x_0+=     0.11918926148 * cos( 4.49027758439 +        0.24381748350*t);
      mercury_x_0+=     0.03840153904 * cos( 1.17015646101 +    52176.05010063190*t);

      retval= mercury_x_0;
   end

   function retval=mercury_y(t)
      mercury_y_0=0.0;
      mercury_y_0+=     0.37749277893 * cos( 2.83179506899 +    26088.14695905770*t);
      mercury_y_0+=     0.11918926148 * cos( 2.91948125760 +        0.24381748350*t);
      mercury_y_0+=     0.03840153904 * cos( 5.88254544140 +    52176.05010063190*t);

      retval= mercury_y_0;
   end

   function retval=mercury_z(t)
      mercury_z_0=0.0;
      mercury_z_0+=     0.04607665326 * cos( 1.99295081967 +    26087.90314157420*t);

      retval= mercury_z_0;
   end

   function retval=neptune_x(t)
      neptune_x_0=0.0;
      neptune_x_0+=    30.05973100580 * cos( 5.31188633083 +       38.37685312130*t);
      neptune_x_0+=     0.40567587218 * cos( 3.98149970131 +        0.24381748350*t);
      neptune_x_0+=     0.13506026414 * cos( 3.50055820972 +       76.50988875911*t);
      neptune_x_0+=     0.15716341901 * cos( 0.11310077968 +       36.89238041300*t);
      neptune_x_0+=     0.14935642614 * cos( 1.08477702063 +       39.86132582961*t);
      neptune_x_0+=     0.02590782232 * cos( 1.99609768221 +        1.72829019180*t);
      neptune_x_0+=     0.01073890204 * cos( 5.38477153556 +       75.02541605080*t);

      neptune_x_2=0.0;
      neptune_x_2+=     0.01620002167 * cos( 0.60038473142 +       38.37685312130*t);
      neptune_x_2=neptune_x_2 * t * t;

      retval= neptune_x_0+neptune_x_2;
   end

   function retval=neptune_y(t)
      neptune_y_0=0.0;
      neptune_y_0+=    30.05973100580 * cos( 3.74109000403 +       38.37685312130*t);
      neptune_y_0+=     0.40567587218 * cos( 2.41070337452 +        0.24381748350*t);
      neptune_y_0+=     0.13506026414 * cos( 1.92976188293 +       76.50988875911*t);
      neptune_y_0+=     0.15716341901 * cos( 4.82548976006 +       36.89238041300*t);
      neptune_y_0+=     0.14935642614 * cos( 5.79716600101 +       39.86132582961*t);
      neptune_y_0+=     0.02590782232 * cos( 0.42530135542 +        1.72829019180*t);
      neptune_y_0+=     0.01073890204 * cos( 3.81397520876 +       75.02541605080*t);

      neptune_y_2=0.0;
      neptune_y_2+=     0.01620002167 * cos( 5.31277371181 +       38.37685312130*t);
      neptune_y_2=neptune_y_2 * t * t;

      retval= neptune_y_0+neptune_y_2;
   end

   function retval=neptune_z(t)
      neptune_z_0=0.0;
      neptune_z_0+=     0.92866054405 * cos( 1.44103930278 +       38.13303563780*t);
      neptune_z_0+=     0.01245978462 * cos( 0.00000000000 +        0.00000000000*t);

      neptune_z_1=0.0;
      neptune_z_1+=     0.06832633707 * cos( 3.80782656293 +       38.13303563780*t);
      neptune_z_1=neptune_z_1 * t;

      retval= neptune_z_0+neptune_z_1;
   end

   function retval=saturn_x(t)
      saturn_x_0=0.0;
      saturn_x_0+=     9.52312533591 * cos( 0.87401491487 +      213.54291292150*t);
      saturn_x_0+=     0.79501390398 * cos( 4.76580713096 +        0.24381748350*t);
      saturn_x_0+=     0.26427074351 * cos( 0.12339999915 +      426.84200835950*t);
      saturn_x_0+=     0.06836881382 * cos( 4.14537914189 +      206.42936592071*t);
      saturn_x_0+=     0.06628914946 * cos( 0.75057317755 +      220.65645992230*t);
      saturn_x_0+=     0.02340967916 * cos( 2.01979283929 +        7.35736448430*t);
      saturn_x_0+=     0.01250581159 * cos( 2.17392657526 +      110.45013870291*t);
      saturn_x_0+=     0.01141539711 * cos( 3.03345312296 +      419.72846135871*t);
      saturn_x_0+=     0.01098217124 * cos( 5.65720860592 +      640.14110379750*t);

      saturn_x_1=0.0;
      saturn_x_1+=     0.09285877988 * cos( 0.61678993503 +        0.24381748350*t);
      saturn_x_1+=     0.03086501680 * cos( 4.27493632359 +      426.84200835950*t);
      saturn_x_1+=     0.02728479923 * cos( 5.84476389020 +      206.42936592071*t);
      saturn_x_1+=     0.02644990371 * cos( 5.33256382404 +      220.65645992230*t);
      saturn_x_1=saturn_x_1 * t;

      retval= saturn_x_0+saturn_x_1;
   end

   function retval=saturn_y(t)
      saturn_y_0=0.0;
      saturn_y_0+=     9.52312533591 * cos( 5.58640389526 +      213.54291292150*t);
      saturn_y_0+=     0.79501390398 * cos( 3.19501080417 +        0.24381748350*t);
      saturn_y_0+=     0.26427074351 * cos( 4.83578897954 +      426.84200835950*t);
      saturn_y_0+=     0.06836881382 * cos( 2.57458281509 +      206.42936592071*t);
      saturn_y_0+=     0.06628914946 * cos( 5.46296215793 +      220.65645992230*t);
      saturn_y_0+=     0.02340967916 * cos( 0.44899651249 +        7.35736448430*t);
      saturn_y_0+=     0.01250581159 * cos( 0.60313024847 +      110.45013870291*t);
      saturn_y_0+=     0.01141539711 * cos( 1.46265679616 +      419.72846135871*t);
      saturn_y_0+=     0.01098217124 * cos( 4.08641227912 +      640.14110379750*t);

      saturn_y_1=0.0;
      saturn_y_1+=     0.09285877988 * cos( 5.32917891541 +        0.24381748350*t);
      saturn_y_1+=     0.03086501680 * cos( 2.70413999679 +      426.84200835950*t);
      saturn_y_1+=     0.02728479923 * cos( 4.27396756341 +      206.42936592071*t);
      saturn_y_1+=     0.02644990371 * cos( 3.76176749725 +      220.65645992230*t);
      saturn_y_1=saturn_y_1 * t;

      retval= saturn_y_0+saturn_y_1;
   end

   function retval=saturn_z(t)
      saturn_z_0=0.0;
      saturn_z_0+=     0.41356950940 * cos( 3.60234142982 +      213.29909543800*t);
      saturn_z_0+=     0.01148283576 * cos( 2.85128367469 +      426.59819087600*t);
      saturn_z_0+=     0.01214249867 * cos( 0.00000000000 +        0.00000000000*t);

      saturn_z_1=0.0;
      saturn_z_1+=     0.03810308320 * cos( 5.33520316778 +      213.29909543800*t);
      saturn_z_1=saturn_z_1 * t;

      retval= saturn_z_0+saturn_z_1;
   end

   function retval=uranus_x(t)
      uranus_x_0=0.0;
      uranus_x_0+=    19.16944479396 * cos( 5.48129363987 +       75.02541605080*t);
      uranus_x_0+=     1.33267708718 * cos( 6.16089978558 +        0.24381748350*t);
      uranus_x_0+=     0.44396480992 * cos( 1.65965632053 +      149.80701461810*t);
      uranus_x_0+=     0.14712072726 * cos( 3.42449547672 +       73.54094334250*t);
      uranus_x_0+=     0.14127113794 * cos( 4.39569319388 +       76.50988875911*t);
      uranus_x_0+=     0.06225592204 * cos( 5.14041718059 +        1.72829019180*t);
      uranus_x_0+=     0.01542809804 * cos( 4.12121005059 +      224.58861318540*t);
      uranus_x_0+=     0.01443286598 * cos( 2.65100655909 +      148.32254190981*t);

      uranus_x_1=0.0;
      uranus_x_1+=     0.02225113750 * cos( 1.80968682072 +        0.24381748350*t);
      uranus_x_1=uranus_x_1 * t;

      uranus_x_2=0.0;
      uranus_x_2+=     0.01016618950 * cos( 0.77056492682 +       75.02541605080*t);
      uranus_x_2=uranus_x_2 * t * t;

      retval= uranus_x_0+uranus_x_1+uranus_x_2;
   end

   function retval=uranus_y(t)
      uranus_y_0=0.0;
      uranus_y_0+=    19.16944479396 * cos( 3.91049731307 +       75.02541605080*t);
      uranus_y_0+=     1.33267708718 * cos( 4.59010345878 +        0.24381748350*t);
      uranus_y_0+=     0.44396480992 * cos( 0.08885999374 +      149.80701461810*t);
      uranus_y_0+=     0.14712072726 * cos( 1.85369914992 +       73.54094334250*t);
      uranus_y_0+=     0.14127113794 * cos( 2.82489686708 +       76.50988875911*t);
      uranus_y_0+=     0.06225592204 * cos( 3.56962085379 +        1.72829019180*t);
      uranus_y_0+=     0.01542809804 * cos( 2.55041372379 +      224.58861318540*t);
      uranus_y_0+=     0.01443286598 * cos( 1.08021023229 +      148.32254190981*t);

      uranus_y_1=0.0;
      uranus_y_1+=     0.02225113750 * cos( 0.23889049392 +        0.24381748350*t);
      uranus_y_1=uranus_y_1 * t;

      uranus_y_2=0.0;
      uranus_y_2+=     0.01016618950 * cos( 5.48295390720 +       75.02541605080*t);
      uranus_y_2=uranus_y_2 * t * t;

      retval= uranus_y_0+uranus_y_1+uranus_y_2;
   end

   function retval=uranus_z(t)
      uranus_z_0=0.0;
      uranus_z_0+=     0.25878127698 * cos( 2.61861272578 +       74.78159856730*t);
      uranus_z_0+=     0.01774318778 * cos( 3.14159265359 +        0.00000000000*t);

      uranus_z_1=0.0;
      uranus_z_1+=     0.03962262983 * cos( 4.12418900865 +       74.78159856730*t);
      uranus_z_1=uranus_z_1 * t;

      retval= uranus_z_0+uranus_z_1;
   end

   function retval=venus_x(t)
      venus_x_0=0.0;
      venus_x_0+=     0.72268045621 * cos( 3.17614669179 +    10213.52936369450*t);

      retval= venus_x_0;
   end

   function retval=venus_y(t)
      venus_y_0=0.0;
      venus_y_0+=     0.72268045621 * cos( 1.60535036499 +    10213.52936369450*t);

      retval= venus_y_0;
   end

   function retval=venus_z(t)
      venus_z_0=0.0;
      venus_z_0+=     0.04282990302 * cos( 0.26703856476 +    10213.28554621100*t);

      retval= venus_z_0;
   end

   end
end
