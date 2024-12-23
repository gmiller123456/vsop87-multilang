//VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

import static java.lang.Math.*;

public class vsop87b_milli_velocities_saturn{
   static double saturn_l_0_(double t){
      double saturn_l_0=0.0;
      double exp=0;
      saturn_l_0+=-pow(t,exp)*     0.87401354025*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      saturn_l_0+=-pow(t,exp)*     0.11107659762*     213.29909543800*sin( 3.96205090159 +      213.29909543800*t);
      saturn_l_0+=-pow(t,exp)*     0.01414150957*       7.11354700080*sin( 4.58581516874 +        7.11354700080*t);
      saturn_l_0+=-pow(t,exp)*     0.00398379389*     206.18554843720*sin( 0.52112032699 +      206.18554843720*t);
      saturn_l_0+=-pow(t,exp)*     0.00350769243*     426.59819087600*sin( 3.30329907896 +      426.59819087600*t);
      saturn_l_0+=-pow(t,exp)*     0.00206816305*     103.09277421860*sin( 0.24658372002 +      103.09277421860*t);
      saturn_l_0+=-pow(t,exp)*     0.00079271300*     220.41264243880*sin( 3.84007056878 +      220.41264243880*t);
      saturn_l_0+=-pow(t,exp)*     0.00023990355*     110.20632121940*sin( 4.66976924553 +      110.20632121940*t);
      saturn_l_0+=-pow(t,exp)*     0.00016573588*     419.48464387520*sin( 0.43719228296 +      419.48464387520*t);
      saturn_l_0+=-pow(t,exp)*     0.00014906995*     316.39186965660*sin( 5.76903183869 +      316.39186965660*t);
      saturn_l_0+=-pow(t,exp)*     0.00015820290*     632.78373931320*sin( 0.93809155235 +      632.78373931320*t);
      saturn_l_0+=-pow(t,exp)*     0.00014609559*       3.93215326310*sin( 1.56518472000 +        3.93215326310*t);
      saturn_l_0+=-pow(t,exp)*     0.00013160301*      14.22709400160*sin( 4.44891291899 +       14.22709400160*t);
      saturn_l_0+=-pow(t,exp)*     0.00015053543*     639.89728631400*sin( 2.71669915667 +      639.89728631400*t);
      saturn_l_0+=-pow(t,exp)*     0.00013005299*      11.04570026390*sin( 5.98119023644 +       11.04570026390*t);
      saturn_l_0+=-pow(t,exp)*     0.00010725067*     202.25339517410*sin( 3.12939523827 +      202.25339517410*t);
      saturn_l_0+=-pow(t,exp)*     0.00005863206*     529.69096509460*sin( 0.23656938524 +      529.69096509460*t);
      saturn_l_0+=-pow(t,exp)*     0.00005227757*       3.18139373770*sin( 4.20783365759 +        3.18139373770*t);
      saturn_l_0+=-pow(t,exp)*     0.00006126317*     277.03499374140*sin( 1.76328667907 +      277.03499374140*t);
      saturn_l_0+=-pow(t,exp)*     0.00005019687*     433.71173787680*sin( 3.17787728405 +      433.71173787680*t);
      saturn_l_0+=-pow(t,exp)*     0.00004592550*     199.07200143640*sin( 0.61977744975 +      199.07200143640*t);
      saturn_l_0+=-pow(t,exp)*     0.00004005867*      63.73589830340*sin( 2.24479718502 +       63.73589830340*t);
      saturn_l_0+=-pow(t,exp)*     0.00002953796*      95.97922721780*sin( 0.98280366998 +       95.97922721780*t);
      saturn_l_0+=-pow(t,exp)*     0.00003873670*     138.51749687070*sin( 3.22283226966 +      138.51749687070*t);
      saturn_l_0+=-pow(t,exp)*     0.00002461186*     735.87651353180*sin( 2.03163875071 +      735.87651353180*t);
      saturn_l_0+=-pow(t,exp)*     0.00003269484*     949.17560896980*sin( 0.77492638211 +      949.17560896980*t);
      saturn_l_0+=-pow(t,exp)*     0.00001758145*     522.57741809380*sin( 3.26580109940 +      522.57741809380*t);
      saturn_l_0+=-pow(t,exp)*     0.00001640172*     846.08283475120*sin( 5.50504453050 +      846.08283475120*t);
      saturn_l_0+=-pow(t,exp)*     0.00001391327*     323.50541665740*sin( 4.02333150505 +      323.50541665740*t);
      saturn_l_0+=-pow(t,exp)*     0.00001580648*     309.27832265580*sin( 4.37265307169 +      309.27832265580*t);
      saturn_l_0+=-pow(t,exp)*     0.00001123498*     415.55249061210*sin( 2.83726798446 +      415.55249061210*t);
      saturn_l_0+=-pow(t,exp)*     0.00001017275*     227.52618943960*sin( 3.71700135395 +      227.52618943960*t);
      saturn_l_0+=-pow(t,exp)*     0.00001087229*       2.44768055480*sin( 4.18343257560 +        2.44768055480*t);

      return saturn_l_0;
   }

