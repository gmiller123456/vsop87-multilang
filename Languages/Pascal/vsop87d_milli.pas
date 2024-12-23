//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

unit vsop87d_milli;

interface
uses Math;

procedure vsop87d_milli_getEarth(t: Double;var temp: array of Double);
procedure vsop87d_milli_getJupiter(t: Double;var temp: array of Double);
procedure vsop87d_milli_getMars(t: Double;var temp: array of Double);
procedure vsop87d_milli_getMercury(t: Double;var temp: array of Double);
procedure vsop87d_milli_getNeptune(t: Double;var temp: array of Double);
procedure vsop87d_milli_getSaturn(t: Double;var temp: array of Double);
procedure vsop87d_milli_getUranus(t: Double;var temp: array of Double);
procedure vsop87d_milli_getVenus(t: Double;var temp: array of Double);

implementation



function vsop87d_milli_earth_l(t: Double): Double;
   var earth_l_0: Double=0.0;
   var earth_l_1: Double=0.0;
   var earth_l_2: Double=0.0;
begin

   earth_l_0:=earth_l_0 +      1.75347045673 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_l_0:=earth_l_0 +      0.03341656456 * Cos( 4.66925680417 +     6283.07584999140*t);
   earth_l_0:=earth_l_0 +      0.00034894275 * Cos( 4.62610241759 +    12566.15169998280*t);
   earth_l_0:=earth_l_0 +      0.00003417571 * Cos( 2.82886579606 +        3.52311834900*t);
   earth_l_0:=earth_l_0 +      0.00003497056 * Cos( 2.74411800971 +     5753.38488489680*t);
   earth_l_0:=earth_l_0 +      0.00003135896 * Cos( 3.62767041758 +    77713.77146812050*t);
   earth_l_0:=earth_l_0 +      0.00002676218 * Cos( 4.41808351397 +     7860.41939243920*t);
   earth_l_0:=earth_l_0 +      0.00002342687 * Cos( 6.13516237631 +     3930.20969621960*t);
   earth_l_0:=earth_l_0 +      0.00001273166 * Cos( 2.03709655772 +      529.69096509460*t);
   earth_l_0:=earth_l_0 +      0.00001324292 * Cos( 0.74246356352 +    11506.76976979360*t);
   earth_l_0:=earth_l_0 +      0.00001199167 * Cos( 1.10962944315 +     1577.34354244780*t);

   earth_l_1:=earth_l_1 +   6283.31966747491 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_l_1:=earth_l_1 +      0.00206058863 * Cos( 2.67823455584 +     6283.07584999140*t);
   earth_l_1:=earth_l_1 +      0.00004303430 * Cos( 2.63512650414 +    12566.15169998280*t);
   earth_l_1:=earth_l_1 * t;

   earth_l_2:=earth_l_2 +      0.00052918870 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_l_2:=earth_l_2 +      0.00008719837 * Cos( 1.07209665242 +     6283.07584999140*t);
   earth_l_2:=earth_l_2 * t * t;

   vsop87d_milli_earth_l := earth_l_0+earth_l_1+earth_l_2;
end;

function vsop87d_milli_earth_b(t: Double): Double;
begin

   vsop87d_milli_earth_b := 0;
end;

function vsop87d_milli_earth_r(t: Double): Double;
   var earth_r_0: Double=0.0;
   var earth_r_1: Double=0.0;
   var earth_r_2: Double=0.0;
begin

   earth_r_0:=earth_r_0 +      1.00013988799 * Cos( 0.00000000000 +        0.00000000000*t);
   earth_r_0:=earth_r_0 +      0.01670699626 * Cos( 3.09846350771 +     6283.07584999140*t);
   earth_r_0:=earth_r_0 +      0.00013956023 * Cos( 3.05524609620 +    12566.15169998280*t);
   earth_r_0:=earth_r_0 +      0.00003083720 * Cos( 5.19846674381 +    77713.77146812050*t);
   earth_r_0:=earth_r_0 +      0.00001628461 * Cos( 1.17387749012 +     5753.38488489680*t);
   earth_r_0:=earth_r_0 +      0.00001575568 * Cos( 2.84685245825 +     7860.41939243920*t);

   earth_r_1:=earth_r_1 +      0.00103018608 * Cos( 1.10748969588 +     6283.07584999140*t);
   earth_r_1:=earth_r_1 +      0.00001721238 * Cos( 1.06442301418 +    12566.15169998280*t);
   earth_r_1:=earth_r_1 * t;

   earth_r_2:=earth_r_2 +      0.00004359385 * Cos( 5.78455133738 +     6283.07584999140*t);
   earth_r_2:=earth_r_2 * t * t;

   vsop87d_milli_earth_r := earth_r_0+earth_r_1+earth_r_2;
end;

function vsop87d_milli_jupiter_l(t: Double): Double;
   var jupiter_l_0: Double=0.0;
   var jupiter_l_1: Double=0.0;
   var jupiter_l_2: Double=0.0;
   var jupiter_l_3: Double=0.0;
begin

   jupiter_l_0:=jupiter_l_0 +      0.59954691495 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_l_0:=jupiter_l_0 +      0.09695898711 * Cos( 5.06191793105 +      529.69096509460*t);
   jupiter_l_0:=jupiter_l_0 +      0.00573610145 * Cos( 1.44406205976 +        7.11354700080*t);
   jupiter_l_0:=jupiter_l_0 +      0.00306389180 * Cos( 5.41734729976 +     1059.38193018920*t);
   jupiter_l_0:=jupiter_l_0 +      0.00097178280 * Cos( 4.14264708819 +      632.78373931320*t);
   jupiter_l_0:=jupiter_l_0 +      0.00072903096 * Cos( 3.64042909255 +      522.57741809380*t);
   jupiter_l_0:=jupiter_l_0 +      0.00064263986 * Cos( 3.41145185203 +      103.09277421860*t);
   jupiter_l_0:=jupiter_l_0 +      0.00039806051 * Cos( 2.29376744855 +      419.48464387520*t);
   jupiter_l_0:=jupiter_l_0 +      0.00038857780 * Cos( 1.27231724860 +      316.39186965660*t);
   jupiter_l_0:=jupiter_l_0 +      0.00027964622 * Cos( 1.78454589485 +      536.80451209540*t);
   jupiter_l_0:=jupiter_l_0 +      0.00013589738 * Cos( 5.77481031590 +     1589.07289528380*t);
   jupiter_l_0:=jupiter_l_0 +      0.00008246362 * Cos( 3.58227961655 +      206.18554843720*t);
   jupiter_l_0:=jupiter_l_0 +      0.00008768686 * Cos( 3.63000324417 +      949.17560896980*t);
   jupiter_l_0:=jupiter_l_0 +      0.00007368057 * Cos( 5.08101125612 +      735.87651353180*t);
   jupiter_l_0:=jupiter_l_0 +      0.00006263171 * Cos( 0.02497643742 +      213.29909543800*t);
   jupiter_l_0:=jupiter_l_0 +      0.00006114050 * Cos( 4.51319531666 +     1162.47470440780*t);
   jupiter_l_0:=jupiter_l_0 +      0.00004905419 * Cos( 1.32084631684 +      110.20632121940*t);
   jupiter_l_0:=jupiter_l_0 +      0.00005305283 * Cos( 1.30671236848 +       14.22709400160*t);
   jupiter_l_0:=jupiter_l_0 +      0.00005305457 * Cos( 4.18625053495 +     1052.26838318840*t);
   jupiter_l_0:=jupiter_l_0 +      0.00004647249 * Cos( 4.69958109497 +        3.93215326310*t);
   jupiter_l_0:=jupiter_l_0 +      0.00003045009 * Cos( 4.31675960318 +      426.59819087600*t);
   jupiter_l_0:=jupiter_l_0 +      0.00002610001 * Cos( 1.56667594850 +      846.08283475120*t);
   jupiter_l_0:=jupiter_l_0 +      0.00002028191 * Cos( 1.06376547379 +        3.18139373770*t);
   jupiter_l_0:=jupiter_l_0 +      0.00001764768 * Cos( 2.14148077766 +     1066.49547719000*t);
   jupiter_l_0:=jupiter_l_0 +      0.00001722983 * Cos( 3.88036008872 +     1265.56747862640*t);
   jupiter_l_0:=jupiter_l_0 +      0.00001920959 * Cos( 0.97168928755 +      639.89728631400*t);
   jupiter_l_0:=jupiter_l_0 +      0.00001633217 * Cos( 3.58201089758 +      515.46387109300*t);
   jupiter_l_0:=jupiter_l_0 +      0.00001431997 * Cos( 4.29683690269 +      625.67019231240*t);

   jupiter_l_1:=jupiter_l_1 +    529.93480757497 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_l_1:=jupiter_l_1 +      0.00489741194 * Cos( 4.22066689928 +      529.69096509460*t);
   jupiter_l_1:=jupiter_l_1 +      0.00228918538 * Cos( 6.02647464016 +        7.11354700080*t);
   jupiter_l_1:=jupiter_l_1 +      0.00027655380 * Cos( 4.57265956824 +     1059.38193018920*t);
   jupiter_l_1:=jupiter_l_1 +      0.00020720943 * Cos( 5.45938936295 +      522.57741809380*t);
   jupiter_l_1:=jupiter_l_1 +      0.00012105732 * Cos( 0.16985765041 +      536.80451209540*t);
   jupiter_l_1:=jupiter_l_1 +      0.00006068051 * Cos( 4.42419502005 +      103.09277421860*t);
   jupiter_l_1:=jupiter_l_1 +      0.00005433924 * Cos( 3.98478382565 +      419.48464387520*t);
   jupiter_l_1:=jupiter_l_1 +      0.00004237795 * Cos( 5.89009351271 +       14.22709400160*t);
   jupiter_l_1:=jupiter_l_1 +      0.00002211854 * Cos( 5.26771446618 +      206.18554843720*t);
   jupiter_l_1:=jupiter_l_1 +      0.00001295769 * Cos( 5.55132765087 +        3.18139373770*t);
   jupiter_l_1:=jupiter_l_1 +      0.00001745919 * Cos( 4.92669378486 +     1589.07289528380*t);
   jupiter_l_1:=jupiter_l_1 +      0.00001163411 * Cos( 0.51450895328 +        3.93215326310*t);
   jupiter_l_1:=jupiter_l_1 +      0.00001007216 * Cos( 0.46478398551 +      735.87651353180*t);
   jupiter_l_1:=jupiter_l_1 +      0.00001173129 * Cos( 5.85647304350 +     1052.26838318840*t);
   jupiter_l_1:=jupiter_l_1 +      0.00001003574 * Cos( 3.15040301822 +      426.59819087600*t);
   jupiter_l_1:=jupiter_l_1 +      0.00001098735 * Cos( 5.30704981594 +      515.46387109300*t);
   jupiter_l_1:=jupiter_l_1 * t;

   jupiter_l_2:=jupiter_l_2 +      0.00047233598 * Cos( 4.32148323554 +        7.11354700080*t);
   jupiter_l_2:=jupiter_l_2 +      0.00030629053 * Cos( 2.93021440216 +      529.69096509460*t);
   jupiter_l_2:=jupiter_l_2 +      0.00038965550 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_l_2:=jupiter_l_2 +      0.00003189317 * Cos( 1.05504615595 +      522.57741809380*t);
   jupiter_l_2:=jupiter_l_2 +      0.00002723358 * Cos( 3.41411526638 +     1059.38193018920*t);
   jupiter_l_2:=jupiter_l_2 +      0.00002729292 * Cos( 4.84545481351 +      536.80451209540*t);
   jupiter_l_2:=jupiter_l_2 +      0.00001721069 * Cos( 4.18734385158 +       14.22709400160*t);
   jupiter_l_2:=jupiter_l_2 * t * t;

   jupiter_l_3:=jupiter_l_3 +      0.00006501665 * Cos( 2.59862880482 +        7.11354700080*t);
   jupiter_l_3:=jupiter_l_3 +      0.00001356524 * Cos( 1.34635886411 +      529.69096509460*t);
   jupiter_l_3:=jupiter_l_3 * t * t * t;

   vsop87d_milli_jupiter_l := jupiter_l_0+jupiter_l_1+jupiter_l_2+jupiter_l_3;
end;

function vsop87d_milli_jupiter_b(t: Double): Double;
   var jupiter_b_0: Double=0.0;
   var jupiter_b_1: Double=0.0;
   var jupiter_b_2: Double=0.0;
begin

   jupiter_b_0:=jupiter_b_0 +      0.02268615703 * Cos( 3.55852606718 +      529.69096509460*t);
   jupiter_b_0:=jupiter_b_0 +      0.00109971634 * Cos( 3.90809347389 +     1059.38193018920*t);
   jupiter_b_0:=jupiter_b_0 +      0.00110090358 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_b_0:=jupiter_b_0 +      0.00008101427 * Cos( 3.60509573368 +      522.57741809380*t);
   jupiter_b_0:=jupiter_b_0 +      0.00006043996 * Cos( 4.25883108794 +     1589.07289528380*t);
   jupiter_b_0:=jupiter_b_0 +      0.00006437782 * Cos( 0.30627121409 +      536.80451209540*t);
   jupiter_b_0:=jupiter_b_0 +      0.00001106880 * Cos( 2.98534421928 +     1162.47470440780*t);

   jupiter_b_1:=jupiter_b_1 +      0.00177351787 * Cos( 5.70166488486 +      529.69096509460*t);
   jupiter_b_1:=jupiter_b_1 +      0.00003230171 * Cos( 5.77941619340 +     1059.38193018920*t);
   jupiter_b_1:=jupiter_b_1 +      0.00003081364 * Cos( 5.47464296527 +      522.57741809380*t);
   jupiter_b_1:=jupiter_b_1 +      0.00002211914 * Cos( 4.73477480209 +      536.80451209540*t);
   jupiter_b_1:=jupiter_b_1 +      0.00001694232 * Cos( 3.14159265359 +        0.00000000000*t);
   jupiter_b_1:=jupiter_b_1 * t;

   jupiter_b_2:=jupiter_b_2 +      0.00008094051 * Cos( 1.46322843658 +      529.69096509460*t);
   jupiter_b_2:=jupiter_b_2 * t * t;

   vsop87d_milli_jupiter_b := jupiter_b_0+jupiter_b_1+jupiter_b_2;
