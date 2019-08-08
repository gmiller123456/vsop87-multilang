

class vsop87c_pico_velocities {
   static getEarth(t){
      const temp=new Array();
      temp.push(vsop87c_pico_velocities.earth_x(t) / 365250.0);
      temp.push(vsop87c_pico_velocities.earth_y(t) / 365250.0);
      temp.push(vsop87c_pico_velocities.earth_z(t) / 365250.0);
      return temp;
   }

   static getJupiter(t){
      const temp=new Array();
      temp.push(vsop87c_pico_velocities.jupiter_x(t) / 365250.0);
      temp.push(vsop87c_pico_velocities.jupiter_y(t) / 365250.0);
      temp.push(vsop87c_pico_velocities.jupiter_z(t) / 365250.0);
      return temp;
   }

   static getMars(t){
      const temp=new Array();
      temp.push(vsop87c_pico_velocities.mars_x(t) / 365250.0);
      temp.push(vsop87c_pico_velocities.mars_y(t) / 365250.0);
      temp.push(vsop87c_pico_velocities.mars_z(t) / 365250.0);
      return temp;
   }

   static getMercury(t){
      const temp=new Array();
      temp.push(vsop87c_pico_velocities.mercury_x(t) / 365250.0);
      temp.push(vsop87c_pico_velocities.mercury_y(t) / 365250.0);
      temp.push(vsop87c_pico_velocities.mercury_z(t) / 365250.0);
      return temp;
   }

   static getNeptune(t){
      const temp=new Array();
      temp.push(vsop87c_pico_velocities.neptune_x(t) / 365250.0);
      temp.push(vsop87c_pico_velocities.neptune_y(t) / 365250.0);
      temp.push(vsop87c_pico_velocities.neptune_z(t) / 365250.0);
      return temp;
   }

   static getSaturn(t){
      const temp=new Array();
      temp.push(vsop87c_pico_velocities.saturn_x(t) / 365250.0);
      temp.push(vsop87c_pico_velocities.saturn_y(t) / 365250.0);
      temp.push(vsop87c_pico_velocities.saturn_z(t) / 365250.0);
      return temp;
   }

   static getUranus(t){
      const temp=new Array();
      temp.push(vsop87c_pico_velocities.uranus_x(t) / 365250.0);
      temp.push(vsop87c_pico_velocities.uranus_y(t) / 365250.0);
      temp.push(vsop87c_pico_velocities.uranus_z(t) / 365250.0);
      return temp;
   }

   static getVenus(t){
      const temp=new Array();
      temp.push(vsop87c_pico_velocities.venus_x(t) / 365250.0);
      temp.push(vsop87c_pico_velocities.venus_y(t) / 365250.0);
      temp.push(vsop87c_pico_velocities.venus_z(t) / 365250.0);
      return temp;
   }

   static earth_x(t){
      let exp=0.0;
      let earth_x_0=0.0;
      exp=0;
      earth_x_0+=-Math.pow(t,exp)*     0.99986069925*    6283.31966747490*Math.sin( 1.75347045757 +     6283.31966747490*t);
      earth_x_0+=-Math.pow(t,exp)*     0.02506324281*       0.24381748350*Math.sin( 4.93819429098 +        0.24381748350*t);

      return earth_x_0;
   }

   static earth_y(t){
      let exp=0.0;
      let earth_y_0=0.0;
      exp=0;
      earth_y_0+=-Math.pow(t,exp)*     0.99986069925*    6283.31966747490*Math.sin( 0.18267413078 +     6283.31966747490*t);
      earth_y_0+=-Math.pow(t,exp)*     0.02506324281*       0.24381748350*Math.sin( 3.36739796418 +        0.24381748350*t);

      return earth_y_0;
   }

   static earth_z(t){
      let exp=0.0;
      return 0;
   }

