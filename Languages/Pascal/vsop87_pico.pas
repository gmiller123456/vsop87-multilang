unit vsop87_pico;

interface
uses Math;

procedure vsop87_pico_getEmb(t: Double;var temp: array of Double);
procedure vsop87_pico_getJupiter(t: Double;var temp: array of Double);
procedure vsop87_pico_getMars(t: Double;var temp: array of Double);
procedure vsop87_pico_getMercury(t: Double;var temp: array of Double);
procedure vsop87_pico_getNeptune(t: Double;var temp: array of Double);
procedure vsop87_pico_getSaturn(t: Double;var temp: array of Double);
procedure vsop87_pico_getUranus(t: Double;var temp: array of Double);
procedure vsop87_pico_getVenus(t: Double;var temp: array of Double);

implementation



function vsop87_pico_emb_a(t: Double): Double;
   var emb_a_0: Double=0.0;
begin

   emb_a_0:=emb_a_0 +      1.00000101778 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_emb_a := emb_a_0;
end;

function vsop87_pico_emb_l(t: Double): Double;
   var emb_l_0: Double=0.0;
   var emb_l_1: Double=0.0;
begin

   emb_l_0:=emb_l_0 +      1.75347045953 * Cos( 0.00000000000 +        0.00000000000*t);

   emb_l_1:=emb_l_1 +   6283.07584999140 * Cos( 0.00000000000 +        0.00000000000*t);
   emb_l_1:=emb_l_1 * t;

   vsop87_pico_emb_l := emb_l_0+emb_l_1;
end;

function vsop87_pico_emb_k(t: Double): Double;
begin

   vsop87_pico_emb_k := 0;
end;

function vsop87_pico_emb_h(t: Double): Double;
   var emb_h_0: Double=0.0;
begin

   emb_h_0:=emb_h_0 +      0.01628447663 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_emb_h := emb_h_0;
end;

function vsop87_pico_emb_q(t: Double): Double;
begin

   vsop87_pico_emb_q := 0;
end;

function vsop87_pico_emb_p(t: Double): Double;
begin

   vsop87_pico_emb_p := 0;
end;

function vsop87_pico_jupiter_a(t: Double): Double;
   var jupiter_a_0: Double=0.0;
begin

   jupiter_a_0:=jupiter_a_0 +      5.20260319132 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_jupiter_a := jupiter_a_0;
end;

function vsop87_pico_jupiter_l(t: Double): Double;
   var jupiter_l_0: Double=0.0;
   var jupiter_l_1: Double=0.0;
begin

   jupiter_l_0:=jupiter_l_0 +      0.59954649739 * Cos( 0.00000000000 +        0.00000000000*t);

   jupiter_l_1:=jupiter_l_1 +    529.69096509460 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_l_1:=jupiter_l_1 * t;

   vsop87_pico_jupiter_l := jupiter_l_0+jupiter_l_1;
end;

function vsop87_pico_jupiter_k(t: Double): Double;
   var jupiter_k_0: Double=0.0;
begin

   jupiter_k_0:=jupiter_k_0 +      0.04698572124 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_jupiter_k := jupiter_k_0;
end;

function vsop87_pico_jupiter_h(t: Double): Double;
   var jupiter_h_0: Double=0.0;
begin

   jupiter_h_0:=jupiter_h_0 +      0.01200385748 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_jupiter_h := jupiter_h_0;
end;

function vsop87_pico_jupiter_q(t: Double): Double;
begin

   vsop87_pico_jupiter_q := 0;
end;

function vsop87_pico_jupiter_p(t: Double): Double;
   var jupiter_p_0: Double=0.0;
begin

   jupiter_p_0:=jupiter_p_0 +      0.01118377157 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_jupiter_p := jupiter_p_0;
end;

function vsop87_pico_mars_a(t: Double): Double;
   var mars_a_0: Double=0.0;
begin

   mars_a_0:=mars_a_0 +      1.52367934191 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_mars_a := mars_a_0;
end;

function vsop87_pico_mars_l(t: Double): Double;
   var mars_l_0: Double=0.0;
   var mars_l_1: Double=0.0;