end;

function vsop87d_milli_jupiter_r(t: Double): Double;
   var jupiter_r_0: Double=0.0;
   var jupiter_r_1: Double=0.0;
   var jupiter_r_2: Double=0.0;
   var jupiter_r_3: Double=0.0;
begin

   jupiter_r_0:=jupiter_r_0 +      5.20887429471 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_r_0:=jupiter_r_0 +      0.25209327020 * Cos( 3.49108640015 +      529.69096509460*t);
   jupiter_r_0:=jupiter_r_0 +      0.00610599902 * Cos( 3.84115365602 +     1059.38193018920*t);
   jupiter_r_0:=jupiter_r_0 +      0.00282029465 * Cos( 2.57419879933 +      632.78373931320*t);
   jupiter_r_0:=jupiter_r_0 +      0.00187647391 * Cos( 2.07590380082 +      522.57741809380*t);
   jupiter_r_0:=jupiter_r_0 +      0.00086792941 * Cos( 0.71001090609 +      419.48464387520*t);
   jupiter_r_0:=jupiter_r_0 +      0.00072062869 * Cos( 0.21465694745 +      536.80451209540*t);
   jupiter_r_0:=jupiter_r_0 +      0.00065517227 * Cos( 5.97995850843 +      316.39186965660*t);
   jupiter_r_0:=jupiter_r_0 +      0.00029134620 * Cos( 1.67759243710 +      103.09277421860*t);
   jupiter_r_0:=jupiter_r_0 +      0.00030135275 * Cos( 2.16132058449 +      949.17560896980*t);
   jupiter_r_0:=jupiter_r_0 +      0.00023453209 * Cos( 3.54023147303 +      735.87651353180*t);
   jupiter_r_0:=jupiter_r_0 +      0.00022283710 * Cos( 4.19362773546 +     1589.07289528380*t);
   jupiter_r_0:=jupiter_r_0 +      0.00023947340 * Cos( 0.27457854894 +        7.11354700080*t);
   jupiter_r_0:=jupiter_r_0 +      0.00013032600 * Cos( 2.96043055741 +     1162.47470440780*t);
   jupiter_r_0:=jupiter_r_0 +      0.00009703346 * Cos( 1.90669572402 +      206.18554843720*t);
   jupiter_r_0:=jupiter_r_0 +      0.00012749004 * Cos( 2.71550102862 +     1052.26838318840*t);
   jupiter_r_0:=jupiter_r_0 +      0.00009161431 * Cos( 4.41352618935 +      213.29909543800*t);
   jupiter_r_0:=jupiter_r_0 +      0.00007894539 * Cos( 2.47907551404 +      426.59819087600*t);
   jupiter_r_0:=jupiter_r_0 +      0.00007057978 * Cos( 2.18184753111 +     1265.56747862640*t);
   jupiter_r_0:=jupiter_r_0 +      0.00006137755 * Cos( 6.26417542514 +      846.08283475120*t);
   jupiter_r_0:=jupiter_r_0 +      0.00005477093 * Cos( 5.65729325169 +      639.89728631400*t);
   jupiter_r_0:=jupiter_r_0 +      0.00003502519 * Cos( 0.56531297394 +     1066.49547719000*t);
   jupiter_r_0:=jupiter_r_0 +      0.00004136890 * Cos( 2.72219979684 +      625.67019231240*t);
   jupiter_r_0:=jupiter_r_0 +      0.00004170012 * Cos( 2.01605033912 +      515.46387109300*t);
   jupiter_r_0:=jupiter_r_0 +      0.00002499966 * Cos( 4.55182055941 +      838.96928775040*t);
   jupiter_r_0:=jupiter_r_0 +      0.00002616955 * Cos( 2.00993967129 +     1581.95934828300*t);
   jupiter_r_0:=jupiter_r_0 +      0.00001911876 * Cos( 0.85621927419 +      412.37109687440*t);
   jupiter_r_0:=jupiter_r_0 +      0.00002127644 * Cos( 6.12751461750 +      742.99006053260*t);
   jupiter_r_0:=jupiter_r_0 +      0.00001610549 * Cos( 3.08867789275 +     1368.66025284500*t);
   jupiter_r_0:=jupiter_r_0 +      0.00001479484 * Cos( 2.68026191372 +     1478.86657406440*t);
   jupiter_r_0:=jupiter_r_0 +      0.00001230708 * Cos( 1.89042979701 +      323.50541665740*t);
   jupiter_r_0:=jupiter_r_0 +      0.00001216810 * Cos( 1.80171561024 +      110.20632121940*t);
   jupiter_r_0:=jupiter_r_0 +      0.00001014959 * Cos( 1.38673237666 +      454.90936652730*t);

   jupiter_r_1:=jupiter_r_1 +      0.01271801596 * Cos( 2.64937511122 +      529.69096509460*t);
   jupiter_r_1:=jupiter_r_1 +      0.00061661771 * Cos( 3.00076251018 +     1059.38193018920*t);
   jupiter_r_1:=jupiter_r_1 +      0.00053443592 * Cos( 3.89717644226 +      522.57741809380*t);
   jupiter_r_1:=jupiter_r_1 +      0.00031185167 * Cos( 4.88276663526 +      536.80451209540*t);
   jupiter_r_1:=jupiter_r_1 +      0.00041390257 * Cos( 0.00000000000 +        0.00000000000*t);
   jupiter_r_1:=jupiter_r_1 +      0.00011847190 * Cos( 2.41329588176 +      419.48464387520*t);
   jupiter_r_1:=jupiter_r_1 +      0.00009166360 * Cos( 4.75979408587 +        7.11354700080*t);
   jupiter_r_1:=jupiter_r_1 +      0.00003175763 * Cos( 2.79297987071 +      103.09277421860*t);
   jupiter_r_1:=jupiter_r_1 +      0.00003203446 * Cos( 5.21083285476 +      735.87651353180*t);
   jupiter_r_1:=jupiter_r_1 +      0.00003403605 * Cos( 3.34688537997 +     1589.07289528380*t);
   jupiter_r_1:=jupiter_r_1 +      0.00002600003 * Cos( 3.63435101622 +      206.18554843720*t);
   jupiter_r_1:=jupiter_r_1 +      0.00002412207 * Cos( 1.46947308304 +      426.59819087600*t);
   jupiter_r_1:=jupiter_r_1 +      0.00002806064 * Cos( 3.74223693580 +      515.46387109300*t);
   jupiter_r_1:=jupiter_r_1 +      0.00002676575 * Cos( 4.33052878699 +     1052.26838318840*t);
   jupiter_r_1:=jupiter_r_1 +      0.00002100507 * Cos( 3.92762682306 +      639.89728631400*t);
   jupiter_r_1:=jupiter_r_1 +      0.00001646182 * Cos( 5.30953510947 +     1066.49547719000*t);
   jupiter_r_1:=jupiter_r_1 +      0.00001641257 * Cos( 4.41628669824 +      625.67019231240*t);
   jupiter_r_1:=jupiter_r_1 +      0.00001049866 * Cos( 3.16113622955 +      213.29909543800*t);
   jupiter_r_1:=jupiter_r_1 +      0.00001024802 * Cos( 2.55432643018 +      412.37109687440*t);
   jupiter_r_1:=jupiter_r_1 * t;

   jupiter_r_2:=jupiter_r_2 +      0.00079644833 * Cos( 1.35865896596 +      529.69096509460*t);
   jupiter_r_2:=jupiter_r_2 +      0.00008251618 * Cos( 5.77773935444 +      522.57741809380*t);
   jupiter_r_2:=jupiter_r_2 +      0.00007029864 * Cos( 3.27476965833 +      536.80451209540*t);
   jupiter_r_2:=jupiter_r_2 +      0.00005314006 * Cos( 1.83835109712 +     1059.38193018920*t);
   jupiter_r_2:=jupiter_r_2 +      0.00001860833 * Cos( 2.97682139367 +        7.11354700080*t);
   jupiter_r_2:=jupiter_r_2 * t * t;

   jupiter_r_3:=jupiter_r_3 +      0.00003519257 * Cos( 6.05800633846 +      529.69096509460*t);
   jupiter_r_3:=jupiter_r_3 +      0.00001073239 * Cos( 1.67321345760 +      536.80451209540*t);
   jupiter_r_3:=jupiter_r_3 * t * t * t;

   vsop87d_milli_jupiter_r := jupiter_r_0+jupiter_r_1+jupiter_r_2+jupiter_r_3;
end;

function vsop87d_milli_mars_l(t: Double): Double;
   var mars_l_0: Double=0.0;
   var mars_l_1: Double=0.0;
   var mars_l_2: Double=0.0;
   var mars_l_3: Double=0.0;
begin

   mars_l_0:=mars_l_0 +      6.20347711583 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_l_0:=mars_l_0 +      0.18656368100 * Cos( 5.05037100303 +     3340.61242669980*t);
   mars_l_0:=mars_l_0 +      0.01108216792 * Cos( 5.40099836958 +     6681.22485339960*t);
   mars_l_0:=mars_l_0 +      0.00091798394 * Cos( 5.75478745111 +    10021.83728009940*t);
   mars_l_0:=mars_l_0 +      0.00027744987 * Cos( 5.97049512942 +        3.52311834900*t);
   mars_l_0:=mars_l_0 +      0.00010610230 * Cos( 2.93958524973 +     2281.23049651060*t);
   mars_l_0:=mars_l_0 +      0.00012315897 * Cos( 0.84956081238 +     2810.92146160520*t);
   mars_l_0:=mars_l_0 +      0.00008926772 * Cos( 4.15697845939 +        0.01725365220*t);
   mars_l_0:=mars_l_0 +      0.00008715688 * Cos( 6.11005159792 +    13362.44970679920*t);
   mars_l_0:=mars_l_0 +      0.00006797552 * Cos( 0.36462243626 +      398.14900340820*t);
   mars_l_0:=mars_l_0 +      0.00007774867 * Cos( 3.33968655074 +     5621.84292321040*t);
   mars_l_0:=mars_l_0 +      0.00003575079 * Cos( 1.66186540141 +     2544.31441988340*t);
   mars_l_0:=mars_l_0 +      0.00004161101 * Cos( 0.22814975330 +     2942.46342329160*t);
   mars_l_0:=mars_l_0 +      0.00003075250 * Cos( 0.85696597082 +      191.44826611160*t);
   mars_l_0:=mars_l_0 +      0.00002628122 * Cos( 0.64806143570 +     3337.08930835080*t);
   mars_l_0:=mars_l_0 +      0.00002937543 * Cos( 6.07893711408 +        0.06731030280*t);
   mars_l_0:=mars_l_0 +      0.00002389420 * Cos( 5.03896401349 +      796.29800681640*t);
   mars_l_0:=mars_l_0 +      0.00002579842 * Cos( 0.02996706197 +     3344.13554504880*t);
   mars_l_0:=mars_l_0 +      0.00001528140 * Cos( 1.14979306228 +     6151.53388830500*t);
   mars_l_0:=mars_l_0 +      0.00001798808 * Cos( 0.65634026844 +      529.69096509460*t);
   mars_l_0:=mars_l_0 +      0.00001264356 * Cos( 3.62275092231 +     5092.15195811580*t);
   mars_l_0:=mars_l_0 +      0.00001286232 * Cos( 3.06795924626 +     2146.16541647520*t);
   mars_l_0:=mars_l_0 +      0.00001546408 * Cos( 2.91579633392 +     1751.53953141600*t);
   mars_l_0:=mars_l_0 +      0.00001024907 * Cos( 3.69334293555 +     8962.45534991020*t);

   mars_l_1:=mars_l_1 +   3340.85627474342 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_l_1:=mars_l_1 +      0.01458227051 * Cos( 3.60426053609 +     3340.61242669980*t);
   mars_l_1:=mars_l_1 +      0.00164901343 * Cos( 3.92631250962 +     6681.22485339960*t);
   mars_l_1:=mars_l_1 +      0.00019963338 * Cos( 4.26594061030 +    10021.83728009940*t);
   mars_l_1:=mars_l_1 +      0.00003452399 * Cos( 4.73210386365 +        3.52311834900*t);
   mars_l_1:=mars_l_1 +      0.00002485480 * Cos( 4.61277567318 +    13362.44970679920*t);
   mars_l_1:=mars_l_1 * t;

   mars_l_2:=mars_l_2 +      0.00058015791 * Cos( 2.04979463279 +     3340.61242669980*t);
   mars_l_2:=mars_l_2 +      0.00054187645 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_l_2:=mars_l_2 +      0.00013908426 * Cos( 2.45742359888 +     6681.22485339960*t);
   mars_l_2:=mars_l_2 +      0.00002465104 * Cos( 2.80000020929 +    10021.83728009940*t);
   mars_l_2:=mars_l_2 * t * t;

   mars_l_3:=mars_l_3 +      0.00001482423 * Cos( 0.44434694876 +     3340.61242669980*t);
   mars_l_3:=mars_l_3 * t * t * t;

   vsop87d_milli_mars_l := mars_l_0+mars_l_1+mars_l_2+mars_l_3;
end;

function vsop87d_milli_mars_b(t: Double): Double;
   var mars_b_0: Double=0.0;
   var mars_b_1: Double=0.0;
   var mars_b_2: Double=0.0;
