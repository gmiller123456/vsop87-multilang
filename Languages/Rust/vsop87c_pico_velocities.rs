//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

pub fn get_mercury(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=mercury_x(t) / 365250.0;
   temp[1]=mercury_y(t) / 365250.0;
   temp[2]=mercury_z(t) / 365250.0;

   return temp;
}

pub fn get_venus(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=venus_x(t) / 365250.0;
   temp[1]=venus_y(t) / 365250.0;
   temp[2]=venus_z(t) / 365250.0;

   return temp;
}

pub fn get_earth(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=earth_x(t) / 365250.0;
   temp[1]=earth_y(t) / 365250.0;
   temp[2]=earth_z(t) / 365250.0;

   return temp;
}

pub fn get_mars(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=mars_x(t) / 365250.0;
   temp[1]=mars_y(t) / 365250.0;
   temp[2]=mars_z(t) / 365250.0;

   return temp;
}

pub fn get_jupiter(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=jupiter_x(t) / 365250.0;
   temp[1]=jupiter_y(t) / 365250.0;
   temp[2]=jupiter_z(t) / 365250.0;

   return temp;
}

pub fn get_saturn(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=saturn_x(t) / 365250.0;
   temp[1]=saturn_y(t) / 365250.0;
   temp[2]=saturn_z(t) / 365250.0;

   return temp;
}

pub fn get_uranus(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=uranus_x(t) / 365250.0;
   temp[1]=uranus_y(t) / 365250.0;
   temp[2]=uranus_z(t) / 365250.0;

   return temp;
}

pub fn get_neptune(t: f64) -> [f64;3]{
   let mut temp: [f64;3]=[0f64;3];
   temp[0]=neptune_x(t) / 365250.0;
   temp[1]=neptune_y(t) / 365250.0;
   temp[2]=neptune_z(t) / 365250.0;

   return temp;
}

fn venus_z(t: f64) -> f64 {
   let mut venus_z_0: f64 = 0.0;

   venus_z_0 += -1f64 *      0.04282990302 *    10213.28554621100 * ( 0.26703856476 +    10213.28554621100*t).sin();
   return venus_z_0;
}

fn venus_y(t: f64) -> f64 {
   let mut venus_y_0: f64 = 0.0;

   venus_y_0 += -1f64 *      0.72268045621 *    10213.52936369450 * ( 1.60535036499 +    10213.52936369450*t).sin();
   return venus_y_0;
}

fn venus_x(t: f64) -> f64 {
   let mut venus_x_0: f64 = 0.0;

   venus_x_0 += -1f64 *      0.72268045621 *    10213.52936369450 * ( 3.17614669179 +    10213.52936369450*t).sin();
   return venus_x_0;
}

fn uranus_z(t: f64) -> f64 {
   let mut uranus_z_1: f64 = 0.0;

   uranus_z_1 += ((t.powf(0f64))) * 1f64 *      0.03962262983 * ( 4.12418900865 +       74.78159856730*t).cos() - ((t.powf(1f64))) *      0.03962262983 *       74.78159856730 * ( 4.12418900865 +       74.78159856730*t).sin();

   let mut uranus_z_0: f64 = 0.0;

   uranus_z_0 += -1f64 *      0.01774318778 *        0.00000000000 * ( 3.14159265359 +        0.00000000000*t).sin();
   uranus_z_0 += -1f64 *      0.25878127698 *       74.78159856730 * ( 2.61861272578 +       74.78159856730*t).sin();
   return uranus_z_1+uranus_z_0;
}

