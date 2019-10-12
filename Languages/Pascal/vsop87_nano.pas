unit vsop87_nano;

interface
uses Math;

procedure vsop87_nano_getEmb(t: Double;var temp: array of Double);
procedure vsop87_nano_getJupiter(t: Double;var temp: array of Double);
procedure vsop87_nano_getMars(t: Double;var temp: array of Double);
procedure vsop87_nano_getMercury(t: Double;var temp: array of Double);
procedure vsop87_nano_getNeptune(t: Double;var temp: array of Double);
procedure vsop87_nano_getSaturn(t: Double;var temp: array of Double);
procedure vsop87_nano_getUranus(t: Double;var temp: array of Double);
procedure vsop87_nano_getVenus(t: Double;var temp: array of Double);

implementation



function vsop87_nano_emb_a(t: Double): Double;
   var emb_a_0: Double=0.0;
begin

   emb_a_0:=emb_a_0 +      1.00000101778 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_nano_emb_a := emb_a_0;
end;

function vsop87_nano_emb_l(t: Double): Double;
   var emb_l_0: Double=0.0;
   var emb_l_1: Double=0.0;
begin

   emb_l_0:=emb_l_0 +      1.75347045953 * Cos( 0.00000000000 +        0.00000000000*t);

   emb_l_1:=emb_l_1 +   6283.07584999140 * Cos( 0.00000000000 +        0.00000000000*t);
   emb_l_1:=emb_l_1 * t;

   vsop87_nano_emb_l := emb_l_0+emb_l_1;
end;

function vsop87_nano_emb_k(t: Double): Double;
   var emb_k_0: Double=0.0;
begin

   emb_k_0:=emb_k_0 +      0.00374081650 * Cos( 3.14159265359 +        0.00000000000*t);

   vsop87_nano_emb_k := emb_k_0;
end;

function vsop87_nano_emb_h(t: Double): Double;
   var emb_h_0: Double=0.0;
begin

   emb_h_0:=emb_h_0 +      0.01628447663 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_nano_emb_h := emb_h_0;
end;

function vsop87_nano_emb_q(t: Double): Double;
   var emb_q_1: Double=0.0;
begin

   emb_q_1:=emb_q_1 +      0.00113468869 * Cos( 3.14159265359 +        0.00000000000*t);
   emb_q_1:=emb_q_1 * t;

   vsop87_nano_emb_q := emb_q_1;
end;

function vsop87_nano_emb_p(t: Double): Double;
begin

   vsop87_nano_emb_p := 0;
end;

function vsop87_nano_jupiter_a(t: Double): Double;
   var jupiter_a_0: Double=0.0;
begin

   jupiter_a_0:=jupiter_a_0 +      5.20260319132 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_nano_jupiter_a := jupiter_a_0;
end;

function vsop87_nano_jupiter_l(t: Double): Double;
   var jupiter_l_0: Double=0.0;
   var jupiter_l_1: Double=0.0;
begin

   jupiter_l_0:=jupiter_l_0 +      0.59954649739 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_l_0:=jupiter_l_0 +      0.00573506125 * Cos( 1.44396306420 +        7.11354700080*t);

   jupiter_l_1:=jupiter_l_1 +    529.69096509460 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_l_1:=jupiter_l_1 +      0.00228875491 * Cos( 6.02639570653 +        7.11354700080*t);
   jupiter_l_1:=jupiter_l_1 * t;

   vsop87_nano_jupiter_l := jupiter_l_0+jupiter_l_1;
end;

function vsop87_nano_jupiter_k(t: Double): Double;
   var jupiter_k_0: Double=0.0;
   var jupiter_k_1: Double=0.0;
begin

   jupiter_k_0:=jupiter_k_0 +      0.04698572124 * Cos( 0.00000000000 +        0.00000000000*t);

   jupiter_k_1:=jupiter_k_1 +      0.00113010377 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_k_1:=jupiter_k_1 * t;

   vsop87_nano_jupiter_k := jupiter_k_0+jupiter_k_1;
end;