begin

   mars_b_0:=mars_b_0 +      0.03197134986 * Cos( 3.76832042432 +     3340.61242669980*t);
   mars_b_0:=mars_b_0 +      0.00298033234 * Cos( 4.10616996243 +     6681.22485339960*t);
   mars_b_0:=mars_b_0 +      0.00289104742 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_b_0:=mars_b_0 +      0.00031365538 * Cos( 4.44651052853 +    10021.83728009940*t);
   mars_b_0:=mars_b_0 +      0.00003484100 * Cos( 4.78812547889 +    13362.44970679920*t);

   mars_b_1:=mars_b_1 +      0.00350068845 * Cos( 5.36847836211 +     3340.61242669980*t);
   mars_b_1:=mars_b_1 +      0.00014116030 * Cos( 3.14159265359 +        0.00000000000*t);
   mars_b_1:=mars_b_1 +      0.00009670755 * Cos( 5.47877786506 +     6681.22485339960*t);
   mars_b_1:=mars_b_1 +      0.00001471918 * Cos( 3.20205766795 +    10021.83728009940*t);
   mars_b_1:=mars_b_1 * t;

   mars_b_2:=mars_b_2 +      0.00016726690 * Cos( 0.60221392419 +     3340.61242669980*t);
   mars_b_2:=mars_b_2 +      0.00004986799 * Cos( 3.14159265359 +        0.00000000000*t);
   mars_b_2:=mars_b_2 * t * t;

   vsop87d_milli_mars_b := mars_b_0+mars_b_1+mars_b_2;
end;

function vsop87d_milli_mars_r(t: Double): Double;
   var mars_r_0: Double=0.0;
   var mars_r_1: Double=0.0;
   var mars_r_2: Double=0.0;
   var mars_r_3: Double=0.0;
begin

   mars_r_0:=mars_r_0 +      1.53033488276 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_r_0:=mars_r_0 +      0.14184953153 * Cos( 3.47971283519 +     3340.61242669980*t);
   mars_r_0:=mars_r_0 +      0.00660776357 * Cos( 3.81783442097 +     6681.22485339960*t);
   mars_r_0:=mars_r_0 +      0.00046179117 * Cos( 4.15595316284 +    10021.83728009940*t);
   mars_r_0:=mars_r_0 +      0.00008109738 * Cos( 5.55958460165 +     2810.92146160520*t);
   mars_r_0:=mars_r_0 +      0.00007485315 * Cos( 1.77238998069 +     5621.84292321040*t);
   mars_r_0:=mars_r_0 +      0.00005523193 * Cos( 1.36436318880 +     2281.23049651060*t);
   mars_r_0:=mars_r_0 +      0.00003825160 * Cos( 4.49407182408 +    13362.44970679920*t);
   mars_r_0:=mars_r_0 +      0.00002306539 * Cos( 0.09081742493 +     2544.31441988340*t);
   mars_r_0:=mars_r_0 +      0.00001999399 * Cos( 5.36059605227 +     3337.08930835080*t);
   mars_r_0:=mars_r_0 +      0.00002484385 * Cos( 4.92545577893 +     2942.46342329160*t);
   mars_r_0:=mars_r_0 +      0.00001960198 * Cos( 4.74249386323 +     3344.13554504880*t);
   mars_r_0:=mars_r_0 +      0.00001167115 * Cos( 2.11261501155 +     5092.15195811580*t);
   mars_r_0:=mars_r_0 +      0.00001102828 * Cos( 5.00908264160 +      398.14900340820*t);

   mars_r_1:=mars_r_1 +      0.01107433340 * Cos( 2.03250524950 +     3340.61242669980*t);
   mars_r_1:=mars_r_1 +      0.00103175886 * Cos( 2.37071845682 +     6681.22485339960*t);
   mars_r_1:=mars_r_1 +      0.00012877200 * Cos( 0.00000000000 +        0.00000000000*t);
   mars_r_1:=mars_r_1 +      0.00010815880 * Cos( 2.70888093803 +    10021.83728009940*t);
   mars_r_1:=mars_r_1 +      0.00001194550 * Cos( 3.04702182503 +    13362.44970679920*t);
   mars_r_1:=mars_r_1 * t;

   mars_r_2:=mars_r_2 +      0.00044242247 * Cos( 0.47930603943 +     3340.61242669980*t);
   mars_r_2:=mars_r_2 +      0.00008138042 * Cos( 0.86998398093 +     6681.22485339960*t);
   mars_r_2:=mars_r_2 +      0.00001274915 * Cos( 1.22594050809 +    10021.83728009940*t);
   mars_r_2:=mars_r_2 * t * t;

   mars_r_3:=mars_r_3 +      0.00001113107 * Cos( 5.14987350142 +     3340.61242669980*t);
   mars_r_3:=mars_r_3 * t * t * t;

   vsop87d_milli_mars_r := mars_r_0+mars_r_1+mars_r_2+mars_r_3;
end;

function vsop87d_milli_mercury_l(t: Double): Double;
   var mercury_l_0: Double=0.0;
   var mercury_l_1: Double=0.0;
   var mercury_l_2: Double=0.0;
begin

   mercury_l_0:=mercury_l_0 +      4.40250710144 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_l_0:=mercury_l_0 +      0.40989414976 * Cos( 1.48302034194 +    26087.90314157420*t);
   mercury_l_0:=mercury_l_0 +      0.05046294199 * Cos( 4.47785489540 +    52175.80628314840*t);
   mercury_l_0:=mercury_l_0 +      0.00855346843 * Cos( 1.16520322351 +    78263.70942472259*t);
   mercury_l_0:=mercury_l_0 +      0.00165590362 * Cos( 4.11969163181 +   104351.61256629678*t);
   mercury_l_0:=mercury_l_0 +      0.00034561897 * Cos( 0.77930765817 +   130439.51570787099*t);
   mercury_l_0:=mercury_l_0 +      0.00007583476 * Cos( 3.71348400510 +   156527.41884944518*t);
   mercury_l_0:=mercury_l_0 +      0.00003559740 * Cos( 1.51202669419 +     1109.37855209340*t);
   mercury_l_0:=mercury_l_0 +      0.00001726012 * Cos( 0.35832239908 +   182615.32199101939*t);
   mercury_l_0:=mercury_l_0 +      0.00001803463 * Cos( 4.10333178410 +     5661.33204915220*t);
   mercury_l_0:=mercury_l_0 +      0.00001364682 * Cos( 4.59918318745 +    27197.28169366760*t);
   mercury_l_0:=mercury_l_0 +      0.00001589923 * Cos( 2.99510417815 +    25028.52121138500*t);
   mercury_l_0:=mercury_l_0 +      0.00001017332 * Cos( 0.88031439040 +    31749.23519072640*t);

   mercury_l_1:=mercury_l_1 +  26088.14706222746 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_l_1:=mercury_l_1 +      0.01126007832 * Cos( 6.21703970996 +    26087.90314157420*t);
   mercury_l_1:=mercury_l_1 +      0.00303471395 * Cos( 3.05565472363 +    52175.80628314840*t);
   mercury_l_1:=mercury_l_1 +      0.00080538452 * Cos( 6.10454743366 +    78263.70942472259*t);
   mercury_l_1:=mercury_l_1 +      0.00021245035 * Cos( 2.83531934452 +   104351.61256629678*t);
   mercury_l_1:=mercury_l_1 +      0.00005592094 * Cos( 5.82675673328 +   130439.51570787099*t);
   mercury_l_1:=mercury_l_1 +      0.00001472233 * Cos( 2.51845458395 +   156527.41884944518*t);
   mercury_l_1:=mercury_l_1 * t;

   mercury_l_2:=mercury_l_2 +      0.00053049845 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_l_2:=mercury_l_2 +      0.00016903658 * Cos( 4.69072300649 +    26087.90314157420*t);
   mercury_l_2:=mercury_l_2 +      0.00007396711 * Cos( 1.34735624669 +    52175.80628314840*t);
   mercury_l_2:=mercury_l_2 +      0.00003018297 * Cos( 4.45643539705 +    78263.70942472259*t);
   mercury_l_2:=mercury_l_2 +      0.00001107419 * Cos( 1.26226537554 +   104351.61256629678*t);
   mercury_l_2:=mercury_l_2 * t * t;

   vsop87d_milli_mercury_l := mercury_l_0+mercury_l_1+mercury_l_2;
end;

function vsop87d_milli_mercury_b(t: Double): Double;
   var mercury_b_0: Double=0.0;
   var mercury_b_1: Double=0.0;
   var mercury_b_2: Double=0.0;
begin

   mercury_b_0:=mercury_b_0 +      0.11737528962 * Cos( 1.98357498767 +    26087.90314157420*t);
   mercury_b_0:=mercury_b_0 +      0.02388076996 * Cos( 5.03738959685 +    52175.80628314840*t);
   mercury_b_0:=mercury_b_0 +      0.01222839532 * Cos( 3.14159265359 +        0.00000000000*t);
   mercury_b_0:=mercury_b_0 +      0.00543251810 * Cos( 1.79644363963 +    78263.70942472259*t);
   mercury_b_0:=mercury_b_0 +      0.00129778770 * Cos( 4.83232503961 +   104351.61256629678*t);
   mercury_b_0:=mercury_b_0 +      0.00031866927 * Cos( 1.58088495667 +   130439.51570787099*t);
   mercury_b_0:=mercury_b_0 +      0.00007963301 * Cos( 4.60972126348 +   156527.41884944518*t);
   mercury_b_0:=mercury_b_0 +      0.00002014189 * Cos( 1.35324164694 +   182615.32199101939*t);

   mercury_b_1:=mercury_b_1 +      0.00429151362 * Cos( 3.50169780393 +    26087.90314157420*t);
   mercury_b_1:=mercury_b_1 +      0.00146233668 * Cos( 3.14159265359 +        0.00000000000*t);
   mercury_b_1:=mercury_b_1 +      0.00022675295 * Cos( 0.01515366880 +    52175.80628314840*t);
   mercury_b_1:=mercury_b_1 +      0.00010894981 * Cos( 0.48540174006 +    78263.70942472259*t);
   mercury_b_1:=mercury_b_1 +      0.00006353462 * Cos( 3.42943919982 +   104351.61256629678*t);
   mercury_b_1:=mercury_b_1 +      0.00002495743 * Cos( 0.16051210665 +   130439.51570787099*t);
   mercury_b_1:=mercury_b_1 * t;

   mercury_b_2:=mercury_b_2 +      0.00011830934 * Cos( 4.79065585784 +    26087.90314157420*t);
   mercury_b_2:=mercury_b_2 +      0.00001913516 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_b_2:=mercury_b_2 +      0.00001044801 * Cos( 1.21216540536 +    52175.80628314840*t);
   mercury_b_2:=mercury_b_2 * t * t;

   vsop87d_milli_mercury_b := mercury_b_0+mercury_b_1+mercury_b_2;
end;

function vsop87d_milli_mercury_r(t: Double): Double;
   var mercury_r_0: Double=0.0;
   var mercury_r_1: Double=0.0;
   var mercury_r_2: Double=0.0;
begin

   mercury_r_0:=mercury_r_0 +      0.39528271652 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_r_0:=mercury_r_0 +      0.07834131817 * Cos( 6.19233722599 +    26087.90314157420*t);
   mercury_r_0:=mercury_r_0 +      0.00795525557 * Cos( 2.95989690096 +    52175.80628314840*t);
   mercury_r_0:=mercury_r_0 +      0.00121281763 * Cos( 6.01064153805 +    78263.70942472259*t);
   mercury_r_0:=mercury_r_0 +      0.00021921969 * Cos( 2.77820093975 +   104351.61256629678*t);
   mercury_r_0:=mercury_r_0 +      0.00004354065 * Cos( 5.82894543257 +   130439.51570787099*t);

   mercury_r_1:=mercury_r_1 +      0.00217347739 * Cos( 4.65617158663 +    26087.90314157420*t);
   mercury_r_1:=mercury_r_1 +      0.00044141826 * Cos( 1.42385543975 +    52175.80628314840*t);
   mercury_r_1:=mercury_r_1 +      0.00010094479 * Cos( 4.47466326316 +    78263.70942472259*t);
   mercury_r_1:=mercury_r_1 +      0.00002432804 * Cos( 1.24226083435 +   104351.61256629678*t);
   mercury_r_1:=mercury_r_1 +      0.00001624367 * Cos( 0.00000000000 +        0.00000000000*t);
   mercury_r_1:=mercury_r_1 * t;

   mercury_r_2:=mercury_r_2 +      0.00003117867 * Cos( 3.08231840296 +    26087.90314157420*t);
   mercury_r_2:=mercury_r_2 +      0.00001245396 * Cos( 6.15183317423 +    52175.80628314840*t);
   mercury_r_2:=mercury_r_2 * t * t;

   vsop87d_milli_mercury_r := mercury_r_0+mercury_r_1+mercury_r_2;
end;

function vsop87d_milli_neptune_l(t: Double): Double;
   var neptune_l_0: Double=0.0;
   var neptune_l_1: Double=0.0;
   var neptune_l_2: Double=0.0;