   static jupiter_x(t){
      let exp=0.0;
      let jupiter_x_0=0.0;
      exp=0;
      jupiter_x_0+=-Math.pow(t,exp)*     5.19591755961*     529.93478257810*Math.sin( 0.59954672200 +      529.93478257810*t);
      jupiter_x_0+=-Math.pow(t,exp)*     0.37839498798*       0.24381748350*Math.sin( 3.39164799011 +        0.24381748350*t);
      jupiter_x_0+=-Math.pow(t,exp)*     0.12593400247*    1059.62574767270*Math.sin( 0.94916456487 +     1059.62574767270*t);
      jupiter_x_0+=-Math.pow(t,exp)*     0.01504469362*     522.82123557730*Math.sin( 0.72934997067 +      522.82123557730*t);
      jupiter_x_0+=-Math.pow(t,exp)*     0.01476016965*     537.04832957890*Math.sin( 3.61748058581 +      537.04832957890*t);

      let jupiter_x_1=0.0;
      exp=1;
      jupiter_x_1+=Math.pow(t,exp-1)*exp*     0.01912556490*Math.cos( 4.23275123829 +        0.24381748350*t)-Math.pow(t,exp)*     0.01912556490*       0.24381748350*Math.sin( 4.23275123829 +        0.24381748350*t);

      return jupiter_x_0+jupiter_x_1;
   }

   static jupiter_y(t){
      let exp=0.0;
      let jupiter_y_0=0.0;
      exp=0;
      jupiter_y_0+=-Math.pow(t,exp)*     5.19591755961*     529.93478257810*Math.sin( 5.31193570238 +      529.93478257810*t);
      jupiter_y_0+=-Math.pow(t,exp)*     0.37839498798*       0.24381748350*Math.sin( 1.82085166331 +        0.24381748350*t);
      jupiter_y_0+=-Math.pow(t,exp)*     0.12593400247*    1059.62574767270*Math.sin( 5.66155354525 +     1059.62574767270*t);
      jupiter_y_0+=-Math.pow(t,exp)*     0.01504469362*     522.82123557730*Math.sin( 5.44173895105 +      522.82123557730*t);
      jupiter_y_0+=-Math.pow(t,exp)*     0.01476016965*     537.04832957890*Math.sin( 2.04668425902 +      537.04832957890*t);

      let jupiter_y_1=0.0;
      exp=1;
      jupiter_y_1+=Math.pow(t,exp-1)*exp*     0.01912556490*Math.cos( 2.66195491149 +        0.24381748350*t)-Math.pow(t,exp)*     0.01912556490*       0.24381748350*Math.sin( 2.66195491149 +        0.24381748350*t);

      return jupiter_y_0+jupiter_y_1;
   }

   static jupiter_z(t){
      let exp=0.0;
      let jupiter_z_0=0.0;
      exp=0;
      jupiter_z_0+=-Math.pow(t,exp)*     0.11823100489*     529.69096509460*Math.sin( 3.55844646343 +      529.69096509460*t);

      return jupiter_z_0;
   }

   static mars_x(t){
      let exp=0.0;
      let mars_x_0=0.0;
      exp=0;
      mars_x_0+=-Math.pow(t,exp)*     1.51664432758*    3340.85624418330*Math.sin( 6.20347631684 +     3340.85624418330*t);
      mars_x_0+=-Math.pow(t,exp)*     0.21337343470*       0.24381748350*Math.sin( 2.72390342700 +        0.24381748350*t);
      mars_x_0+=-Math.pow(t,exp)*     0.07067734657*    6681.46867088311*Math.sin( 0.25841679630 +     6681.46867088311*t);

      let mars_x_1=0.0;
      exp=1;
      mars_x_1+=Math.pow(t,exp-1)*exp*     0.01668487239*Math.cos( 4.16976892466 +        0.24381748350*t)-Math.pow(t,exp)*     0.01668487239*       0.24381748350*Math.sin( 4.16976892466 +        0.24381748350*t);

      return mars_x_0+mars_x_1;
   }