fn uranus_y(t: f64) -> f64 {
   let mut uranus_y_2: f64 = 0.0;

   uranus_y_2 += ((t.powf(1f64))) * 2f64 *      0.01016618950 * ( 5.48295390720 +       75.02541605080*t).cos() - ((t.powf(2f64))) *      0.01016618950 *       75.02541605080 * ( 5.48295390720 +       75.02541605080*t).sin();

   let mut uranus_y_1: f64 = 0.0;

   uranus_y_1 += ((t.powf(0f64))) * 1f64 *      0.02225113750 * ( 0.23889049392 +        0.24381748350*t).cos() - ((t.powf(1f64))) *      0.02225113750 *        0.24381748350 * ( 0.23889049392 +        0.24381748350*t).sin();

   let mut uranus_y_0: f64 = 0.0;

   uranus_y_0 += -1f64 *      0.01443286598 *      148.32254190981 * ( 1.08021023229 +      148.32254190981*t).sin();
   uranus_y_0 += -1f64 *      0.01542809804 *      224.58861318540 * ( 2.55041372379 +      224.58861318540*t).sin();
   uranus_y_0 += -1f64 *      0.06225592204 *        1.72829019180 * ( 3.56962085379 +        1.72829019180*t).sin();
   uranus_y_0 += -1f64 *      0.14127113794 *       76.50988875911 * ( 2.82489686708 +       76.50988875911*t).sin();
   uranus_y_0 += -1f64 *      0.14712072726 *       73.54094334250 * ( 1.85369914992 +       73.54094334250*t).sin();
   uranus_y_0 += -1f64 *      0.44396480992 *      149.80701461810 * ( 0.08885999374 +      149.80701461810*t).sin();
   uranus_y_0 += -1f64 *      1.33267708718 *        0.24381748350 * ( 4.59010345878 +        0.24381748350*t).sin();
   uranus_y_0 += -1f64 *     19.16944479396 *       75.02541605080 * ( 3.91049731307 +       75.02541605080*t).sin();
   return uranus_y_2+uranus_y_1+uranus_y_0;
}

fn uranus_x(t: f64) -> f64 {
   let mut uranus_x_2: f64 = 0.0;

   uranus_x_2 += ((t.powf(1f64))) * 2f64 *      0.01016618950 * ( 0.77056492682 +       75.02541605080*t).cos() - ((t.powf(2f64))) *      0.01016618950 *       75.02541605080 * ( 0.77056492682 +       75.02541605080*t).sin();

   let mut uranus_x_1: f64 = 0.0;

   uranus_x_1 += ((t.powf(0f64))) * 1f64 *      0.02225113750 * ( 1.80968682072 +        0.24381748350*t).cos() - ((t.powf(1f64))) *      0.02225113750 *        0.24381748350 * ( 1.80968682072 +        0.24381748350*t).sin();

   let mut uranus_x_0: f64 = 0.0;

   uranus_x_0 += -1f64 *      0.01443286598 *      148.32254190981 * ( 2.65100655909 +      148.32254190981*t).sin();
   uranus_x_0 += -1f64 *      0.01542809804 *      224.58861318540 * ( 4.12121005059 +      224.58861318540*t).sin();
   uranus_x_0 += -1f64 *      0.06225592204 *        1.72829019180 * ( 5.14041718059 +        1.72829019180*t).sin();
   uranus_x_0 += -1f64 *      0.14127113794 *       76.50988875911 * ( 4.39569319388 +       76.50988875911*t).sin();
   uranus_x_0 += -1f64 *      0.14712072726 *       73.54094334250 * ( 3.42449547672 +       73.54094334250*t).sin();
   uranus_x_0 += -1f64 *      0.44396480992 *      149.80701461810 * ( 1.65965632053 +      149.80701461810*t).sin();
   uranus_x_0 += -1f64 *      1.33267708718 *        0.24381748350 * ( 6.16089978558 +        0.24381748350*t).sin();
   uranus_x_0 += -1f64 *     19.16944479396 *       75.02541605080 * ( 5.48129363987 +       75.02541605080*t).sin();
   return uranus_x_2+uranus_x_1+uranus_x_0;
}

fn saturn_z(t: f64) -> f64 {
   let mut saturn_z_1: f64 = 0.0;

   saturn_z_1 += ((t.powf(0f64))) * 1f64 *      0.03810308320 * ( 5.33520316778 +      213.29909543800*t).cos() - ((t.powf(1f64))) *      0.03810308320 *      213.29909543800 * ( 5.33520316778 +      213.29909543800*t).sin();

   let mut saturn_z_0: f64 = 0.0;

   saturn_z_0 += -1f64 *      0.01214249867 *        0.00000000000 * ( 0.00000000000 +        0.00000000000*t).sin();
   saturn_z_0 += -1f64 *      0.01148283576 *      426.59819087600 * ( 2.85128367469 +      426.59819087600*t).sin();
   saturn_z_0 += -1f64 *      0.41356950940 *      213.29909543800 * ( 3.60234142982 +      213.29909543800*t).sin();
   return saturn_z_1+saturn_z_0;
}