begin

   neptune_l_0:=neptune_l_0 +      5.31188633047 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_0:=neptune_l_0 +      0.01798475509 * Cos( 2.90101273050 +       38.13303563780*t);
   neptune_l_0:=neptune_l_0 +      0.01019727662 * Cos( 0.48580923660 +        1.48447270830*t);
   neptune_l_0:=neptune_l_0 +      0.00124531845 * Cos( 4.83008090682 +       36.64856292950*t);
   neptune_l_0:=neptune_l_0 +      0.00042064450 * Cos( 5.41054991607 +        2.96894541660*t);
   neptune_l_0:=neptune_l_0 +      0.00037714589 * Cos( 6.09221834946 +       35.16409022120*t);
   neptune_l_0:=neptune_l_0 +      0.00033784734 * Cos( 1.24488865578 +       76.26607127560*t);
   neptune_l_0:=neptune_l_0 +      0.00016482741 * Cos( 0.00007729261 +      491.55792945680*t);
   neptune_l_0:=neptune_l_0 +      0.00009198582 * Cos( 4.93747059924 +       39.61750834610*t);
   neptune_l_0:=neptune_l_0 +      0.00008994249 * Cos( 0.27462142569 +      175.16605980020*t);
   neptune_l_0:=neptune_l_0 +      0.00004216235 * Cos( 1.98711914364 +       73.29712585900*t);
   neptune_l_0:=neptune_l_0 +      0.00003364818 * Cos( 1.03590121818 +       33.67961751290*t);
   neptune_l_0:=neptune_l_0 +      0.00002284800 * Cos( 4.20606932559 +        4.45341812490*t);
   neptune_l_0:=neptune_l_0 +      0.00001433512 * Cos( 2.78340432711 +       74.78159856730*t);

   neptune_l_1:=neptune_l_1 +     38.37687716731 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_1:=neptune_l_1 +      0.00016604187 * Cos( 4.86319129565 +        1.48447270830*t);
   neptune_l_1:=neptune_l_1 +      0.00015807148 * Cos( 2.27923488532 +       38.13303563780*t);
   neptune_l_1:=neptune_l_1 +      0.00003334701 * Cos( 3.68199676020 +       76.26607127560*t);
   neptune_l_1:=neptune_l_1 +      0.00001305840 * Cos( 3.67320813491 +        2.96894541660*t);
   neptune_l_1:=neptune_l_1 * t;

   neptune_l_2:=neptune_l_2 +      0.00053892649 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_l_2:=neptune_l_2 * t * t;

   vsop87d_milli_neptune_l := neptune_l_0+neptune_l_1+neptune_l_2;
end;

function vsop87d_milli_neptune_b(t: Double): Double;
   var neptune_b_0: Double=0.0;
   var neptune_b_1: Double=0.0;
   var neptune_b_2: Double=0.0;
begin

   neptune_b_0:=neptune_b_0 +      0.03088622933 * Cos( 1.44104372626 +       38.13303563780*t);
   neptune_b_0:=neptune_b_0 +      0.00027780087 * Cos( 5.91271882843 +       76.26607127560*t);
   neptune_b_0:=neptune_b_0 +      0.00027623609 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_b_0:=neptune_b_0 +      0.00015355490 * Cos( 2.52123799481 +       36.64856292950*t);
   neptune_b_0:=neptune_b_0 +      0.00015448133 * Cos( 3.50877080888 +       39.61750834610*t);
   neptune_b_0:=neptune_b_0 +      0.00001999919 * Cos( 1.50998669505 +       74.78159856730*t);
   neptune_b_0:=neptune_b_0 +      0.00001967540 * Cos( 4.37778195768 +        1.48447270830*t);
   neptune_b_0:=neptune_b_0 +      0.00001015137 * Cos( 3.21561035875 +       35.16409022120*t);

   neptune_b_1:=neptune_b_1 +      0.00227279214 * Cos( 3.80793089870 +       38.13303563780*t);
   neptune_b_1:=neptune_b_1 +      0.00001803120 * Cos( 1.97576485377 +       76.26607127560*t);
   neptune_b_1:=neptune_b_1 +      0.00001385733 * Cos( 4.82555548018 +       36.64856292950*t);
   neptune_b_1:=neptune_b_1 +      0.00001433300 * Cos( 3.14159265359 +        0.00000000000*t);
   neptune_b_1:=neptune_b_1 +      0.00001073298 * Cos( 6.08054240712 +       39.61750834610*t);
   neptune_b_1:=neptune_b_1 * t;

   neptune_b_2:=neptune_b_2 +      0.00009690766 * Cos( 5.57123750291 +       38.13303563780*t);
   neptune_b_2:=neptune_b_2 * t * t;

   vsop87d_milli_neptune_b := neptune_b_0+neptune_b_1+neptune_b_2;
end;

function vsop87d_milli_neptune_r(t: Double): Double;
   var neptune_r_0: Double=0.0;
   var neptune_r_1: Double=0.0;
   var neptune_r_2: Double=0.0;
begin

   neptune_r_0:=neptune_r_0 +     30.07013206102 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_r_0:=neptune_r_0 +      0.27062259490 * Cos( 1.32999458930 +       38.13303563780*t);
   neptune_r_0:=neptune_r_0 +      0.01691764281 * Cos( 3.25186138896 +       36.64856292950*t);
   neptune_r_0:=neptune_r_0 +      0.00807830737 * Cos( 5.18592836167 +        1.48447270830*t);
   neptune_r_0:=neptune_r_0 +      0.00537760613 * Cos( 4.52113902845 +       35.16409022120*t);
   neptune_r_0:=neptune_r_0 +      0.00495725642 * Cos( 1.57105654815 +      491.55792945680*t);
   neptune_r_0:=neptune_r_0 +      0.00274571970 * Cos( 1.84552256801 +      175.16605980020*t);
   neptune_r_0:=neptune_r_0 +      0.00135134095 * Cos( 3.37220607384 +       39.61750834610*t);
   neptune_r_0:=neptune_r_0 +      0.00121801825 * Cos( 5.79754444303 +       76.26607127560*t);
   neptune_r_0:=neptune_r_0 +      0.00100895397 * Cos( 0.37702748681 +       73.29712585900*t);
   neptune_r_0:=neptune_r_0 +      0.00069791722 * Cos( 3.79617226928 +        2.96894541660*t);
   neptune_r_0:=neptune_r_0 +      0.00046687838 * Cos( 5.74937810094 +       33.67961751290*t);
   neptune_r_0:=neptune_r_0 +      0.00024593778 * Cos( 0.50801728204 +      109.94568878850*t);
   neptune_r_0:=neptune_r_0 +      0.00016939242 * Cos( 1.59422166991 +       71.81265315070*t);
   neptune_r_0:=neptune_r_0 +      0.00014229686 * Cos( 1.07786112902 +       74.78159856730*t);
   neptune_r_0:=neptune_r_0 +      0.00012011825 * Cos( 1.92062131635 +     1021.24889455140*t);
   neptune_r_0:=neptune_r_0 +      0.00008394731 * Cos( 0.67816895547 +      146.59425171800*t);
   neptune_r_0:=neptune_r_0 +      0.00007571800 * Cos( 1.07149263431 +      388.46515523820*t);
   neptune_r_0:=neptune_r_0 +      0.00005720852 * Cos( 2.59059512267 +        4.45341812490*t);
   neptune_r_0:=neptune_r_0 +      0.00004839672 * Cos( 1.90685991070 +       41.10198105440*t);
   neptune_r_0:=neptune_r_0 +      0.00004483492 * Cos( 2.90573457534 +      529.69096509460*t);
   neptune_r_0:=neptune_r_0 +      0.00004270202 * Cos( 3.41343865825 +      453.42489381900*t);
   neptune_r_0:=neptune_r_0 +      0.00004353790 * Cos( 0.67985662370 +       32.19514480460*t);
   neptune_r_0:=neptune_r_0 +      0.00004420804 * Cos( 1.74993796503 +      108.46121608020*t);
   neptune_r_0:=neptune_r_0 +      0.00002881063 * Cos( 1.98600105123 +      137.03302416240*t);
   neptune_r_0:=neptune_r_0 +      0.00002635535 * Cos( 3.09755943422 +      213.29909543800*t);
   neptune_r_0:=neptune_r_0 +      0.00003380930 * Cos( 0.84810683275 +      183.24281464750*t);
   neptune_r_0:=neptune_r_0 +      0.00002878942 * Cos( 3.67415901855 +      350.33211960040*t);
   neptune_r_0:=neptune_r_0 +      0.00002306293 * Cos( 2.80962935724 +       70.32818044240*t);
   neptune_r_0:=neptune_r_0 +      0.00002530149 * Cos( 5.79839567009 +      490.07345674850*t);
   neptune_r_0:=neptune_r_0 +      0.00002523132 * Cos( 0.48630800015 +      493.04240216510*t);
   neptune_r_0:=neptune_r_0 +      0.00002087303 * Cos( 0.61858378281 +       33.94024994380*t);
   neptune_r_0:=neptune_r_0 +      0.00001976522 * Cos( 5.11703044560 +      168.05251279940*t);
   neptune_r_0:=neptune_r_0 +      0.00001905254 * Cos( 1.72186472126 +      182.27960680100*t);
   neptune_r_0:=neptune_r_0 +      0.00001654039 * Cos( 1.92782545887 +      145.10977900970*t);
   neptune_r_0:=neptune_r_0 +      0.00001435072 * Cos( 1.70005157785 +      484.44438245600*t);
   neptune_r_0:=neptune_r_0 +      0.00001403029 * Cos( 4.58914203187 +      498.67147645760*t);
   neptune_r_0:=neptune_r_0 +      0.00001499193 * Cos( 1.01623299513 +      219.89137757700*t);
   neptune_r_0:=neptune_r_0 +      0.00001398860 * Cos( 0.76220317620 +      176.65053250850*t);
   neptune_r_0:=neptune_r_0 +      0.00001403377 * Cos( 6.07659416908 +      173.68158709190*t);
   neptune_r_0:=neptune_r_0 +      0.00001128560 * Cos( 5.96661179805 +        9.56122755560*t);
   neptune_r_0:=neptune_r_0 +      0.00001228304 * Cos( 1.59881465324 +       77.75054398390*t);

   neptune_r_1:=neptune_r_1 +      0.00236338502 * Cos( 0.70498011235 +       38.13303563780*t);
   neptune_r_1:=neptune_r_1 +      0.00013220279 * Cos( 3.32015499895 +        1.48447270830*t);
   neptune_r_1:=neptune_r_1 +      0.00008621863 * Cos( 6.21628951630 +       35.16409022120*t);
   neptune_r_1:=neptune_r_1 +      0.00002701740 * Cos( 1.88140666779 +       39.61750834610*t);
   neptune_r_1:=neptune_r_1 +      0.00002153150 * Cos( 5.16873840979 +       76.26607127560*t);
   neptune_r_1:=neptune_r_1 +      0.00002154735 * Cos( 2.09431198086 +        2.96894541660*t);
   neptune_r_1:=neptune_r_1 +      0.00001463924 * Cos( 1.18417031047 +       33.67961751290*t);
   neptune_r_1:=neptune_r_1 +      0.00001603165 * Cos( 0.00000000000 +        0.00000000000*t);
   neptune_r_1:=neptune_r_1 +      0.00001135773 * Cos( 3.91891199655 +       36.64856292950*t);
   neptune_r_1:=neptune_r_1 * t;

   neptune_r_2:=neptune_r_2 +      0.00004247412 * Cos( 5.89910679117 +       38.13303563780*t);
   neptune_r_2:=neptune_r_2 * t * t;

   vsop87d_milli_neptune_r := neptune_r_0+neptune_r_1+neptune_r_2;
end;

function vsop87d_milli_saturn_l(t: Double): Double;
   var saturn_l_0: Double=0.0;
   var saturn_l_1: Double=0.0;
   var saturn_l_2: Double=0.0;
   var saturn_l_3: Double=0.0;
   var saturn_l_4: Double=0.0;