function vsop87_nano_jupiter_h(t: Double): Double;
   var jupiter_h_0: Double=0.0;
   var jupiter_h_1: Double=0.0;
begin

   jupiter_h_0:=jupiter_h_0 +      0.01200385748 * Cos( 0.00000000000 +        0.00000000000*t);

   jupiter_h_1:=jupiter_h_1 +      0.00217149360 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_h_1:=jupiter_h_1 * t;

   vsop87_nano_jupiter_h := jupiter_h_0+jupiter_h_1;
end;

function vsop87_nano_jupiter_q(t: Double): Double;
   var jupiter_q_0: Double=0.0;
begin

   jupiter_q_0:=jupiter_q_0 +      0.00206561098 * Cos( 3.14159265359 +        0.00000000000*t);

   vsop87_nano_jupiter_q := jupiter_q_0;
end;

function vsop87_nano_jupiter_p(t: Double): Double;
   var jupiter_p_0: Double=0.0;
begin

   jupiter_p_0:=jupiter_p_0 +      0.01118377157 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_nano_jupiter_p := jupiter_p_0;
end;

function vsop87_nano_mars_a(t: Double): Double;
   var mars_a_0: Double=0.0;
begin

   mars_a_0:=mars_a_0 +      1.52367934191 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_nano_mars_a := mars_a_0;
end;

function vsop87_nano_mars_l(t: Double): Double;
   var mars_l_0: Double=0.0;
   var mars_l_1: Double=0.0;
begin

   mars_l_0:=mars_l_0 +      6.20347611291 * Cos( 0.00000000000 +        0.00000000000*t);

   mars_l_1:=mars_l_1 +   3340.61242669981 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_l_1:=mars_l_1 * t;

   vsop87_nano_mars_l := mars_l_0+mars_l_1;
end;

function vsop87_nano_mars_k(t: Double): Double;
   var mars_k_0: Double=0.0;
   var mars_k_1: Double=0.0;
begin

   mars_k_0:=mars_k_0 +      0.08536560252 * Cos( 0.00000000000 +        0.00000000000*t);

   mars_k_1:=mars_k_1 +      0.00376330152 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_k_1:=mars_k_1 * t;

   vsop87_nano_mars_k := mars_k_0+mars_k_1;
end;

function vsop87_nano_mars_h(t: Double): Double;
   var mars_h_0: Double=0.0;
   var mars_h_1: Double=0.0;
begin

   mars_h_0:=mars_h_0 +      0.03789973236 * Cos( 3.14159265359 +        0.00000000000*t);

   mars_h_1:=mars_h_1 +      0.00624657465 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_h_1:=mars_h_1 * t;

   vsop87_nano_mars_h := mars_h_0+mars_h_1;
end;

function vsop87_nano_mars_q(t: Double): Double;
   var mars_q_0: Double=0.0;
begin

   mars_q_0:=mars_q_0 +      0.01047042574 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_nano_mars_q := mars_q_0;
end;

function vsop87_nano_mars_p(t: Double): Double;
   var mars_p_0: Double=0.0;
   var mars_p_1: Double=0.0;
begin

   mars_p_0:=mars_p_0 +      0.01228449307 * Cos( 0.00000000000 +        0.00000000000*t);

   mars_p_1:=mars_p_1 +      0.00108020083 * Cos( 3.14159265359 +        0.00000000000*t);
   mars_p_1:=mars_p_1 * t;

   vsop87_nano_mars_p := mars_p_0+mars_p_1;
end;

function vsop87_nano_mercury_a(t: Double): Double;
   var mercury_a_0: Double=0.0;
begin

   mercury_a_0:=mercury_a_0 +      0.38709830982 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_nano_mercury_a := mercury_a_0;
end;

function vsop87_nano_mercury_l(t: Double): Double;
   var mercury_l_0: Double=0.0;
   var mercury_l_1: Double=0.0;
begin

   mercury_l_0:=mercury_l_0 +      4.40260884240 * Cos( 0.00000000000 +        0.00000000000*t);

   mercury_l_1:=mercury_l_1 +  26087.90314157420 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_l_1:=mercury_l_1 * t;

   vsop87_nano_mercury_l := mercury_l_0+mercury_l_1;