begin

   mars_l_0:=mars_l_0 +      6.20347611291 * Cos( 0.00000000000 +        0.00000000000*t);

   mars_l_1:=mars_l_1 +   3340.61242669981 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_l_1:=mars_l_1 * t;

   vsop87_pico_mars_l := mars_l_0+mars_l_1;
end;

function vsop87_pico_mars_k(t: Double): Double;
   var mars_k_0: Double=0.0;
begin

   mars_k_0:=mars_k_0 +      0.08536560252 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_mars_k := mars_k_0;
end;

function vsop87_pico_mars_h(t: Double): Double;
   var mars_h_0: Double=0.0;
begin

   mars_h_0:=mars_h_0 +      0.03789973236 * Cos( 3.14159265359 +        0.00000000000*t);

   vsop87_pico_mars_h := mars_h_0;
end;

function vsop87_pico_mars_q(t: Double): Double;
   var mars_q_0: Double=0.0;
begin

   mars_q_0:=mars_q_0 +      0.01047042574 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_mars_q := mars_q_0;
end;

function vsop87_pico_mars_p(t: Double): Double;
   var mars_p_0: Double=0.0;
begin

   mars_p_0:=mars_p_0 +      0.01228449307 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_mars_p := mars_p_0;
end;

function vsop87_pico_mercury_a(t: Double): Double;
   var mercury_a_0: Double=0.0;
begin

   mercury_a_0:=mercury_a_0 +      0.38709830982 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_mercury_a := mercury_a_0;
end;

function vsop87_pico_mercury_l(t: Double): Double;
   var mercury_l_0: Double=0.0;
   var mercury_l_1: Double=0.0;
begin

   mercury_l_0:=mercury_l_0 +      4.40260884240 * Cos( 0.00000000000 +        0.00000000000*t);

   mercury_l_1:=mercury_l_1 +  26087.90314157420 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_l_1:=mercury_l_1 * t;

   vsop87_pico_mercury_l := mercury_l_0+mercury_l_1;
end;

function vsop87_pico_mercury_k(t: Double): Double;
   var mercury_k_0: Double=0.0;
begin

   mercury_k_0:=mercury_k_0 +      0.04466059760 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_mercury_k := mercury_k_0;
end;

function vsop87_pico_mercury_h(t: Double): Double;
   var mercury_h_0: Double=0.0;
begin

   mercury_h_0:=mercury_h_0 +      0.20072331368 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_mercury_h := mercury_h_0;
end;

function vsop87_pico_mercury_q(t: Double): Double;
   var mercury_q_0: Double=0.0;
begin

   mercury_q_0:=mercury_q_0 +      0.04061563384 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_mercury_q := mercury_q_0;
end;

function vsop87_pico_mercury_p(t: Double): Double;
   var mercury_p_0: Double=0.0;
begin

   mercury_p_0:=mercury_p_0 +      0.04563550461 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_mercury_p := mercury_p_0;
end;

function vsop87_pico_neptune_a(t: Double): Double;
   var neptune_a_0: Double=0.0;
begin

   neptune_a_0:=neptune_a_0 +     30.11038686942 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_a_0:=neptune_a_0 +      0.14818172119 * Cos( 1.57105922541 +      491.55792945680*t);
   neptune_a_0:=neptune_a_0 +      0.03597274341 * Cos( 1.84552690821 +      175.16605980020*t);

   vsop87_pico_neptune_a := neptune_a_0;
end;

function vsop87_pico_neptune_l(t: Double): Double;
   var neptune_l_0: Double=0.0;
   var neptune_l_1: Double=0.0;
begin

   neptune_l_0:=neptune_l_0 +      5.31188628676 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_0:=neptune_l_0 +      0.01017628072 * Cos( 0.48586478491 +        1.48447270830*t);

   neptune_l_1:=neptune_l_1 +     38.13303563780 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_1:=neptune_l_1 * t;

   vsop87_pico_neptune_l := neptune_l_0+neptune_l_1;
end;

function vsop87_pico_neptune_k(t: Double): Double;
begin

   vsop87_pico_neptune_k := 0;
end;

function vsop87_pico_neptune_h(t: Double): Double;
begin

   vsop87_pico_neptune_h := 0;
end;