begin

   saturn_l_0:=saturn_l_0 +      0.87401354029 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_0:=saturn_l_0 +      0.11107659780 * Cos( 3.96205090194 +      213.29909543800*t);
   saturn_l_0:=saturn_l_0 +      0.01414150958 * Cos( 4.58581515873 +        7.11354700080*t);
   saturn_l_0:=saturn_l_0 +      0.00398379386 * Cos( 0.52112025957 +      206.18554843720*t);
   saturn_l_0:=saturn_l_0 +      0.00350769223 * Cos( 3.30329903015 +      426.59819087600*t);
   saturn_l_0:=saturn_l_0 +      0.00206816296 * Cos( 0.24658366938 +      103.09277421860*t);
   saturn_l_0:=saturn_l_0 +      0.00079271288 * Cos( 3.84007078530 +      220.41264243880*t);
   saturn_l_0:=saturn_l_0 +      0.00023990338 * Cos( 4.66976934860 +      110.20632121940*t);
   saturn_l_0:=saturn_l_0 +      0.00016573583 * Cos( 0.43719123541 +      419.48464387520*t);
   saturn_l_0:=saturn_l_0 +      0.00014906995 * Cos( 5.76903283845 +      316.39186965660*t);
   saturn_l_0:=saturn_l_0 +      0.00015820300 * Cos( 0.93808953760 +      632.78373931320*t);
   saturn_l_0:=saturn_l_0 +      0.00014609562 * Cos( 1.56518573691 +        3.93215326310*t);
   saturn_l_0:=saturn_l_0 +      0.00013160308 * Cos( 4.44891180176 +       14.22709400160*t);
   saturn_l_0:=saturn_l_0 +      0.00015053509 * Cos( 2.71670027883 +      639.89728631400*t);
   saturn_l_0:=saturn_l_0 +      0.00013005305 * Cos( 5.98119067061 +       11.04570026390*t);
   saturn_l_0:=saturn_l_0 +      0.00010725066 * Cos( 3.12939596466 +      202.25339517410*t);
   saturn_l_0:=saturn_l_0 +      0.00005863207 * Cos( 0.23657028777 +      529.69096509460*t);
   saturn_l_0:=saturn_l_0 +      0.00005227771 * Cos( 4.20783162380 +        3.18139373770*t);
   saturn_l_0:=saturn_l_0 +      0.00006126308 * Cos( 1.76328499656 +      277.03499374140*t);
   saturn_l_0:=saturn_l_0 +      0.00005019658 * Cos( 3.17787919533 +      433.71173787680*t);
   saturn_l_0:=saturn_l_0 +      0.00004592541 * Cos( 0.61976424374 +      199.07200143640*t);
   saturn_l_0:=saturn_l_0 +      0.00004005862 * Cos( 2.24479893937 +       63.73589830340*t);
   saturn_l_0:=saturn_l_0 +      0.00002953815 * Cos( 0.98280385206 +       95.97922721780*t);
   saturn_l_0:=saturn_l_0 +      0.00003873696 * Cos( 3.22282692566 +      138.51749687070*t);
   saturn_l_0:=saturn_l_0 +      0.00002461172 * Cos( 2.03163631205 +      735.87651353180*t);
   saturn_l_0:=saturn_l_0 +      0.00003269490 * Cos( 0.77491895787 +      949.17560896980*t);
   saturn_l_0:=saturn_l_0 +      0.00001758143 * Cos( 3.26580514774 +      522.57741809380*t);
   saturn_l_0:=saturn_l_0 +      0.00001640183 * Cos( 5.50504966218 +      846.08283475120*t);
   saturn_l_0:=saturn_l_0 +      0.00001391336 * Cos( 4.02331978116 +      323.50541665740*t);
   saturn_l_0:=saturn_l_0 +      0.00001580641 * Cos( 4.37266314120 +      309.27832265580*t);
   saturn_l_0:=saturn_l_0 +      0.00001123515 * Cos( 2.83726793572 +      415.55249061210*t);
   saturn_l_0:=saturn_l_0 +      0.00001017258 * Cos( 3.71698151814 +      227.52618943960*t);
   saturn_l_0:=saturn_l_0 +      0.00001087237 * Cos( 4.18343232481 +        2.44768055480*t);

   saturn_l_1:=saturn_l_1 +    213.54295595986 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_1:=saturn_l_1 +      0.01296855005 * Cos( 1.82820544701 +      213.29909543800*t);
   saturn_l_1:=saturn_l_1 +      0.00564347566 * Cos( 2.88500136429 +        7.11354700080*t);
   saturn_l_1:=saturn_l_1 +      0.00098323030 * Cos( 1.08070061328 +      426.59819087600*t);
   saturn_l_1:=saturn_l_1 +      0.00107678770 * Cos( 2.27769911872 +      206.18554843720*t);
   saturn_l_1:=saturn_l_1 +      0.00040254586 * Cos( 2.04128257090 +      220.41264243880*t);
   saturn_l_1:=saturn_l_1 +      0.00019941734 * Cos( 1.27954662736 +      103.09277421860*t);
   saturn_l_1:=saturn_l_1 +      0.00010511706 * Cos( 2.74880392800 +       14.22709400160*t);
   saturn_l_1:=saturn_l_1 +      0.00006939233 * Cos( 0.40493079985 +      639.89728631400*t);
   saturn_l_1:=saturn_l_1 +      0.00004803325 * Cos( 2.44194097666 +      419.48464387520*t);
   saturn_l_1:=saturn_l_1 +      0.00004056325 * Cos( 2.92166618776 +      110.20632121940*t);
   saturn_l_1:=saturn_l_1 +      0.00003768630 * Cos( 3.64965631460 +        3.93215326310*t);
   saturn_l_1:=saturn_l_1 +      0.00003384684 * Cos( 2.41694251653 +        3.18139373770*t);
   saturn_l_1:=saturn_l_1 +      0.00003302200 * Cos( 1.26256486715 +      433.71173787680*t);
   saturn_l_1:=saturn_l_1 +      0.00003071382 * Cos( 2.32739317750 +      199.07200143640*t);
   saturn_l_1:=saturn_l_1 +      0.00001953036 * Cos( 3.56394683300 +       11.04570026390*t);
   saturn_l_1:=saturn_l_1 +      0.00001249348 * Cos( 2.62803737519 +       95.97922721780*t);
   saturn_l_1:=saturn_l_1 * t;

   saturn_l_2:=saturn_l_2 +      0.00116441181 * Cos( 1.17987850633 +        7.11354700080*t);
   saturn_l_2:=saturn_l_2 +      0.00091920844 * Cos( 0.07425261094 +      213.29909543800*t);
   saturn_l_2:=saturn_l_2 +      0.00090592251 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_l_2:=saturn_l_2 +      0.00015276909 * Cos( 4.06492007503 +      206.18554843720*t);
   saturn_l_2:=saturn_l_2 +      0.00010631396 * Cos( 0.25778277414 +      220.41264243880*t);
   saturn_l_2:=saturn_l_2 +      0.00010604979 * Cos( 5.40963595885 +      426.59819087600*t);
   saturn_l_2:=saturn_l_2 +      0.00004265368 * Cos( 1.04595556630 +       14.22709400160*t);
   saturn_l_2:=saturn_l_2 +      0.00001215527 * Cos( 2.91860042123 +      103.09277421860*t);
   saturn_l_2:=saturn_l_2 +      0.00001164684 * Cos( 4.60942128971 +      639.89728631400*t);
   saturn_l_2:=saturn_l_2 +      0.00001081967 * Cos( 5.69130351670 +      433.71173787680*t);
   saturn_l_2:=saturn_l_2 +      0.00001020079 * Cos( 0.63369182642 +        3.18139373770*t);
   saturn_l_2:=saturn_l_2 +      0.00001044754 * Cos( 4.04206453611 +      199.07200143640*t);
   saturn_l_2:=saturn_l_2 * t * t;

   saturn_l_3:=saturn_l_3 +      0.00016038734 * Cos( 5.73945377424 +        7.11354700080*t);
   saturn_l_3:=saturn_l_3 +      0.00004249793 * Cos( 4.58539675603 +      213.29909543800*t);
   saturn_l_3:=saturn_l_3 +      0.00001906524 * Cos( 4.76082050205 +      220.41264243880*t);
   saturn_l_3:=saturn_l_3 +      0.00001465687 * Cos( 5.91326678323 +      206.18554843720*t);
   saturn_l_3:=saturn_l_3 +      0.00001162041 * Cos( 5.61973132428 +       14.22709400160*t);
   saturn_l_3:=saturn_l_3 +      0.00001066581 * Cos( 3.60816533142 +      426.59819087600*t);
   saturn_l_3:=saturn_l_3 * t * t * t;

   saturn_l_4:=saturn_l_4 +      0.00001661894 * Cos( 3.99826248978 +        7.11354700080*t);
   saturn_l_4:=saturn_l_4 * t * t * t * t;

   vsop87d_milli_saturn_l := saturn_l_0+saturn_l_1+saturn_l_2+saturn_l_3+saturn_l_4;
end;

function vsop87d_milli_saturn_b(t: Double): Double;
   var saturn_b_0: Double=0.0;
   var saturn_b_1: Double=0.0;
   var saturn_b_2: Double=0.0;
begin

   saturn_b_0:=saturn_b_0 +      0.04330678040 * Cos( 3.60284428399 +      213.29909543800*t);
   saturn_b_0:=saturn_b_0 +      0.00240348303 * Cos( 2.85238489390 +      426.59819087600*t);
   saturn_b_0:=saturn_b_0 +      0.00084745939 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_b_0:=saturn_b_0 +      0.00030863357 * Cos( 3.48441504465 +      220.41264243880*t);
   saturn_b_0:=saturn_b_0 +      0.00034116063 * Cos( 0.57297307844 +      206.18554843720*t);
   saturn_b_0:=saturn_b_0 +      0.00014734070 * Cos( 2.11846597870 +      639.89728631400*t);
   saturn_b_0:=saturn_b_0 +      0.00009916668 * Cos( 5.79003189405 +      419.48464387520*t);
   saturn_b_0:=saturn_b_0 +      0.00006993564 * Cos( 4.73604689179 +        7.11354700080*t);
   saturn_b_0:=saturn_b_0 +      0.00004807587 * Cos( 5.43305315602 +      316.39186965660*t);
   saturn_b_0:=saturn_b_0 +      0.00004788392 * Cos( 4.96512927420 +      110.20632121940*t);
   saturn_b_0:=saturn_b_0 +      0.00003432125 * Cos( 2.73255752123 +      433.71173787680*t);
   saturn_b_0:=saturn_b_0 +      0.00001506129 * Cos( 6.01304536144 +      103.09277421860*t);
   saturn_b_0:=saturn_b_0 +      0.00001060298 * Cos( 5.63099292414 +      529.69096509460*t);

   saturn_b_1:=saturn_b_1 +      0.00397554998 * Cos( 5.33289992556 +      213.29909543800*t);
   saturn_b_1:=saturn_b_1 +      0.00049478641 * Cos( 3.14159265359 +        0.00000000000*t);
   saturn_b_1:=saturn_b_1 +      0.00018571607 * Cos( 6.09919206378 +      426.59819087600*t);
   saturn_b_1:=saturn_b_1 +      0.00014800587 * Cos( 2.30586060520 +      206.18554843720*t);
   saturn_b_1:=saturn_b_1 +      0.00009643981 * Cos( 1.69674660120 +      220.41264243880*t);
   saturn_b_1:=saturn_b_1 +      0.00003757161 * Cos( 1.25429514018 +      419.48464387520*t);
   saturn_b_1:=saturn_b_1 +      0.00002716647 * Cos( 5.91166664787 +      639.89728631400*t);
   saturn_b_1:=saturn_b_1 +      0.00001455309 * Cos( 0.85161616532 +      433.71173787680*t);
   saturn_b_1:=saturn_b_1 +      0.00001290595 * Cos( 2.91770857090 +        7.11354700080*t);
   saturn_b_1:=saturn_b_1 * t;

   saturn_b_2:=saturn_b_2 +      0.00020629977 * Cos( 0.50482422817 +      213.29909543800*t);
   saturn_b_2:=saturn_b_2 +      0.00003719555 * Cos( 3.99833475829 +      206.18554843720*t);
   saturn_b_2:=saturn_b_2 +      0.00001627158 * Cos( 6.18189939500 +      220.41264243880*t);
   saturn_b_2:=saturn_b_2 +      0.00001346067 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_b_2:=saturn_b_2 * t * t;

   vsop87d_milli_saturn_b := saturn_b_0+saturn_b_1+saturn_b_2;
end;

function vsop87d_milli_saturn_r(t: Double): Double;
   var saturn_r_0: Double=0.0;
   var saturn_r_1: Double=0.0;
   var saturn_r_2: Double=0.0;
   var saturn_r_3: Double=0.0;
   var saturn_r_4: Double=0.0;