end;

function vsop87_nano_mercury_k(t: Double): Double;
   var mercury_k_0: Double=0.0;
   var mercury_k_1: Double=0.0;
begin

   mercury_k_0:=mercury_k_0 +      0.04466059760 * Cos( 0.00000000000 +        0.00000000000*t);

   mercury_k_1:=mercury_k_1 +      0.00552114624 * Cos( 3.14159265359 +        0.00000000000*t);
   mercury_k_1:=mercury_k_1 * t;

   vsop87_nano_mercury_k := mercury_k_0+mercury_k_1;
end;

function vsop87_nano_mercury_h(t: Double): Double;
   var mercury_h_0: Double=0.0;
   var mercury_h_1: Double=0.0;
begin

   mercury_h_0:=mercury_h_0 +      0.20072331368 * Cos( 0.00000000000 +        0.00000000000*t);

   mercury_h_1:=mercury_h_1 +      0.00143750118 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_h_1:=mercury_h_1 * t;

   vsop87_nano_mercury_h := mercury_h_0+mercury_h_1;
end;

function vsop87_nano_mercury_q(t: Double): Double;
   var mercury_q_0: Double=0.0;
begin

   mercury_q_0:=mercury_q_0 +      0.04061563384 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_nano_mercury_q := mercury_q_0;
end;

function vsop87_nano_mercury_p(t: Double): Double;
   var mercury_p_0: Double=0.0;
   var mercury_p_1: Double=0.0;
begin

   mercury_p_0:=mercury_p_0 +      0.04563550461 * Cos( 0.00000000000 +        0.00000000000*t);

   mercury_p_1:=mercury_p_1 +      0.00127633657 * Cos( 3.14159265359 +        0.00000000000*t);
   mercury_p_1:=mercury_p_1 * t;

   vsop87_nano_mercury_p := mercury_p_0+mercury_p_1;
end;

function vsop87_nano_neptune_a(t: Double): Double;
   var neptune_a_0: Double=0.0;
begin

   neptune_a_0:=neptune_a_0 +     30.11038686942 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_a_0:=neptune_a_0 +      0.14818172119 * Cos( 1.57105922541 +      491.55792945680*t);
   neptune_a_0:=neptune_a_0 +      0.03597274341 * Cos( 1.84552690821 +      175.16605980020*t);
   neptune_a_0:=neptune_a_0 +      0.00832345688 * Cos( 5.19528065894 +        1.48447270830*t);
   neptune_a_0:=neptune_a_0 +      0.00694303990 * Cos( 1.92062235445 +     1021.24889455140*t);
   neptune_a_0:=neptune_a_0 +      0.00462318447 * Cos( 0.16921610518 +       36.64856292950*t);
   neptune_a_0:=neptune_a_0 +      0.00144701407 * Cos( 3.36967102070 +      453.42489381900*t);
   neptune_a_0:=neptune_a_0 +      0.00185666340 * Cos( 1.07141029917 +      388.46515523820*t);
   neptune_a_0:=neptune_a_0 +      0.00105687575 * Cos( 3.48447772920 +       73.29712585900*t);
   neptune_a_0:=neptune_a_0 +      0.00101174992 * Cos( 2.72476929716 +     6244.94281435360*t);

   vsop87_nano_neptune_a := neptune_a_0;
end;

function vsop87_nano_neptune_l(t: Double): Double;
   var neptune_l_0: Double=0.0;
   var neptune_l_1: Double=0.0;
begin

   neptune_l_0:=neptune_l_0 +      5.31188628676 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_0:=neptune_l_0 +      0.01017628072 * Cos( 0.48586478491 +        1.48447270830*t);
   neptune_l_0:=neptune_l_0 +      0.00441710236 * Cos( 0.00020868462 +      491.55792945680*t);

   neptune_l_1:=neptune_l_1 +     38.13303563780 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_1:=neptune_l_1 * t;

   vsop87_nano_neptune_l := neptune_l_0+neptune_l_1;
end;