   static mars_y(t){
      let exp=0.0;
      let mars_y_0=0.0;
      exp=0;
      mars_y_0+=-Math.pow(t,exp)*     1.51664432758*    3340.85624418330*Math.sin( 4.63267999004 +     3340.85624418330*t);
      mars_y_0+=-Math.pow(t,exp)*     0.21337343470*       0.24381748350*Math.sin( 1.15310710021 +        0.24381748350*t);
      mars_y_0+=-Math.pow(t,exp)*     0.07067734657*    6681.46867088311*Math.sin( 4.97080577669 +     6681.46867088311*t);

      let mars_y_1=0.0;
      exp=1;
      mars_y_1+=Math.pow(t,exp-1)*exp*     0.01668487239*Math.cos( 2.59897259786 +        0.24381748350*t)-Math.pow(t,exp)*     0.01668487239*       0.24381748350*Math.sin( 2.59897259786 +        0.24381748350*t);

      return mars_y_0+mars_y_1;
   }

   static mars_z(t){
      let exp=0.0;
      let mars_z_0=0.0;
      exp=0;
      mars_z_0+=-Math.pow(t,exp)*     0.04901207220*    3340.61242669980*Math.sin( 3.76712324286 +     3340.61242669980*t);

      return mars_z_0;
   }

   static mercury_x(t){
      let exp=0.0;
      let mercury_x_0=0.0;
      exp=0;
      mercury_x_0+=-Math.pow(t,exp)*     0.37749277893*   26088.14695905770*Math.sin( 4.40259139579 +    26088.14695905770*t);
      mercury_x_0+=-Math.pow(t,exp)*     0.11918926148*       0.24381748350*Math.sin( 4.49027758439 +        0.24381748350*t);
      mercury_x_0+=-Math.pow(t,exp)*     0.03840153904*   52176.05010063190*Math.sin( 1.17015646101 +    52176.05010063190*t);

      return mercury_x_0;
   }

   static mercury_y(t){
      let exp=0.0;
      let mercury_y_0=0.0;
      exp=0;
      mercury_y_0+=-Math.pow(t,exp)*     0.37749277893*   26088.14695905770*Math.sin( 2.83179506899 +    26088.14695905770*t);
      mercury_y_0+=-Math.pow(t,exp)*     0.11918926148*       0.24381748350*Math.sin( 2.91948125760 +        0.24381748350*t);
      mercury_y_0+=-Math.pow(t,exp)*     0.03840153904*   52176.05010063190*Math.sin( 5.88254544140 +    52176.05010063190*t);

      return mercury_y_0;
   }

   static mercury_z(t){
      let exp=0.0;
      let mercury_z_0=0.0;
      exp=0;
      mercury_z_0+=-Math.pow(t,exp)*     0.04607665326*   26087.90314157420*Math.sin( 1.99295081967 +    26087.90314157420*t);

      return mercury_z_0;
   }

   static neptune_x(t){
      let exp=0.0;
      let neptune_x_0=0.0;
      exp=0;
      neptune_x_0+=-Math.pow(t,exp)*    30.05973100580*      38.37685312130*Math.sin( 5.31188633083 +       38.37685312130*t);
      neptune_x_0+=-Math.pow(t,exp)*     0.40567587218*       0.24381748350*Math.sin( 3.98149970131 +        0.24381748350*t);
      neptune_x_0+=-Math.pow(t,exp)*     0.13506026414*      76.50988875911*Math.sin( 3.50055820972 +       76.50988875911*t);
      neptune_x_0+=-Math.pow(t,exp)*     0.15716341901*      36.89238041300*Math.sin( 0.11310077968 +       36.89238041300*t);
      neptune_x_0+=-Math.pow(t,exp)*     0.14935642614*      39.86132582961*Math.sin( 1.08477702063 +       39.86132582961*t);
      neptune_x_0+=-Math.pow(t,exp)*     0.02590782232*       1.72829019180*Math.sin( 1.99609768221 +        1.72829019180*t);
      neptune_x_0+=-Math.pow(t,exp)*     0.01073890204*      75.02541605080*Math.sin( 5.38477153556 +       75.02541605080*t);

      let neptune_x_2=0.0;
      exp=2;
      neptune_x_2+=Math.pow(t,exp-1)*exp*     0.01620002167*Math.cos( 0.60038473142 +       38.37685312130*t)-Math.pow(t,exp)*     0.01620002167*      38.37685312130*Math.sin( 0.60038473142 +       38.37685312130*t);

      return neptune_x_0+neptune_x_2;
   }