begin

   saturn_r_0:=saturn_r_0 +      9.55758135801 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_r_0:=saturn_r_0 +      0.52921382465 * Cos( 2.39226219733 +      213.29909543800*t);
   saturn_r_0:=saturn_r_0 +      0.01873679934 * Cos( 5.23549605091 +      206.18554843720*t);
   saturn_r_0:=saturn_r_0 +      0.01464663959 * Cos( 1.64763045468 +      426.59819087600*t);
   saturn_r_0:=saturn_r_0 +      0.00821891059 * Cos( 5.93520025371 +      316.39186965660*t);
   saturn_r_0:=saturn_r_0 +      0.00547506899 * Cos( 5.01532628454 +      103.09277421860*t);
   saturn_r_0:=saturn_r_0 +      0.00371684449 * Cos( 2.27114833428 +      220.41264243880*t);
   saturn_r_0:=saturn_r_0 +      0.00361778433 * Cos( 3.13904303264 +        7.11354700080*t);
   saturn_r_0:=saturn_r_0 +      0.00140617548 * Cos( 5.70406652991 +      632.78373931320*t);
   saturn_r_0:=saturn_r_0 +      0.00108974737 * Cos( 3.29313595577 +      110.20632121940*t);
   saturn_r_0:=saturn_r_0 +      0.00069007015 * Cos( 5.94099622447 +      419.48464387520*t);
   saturn_r_0:=saturn_r_0 +      0.00061053350 * Cos( 0.94037761156 +      639.89728631400*t);
   saturn_r_0:=saturn_r_0 +      0.00048913044 * Cos( 1.55733388472 +      202.25339517410*t);
   saturn_r_0:=saturn_r_0 +      0.00034143794 * Cos( 0.19518550682 +      277.03499374140*t);
   saturn_r_0:=saturn_r_0 +      0.00032401718 * Cos( 5.47084606947 +      949.17560896980*t);
   saturn_r_0:=saturn_r_0 +      0.00020936573 * Cos( 0.46349163993 +      735.87651353180*t);
   saturn_r_0:=saturn_r_0 +      0.00020839118 * Cos( 1.52102590640 +      433.71173787680*t);
   saturn_r_0:=saturn_r_0 +      0.00020746678 * Cos( 5.33255667599 +      199.07200143640*t);
   saturn_r_0:=saturn_r_0 +      0.00015298457 * Cos( 3.05943652881 +      529.69096509460*t);
   saturn_r_0:=saturn_r_0 +      0.00014296479 * Cos( 2.60433537909 +      323.50541665740*t);
   saturn_r_0:=saturn_r_0 +      0.00011993314 * Cos( 5.98051421881 +      846.08283475120*t);
   saturn_r_0:=saturn_r_0 +      0.00011380261 * Cos( 1.73105746566 +      522.57741809380*t);
   saturn_r_0:=saturn_r_0 +      0.00012884128 * Cos( 1.64892310393 +      138.51749687070*t);
   saturn_r_0:=saturn_r_0 +      0.00007752769 * Cos( 5.85191318903 +       95.97922721780*t);
   saturn_r_0:=saturn_r_0 +      0.00009796061 * Cos( 5.20475863996 +     1265.56747862640*t);
   saturn_r_0:=saturn_r_0 +      0.00006465967 * Cos( 0.17733160145 +     1052.26838318840*t);
   saturn_r_0:=saturn_r_0 +      0.00006770621 * Cos( 3.00433479284 +       14.22709400160*t);
   saturn_r_0:=saturn_r_0 +      0.00005850443 * Cos( 1.45519636076 +      415.55249061210*t);
   saturn_r_0:=saturn_r_0 +      0.00005307481 * Cos( 0.59737534050 +       63.73589830340*t);
   saturn_r_0:=saturn_r_0 +      0.00004695746 * Cos( 2.14919036956 +      227.52618943960*t);
   saturn_r_0:=saturn_r_0 +      0.00004043988 * Cos( 1.64010323863 +      209.36694217490*t);
   saturn_r_0:=saturn_r_0 +      0.00003688132 * Cos( 0.78016133170 +      412.37109687440*t);
   saturn_r_0:=saturn_r_0 +      0.00003376457 * Cos( 3.69528478828 +      224.34479570190*t);
   saturn_r_0:=saturn_r_0 +      0.00002885348 * Cos( 1.38764077631 +      838.96928775040*t);
   saturn_r_0:=saturn_r_0 +      0.00002976033 * Cos( 5.68467931117 +      210.11770170030*t);
   saturn_r_0:=saturn_r_0 +      0.00003419551 * Cos( 4.94549148887 +     1581.95934828300*t);
   saturn_r_0:=saturn_r_0 +      0.00003460943 * Cos( 1.85088802878 +      175.16605980020*t);
   saturn_r_0:=saturn_r_0 +      0.00003400616 * Cos( 0.55386747515 +      350.33211960040*t);
   saturn_r_0:=saturn_r_0 +      0.00002507630 * Cos( 3.53851863255 +      742.99006053260*t);
   saturn_r_0:=saturn_r_0 +      0.00002448325 * Cos( 6.18412386316 +     1368.66025284500*t);
   saturn_r_0:=saturn_r_0 +      0.00002406138 * Cos( 2.96559220267 +      117.31986822020*t);
   saturn_r_0:=saturn_r_0 +      0.00002881181 * Cos( 0.17960757891 +      853.19638175200*t);
   saturn_r_0:=saturn_r_0 +      0.00002173959 * Cos( 0.01508587396 +      340.77089204480*t);
   saturn_r_0:=saturn_r_0 +      0.00002024483 * Cos( 5.05411271271 +       11.04570026390*t);
   saturn_r_0:=saturn_r_0 +      0.00001740254 * Cos( 2.34657043464 +      309.27832265580*t);
   saturn_r_0:=saturn_r_0 +      0.00001861397 * Cos( 5.93361638244 +      625.67019231240*t);
   saturn_r_0:=saturn_r_0 +      0.00001888436 * Cos( 0.02968443389 +        3.93215326310*t);
   saturn_r_0:=saturn_r_0 +      0.00001610859 * Cos( 1.17302463549 +       74.78159856730*t);
   saturn_r_0:=saturn_r_0 +      0.00001462631 * Cos( 1.92588134017 +      216.48048917570*t);
   saturn_r_0:=saturn_r_0 +      0.00001474547 * Cos( 5.67670461130 +      203.73786788240*t);
   saturn_r_0:=saturn_r_0 +      0.00001395109 * Cos( 5.93669404929 +      127.47179660680*t);
   saturn_r_0:=saturn_r_0 +      0.00001781165 * Cos( 0.76314388077 +      217.23124870110*t);
   saturn_r_0:=saturn_r_0 +      0.00001817186 * Cos( 5.77713225779 +      490.33408917940*t);
   saturn_r_0:=saturn_r_0 +      0.00001472392 * Cos( 1.40064915651 +      137.03302416240*t);
   saturn_r_0:=saturn_r_0 +      0.00001304089 * Cos( 0.77235613966 +      647.01083331480*t);
   saturn_r_0:=saturn_r_0 +      0.00001149773 * Cos( 5.74021249703 +     1162.47470440780*t);
   saturn_r_0:=saturn_r_0 +      0.00001126667 * Cos( 4.46707803791 +      265.98929347750*t);
   saturn_r_0:=saturn_r_0 +      0.00001277489 * Cos( 2.98412586423 +     1059.38193018920*t);
   saturn_r_0:=saturn_r_0 +      0.00001207053 * Cos( 0.75285933160 +      351.81659230870*t);
   saturn_r_0:=saturn_r_0 +      0.00001071399 * Cos( 1.13567265104 +     1155.36115740700*t);
   saturn_r_0:=saturn_r_0 +      0.00001020922 * Cos( 5.91233512844 +     1685.05212250160*t);
   saturn_r_0:=saturn_r_0 +      0.00001315042 * Cos( 5.11202572637 +      211.81462272970*t);
   saturn_r_0:=saturn_r_0 +      0.00001295553 * Cos( 4.69184139933 +     1898.35121793960*t);
   saturn_r_0:=saturn_r_0 +      0.00001099037 * Cos( 1.81765118601 +      149.56319713460*t);

   saturn_r_1:=saturn_r_1 +      0.06182981282 * Cos( 0.25843515034 +      213.29909543800*t);
   saturn_r_1:=saturn_r_1 +      0.00506577574 * Cos( 0.71114650941 +      206.18554843720*t);
   saturn_r_1:=saturn_r_1 +      0.00341394136 * Cos( 5.79635773960 +      426.59819087600*t);
   saturn_r_1:=saturn_r_1 +      0.00188491375 * Cos( 0.47215719444 +      220.41264243880*t);
   saturn_r_1:=saturn_r_1 +      0.00186261540 * Cos( 3.14159265359 +        0.00000000000*t);
   saturn_r_1:=saturn_r_1 +      0.00143891176 * Cos( 1.40744864239 +        7.11354700080*t);
   saturn_r_1:=saturn_r_1 +      0.00049621111 * Cos( 6.01744469580 +      103.09277421860*t);
   saturn_r_1:=saturn_r_1 +      0.00020928189 * Cos( 5.09245654470 +      639.89728631400*t);
   saturn_r_1:=saturn_r_1 +      0.00019952612 * Cos( 1.17560125007 +      419.48464387520*t);
   saturn_r_1:=saturn_r_1 +      0.00018839639 * Cos( 1.60819563173 +      110.20632121940*t);
   saturn_r_1:=saturn_r_1 +      0.00012892827 * Cos( 5.94330258435 +      433.71173787680*t);
   saturn_r_1:=saturn_r_1 +      0.00013876565 * Cos( 0.75886204364 +      199.07200143640*t);
   saturn_r_1:=saturn_r_1 +      0.00005396699 * Cos( 1.28852405908 +       14.22709400160*t);
   saturn_r_1:=saturn_r_1 +      0.00004869308 * Cos( 0.86793894213 +      323.50541665740*t);
   saturn_r_1:=saturn_r_1 +      0.00004247455 * Cos( 0.39299384543 +      227.52618943960*t);
   saturn_r_1:=saturn_r_1 +      0.00003252084 * Cos( 1.25853470491 +       95.97922721780*t);
   saturn_r_1:=saturn_r_1 +      0.00002856006 * Cos( 2.16731405366 +      735.87651353180*t);
   saturn_r_1:=saturn_r_1 +      0.00002909411 * Cos( 4.60679154788 +      202.25339517410*t);
   saturn_r_1:=saturn_r_1 +      0.00003081408 * Cos( 3.43662557418 +      522.57741809380*t);
   saturn_r_1:=saturn_r_1 +      0.00001987689 * Cos( 2.45054204795 +      412.37109687440*t);
   saturn_r_1:=saturn_r_1 +      0.00001941309 * Cos( 6.02393385142 +      209.36694217490*t);
   saturn_r_1:=saturn_r_1 +      0.00001581446 * Cos( 1.29191789712 +      210.11770170030*t);
   saturn_r_1:=saturn_r_1 +      0.00001339511 * Cos( 4.30801821806 +      853.19638175200*t);
   saturn_r_1:=saturn_r_1 +      0.00001315590 * Cos( 1.25296446023 +      117.31986822020*t);
   saturn_r_1:=saturn_r_1 +      0.00001203085 * Cos( 1.86654673794 +      316.39186965660*t);
   saturn_r_1:=saturn_r_1 +      0.00001091088 * Cos( 0.07527246854 +      216.48048917570*t);
   saturn_r_1:=saturn_r_1 * t;

   saturn_r_2:=saturn_r_2 +      0.00436902464 * Cos( 4.78671673044 +      213.29909543800*t);
   saturn_r_2:=saturn_r_2 +      0.00071922760 * Cos( 2.50069994874 +      206.18554843720*t);
   saturn_r_2:=saturn_r_2 +      0.00049766792 * Cos( 4.97168150870 +      220.41264243880*t);
   saturn_r_2:=saturn_r_2 +      0.00043220894 * Cos( 3.86940443794 +      426.59819087600*t);
   saturn_r_2:=saturn_r_2 +      0.00029645554 * Cos( 5.96310264282 +        7.11354700080*t);
   saturn_r_2:=saturn_r_2 +      0.00004141650 * Cos( 4.10670940823 +      433.71173787680*t);
   saturn_r_2:=saturn_r_2 +      0.00004720909 * Cos( 2.47527992423 +      199.07200143640*t);
   saturn_r_2:=saturn_r_2 +      0.00003789370 * Cos( 3.09771025067 +      639.89728631400*t);
   saturn_r_2:=saturn_r_2 +      0.00002963990 * Cos( 1.37206248846 +      103.09277421860*t);
   saturn_r_2:=saturn_r_2 +      0.00002556363 * Cos( 2.85065721526 +      419.48464387520*t);
   saturn_r_2:=saturn_r_2 +      0.00002208457 * Cos( 6.27588858707 +      110.20632121940*t);
   saturn_r_2:=saturn_r_2 +      0.00002187621 * Cos( 5.85545832218 +       14.22709400160*t);
   saturn_r_2:=saturn_r_2 +      0.00001956896 * Cos( 4.92448618045 +      227.52618943960*t);
   saturn_r_2:=saturn_r_2 +      0.00002326801 * Cos( 0.00000000000 +        0.00000000000*t);
   saturn_r_2:=saturn_r_2 * t * t;

   saturn_r_3:=saturn_r_3 +      0.00020315005 * Cos( 3.02186626038 +      213.29909543800*t);
   saturn_r_3:=saturn_r_3 +      0.00008923581 * Cos( 3.19144205755 +      220.41264243880*t);
   saturn_r_3:=saturn_r_3 +      0.00006908677 * Cos( 4.35174889353 +      206.18554843720*t);
   saturn_r_3:=saturn_r_3 +      0.00004087129 * Cos( 4.22406927376 +        7.11354700080*t);
   saturn_r_3:=saturn_r_3 +      0.00003879041 * Cos( 2.01056445995 +      426.59819087600*t);
   saturn_r_3:=saturn_r_3 +      0.00001070788 * Cos( 4.20360341236 +      199.07200143640*t);
   saturn_r_3:=saturn_r_3 * t * t * t;

   saturn_r_4:=saturn_r_4 +      0.00001202050 * Cos( 1.41499446465 +      220.41264243880*t);
   saturn_r_4:=saturn_r_4 * t * t * t * t;

   vsop87d_milli_saturn_r := saturn_r_0+saturn_r_1+saturn_r_2+saturn_r_3+saturn_r_4;
end;

function vsop87d_milli_uranus_l(t: Double): Double;
   var uranus_l_0: Double=0.0;
   var uranus_l_1: Double=0.0;
   var uranus_l_2: Double=0.0;