function vsop87_nano_neptune_k(t: Double): Double;
   var neptune_k_0: Double=0.0;
begin

   neptune_k_0:=neptune_k_0 +      0.00599977571 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_k_0:=neptune_k_0 +      0.00343810387 * Cos( 0.59989432818 +      529.69096509460*t);
   neptune_k_0:=neptune_k_0 +      0.00136232980 * Cos( 5.31190360139 +       38.13303563780*t);
   neptune_k_0:=neptune_k_0 +      0.00131042161 * Cos( 2.54238248127 +      453.42489381900*t);

   vsop87_nano_neptune_k := neptune_k_0;
end;

function vsop87_nano_neptune_h(t: Double): Double;
   var neptune_h_0: Double=0.0;
begin

   neptune_h_0:=neptune_h_0 +      0.00669242413 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_h_0:=neptune_h_0 +      0.00344034784 * Cos( 5.31201105782 +      529.69096509460*t);
   neptune_h_0:=neptune_h_0 +      0.00136278888 * Cos( 3.74103613444 +       38.13303563780*t);
   neptune_h_0:=neptune_h_0 +      0.00131043136 * Cos( 4.11313570675 +      453.42489381900*t);

   vsop87_nano_neptune_h := neptune_h_0;
end;

function vsop87_nano_neptune_q(t: Double): Double;
   var neptune_q_0: Double=0.0;
begin

   neptune_q_0:=neptune_q_0 +      0.01029147819 * Cos( 3.14159265359 +        0.00000000000*t);

   vsop87_nano_neptune_q := neptune_q_0;
end;

function vsop87_nano_neptune_p(t: Double): Double;
   var neptune_p_0: Double=0.0;
begin

   neptune_p_0:=neptune_p_0 +      0.01151683985 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_nano_neptune_p := neptune_p_0;
end;

function vsop87_nano_saturn_a(t: Double): Double;
   var saturn_a_0: Double=0.0;
   var saturn_a_1: Double=0.0;
begin

   saturn_a_0:=saturn_a_0 +      9.55490959574 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_a_0:=saturn_a_0 +      0.03363448736 * Cos( 6.00973673460 +      316.39186965660*t);
   saturn_a_0:=saturn_a_0 +      0.00354492417 * Cos( 5.81482665415 +      103.09277421860*t);
   saturn_a_0:=saturn_a_0 +      0.00289062242 * Cos( 3.01816520038 +        7.11354700080*t);
   saturn_a_0:=saturn_a_0 +      0.00308461590 * Cos( 2.55488166399 +      632.78373931320*t);
   saturn_a_0:=saturn_a_0 +      0.00149912686 * Cos( 3.86270340354 +      419.48464387520*t);
   saturn_a_0:=saturn_a_0 +      0.00143605062 * Cos( 4.85917505070 +      213.29909543800*t);
   saturn_a_0:=saturn_a_0 +      0.00146816895 * Cos( 0.07437685257 +      846.08283475120*t);
   saturn_a_0:=saturn_a_0 +      0.00142075017 * Cos( 2.32273369924 +      949.17560896980*t);

   saturn_a_1:=saturn_a_1 +      0.00115108584 * Cos( 1.31913907888 +        7.11354700080*t);
   saturn_a_1:=saturn_a_1 * t;

   vsop87_nano_saturn_a := saturn_a_0+saturn_a_1;
end;

function vsop87_nano_saturn_l(t: Double): Double;
   var saturn_l_0: Double=0.0;
   var saturn_l_1: Double=0.0;
   var saturn_l_2: Double=0.0;
begin

   saturn_l_0:=saturn_l_0 +      0.87401675650 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_0:=saturn_l_0 +      0.01411655077 * Cos( 4.58553469006 +        7.11354700080*t);
   saturn_l_0:=saturn_l_0 +      0.00259784547 * Cos( 4.43343036691 +      316.39186965660*t);
   saturn_l_0:=saturn_l_0 +      0.00149861955 * Cos( 0.26851062811 +      103.09277421860*t);

   saturn_l_1:=saturn_l_1 +    213.29909543800 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_1:=saturn_l_1 +      0.00563352798 * Cos( 2.88478561660 +        7.11354700080*t);
   saturn_l_1:=saturn_l_1 * t;

   saturn_l_2:=saturn_l_2 +      0.00116235667 * Cos( 1.17971682406 +        7.11354700080*t);
   saturn_l_2:=saturn_l_2 * t * t;

   vsop87_nano_saturn_l := saturn_l_0+saturn_l_1+saturn_l_2;