   static neptune_y(t){
      let exp=0.0;
      let neptune_y_0=0.0;
      exp=0;
      neptune_y_0+=-Math.pow(t,exp)*    30.05973100580*      38.37685312130*Math.sin( 3.74109000403 +       38.37685312130*t);
      neptune_y_0+=-Math.pow(t,exp)*     0.40567587218*       0.24381748350*Math.sin( 2.41070337452 +        0.24381748350*t);
      neptune_y_0+=-Math.pow(t,exp)*     0.13506026414*      76.50988875911*Math.sin( 1.92976188293 +       76.50988875911*t);
      neptune_y_0+=-Math.pow(t,exp)*     0.15716341901*      36.89238041300*Math.sin( 4.82548976006 +       36.89238041300*t);
      neptune_y_0+=-Math.pow(t,exp)*     0.14935642614*      39.86132582961*Math.sin( 5.79716600101 +       39.86132582961*t);
      neptune_y_0+=-Math.pow(t,exp)*     0.02590782232*       1.72829019180*Math.sin( 0.42530135542 +        1.72829019180*t);
      neptune_y_0+=-Math.pow(t,exp)*     0.01073890204*      75.02541605080*Math.sin( 3.81397520876 +       75.02541605080*t);

      let neptune_y_2=0.0;
      exp=2;
      neptune_y_2+=Math.pow(t,exp-1)*exp*     0.01620002167*Math.cos( 5.31277371181 +       38.37685312130*t)-Math.pow(t,exp)*     0.01620002167*      38.37685312130*Math.sin( 5.31277371181 +       38.37685312130*t);

      return neptune_y_0+neptune_y_2;
   }

   static neptune_z(t){
      let exp=0.0;
      let neptune_z_0=0.0;
      exp=0;
      neptune_z_0+=-Math.pow(t,exp)*     0.92866054405*      38.13303563780*Math.sin( 1.44103930278 +       38.13303563780*t);
      neptune_z_0+=-Math.pow(t,exp)*     0.01245978462*       0.00000000000*Math.sin( 0.00000000000 +        0.00000000000*t);

      let neptune_z_1=0.0;
      exp=1;
      neptune_z_1+=Math.pow(t,exp-1)*exp*     0.06832633707*Math.cos( 3.80782656293 +       38.13303563780*t)-Math.pow(t,exp)*     0.06832633707*      38.13303563780*Math.sin( 3.80782656293 +       38.13303563780*t);

      return neptune_z_0+neptune_z_1;
   }