begin

   uranus_l_0:=uranus_l_0 +      5.48129294299 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_0:=uranus_l_0 +      0.09260408252 * Cos( 0.89106421530 +       74.78159856730*t);
   uranus_l_0:=uranus_l_0 +      0.01504247826 * Cos( 3.62719262195 +        1.48447270830*t);
   uranus_l_0:=uranus_l_0 +      0.00365981718 * Cos( 1.89962189068 +       73.29712585900*t);
   uranus_l_0:=uranus_l_0 +      0.00272328132 * Cos( 3.35823710524 +      149.56319713460*t);
   uranus_l_0:=uranus_l_0 +      0.00070328499 * Cos( 5.39254431993 +       63.73589830340*t);
   uranus_l_0:=uranus_l_0 +      0.00068892609 * Cos( 6.09292489045 +       76.26607127560*t);
   uranus_l_0:=uranus_l_0 +      0.00061998592 * Cos( 2.26952040469 +        2.96894541660*t);
   uranus_l_0:=uranus_l_0 +      0.00061950714 * Cos( 2.85098907565 +       11.04570026390*t);
   uranus_l_0:=uranus_l_0 +      0.00026468869 * Cos( 3.14152087888 +       71.81265315070*t);
   uranus_l_0:=uranus_l_0 +      0.00025710505 * Cos( 6.11379842935 +      454.90936652730*t);
   uranus_l_0:=uranus_l_0 +      0.00021078897 * Cos( 4.36059465144 +      148.07872442630*t);
   uranus_l_0:=uranus_l_0 +      0.00017818665 * Cos( 1.74436982544 +       36.64856292950*t);
   uranus_l_0:=uranus_l_0 +      0.00014613471 * Cos( 4.73732047977 +        3.93215326310*t);
   uranus_l_0:=uranus_l_0 +      0.00011162535 * Cos( 5.82681993692 +      224.34479570190*t);
   uranus_l_0:=uranus_l_0 +      0.00010997934 * Cos( 0.48865493179 +      138.51749687070*t);
   uranus_l_0:=uranus_l_0 +      0.00009527487 * Cos( 2.95516893093 +       35.16409022120*t);
   uranus_l_0:=uranus_l_0 +      0.00007545543 * Cos( 5.23626440666 +      109.94568878850*t);
   uranus_l_0:=uranus_l_0 +      0.00004220170 * Cos( 3.23328535514 +       70.84944530420*t);
   uranus_l_0:=uranus_l_0 +      0.00004051850 * Cos( 2.27754158724 +      151.04766984290*t);
   uranus_l_0:=uranus_l_0 +      0.00003354607 * Cos( 1.06549008887 +        4.45341812490*t);
   uranus_l_0:=uranus_l_0 +      0.00002926671 * Cos( 4.62903695486 +        9.56122755560*t);
   uranus_l_0:=uranus_l_0 +      0.00003490352 * Cos( 5.48305567292 +      146.59425171800*t);
   uranus_l_0:=uranus_l_0 +      0.00003144093 * Cos( 4.75199307603 +       77.75054398390*t);
   uranus_l_0:=uranus_l_0 +      0.00002922410 * Cos( 5.35236743380 +       85.82729883120*t);
   uranus_l_0:=uranus_l_0 +      0.00002272790 * Cos( 4.36600802756 +       70.32818044240*t);
   uranus_l_0:=uranus_l_0 +      0.00002051209 * Cos( 1.51773563459 +        0.11187458460*t);
   uranus_l_0:=uranus_l_0 +      0.00002148599 * Cos( 0.60745800902 +       38.13303563780*t);
   uranus_l_0:=uranus_l_0 +      0.00001991726 * Cos( 4.92437290826 +      277.03499374140*t);
   uranus_l_0:=uranus_l_0 +      0.00001376208 * Cos( 2.04281409054 +       65.22037101170*t);
   uranus_l_0:=uranus_l_0 +      0.00001666910 * Cos( 3.62744580852 +      380.12776796000*t);
   uranus_l_0:=uranus_l_0 +      0.00001284183 * Cos( 3.11346336879 +      202.25339517410*t);
   uranus_l_0:=uranus_l_0 +      0.00001150416 * Cos( 0.93344454002 +        3.18139373770*t);
   uranus_l_0:=uranus_l_0 +      0.00001533223 * Cos( 2.58593414266 +       52.69019803950*t);
   uranus_l_0:=uranus_l_0 +      0.00001281641 * Cos( 0.54269869505 +      222.86032299360*t);
   uranus_l_0:=uranus_l_0 +      0.00001372100 * Cos( 4.19641615561 +      111.43016149680*t);
   uranus_l_0:=uranus_l_0 +      0.00001220998 * Cos( 0.19901396193 +      108.46121608020*t);
   uranus_l_0:=uranus_l_0 +      0.00001150993 * Cos( 4.17898207045 +       33.67961751290*t);
   uranus_l_0:=uranus_l_0 +      0.00001244342 * Cos( 0.91612680579 +        2.44768055480*t);
   uranus_l_0:=uranus_l_0 +      0.00001072008 * Cos( 0.23564502877 +       62.25142559510*t);
   uranus_l_0:=uranus_l_0 +      0.00001090461 * Cos( 1.77501638912 +       12.53017297220*t);

   uranus_l_1:=uranus_l_1 +     75.02543121646 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_1:=uranus_l_1 +      0.00154458244 * Cos( 5.24201658072 +       74.78159856730*t);
   uranus_l_1:=uranus_l_1 +      0.00024456413 * Cos( 1.71255705309 +        1.48447270830*t);
   uranus_l_1:=uranus_l_1 +      0.00009257828 * Cos( 0.42844639064 +       11.04570026390*t);
   uranus_l_1:=uranus_l_1 +      0.00008265977 * Cos( 1.50220035110 +       63.73589830340*t);
   uranus_l_1:=uranus_l_1 +      0.00007841715 * Cos( 1.31983607251 +      149.56319713460*t);
   uranus_l_1:=uranus_l_1 +      0.00003899105 * Cos( 0.46483574024 +        3.93215326310*t);
   uranus_l_1:=uranus_l_1 +      0.00002283777 * Cos( 4.17367533997 +       76.26607127560*t);
   uranus_l_1:=uranus_l_1 +      0.00001926600 * Cos( 0.53013080152 +        2.96894541660*t);
   uranus_l_1:=uranus_l_1 +      0.00001232727 * Cos( 1.58634458237 +       70.84944530420*t);
   uranus_l_1:=uranus_l_1 * t;

   uranus_l_2:=uranus_l_2 +      0.00053033277 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_l_2:=uranus_l_2 +      0.00002357636 * Cos( 2.26014661705 +       74.78159856730*t);
   uranus_l_2:=uranus_l_2 * t * t;

   vsop87d_milli_uranus_l := uranus_l_0+uranus_l_1+uranus_l_2;
end;

function vsop87d_milli_uranus_b(t: Double): Double;
   var uranus_b_0: Double=0.0;
   var uranus_b_1: Double=0.0;
   var uranus_b_2: Double=0.0;
begin

   uranus_b_0:=uranus_b_0 +      0.01346277639 * Cos( 2.61877810545 +       74.78159856730*t);
   uranus_b_0:=uranus_b_0 +      0.00062341405 * Cos( 5.08111175856 +      149.56319713460*t);
   uranus_b_0:=uranus_b_0 +      0.00061601203 * Cos( 3.14159265359 +        0.00000000000*t);
   uranus_b_0:=uranus_b_0 +      0.00009963744 * Cos( 1.61603876357 +       76.26607127560*t);
   uranus_b_0:=uranus_b_0 +      0.00009926151 * Cos( 0.57630387917 +       73.29712585900*t);
   uranus_b_0:=uranus_b_0 +      0.00003259455 * Cos( 1.26119385960 +      224.34479570190*t);
   uranus_b_0:=uranus_b_0 +      0.00002972318 * Cos( 2.24367035538 +        1.48447270830*t);
   uranus_b_0:=uranus_b_0 +      0.00002010257 * Cos( 6.05550401088 +      148.07872442630*t);
   uranus_b_0:=uranus_b_0 +      0.00001522172 * Cos( 0.27960386377 +       63.73589830340*t);

   uranus_b_1:=uranus_b_1 +      0.00206366162 * Cos( 4.12394311407 +       74.78159856730*t);
   uranus_b_1:=uranus_b_1 +      0.00008563230 * Cos( 0.33819986165 +      149.56319713460*t);
   uranus_b_1:=uranus_b_1 +      0.00001725703 * Cos( 2.12193159895 +       73.29712585900*t);
   uranus_b_1:=uranus_b_1 +      0.00001368860 * Cos( 3.06861722047 +       76.26607127560*t);
   uranus_b_1:=uranus_b_1 +      0.00001374449 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_b_1:=uranus_b_1 * t;

   uranus_b_2:=uranus_b_2 +      0.00009211656 * Cos( 5.80044305785 +       74.78159856730*t);
   uranus_b_2:=uranus_b_2 * t * t;

   vsop87d_milli_uranus_b := uranus_b_0+uranus_b_1+uranus_b_2;
end;

function vsop87d_milli_uranus_r(t: Double): Double;
   var uranus_r_0: Double=0.0;
   var uranus_r_1: Double=0.0;
   var uranus_r_2: Double=0.0;
   var uranus_r_3: Double=0.0;
begin

   uranus_r_0:=uranus_r_0 +     19.21264847881 * Cos( 0.00000000000 +        0.00000000000*t);
   uranus_r_0:=uranus_r_0 +      0.88784984055 * Cos( 5.60377526994 +       74.78159856730*t);
   uranus_r_0:=uranus_r_0 +      0.03440835545 * Cos( 0.32836098991 +       73.29712585900*t);
   uranus_r_0:=uranus_r_0 +      0.02055653495 * Cos( 1.78295170028 +      149.56319713460*t);
   uranus_r_0:=uranus_r_0 +      0.00649321851 * Cos( 4.52247298119 +       76.26607127560*t);
   uranus_r_0:=uranus_r_0 +      0.00602248144 * Cos( 3.86003820462 +       63.73589830340*t);
   uranus_r_0:=uranus_r_0 +      0.00496404171 * Cos( 1.40139934716 +      454.90936652730*t);
   uranus_r_0:=uranus_r_0 +      0.00338525522 * Cos( 1.58002682946 +      138.51749687070*t);
   uranus_r_0:=uranus_r_0 +      0.00243508222 * Cos( 1.57086595074 +       71.81265315070*t);
   uranus_r_0:=uranus_r_0 +      0.00190521915 * Cos( 1.99809364502 +        1.48447270830*t);
   uranus_r_0:=uranus_r_0 +      0.00161858251 * Cos( 2.79137863469 +      148.07872442630*t);
   uranus_r_0:=uranus_r_0 +      0.00143705902 * Cos( 1.38368574483 +       11.04570026390*t);
   uranus_r_0:=uranus_r_0 +      0.00093192359 * Cos( 0.17437193645 +       36.64856292950*t);
   uranus_r_0:=uranus_r_0 +      0.00071424265 * Cos( 4.24509327405 +      224.34479570190*t);
   uranus_r_0:=uranus_r_0 +      0.00089805842 * Cos( 3.66105366329 +      109.94568878850*t);
   uranus_r_0:=uranus_r_0 +      0.00039009624 * Cos( 1.66971128869 +       70.84944530420*t);
   uranus_r_0:=uranus_r_0 +      0.00046677322 * Cos( 1.39976563936 +       35.16409022120*t);
   uranus_r_0:=uranus_r_0 +      0.00039025681 * Cos( 3.36234710692 +      277.03499374140*t);
   uranus_r_0:=uranus_r_0 +      0.00036755160 * Cos( 3.88648934736 +      146.59425171800*t);
   uranus_r_0:=uranus_r_0 +      0.00030348875 * Cos( 0.70100446346 +      151.04766984290*t);
   uranus_r_0:=uranus_r_0 +      0.00029156264 * Cos( 3.18056174556 +       77.75054398390*t);
   uranus_r_0:=uranus_r_0 +      0.00020471584 * Cos( 1.55588961500 +      202.25339517410*t);
   uranus_r_0:=uranus_r_0 +      0.00025620360 * Cos( 5.25656292802 +      380.12776796000*t);
   uranus_r_0:=uranus_r_0 +      0.00025785805 * Cos( 3.78537741503 +       85.82729883120*t);
   uranus_r_0:=uranus_r_0 +      0.00022637152 * Cos( 0.72519137745 +      529.69096509460*t);
   uranus_r_0:=uranus_r_0 +      0.00020473163 * Cos( 2.79639811626 +       70.32818044240*t);
   uranus_r_0:=uranus_r_0 +      0.00017900561 * Cos( 0.55455488605 +        2.96894541660*t);
   uranus_r_0:=uranus_r_0 +      0.00012328151 * Cos( 5.96039150918 +      127.47179660680*t);
   uranus_r_0:=uranus_r_0 +      0.00014701566 * Cos( 4.90434406648 +      108.46121608020*t);
   uranus_r_0:=uranus_r_0 +      0.00011494701 * Cos( 0.43774027872 +       65.22037101170*t);
   uranus_r_0:=uranus_r_0 +      0.00015502809 * Cos( 5.35405037603 +       38.13303563780*t);
   uranus_r_0:=uranus_r_0 +      0.00010792699 * Cos( 1.42104858472 +      213.29909543800*t);
   uranus_r_0:=uranus_r_0 +      0.00011696085 * Cos( 3.29825599114 +        3.93215326310*t);
   uranus_r_0:=uranus_r_0 +      0.00011959355 * Cos( 1.75044072173 +      984.60033162190*t);
   uranus_r_0:=uranus_r_0 +      0.00012896507 * Cos( 2.62154018241 +      111.43016149680*t);
   uranus_r_0:=uranus_r_0 +      0.00011852996 * Cos( 0.99342814582 +       52.69019803950*t);
   uranus_r_0:=uranus_r_0 +      0.00009111446 * Cos( 4.99638600045 +       62.25142559510*t);
   uranus_r_0:=uranus_r_0 +      0.00008420550 * Cos( 5.25350716616 +      222.86032299360*t);
   uranus_r_0:=uranus_r_0 +      0.00007449125 * Cos( 0.79491905956 +      351.81659230870*t);
   uranus_r_0:=uranus_r_0 +      0.00008402147 * Cos( 5.03877516489 +      415.55249061210*t);
   uranus_r_0:=uranus_r_0 +      0.00006046370 * Cos( 5.67960948357 +       78.71375183040*t);
   uranus_r_0:=uranus_r_0 +      0.00005524133 * Cos( 3.11499484161 +        9.56122755560*t);
   uranus_r_0:=uranus_r_0 +      0.00007329454 * Cos( 3.97277527840 +      183.24281464750*t);
   uranus_r_0:=uranus_r_0 +      0.00005444878 * Cos( 5.10575635361 +      145.10977900970*t);
   uranus_r_0:=uranus_r_0 +      0.00005238103 * Cos( 2.62960141797 +       33.67961751290*t);
   uranus_r_0:=uranus_r_0 +      0.00004079167 * Cos( 3.22064788674 +      340.77089204480*t);
   uranus_r_0:=uranus_r_0 +      0.00003801606 * Cos( 6.10985558505 +      184.72728735580*t);
   uranus_r_0:=uranus_r_0 +      0.00003919476 * Cos( 4.25015288873 +       39.61750834610*t);
   uranus_r_0:=uranus_r_0 +      0.00002940492 * Cos( 2.14637460319 +      137.03302416240*t);
   uranus_r_0:=uranus_r_0 +      0.00003781219 * Cos( 3.45840272873 +      456.39383923560*t);
   uranus_r_0:=uranus_r_0 +      0.00002942239 * Cos( 0.42393808854 +      299.12639426920*t);
   uranus_r_0:=uranus_r_0 +      0.00003686787 * Cos( 2.48718116535 +      453.42489381900*t);
   uranus_r_0:=uranus_r_0 +      0.00003101743 * Cos( 4.14031063896 +      219.89137757700*t);
   uranus_r_0:=uranus_r_0 +      0.00002962641 * Cos( 0.82977991995 +       56.62235130260*t);
   uranus_r_0:=uranus_r_0 +      0.00002937799 * Cos( 3.67657450930 +      140.00196957900*t);
   uranus_r_0:=uranus_r_0 +      0.00002865128 * Cos( 0.30996903761 +       12.53017297220*t);
   uranus_r_0:=uranus_r_0 +      0.00002538032 * Cos( 4.85457831993 +      131.40394986990*t);
   uranus_r_0:=uranus_r_0 +      0.00001962510 * Cos( 5.24342224065 +       84.34282612290*t);
   uranus_r_0:=uranus_r_0 +      0.00002363550 * Cos( 0.44253328372 +      554.06998748280*t);
   uranus_r_0:=uranus_r_0 +      0.00001979394 * Cos( 6.12836181686 +      106.97674337190*t);
   uranus_r_0:=uranus_r_0 +      0.00002182572 * Cos( 2.94040431638 +      305.34616939270*t);
   uranus_r_0:=uranus_r_0 +      0.00001962974 * Cos( 0.04114739120 +      221.37585028530*t);
   uranus_r_0:=uranus_r_0 +      0.00001829560 * Cos( 4.01105771632 +       68.84370773410*t);
   uranus_r_0:=uranus_r_0 +      0.00001642920 * Cos( 0.35564102554 +       67.66805156650*t);
   uranus_r_0:=uranus_r_0 +      0.00001584850 * Cos( 3.16267171762 +      225.82926841020*t);
   uranus_r_0:=uranus_r_0 +      0.00001848655 * Cos( 2.91111759376 +      909.81873305460*t);
   uranus_r_0:=uranus_r_0 +      0.00001632430 * Cos( 4.23061792837 +       22.09140052780*t);
   uranus_r_0:=uranus_r_0 +      0.00001401390 * Cos( 1.39084023521 +      265.98929347750*t);
   uranus_r_0:=uranus_r_0 +      0.00001403717 * Cos( 5.63563637532 +        4.45341812490*t);
   uranus_r_0:=uranus_r_0 +      0.00001655866 * Cos( 1.96431297431 +       79.23501669220*t);
   uranus_r_0:=uranus_r_0 +      0.00001248978 * Cos( 5.44027380866 +       54.17467074780*t);
   uranus_r_0:=uranus_r_0 +      0.00001563447 * Cos( 1.47917835549 +      112.91463420510*t);
   uranus_r_0:=uranus_r_0 +      0.00001248054 * Cos( 4.88984353601 +      479.28838891550*t);
   uranus_r_0:=uranus_r_0 +      0.00001197439 * Cos( 2.52185744943 +      145.63104387150*t);
   uranus_r_0:=uranus_r_0 +      0.00001506952 * Cos( 5.24186185583 +      181.75834193920*t);
   uranus_r_0:=uranus_r_0 +      0.00001481746 * Cos( 5.66203046912 +      152.53214255120*t);
   uranus_r_0:=uranus_r_0 +      0.00001438838 * Cos( 1.53046287618 +      447.79581952650*t);
   uranus_r_0:=uranus_r_0 +      0.00001408514 * Cos( 4.41921749601 +      462.02291352810*t);
   uranus_r_0:=uranus_r_0 +      0.00001477112 * Cos( 4.32214690647 +      256.53994050650*t);
   uranus_r_0:=uranus_r_0 +      0.00001228314 * Cos( 5.97703331040 +       59.80374504030*t);
   uranus_r_0:=uranus_r_0 +      0.00001249958 * Cos( 6.24484546141 +      160.60889739850*t);
   uranus_r_0:=uranus_r_0 +      0.00001090681 * Cos( 4.15393813845 +       77.96299230500*t);
   uranus_r_0:=uranus_r_0 +      0.00001071957 * Cos( 1.74286714339 +      528.20649238630*t);

   uranus_r_1:=uranus_r_1 +      0.01479896370 * Cos( 3.67205705317 +       74.78159856730*t);
   uranus_r_1:=uranus_r_1 +      0.00071212085 * Cos( 6.22601006675 +       63.73589830340*t);
   uranus_r_1:=uranus_r_1 +      0.00068626972 * Cos( 6.13411265052 +      149.56319713460*t);
   uranus_r_1:=uranus_r_1 +      0.00020857262 * Cos( 5.24625494219 +       11.04570026390*t);
   uranus_r_1:=uranus_r_1 +      0.00021468152 * Cos( 2.60176704270 +       76.26607127560*t);
   uranus_r_1:=uranus_r_1 +      0.00024059649 * Cos( 3.14159265359 +        0.00000000000*t);
   uranus_r_1:=uranus_r_1 +      0.00011405346 * Cos( 0.01848461561 +       70.84944530420*t);
   uranus_r_1:=uranus_r_1 +      0.00007496775 * Cos( 0.42360033283 +       73.29712585900*t);
   uranus_r_1:=uranus_r_1 +      0.00004243800 * Cos( 1.41692350371 +       85.82729883120*t);
   uranus_r_1:=uranus_r_1 +      0.00003505936 * Cos( 2.58354048851 +      138.51749687070*t);
   uranus_r_1:=uranus_r_1 +      0.00003228835 * Cos( 5.25499602896 +        3.93215326310*t);
   uranus_r_1:=uranus_r_1 +      0.00003926694 * Cos( 3.15513991323 +       71.81265315070*t);
   uranus_r_1:=uranus_r_1 +      0.00003060010 * Cos( 0.15321893225 +        1.48447270830*t);
   uranus_r_1:=uranus_r_1 +      0.00003578446 * Cos( 2.31160668309 +      224.34479570190*t);
   uranus_r_1:=uranus_r_1 +      0.00002564251 * Cos( 0.98076846352 +      148.07872442630*t);
   uranus_r_1:=uranus_r_1 +      0.00002429445 * Cos( 3.99440122468 +       52.69019803950*t);
   uranus_r_1:=uranus_r_1 +      0.00001644719 * Cos( 2.65349313124 +      127.47179660680*t);
   uranus_r_1:=uranus_r_1 +      0.00001583766 * Cos( 1.43045619196 +       78.71375183040*t);
   uranus_r_1:=uranus_r_1 +      0.00001413112 * Cos( 4.57461892062 +      202.25339517410*t);
   uranus_r_1:=uranus_r_1 +      0.00001489525 * Cos( 2.67559167316 +       56.62235130260*t);
   uranus_r_1:=uranus_r_1 +      0.00001403237 * Cos( 1.36985349744 +       77.75054398390*t);
   uranus_r_1:=uranus_r_1 +      0.00001228220 * Cos( 1.04703640149 +       62.25142559510*t);
   uranus_r_1:=uranus_r_1 +      0.00001508028 * Cos( 5.05996325425 +      151.04766984290*t);
   uranus_r_1:=uranus_r_1 +      0.00001032731 * Cos( 0.26459059027 +      131.40394986990*t);
   uranus_r_1:=uranus_r_1 * t;

   uranus_r_2:=uranus_r_2 +      0.00022439904 * Cos( 0.69953118760 +       74.78159856730*t);
   uranus_r_2:=uranus_r_2 +      0.00004727037 * Cos( 1.69901641488 +       63.73589830340*t);
   uranus_r_2:=uranus_r_2 +      0.00001681903 * Cos( 4.64833551727 +       70.84944530420*t);
   uranus_r_2:=uranus_r_2 +      0.00001433755 * Cos( 3.52119917947 +      149.56319713460*t);
   uranus_r_2:=uranus_r_2 +      0.00001649559 * Cos( 3.09660078980 +       11.04570026390*t);
   uranus_r_2:=uranus_r_2 * t * t;

   uranus_r_3:=uranus_r_3 +      0.00001164382 * Cos( 4.73453291602 +       74.78159856730*t);
   uranus_r_3:=uranus_r_3 * t * t * t;

   vsop87d_milli_uranus_r := uranus_r_0+uranus_r_1+uranus_r_2+uranus_r_3;