end;

function vsop87_nano_saturn_k(t: Double): Double;
   var saturn_k_0: Double=0.0;
   var saturn_k_1: Double=0.0;
begin

   saturn_k_0:=saturn_k_0 +      0.00296003595 * Cos( 3.14159265359 +        0.00000000000*t);
   saturn_k_0:=saturn_k_0 +      0.00155326496 * Cos( 5.16402515606 +        7.11354700080*t);
   saturn_k_0:=saturn_k_0 +      0.00197268763 * Cos( 0.59616692002 +      529.69096509460*t);
   saturn_k_0:=saturn_k_0 +      0.00126322249 * Cos( 0.86230560136 +      213.29909543800*t);

   saturn_k_1:=saturn_k_1 +      0.00529602626 * Cos( 3.14159265359 +        0.00000000000*t);
   saturn_k_1:=saturn_k_1 * t;

   vsop87_nano_saturn_k := saturn_k_0+saturn_k_1;
end;

function vsop87_nano_saturn_h(t: Double): Double;
   var saturn_h_0: Double=0.0;
   var saturn_h_1: Double=0.0;
begin

   saturn_h_0:=saturn_h_0 +      0.05542964254 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_h_0:=saturn_h_0 +      0.00154553684 * Cos( 3.59447132230 +        7.11354700080*t);
   saturn_h_0:=saturn_h_0 +      0.00196887619 * Cos( 5.31528897782 +      529.69096509460*t);
   saturn_h_0:=saturn_h_0 +      0.00124537423 * Cos( 5.60295505720 +      213.29909543800*t);

   saturn_h_1:=saturn_h_1 +      0.00375593887 * Cos( 3.14159265359 +        0.00000000000*t);
   saturn_h_1:=saturn_h_1 * t;

   vsop87_nano_saturn_h := saturn_h_0+saturn_h_1;
end;

function vsop87_nano_saturn_q(t: Double): Double;
   var saturn_q_0: Double=0.0;
begin

   saturn_q_0:=saturn_q_0 +      0.00871747436 * Cos( 3.14159265359 +        0.00000000000*t);

   vsop87_nano_saturn_q := saturn_q_0;
end;

function vsop87_nano_saturn_p(t: Double): Double;
   var saturn_p_0: Double=0.0;
begin

   saturn_p_0:=saturn_p_0 +      0.01989147301 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_nano_saturn_p := saturn_p_0;
end;

function vsop87_nano_uranus_a(t: Double): Double;
   var uranus_a_0: Double=0.0;
begin

   uranus_a_0:=uranus_a_0 +     19.21844606178 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_a_0:=uranus_a_0 +      0.08030476240 * Cos( 1.40140954803 +      454.90936652730*t);
   uranus_a_0:=uranus_a_0 +      0.02068375131 * Cos( 1.67626096637 +      138.51749687070*t);
   uranus_a_0:=uranus_a_0 +      0.00406413575 * Cos( 5.21303965129 +      380.12776796000*t);
   uranus_a_0:=uranus_a_0 +      0.00365190162 * Cos( 1.75064255586 +      984.60033162190*t);
   uranus_a_0:=uranus_a_0 +      0.00391818405 * Cos( 2.05935807638 +        1.48447270830*t);
   uranus_a_0:=uranus_a_0 +      0.00313720406 * Cos( 2.19852745462 +       74.78159856730*t);
   uranus_a_0:=uranus_a_0 +      0.00148020073 * Cos( 4.84763548983 +       63.73589830340*t);
   uranus_a_0:=uranus_a_0 +      0.00124336026 * Cos( 1.34101096123 +       11.04570026390*t);
   uranus_a_0:=uranus_a_0 +      0.00120436873 * Cos( 0.15931700196 +      277.03499374140*t);
   uranus_a_0:=uranus_a_0 +      0.00102755162 * Cos( 0.89451486294 +      351.81659230870*t);

   vsop87_nano_uranus_a := uranus_a_0;