fn saturn_y(t: f64) -> f64 {
   let mut saturn_y_1: f64 = 0.0;

   saturn_y_1 += ((t.powf(0f64))) * 1f64 *      0.02644990371 * ( 3.76176749725 +      220.65645992230*t).cos() - ((t.powf(1f64))) *      0.02644990371 *      220.65645992230 * ( 3.76176749725 +      220.65645992230*t).sin();
   saturn_y_1 += ((t.powf(0f64))) * 1f64 *      0.02728479923 * ( 4.27396756341 +      206.42936592071*t).cos() - ((t.powf(1f64))) *      0.02728479923 *      206.42936592071 * ( 4.27396756341 +      206.42936592071*t).sin();
   saturn_y_1 += ((t.powf(0f64))) * 1f64 *      0.03086501680 * ( 2.70413999679 +      426.84200835950*t).cos() - ((t.powf(1f64))) *      0.03086501680 *      426.84200835950 * ( 2.70413999679 +      426.84200835950*t).sin();
   saturn_y_1 += ((t.powf(0f64))) * 1f64 *      0.09285877988 * ( 5.32917891541 +        0.24381748350*t).cos() - ((t.powf(1f64))) *      0.09285877988 *        0.24381748350 * ( 5.32917891541 +        0.24381748350*t).sin();

   let mut saturn_y_0: f64 = 0.0;

   saturn_y_0 += -1f64 *      0.01098217124 *      640.14110379750 * ( 4.08641227912 +      640.14110379750*t).sin();
   saturn_y_0 += -1f64 *      0.01141539711 *      419.72846135871 * ( 1.46265679616 +      419.72846135871*t).sin();
   saturn_y_0 += -1f64 *      0.01250581159 *      110.45013870291 * ( 0.60313024847 +      110.45013870291*t).sin();
   saturn_y_0 += -1f64 *      0.02340967916 *        7.35736448430 * ( 0.44899651249 +        7.35736448430*t).sin();
   saturn_y_0 += -1f64 *      0.06628914946 *      220.65645992230 * ( 5.46296215793 +      220.65645992230*t).sin();
   saturn_y_0 += -1f64 *      0.06836881382 *      206.42936592071 * ( 2.57458281509 +      206.42936592071*t).sin();
   saturn_y_0 += -1f64 *      0.26427074351 *      426.84200835950 * ( 4.83578897954 +      426.84200835950*t).sin();
   saturn_y_0 += -1f64 *      0.79501390398 *        0.24381748350 * ( 3.19501080417 +        0.24381748350*t).sin();
   saturn_y_0 += -1f64 *      9.52312533591 *      213.54291292150 * ( 5.58640389526 +      213.54291292150*t).sin();
   return saturn_y_1+saturn_y_0;
}