function vsop87_pico_neptune_q(t: Double): Double;
   var neptune_q_0: Double=0.0;
begin

   neptune_q_0:=neptune_q_0 +      0.01029147819 * Cos( 3.14159265359 +        0.00000000000*t);

   vsop87_pico_neptune_q := neptune_q_0;
end;

function vsop87_pico_neptune_p(t: Double): Double;
   var neptune_p_0: Double=0.0;
begin

   neptune_p_0:=neptune_p_0 +      0.01151683985 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_neptune_p := neptune_p_0;
end;

function vsop87_pico_saturn_a(t: Double): Double;
   var saturn_a_0: Double=0.0;
begin

   saturn_a_0:=saturn_a_0 +      9.55490959574 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_a_0:=saturn_a_0 +      0.03363448736 * Cos( 6.00973673460 +      316.39186965660*t);

   vsop87_pico_saturn_a := saturn_a_0;
end;

function vsop87_pico_saturn_l(t: Double): Double;
   var saturn_l_0: Double=0.0;
   var saturn_l_1: Double=0.0;
begin

   saturn_l_0:=saturn_l_0 +      0.87401675650 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_0:=saturn_l_0 +      0.01411655077 * Cos( 4.58553469006 +        7.11354700080*t);

   saturn_l_1:=saturn_l_1 +    213.29909543800 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_1:=saturn_l_1 * t;

   vsop87_pico_saturn_l := saturn_l_0+saturn_l_1;
end;

function vsop87_pico_saturn_k(t: Double): Double;
begin

   vsop87_pico_saturn_k := 0;
end;

function vsop87_pico_saturn_h(t: Double): Double;
   var saturn_h_0: Double=0.0;
begin

   saturn_h_0:=saturn_h_0 +      0.05542964254 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_saturn_h := saturn_h_0;
end;

function vsop87_pico_saturn_q(t: Double): Double;
begin

   vsop87_pico_saturn_q := 0;
end;

function vsop87_pico_saturn_p(t: Double): Double;
   var saturn_p_0: Double=0.0;
begin

   saturn_p_0:=saturn_p_0 +      0.01989147301 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_saturn_p := saturn_p_0;
end;

function vsop87_pico_uranus_a(t: Double): Double;
   var uranus_a_0: Double=0.0;
begin

   uranus_a_0:=uranus_a_0 +     19.21844606178 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_a_0:=uranus_a_0 +      0.08030476240 * Cos( 1.40140954803 +      454.90936652730*t);
   uranus_a_0:=uranus_a_0 +      0.02068375131 * Cos( 1.67626096637 +      138.51749687070*t);

   vsop87_pico_uranus_a := uranus_a_0;
end;

function vsop87_pico_uranus_l(t: Double): Double;
   var uranus_l_0: Double=0.0;
   var uranus_l_1: Double=0.0;
begin

   uranus_l_0:=uranus_l_0 +      5.48129387159 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_0:=uranus_l_0 +      0.01503941337 * Cos( 3.62721239702 +        1.48447270830*t);

   uranus_l_1:=uranus_l_1 +     74.78159856730 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_1:=uranus_l_1 * t;

   vsop87_pico_uranus_l := uranus_l_0+uranus_l_1;
end;

function vsop87_pico_uranus_k(t: Double): Double;
   var uranus_k_0: Double=0.0;
begin

   uranus_k_0:=uranus_k_0 +      0.04595132376 * Cos( 3.14159265359 +        0.00000000000*t);

   vsop87_pico_uranus_k := uranus_k_0;
end;

function vsop87_pico_uranus_h(t: Double): Double;
begin

   vsop87_pico_uranus_h := 0;
end;

function vsop87_pico_uranus_q(t: Double): Double;
begin

   vsop87_pico_uranus_q := 0;
end;

function vsop87_pico_uranus_p(t: Double): Double;
begin

   vsop87_pico_uranus_p := 0;
end;

function vsop87_pico_venus_a(t: Double): Double;
   var venus_a_0: Double=0.0;
begin

   venus_a_0:=venus_a_0 +      0.72332981996 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_venus_a := venus_a_0;
end;

function vsop87_pico_venus_l(t: Double): Double;
   var venus_l_0: Double=0.0;
   var venus_l_1: Double=0.0;