end;

function vsop87_nano_uranus_l(t: Double): Double;
   var uranus_l_0: Double=0.0;
   var uranus_l_1: Double=0.0;
begin

   uranus_l_0:=uranus_l_0 +      5.48129387159 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_0:=uranus_l_0 +      0.01503941337 * Cos( 3.62721239702 +        1.48447270830*t);
   uranus_l_0:=uranus_l_0 +      0.00341045477 * Cos( 6.11377091373 +      454.90936652730*t);

   uranus_l_1:=uranus_l_1 +     74.78159856730 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_1:=uranus_l_1 * t;

   vsop87_nano_uranus_l := uranus_l_0+uranus_l_1;
end;

function vsop87_nano_uranus_k(t: Double): Double;
   var uranus_k_0: Double=0.0;
begin

   uranus_k_0:=uranus_k_0 +      0.04595132376 * Cos( 3.14159265359 +        0.00000000000*t);
   uranus_k_0:=uranus_k_0 +      0.00274532742 * Cos( 0.59960944961 +      529.69096509460*t);
   uranus_k_0:=uranus_k_0 +      0.00209611522 * Cos( 1.99913587697 +        1.48447270830*t);
   uranus_k_0:=uranus_k_0 +      0.00136013862 * Cos( 5.48189691557 +       74.78159856730*t);
   uranus_k_0:=uranus_k_0 +      0.00116379910 * Cos( 2.20321839185 +      380.12776796000*t);

   vsop87_nano_uranus_k := uranus_k_0;
end;

function vsop87_nano_uranus_h(t: Double): Double;
   var uranus_h_0: Double=0.0;
begin

   uranus_h_0:=uranus_h_0 +      0.00563791307 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_h_0:=uranus_h_0 +      0.00274676149 * Cos( 5.31178834743 +      529.69096509460*t);
   uranus_h_0:=uranus_h_0 +      0.00210407426 * Cos( 0.42744224313 +        1.48447270830*t);
   uranus_h_0:=uranus_h_0 +      0.00136132837 * Cos( 3.91136489012 +       74.78159856730*t);
   uranus_h_0:=uranus_h_0 +      0.00116288289 * Cos( 3.77434233468 +      380.12776796000*t);

   vsop87_nano_uranus_h := uranus_h_0;
end;

function vsop87_nano_uranus_q(t: Double): Double;
   var uranus_q_0: Double=0.0;
begin

   uranus_q_0:=uranus_q_0 +      0.00185915075 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_nano_uranus_q := uranus_q_0;
end;

function vsop87_nano_uranus_p(t: Double): Double;
   var uranus_p_0: Double=0.0;
begin

   uranus_p_0:=uranus_p_0 +      0.00648617008 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_nano_uranus_p := uranus_p_0;
end;

function vsop87_nano_venus_a(t: Double): Double;
   var venus_a_0: Double=0.0;
begin

   venus_a_0:=venus_a_0 +      0.72332981996 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_nano_venus_a := venus_a_0;
end;

function vsop87_nano_venus_l(t: Double): Double;
   var venus_l_0: Double=0.0;
   var venus_l_1: Double=0.0;
begin

   venus_l_0:=venus_l_0 +      3.17614669689 * Cos( 0.00000000000 +        0.00000000000*t);

   venus_l_1:=venus_l_1 +  10213.28554621100 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_l_1:=venus_l_1 * t;

   vsop87_nano_venus_l := venus_l_0+venus_l_1;
end;

function vsop87_nano_venus_k(t: Double): Double;
   var venus_k_0: Double=0.0;
begin

   venus_k_0:=venus_k_0 +      0.00449282133 * Cos( 3.14159265359 +        0.00000000000*t);

   vsop87_nano_venus_k := venus_k_0;
end;