   static double saturn_l_1_(double t){
      double saturn_l_1=0.0;
      double exp=1;
      saturn_l_1+=pow(t,exp-1)*exp*   213.29909521690*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*   213.29909521690*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.01297370862*cos( 1.82834923978 +      213.29909543800*t)-pow(t,exp)*     0.01297370862*     213.29909543800*sin( 1.82834923978 +      213.29909543800*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.00564345393*cos( 2.88499717272 +        7.11354700080*t)-pow(t,exp)*     0.00564345393*       7.11354700080*sin( 2.88499717272 +        7.11354700080*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.00093734369*cos( 1.06311793502 +      426.59819087600*t)-pow(t,exp)*     0.00093734369*     426.59819087600*sin( 1.06311793502 +      426.59819087600*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.00107674962*cos( 2.27769131009 +      206.18554843720*t)-pow(t,exp)*     0.00107674962*     206.18554843720*sin( 2.27769131009 +      206.18554843720*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.00040244455*cos( 2.04108104671 +      220.41264243880*t)-pow(t,exp)*     0.00040244455*     220.41264243880*sin( 2.04108104671 +      220.41264243880*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.00019941774*cos( 1.27954390470 +      103.09277421860*t)-pow(t,exp)*     0.00019941774*     103.09277421860*sin( 1.27954390470 +      103.09277421860*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.00010511678*cos( 2.74880342130 +       14.22709400160*t)-pow(t,exp)*     0.00010511678*      14.22709400160*sin( 2.74880342130 +       14.22709400160*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.00006416106*cos( 0.38238295041 +      639.89728631400*t)-pow(t,exp)*     0.00006416106*     639.89728631400*sin( 0.38238295041 +      639.89728631400*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.00004848994*cos( 2.43037610229 +      419.48464387520*t)-pow(t,exp)*     0.00004848994*     419.48464387520*sin( 2.43037610229 +      419.48464387520*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.00004056892*cos( 2.92133209468 +      110.20632121940*t)-pow(t,exp)*     0.00004056892*     110.20632121940*sin( 2.92133209468 +      110.20632121940*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.00003768635*cos( 3.64965330780 +        3.93215326310*t)-pow(t,exp)*     0.00003768635*       3.93215326310*sin( 3.64965330780 +        3.93215326310*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.00003384691*cos( 2.41694503459 +        3.18139373770*t)-pow(t,exp)*     0.00003384691*       3.18139373770*sin( 2.41694503459 +        3.18139373770*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.00003231693*cos( 1.26149969158 +      433.71173787680*t)-pow(t,exp)*     0.00003231693*     433.71173787680*sin( 1.26149969158 +      433.71173787680*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.00003071405*cos( 2.32739504783 +      199.07200143640*t)-pow(t,exp)*     0.00003071405*     199.07200143640*sin( 2.32739504783 +      199.07200143640*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.00001953179*cos( 3.56378136497 +       11.04570026390*t)-pow(t,exp)*     0.00001953179*      11.04570026390*sin( 3.56378136497 +       11.04570026390*t);
      saturn_l_1+=pow(t,exp-1)*exp*     0.00001249468*cos( 2.62810757084 +       95.97922721780*t)-pow(t,exp)*     0.00001249468*      95.97922721780*sin( 2.62810757084 +       95.97922721780*t);

      return saturn_l_1;
   }

   static double saturn_l_2_(double t){
      double saturn_l_2=0.0;
      double exp=2;
      saturn_l_2+=pow(t,exp-1)*exp*     0.00116441330*cos( 1.17988132879 +        7.11354700080*t)-pow(t,exp)*     0.00116441330*       7.11354700080*sin( 1.17988132879 +        7.11354700080*t);
      saturn_l_2+=pow(t,exp-1)*exp*     0.00091841837*cos( 0.07325195840 +      213.29909543800*t)-pow(t,exp)*     0.00091841837*     213.29909543800*sin( 0.07325195840 +      213.29909543800*t);
      saturn_l_2+=pow(t,exp-1)*exp*     0.00036661728*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00036661728*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      saturn_l_2+=pow(t,exp-1)*exp*     0.00015274496*cos( 4.06493179167 +      206.18554843720*t)-pow(t,exp)*     0.00015274496*     206.18554843720*sin( 4.06493179167 +      206.18554843720*t);
      saturn_l_2+=pow(t,exp-1)*exp*     0.00010987259*cos( 5.44479188310 +      426.59819087600*t)-pow(t,exp)*     0.00010987259*     426.59819087600*sin( 5.44479188310 +      426.59819087600*t);
      saturn_l_2+=pow(t,exp-1)*exp*     0.00010629830*cos( 0.25764306189 +      220.41264243880*t)-pow(t,exp)*     0.00010629830*     220.41264243880*sin( 0.25764306189 +      220.41264243880*t);
      saturn_l_2+=pow(t,exp-1)*exp*     0.00004265404*cos( 1.04596041482 +       14.22709400160*t)-pow(t,exp)*     0.00004265404*      14.22709400160*sin( 1.04596041482 +       14.22709400160*t);
      saturn_l_2+=pow(t,exp-1)*exp*     0.00001215447*cos( 2.91866579609 +      103.09277421860*t)-pow(t,exp)*     0.00001215447*     103.09277421860*sin( 2.91866579609 +      103.09277421860*t);
      saturn_l_2+=pow(t,exp-1)*exp*     0.00001142595*cos( 4.63711665368 +      639.89728631400*t)-pow(t,exp)*     0.00001142595*     639.89728631400*sin( 4.63711665368 +      639.89728631400*t);
      saturn_l_2+=pow(t,exp-1)*exp*     0.00001061494*cos( 5.68896768215 +      433.71173787680*t)-pow(t,exp)*     0.00001061494*     433.71173787680*sin( 5.68896768215 +      433.71173787680*t);
      saturn_l_2+=pow(t,exp-1)*exp*     0.00001020102*cos( 0.63368457250 +        3.18139373770*t)-pow(t,exp)*     0.00001020102*       3.18139373770*sin( 0.63368457250 +        3.18139373770*t);
      saturn_l_2+=pow(t,exp-1)*exp*     0.00001044759*cos( 4.04202827818 +      199.07200143640*t)-pow(t,exp)*     0.00001044759*     199.07200143640*sin( 4.04202827818 +      199.07200143640*t);

      return saturn_l_2;
   }

   static double saturn_l_3_(double t){
      double saturn_l_3=0.0;
      double exp=3;
      saturn_l_3+=pow(t,exp-1)*exp*     0.00016038732*cos( 5.73945573267 +        7.11354700080*t)-pow(t,exp)*     0.00016038732*       7.11354700080*sin( 5.73945573267 +        7.11354700080*t);
      saturn_l_3+=pow(t,exp-1)*exp*     0.00004254737*cos( 4.58877599687 +      213.29909543800*t)-pow(t,exp)*     0.00004254737*     213.29909543800*sin( 4.58877599687 +      213.29909543800*t);
      saturn_l_3+=pow(t,exp-1)*exp*     0.00001906379*cos( 4.76070843570 +      220.41264243880*t)-pow(t,exp)*     0.00001906379*     220.41264243880*sin( 4.76070843570 +      220.41264243880*t);
      saturn_l_3+=pow(t,exp-1)*exp*     0.00001464959*cos( 5.91328884284 +      206.18554843720*t)-pow(t,exp)*     0.00001464959*     206.18554843720*sin( 5.91328884284 +      206.18554843720*t);
      saturn_l_3+=pow(t,exp-1)*exp*     0.00001162062*cos( 5.61974313217 +       14.22709400160*t)-pow(t,exp)*     0.00001162062*      14.22709400160*sin( 5.61974313217 +       14.22709400160*t);
      saturn_l_3+=pow(t,exp-1)*exp*     0.00001044765*cos( 3.57813061587 +      426.59819087600*t)-pow(t,exp)*     0.00001044765*     426.59819087600*sin( 3.57813061587 +      426.59819087600*t);

      return saturn_l_3;
   }

   static double saturn_l_4_(double t){
      double saturn_l_4=0.0;
      double exp=4;
      saturn_l_4+=pow(t,exp-1)*exp*     0.00001661877*cos( 3.99824447634 +        7.11354700080*t)-pow(t,exp)*     0.00001661877*       7.11354700080*sin( 3.99824447634 +        7.11354700080*t);

      return saturn_l_4;
   }

   static double saturn_l(double t){
      return saturn_l_0_(t)+saturn_l_1_(t)+saturn_l_2_(t)+saturn_l_3_(t)+saturn_l_4_(t);
   }

   static double saturn_b_0_(double t){
      double saturn_b_0=0.0;
      double exp=0;
      saturn_b_0+=-pow(t,exp)*     0.04330678039*     213.29909543800*sin( 3.60284428399 +      213.29909543800*t);
      saturn_b_0+=-pow(t,exp)*     0.00240348302*     426.59819087600*sin( 2.85238489373 +      426.59819087600*t);
      saturn_b_0+=-pow(t,exp)*     0.00084745939*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      saturn_b_0+=-pow(t,exp)*     0.00030863357*     220.41264243880*sin( 3.48441504555 +      220.41264243880*t);
      saturn_b_0+=-pow(t,exp)*     0.00034116062*     206.18554843720*sin( 0.57297307557 +      206.18554843720*t);
      saturn_b_0+=-pow(t,exp)*     0.00014734070*     639.89728631400*sin( 2.11846596715 +      639.89728631400*t);
      saturn_b_0+=-pow(t,exp)*     0.00009916667*     419.48464387520*sin( 5.79003188904 +      419.48464387520*t);
      saturn_b_0+=-pow(t,exp)*     0.00006993564*       7.11354700080*sin( 4.73604689720 +        7.11354700080*t);
      saturn_b_0+=-pow(t,exp)*     0.00004807588*     316.39186965660*sin( 5.43305312061 +      316.39186965660*t);
      saturn_b_0+=-pow(t,exp)*     0.00004788392*     110.20632121940*sin( 4.96512926584 +      110.20632121940*t);
      saturn_b_0+=-pow(t,exp)*     0.00003432125*     433.71173787680*sin( 2.73255746600 +      433.71173787680*t);
      saturn_b_0+=-pow(t,exp)*     0.00001506129*     103.09277421860*sin( 6.01304519391 +      103.09277421860*t);
      saturn_b_0+=-pow(t,exp)*     0.00001060298*     529.69096509460*sin( 5.63099296460 +      529.69096509460*t);

      return saturn_b_0;
   }

   static double saturn_b_1_(double t){
      double saturn_b_1=0.0;
      double exp=1;
      saturn_b_1+=pow(t,exp-1)*exp*     0.00198927992*cos( 4.93901017903 +      213.29909543800*t)-pow(t,exp)*     0.00198927992*     213.29909543800*sin( 4.93901017903 +      213.29909543800*t);
      saturn_b_1+=pow(t,exp-1)*exp*     0.00036947916*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00036947916*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      saturn_b_1+=pow(t,exp-1)*exp*     0.00017966989*cos( 0.51979431110 +      426.59819087600*t)-pow(t,exp)*     0.00017966989*     426.59819087600*sin( 0.51979431110 +      426.59819087600*t);
      saturn_b_1+=pow(t,exp-1)*exp*     0.00010919721*cos( 1.79463271368 +      220.41264243880*t)-pow(t,exp)*     0.00010919721*     220.41264243880*sin( 1.79463271368 +      220.41264243880*t);
      saturn_b_1+=pow(t,exp-1)*exp*     0.00013320265*cos( 2.26481519893 +      206.18554843720*t)-pow(t,exp)*     0.00013320265*     206.18554843720*sin( 2.26481519893 +      206.18554843720*t);
      saturn_b_1+=pow(t,exp-1)*exp*     0.00003243428*cos( 1.21094033148 +      419.48464387520*t)-pow(t,exp)*     0.00003243428*     419.48464387520*sin( 1.21094033148 +      419.48464387520*t);
      saturn_b_1+=pow(t,exp-1)*exp*     0.00002900519*cos( 6.17033461979 +      639.89728631400*t)-pow(t,exp)*     0.00002900519*     639.89728631400*sin( 6.17033461979 +      639.89728631400*t);
      saturn_b_1+=pow(t,exp-1)*exp*     0.00001584712*cos( 0.93416397130 +      433.71173787680*t)-pow(t,exp)*     0.00001584712*     433.71173787680*sin( 0.93416397130 +      433.71173787680*t);
      saturn_b_1+=pow(t,exp-1)*exp*     0.00001580666*cos( 3.08171717435 +        7.11354700080*t)-pow(t,exp)*     0.00001580666*       7.11354700080*sin( 3.08171717435 +        7.11354700080*t);

      return saturn_b_1;
   }

   static double saturn_b_2_(double t){
      double saturn_b_2=0.0;
      double exp=2;
      saturn_b_2+=pow(t,exp-1)*exp*     0.00013884264*cos( 0.08994998691 +      213.29909543800*t)-pow(t,exp)*     0.00013884264*     213.29909543800*sin( 0.08994998691 +      213.29909543800*t);
      saturn_b_2+=pow(t,exp-1)*exp*     0.00003075713*cos( 3.91610937620 +      206.18554843720*t)-pow(t,exp)*     0.00003075713*     206.18554843720*sin( 3.91610937620 +      206.18554843720*t);
      saturn_b_2+=pow(t,exp-1)*exp*     0.00002081666*cos( 0.09631968077 +      220.41264243880*t)-pow(t,exp)*     0.00002081666*     220.41264243880*sin( 0.09631968077 +      220.41264243880*t);
      saturn_b_2+=pow(t,exp-1)*exp*     0.00001452574*cos( 5.48867576013 +      426.59819087600*t)-pow(t,exp)*     0.00001452574*     426.59819087600*sin( 5.48867576013 +      426.59819087600*t);

      return saturn_b_2;
   }

   static double saturn_b(double t){
      return saturn_b_0_(t)+saturn_b_1_(t)+saturn_b_2_(t);
   }

   static double saturn_r_0_(double t){
      double saturn_r_0=0.0;
      double exp=0;
      saturn_r_0+=-pow(t,exp)*     9.55758135486*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);
      saturn_r_0+=-pow(t,exp)*     0.52921382865*     213.29909543800*sin( 2.39226219573 +      213.29909543800*t);
      saturn_r_0+=-pow(t,exp)*     0.01873679867*     206.18554843720*sin( 5.23549604660 +      206.18554843720*t);
      saturn_r_0+=-pow(t,exp)*     0.01464663929*     426.59819087600*sin( 1.64763042902 +      426.59819087600*t);
      saturn_r_0+=-pow(t,exp)*     0.00821891141*     316.39186965660*sin( 5.93520042303 +      316.39186965660*t);
      saturn_r_0+=-pow(t,exp)*     0.00547506923*     103.09277421860*sin( 5.01532618980 +      103.09277421860*t);
      saturn_r_0+=-pow(t,exp)*     0.00371684650*     220.41264243880*sin( 2.27114821115 +      220.41264243880*t);
      saturn_r_0+=-pow(t,exp)*     0.00361778765*       7.11354700080*sin( 3.13904301847 +        7.11354700080*t);
      saturn_r_0+=-pow(t,exp)*     0.00140617506*     632.78373931320*sin( 5.70406606781 +      632.78373931320*t);
      saturn_r_0+=-pow(t,exp)*     0.00108974848*     110.20632121940*sin( 3.29313390175 +      110.20632121940*t);
      saturn_r_0+=-pow(t,exp)*     0.00069006962*     419.48464387520*sin( 5.94099540992 +      419.48464387520*t);
      saturn_r_0+=-pow(t,exp)*     0.00061053367*     639.89728631400*sin( 0.94037691801 +      639.89728631400*t);
      saturn_r_0+=-pow(t,exp)*     0.00048913294*     202.25339517410*sin( 1.55733638681 +      202.25339517410*t);
      saturn_r_0+=-pow(t,exp)*     0.00034143772*     277.03499374140*sin( 0.19519102597 +      277.03499374140*t);
      saturn_r_0+=-pow(t,exp)*     0.00032401773*     949.17560896980*sin( 5.47084567016 +      949.17560896980*t);
      saturn_r_0+=-pow(t,exp)*     0.00020936596*     735.87651353180*sin( 0.46349251129 +      735.87651353180*t);
      saturn_r_0+=-pow(t,exp)*     0.00020839300*     433.71173787680*sin( 1.52102476129 +      433.71173787680*t);
      saturn_r_0+=-pow(t,exp)*     0.00020746751*     199.07200143640*sin( 5.33255457763 +      199.07200143640*t);
      saturn_r_0+=-pow(t,exp)*     0.00015298404*     529.69096509460*sin( 3.05943814940 +      529.69096509460*t);
      saturn_r_0+=-pow(t,exp)*     0.00014296484*     323.50541665740*sin( 2.60433479142 +      323.50541665740*t);
      saturn_r_0+=-pow(t,exp)*     0.00011993338*     846.08283475120*sin( 5.98050967385 +      846.08283475120*t);
      saturn_r_0+=-pow(t,exp)*     0.00011380257*     522.57741809380*sin( 1.73105427040 +      522.57741809380*t);
      saturn_r_0+=-pow(t,exp)*     0.00012884624*     138.51749687070*sin( 1.64890652873 +      138.51749687070*t);
      saturn_r_0+=-pow(t,exp)*     0.00007752664*      95.97922721780*sin( 5.85190720634 +       95.97922721780*t);
      saturn_r_0+=-pow(t,exp)*     0.00009796004*    1265.56747862640*sin( 5.20477537945 +     1265.56747862640*t);
      saturn_r_0+=-pow(t,exp)*     0.00006465823*    1052.26838318840*sin( 0.17732249942 +     1052.26838318840*t);
      saturn_r_0+=-pow(t,exp)*     0.00006770608*      14.22709400160*sin( 3.00432308205 +       14.22709400160*t);
      saturn_r_0+=-pow(t,exp)*     0.00005850459*     415.55249061210*sin( 1.45520063003 +      415.55249061210*t);
      saturn_r_0+=-pow(t,exp)*     0.00005307420*      63.73589830340*sin( 0.59742200200 +       63.73589830340*t);
      saturn_r_0+=-pow(t,exp)*     0.00004695487*     227.52618943960*sin( 2.14913875148 +      227.52618943960*t);
      saturn_r_0+=-pow(t,exp)*     0.00004044055*     209.36694217490*sin( 1.64006628713 +      209.36694217490*t);
      saturn_r_0+=-pow(t,exp)*     0.00003688237*     412.37109687440*sin( 0.78017261355 +      412.37109687440*t);
      saturn_r_0+=-pow(t,exp)*     0.00003376576*     224.34479570190*sin( 3.69526804193 +      224.34479570190*t);
      saturn_r_0+=-pow(t,exp)*     0.00002885428*     838.96928775040*sin( 1.38764476428 +      838.96928775040*t);
      saturn_r_0+=-pow(t,exp)*     0.00002975955*     210.11770170030*sin( 5.68469131750 +      210.11770170030*t);
      saturn_r_0+=-pow(t,exp)*     0.00003419618*    1581.95934828300*sin( 4.94550542171 +     1581.95934828300*t);
      saturn_r_0+=-pow(t,exp)*     0.00003460944*     175.16605980020*sin( 1.85088698050 +      175.16605980020*t);
      saturn_r_0+=-pow(t,exp)*     0.00003400702*     350.33211960040*sin( 0.55385265588 +      350.33211960040*t);
      saturn_r_0+=-pow(t,exp)*     0.00002507656*     742.99006053260*sin( 3.53854849756 +      742.99006053260*t);
      saturn_r_0+=-pow(t,exp)*     0.00002448261*    1368.66025284500*sin( 6.18411000897 +     1368.66025284500*t);
      saturn_r_0+=-pow(t,exp)*     0.00002406134*     117.31986822020*sin( 2.96557066697 +      117.31986822020*t);
      saturn_r_0+=-pow(t,exp)*     0.00002881100*     853.19638175200*sin( 0.17962517668 +      853.19638175200*t);
      saturn_r_0+=-pow(t,exp)*     0.00002173933*     340.77089204480*sin( 0.01504273441 +      340.77089204480*t);
      saturn_r_0+=-pow(t,exp)*     0.00002024755*      11.04570026390*sin( 5.05404443168 +       11.04570026390*t);
      saturn_r_0+=-pow(t,exp)*     0.00001740284*     309.27832265580*sin( 2.34658553206 +      309.27832265580*t);
      saturn_r_0+=-pow(t,exp)*     0.00001861491*     625.67019231240*sin( 5.93369815396 +      625.67019231240*t);
      saturn_r_0+=-pow(t,exp)*     0.00001888373*       3.93215326310*sin( 0.02965674854 +        3.93215326310*t);
      saturn_r_0+=-pow(t,exp)*     0.00001610962*      74.78159856730*sin( 1.17294612833 +       74.78159856730*t);
      saturn_r_0+=-pow(t,exp)*     0.00001462651*     216.48048917570*sin( 1.92592107843 +      216.48048917570*t);
      saturn_r_0+=-pow(t,exp)*     0.00001474674*     203.73786788240*sin( 5.67670456599 +      203.73786788240*t);
      saturn_r_0+=-pow(t,exp)*     0.00001395118*     127.47179660680*sin( 5.93681366484 +      127.47179660680*t);
      saturn_r_0+=-pow(t,exp)*     0.00001781073*     217.23124870110*sin( 0.76321113173 +      217.23124870110*t);
      saturn_r_0+=-pow(t,exp)*     0.00001817173*     490.33408917940*sin( 5.77721016746 +      490.33408917940*t);
      saturn_r_0+=-pow(t,exp)*     0.00001472651*     137.03302416240*sin( 1.40074361969 +      137.03302416240*t);
      saturn_r_0+=-pow(t,exp)*     0.00001304238*     647.01083331480*sin( 0.77242217158 +      647.01083331480*t);
      saturn_r_0+=-pow(t,exp)*     0.00001149625*    1162.47470440780*sin( 5.74018465658 +     1162.47470440780*t);
      saturn_r_0+=-pow(t,exp)*     0.00001126660*     265.98929347750*sin( 4.46695542616 +      265.98929347750*t);
      saturn_r_0+=-pow(t,exp)*     0.00001277624*    1059.38193018920*sin( 2.98416387533 +     1059.38193018920*t);
      saturn_r_0+=-pow(t,exp)*     0.00001207069*     351.81659230870*sin( 0.75304212507 +      351.81659230870*t);
      saturn_r_0+=-pow(t,exp)*     0.00001071373*    1155.36115740700*sin( 1.13559402672 +     1155.36115740700*t);
      saturn_r_0+=-pow(t,exp)*     0.00001020836*    1685.05212250160*sin( 5.91216407900 +     1685.05212250160*t);
      saturn_r_0+=-pow(t,exp)*     0.00001314853*     211.81462272970*sin( 5.11211291628 +      211.81462272970*t);
      saturn_r_0+=-pow(t,exp)*     0.00001295446*    1898.35121793960*sin( 4.69181789263 +     1898.35121793960*t);
      saturn_r_0+=-pow(t,exp)*     0.00001099067*     149.56319713460*sin( 1.81772713286 +      149.56319713460*t);

      return saturn_r_0;
   }

   static double saturn_r_1_(double t){
      double saturn_r_1=0.0;
      double exp=1;
      saturn_r_1+=pow(t,exp-1)*exp*     0.06182981340*cos( 0.25843511480 +      213.29909543800*t)-pow(t,exp)*     0.06182981340*     213.29909543800*sin( 0.25843511480 +      213.29909543800*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00506577242*cos( 0.71114625261 +      206.18554843720*t)-pow(t,exp)*     0.00506577242*     206.18554843720*sin( 0.71114625261 +      206.18554843720*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00341394029*cos( 5.79635741658 +      426.59819087600*t)-pow(t,exp)*     0.00341394029*     426.59819087600*sin( 5.79635741658 +      426.59819087600*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00188491195*cos( 0.47215589652 +      220.41264243880*t)-pow(t,exp)*     0.00188491195*     220.41264243880*sin( 0.47215589652 +      220.41264243880*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00186261486*cos( 3.14159265359 +        0.00000000000*t)-pow(t,exp)*     0.00186261486*       0.00000000000*sin( 3.14159265359 +        0.00000000000*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00143891146*cos( 1.40744822888 +        7.11354700080*t)-pow(t,exp)*     0.00143891146*       7.11354700080*sin( 1.40744822888 +        7.11354700080*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00049621208*cos( 6.01744279820 +      103.09277421860*t)-pow(t,exp)*     0.00049621208*     103.09277421860*sin( 6.01744279820 +      103.09277421860*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00020928426*cos( 5.09244947411 +      639.89728631400*t)-pow(t,exp)*     0.00020928426*     639.89728631400*sin( 5.09244947411 +      639.89728631400*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00019952564*cos( 1.17560606130 +      419.48464387520*t)-pow(t,exp)*     0.00019952564*     419.48464387520*sin( 1.17560606130 +      419.48464387520*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00018839544*cos( 1.60818334043 +      110.20632121940*t)-pow(t,exp)*     0.00018839544*     110.20632121940*sin( 1.60818334043 +      110.20632121940*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00012892843*cos( 5.94329433020 +      433.71173787680*t)-pow(t,exp)*     0.00012892843*     433.71173787680*sin( 5.94329433020 +      433.71173787680*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00013876849*cos( 0.75884928866 +      199.07200143640*t)-pow(t,exp)*     0.00013876849*     199.07200143640*sin( 0.75884928866 +      199.07200143640*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00005396842*cos( 1.28853589711 +       14.22709400160*t)-pow(t,exp)*     0.00005396842*      14.22709400160*sin( 1.28853589711 +       14.22709400160*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00004869289*cos( 0.86797227054 +      323.50541665740*t)-pow(t,exp)*     0.00004869289*     323.50541665740*sin( 0.86797227054 +      323.50541665740*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00004247221*cos( 0.39294984732 +      227.52618943960*t)-pow(t,exp)*     0.00004247221*     227.52618943960*sin( 0.39294984732 +      227.52618943960*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00003252331*cos( 1.25850154330 +       95.97922721780*t)-pow(t,exp)*     0.00003252331*      95.97922721780*sin( 1.25850154330 +       95.97922721780*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00002856066*cos( 2.16731283870 +      735.87651353180*t)-pow(t,exp)*     0.00002856066*     735.87651353180*sin( 2.16731283870 +      735.87651353180*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00002909540*cos( 4.60680719251 +      202.25339517410*t)-pow(t,exp)*     0.00002909540*     202.25339517410*sin( 4.60680719251 +      202.25339517410*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00003081410*cos( 3.43662543526 +      522.57741809380*t)-pow(t,exp)*     0.00003081410*     522.57741809380*sin( 3.43662543526 +      522.57741809380*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00001987731*cos( 2.45053765034 +      412.37109687440*t)-pow(t,exp)*     0.00001987731*     412.37109687440*sin( 2.45053765034 +      412.37109687440*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00001941443*cos( 6.02392296904 +      209.36694217490*t)-pow(t,exp)*     0.00001941443*     209.36694217490*sin( 6.02392296904 +      209.36694217490*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00001581782*cos( 1.29189091556 +      210.11770170030*t)-pow(t,exp)*     0.00001581782*     210.11770170030*sin( 1.29189091556 +      210.11770170030*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00001339521*cos( 4.30812522038 +      853.19638175200*t)-pow(t,exp)*     0.00001339521*     853.19638175200*sin( 4.30812522038 +      853.19638175200*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00001315459*cos( 1.25295611814 +      117.31986822020*t)-pow(t,exp)*     0.00001315459*     117.31986822020*sin( 1.25295611814 +      117.31986822020*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00001202869*cos( 1.86661895487 +      316.39186965660*t)-pow(t,exp)*     0.00001202869*     316.39186965660*sin( 1.86661895487 +      316.39186965660*t);
      saturn_r_1+=pow(t,exp-1)*exp*     0.00001090827*cos( 0.07529636493 +      216.48048917570*t)-pow(t,exp)*     0.00001090827*     216.48048917570*sin( 0.07529636493 +      216.48048917570*t);

      return saturn_r_1;
   }

   static double saturn_r_2_(double t){
      double saturn_r_2=0.0;
      double exp=2;
      saturn_r_2+=pow(t,exp-1)*exp*     0.00436902572*cos( 4.78671677509 +      213.29909543800*t)-pow(t,exp)*     0.00436902572*     213.29909543800*sin( 4.78671677509 +      213.29909543800*t);
      saturn_r_2+=pow(t,exp-1)*exp*     0.00071922498*cos( 2.50070069930 +      206.18554843720*t)-pow(t,exp)*     0.00071922498*     206.18554843720*sin( 2.50070069930 +      206.18554843720*t);
      saturn_r_2+=pow(t,exp-1)*exp*     0.00049766872*cos( 4.97167777235 +      220.41264243880*t)-pow(t,exp)*     0.00049766872*     220.41264243880*sin( 4.97167777235 +      220.41264243880*t);
      saturn_r_2+=pow(t,exp-1)*exp*     0.00043220783*cos( 3.86941044212 +      426.59819087600*t)-pow(t,exp)*     0.00043220783*     426.59819087600*sin( 3.86941044212 +      426.59819087600*t);
      saturn_r_2+=pow(t,exp-1)*exp*     0.00029645766*cos( 5.96309886479 +        7.11354700080*t)-pow(t,exp)*     0.00029645766*       7.11354700080*sin( 5.96309886479 +        7.11354700080*t);
      saturn_r_2+=pow(t,exp-1)*exp*     0.00004141687*cos( 4.10673009419 +      433.71173787680*t)-pow(t,exp)*     0.00004141687*     433.71173787680*sin( 4.10673009419 +      433.71173787680*t);
      saturn_r_2+=pow(t,exp-1)*exp*     0.00004720822*cos( 2.47524028389 +      199.07200143640*t)-pow(t,exp)*     0.00004720822*     199.07200143640*sin( 2.47524028389 +      199.07200143640*t);
      saturn_r_2+=pow(t,exp-1)*exp*     0.00003789321*cos( 3.09771189740 +      639.89728631400*t)-pow(t,exp)*     0.00003789321*     639.89728631400*sin( 3.09771189740 +      639.89728631400*t);
      saturn_r_2+=pow(t,exp-1)*exp*     0.00002963981*cos( 1.37198670946 +      103.09277421860*t)-pow(t,exp)*     0.00002963981*     103.09277421860*sin( 1.37198670946 +      103.09277421860*t);
      saturn_r_2+=pow(t,exp-1)*exp*     0.00002556403*cos( 2.85066948131 +      419.48464387520*t)-pow(t,exp)*     0.00002556403*     419.48464387520*sin( 2.85066948131 +      419.48464387520*t);
      saturn_r_2+=pow(t,exp-1)*exp*     0.00002208473*cos( 6.27590108662 +      110.20632121940*t)-pow(t,exp)*     0.00002208473*     110.20632121940*sin( 6.27590108662 +      110.20632121940*t);
      saturn_r_2+=pow(t,exp-1)*exp*     0.00002187311*cos( 5.85545017140 +       14.22709400160*t)-pow(t,exp)*     0.00002187311*      14.22709400160*sin( 5.85545017140 +       14.22709400160*t);
      saturn_r_2+=pow(t,exp-1)*exp*     0.00001956779*cos( 4.92451269861 +      227.52618943960*t)-pow(t,exp)*     0.00001956779*     227.52618943960*sin( 4.92451269861 +      227.52618943960*t);
      saturn_r_2+=pow(t,exp-1)*exp*     0.00002326777*cos( 0.00000000000 +        0.00000000000*t)-pow(t,exp)*     0.00002326777*       0.00000000000*sin( 0.00000000000 +        0.00000000000*t);

      return saturn_r_2;
   }

   static double saturn_r_3_(double t){
      double saturn_r_3=0.0;
      double exp=3;
      saturn_r_3+=pow(t,exp-1)*exp*     0.00020315239*cos( 3.02186068237 +      213.29909543800*t)-pow(t,exp)*     0.00020315239*     213.29909543800*sin( 3.02186068237 +      213.29909543800*t);
      saturn_r_3+=pow(t,exp-1)*exp*     0.00008923679*cos( 3.19144467228 +      220.41264243880*t)-pow(t,exp)*     0.00008923679*     220.41264243880*sin( 3.19144467228 +      220.41264243880*t);
      saturn_r_3+=pow(t,exp-1)*exp*     0.00006908768*cos( 4.35175288182 +      206.18554843720*t)-pow(t,exp)*     0.00006908768*     206.18554843720*sin( 4.35175288182 +      206.18554843720*t);
      saturn_r_3+=pow(t,exp-1)*exp*     0.00004087056*cos( 4.22398596149 +        7.11354700080*t)-pow(t,exp)*     0.00004087056*       7.11354700080*sin( 4.22398596149 +        7.11354700080*t);
      saturn_r_3+=pow(t,exp-1)*exp*     0.00003878848*cos( 2.01051759517 +      426.59819087600*t)-pow(t,exp)*     0.00003878848*     426.59819087600*sin( 2.01051759517 +      426.59819087600*t);
      saturn_r_3+=pow(t,exp-1)*exp*     0.00001070754*cos( 4.20372656114 +      199.07200143640*t)-pow(t,exp)*     0.00001070754*     199.07200143640*sin( 4.20372656114 +      199.07200143640*t);

      return saturn_r_3;
   }

   static double saturn_r_4_(double t){
      double saturn_r_4=0.0;
      double exp=4;
      saturn_r_4+=pow(t,exp-1)*exp*     0.00001202117*cos( 1.41498340225 +      220.41264243880*t)-pow(t,exp)*     0.00001202117*     220.41264243880*sin( 1.41498340225 +      220.41264243880*t);

      return saturn_r_4;
   }

   static double saturn_r(double t){
      return saturn_r_0_(t)+saturn_r_1_(t)+saturn_r_2_(t)+saturn_r_3_(t)+saturn_r_4_(t);
   }

}