   static saturn_x(t){
      let exp=0.0;
      let saturn_x_0=0.0;
      exp=0;
      saturn_x_0+=-Math.pow(t,exp)*     9.52312533591*     213.54291292150*Math.sin( 0.87401491487 +      213.54291292150*t);
      saturn_x_0+=-Math.pow(t,exp)*     0.79501390398*       0.24381748350*Math.sin( 4.76580713096 +        0.24381748350*t);
      saturn_x_0+=-Math.pow(t,exp)*     0.26427074351*     426.84200835950*Math.sin( 0.12339999915 +      426.84200835950*t);
      saturn_x_0+=-Math.pow(t,exp)*     0.06836881382*     206.42936592071*Math.sin( 4.14537914189 +      206.42936592071*t);
      saturn_x_0+=-Math.pow(t,exp)*     0.06628914946*     220.65645992230*Math.sin( 0.75057317755 +      220.65645992230*t);
      saturn_x_0+=-Math.pow(t,exp)*     0.02340967916*       7.35736448430*Math.sin( 2.01979283929 +        7.35736448430*t);
      saturn_x_0+=-Math.pow(t,exp)*     0.01250581159*     110.45013870291*Math.sin( 2.17392657526 +      110.45013870291*t);
      saturn_x_0+=-Math.pow(t,exp)*     0.01141539711*     419.72846135871*Math.sin( 3.03345312296 +      419.72846135871*t);
      saturn_x_0+=-Math.pow(t,exp)*     0.01098217124*     640.14110379750*Math.sin( 5.65720860592 +      640.14110379750*t);

      let saturn_x_1=0.0;
      exp=1;
      saturn_x_1+=Math.pow(t,exp-1)*exp*     0.09285877988*Math.cos( 0.61678993503 +        0.24381748350*t)-Math.pow(t,exp)*     0.09285877988*       0.24381748350*Math.sin( 0.61678993503 +        0.24381748350*t);
      saturn_x_1+=Math.pow(t,exp-1)*exp*     0.03086501680*Math.cos( 4.27493632359 +      426.84200835950*t)-Math.pow(t,exp)*     0.03086501680*     426.84200835950*Math.sin( 4.27493632359 +      426.84200835950*t);
      saturn_x_1+=Math.pow(t,exp-1)*exp*     0.02728479923*Math.cos( 5.84476389020 +      206.42936592071*t)-Math.pow(t,exp)*     0.02728479923*     206.42936592071*Math.sin( 5.84476389020 +      206.42936592071*t);
      saturn_x_1+=Math.pow(t,exp-1)*exp*     0.02644990371*Math.cos( 5.33256382404 +      220.65645992230*t)-Math.pow(t,exp)*     0.02644990371*     220.65645992230*Math.sin( 5.33256382404 +      220.65645992230*t);

      return saturn_x_0+saturn_x_1;
   }

   static saturn_y(t){
      let exp=0.0;
      let saturn_y_0=0.0;
      exp=0;
      saturn_y_0+=-Math.pow(t,exp)*     9.52312533591*     213.54291292150*Math.sin( 5.58640389526 +      213.54291292150*t);
      saturn_y_0+=-Math.pow(t,exp)*     0.79501390398*       0.24381748350*Math.sin( 3.19501080417 +        0.24381748350*t);
      saturn_y_0+=-Math.pow(t,exp)*     0.26427074351*     426.84200835950*Math.sin( 4.83578897954 +      426.84200835950*t);
      saturn_y_0+=-Math.pow(t,exp)*     0.06836881382*     206.42936592071*Math.sin( 2.57458281509 +      206.42936592071*t);
      saturn_y_0+=-Math.pow(t,exp)*     0.06628914946*     220.65645992230*Math.sin( 5.46296215793 +      220.65645992230*t);
      saturn_y_0+=-Math.pow(t,exp)*     0.02340967916*       7.35736448430*Math.sin( 0.44899651249 +        7.35736448430*t);
      saturn_y_0+=-Math.pow(t,exp)*     0.01250581159*     110.45013870291*Math.sin( 0.60313024847 +      110.45013870291*t);
      saturn_y_0+=-Math.pow(t,exp)*     0.01141539711*     419.72846135871*Math.sin( 1.46265679616 +      419.72846135871*t);
      saturn_y_0+=-Math.pow(t,exp)*     0.01098217124*     640.14110379750*Math.sin( 4.08641227912 +      640.14110379750*t);

      let saturn_y_1=0.0;
      exp=1;
      saturn_y_1+=Math.pow(t,exp-1)*exp*     0.09285877988*Math.cos( 5.32917891541 +        0.24381748350*t)-Math.pow(t,exp)*     0.09285877988*       0.24381748350*Math.sin( 5.32917891541 +        0.24381748350*t);
      saturn_y_1+=Math.pow(t,exp-1)*exp*     0.03086501680*Math.cos( 2.70413999679 +      426.84200835950*t)-Math.pow(t,exp)*     0.03086501680*     426.84200835950*Math.sin( 2.70413999679 +      426.84200835950*t);
      saturn_y_1+=Math.pow(t,exp-1)*exp*     0.02728479923*Math.cos( 4.27396756341 +      206.42936592071*t)-Math.pow(t,exp)*     0.02728479923*     206.42936592071*Math.sin( 4.27396756341 +      206.42936592071*t);
      saturn_y_1+=Math.pow(t,exp-1)*exp*     0.02644990371*Math.cos( 3.76176749725 +      220.65645992230*t)-Math.pow(t,exp)*     0.02644990371*     220.65645992230*Math.sin( 3.76176749725 +      220.65645992230*t);

      return saturn_y_0+saturn_y_1;
   }

