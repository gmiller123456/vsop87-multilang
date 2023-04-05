rem VSOP87-Multilang http://www.celestialprogramming.com/
rem Greg Miller (gmiller@gregmiller.net) 2023.  Released as Public Domain

function vsop87_micro_getMercury(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_micro_mercury_a_velocity(t) / 365250.0
   temp(2)=vsop87_micro_mercury_l_velocity(t) / 365250.0
   temp(3)=vsop87_micro_mercury_k_velocity(t) / 365250.0
   temp(4)=vsop87_micro_mercury_h_velocity(t) / 365250.0
   temp(5)=vsop87_micro_mercury_q_velocity(t) / 365250.0
   temp(6)=vsop87_micro_mercury_p_velocity(t) / 365250.0

   vsop87_micro_getMercury = temp
end function

function vsop87_micro_getVenus(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_micro_venus_a_velocity(t) / 365250.0
   temp(2)=vsop87_micro_venus_l_velocity(t) / 365250.0
   temp(3)=vsop87_micro_venus_k_velocity(t) / 365250.0
   temp(4)=vsop87_micro_venus_h_velocity(t) / 365250.0
   temp(5)=vsop87_micro_venus_q_velocity(t) / 365250.0
   temp(6)=vsop87_micro_venus_p_velocity(t) / 365250.0

   vsop87_micro_getVenus = temp
end function

function vsop87_micro_getEmb(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_micro_emb_a_velocity(t) / 365250.0
   temp(2)=vsop87_micro_emb_l_velocity(t) / 365250.0
   temp(3)=vsop87_micro_emb_k_velocity(t) / 365250.0
   temp(4)=vsop87_micro_emb_h_velocity(t) / 365250.0
   temp(5)=vsop87_micro_emb_q_velocity(t) / 365250.0
   temp(6)=vsop87_micro_emb_p_velocity(t) / 365250.0

   vsop87_micro_getEmb = temp
end function

function vsop87_micro_getMars(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_micro_mars_a_velocity(t) / 365250.0
   temp(2)=vsop87_micro_mars_l_velocity(t) / 365250.0
   temp(3)=vsop87_micro_mars_k_velocity(t) / 365250.0
   temp(4)=vsop87_micro_mars_h_velocity(t) / 365250.0
   temp(5)=vsop87_micro_mars_q_velocity(t) / 365250.0
   temp(6)=vsop87_micro_mars_p_velocity(t) / 365250.0

   vsop87_micro_getMars = temp
end function

function vsop87_micro_getJupiter(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_micro_jupiter_a_velocity(t) / 365250.0
   temp(2)=vsop87_micro_jupiter_l_velocity(t) / 365250.0
   temp(3)=vsop87_micro_jupiter_k_velocity(t) / 365250.0
   temp(4)=vsop87_micro_jupiter_h_velocity(t) / 365250.0
   temp(5)=vsop87_micro_jupiter_q_velocity(t) / 365250.0
   temp(6)=vsop87_micro_jupiter_p_velocity(t) / 365250.0

   vsop87_micro_getJupiter = temp
end function

function vsop87_micro_getSaturn(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_micro_saturn_a_velocity(t) / 365250.0
   temp(2)=vsop87_micro_saturn_l_velocity(t) / 365250.0
   temp(3)=vsop87_micro_saturn_k_velocity(t) / 365250.0
   temp(4)=vsop87_micro_saturn_h_velocity(t) / 365250.0
   temp(5)=vsop87_micro_saturn_q_velocity(t) / 365250.0
   temp(6)=vsop87_micro_saturn_p_velocity(t) / 365250.0

   vsop87_micro_getSaturn = temp
end function

function vsop87_micro_getUranus(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_micro_uranus_a_velocity(t) / 365250.0
   temp(2)=vsop87_micro_uranus_l_velocity(t) / 365250.0
   temp(3)=vsop87_micro_uranus_k_velocity(t) / 365250.0
   temp(4)=vsop87_micro_uranus_h_velocity(t) / 365250.0
   temp(5)=vsop87_micro_uranus_q_velocity(t) / 365250.0
   temp(6)=vsop87_micro_uranus_p_velocity(t) / 365250.0

   vsop87_micro_getUranus = temp
end function

function vsop87_micro_getNeptune(t as Double) as Variant
   dim temp(6)
   temp(1)=vsop87_micro_neptune_a_velocity(t) / 365250.0
   temp(2)=vsop87_micro_neptune_l_velocity(t) / 365250.0
   temp(3)=vsop87_micro_neptune_k_velocity(t) / 365250.0
   temp(4)=vsop87_micro_neptune_h_velocity(t) / 365250.0
   temp(5)=vsop87_micro_neptune_q_velocity(t) / 365250.0
   temp(6)=vsop87_micro_neptune_p_velocity(t) / 365250.0

   vsop87_micro_getNeptune = temp
end function

function vsop87_micro_venus_p_velocity(t as Double)
   dim venus_p_1 as Double
   venus_p_1 = 0.0

   venus_p_1 = venus_p_1 + pow(t,0) * 1 *      0.00040384791 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.00040384791 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim venus_p_0 as Double
   venus_p_0 = 0.0

   venus_p_0 = venus_p_0 -1 *      0.02882285775 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_venus_p_velocity = venus_p_1+venus_p_0
end function

function vsop87_micro_venus_q_velocity(t as Double)
   dim venus_q_1 as Double
   venus_q_1 = 0.0

   venus_q_1 = venus_q_1 + pow(t,0) * 1 *      0.00138133826 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *      0.00138133826 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim venus_q_0 as Double
   venus_q_0 = 0.0

   venus_q_0 = venus_q_0 -1 *      0.00682410142 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_venus_q_velocity = venus_q_1+venus_q_0
end function

function vsop87_micro_venus_h_velocity(t as Double)
   dim venus_h_1 as Double
   venus_h_1 = 0.0

   venus_h_1 = venus_h_1 + pow(t,0) * 1 *      0.00036121239 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.00036121239 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim venus_h_0 as Double
   venus_h_0 = 0.0

   venus_h_0 = venus_h_0 -1 *      0.00506684726 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_venus_h_velocity = venus_h_1+venus_h_0
end function

function vsop87_micro_venus_k_velocity(t as Double)
   dim venus_k_1 as Double
   venus_k_1 = 0.0

   venus_k_1 = venus_k_1 + pow(t,0) * 1 *      0.00031259019 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *      0.00031259019 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim venus_k_0 as Double
   venus_k_0 = 0.0

   venus_k_0 = venus_k_0 -1 *      0.00449282133 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   vsop87_micro_venus_k_velocity = venus_k_1+venus_k_0
end function

function vsop87_micro_venus_l_velocity(t as Double)
   dim venus_l_1 as Double
   venus_l_1 = 0.0

   venus_l_1 = venus_l_1 + pow(t,0) * 1 *  10213.28554621100 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *  10213.28554621100 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim venus_l_0 as Double
   venus_l_0 = 0.0

   venus_l_0 = venus_l_0 -1 *      3.17614669689 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_venus_l_velocity = venus_l_1+venus_l_0
end function

function vsop87_micro_venus_a_velocity(t as Double)
   dim venus_a_0 as Double
   venus_a_0 = 0.0

   venus_a_0 = venus_a_0 -1 *      0.72332981996 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_venus_a_velocity = venus_a_0
end function

function vsop87_micro_uranus_p_velocity(t as Double)
   dim uranus_p_1 as Double
   uranus_p_1 = 0.0

   uranus_p_1 = uranus_p_1 + pow(t,0) * 1 *      0.00011744733 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.00011744733 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim uranus_p_0 as Double
   uranus_p_0 = 0.0

   uranus_p_0 = uranus_p_0 -1 *      0.00648617008 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_uranus_p_velocity = uranus_p_1+uranus_p_0
end function

function vsop87_micro_uranus_q_velocity(t as Double)
   dim uranus_q_1 as Double
   uranus_q_1 = 0.0

   uranus_q_1 = uranus_q_1 + pow(t,0) * 1 *      0.00012449382 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.00012449382 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim uranus_q_0 as Double
   uranus_q_0 = 0.0

   uranus_q_0 = uranus_q_0 -1 *      0.00185915075 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_uranus_q_velocity = uranus_q_1+uranus_q_0
end function

function vsop87_micro_uranus_h_velocity(t as Double)
   dim uranus_h_1 as Double
   uranus_h_1 = 0.0

   uranus_h_1 = uranus_h_1 + pow(t,0) * 1 *      0.00074964350 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.00074964350 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim uranus_h_0 as Double
   uranus_h_0 = 0.0

   uranus_h_0 = uranus_h_0 -1 *      0.00013315732 *     1059.38193018920 * sin( 5.66170904346 +     1059.38193018920*t)
   uranus_h_0 = uranus_h_0 -1 *      0.00014988819 *        2.96894541660 * sin( 5.47840346834 +        2.96894541660*t)
   uranus_h_0 = uranus_h_0 -1 *      0.00028214307 *       63.73589830340 * sin( 4.05785385739 +       63.73589830340*t)
   uranus_h_0 = uranus_h_0 -1 *      0.00025966791 *       11.04570026390 * sin( 3.35174050484 +       11.04570026390*t)
   uranus_h_0 = uranus_h_0 -1 *      0.00061308823 *      213.29909543800 * sin( 5.58629337039 +      213.29909543800*t)
   uranus_h_0 = uranus_h_0 -1 *      0.00116288289 *      380.12776796000 * sin( 3.77434233468 +      380.12776796000*t)
   uranus_h_0 = uranus_h_0 -1 *      0.00136132837 *       74.78159856730 * sin( 3.91136489012 +       74.78159856730*t)
   uranus_h_0 = uranus_h_0 -1 *      0.00210407426 *        1.48447270830 * sin( 0.42744224313 +        1.48447270830*t)
   uranus_h_0 = uranus_h_0 -1 *      0.00274676149 *      529.69096509460 * sin( 5.31178834743 +      529.69096509460*t)
   uranus_h_0 = uranus_h_0 -1 *      0.00563791307 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_uranus_h_velocity = uranus_h_1+uranus_h_0
end function

function vsop87_micro_uranus_k_velocity(t as Double)
   dim uranus_k_1 as Double
   uranus_k_1 = 0.0

   uranus_k_1 = uranus_k_1 + pow(t,0) * 1 *      0.00018344115 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *      0.00018344115 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim uranus_k_0 as Double
   uranus_k_0 = 0.0

   uranus_k_0 = uranus_k_0 -1 *      0.00013311384 *     1059.38193018920 * sin( 0.94943515364 +     1059.38193018920*t)
   uranus_k_0 = uranus_k_0 -1 *      0.00015021315 *        2.96894541660 * sin( 0.76594621932 +        2.96894541660*t)
   uranus_k_0 = uranus_k_0 -1 *      0.00028383762 *       63.73589830340 * sin( 2.48454325825 +       63.73589830340*t)
   uranus_k_0 = uranus_k_0 -1 *      0.00025955084 *       11.04570026390 * sin( 4.91660280043 +       11.04570026390*t)
   uranus_k_0 = uranus_k_0 -1 *      0.00061367654 *      213.29909543800 * sin( 0.87377399008 +      213.29909543800*t)
   uranus_k_0 = uranus_k_0 -1 *      0.00116379910 *      380.12776796000 * sin( 2.20321839185 +      380.12776796000*t)
   uranus_k_0 = uranus_k_0 -1 *      0.00136013862 *       74.78159856730 * sin( 5.48189691557 +       74.78159856730*t)
   uranus_k_0 = uranus_k_0 -1 *      0.00209611522 *        1.48447270830 * sin( 1.99913587697 +        1.48447270830*t)
   uranus_k_0 = uranus_k_0 -1 *      0.00274532742 *      529.69096509460 * sin( 0.59960944961 +      529.69096509460*t)
   uranus_k_0 = uranus_k_0 -1 *      0.04595132376 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   vsop87_micro_uranus_k_velocity = uranus_k_1+uranus_k_0
end function

function vsop87_micro_uranus_l_velocity(t as Double)
   dim uranus_l_1 as Double
   uranus_l_1 = 0.0

   uranus_l_1 = uranus_l_1 + pow(t,0) * 1 *      0.00024451511 * cos( 1.71261369505 +        1.48447270830*t) - pow(t,1) *      0.00024451511 *        1.48447270830 * sin( 1.71261369505 +        1.48447270830*t)
   uranus_l_1 = uranus_l_1 + pow(t,0) * 1 *     74.78159856730 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *     74.78159856730 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim uranus_l_0 as Double
   uranus_l_0 = 0.0

   uranus_l_0 = uranus_l_0 -1 *      0.00012930477 *      277.03499374140 * sin( 1.77673119432 +      277.03499374140*t)
   uranus_l_0 = uranus_l_0 -1 *      0.00013047912 *       36.64856292950 * sin( 1.74402938964 +       36.64856292950*t)
   uranus_l_0 = uranus_l_0 -1 *      0.00014437567 *       73.29712585900 * sin( 1.91368590597 +       73.29712585900*t)
   uranus_l_0 = uranus_l_0 -1 *      0.00014543819 *        3.93215326310 * sin( 4.73644575760 +        3.93215326310*t)
   uranus_l_0 = uranus_l_0 -1 *      0.00016468518 *       63.73589830340 * sin( 5.36717518314 +       63.73589830340*t)
   uranus_l_0 = uranus_l_0 -1 *      0.00017129222 *      984.60033162190 * sin( 0.18104766503 +      984.60033162190*t)
   uranus_l_0 = uranus_l_0 -1 *      0.00018867012 *      529.69096509460 * sin( 5.43708395337 +      529.69096509460*t)
   uranus_l_0 = uranus_l_0 -1 *      0.00059722283 *       11.04570026390 * sin( 2.84455045894 +       11.04570026390*t)
   uranus_l_0 = uranus_l_0 -1 *      0.00061937506 *        2.96894541660 * sin( 2.26973190883 +        2.96894541660*t)
   uranus_l_0 = uranus_l_0 -1 *      0.00075571550 *      138.51749687070 * sin( 0.10254572902 +      138.51749687070*t)
   uranus_l_0 = uranus_l_0 -1 *      0.00341045477 *      454.90936652730 * sin( 6.11377091373 +      454.90936652730*t)
   uranus_l_0 = uranus_l_0 -1 *      0.01503941337 *        1.48447270830 * sin( 3.62721239702 +        1.48447270830*t)
   uranus_l_0 = uranus_l_0 -1 *      5.48129387159 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_uranus_l_velocity = uranus_l_1+uranus_l_0
end function

function vsop87_micro_uranus_a_velocity(t as Double)
   dim uranus_a_1 as Double
   uranus_a_1 = 0.0

   uranus_a_1 = uranus_a_1 + pow(t,0) * 1 *      0.00011411513 * cos( 0.08109503303 +       63.73589830340*t) - pow(t,1) *      0.00011411513 *       63.73589830340 * sin( 0.08109503303 +       63.73589830340*t)
   uranus_a_1 = uranus_a_1 + pow(t,0) * 1 *      0.00012155731 * cos( 5.07129450662 +      351.81659230870*t) - pow(t,1) *      0.00012155731 *      351.81659230870 * sin( 5.07129450662 +      351.81659230870*t)
   uranus_a_1 = uranus_a_1 + pow(t,0) * 1 *      0.00018428974 * cos( 0.90876002089 +      984.60033162190*t) - pow(t,1) *      0.00018428974 *      984.60033162190 * sin( 0.90876002089 +      984.60033162190*t)
   uranus_a_1 = uranus_a_1 + pow(t,0) * 1 *      0.00018892174 * cos( 5.14166599806 +       11.04570026390*t) - pow(t,1) *      0.00018892174 *       11.04570026390 * sin( 5.14166599806 +       11.04570026390*t)

   dim uranus_a_0 as Double
   uranus_a_0 = 0.0

   uranus_a_0 = uranus_a_0 -1 *      0.00011334332 *      316.39186965660 * sin( 5.97963560630 +      316.39186965660*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00011013560 *      835.03713448730 * sin( 3.54307351200 +      835.03713448730*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00011020208 *        3.93215326310 * sin( 3.19000442755 +        3.93215326310*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00013077660 *      381.61224066830 * sin( 4.23675214362 +      381.61224066830*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00012687891 *       71.81265315070 * sin( 1.58735697797 +       71.81265315070*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00010515353 *      479.28838891550 * sin( 1.70301075392 +      479.28838891550*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00015159970 *      137.03302416240 * sin( 2.76239188887 +      137.03302416240*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00014478423 *      131.40394986990 * sin( 4.94983129790 +      131.40394986990*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00015930221 *      140.00196957900 * sin( 3.73134883667 +      140.00196957900*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00014762015 *      145.63104387150 * sin( 1.55212266318 +      145.63104387150*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00016880093 *      183.24281464750 * sin( 0.84798058480 +      183.24281464750*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00012998808 *      127.47179660680 * sin( 2.85105295526 +      127.47179660680*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00021559916 *      554.06998748280 * sin( 3.58530830565 +      554.06998748280*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00018767795 *      149.56319713460 * sin( 4.43338724151 +      149.56319713460*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00020141604 *      305.34616939270 * sin( 2.67711439002 +      305.34616939270*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00023034340 *      462.02291352810 * sin( 4.41961897942 +      462.02291352810*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00022997542 *      447.79581952650 * sin( 1.53103267798 +      447.79581952650*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00019478270 *     1514.29129671650 * sin( 2.10041390560 +     1514.29129671650*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00021391939 *      340.77089204480 * sin( 0.02845030511 +      340.77089204480*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00029696881 *      146.59425171800 * sin( 0.67903436338 +      146.59425171800*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00028704578 *       35.16409022120 * sin( 1.39041828806 +       35.16409022120*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00036972301 *       36.64856292950 * sin( 0.17475135689 +       36.64856292950*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00032917894 *        2.96894541660 * sin( 0.70483800006 +        2.96894541660*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00034892404 *      909.81873305460 * sin( 5.75418250485 +      909.81873305460*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00048838076 *    10138.50394764370 * sin( 3.97801797335 +    10138.50394764370*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00050469671 *      415.55249061210 * sin( 1.89418222433 +      415.55249061210*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00051844499 *     6208.29425142410 * sin( 2.55536031544 +     6208.29425142410*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00053293996 *      109.94568878850 * sin( 0.50995644390 +      109.94568878850*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00058841165 *      453.42489381900 * sin( 2.48705383463 +      453.42489381900*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00045935079 *      202.25339517410 * sin( 4.64286711150 +      202.25339517410*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00061920970 *      456.39383923560 * sin( 3.45818087920 +      456.39383923560*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00090078269 *       73.29712585900 * sin( 0.33585778387 +       73.29712585900*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00102755162 *      351.81659230870 * sin( 0.89451486294 +      351.81659230870*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00120436873 *      277.03499374140 * sin( 0.15931700196 +      277.03499374140*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00124336026 *       11.04570026390 * sin( 1.34101096123 +       11.04570026390*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00148020073 *       63.73589830340 * sin( 4.84763548983 +       63.73589830340*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00313720406 *       74.78159856730 * sin( 2.19852745462 +       74.78159856730*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00391818405 *        1.48447270830 * sin( 2.05935807638 +        1.48447270830*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00365190162 *      984.60033162190 * sin( 1.75064255586 +      984.60033162190*t)
   uranus_a_0 = uranus_a_0 -1 *      0.00406413575 *      380.12776796000 * sin( 5.21303965129 +      380.12776796000*t)
   uranus_a_0 = uranus_a_0 -1 *      0.02068375131 *      138.51749687070 * sin( 1.67626096637 +      138.51749687070*t)
   uranus_a_0 = uranus_a_0 -1 *      0.08030476240 *      454.90936652730 * sin( 1.40140954803 +      454.90936652730*t)
   uranus_a_0 = uranus_a_0 -1 *     19.21844606178 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_uranus_a_velocity = uranus_a_1+uranus_a_0
end function

function vsop87_micro_saturn_p_velocity(t as Double)
   dim saturn_p_1 as Double
   saturn_p_1 = 0.0

   saturn_p_1 = saturn_p_1 + pow(t,0) * 1 *      0.00059439766 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *      0.00059439766 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim saturn_p_0 as Double
   saturn_p_0 = 0.0

   saturn_p_0 = saturn_p_0 -1 *      0.01989147301 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_saturn_p_velocity = saturn_p_1+saturn_p_0
end function

function vsop87_micro_saturn_q_velocity(t as Double)
   dim saturn_q_1 as Double
   saturn_q_1 = 0.0

   saturn_q_1 = saturn_q_1 + pow(t,0) * 1 *      0.00080171499 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *      0.00080171499 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim saturn_q_0 as Double
   saturn_q_0 = 0.0

   saturn_q_0 = saturn_q_0 -1 *      0.00871747436 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   vsop87_micro_saturn_q_velocity = saturn_q_1+saturn_q_0
end function

function vsop87_micro_saturn_h_velocity(t as Double)
   dim saturn_h_2 as Double
   saturn_h_2 = 0.0

   saturn_h_2 = saturn_h_2 + pow(t,1) * 2 *      0.00031990236 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,2) *      0.00031990236 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim saturn_h_1 as Double
   saturn_h_1 = 0.0

   saturn_h_1 = saturn_h_1 + pow(t,0) * 1 *      0.00041501368 * cos( 1.90158625579 +        7.11354700080*t) - pow(t,1) *      0.00041501368 *        7.11354700080 * sin( 1.90158625579 +        7.11354700080*t)
   saturn_h_1 = saturn_h_1 + pow(t,0) * 1 *      0.00375593887 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.00375593887 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim saturn_h_0 as Double
   saturn_h_0 = 0.0

   saturn_h_0 = saturn_h_0 -1 *      0.00016256954 *      735.87651353180 * sin( 3.02503473426 +      735.87651353180*t)
   saturn_h_0 = saturn_h_0 -1 *      0.00026520042 *      206.18554843720 * sin( 4.52478837442 +      206.18554843720*t)
   saturn_h_0 = saturn_h_0 -1 *      0.00032981260 *      110.20632121940 * sin( 4.13131540179 +      110.20632121940*t)
   saturn_h_0 = saturn_h_0 -1 *      0.00044695611 *      419.48464387520 * sin( 3.26423001884 +      419.48464387520*t)
   saturn_h_0 = saturn_h_0 -1 *      0.00068728896 *      103.09277421860 * sin( 0.46796586407 +      103.09277421860*t)
   saturn_h_0 = saturn_h_0 -1 *      0.00124537423 *      213.29909543800 * sin( 5.60295505720 +      213.29909543800*t)
   saturn_h_0 = saturn_h_0 -1 *      0.00196887619 *      529.69096509460 * sin( 5.31528897782 +      529.69096509460*t)
   saturn_h_0 = saturn_h_0 -1 *      0.00154553684 *        7.11354700080 * sin( 3.59447132230 +        7.11354700080*t)
   saturn_h_0 = saturn_h_0 -1 *      0.05542964254 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_saturn_h_velocity = saturn_h_2+saturn_h_1+saturn_h_0
end function

function vsop87_micro_saturn_k_velocity(t as Double)
   dim saturn_k_2 as Double
   saturn_k_2 = 0.0

   saturn_k_2 = saturn_k_2 + pow(t,1) * 2 *      0.00030928405 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,2) *      0.00030928405 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim saturn_k_1 as Double
   saturn_k_1 = 0.0

   saturn_k_1 = saturn_k_1 + pow(t,0) * 1 *      0.00041825363 * cos( 3.46891617076 +        7.11354700080*t) - pow(t,1) *      0.00041825363 *        7.11354700080 * sin( 3.46891617076 +        7.11354700080*t)
   saturn_k_1 = saturn_k_1 + pow(t,0) * 1 *      0.00529602626 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.00529602626 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim saturn_k_0 as Double
   saturn_k_0 = 0.0

   saturn_k_0 = saturn_k_0 -1 *      0.00012474180 *      316.39186965660 * sin( 1.09305375439 +      316.39186965660*t)
   saturn_k_0 = saturn_k_0 -1 *      0.00016225491 *      735.87651353180 * sin( 1.42799166910 +      735.87651353180*t)
   saturn_k_0 = saturn_k_0 -1 *      0.00027272443 *      206.18554843720 * sin( 3.00890883920 +      206.18554843720*t)
   saturn_k_0 = saturn_k_0 -1 *      0.00031292923 *      110.20632121940 * sin( 5.75285406117 +      110.20632121940*t)
   saturn_k_0 = saturn_k_0 -1 *      0.00045181084 *      419.48464387520 * sin( 1.69923556056 +      419.48464387520*t)
   saturn_k_0 = saturn_k_0 -1 *      0.00065050158 *      103.09277421860 * sin( 5.14656256627 +      103.09277421860*t)
   saturn_k_0 = saturn_k_0 -1 *      0.00126322249 *      213.29909543800 * sin( 0.86230560136 +      213.29909543800*t)
   saturn_k_0 = saturn_k_0 -1 *      0.00197268763 *      529.69096509460 * sin( 0.59616692002 +      529.69096509460*t)
   saturn_k_0 = saturn_k_0 -1 *      0.00155326496 *        7.11354700080 * sin( 5.16402515606 +        7.11354700080*t)
   saturn_k_0 = saturn_k_0 -1 *      0.00296003595 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   vsop87_micro_saturn_k_velocity = saturn_k_2+saturn_k_1+saturn_k_0
end function

function vsop87_micro_saturn_l_velocity(t as Double)
   dim saturn_l_3 as Double
   saturn_l_3 = 0.0

   saturn_l_3 = saturn_l_3 + pow(t,2) * 3 *      0.00016010484 * cos( 5.73932776276 +        7.11354700080*t) - pow(t,3) *      0.00016010484 *        7.11354700080 * sin( 5.73932776276 +        7.11354700080*t)

   dim saturn_l_2 as Double
   saturn_l_2 = 0.0

   saturn_l_2 = saturn_l_2 + pow(t,1) * 2 *      0.00036659741 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,2) *      0.00036659741 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)
   saturn_l_2 = saturn_l_2 + pow(t,1) * 2 *      0.00116235667 * cos( 1.17971682406 +        7.11354700080*t) - pow(t,2) *      0.00116235667 *        7.11354700080 * sin( 1.17971682406 +        7.11354700080*t)

   dim saturn_l_1 as Double
   saturn_l_1 = 0.0

   saturn_l_1 = saturn_l_1 + pow(t,0) * 1 *      0.00010437362 * cos( 2.74781046876 +       14.22709400160*t) - pow(t,1) *      0.00010437362 *       14.22709400160 * sin( 2.74781046876 +       14.22709400160*t)
   saturn_l_1 = saturn_l_1 + pow(t,0) * 1 *      0.00014171331 * cos( 1.28319722079 +      103.09277421860*t) - pow(t,1) *      0.00014171331 *      103.09277421860 * sin( 1.28319722079 +      103.09277421860*t)
   saturn_l_1 = saturn_l_1 + pow(t,0) * 1 *      0.00563352798 * cos( 2.88478561660 +        7.11354700080*t) - pow(t,1) *      0.00563352798 *        7.11354700080 * sin( 2.88478561660 +        7.11354700080*t)
   saturn_l_1 = saturn_l_1 + pow(t,0) * 1 *    213.29909543800 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *    213.29909543800 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim saturn_l_0 as Double
   saturn_l_0 = 0.0

   saturn_l_0 = saturn_l_0 -1 *      0.00011053979 *     1265.56747862640 * sin( 3.62184165245 +     1265.56747862640*t)
   saturn_l_0 = saturn_l_0 -1 *      0.00010143831 *      846.08283475120 * sin( 4.81233412109 +      846.08283475120*t)
   saturn_l_0 = saturn_l_0 -1 *      0.00012994507 *       11.04570026390 * sin( 5.98000018071 +       11.04570026390*t)
   saturn_l_0 = saturn_l_0 -1 *      0.00012172375 *      213.29909543800 * sin( 2.85599565676 +      213.29909543800*t)
   saturn_l_0 = saturn_l_0 -1 *      0.00013067003 *       14.22709400160 * sin( 4.44777987188 +       14.22709400160*t)
   saturn_l_0 = saturn_l_0 -1 *      0.00014601573 *        3.93215326310 * sin( 1.56514416532 +        3.93215326310*t)
   saturn_l_0 = saturn_l_0 -1 *      0.00012249591 *      735.87651353180 * sin( 5.17809413714 +      735.87651353180*t)
   saturn_l_0 = saturn_l_0 -1 *      0.00014648090 *      529.69096509460 * sin( 0.80489143062 +      529.69096509460*t)
   saturn_l_0 = saturn_l_0 -1 *      0.00012478276 *      110.20632121940 * sin( 4.43427037492 +      110.20632121940*t)
   saturn_l_0 = saturn_l_0 -1 *      0.00016678500 *      206.18554843720 * sin( 0.46554866763 +      206.18554843720*t)
   saturn_l_0 = saturn_l_0 -1 *      0.00026548090 *      949.17560896980 * sin( 3.88757160092 +      949.17560896980*t)
   saturn_l_0 = saturn_l_0 -1 *      0.00031452707 *      419.48464387520 * sin( 5.46081855509 +      419.48464387520*t)
   saturn_l_0 = saturn_l_0 -1 *      0.00071179955 *      632.78373931320 * sin( 4.15641496284 +      632.78373931320*t)
   saturn_l_0 = saturn_l_0 -1 *      0.00149861955 *      103.09277421860 * sin( 0.26851062811 +      103.09277421860*t)
   saturn_l_0 = saturn_l_0 -1 *      0.00259784547 *      316.39186965660 * sin( 4.43343036691 +      316.39186965660*t)
   saturn_l_0 = saturn_l_0 -1 *      0.01411655077 *        7.11354700080 * sin( 4.58553469006 +        7.11354700080*t)
   saturn_l_0 = saturn_l_0 -1 *      0.87401675650 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_saturn_l_velocity = saturn_l_3+saturn_l_2+saturn_l_1+saturn_l_0
end function

function vsop87_micro_saturn_a_velocity(t as Double)
   dim saturn_a_2 as Double
   saturn_a_2 = 0.0

   saturn_a_2 = saturn_a_2 + pow(t,1) * 2 *      0.00023754277 * cos( 5.89931397638 +        7.11354700080*t) - pow(t,2) *      0.00023754277 *        7.11354700080 * sin( 5.89931397638 +        7.11354700080*t)

   dim saturn_a_1 as Double
   saturn_a_1 = 0.0

   saturn_a_1 = saturn_a_1 + pow(t,0) * 1 *      0.00014543221 * cos( 0.53828819496 +      206.18554843720*t) - pow(t,1) *      0.00014543221 *      206.18554843720 * sin( 0.53828819496 +      206.18554843720*t)
   saturn_a_1 = saturn_a_1 + pow(t,0) * 1 *      0.00014944585 * cos( 1.01717765228 +      323.50541665740*t) - pow(t,1) *      0.00014944585 *      323.50541665740 * sin( 1.01717765228 +      323.50541665740*t)
   saturn_a_1 = saturn_a_1 + pow(t,0) * 1 *      0.00016133051 * cos( 1.54311529056 +      309.27832265580*t) - pow(t,1) *      0.00016133051 *      309.27832265580 * sin( 1.54311529056 +      309.27832265580*t)
   saturn_a_1 = saturn_a_1 + pow(t,0) * 1 *      0.00017963494 * cos( 1.85653949491 +      110.20632121940*t) - pow(t,1) *      0.00017963494 *      110.20632121940 * sin( 1.85653949491 +      110.20632121940*t)
   saturn_a_1 = saturn_a_1 + pow(t,0) * 1 *      0.00019395929 * cos( 3.30487092881 +      213.29909543800*t) - pow(t,1) *      0.00019395929 *      213.29909543800 * sin( 3.30487092881 +      213.29909543800*t)
   saturn_a_1 = saturn_a_1 + pow(t,0) * 1 *      0.00020477409 * cos( 5.54887034001 +      419.48464387520*t) - pow(t,1) *      0.00020477409 *      419.48464387520 * sin( 5.54887034001 +      419.48464387520*t)
   saturn_a_1 = saturn_a_1 + pow(t,0) * 1 *      0.00115108584 * cos( 1.31913907888 +        7.11354700080*t) - pow(t,1) *      0.00115108584 *        7.11354700080 * sin( 1.31913907888 +        7.11354700080*t)

   dim saturn_a_0 as Double
   saturn_a_0 = 0.0

   saturn_a_0 = saturn_a_0 -1 *      0.00013277748 *      277.03499374140 * sin( 3.34520712627 +      277.03499374140*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00011535604 *     1685.05212250160 * sin( 2.74021432418 +     1685.05212250160*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00015605088 *     1898.35121793960 * sin( 1.55158323786 +     1898.35121793960*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00017342295 *     9999.98645077300 * sin( 2.30290130287 +     9999.98645077300*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00013849443 *      838.96928775040 * sin( 4.65107330724 +      838.96928775040*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00018549188 *     6069.77675455340 * sin( 0.87944999842 +     6069.77675455340*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00020860007 *     1368.66025284500 * sin( 3.01028862668 +     1368.66025284500*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00024471393 *      522.57741809380 * sin( 4.81178790264 +      522.57741809380*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00032196433 *     1581.95934828300 * sin( 1.80319862777 +     1581.95934828300*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00037861360 *      323.50541665740 * sin( 2.71073622362 +      323.50541665740*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00040372154 *      309.27832265580 * sin( 6.12336876226 +      309.27832265580*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00038450594 *     1052.26838318840 * sin( 3.28109764968 +     1052.26838318840*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00067160409 *     1265.56747862640 * sin( 2.06145646779 +     1265.56747862640*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00054284469 *      206.18554843720 * sin( 5.12517048023 +      206.18554843720*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00081821669 *      110.20632121940 * sin( 3.45006412768 +      110.20632121940*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00073412340 *      735.87651353180 * sin( 3.55846055429 +      735.87651353180*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00142075017 *      949.17560896980 * sin( 2.32273369924 +      949.17560896980*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00146816895 *      846.08283475120 * sin( 0.07437685257 +      846.08283475120*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00143605062 *      213.29909543800 * sin( 4.85917505070 +      213.29909543800*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00149912686 *      419.48464387520 * sin( 3.86270340354 +      419.48464387520*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00308461590 *      632.78373931320 * sin( 2.55488166399 +      632.78373931320*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00289062242 *        7.11354700080 * sin( 3.01816520038 +        7.11354700080*t)
   saturn_a_0 = saturn_a_0 -1 *      0.00354492417 *      103.09277421860 * sin( 5.81482665415 +      103.09277421860*t)
   saturn_a_0 = saturn_a_0 -1 *      0.03363448736 *      316.39186965660 * sin( 6.00973673460 +      316.39186965660*t)
   saturn_a_0 = saturn_a_0 -1 *      9.55490959574 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_saturn_a_velocity = saturn_a_2+saturn_a_1+saturn_a_0
end function

function vsop87_micro_neptune_p_velocity(t as Double)
   dim neptune_p_0 as Double
   neptune_p_0 = 0.0

   neptune_p_0 = neptune_p_0 -1 *      0.01151683985 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_neptune_p_velocity = neptune_p_0
end function

function vsop87_micro_neptune_q_velocity(t as Double)
   dim neptune_q_0 as Double
   neptune_q_0 = 0.0

   neptune_q_0 = neptune_q_0 -1 *      0.01029147819 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   vsop87_micro_neptune_q_velocity = neptune_q_0
end function

function vsop87_micro_neptune_h_velocity(t as Double)
   dim neptune_h_0 as Double
   neptune_h_0 = 0.0

   neptune_h_0 = neptune_h_0 -1 *      0.00015834646 *        2.96894541660 * sin( 2.35068672532 +        2.96894541660*t)
   neptune_h_0 = neptune_h_0 -1 *      0.00016671327 *     1059.38193018920 * sin( 5.66175544286 +     1059.38193018920*t)
   neptune_h_0 = neptune_h_0 -1 *      0.00034070791 *      137.03302416240 * sin( 4.38749299404 +      137.03302416240*t)
   neptune_h_0 = neptune_h_0 -1 *      0.00059736086 *        1.48447270830 * sin( 3.56479788019 +        1.48447270830*t)
   neptune_h_0 = neptune_h_0 -1 *      0.00076068364 *      213.29909543800 * sin( 5.58664660018 +      213.29909543800*t)
   neptune_h_0 = neptune_h_0 -1 *      0.00131043136 *      453.42489381900 * sin( 4.11313570675 +      453.42489381900*t)
   neptune_h_0 = neptune_h_0 -1 *      0.00136278888 *       38.13303563780 * sin( 3.74103613444 +       38.13303563780*t)
   neptune_h_0 = neptune_h_0 -1 *      0.00344034784 *      529.69096509460 * sin( 5.31201105782 +      529.69096509460*t)
   neptune_h_0 = neptune_h_0 -1 *      0.00669242413 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_neptune_h_velocity = neptune_h_0
end function

function vsop87_micro_neptune_k_velocity(t as Double)
   dim neptune_k_0 as Double
   neptune_k_0 = 0.0

   neptune_k_0 = neptune_k_0 -1 *      0.00015893727 *        2.96894541660 * sin( 3.92171062449 +        2.96894541660*t)
   neptune_k_0 = neptune_k_0 -1 *      0.00016663303 *     1059.38193018920 * sin( 0.94954464976 +     1059.38193018920*t)
   neptune_k_0 = neptune_k_0 -1 *      0.00034074986 *      137.03302416240 * sin( 2.81681245358 +      137.03302416240*t)
   neptune_k_0 = neptune_k_0 -1 *      0.00059960933 *        1.48447270830 * sin( 5.13746031010 +        1.48447270830*t)
   neptune_k_0 = neptune_k_0 -1 *      0.00076137558 *      213.29909543800 * sin( 0.87421757435 +      213.29909543800*t)
   neptune_k_0 = neptune_k_0 -1 *      0.00131042161 *      453.42489381900 * sin( 2.54238248127 +      453.42489381900*t)
   neptune_k_0 = neptune_k_0 -1 *      0.00136232980 *       38.13303563780 * sin( 5.31190360139 +       38.13303563780*t)
   neptune_k_0 = neptune_k_0 -1 *      0.00343810387 *      529.69096509460 * sin( 0.59989432818 +      529.69096509460*t)
   neptune_k_0 = neptune_k_0 -1 *      0.00599977571 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_neptune_k_velocity = neptune_k_0
end function

function vsop87_micro_neptune_l_velocity(t as Double)
   dim neptune_l_1 as Double
   neptune_l_1 = 0.0

   neptune_l_1 = neptune_l_1 + pow(t,0) * 1 *      0.00016569412 * cos( 4.86311838543 +        1.48447270830*t) - pow(t,1) *      0.00016569412 *        1.48447270830 * sin( 4.86311838543 +        1.48447270830*t)
   neptune_l_1 = neptune_l_1 + pow(t,0) * 1 *     38.13303563780 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *     38.13303563780 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim neptune_l_0 as Double
   neptune_l_0 = 0.0

   neptune_l_0 = neptune_l_0 -1 *      0.00016297466 *       36.64856292950 * sin( 4.88440388945 +       36.64856292950*t)
   neptune_l_0 = neptune_l_0 -1 *      0.00021806166 *     1021.24889455140 * sin( 0.34972092081 +     1021.24889455140*t)
   neptune_l_0 = neptune_l_0 -1 *      0.00041703723 *        2.96894541660 * sin( 5.41098453927 +        2.96894541660*t)
   neptune_l_0 = neptune_l_0 -1 *      0.00092919548 *      175.16605980020 * sin( 0.27470534254 +      175.16605980020*t)
   neptune_l_0 = neptune_l_0 -1 *      0.00441710236 *      491.55792945680 * sin( 0.00020868462 +      491.55792945680*t)
   neptune_l_0 = neptune_l_0 -1 *      0.01017628072 *        1.48447270830 * sin( 0.48586478491 +        1.48447270830*t)
   neptune_l_0 = neptune_l_0 -1 *      5.31188628676 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_neptune_l_velocity = neptune_l_1+neptune_l_0
end function

function vsop87_micro_neptune_a_velocity(t as Double)
   dim neptune_a_1 as Double
   neptune_a_1 = 0.0

   neptune_a_1 = neptune_a_1 + pow(t,0) * 1 *      0.00010028658 * cos( 0.53331428424 +      168.05251279940*t) - pow(t,1) *      0.00010028658 *      168.05251279940 * sin( 0.53331428424 +      168.05251279940*t)
   neptune_a_1 = neptune_a_1 + pow(t,0) * 1 *      0.00010242826 * cos( 0.02106658542 +      182.27960680100*t) - pow(t,1) *      0.00010242826 *      182.27960680100 * sin( 0.02106658542 +      182.27960680100*t)
   neptune_a_1 = neptune_a_1 + pow(t,0) * 1 *      0.00013646732 * cos( 3.31887794551 +        1.48447270830*t) - pow(t,1) *      0.00013646732 *        1.48447270830 * sin( 3.31887794551 +        1.48447270830*t)
   neptune_a_1 = neptune_a_1 + pow(t,0) * 1 *      0.00016926224 * cos( 3.40079518197 +      484.44438245600*t) - pow(t,1) *      0.00016926224 *      484.44438245600 * sin( 3.40079518197 +      484.44438245600*t)
   neptune_a_1 = neptune_a_1 + pow(t,0) * 1 *      0.00016983720 * cos( 2.88749614679 +      498.67147645760*t) - pow(t,1) *      0.00016983720 *      498.67147645760 * sin( 2.88749614679 +      498.67147645760*t)
   neptune_a_1 = neptune_a_1 + pow(t,0) * 1 *      0.00021981792 * cos( 5.24159938374 +      388.46515523820*t) - pow(t,1) *      0.00021981792 *      388.46515523820 * sin( 5.24159938374 +      388.46515523820*t)
   neptune_a_1 = neptune_a_1 + pow(t,0) * 1 *      0.00035017221 * cos( 1.07792431879 +     1021.24889455140*t) - pow(t,1) *      0.00035017221 *     1021.24889455140 * sin( 1.07792431879 +     1021.24889455140*t)

   dim neptune_a_0 as Double
   neptune_a_0 = 0.0

   neptune_a_0 = neptune_a_0 -1 *      0.00010396544 *      219.89137757700 * sin( 4.15850491413 +      219.89137757700*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00011159386 *      108.46121608020 * sin( 4.90170178578 +      108.46121608020*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00011035877 *      601.76425067620 * sin( 0.32439741096 +      601.76425067620*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00013243147 *      454.90936652730 * sin( 1.48517883768 +      454.90936652730*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00014186982 *       38.13303563780 * sin( 0.39055348945 +       38.13303563780*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00017526509 *      666.72398925700 * sin( 3.41680716222 +      666.72398925700*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00017938336 *      183.24281464750 * sin( 3.98996043594 +      183.24281464750*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00017669174 *      173.68158709190 * sin( 6.07111527239 +      173.68158709190*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00018971774 *      176.65053250850 * sin( 0.76073169118 +      176.65053250850*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00019887390 *       71.81265315070 * sin( 4.72200680846 +       71.81265315070*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00021792087 *      111.43016149680 * sin( 2.62371458707 +      111.43016149680*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00024649447 *      316.39186965660 * sin( 6.00875947773 +      316.39186965660*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00026057248 *      350.33211960040 * sin( 0.60013829511 +      350.33211960040*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00025130259 *      168.05251279940 * sin( 5.11703371894 +      168.05251279940*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00025671325 *      182.27960680100 * sin( 1.72232760443 +      182.27960680100*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00031426284 *      146.59425171800 * sin( 3.82119024473 +      146.59425171800*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00031792020 *      983.11585891360 * sin( 3.25530033905 +      983.11585891360*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00042539010 *      498.67147645760 * sin( 4.58925849638 +      498.67147645760*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00042415052 *      484.44438245600 * sin( 1.70067649012 +      484.44438245600*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00037417236 *     1550.93985964600 * sin( 2.27030739588 +     1550.93985964600*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00050781320 *       35.16409022120 * sin( 4.51488159732 +       35.16409022120*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00056976700 *      109.94568878850 * sin( 3.65157409569 +      109.94568878850*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00046876450 *      137.03302416240 * sin( 3.85081593965 +      137.03302416240*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00072554259 *      490.07345674850 * sin( 5.79767484989 +      490.07345674850*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00069569587 *        2.96894541660 * sin( 3.84742919656 +        2.96894541660*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00078391390 *      493.04240216510 * sin( 0.48629941459 +      493.04240216510*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00095530570 *    10175.15251057320 * sin( 4.14819625611 +    10175.15251057320*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00101174992 *     6244.94281435360 * sin( 2.72476929716 +     6244.94281435360*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00105687575 *       73.29712585900 * sin( 3.48447772920 +       73.29712585900*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00185666340 *      388.46515523820 * sin( 1.07141029917 +      388.46515523820*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00144701407 *      453.42489381900 * sin( 3.36967102070 +      453.42489381900*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00462318447 *       36.64856292950 * sin( 0.16921610518 +       36.64856292950*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00694303990 *     1021.24889455140 * sin( 1.92062235445 +     1021.24889455140*t)
   neptune_a_0 = neptune_a_0 -1 *      0.00832345688 *        1.48447270830 * sin( 5.19528065894 +        1.48447270830*t)
   neptune_a_0 = neptune_a_0 -1 *      0.03597274341 *      175.16605980020 * sin( 1.84552690821 +      175.16605980020*t)
   neptune_a_0 = neptune_a_0 -1 *      0.14818172119 *      491.55792945680 * sin( 1.57105922541 +      491.55792945680*t)
   neptune_a_0 = neptune_a_0 -1 *     30.11038686942 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_neptune_a_velocity = neptune_a_1+neptune_a_0
end function

function vsop87_micro_mercury_p_velocity(t as Double)
   dim mercury_p_1 as Double
   mercury_p_1 = 0.0

   mercury_p_1 = mercury_p_1 + pow(t,0) * 1 *      0.00127633657 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.00127633657 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim mercury_p_0 as Double
   mercury_p_0 = 0.0

   mercury_p_0 = mercury_p_0 -1 *      0.04563550461 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_mercury_p_velocity = mercury_p_1+mercury_p_0
end function

function vsop87_micro_mercury_q_velocity(t as Double)
   dim mercury_q_1 as Double
   mercury_q_1 = 0.0

   mercury_q_1 = mercury_q_1 + pow(t,0) * 1 *      0.00065433117 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *      0.00065433117 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim mercury_q_0 as Double
   mercury_q_0 = 0.0

   mercury_q_0 = mercury_q_0 -1 *      0.04061563384 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_mercury_q_velocity = mercury_q_1+mercury_q_0
end function

function vsop87_micro_mercury_h_velocity(t as Double)
   dim mercury_h_1 as Double
   mercury_h_1 = 0.0

   mercury_h_1 = mercury_h_1 + pow(t,0) * 1 *      0.00143750118 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *      0.00143750118 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim mercury_h_0 as Double
   mercury_h_0 = 0.0

   mercury_h_0 = mercury_h_0 -1 *      0.20072331368 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_mercury_h_velocity = mercury_h_1+mercury_h_0
end function

function vsop87_micro_mercury_k_velocity(t as Double)
   dim mercury_k_1 as Double
   mercury_k_1 = 0.0

   mercury_k_1 = mercury_k_1 + pow(t,0) * 1 *      0.00552114624 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.00552114624 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim mercury_k_0 as Double
   mercury_k_0 = 0.0

   mercury_k_0 = mercury_k_0 -1 *      0.04466059760 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_mercury_k_velocity = mercury_k_1+mercury_k_0
end function

function vsop87_micro_mercury_l_velocity(t as Double)
   dim mercury_l_1 as Double
   mercury_l_1 = 0.0

   mercury_l_1 = mercury_l_1 + pow(t,0) * 1 *  26087.90314157420 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *  26087.90314157420 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim mercury_l_0 as Double
   mercury_l_0 = 0.0

   mercury_l_0 = mercury_l_0 -1 *      4.40260884240 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_mercury_l_velocity = mercury_l_1+mercury_l_0
end function

function vsop87_micro_mercury_a_velocity(t as Double)
   dim mercury_a_0 as Double
   mercury_a_0 = 0.0

   mercury_a_0 = mercury_a_0 -1 *      0.38709830982 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_mercury_a_velocity = mercury_a_0
end function

function vsop87_micro_mars_p_velocity(t as Double)
   dim mars_p_1 as Double
   mars_p_1 = 0.0

   mars_p_1 = mars_p_1 + pow(t,0) * 1 *      0.00108020083 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.00108020083 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim mars_p_0 as Double
   mars_p_0 = 0.0

   mars_p_0 = mars_p_0 -1 *      0.01228449307 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_mars_p_velocity = mars_p_1+mars_p_0
end function

function vsop87_micro_mars_q_velocity(t as Double)
   dim mars_q_1 as Double
   mars_q_1 = 0.0

   mars_q_1 = mars_q_1 + pow(t,0) * 1 *      0.00017138526 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *      0.00017138526 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim mars_q_0 as Double
   mars_q_0 = 0.0

   mars_q_0 = mars_q_0 -1 *      0.01047042574 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_mars_q_velocity = mars_q_1+mars_q_0
end function

function vsop87_micro_mars_h_velocity(t as Double)
   dim mars_h_2 as Double
   mars_h_2 = 0.0

   mars_h_2 = mars_h_2 + pow(t,1) * 2 *      0.00015529482 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,2) *      0.00015529482 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim mars_h_1 as Double
   mars_h_1 = 0.0

   mars_h_1 = mars_h_1 + pow(t,0) * 1 *      0.00624657465 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *      0.00624657465 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim mars_h_0 as Double
   mars_h_0 = 0.0

   mars_h_0 = mars_h_0 -1 *      0.03789973236 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   vsop87_micro_mars_h_velocity = mars_h_2+mars_h_1+mars_h_0
end function

function vsop87_micro_mars_k_velocity(t as Double)
   dim mars_k_2 as Double
   mars_k_2 = 0.0

   mars_k_2 = mars_k_2 + pow(t,1) * 2 *      0.00024657776 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,2) *      0.00024657776 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim mars_k_1 as Double
   mars_k_1 = 0.0

   mars_k_1 = mars_k_1 + pow(t,0) * 1 *      0.00376330152 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *      0.00376330152 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim mars_k_0 as Double
   mars_k_0 = 0.0

   mars_k_0 = mars_k_0 -1 *      0.08536560252 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_mars_k_velocity = mars_k_2+mars_k_1+mars_k_0
end function

function vsop87_micro_mars_l_velocity(t as Double)
   dim mars_l_1 as Double
   mars_l_1 = 0.0

   mars_l_1 = mars_l_1 + pow(t,0) * 1 *   3340.61242669981 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *   3340.61242669981 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim mars_l_0 as Double
   mars_l_0 = 0.0

   mars_l_0 = mars_l_0 -1 *      0.00027745033 *        3.52311834900 * sin( 5.97049541372 +        3.52311834900*t)
   mars_l_0 = mars_l_0 -1 *      6.20347611291 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_mars_l_velocity = mars_l_1+mars_l_0
end function

function vsop87_micro_mars_a_velocity(t as Double)
   dim mars_a_0 as Double
   mars_a_0 = 0.0

   mars_a_0 = mars_a_0 -1 *      1.52367934191 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_mars_a_velocity = mars_a_0
end function

function vsop87_micro_jupiter_p_velocity(t as Double)
   dim jupiter_p_1 as Double
   jupiter_p_1 = 0.0

   jupiter_p_1 = jupiter_p_1 + pow(t,0) * 1 *      0.00023427562 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.00023427562 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim jupiter_p_0 as Double
   jupiter_p_0 = 0.0

   jupiter_p_0 = jupiter_p_0 -1 *      0.01118377157 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_jupiter_p_velocity = jupiter_p_1+jupiter_p_0
end function

function vsop87_micro_jupiter_q_velocity(t as Double)
   dim jupiter_q_1 as Double
   jupiter_q_1 = 0.0

   jupiter_q_1 = jupiter_q_1 + pow(t,0) * 1 *      0.00031340156 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.00031340156 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim jupiter_q_0 as Double
   jupiter_q_0 = 0.0

   jupiter_q_0 = jupiter_q_0 -1 *      0.00206561098 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   vsop87_micro_jupiter_q_velocity = jupiter_q_1+jupiter_q_0
end function

function vsop87_micro_jupiter_h_velocity(t as Double)
   dim jupiter_h_1 as Double
   jupiter_h_1 = 0.0

   jupiter_h_1 = jupiter_h_1 + pow(t,0) * 1 *      0.00010164439 * cos( 5.05135857516 +        7.11354700080*t) - pow(t,1) *      0.00010164439 *        7.11354700080 * sin( 5.05135857516 +        7.11354700080*t)
   jupiter_h_1 = jupiter_h_1 + pow(t,0) * 1 *      0.00217149360 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *      0.00217149360 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim jupiter_h_0 as Double
   jupiter_h_0 = 0.0

   jupiter_h_0 = jupiter_h_0 -1 *      0.00010468075 *      419.48464387520 * sin( 0.14414631816 +      419.48464387520*t)
   jupiter_h_0 = jupiter_h_0 -1 *      0.00012686502 *      110.20632121940 * sin( 1.52173271472 +      110.20632121940*t)
   jupiter_h_0 = jupiter_h_0 -1 *      0.00037689163 *        7.11354700080 * sin( 0.46902799622 +        7.11354700080*t)
   jupiter_h_0 = jupiter_h_0 -1 *      0.00064278139 *      103.09277421860 * sin( 0.39928981461 +      103.09277421860*t)
   jupiter_h_0 = jupiter_h_0 -1 *      0.01200385748 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_jupiter_h_velocity = jupiter_h_1+jupiter_h_0
end function

function vsop87_micro_jupiter_k_velocity(t as Double)
   dim jupiter_k_2 as Double
   jupiter_k_2 = 0.0

   jupiter_k_2 = jupiter_k_2 + pow(t,1) * 2 *      0.00010930126 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,2) *      0.00010930126 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim jupiter_k_1 as Double
   jupiter_k_1 = 0.0

   jupiter_k_1 = jupiter_k_1 + pow(t,0) * 1 *      0.00010303903 * cos( 0.33250058601 +        7.11354700080*t) - pow(t,1) *      0.00010303903 *        7.11354700080 * sin( 0.33250058601 +        7.11354700080*t)
   jupiter_k_1 = jupiter_k_1 + pow(t,0) * 1 *      0.00113010377 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *      0.00113010377 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim jupiter_k_0 as Double
   jupiter_k_0 = 0.0

   jupiter_k_0 = jupiter_k_0 -1 *      0.00010740857 *      419.48464387520 * sin( 4.85106997988 +      419.48464387520*t)
   jupiter_k_0 = jupiter_k_0 -1 *      0.00013518804 *      110.20632121940 * sin( 2.94820975394 +      110.20632121940*t)
   jupiter_k_0 = jupiter_k_0 -1 *      0.00038006128 *        7.11354700080 * sin( 2.03714771852 +        7.11354700080*t)
   jupiter_k_0 = jupiter_k_0 -1 *      0.00065287010 *      103.09277421860 * sin( 5.14135675663 +      103.09277421860*t)
   jupiter_k_0 = jupiter_k_0 -1 *      0.04698572124 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_jupiter_k_velocity = jupiter_k_2+jupiter_k_1+jupiter_k_0
end function

function vsop87_micro_jupiter_l_velocity(t as Double)
   dim jupiter_l_2 as Double
   jupiter_l_2 = 0.0

   jupiter_l_2 = jupiter_l_2 + pow(t,1) * 2 *      0.00014837133 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,2) *      0.00014837133 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)
   jupiter_l_2 = jupiter_l_2 + pow(t,1) * 2 *      0.00047224495 * cos( 4.32142959829 +        7.11354700080*t) - pow(t,2) *      0.00047224495 *        7.11354700080 * sin( 4.32142959829 +        7.11354700080*t)

   dim jupiter_l_1 as Double
   jupiter_l_1 = 0.0

   jupiter_l_1 = jupiter_l_1 + pow(t,0) * 1 *      0.00228875491 * cos( 6.02639570653 +        7.11354700080*t) - pow(t,1) *      0.00228875491 *        7.11354700080 * sin( 6.02639570653 +        7.11354700080*t)
   jupiter_l_1 = jupiter_l_1 + pow(t,0) * 1 *    529.69096509460 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *    529.69096509460 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim jupiter_l_0 as Double
   jupiter_l_0 = 0.0

   jupiter_l_0 = jupiter_l_0 -1 *      0.00011730590 *      949.17560896980 * sin( 0.74641135653 +      949.17560896980*t)
   jupiter_l_0 = jupiter_l_0 -1 *      0.00013391386 *      419.48464387520 * sin( 2.32518571601 +      419.48464387520*t)
   jupiter_l_0 = jupiter_l_0 -1 *      0.00023791184 *      316.39186965660 * sin( 1.27622244841 +      316.39186965660*t)
   jupiter_l_0 = jupiter_l_0 -1 *      0.00032251188 *      632.78373931320 * sin( 1.01358443926 +      632.78373931320*t)
   jupiter_l_0 = jupiter_l_0 -1 *      0.00062308554 *      103.09277421860 * sin( 3.41857056095 +      103.09277421860*t)
   jupiter_l_0 = jupiter_l_0 -1 *      0.00573506125 *        7.11354700080 * sin( 1.44396306420 +        7.11354700080*t)
   jupiter_l_0 = jupiter_l_0 -1 *      0.59954649739 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_jupiter_l_velocity = jupiter_l_2+jupiter_l_1+jupiter_l_0
end function

function vsop87_micro_jupiter_a_velocity(t as Double)
   dim jupiter_a_1 as Double
   jupiter_a_1 = 0.0

   jupiter_a_1 = jupiter_a_1 + pow(t,0) * 1 *      0.00010177614 * cos( 4.46063225487 +        7.11354700080*t) - pow(t,1) *      0.00010177614 *        7.11354700080 * sin( 4.46063225487 +        7.11354700080*t)

   dim jupiter_a_0 as Double
   jupiter_a_0 = 0.0

   jupiter_a_0 = jupiter_a_0 -1 *      0.00014633106 *     1265.56747862640 * sin( 5.20240925402 +     1265.56747862640*t)
   jupiter_a_0 = jupiter_a_0 -1 *      0.00011836569 *      735.87651353180 * sin( 0.41496888665 +      735.87651353180*t)
   jupiter_a_0 = jupiter_a_0 -1 *      0.00020585372 *      316.39186965660 * sin( 5.98131661466 +      316.39186965660*t)
   jupiter_a_0 = jupiter_a_0 -1 *      0.00025558941 *        7.11354700080 * sin( 6.15962426898 +        7.11354700080*t)
   jupiter_a_0 = jupiter_a_0 -1 *      0.00021814330 *      419.48464387520 * sin( 0.70025220178 +      419.48464387520*t)
   jupiter_a_0 = jupiter_a_0 -1 *      0.00031138634 *      949.17560896980 * sin( 5.46486196547 +      949.17560896980*t)
   jupiter_a_0 = jupiter_a_0 -1 *      0.00032272046 *      103.09277421860 * sin( 1.90381613358 +      103.09277421860*t)
   jupiter_a_0 = jupiter_a_0 -1 *      0.00069070151 *      632.78373931320 * sin( 5.72686174779 +      632.78373931320*t)
   jupiter_a_0 = jupiter_a_0 -1 *      5.20260319132 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_jupiter_a_velocity = jupiter_a_1+jupiter_a_0
end function

function vsop87_micro_emb_p_velocity(t as Double)
   dim emb_p_1 as Double
   emb_p_1 = 0.0

   emb_p_1 = emb_p_1 + pow(t,0) * 1 *      0.00010180375 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *      0.00010180375 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)


   vsop87_micro_emb_p_velocity = emb_p_1
end function

function vsop87_micro_emb_q_velocity(t as Double)
   dim emb_q_1 as Double
   emb_q_1 = 0.0

   emb_q_1 = emb_q_1 + pow(t,0) * 1 *      0.00113468869 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.00113468869 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)


   vsop87_micro_emb_q_velocity = emb_q_1
end function

function vsop87_micro_emb_h_velocity(t as Double)
   dim emb_h_1 as Double
   emb_h_1 = 0.0

   emb_h_1 = emb_h_1 + pow(t,0) * 1 *      0.00062029655 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.00062029655 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim emb_h_0 as Double
   emb_h_0 = 0.0

   emb_h_0 = emb_h_0 -1 *      0.01628447663 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_emb_h_velocity = emb_h_1+emb_h_0
end function

function vsop87_micro_emb_k_velocity(t as Double)
   dim emb_k_1 as Double
   emb_k_1 = 0.0

   emb_k_1 = emb_k_1 + pow(t,0) * 1 *      0.00082267418 * cos( 3.14159265359 +        0.00000000000*t) - pow(t,1) *      0.00082267418 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   dim emb_k_0 as Double
   emb_k_0 = 0.0

   emb_k_0 = emb_k_0 -1 *      0.00374081650 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t)

   vsop87_micro_emb_k_velocity = emb_k_1+emb_k_0
end function

function vsop87_micro_emb_l_velocity(t as Double)
   dim emb_l_1 as Double
   emb_l_1 = 0.0

   emb_l_1 = emb_l_1 + pow(t,0) * 1 *   6283.07584999140 * cos( 0.00000000000 +        0.00000000000*t) - pow(t,1) *   6283.07584999140 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   dim emb_l_0 as Double
   emb_l_0 = 0.0

   emb_l_0 = emb_l_0 -1 *      1.75347045953 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)

   vsop87_micro_emb_l_velocity = emb_l_1+emb_l_0
end function

function vsop87_micro_emb_a_velocity(t as Double)
   dim emb_a_0 as Double
   emb_a_0 = 0.0

   emb_a_0 = emb_a_0 -1 *      1.00000101778 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t)
   vsop87_micro_emb_a_velocity = emb_a_0
end function