fn saturn_x(t: f64) -> f64 {
   let mut saturn_x_1: f64 = 0.0;

   saturn_x_1 += ((t.powf(0f64))) * 1f64 *      0.02644990371 * ( 5.33256382404 +      220.65645992230*t).cos() - ((t.powf(1f64))) *      0.02644990371 *      220.65645992230 * ( 5.33256382404 +      220.65645992230*t).sin();
   saturn_x_1 += ((t.powf(0f64))) * 1f64 *      0.02728479923 * ( 5.84476389020 +      206.42936592071*t).cos() - ((t.powf(1f64))) *      0.02728479923 *      206.42936592071 * ( 5.84476389020 +      206.42936592071*t).sin();
   saturn_x_1 += ((t.powf(0f64))) * 1f64 *      0.03086501680 * ( 4.27493632359 +      426.84200835950*t).cos() - ((t.powf(1f64))) *      0.03086501680 *      426.84200835950 * ( 4.27493632359 +      426.84200835950*t).sin();
   saturn_x_1 += ((t.powf(0f64))) * 1f64 *      0.09285877988 * ( 0.61678993503 +        0.24381748350*t).cos() - ((t.powf(1f64))) *      0.09285877988 *        0.24381748350 * ( 0.61678993503 +        0.24381748350*t).sin();

   let mut saturn_x_0: f64 = 0.0;

   saturn_x_0 += -1f64 *      0.01098217124 *      640.14110379750 * ( 5.65720860592 +      640.14110379750*t).sin();
   saturn_x_0 += -1f64 *      0.01141539711 *      419.72846135871 * ( 3.03345312296 +      419.72846135871*t).sin();
   saturn_x_0 += -1f64 *      0.01250581159 *      110.45013870291 * ( 2.17392657526 +      110.45013870291*t).sin();
   saturn_x_0 += -1f64 *      0.02340967916 *        7.35736448430 * ( 2.01979283929 +        7.35736448430*t).sin();
   saturn_x_0 += -1f64 *      0.06628914946 *      220.65645992230 * ( 0.75057317755 +      220.65645992230*t).sin();
   saturn_x_0 += -1f64 *      0.06836881382 *      206.42936592071 * ( 4.14537914189 +      206.42936592071*t).sin();
   saturn_x_0 += -1f64 *      0.26427074351 *      426.84200835950 * ( 0.12339999915 +      426.84200835950*t).sin();
   saturn_x_0 += -1f64 *      0.79501390398 *        0.24381748350 * ( 4.76580713096 +        0.24381748350*t).sin();
   saturn_x_0 += -1f64 *      9.52312533591 *      213.54291292150 * ( 0.87401491487 +      213.54291292150*t).sin();
   return saturn_x_1+saturn_x_0;
}

fn neptune_z(t: f64) -> f64 {
   let mut neptune_z_1: f64 = 0.0;

   neptune_z_1 += ((t.powf(0f64))) * 1f64 *      0.06832633707 * ( 3.80782656293 +       38.13303563780*t).cos() - ((t.powf(1f64))) *      0.06832633707 *       38.13303563780 * ( 3.80782656293 +       38.13303563780*t).sin();

   let mut neptune_z_0: f64 = 0.0;

   neptune_z_0 += -1f64 *      0.01245978462 *        0.00000000000 * ( 0.00000000000 +        0.00000000000*t).sin();
   neptune_z_0 += -1f64 *      0.92866054405 *       38.13303563780 * ( 1.44103930278 +       38.13303563780*t).sin();
   return neptune_z_1+neptune_z_0;
}

fn neptune_y(t: f64) -> f64 {
   let mut neptune_y_2: f64 = 0.0;

   neptune_y_2 += ((t.powf(1f64))) * 2f64 *      0.01620002167 * ( 5.31277371181 +       38.37685312130*t).cos() - ((t.powf(2f64))) *      0.01620002167 *       38.37685312130 * ( 5.31277371181 +       38.37685312130*t).sin();


   let mut neptune_y_0: f64 = 0.0;

   neptune_y_0 += -1f64 *      0.01073890204 *       75.02541605080 * ( 3.81397520876 +       75.02541605080*t).sin();
   neptune_y_0 += -1f64 *      0.02590782232 *        1.72829019180 * ( 0.42530135542 +        1.72829019180*t).sin();
   neptune_y_0 += -1f64 *      0.14935642614 *       39.86132582961 * ( 5.79716600101 +       39.86132582961*t).sin();
   neptune_y_0 += -1f64 *      0.15716341901 *       36.89238041300 * ( 4.82548976006 +       36.89238041300*t).sin();
   neptune_y_0 += -1f64 *      0.13506026414 *       76.50988875911 * ( 1.92976188293 +       76.50988875911*t).sin();
   neptune_y_0 += -1f64 *      0.40567587218 *        0.24381748350 * ( 2.41070337452 +        0.24381748350*t).sin();
   neptune_y_0 += -1f64 *     30.05973100580 *       38.37685312130 * ( 3.74109000403 +       38.37685312130*t).sin();
   return neptune_y_2+neptune_y_0;
}