   static saturn_z(t){
      let exp=0.0;
      let saturn_z_0=0.0;
      exp=0;
      saturn_z_0+=-Math.pow(t,exp)*     0.41356950940*     213.29909543800*Math.sin( 3.60234142982 +      213.29909543800*t);
      saturn_z_0+=-Math.pow(t,exp)*     0.01148283576*     426.59819087600*Math.sin( 2.85128367469 +      426.59819087600*t);
      saturn_z_0+=-Math.pow(t,exp)*     0.01214249867*       0.00000000000*Math.sin( 0.00000000000 +        0.00000000000*t);

      let saturn_z_1=0.0;
      exp=1;
      saturn_z_1+=Math.pow(t,exp-1)*exp*     0.03810308320*Math.cos( 5.33520316778 +      213.29909543800*t)-Math.pow(t,exp)*     0.03810308320*     213.29909543800*Math.sin( 5.33520316778 +      213.29909543800*t);

      return saturn_z_0+saturn_z_1;
   }

   static uranus_x(t){
      let exp=0.0;
      let uranus_x_0=0.0;
      exp=0;
      uranus_x_0+=-Math.pow(t,exp)*    19.16944479396*      75.02541605080*Math.sin( 5.48129363987 +       75.02541605080*t);
      uranus_x_0+=-Math.pow(t,exp)*     1.33267708718*       0.24381748350*Math.sin( 6.16089978558 +        0.24381748350*t);
      uranus_x_0+=-Math.pow(t,exp)*     0.44396480992*     149.80701461810*Math.sin( 1.65965632053 +      149.80701461810*t);
      uranus_x_0+=-Math.pow(t,exp)*     0.14712072726*      73.54094334250*Math.sin( 3.42449547672 +       73.54094334250*t);
      uranus_x_0+=-Math.pow(t,exp)*     0.14127113794*      76.50988875911*Math.sin( 4.39569319388 +       76.50988875911*t);
      uranus_x_0+=-Math.pow(t,exp)*     0.06225592204*       1.72829019180*Math.sin( 5.14041718059 +        1.72829019180*t);
      uranus_x_0+=-Math.pow(t,exp)*     0.01542809804*     224.58861318540*Math.sin( 4.12121005059 +      224.58861318540*t);
      uranus_x_0+=-Math.pow(t,exp)*     0.01443286598*     148.32254190981*Math.sin( 2.65100655909 +      148.32254190981*t);

      let uranus_x_1=0.0;
      exp=1;
      uranus_x_1+=Math.pow(t,exp-1)*exp*     0.02225113750*Math.cos( 1.80968682072 +        0.24381748350*t)-Math.pow(t,exp)*     0.02225113750*       0.24381748350*Math.sin( 1.80968682072 +        0.24381748350*t);

      let uranus_x_2=0.0;
      exp=2;
      uranus_x_2+=Math.pow(t,exp-1)*exp*     0.01016618950*Math.cos( 0.77056492682 +       75.02541605080*t)-Math.pow(t,exp)*     0.01016618950*      75.02541605080*Math.sin( 0.77056492682 +       75.02541605080*t);

      return uranus_x_0+uranus_x_1+uranus_x_2;
   }

