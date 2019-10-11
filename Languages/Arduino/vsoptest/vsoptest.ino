void setup() {
  Serial.begin(9600);
  Serial.println("Starting");
  test();
  Serial.println("Done");
}

void loop() {

}
#define PI 3.14159265358979d

double jd2et(double jd){
    return (jd - 2451545.0d) / 365250.0d;
}

void check2(double a, double b){
     double t1 = fmod(a,PI);
     double t2 = fmod(b,PI);

     if (t1 < 0) t1 += PI;
     if (t2 < 0) t2 += PI;

     if (fabs(t1-t2) > .000009d)
     {
         //printf("Fail: %2.15f %2.15f\r\n",a,b);
         Serial.println("Fail:");
         Serial.println(fabs(t1-t2));
     } else
     {
         //Console.WriteLine("Pass");
     }
}

 void check6(double r[],double a, double k, double q, double l, double h, double p) {
     check2(r[0],a);
     check2(r[1],l);
     check2(r[2],k);
     check2(r[3],h);
     check2(r[4],q);
     check2(r[5],p);
 }

 void check3(double r[], double a, double b, double c) {
     check2(r[0], a);
     check2(r[1], b);
     check2(r[2], c);
 }
 
void test() {
    double r[6];
     vsop87a_small_getMercury(jd2et(2451545.0d),r);
     check3(r, -.1300934115d, -.4472876716d, -.0245983802d);
     vsop87a_small_getMercury(jd2et(2415020.0d),r);
     check3(r, -.3897246931d, -.1502242199d, .0236199373d);
     vsop87a_small_getMercury(jd2et(2378495.0d),r);
     check3(r, -.1683565237d, .2735108157d, .0378103630d);
     vsop87a_small_getMercury(jd2et(2341970.0d),r);
     check3(r, .3256720360d, .0880865802d, -.0229819912d);
     vsop87a_small_getMercury(jd2et(2305445.0d),r);
     check3(r, .2314047967d, -.3620120986d, -.0508588210d);
     vsop87a_small_getMercury(jd2et(2268920.0d),r);
     check3(r, -.1495554398d, -.4409710104d, -.0218126659d);
     vsop87a_small_getMercury(jd2et(2232395.0d),r);
     check3(r, -.3938651887d, -.1288399755d, .0263344445d);
     vsop87a_small_getMercury(jd2et(2195870.0d),r);
     check3(r, -.1454241100d, .2837569447d, .0365258870d);
     vsop87a_small_getMercury(jd2et(2159345.0d),r);
     check3(r, .3340760581d, .0655125084d, -.0260662236d);
     vsop87a_small_getMercury(jd2et(2122820.0d),r);
     check3(r, .2146329139d, -.3752296250d, -.0503982597d);
     vsop87a_small_getVenus(jd2et(2451545.0d),r);
     check3(r, -.7183022797d, -.0326546017d, .0410142975d);
     vsop87a_small_getVenus(jd2et(2415020.0d),r);
     check3(r, .6971428331d, -.2033631151d, -.0430201136d);
     vsop87a_small_getVenus(jd2et(2378495.0d),r);
     check3(r, -.5983535208d, .3958502156d, .0398238141d);
     vsop87a_small_getVenus(jd2et(2341970.0d),r);
     check3(r, .4531193265d, -.5692420969d, -.0335643217d);
     vsop87a_small_getVenus(jd2et(2305445.0d),r);
     check3(r, -.2501974249d, .6732855399d, .0229714783d);
     vsop87a_small_getVenus(jd2et(2268920.0d),r);
     check3(r, .0428334458d, -.7259844930d, -.0114025161d);
     vsop87a_small_getVenus(jd2et(2232395.0d),r);
     check3(r, .1935421816d, .6940567996d, -.0029302736d);
     vsop87a_small_getVenus(jd2et(2195870.0d),r);
     check3(r, -.3830059585d, -.6150875570d, .0150920021d);
     vsop87a_small_getVenus(jd2et(2159345.0d),r);
     check3(r, .5643550617d, .4519394442d, -.0277243709d);
     vsop87a_small_getVenus(jd2et(2122820.0d),r);
     check3(r, -.6660158465d, -.2753592311d, .0357874175d);
     vsop87a_small_getEarth(jd2et(2451545.0d),r);
     check3(r, -.1771354586d, .9672416237d, -.0000039000d);
     vsop87a_small_getEarth(jd2et(2415020.0d),r);
     check3(r, -.1883079649d, .9650688844d, .0002150325d);
     vsop87a_small_getEarth(jd2et(2378495.0d),r);
     check3(r, -.1993918002d, .9627974368d, .0004307602d);
     vsop87a_small_getEarth(jd2et(2341970.0d),r);
     check3(r, -.2104654652d, .9603579954d, .0006472929d);
     vsop87a_small_getEarth(jd2et(2305445.0d),r);
     check3(r, -.2214982928d, .9578483181d, .0008568250d);
     vsop87a_small_getEarth(jd2et(2268920.0d),r);
     check3(r, -.2324780153d, .9551975793d, .0010692878d);
     vsop87a_small_getEarth(jd2et(2232395.0d),r);
     check3(r, -.2435134343d, .9524373311d, .0012871020d);
     vsop87a_small_getEarth(jd2et(2195870.0d),r);
     check3(r, -.2544603371d, .9495904257d, .0014962103d);
     vsop87a_small_getEarth(jd2et(2159345.0d),r);
     check3(r, -.2654547156d, .9465233602d, .0017037737d);
     vsop87a_small_getEarth(jd2et(2122820.0d),r);
     check3(r, -.2763146784d, .9433985307d, .0019115387d);
     vsop87a_small_getMars(jd2et(2451545.0d),r);
     check3(r, 1.3907159264d, -.0134157043d, -.0344677967d);
     vsop87a_small_getMars(jd2et(2415020.0d),r);
     check3(r, .4284332474d, -1.3552354250d, -.0389650205d);
     vsop87a_small_getMars(jd2et(2378495.0d),r);
     check3(r, -1.1119219621d, -1.0963263014d, .0049208507d);
     vsop87a_small_getMars(jd2et(2341970.0d),r);
     check3(r, -1.6387489524d, .2507105242d, .0465605913d);
     vsop87a_small_getMars(jd2et(2305445.0d),r);
     check3(r, -.8307668241d, 1.4098595097d, .0504536061d);
     vsop87a_small_getMars(jd2et(2268920.0d),r);
     check3(r, .6495258850d, 1.3657302245d, .0116922368d);
     vsop87a_small_getMars(jd2et(2232395.0d),r);
     check3(r, 1.3910394546d, -.0543839267d, -.0371012758d);
     vsop87a_small_getMars(jd2et(2195870.0d),r);
     check3(r, .3890073909d, -1.3660431023d, -.0383808949d);
     vsop87a_small_getMars(jd2et(2159345.0d),r);
     check3(r, -1.1440917096d, -1.0595533316d, .0082180884d);
     vsop87a_small_getMars(jd2et(2122820.0d),r);
     check3(r, -1.6278485157d, .3060194814d, .0494215740d);
     vsop87a_small_getJupiter(jd2et(2451545.0d),r);
     check3(r, 4.0011740268d, 2.9385810077d, -.1017837501d);
     vsop87a_small_getJupiter(jd2et(2415020.0d),r);
     check3(r, -3.0191224350d, -4.4582563705d, .0858641900d);
     vsop87a_small_getJupiter(jd2et(2378495.0d),r);
     check3(r, -.0180390004d, 5.1317748839d, -.0200448490d);
     vsop87a_small_getJupiter(jd2et(2341970.0d),r);
     check3(r, 1.2817318353d, -5.0280079874d, -.0091251590d);
     vsop87a_small_getJupiter(jd2et(2305445.0d),r);
     check3(r, -4.0547959775d, 3.4799857072d, .0779960099d);
     vsop87a_small_getJupiter(jd2et(2268920.0d),r);
     check3(r, 4.5891471727d, -1.9870837931d, -.0961092251d);
     vsop87a_small_getJupiter(jd2et(2232395.0d),r);
     check3(r, -5.4239396005d, -.5085487291d, .1247760378d);
     vsop87a_small_getJupiter(jd2et(2195870.0d),r);
     check3(r, 4.2423286340d, 2.5898433579d, -.1060307357d);
     vsop87a_small_getJupiter(jd2et(2159345.0d),r);
     check3(r, -3.3554806095d, -4.2166702224d, .0919417675d);
     vsop87a_small_getJupiter(jd2et(2122820.0d),r);
     check3(r, .4207861894d, 5.1019591310d, -.0280087663d);
     vsop87a_small_getSaturn(jd2et(2451545.0d),r);
     check3(r, 6.4064068573d, 6.5699929449d, -.3690768029d);
     vsop87a_small_getSaturn(jd2et(2415020.0d),r);
     check3(r, -.3695973750d, -10.0582398188d, .1916854382d);
     vsop87a_small_getSaturn(jd2et(2378495.0d),r);
     check3(r, -5.6790910870d, 7.1152478120d, .0978521367d);
     vsop87a_small_getSaturn(jd2et(2341970.0d),r);
     check3(r, 8.9934758992d, -3.7883225437d, -.2866389234d);
     vsop87a_small_getSaturn(jd2et(2305445.0d),r);
     check3(r, -8.6570276346d, -4.4809792498d, .4216252073d);
     vsop87a_small_getSaturn(jd2et(2268920.0d),r);
     check3(r, 5.0378574919d, 7.5310625790d, -.3348880611d);
     vsop87a_small_getSaturn(jd2et(2232395.0d),r);
     check3(r, 1.2601620699d, -10.0267935693d, .1347052714d);
     vsop87a_small_getSaturn(jd2et(2195870.0d),r);
     check3(r, -7.1628125747d, 5.7482646991d, .1724961738d);
     vsop87a_small_getSaturn(jd2et(2159345.0d),r);
     check3(r, 9.3511669242d, -2.1145906249d, -.3231241535d);
     vsop87a_small_getSaturn(jd2et(2122820.0d),r);
     check3(r, -7.9395559173d, -5.8435867016d, .4165601597d);
     vsop87a_small_getUranus(jd2et(2451545.0d),r);
     check3(r, 14.4318934159d, -13.7343162527d, -.2381421963d);
     vsop87a_small_getUranus(jd2et(2415020.0d),r);
     check3(r, -6.4810833337d, -17.8526893406d, .0177935238d);
     vsop87a_small_getUranus(jd2et(2378495.0d),r);
     check3(r, -18.2708335178d, .9877655715d, .2420344280d);
     vsop87a_small_getUranus(jd2et(2341970.0d),r);
     check3(r, -4.2214391936d, 18.3160266384d, .1247592568d);
     vsop87a_small_getUranus(jd2et(2305445.0d),r);
     check3(r, 16.1020987626d, 11.4900726864d, -.1664618891d);
     vsop87a_small_getUranus(jd2et(2268920.0d),r);
     check3(r, 17.7683247787d, -9.2421595876d, -.2680482375d);
     vsop87a_small_getUranus(jd2et(2232395.0d),r);
     check3(r, -.7868164612d, -19.2532559478d, -.0636424080d);
     vsop87a_small_getUranus(jd2et(2195870.0d),r);
     check3(r, -17.6539243375d, -5.1636568776d, .2124669126d);
     vsop87a_small_getUranus(jd2et(2159345.0d),r);
     check3(r, -9.8287104597d, 15.7711888605d, .1914817351d);
     vsop87a_small_getUranus(jd2et(2122820.0d),r);
     check3(r, 11.8546461039d, 15.5595370553d, -.0950189343d);
     vsop87a_small_getNeptune(jd2et(2451545.0d),r);
     check3(r, 16.8121116576d, -24.9916630908d, .1272190171d);
     vsop87a_small_getNeptune(jd2et(2415020.0d),r);
     check3(r, 1.5164557467d, 29.8254538901d, -.6491400216d);
     vsop87a_small_getNeptune(jd2et(2378495.0d),r);
     check3(r, -20.3138943578d, -22.4908255796d, .9309151535d);
     vsop87a_small_getNeptune(jd2et(2341970.0d),r);
     check3(r, 29.5022811950d, 4.5987701114d, -.7740507255d);
     vsop87a_small_getNeptune(jd2et(2305445.0d),r);
     check3(r, -26.5823264272d, 14.1935610229d, .3196842255d);
     vsop87a_small_getNeptune(jd2et(2268920.0d),r);
     check3(r, 11.1160686193d, -28.0548309589d, .3216732257d);
     vsop87a_small_getNeptune(jd2et(2232395.0d),r);
     check3(r, 8.0214324006d, 28.7234916080d, -.7759058527d);
     vsop87a_small_getNeptune(jd2et(2195870.0d),r);
     check3(r, -24.6234347578d, -17.6514428046d, .9297244003d);
     vsop87a_small_getNeptune(jd2et(2159345.0d),r);
     check3(r, 29.8303563036d, -2.0338910503d, -.6441246887d);
     vsop87a_small_getNeptune(jd2et(2122820.0d),r);
     check3(r, -22.7985170870d, 19.5994768858d, .1206374034d);
     vsop87a_small_getEmb(jd2et(2451545.0d),r);
     check3(r, -.1771591440d, .9672192891d, -.0000009536d);
     vsop87a_small_getEmb(jd2et(2415020.0d),r);
     check3(r, -.1883097013d, .9650388428d, .0002152687d);
     vsop87a_small_getEmb(jd2et(2378495.0d),r);
     check3(r, -.1993643284d, .9627828195d, .0004282504d);
     vsop87a_small_getEmb(jd2et(2341970.0d),r);
     check3(r, -.2104343221d, .9603642782d, .0006462945d);
     vsop87a_small_getEmb(jd2et(2305445.0d),r);
     check3(r, -.2214911209d, .9578778167d, .0008589738d);
     vsop87a_small_getEmb(jd2et(2268920.0d),r);
     check3(r, -.2324953837d, .9552252051d, .0010711791d);
     vsop87a_small_getEmb(jd2et(2232395.0d),r);
     check3(r, -.2435434218d, .9524355203d, .0012855339d);
     vsop87a_small_getEmb(jd2et(2195870.0d),r);
     check3(r, -.2544800656d, .9495642257d, .0014936626d);
     vsop87a_small_getEmb(jd2et(2159345.0d),r);
     check3(r, -.2654471686d, .9464953236d, .0017047755d);
     vsop87a_small_getEmb(jd2et(2122820.0d),r);
     check3(r, -.2762837551d, .9433889919d, .0019144183d);

}
