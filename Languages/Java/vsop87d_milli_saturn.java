//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87d_milli_saturn{
   static double saturn_l_0_(double t){
      double saturn_l_0=0.0;
      saturn_l_0+=     0.87401354029 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_0+=     0.11107659780 * cos( 3.96205090194 +      213.29909543800*t);
      saturn_l_0+=     0.01414150958 * cos( 4.58581515873 +        7.11354700080*t);
      saturn_l_0+=     0.00398379386 * cos( 0.52112025957 +      206.18554843720*t);
      saturn_l_0+=     0.00350769223 * cos( 3.30329903015 +      426.59819087600*t);
      saturn_l_0+=     0.00206816296 * cos( 0.24658366938 +      103.09277421860*t);
      saturn_l_0+=     0.00079271288 * cos( 3.84007078530 +      220.41264243880*t);
      saturn_l_0+=     0.00023990338 * cos( 4.66976934860 +      110.20632121940*t);
      saturn_l_0+=     0.00016573583 * cos( 0.43719123541 +      419.48464387520*t);
      saturn_l_0+=     0.00014906995 * cos( 5.76903283845 +      316.39186965660*t);
      saturn_l_0+=     0.00015820300 * cos( 0.93808953760 +      632.78373931320*t);
      saturn_l_0+=     0.00014609562 * cos( 1.56518573691 +        3.93215326310*t);
      saturn_l_0+=     0.00013160308 * cos( 4.44891180176 +       14.22709400160*t);
      saturn_l_0+=     0.00015053509 * cos( 2.71670027883 +      639.89728631400*t);
      saturn_l_0+=     0.00013005305 * cos( 5.98119067061 +       11.04570026390*t);
      saturn_l_0+=     0.00010725066 * cos( 3.12939596466 +      202.25339517410*t);
      saturn_l_0+=     0.00005863207 * cos( 0.23657028777 +      529.69096509460*t);
      saturn_l_0+=     0.00005227771 * cos( 4.20783162380 +        3.18139373770*t);
      saturn_l_0+=     0.00006126308 * cos( 1.76328499656 +      277.03499374140*t);
      saturn_l_0+=     0.00005019658 * cos( 3.17787919533 +      433.71173787680*t);
      saturn_l_0+=     0.00004592541 * cos( 0.61976424374 +      199.07200143640*t);
      saturn_l_0+=     0.00004005862 * cos( 2.24479893937 +       63.73589830340*t);
      saturn_l_0+=     0.00002953815 * cos( 0.98280385206 +       95.97922721780*t);
      saturn_l_0+=     0.00003873696 * cos( 3.22282692566 +      138.51749687070*t);
      saturn_l_0+=     0.00002461172 * cos( 2.03163631205 +      735.87651353180*t);
      saturn_l_0+=     0.00003269490 * cos( 0.77491895787 +      949.17560896980*t);
      saturn_l_0+=     0.00001758143 * cos( 3.26580514774 +      522.57741809380*t);
      saturn_l_0+=     0.00001640183 * cos( 5.50504966218 +      846.08283475120*t);
      saturn_l_0+=     0.00001391336 * cos( 4.02331978116 +      323.50541665740*t);
      saturn_l_0+=     0.00001580641 * cos( 4.37266314120 +      309.27832265580*t);
      saturn_l_0+=     0.00001123515 * cos( 2.83726793572 +      415.55249061210*t);
      saturn_l_0+=     0.00001017258 * cos( 3.71698151814 +      227.52618943960*t);
      saturn_l_0+=     0.00001087237 * cos( 4.18343232481 +        2.44768055480*t);

      return saturn_l_0;
   }

   static double saturn_l_1_(double t){
      double saturn_l_1=0.0;
      saturn_l_1+=   213.54295595986 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_1+=     0.01296855005 * cos( 1.82820544701 +      213.29909543800*t);
      saturn_l_1+=     0.00564347566 * cos( 2.88500136429 +        7.11354700080*t);
      saturn_l_1+=     0.00098323030 * cos( 1.08070061328 +      426.59819087600*t);
      saturn_l_1+=     0.00107678770 * cos( 2.27769911872 +      206.18554843720*t);
      saturn_l_1+=     0.00040254586 * cos( 2.04128257090 +      220.41264243880*t);
      saturn_l_1+=     0.00019941734 * cos( 1.27954662736 +      103.09277421860*t);
      saturn_l_1+=     0.00010511706 * cos( 2.74880392800 +       14.22709400160*t);
      saturn_l_1+=     0.00006939233 * cos( 0.40493079985 +      639.89728631400*t);
      saturn_l_1+=     0.00004803325 * cos( 2.44194097666 +      419.48464387520*t);
      saturn_l_1+=     0.00004056325 * cos( 2.92166618776 +      110.20632121940*t);
      saturn_l_1+=     0.00003768630 * cos( 3.64965631460 +        3.93215326310*t);
      saturn_l_1+=     0.00003384684 * cos( 2.41694251653 +        3.18139373770*t);
      saturn_l_1+=     0.00003302200 * cos( 1.26256486715 +      433.71173787680*t);
      saturn_l_1+=     0.00003071382 * cos( 2.32739317750 +      199.07200143640*t);
      saturn_l_1+=     0.00001953036 * cos( 3.56394683300 +       11.04570026390*t);
      saturn_l_1+=     0.00001249348 * cos( 2.62803737519 +       95.97922721780*t);
      saturn_l_1=saturn_l_1 * t;

      return saturn_l_1;
   }

   static double saturn_l_2_(double t){
      double saturn_l_2=0.0;
      saturn_l_2+=     0.00116441181 * cos( 1.17987850633 +        7.11354700080*t);
      saturn_l_2+=     0.00091920844 * cos( 0.07425261094 +      213.29909543800*t);
      saturn_l_2+=     0.00090592251 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_2+=     0.00015276909 * cos( 4.06492007503 +      206.18554843720*t);
      saturn_l_2+=     0.00010631396 * cos( 0.25778277414 +      220.41264243880*t);
      saturn_l_2+=     0.00010604979 * cos( 5.40963595885 +      426.59819087600*t);
      saturn_l_2+=     0.00004265368 * cos( 1.04595556630 +       14.22709400160*t);
      saturn_l_2+=     0.00001215527 * cos( 2.91860042123 +      103.09277421860*t);
      saturn_l_2+=     0.00001164684 * cos( 4.60942128971 +      639.89728631400*t);
      saturn_l_2+=     0.00001081967 * cos( 5.69130351670 +      433.71173787680*t);
      saturn_l_2+=     0.00001020079 * cos( 0.63369182642 +        3.18139373770*t);
      saturn_l_2+=     0.00001044754 * cos( 4.04206453611 +      199.07200143640*t);
      saturn_l_2=saturn_l_2 * t * t;

      return saturn_l_2;
   }

   static double saturn_l_3_(double t){
      double saturn_l_3=0.0;
      saturn_l_3+=     0.00016038734 * cos( 5.73945377424 +        7.11354700080*t);
      saturn_l_3+=     0.00004249793 * cos( 4.58539675603 +      213.29909543800*t);
      saturn_l_3+=     0.00001906524 * cos( 4.76082050205 +      220.41264243880*t);
      saturn_l_3+=     0.00001465687 * cos( 5.91326678323 +      206.18554843720*t);
      saturn_l_3+=     0.00001162041 * cos( 5.61973132428 +       14.22709400160*t);
      saturn_l_3+=     0.00001066581 * cos( 3.60816533142 +      426.59819087600*t);
      saturn_l_3=saturn_l_3 * t * t * t;

      return saturn_l_3;
   }

   static double saturn_l_4_(double t){
      double saturn_l_4=0.0;
      saturn_l_4+=     0.00001661894 * cos( 3.99826248978 +        7.11354700080*t);
      saturn_l_4=saturn_l_4 * t * t * t * t;

      return saturn_l_4;
   }

   static double saturn_l(double t){
      return saturn_l_0_(t)+saturn_l_1_(t)+saturn_l_2_(t)+saturn_l_3_(t)+saturn_l_4_(t);
   }

   static double saturn_b_0_(double t){
      double saturn_b_0=0.0;
      saturn_b_0+=     0.04330678040 * cos( 3.60284428399 +      213.29909543800*t);
      saturn_b_0+=     0.00240348303 * cos( 2.85238489390 +      426.59819087600*t);
      saturn_b_0+=     0.00084745939 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_b_0+=     0.00030863357 * cos( 3.48441504465 +      220.41264243880*t);
      saturn_b_0+=     0.00034116063 * cos( 0.57297307844 +      206.18554843720*t);
      saturn_b_0+=     0.00014734070 * cos( 2.11846597870 +      639.89728631400*t);
      saturn_b_0+=     0.00009916668 * cos( 5.79003189405 +      419.48464387520*t);
      saturn_b_0+=     0.00006993564 * cos( 4.73604689179 +        7.11354700080*t);
      saturn_b_0+=     0.00004807587 * cos( 5.43305315602 +      316.39186965660*t);
      saturn_b_0+=     0.00004788392 * cos( 4.96512927420 +      110.20632121940*t);
      saturn_b_0+=     0.00003432125 * cos( 2.73255752123 +      433.71173787680*t);
      saturn_b_0+=     0.00001506129 * cos( 6.01304536144 +      103.09277421860*t);
      saturn_b_0+=     0.00001060298 * cos( 5.63099292414 +      529.69096509460*t);

      return saturn_b_0;
   }

   static double saturn_b_1_(double t){
      double saturn_b_1=0.0;
      saturn_b_1+=     0.00397554998 * cos( 5.33289992556 +      213.29909543800*t);
      saturn_b_1+=     0.00049478641 * cos( 3.14159265359 +        0.00000000000*t);
      saturn_b_1+=     0.00018571607 * cos( 6.09919206378 +      426.59819087600*t);
      saturn_b_1+=     0.00014800587 * cos( 2.30586060520 +      206.18554843720*t);
      saturn_b_1+=     0.00009643981 * cos( 1.69674660120 +      220.41264243880*t);
      saturn_b_1+=     0.00003757161 * cos( 1.25429514018 +      419.48464387520*t);
      saturn_b_1+=     0.00002716647 * cos( 5.91166664787 +      639.89728631400*t);
      saturn_b_1+=     0.00001455309 * cos( 0.85161616532 +      433.71173787680*t);
      saturn_b_1+=     0.00001290595 * cos( 2.91770857090 +        7.11354700080*t);
      saturn_b_1=saturn_b_1 * t;

      return saturn_b_1;
   }

   static double saturn_b_2_(double t){
      double saturn_b_2=0.0;
      saturn_b_2+=     0.00020629977 * cos( 0.50482422817 +      213.29909543800*t);
      saturn_b_2+=     0.00003719555 * cos( 3.99833475829 +      206.18554843720*t);
      saturn_b_2+=     0.00001627158 * cos( 6.18189939500 +      220.41264243880*t);
      saturn_b_2+=     0.00001346067 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_b_2=saturn_b_2 * t * t;

      return saturn_b_2;
   }

   static double saturn_b(double t){
      return saturn_b_0_(t)+saturn_b_1_(t)+saturn_b_2_(t);
   }

   static double saturn_r_0_(double t){
      double saturn_r_0=0.0;
      saturn_r_0+=     9.55758135801 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_r_0+=     0.52921382465 * cos( 2.39226219733 +      213.29909543800*t);
      saturn_r_0+=     0.01873679934 * cos( 5.23549605091 +      206.18554843720*t);
      saturn_r_0+=     0.01464663959 * cos( 1.64763045468 +      426.59819087600*t);
      saturn_r_0+=     0.00821891059 * cos( 5.93520025371 +      316.39186965660*t);
      saturn_r_0+=     0.00547506899 * cos( 5.01532628454 +      103.09277421860*t);
      saturn_r_0+=     0.00371684449 * cos( 2.27114833428 +      220.41264243880*t);
      saturn_r_0+=     0.00361778433 * cos( 3.13904303264 +        7.11354700080*t);
      saturn_r_0+=     0.00140617548 * cos( 5.70406652991 +      632.78373931320*t);
      saturn_r_0+=     0.00108974737 * cos( 3.29313595577 +      110.20632121940*t);
      saturn_r_0+=     0.00069007015 * cos( 5.94099622447 +      419.48464387520*t);
      saturn_r_0+=     0.00061053350 * cos( 0.94037761156 +      639.89728631400*t);
      saturn_r_0+=     0.00048913044 * cos( 1.55733388472 +      202.25339517410*t);
      saturn_r_0+=     0.00034143794 * cos( 0.19518550682 +      277.03499374140*t);
      saturn_r_0+=     0.00032401718 * cos( 5.47084606947 +      949.17560896980*t);
      saturn_r_0+=     0.00020936573 * cos( 0.46349163993 +      735.87651353180*t);
      saturn_r_0+=     0.00020839118 * cos( 1.52102590640 +      433.71173787680*t);
      saturn_r_0+=     0.00020746678 * cos( 5.33255667599 +      199.07200143640*t);
      saturn_r_0+=     0.00015298457 * cos( 3.05943652881 +      529.69096509460*t);
      saturn_r_0+=     0.00014296479 * cos( 2.60433537909 +      323.50541665740*t);
      saturn_r_0+=     0.00011993314 * cos( 5.98051421881 +      846.08283475120*t);
      saturn_r_0+=     0.00011380261 * cos( 1.73105746566 +      522.57741809380*t);
      saturn_r_0+=     0.00012884128 * cos( 1.64892310393 +      138.51749687070*t);
      saturn_r_0+=     0.00007752769 * cos( 5.85191318903 +       95.97922721780*t);
      saturn_r_0+=     0.00009796061 * cos( 5.20475863996 +     1265.56747862640*t);
      saturn_r_0+=     0.00006465967 * cos( 0.17733160145 +     1052.26838318840*t);
      saturn_r_0+=     0.00006770621 * cos( 3.00433479284 +       14.22709400160*t);
      saturn_r_0+=     0.00005850443 * cos( 1.45519636076 +      415.55249061210*t);
      saturn_r_0+=     0.00005307481 * cos( 0.59737534050 +       63.73589830340*t);
      saturn_r_0+=     0.00004695746 * cos( 2.14919036956 +      227.52618943960*t);
      saturn_r_0+=     0.00004043988 * cos( 1.64010323863 +      209.36694217490*t);
      saturn_r_0+=     0.00003688132 * cos( 0.78016133170 +      412.37109687440*t);
      saturn_r_0+=     0.00003376457 * cos( 3.69528478828 +      224.34479570190*t);
      saturn_r_0+=     0.00002885348 * cos( 1.38764077631 +      838.96928775040*t);
      saturn_r_0+=     0.00002976033 * cos( 5.68467931117 +      210.11770170030*t);
      saturn_r_0+=     0.00003419551 * cos( 4.94549148887 +     1581.95934828300*t);
      saturn_r_0+=     0.00003460943 * cos( 1.85088802878 +      175.16605980020*t);
      saturn_r_0+=     0.00003400616 * cos( 0.55386747515 +      350.33211960040*t);
      saturn_r_0+=     0.00002507630 * cos( 3.53851863255 +      742.99006053260*t);
      saturn_r_0+=     0.00002448325 * cos( 6.18412386316 +     1368.66025284500*t);
      saturn_r_0+=     0.00002406138 * cos( 2.96559220267 +      117.31986822020*t);
      saturn_r_0+=     0.00002881181 * cos( 0.17960757891 +      853.19638175200*t);
      saturn_r_0+=     0.00002173959 * cos( 0.01508587396 +      340.77089204480*t);
      saturn_r_0+=     0.00002024483 * cos( 5.05411271271 +       11.04570026390*t);
      saturn_r_0+=     0.00001740254 * cos( 2.34657043464 +      309.27832265580*t);
      saturn_r_0+=     0.00001861397 * cos( 5.93361638244 +      625.67019231240*t);
      saturn_r_0+=     0.00001888436 * cos( 0.02968443389 +        3.93215326310*t);
      saturn_r_0+=     0.00001610859 * cos( 1.17302463549 +       74.78159856730*t);
      saturn_r_0+=     0.00001462631 * cos( 1.92588134017 +      216.48048917570*t);
      saturn_r_0+=     0.00001474547 * cos( 5.67670461130 +      203.73786788240*t);
      saturn_r_0+=     0.00001395109 * cos( 5.93669404929 +      127.47179660680*t);
      saturn_r_0+=     0.00001781165 * cos( 0.76314388077 +      217.23124870110*t);
      saturn_r_0+=     0.00001817186 * cos( 5.77713225779 +      490.33408917940*t);
      saturn_r_0+=     0.00001472392 * cos( 1.40064915651 +      137.03302416240*t);
      saturn_r_0+=     0.00001304089 * cos( 0.77235613966 +      647.01083331480*t);
      saturn_r_0+=     0.00001149773 * cos( 5.74021249703 +     1162.47470440780*t);
      saturn_r_0+=     0.00001126667 * cos( 4.46707803791 +      265.98929347750*t);
      saturn_r_0+=     0.00001277489 * cos( 2.98412586423 +     1059.38193018920*t);
      saturn_r_0+=     0.00001207053 * cos( 0.75285933160 +      351.81659230870*t);
      saturn_r_0+=     0.00001071399 * cos( 1.13567265104 +     1155.36115740700*t);
      saturn_r_0+=     0.00001020922 * cos( 5.91233512844 +     1685.05212250160*t);
      saturn_r_0+=     0.00001315042 * cos( 5.11202572637 +      211.81462272970*t);
      saturn_r_0+=     0.00001295553 * cos( 4.69184139933 +     1898.35121793960*t);
      saturn_r_0+=     0.00001099037 * cos( 1.81765118601 +      149.56319713460*t);

      return saturn_r_0;
   }

   static double saturn_r_1_(double t){
      double saturn_r_1=0.0;
      saturn_r_1+=     0.06182981282 * cos( 0.25843515034 +      213.29909543800*t);
      saturn_r_1+=     0.00506577574 * cos( 0.71114650941 +      206.18554843720*t);
      saturn_r_1+=     0.00341394136 * cos( 5.79635773960 +      426.59819087600*t);
      saturn_r_1+=     0.00188491375 * cos( 0.47215719444 +      220.41264243880*t);
      saturn_r_1+=     0.00186261540 * cos( 3.14159265359 +        0.00000000000*t);
      saturn_r_1+=     0.00143891176 * cos( 1.40744864239 +        7.11354700080*t);
      saturn_r_1+=     0.00049621111 * cos( 6.01744469580 +      103.09277421860*t);
      saturn_r_1+=     0.00020928189 * cos( 5.09245654470 +      639.89728631400*t);
      saturn_r_1+=     0.00019952612 * cos( 1.17560125007 +      419.48464387520*t);
      saturn_r_1+=     0.00018839639 * cos( 1.60819563173 +      110.20632121940*t);
      saturn_r_1+=     0.00012892827 * cos( 5.94330258435 +      433.71173787680*t);
      saturn_r_1+=     0.00013876565 * cos( 0.75886204364 +      199.07200143640*t);
      saturn_r_1+=     0.00005396699 * cos( 1.28852405908 +       14.22709400160*t);
      saturn_r_1+=     0.00004869308 * cos( 0.86793894213 +      323.50541665740*t);
      saturn_r_1+=     0.00004247455 * cos( 0.39299384543 +      227.52618943960*t);
      saturn_r_1+=     0.00003252084 * cos( 1.25853470491 +       95.97922721780*t);
      saturn_r_1+=     0.00002856006 * cos( 2.16731405366 +      735.87651353180*t);
      saturn_r_1+=     0.00002909411 * cos( 4.60679154788 +      202.25339517410*t);
      saturn_r_1+=     0.00003081408 * cos( 3.43662557418 +      522.57741809380*t);
      saturn_r_1+=     0.00001987689 * cos( 2.45054204795 +      412.37109687440*t);
      saturn_r_1+=     0.00001941309 * cos( 6.02393385142 +      209.36694217490*t);
      saturn_r_1+=     0.00001581446 * cos( 1.29191789712 +      210.11770170030*t);
      saturn_r_1+=     0.00001339511 * cos( 4.30801821806 +      853.19638175200*t);
      saturn_r_1+=     0.00001315590 * cos( 1.25296446023 +      117.31986822020*t);
      saturn_r_1+=     0.00001203085 * cos( 1.86654673794 +      316.39186965660*t);
      saturn_r_1+=     0.00001091088 * cos( 0.07527246854 +      216.48048917570*t);
      saturn_r_1=saturn_r_1 * t;

      return saturn_r_1;
   }

   static double saturn_r_2_(double t){
      double saturn_r_2=0.0;
      saturn_r_2+=     0.00436902464 * cos( 4.78671673044 +      213.29909543800*t);
      saturn_r_2+=     0.00071922760 * cos( 2.50069994874 +      206.18554843720*t);
      saturn_r_2+=     0.00049766792 * cos( 4.97168150870 +      220.41264243880*t);
      saturn_r_2+=     0.00043220894 * cos( 3.86940443794 +      426.59819087600*t);
      saturn_r_2+=     0.00029645554 * cos( 5.96310264282 +        7.11354700080*t);
      saturn_r_2+=     0.00004141650 * cos( 4.10670940823 +      433.71173787680*t);
      saturn_r_2+=     0.00004720909 * cos( 2.47527992423 +      199.07200143640*t);
      saturn_r_2+=     0.00003789370 * cos( 3.09771025067 +      639.89728631400*t);
      saturn_r_2+=     0.00002963990 * cos( 1.37206248846 +      103.09277421860*t);
      saturn_r_2+=     0.00002556363 * cos( 2.85065721526 +      419.48464387520*t);
      saturn_r_2+=     0.00002208457 * cos( 6.27588858707 +      110.20632121940*t);
      saturn_r_2+=     0.00002187621 * cos( 5.85545832218 +       14.22709400160*t);
      saturn_r_2+=     0.00001956896 * cos( 4.92448618045 +      227.52618943960*t);
      saturn_r_2+=     0.00002326801 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_r_2=saturn_r_2 * t * t;

      return saturn_r_2;
   }

   static double saturn_r_3_(double t){
      double saturn_r_3=0.0;
      saturn_r_3+=     0.00020315005 * cos( 3.02186626038 +      213.29909543800*t);
      saturn_r_3+=     0.00008923581 * cos( 3.19144205755 +      220.41264243880*t);
      saturn_r_3+=     0.00006908677 * cos( 4.35174889353 +      206.18554843720*t);
      saturn_r_3+=     0.00004087129 * cos( 4.22406927376 +        7.11354700080*t);
      saturn_r_3+=     0.00003879041 * cos( 2.01056445995 +      426.59819087600*t);
      saturn_r_3+=     0.00001070788 * cos( 4.20360341236 +      199.07200143640*t);
      saturn_r_3=saturn_r_3 * t * t * t;

      return saturn_r_3;
   }

   static double saturn_r_4_(double t){
      double saturn_r_4=0.0;
      saturn_r_4+=     0.00001202050 * cos( 1.41499446465 +      220.41264243880*t);
      saturn_r_4=saturn_r_4 * t * t * t * t;

      return saturn_r_4;
   }

   static double saturn_r(double t){
      return saturn_r_0_(t)+saturn_r_1_(t)+saturn_r_2_(t)+saturn_r_3_(t)+saturn_r_4_(t);
   }

}