begin

   venus_l_0:=venus_l_0 +      3.17614669689 * Cos( 0.00000000000 +        0.00000000000*t);

   venus_l_1:=venus_l_1 +  10213.28554621100 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_l_1:=venus_l_1 * t;

   vsop87_pico_venus_l := venus_l_0+venus_l_1;
end;

function vsop87_pico_venus_k(t: Double): Double;
begin

   vsop87_pico_venus_k := 0;
end;

function vsop87_pico_venus_h(t: Double): Double;
begin

   vsop87_pico_venus_h := 0;
end;

function vsop87_pico_venus_q(t: Double): Double;
begin

   vsop87_pico_venus_q := 0;
end;

function vsop87_pico_venus_p(t: Double): Double;
   var venus_p_0: Double=0.0;
begin

   venus_p_0:=venus_p_0 +      0.02882285775 * Cos( 0.00000000000 +        0.00000000000*t);

   vsop87_pico_venus_p := venus_p_0;
end;

procedure vsop87_pico_getEmb(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87_pico_emb_a(t);
   temp[1]:=vsop87_pico_emb_l(t);
   temp[2]:=vsop87_pico_emb_k(t);
   temp[3]:=vsop87_pico_emb_h(t);
   temp[4]:=vsop87_pico_emb_q(t);
   temp[5]:=vsop87_pico_emb_p(t);
end;

procedure vsop87_pico_getJupiter(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87_pico_jupiter_a(t);
   temp[1]:=vsop87_pico_jupiter_l(t);
   temp[2]:=vsop87_pico_jupiter_k(t);
   temp[3]:=vsop87_pico_jupiter_h(t);
   temp[4]:=vsop87_pico_jupiter_q(t);
   temp[5]:=vsop87_pico_jupiter_p(t);
end;

procedure vsop87_pico_getMars(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87_pico_mars_a(t);
   temp[1]:=vsop87_pico_mars_l(t);
   temp[2]:=vsop87_pico_mars_k(t);
   temp[3]:=vsop87_pico_mars_h(t);
   temp[4]:=vsop87_pico_mars_q(t);
   temp[5]:=vsop87_pico_mars_p(t);
end;

procedure vsop87_pico_getMercury(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87_pico_mercury_a(t);
   temp[1]:=vsop87_pico_mercury_l(t);
   temp[2]:=vsop87_pico_mercury_k(t);
   temp[3]:=vsop87_pico_mercury_h(t);
   temp[4]:=vsop87_pico_mercury_q(t);
   temp[5]:=vsop87_pico_mercury_p(t);
end;

procedure vsop87_pico_getNeptune(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87_pico_neptune_a(t);
   temp[1]:=vsop87_pico_neptune_l(t);
   temp[2]:=vsop87_pico_neptune_k(t);
   temp[3]:=vsop87_pico_neptune_h(t);
   temp[4]:=vsop87_pico_neptune_q(t);
   temp[5]:=vsop87_pico_neptune_p(t);
end;

procedure vsop87_pico_getSaturn(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87_pico_saturn_a(t);
   temp[1]:=vsop87_pico_saturn_l(t);
   temp[2]:=vsop87_pico_saturn_k(t);
   temp[3]:=vsop87_pico_saturn_h(t);
   temp[4]:=vsop87_pico_saturn_q(t);
   temp[5]:=vsop87_pico_saturn_p(t);
end;

procedure vsop87_pico_getUranus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87_pico_uranus_a(t);
   temp[1]:=vsop87_pico_uranus_l(t);
   temp[2]:=vsop87_pico_uranus_k(t);
   temp[3]:=vsop87_pico_uranus_h(t);
   temp[4]:=vsop87_pico_uranus_q(t);
   temp[5]:=vsop87_pico_uranus_p(t);
end;

procedure vsop87_pico_getVenus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87_pico_venus_a(t);
   temp[1]:=vsop87_pico_venus_l(t);
   temp[2]:=vsop87_pico_venus_k(t);
   temp[3]:=vsop87_pico_venus_h(t);
   temp[4]:=vsop87_pico_venus_q(t);
   temp[5]:=vsop87_pico_venus_p(t);
end;
end.