function vsop87_nano_venus_h(t: Double): Double;
   var venus_h_0: Double=0.0;
begin

   venus_h_0:=venus_h_0 +      0.00506684726 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_nano_venus_h := venus_h_0;
end;

function vsop87_nano_venus_q(t: Double): Double;
   var venus_q_0: Double=0.0;
   var venus_q_1: Double=0.0;
begin

   venus_q_0:=venus_q_0 +      0.00682410142 * Cos( 0.00000000000 +        0.00000000000*t);

   venus_q_1:=venus_q_1 +      0.00138133826 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_q_1:=venus_q_1 * t;

   vsop87_nano_venus_q := venus_q_0+venus_q_1;
end;

function vsop87_nano_venus_p(t: Double): Double;
   var venus_p_0: Double=0.0;
begin

   venus_p_0:=venus_p_0 +      0.02882285775 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_nano_venus_p := venus_p_0;
end;

procedure vsop87_nano_getEmb(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87_nano_emb_a(t);
   temp[1]:=vsop87_nano_emb_l(t);
   temp[2]:=vsop87_nano_emb_k(t);
   temp[3]:=vsop87_nano_emb_h(t);
   temp[4]:=vsop87_nano_emb_q(t);
   temp[5]:=vsop87_nano_emb_p(t);
end;

procedure vsop87_nano_getJupiter(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87_nano_jupiter_a(t);
   temp[1]:=vsop87_nano_jupiter_l(t);
   temp[2]:=vsop87_nano_jupiter_k(t);
   temp[3]:=vsop87_nano_jupiter_h(t);
   temp[4]:=vsop87_nano_jupiter_q(t);
   temp[5]:=vsop87_nano_jupiter_p(t);
end;

procedure vsop87_nano_getMars(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87_nano_mars_a(t);
   temp[1]:=vsop87_nano_mars_l(t);
   temp[2]:=vsop87_nano_mars_k(t);
   temp[3]:=vsop87_nano_mars_h(t);
   temp[4]:=vsop87_nano_mars_q(t);
   temp[5]:=vsop87_nano_mars_p(t);
end;

procedure vsop87_nano_getMercury(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87_nano_mercury_a(t);
   temp[1]:=vsop87_nano_mercury_l(t);
   temp[2]:=vsop87_nano_mercury_k(t);
   temp[3]:=vsop87_nano_mercury_h(t);
   temp[4]:=vsop87_nano_mercury_q(t);
   temp[5]:=vsop87_nano_mercury_p(t);
end;

procedure vsop87_nano_getNeptune(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87_nano_neptune_a(t);
   temp[1]:=vsop87_nano_neptune_l(t);
   temp[2]:=vsop87_nano_neptune_k(t);
   temp[3]:=vsop87_nano_neptune_h(t);
   temp[4]:=vsop87_nano_neptune_q(t);
   temp[5]:=vsop87_nano_neptune_p(t);
end;

procedure vsop87_nano_getSaturn(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87_nano_saturn_a(t);
   temp[1]:=vsop87_nano_saturn_l(t);
   temp[2]:=vsop87_nano_saturn_k(t);
   temp[3]:=vsop87_nano_saturn_h(t);
   temp[4]:=vsop87_nano_saturn_q(t);
   temp[5]:=vsop87_nano_saturn_p(t);
end;

procedure vsop87_nano_getUranus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87_nano_uranus_a(t);
   temp[1]:=vsop87_nano_uranus_l(t);
   temp[2]:=vsop87_nano_uranus_k(t);
   temp[3]:=vsop87_nano_uranus_h(t);
   temp[4]:=vsop87_nano_uranus_q(t);
   temp[5]:=vsop87_nano_uranus_p(t);
end;

procedure vsop87_nano_getVenus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87_nano_venus_a(t);
   temp[1]:=vsop87_nano_venus_l(t);
   temp[2]:=vsop87_nano_venus_k(t);
   temp[3]:=vsop87_nano_venus_h(t);
   temp[4]:=vsop87_nano_venus_q(t);
   temp[5]:=vsop87_nano_venus_p(t);
end;
end.