fn neptune_x(t: f64) -> f64 {
   let mut neptune_x_2: f64 = 0.0;

   neptune_x_2 += ((t.powf(1f64))) * 2f64 *      0.01620002167 * ( 0.60038473142 +       38.37685312130*t).cos() - ((t.powf(2f64))) *      0.01620002167 *       38.37685312130 * ( 0.60038473142 +       38.37685312130*t).sin();


   let mut neptune_x_0: f64 = 0.0;

   neptune_x_0 += -1f64 *      0.01073890204 *       75.02541605080 * ( 5.38477153556 +       75.02541605080*t).sin();
   neptune_x_0 += -1f64 *      0.02590782232 *        1.72829019180 * ( 1.99609768221 +        1.72829019180*t).sin();
   neptune_x_0 += -1f64 *      0.14935642614 *       39.86132582961 * ( 1.08477702063 +       39.86132582961*t).sin();
   neptune_x_0 += -1f64 *      0.15716341901 *       36.89238041300 * ( 0.11310077968 +       36.89238041300*t).sin();
   neptune_x_0 += -1f64 *      0.13506026414 *       76.50988875911 * ( 3.50055820972 +       76.50988875911*t).sin();
   neptune_x_0 += -1f64 *      0.40567587218 *        0.24381748350 * ( 3.98149970131 +        0.24381748350*t).sin();
   neptune_x_0 += -1f64 *     30.05973100580 *       38.37685312130 * ( 5.31188633083 +       38.37685312130*t).sin();
   return neptune_x_2+neptune_x_0;
}

fn mercury_z(t: f64) -> f64 {
   let mut mercury_z_0: f64 = 0.0;

   mercury_z_0 += -1f64 *      0.04607665326 *    26087.90314157420 * ( 1.99295081967 +    26087.90314157420*t).sin();
   return mercury_z_0;
}

fn mercury_y(t: f64) -> f64 {
   let mut mercury_y_0: f64 = 0.0;

   mercury_y_0 += -1f64 *      0.03840153904 *    52176.05010063190 * ( 5.88254544140 +    52176.05010063190*t).sin();
   mercury_y_0 += -1f64 *      0.11918926148 *        0.24381748350 * ( 2.91948125760 +        0.24381748350*t).sin();
   mercury_y_0 += -1f64 *      0.37749277893 *    26088.14695905770 * ( 2.83179506899 +    26088.14695905770*t).sin();
   return mercury_y_0;
}

fn mercury_x(t: f64) -> f64 {
   let mut mercury_x_0: f64 = 0.0;

   mercury_x_0 += -1f64 *      0.03840153904 *    52176.05010063190 * ( 1.17015646101 +    52176.05010063190*t).sin();
   mercury_x_0 += -1f64 *      0.11918926148 *        0.24381748350 * ( 4.49027758439 +        0.24381748350*t).sin();
   mercury_x_0 += -1f64 *      0.37749277893 *    26088.14695905770 * ( 4.40259139579 +    26088.14695905770*t).sin();
   return mercury_x_0;
}

fn mars_z(t: f64) -> f64 {
   let mut mars_z_0: f64 = 0.0;

   mars_z_0 += -1f64 *      0.04901207220 *     3340.61242669980 * ( 3.76712324286 +     3340.61242669980*t).sin();
   return mars_z_0;
}

fn mars_y(t: f64) -> f64 {
   let mut mars_y_1: f64 = 0.0;

   mars_y_1 += ((t.powf(0f64))) * 1f64 *      0.01668487239 * ( 2.59897259786 +        0.24381748350*t).cos() - ((t.powf(1f64))) *      0.01668487239 *        0.24381748350 * ( 2.59897259786 +        0.24381748350*t).sin();

   let mut mars_y_0: f64 = 0.0;

   mars_y_0 += -1f64 *      0.07067734657 *     6681.46867088311 * ( 4.97080577669 +     6681.46867088311*t).sin();
   mars_y_0 += -1f64 *      0.21337343470 *        0.24381748350 * ( 1.15310710021 +        0.24381748350*t).sin();
   mars_y_0 += -1f64 *      1.51664432758 *     3340.85624418330 * ( 4.63267999004 +     3340.85624418330*t).sin();
   return mars_y_1+mars_y_0;
}

fn mars_x(t: f64) -> f64 {
   let mut mars_x_1: f64 = 0.0;

   mars_x_1 += ((t.powf(0f64))) * 1f64 *      0.01668487239 * ( 4.16976892466 +        0.24381748350*t).cos() - ((t.powf(1f64))) *      0.01668487239 *        0.24381748350 * ( 4.16976892466 +        0.24381748350*t).sin();

   let mut mars_x_0: f64 = 0.0;

   mars_x_0 += -1f64 *      0.07067734657 *     6681.46867088311 * ( 0.25841679630 +     6681.46867088311*t).sin();
   mars_x_0 += -1f64 *      0.21337343470 *        0.24381748350 * ( 2.72390342700 +        0.24381748350*t).sin();
   mars_x_0 += -1f64 *      1.51664432758 *     3340.85624418330 * ( 6.20347631684 +     3340.85624418330*t).sin();
   return mars_x_1+mars_x_0;
}