end;

function vsop87d_milli_venus_l(t: Double): Double;
   var venus_l_0: Double=0.0;
   var venus_l_1: Double=0.0;
   var venus_l_2: Double=0.0;
begin

   venus_l_0:=venus_l_0 +      3.17614666774 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_l_0:=venus_l_0 +      0.01353968419 * Cos( 5.59313319619 +    10213.28554621100*t);
   venus_l_0:=venus_l_0 +      0.00089891645 * Cos( 5.30650048468 +    20426.57109242200*t);
   venus_l_0:=venus_l_0 +      0.00005477201 * Cos( 4.41630652531 +     7860.41939243920*t);
   venus_l_0:=venus_l_0 +      0.00003455732 * Cos( 2.69964470778 +    11790.62908865880*t);
   venus_l_0:=venus_l_0 +      0.00002372061 * Cos( 2.99377539568 +     3930.20969621960*t);
   venus_l_0:=venus_l_0 +      0.00001317108 * Cos( 5.18668219093 +       26.29831979980*t);
   venus_l_0:=venus_l_0 +      0.00001664069 * Cos( 4.25018935030 +     1577.34354244780*t);
   venus_l_0:=venus_l_0 +      0.00001438322 * Cos( 4.15745043958 +     9683.59458111640*t);
   venus_l_0:=venus_l_0 +      0.00001200521 * Cos( 6.15357115319 +    30639.85663863300*t);

   venus_l_1:=venus_l_1 +  10213.52943052898 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_l_1:=venus_l_1 +      0.00095707712 * Cos( 2.46424448979 +    10213.28554621100*t);
   venus_l_1:=venus_l_1 +      0.00014444977 * Cos( 0.51624564679 +    20426.57109242200*t);
   venus_l_1:=venus_l_1 * t;

   venus_l_2:=venus_l_2 +      0.00054127076 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_l_2:=venus_l_2 +      0.00003891460 * Cos( 0.34514360047 +    10213.28554621100*t);
   venus_l_2:=venus_l_2 +      0.00001337880 * Cos( 2.02011286082 +    20426.57109242200*t);
   venus_l_2:=venus_l_2 * t * t;

   vsop87d_milli_venus_l := venus_l_0+venus_l_1+venus_l_2;
end;

function vsop87d_milli_venus_b(t: Double): Double;
   var venus_b_0: Double=0.0;
   var venus_b_1: Double=0.0;
   var venus_b_2: Double=0.0;
begin

   venus_b_0:=venus_b_0 +      0.05923638472 * Cos( 0.26702775813 +    10213.28554621100*t);
   venus_b_0:=venus_b_0 +      0.00040107978 * Cos( 1.14737178106 +    20426.57109242200*t);
   venus_b_0:=venus_b_0 +      0.00032814918 * Cos( 3.14159265359 +        0.00000000000*t);
   venus_b_0:=venus_b_0 +      0.00001011392 * Cos( 1.08946123021 +    30639.85663863300*t);

   venus_b_1:=venus_b_1 +      0.00513347602 * Cos( 1.80364310797 +    10213.28554621100*t);
   venus_b_1:=venus_b_1 +      0.00004380100 * Cos( 3.38615711591 +    20426.57109242200*t);
   venus_b_1:=venus_b_1 * t;

   venus_b_2:=venus_b_2 +      0.00022377665 * Cos( 3.38509143877 +    10213.28554621100*t);
   venus_b_2:=venus_b_2 * t * t;

   vsop87d_milli_venus_b := venus_b_0+venus_b_1+venus_b_2;
end;

function vsop87d_milli_venus_r(t: Double): Double;
   var venus_r_0: Double=0.0;
   var venus_r_1: Double=0.0;
   var venus_r_2: Double=0.0;
begin

   venus_r_0:=venus_r_0 +      0.72334820905 * Cos( 0.00000000000 +        0.00000000000*t);
   venus_r_0:=venus_r_0 +      0.00489824185 * Cos( 4.02151832268 +    10213.28554621100*t);
   venus_r_0:=venus_r_0 +      0.00001658058 * Cos( 4.90206728012 +    20426.57109242200*t);
   venus_r_0:=venus_r_0 +      0.00001632093 * Cos( 2.84548851892 +     7860.41939243920*t);
   venus_r_0:=venus_r_0 +      0.00001378048 * Cos( 1.12846590600 +    11790.62908865880*t);

   venus_r_1:=venus_r_1 +      0.00034551039 * Cos( 0.89198710598 +    10213.28554621100*t);
   venus_r_1:=venus_r_1 * t;

   venus_r_2:=venus_r_2 +      0.00001406587 * Cos( 5.06366395190 +    10213.28554621100*t);
   venus_r_2:=venus_r_2 * t * t;

   vsop87d_milli_venus_r := venus_r_0+venus_r_1+venus_r_2;
end;

procedure vsop87d_milli_getEarth(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_milli_earth_l(t);
   temp[1]:=vsop87d_milli_earth_b(t);
   temp[2]:=vsop87d_milli_earth_r(t);
end;

procedure vsop87d_milli_getJupiter(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_milli_jupiter_l(t);
   temp[1]:=vsop87d_milli_jupiter_b(t);
   temp[2]:=vsop87d_milli_jupiter_r(t);
end;

procedure vsop87d_milli_getMars(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_milli_mars_l(t);
   temp[1]:=vsop87d_milli_mars_b(t);
   temp[2]:=vsop87d_milli_mars_r(t);
end;

procedure vsop87d_milli_getMercury(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_milli_mercury_l(t);
   temp[1]:=vsop87d_milli_mercury_b(t);
   temp[2]:=vsop87d_milli_mercury_r(t);
end;

procedure vsop87d_milli_getNeptune(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_milli_neptune_l(t);
   temp[1]:=vsop87d_milli_neptune_b(t);
   temp[2]:=vsop87d_milli_neptune_r(t);
end;

procedure vsop87d_milli_getSaturn(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_milli_saturn_l(t);
   temp[1]:=vsop87d_milli_saturn_b(t);
   temp[2]:=vsop87d_milli_saturn_r(t);
end;

procedure vsop87d_milli_getUranus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_milli_uranus_l(t);
   temp[1]:=vsop87d_milli_uranus_b(t);
   temp[2]:=vsop87d_milli_uranus_r(t);
end;

procedure vsop87d_milli_getVenus(t: Double;var temp: array of Double);
begin
   temp[0]:=vsop87d_milli_venus_l(t);
   temp[1]:=vsop87d_milli_venus_b(t);
   temp[2]:=vsop87d_milli_venus_r(t);
end;
end.