   static uranus_y(t){
      let exp=0.0;
      let uranus_y_0=0.0;
      exp=0;
      uranus_y_0+=-Math.pow(t,exp)*    19.16944479396*      75.02541605080*Math.sin( 3.91049731307 +       75.02541605080*t);
      uranus_y_0+=-Math.pow(t,exp)*     1.33267708718*       0.24381748350*Math.sin( 4.59010345878 +        0.24381748350*t);
      uranus_y_0+=-Math.pow(t,exp)*     0.44396480992*     149.80701461810*Math.sin( 0.08885999374 +      149.80701461810*t);
      uranus_y_0+=-Math.pow(t,exp)*     0.14712072726*      73.54094334250*Math.sin( 1.85369914992 +       73.54094334250*t);
      uranus_y_0+=-Math.pow(t,exp)*     0.14127113794*      76.50988875911*Math.sin( 2.82489686708 +       76.50988875911*t);
      uranus_y_0+=-Math.pow(t,exp)*     0.06225592204*       1.72829019180*Math.sin( 3.56962085379 +        1.72829019180*t);
      uranus_y_0+=-Math.pow(t,exp)*     0.01542809804*     224.58861318540*Math.sin( 2.55041372379 +      224.58861318540*t);
      uranus_y_0+=-Math.pow(t,exp)*     0.01443286598*     148.32254190981*Math.sin( 1.08021023229 +      148.32254190981*t);

      let uranus_y_1=0.0;
      exp=1;
      uranus_y_1+=Math.pow(t,exp-1)*exp*     0.02225113750*Math.cos( 0.23889049392 +        0.24381748350*t)-Math.pow(t,exp)*     0.02225113750*       0.24381748350*Math.sin( 0.23889049392 +        0.24381748350*t);

      let uranus_y_2=0.0;
      exp=2;
      uranus_y_2+=Math.pow(t,exp-1)*exp*     0.01016618950*Math.cos( 5.48295390720 +       75.02541605080*t)-Math.pow(t,exp)*     0.01016618950*      75.02541605080*Math.sin( 5.48295390720 +       75.02541605080*t);

      return uranus_y_0+uranus_y_1+uranus_y_2;
   }

   static uranus_z(t){
      let exp=0.0;
      let uranus_z_0=0.0;
      exp=0;
      uranus_z_0+=-Math.pow(t,exp)*     0.25878127698*      74.78159856730*Math.sin( 2.61861272578 +       74.78159856730*t);
      uranus_z_0+=-Math.pow(t,exp)*     0.01774318778*       0.00000000000*Math.sin( 3.14159265359 +        0.00000000000*t);

      let uranus_z_1=0.0;
      exp=1;
      uranus_z_1+=Math.pow(t,exp-1)*exp*     0.03962262983*Math.cos( 4.12418900865 +       74.78159856730*t)-Math.pow(t,exp)*     0.03962262983*      74.78159856730*Math.sin( 4.12418900865 +       74.78159856730*t);

      return uranus_z_0+uranus_z_1;
   }

   static venus_x(t){
      let exp=0.0;
      let venus_x_0=0.0;
      exp=0;
      venus_x_0+=-Math.pow(t,exp)*     0.72268045621*   10213.52936369450*Math.sin( 3.17614669179 +    10213.52936369450*t);

      return venus_x_0;
   }

   static venus_y(t){
      let exp=0.0;
      let venus_y_0=0.0;
      exp=0;
      venus_y_0+=-Math.pow(t,exp)*     0.72268045621*   10213.52936369450*Math.sin( 1.60535036499 +    10213.52936369450*t);

      return venus_y_0;
   }

   static venus_z(t){
      let exp=0.0;
      let venus_z_0=0.0;
      exp=0;
      venus_z_0+=-Math.pow(t,exp)*     0.04282990302*   10213.28554621100*Math.sin( 0.26703856476 +    10213.28554621100*t);

      return venus_z_0;
   }

}