fn jupiter_z(t: f64) -> f64 {
   let mut jupiter_z_0: f64 = 0.0;

   jupiter_z_0 += -1f64 *      0.11823100489 *      529.69096509460 * ( 3.55844646343 +      529.69096509460*t).sin();
   return jupiter_z_0;
}

fn jupiter_y(t: f64) -> f64 {
   let mut jupiter_y_1: f64 = 0.0;

   jupiter_y_1 += ((t.powf(0f64))) * 1f64 *      0.01912556490 * ( 2.66195491149 +        0.24381748350*t).cos() - ((t.powf(1f64))) *      0.01912556490 *        0.24381748350 * ( 2.66195491149 +        0.24381748350*t).sin();

   let mut jupiter_y_0: f64 = 0.0;

   jupiter_y_0 += -1f64 *      0.01476016965 *      537.04832957890 * ( 2.04668425902 +      537.04832957890*t).sin();
   jupiter_y_0 += -1f64 *      0.01504469362 *      522.82123557730 * ( 5.44173895105 +      522.82123557730*t).sin();
   jupiter_y_0 += -1f64 *      0.12593400247 *     1059.62574767270 * ( 5.66155354525 +     1059.62574767270*t).sin();
   jupiter_y_0 += -1f64 *      0.37839498798 *        0.24381748350 * ( 1.82085166331 +        0.24381748350*t).sin();
   jupiter_y_0 += -1f64 *      5.19591755961 *      529.93478257810 * ( 5.31193570238 +      529.93478257810*t).sin();
   return jupiter_y_1+jupiter_y_0;
}

fn jupiter_x(t: f64) -> f64 {
   let mut jupiter_x_1: f64 = 0.0;

   jupiter_x_1 += ((t.powf(0f64))) * 1f64 *      0.01912556490 * ( 4.23275123829 +        0.24381748350*t).cos() - ((t.powf(1f64))) *      0.01912556490 *        0.24381748350 * ( 4.23275123829 +        0.24381748350*t).sin();

   let mut jupiter_x_0: f64 = 0.0;

   jupiter_x_0 += -1f64 *      0.01476016965 *      537.04832957890 * ( 3.61748058581 +      537.04832957890*t).sin();
   jupiter_x_0 += -1f64 *      0.01504469362 *      522.82123557730 * ( 0.72934997067 +      522.82123557730*t).sin();
   jupiter_x_0 += -1f64 *      0.12593400247 *     1059.62574767270 * ( 0.94916456487 +     1059.62574767270*t).sin();
   jupiter_x_0 += -1f64 *      0.37839498798 *        0.24381748350 * ( 3.39164799011 +        0.24381748350*t).sin();
   jupiter_x_0 += -1f64 *      5.19591755961 *      529.93478257810 * ( 0.59954672200 +      529.93478257810*t).sin();
   return jupiter_x_1+jupiter_x_0;
}

fn earth_z(t: f64) -> f64 {
   return 0;
}

fn earth_y(t: f64) -> f64 {
   let mut earth_y_0: f64 = 0.0;

   earth_y_0 += -1f64 *      0.02506324281 *        0.24381748350 * ( 3.36739796418 +        0.24381748350*t).sin();
   earth_y_0 += -1f64 *      0.99986069925 *     6283.31966747490 * ( 0.18267413078 +     6283.31966747490*t).sin();
   return earth_y_0;
}

fn earth_x(t: f64) -> f64 {
   let mut earth_x_0: f64 = 0.0;

   earth_x_0 += -1f64 *      0.02506324281 *        0.24381748350 * ( 4.93819429098 +        0.24381748350*t).sin();
   earth_x_0 += -1f64 *      0.99986069925 *     6283.31966747490 * ( 1.75347045757 +     6283.31966747490*t).sin();
   return earth_x_0;
}

