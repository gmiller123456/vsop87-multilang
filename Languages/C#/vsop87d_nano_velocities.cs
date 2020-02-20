//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain

using static System.Math;

public class vsop87d_nano_velocities {
   public static double[] getEarth(double t){
      double[] temp=new double[3];
      temp[0]=earth_l(t) / 365250.0;
      temp[1]=earth_b(t) / 365250.0;
      temp[2]=earth_r(t) / 365250.0;
      return temp;
   }

   public static double[] getJupiter(double t){
      double[] temp=new double[3];
      temp[0]=jupiter_l(t) / 365250.0;
      temp[1]=jupiter_b(t) / 365250.0;
      temp[2]=jupiter_r(t) / 365250.0;
      return temp;
   }

   public static double[] getMars(double t){
      double[] temp=new double[3];
      temp[0]=mars_l(t) / 365250.0;
      temp[1]=mars_b(t) / 365250.0;
      temp[2]=mars_r(t) / 365250.0;
      return temp;
   }

   public static double[] getMercury(double t){
      double[] temp=new double[3];
      temp[0]=mercury_l(t) / 365250.0;
      temp[1]=mercury_b(t) / 365250.0;
      temp[2]=mercury_r(t) / 365250.0;
      return temp;
   }

   public static double[] getNeptune(double t){
      double[] temp=new double[3];
      temp[0]=neptune_l(t) / 365250.0;
      temp[1]=neptune_b(t) / 365250.0;
      temp[2]=neptune_r(t) / 365250.0;
      return temp;
   }

   public static double[] getSaturn(double t){
      double[] temp=new double[3];
      temp[0]=saturn_l(t) / 365250.0;
      temp[1]=saturn_b(t) / 365250.0;
      temp[2]=saturn_r(t) / 365250.0;
      return temp;
   }

   public static double[] getUranus(double t){
      double[] temp=new double[3];
      temp[0]=uranus_l(t) / 365250.0;
      temp[1]=uranus_b(t) / 365250.0;
      temp[2]=uranus_r(t) / 365250.0;
      return temp;
   }

   public static double[] getVenus(double t){
      double[] temp=new double[3];
      temp[0]=venus_l(t) / 365250.0;
      temp[1]=venus_b(t) / 365250.0;
      temp[2]=venus_r(t) / 365250.0;
      return temp;
   }

   static double earth_l(double t){
      double exp=0.0;
      double earth_l_0=0.0;
      exp=0;
      earth_l_0+=-Pow(t,exp)*     1.75347045673*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      earth_l_0+=-Pow(t,exp)*     0.03341656456*    6283.07584999140*Sin( 4.66925680417 +     6283.07584999140*t);

      double earth_l_1=0.0;
      exp=1;
      earth_l_1+=Pow(t,exp-1)*exp*  6283.31966747491*Cos( 0.00000000000 +        0.00000000000*t)-Pow(t,exp)*  6283.31966747491*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      earth_l_1+=Pow(t,exp-1)*exp*     0.00206058863*Cos( 2.67823455584 +     6283.07584999140*t)-Pow(t,exp)*     0.00206058863*    6283.07584999140*Sin( 2.67823455584 +     6283.07584999140*t);

      return earth_l_0+earth_l_1;
   }

   static double earth_b(double t){
      double exp=0.0;
      return 0;
   }

   static double earth_r(double t){
      double exp=0.0;
      double earth_r_0=0.0;
      exp=0;
      earth_r_0+=-Pow(t,exp)*     1.00013988799*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      earth_r_0+=-Pow(t,exp)*     0.01670699626*    6283.07584999140*Sin( 3.09846350771 +     6283.07584999140*t);

      double earth_r_1=0.0;
      exp=1;
      earth_r_1+=Pow(t,exp-1)*exp*     0.00103018608*Cos( 1.10748969588 +     6283.07584999140*t)-Pow(t,exp)*     0.00103018608*    6283.07584999140*Sin( 1.10748969588 +     6283.07584999140*t);

      return earth_r_0+earth_r_1;
   }

   static double jupiter_l(double t){
      double exp=0.0;
      double jupiter_l_0=0.0;
      exp=0;
      jupiter_l_0+=-Pow(t,exp)*     0.59954691495*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      jupiter_l_0+=-Pow(t,exp)*     0.09695898711*     529.69096509460*Sin( 5.06191793105 +      529.69096509460*t);
      jupiter_l_0+=-Pow(t,exp)*     0.00573610145*       7.11354700080*Sin( 1.44406205976 +        7.11354700080*t);
      jupiter_l_0+=-Pow(t,exp)*     0.00306389180*    1059.38193018920*Sin( 5.41734729976 +     1059.38193018920*t);

      double jupiter_l_1=0.0;
      exp=1;
      jupiter_l_1+=Pow(t,exp-1)*exp*   529.93480757497*Cos( 0.00000000000 +        0.00000000000*t)-Pow(t,exp)*   529.93480757497*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      jupiter_l_1+=Pow(t,exp-1)*exp*     0.00489741194*Cos( 4.22066689928 +      529.69096509460*t)-Pow(t,exp)*     0.00489741194*     529.69096509460*Sin( 4.22066689928 +      529.69096509460*t);
      jupiter_l_1+=Pow(t,exp-1)*exp*     0.00228918538*Cos( 6.02647464016 +        7.11354700080*t)-Pow(t,exp)*     0.00228918538*       7.11354700080*Sin( 6.02647464016 +        7.11354700080*t);

      return jupiter_l_0+jupiter_l_1;
   }

   static double jupiter_b(double t){
      double exp=0.0;
      double jupiter_b_0=0.0;
      exp=0;
      jupiter_b_0+=-Pow(t,exp)*     0.02268615703*     529.69096509460*Sin( 3.55852606718 +      529.69096509460*t);
      jupiter_b_0+=-Pow(t,exp)*     0.00109971634*    1059.38193018920*Sin( 3.90809347389 +     1059.38193018920*t);
      jupiter_b_0+=-Pow(t,exp)*     0.00110090358*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);

      double jupiter_b_1=0.0;
      exp=1;
      jupiter_b_1+=Pow(t,exp-1)*exp*     0.00177351787*Cos( 5.70166488486 +      529.69096509460*t)-Pow(t,exp)*     0.00177351787*     529.69096509460*Sin( 5.70166488486 +      529.69096509460*t);

      return jupiter_b_0+jupiter_b_1;
   }

   static double jupiter_r(double t){
      double exp=0.0;
      double jupiter_r_0=0.0;
      exp=0;
      jupiter_r_0+=-Pow(t,exp)*     5.20887429471*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      jupiter_r_0+=-Pow(t,exp)*     0.25209327020*     529.69096509460*Sin( 3.49108640015 +      529.69096509460*t);
      jupiter_r_0+=-Pow(t,exp)*     0.00610599902*    1059.38193018920*Sin( 3.84115365602 +     1059.38193018920*t);
      jupiter_r_0+=-Pow(t,exp)*     0.00282029465*     632.78373931320*Sin( 2.57419879933 +      632.78373931320*t);
      jupiter_r_0+=-Pow(t,exp)*     0.00187647391*     522.57741809380*Sin( 2.07590380082 +      522.57741809380*t);

      double jupiter_r_1=0.0;
      exp=1;
      jupiter_r_1+=Pow(t,exp-1)*exp*     0.01271801596*Cos( 2.64937511122 +      529.69096509460*t)-Pow(t,exp)*     0.01271801596*     529.69096509460*Sin( 2.64937511122 +      529.69096509460*t);

      return jupiter_r_0+jupiter_r_1;
   }

   static double mars_l(double t){
      double exp=0.0;
      double mars_l_0=0.0;
      exp=0;
      mars_l_0+=-Pow(t,exp)*     6.20347711583*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      mars_l_0+=-Pow(t,exp)*     0.18656368100*    3340.61242669980*Sin( 5.05037100303 +     3340.61242669980*t);
      mars_l_0+=-Pow(t,exp)*     0.01108216792*    6681.22485339960*Sin( 5.40099836958 +     6681.22485339960*t);

      double mars_l_1=0.0;
      exp=1;
      mars_l_1+=Pow(t,exp-1)*exp*  3340.85627474342*Cos( 0.00000000000 +        0.00000000000*t)-Pow(t,exp)*  3340.85627474342*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      mars_l_1+=Pow(t,exp-1)*exp*     0.01458227051*Cos( 3.60426053609 +     3340.61242669980*t)-Pow(t,exp)*     0.01458227051*    3340.61242669980*Sin( 3.60426053609 +     3340.61242669980*t);
      mars_l_1+=Pow(t,exp-1)*exp*     0.00164901343*Cos( 3.92631250962 +     6681.22485339960*t)-Pow(t,exp)*     0.00164901343*    6681.22485339960*Sin( 3.92631250962 +     6681.22485339960*t);

      return mars_l_0+mars_l_1;
   }

   static double mars_b(double t){
      double exp=0.0;
      double mars_b_0=0.0;
      exp=0;
      mars_b_0+=-Pow(t,exp)*     0.03197134986*    3340.61242669980*Sin( 3.76832042432 +     3340.61242669980*t);
      mars_b_0+=-Pow(t,exp)*     0.00298033234*    6681.22485339960*Sin( 4.10616996243 +     6681.22485339960*t);
      mars_b_0+=-Pow(t,exp)*     0.00289104742*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);

      double mars_b_1=0.0;
      exp=1;
      mars_b_1+=Pow(t,exp-1)*exp*     0.00350068845*Cos( 5.36847836211 +     3340.61242669980*t)-Pow(t,exp)*     0.00350068845*    3340.61242669980*Sin( 5.36847836211 +     3340.61242669980*t);

      return mars_b_0+mars_b_1;
   }

   static double mars_r(double t){
      double exp=0.0;
      double mars_r_0=0.0;
      exp=0;
      mars_r_0+=-Pow(t,exp)*     1.53033488276*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      mars_r_0+=-Pow(t,exp)*     0.14184953153*    3340.61242669980*Sin( 3.47971283519 +     3340.61242669980*t);
      mars_r_0+=-Pow(t,exp)*     0.00660776357*    6681.22485339960*Sin( 3.81783442097 +     6681.22485339960*t);

      double mars_r_1=0.0;
      exp=1;
      mars_r_1+=Pow(t,exp-1)*exp*     0.01107433340*Cos( 2.03250524950 +     3340.61242669980*t)-Pow(t,exp)*     0.01107433340*    3340.61242669980*Sin( 2.03250524950 +     3340.61242669980*t);
      mars_r_1+=Pow(t,exp-1)*exp*     0.00103175886*Cos( 2.37071845682 +     6681.22485339960*t)-Pow(t,exp)*     0.00103175886*    6681.22485339960*Sin( 2.37071845682 +     6681.22485339960*t);

      return mars_r_0+mars_r_1;
   }

   static double mercury_l(double t){
      double exp=0.0;
      double mercury_l_0=0.0;
      exp=0;
      mercury_l_0+=-Pow(t,exp)*     4.40250710144*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      mercury_l_0+=-Pow(t,exp)*     0.40989414976*   26087.90314157420*Sin( 1.48302034194 +    26087.90314157420*t);
      mercury_l_0+=-Pow(t,exp)*     0.05046294199*   52175.80628314840*Sin( 4.47785489540 +    52175.80628314840*t);
      mercury_l_0+=-Pow(t,exp)*     0.00855346843*   78263.70942472259*Sin( 1.16520322351 +    78263.70942472259*t);
      mercury_l_0+=-Pow(t,exp)*     0.00165590362*  104351.61256629678*Sin( 4.11969163181 +   104351.61256629678*t);

      double mercury_l_1=0.0;
      exp=1;
      mercury_l_1+=Pow(t,exp-1)*exp* 26088.14706222746*Cos( 0.00000000000 +        0.00000000000*t)-Pow(t,exp)* 26088.14706222746*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      mercury_l_1+=Pow(t,exp-1)*exp*     0.01126007832*Cos( 6.21703970996 +    26087.90314157420*t)-Pow(t,exp)*     0.01126007832*   26087.90314157420*Sin( 6.21703970996 +    26087.90314157420*t);
      mercury_l_1+=Pow(t,exp-1)*exp*     0.00303471395*Cos( 3.05565472363 +    52175.80628314840*t)-Pow(t,exp)*     0.00303471395*   52175.80628314840*Sin( 3.05565472363 +    52175.80628314840*t);

      return mercury_l_0+mercury_l_1;
   }

   static double mercury_b(double t){
      double exp=0.0;
      double mercury_b_0=0.0;
      exp=0;
      mercury_b_0+=-Pow(t,exp)*     0.11737528962*   26087.90314157420*Sin( 1.98357498767 +    26087.90314157420*t);
      mercury_b_0+=-Pow(t,exp)*     0.02388076996*   52175.80628314840*Sin( 5.03738959685 +    52175.80628314840*t);
      mercury_b_0+=-Pow(t,exp)*     0.01222839532*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
      mercury_b_0+=-Pow(t,exp)*     0.00543251810*   78263.70942472259*Sin( 1.79644363963 +    78263.70942472259*t);
      mercury_b_0+=-Pow(t,exp)*     0.00129778770*  104351.61256629678*Sin( 4.83232503961 +   104351.61256629678*t);

      double mercury_b_1=0.0;
      exp=1;
      mercury_b_1+=Pow(t,exp-1)*exp*     0.00429151362*Cos( 3.50169780393 +    26087.90314157420*t)-Pow(t,exp)*     0.00429151362*   26087.90314157420*Sin( 3.50169780393 +    26087.90314157420*t);
      mercury_b_1+=Pow(t,exp-1)*exp*     0.00146233668*Cos( 3.14159265359 +        0.00000000000*t)-Pow(t,exp)*     0.00146233668*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);

      return mercury_b_0+mercury_b_1;
   }

   static double mercury_r(double t){
      double exp=0.0;
      double mercury_r_0=0.0;
      exp=0;
      mercury_r_0+=-Pow(t,exp)*     0.39528271652*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      mercury_r_0+=-Pow(t,exp)*     0.07834131817*   26087.90314157420*Sin( 6.19233722599 +    26087.90314157420*t);
      mercury_r_0+=-Pow(t,exp)*     0.00795525557*   52175.80628314840*Sin( 2.95989690096 +    52175.80628314840*t);
      mercury_r_0+=-Pow(t,exp)*     0.00121281763*   78263.70942472259*Sin( 6.01064153805 +    78263.70942472259*t);

      double mercury_r_1=0.0;
      exp=1;
      mercury_r_1+=Pow(t,exp-1)*exp*     0.00217347739*Cos( 4.65617158663 +    26087.90314157420*t)-Pow(t,exp)*     0.00217347739*   26087.90314157420*Sin( 4.65617158663 +    26087.90314157420*t);

      return mercury_r_0+mercury_r_1;
   }

   static double neptune_l(double t){
      double exp=0.0;
      double neptune_l_0=0.0;
      exp=0;
      neptune_l_0+=-Pow(t,exp)*     5.31188633047*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      neptune_l_0+=-Pow(t,exp)*     0.01798475509*      38.13303563780*Sin( 2.90101273050 +       38.13303563780*t);
      neptune_l_0+=-Pow(t,exp)*     0.01019727662*       1.48447270830*Sin( 0.48580923660 +        1.48447270830*t);
      neptune_l_0+=-Pow(t,exp)*     0.00124531845*      36.64856292950*Sin( 4.83008090682 +       36.64856292950*t);

      double neptune_l_1=0.0;
      exp=1;
      neptune_l_1+=Pow(t,exp-1)*exp*    38.37687716731*Cos( 0.00000000000 +        0.00000000000*t)-Pow(t,exp)*    38.37687716731*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);

      return neptune_l_0+neptune_l_1;
   }

   static double neptune_b(double t){
      double exp=0.0;
      double neptune_b_0=0.0;
      exp=0;
      neptune_b_0+=-Pow(t,exp)*     0.03088622933*      38.13303563780*Sin( 1.44104372626 +       38.13303563780*t);

      double neptune_b_1=0.0;
      exp=1;
      neptune_b_1+=Pow(t,exp-1)*exp*     0.00227279214*Cos( 3.80793089870 +       38.13303563780*t)-Pow(t,exp)*     0.00227279214*      38.13303563780*Sin( 3.80793089870 +       38.13303563780*t);

      return neptune_b_0+neptune_b_1;
   }

   static double neptune_r(double t){
      double exp=0.0;
      double neptune_r_0=0.0;
      exp=0;
      neptune_r_0+=-Pow(t,exp)*    30.07013206102*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      neptune_r_0+=-Pow(t,exp)*     0.27062259490*      38.13303563780*Sin( 1.32999458930 +       38.13303563780*t);
      neptune_r_0+=-Pow(t,exp)*     0.01691764281*      36.64856292950*Sin( 3.25186138896 +       36.64856292950*t);
      neptune_r_0+=-Pow(t,exp)*     0.00807830737*       1.48447270830*Sin( 5.18592836167 +        1.48447270830*t);
      neptune_r_0+=-Pow(t,exp)*     0.00537760613*      35.16409022120*Sin( 4.52113902845 +       35.16409022120*t);
      neptune_r_0+=-Pow(t,exp)*     0.00495725642*     491.55792945680*Sin( 1.57105654815 +      491.55792945680*t);
      neptune_r_0+=-Pow(t,exp)*     0.00274571970*     175.16605980020*Sin( 1.84552256801 +      175.16605980020*t);
      neptune_r_0+=-Pow(t,exp)*     0.00135134095*      39.61750834610*Sin( 3.37220607384 +       39.61750834610*t);
      neptune_r_0+=-Pow(t,exp)*     0.00121801825*      76.26607127560*Sin( 5.79754444303 +       76.26607127560*t);
      neptune_r_0+=-Pow(t,exp)*     0.00100895397*      73.29712585900*Sin( 0.37702748681 +       73.29712585900*t);

      double neptune_r_1=0.0;
      exp=1;
      neptune_r_1+=Pow(t,exp-1)*exp*     0.00236338502*Cos( 0.70498011235 +       38.13303563780*t)-Pow(t,exp)*     0.00236338502*      38.13303563780*Sin( 0.70498011235 +       38.13303563780*t);

      return neptune_r_0+neptune_r_1;
   }

   static double saturn_l(double t){
      double exp=0.0;
      double saturn_l_0=0.0;
      exp=0;
      saturn_l_0+=-Pow(t,exp)*     0.87401354029*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      saturn_l_0+=-Pow(t,exp)*     0.11107659780*     213.29909543800*Sin( 3.96205090194 +      213.29909543800*t);
      saturn_l_0+=-Pow(t,exp)*     0.01414150958*       7.11354700080*Sin( 4.58581515873 +        7.11354700080*t);
      saturn_l_0+=-Pow(t,exp)*     0.00398379386*     206.18554843720*Sin( 0.52112025957 +      206.18554843720*t);
      saturn_l_0+=-Pow(t,exp)*     0.00350769223*     426.59819087600*Sin( 3.30329903015 +      426.59819087600*t);
      saturn_l_0+=-Pow(t,exp)*     0.00206816296*     103.09277421860*Sin( 0.24658366938 +      103.09277421860*t);

      double saturn_l_1=0.0;
      exp=1;
      saturn_l_1+=Pow(t,exp-1)*exp*   213.54295595986*Cos( 0.00000000000 +        0.00000000000*t)-Pow(t,exp)*   213.54295595986*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      saturn_l_1+=Pow(t,exp-1)*exp*     0.01296855005*Cos( 1.82820544701 +      213.29909543800*t)-Pow(t,exp)*     0.01296855005*     213.29909543800*Sin( 1.82820544701 +      213.29909543800*t);
      saturn_l_1+=Pow(t,exp-1)*exp*     0.00564347566*Cos( 2.88500136429 +        7.11354700080*t)-Pow(t,exp)*     0.00564347566*       7.11354700080*Sin( 2.88500136429 +        7.11354700080*t);
      saturn_l_1+=Pow(t,exp-1)*exp*     0.00107678770*Cos( 2.27769911872 +      206.18554843720*t)-Pow(t,exp)*     0.00107678770*     206.18554843720*Sin( 2.27769911872 +      206.18554843720*t);

      double saturn_l_2=0.0;
      exp=2;
      saturn_l_2+=Pow(t,exp-1)*exp*     0.00116441181*Cos( 1.17987850633 +        7.11354700080*t)-Pow(t,exp)*     0.00116441181*       7.11354700080*Sin( 1.17987850633 +        7.11354700080*t);

      return saturn_l_0+saturn_l_1+saturn_l_2;
   }

   static double saturn_b(double t){
      double exp=0.0;
      double saturn_b_0=0.0;
      exp=0;
      saturn_b_0+=-Pow(t,exp)*     0.04330678040*     213.29909543800*Sin( 3.60284428399 +      213.29909543800*t);
      saturn_b_0+=-Pow(t,exp)*     0.00240348303*     426.59819087600*Sin( 2.85238489390 +      426.59819087600*t);

      double saturn_b_1=0.0;
      exp=1;
      saturn_b_1+=Pow(t,exp-1)*exp*     0.00397554998*Cos( 5.33289992556 +      213.29909543800*t)-Pow(t,exp)*     0.00397554998*     213.29909543800*Sin( 5.33289992556 +      213.29909543800*t);

      return saturn_b_0+saturn_b_1;
   }

   static double saturn_r(double t){
      double exp=0.0;
      double saturn_r_0=0.0;
      exp=0;
      saturn_r_0+=-Pow(t,exp)*     9.55758135801*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      saturn_r_0+=-Pow(t,exp)*     0.52921382465*     213.29909543800*Sin( 2.39226219733 +      213.29909543800*t);
      saturn_r_0+=-Pow(t,exp)*     0.01873679934*     206.18554843720*Sin( 5.23549605091 +      206.18554843720*t);
      saturn_r_0+=-Pow(t,exp)*     0.01464663959*     426.59819087600*Sin( 1.64763045468 +      426.59819087600*t);
      saturn_r_0+=-Pow(t,exp)*     0.00821891059*     316.39186965660*Sin( 5.93520025371 +      316.39186965660*t);
      saturn_r_0+=-Pow(t,exp)*     0.00547506899*     103.09277421860*Sin( 5.01532628454 +      103.09277421860*t);
      saturn_r_0+=-Pow(t,exp)*     0.00371684449*     220.41264243880*Sin( 2.27114833428 +      220.41264243880*t);
      saturn_r_0+=-Pow(t,exp)*     0.00361778433*       7.11354700080*Sin( 3.13904303264 +        7.11354700080*t);
      saturn_r_0+=-Pow(t,exp)*     0.00140617548*     632.78373931320*Sin( 5.70406652991 +      632.78373931320*t);
      saturn_r_0+=-Pow(t,exp)*     0.00108974737*     110.20632121940*Sin( 3.29313595577 +      110.20632121940*t);

      double saturn_r_1=0.0;
      exp=1;
      saturn_r_1+=Pow(t,exp-1)*exp*     0.06182981282*Cos( 0.25843515034 +      213.29909543800*t)-Pow(t,exp)*     0.06182981282*     213.29909543800*Sin( 0.25843515034 +      213.29909543800*t);
      saturn_r_1+=Pow(t,exp-1)*exp*     0.00506577574*Cos( 0.71114650941 +      206.18554843720*t)-Pow(t,exp)*     0.00506577574*     206.18554843720*Sin( 0.71114650941 +      206.18554843720*t);
      saturn_r_1+=Pow(t,exp-1)*exp*     0.00341394136*Cos( 5.79635773960 +      426.59819087600*t)-Pow(t,exp)*     0.00341394136*     426.59819087600*Sin( 5.79635773960 +      426.59819087600*t);
      saturn_r_1+=Pow(t,exp-1)*exp*     0.00188491375*Cos( 0.47215719444 +      220.41264243880*t)-Pow(t,exp)*     0.00188491375*     220.41264243880*Sin( 0.47215719444 +      220.41264243880*t);
      saturn_r_1+=Pow(t,exp-1)*exp*     0.00186261540*Cos( 3.14159265359 +        0.00000000000*t)-Pow(t,exp)*     0.00186261540*       0.00000000000*Sin( 3.14159265359 +        0.00000000000*t);
      saturn_r_1+=Pow(t,exp-1)*exp*     0.00143891176*Cos( 1.40744864239 +        7.11354700080*t)-Pow(t,exp)*     0.00143891176*       7.11354700080*Sin( 1.40744864239 +        7.11354700080*t);

      double saturn_r_2=0.0;
      exp=2;
      saturn_r_2+=Pow(t,exp-1)*exp*     0.00436902464*Cos( 4.78671673044 +      213.29909543800*t)-Pow(t,exp)*     0.00436902464*     213.29909543800*Sin( 4.78671673044 +      213.29909543800*t);

      return saturn_r_0+saturn_r_1+saturn_r_2;
   }

   static double uranus_l(double t){
      double exp=0.0;
      double uranus_l_0=0.0;
      exp=0;
      uranus_l_0+=-Pow(t,exp)*     5.48129294299*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      uranus_l_0+=-Pow(t,exp)*     0.09260408252*      74.78159856730*Sin( 0.89106421530 +       74.78159856730*t);
      uranus_l_0+=-Pow(t,exp)*     0.01504247826*       1.48447270830*Sin( 3.62719262195 +        1.48447270830*t);
      uranus_l_0+=-Pow(t,exp)*     0.00365981718*      73.29712585900*Sin( 1.89962189068 +       73.29712585900*t);
      uranus_l_0+=-Pow(t,exp)*     0.00272328132*     149.56319713460*Sin( 3.35823710524 +      149.56319713460*t);

      double uranus_l_1=0.0;
      exp=1;
      uranus_l_1+=Pow(t,exp-1)*exp*    75.02543121646*Cos( 0.00000000000 +        0.00000000000*t)-Pow(t,exp)*    75.02543121646*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      uranus_l_1+=Pow(t,exp-1)*exp*     0.00154458244*Cos( 5.24201658072 +       74.78159856730*t)-Pow(t,exp)*     0.00154458244*      74.78159856730*Sin( 5.24201658072 +       74.78159856730*t);

      return uranus_l_0+uranus_l_1;
   }

   static double uranus_b(double t){
      double exp=0.0;
      double uranus_b_0=0.0;
      exp=0;
      uranus_b_0+=-Pow(t,exp)*     0.01346277639*      74.78159856730*Sin( 2.61877810545 +       74.78159856730*t);

      double uranus_b_1=0.0;
      exp=1;
      uranus_b_1+=Pow(t,exp-1)*exp*     0.00206366162*Cos( 4.12394311407 +       74.78159856730*t)-Pow(t,exp)*     0.00206366162*      74.78159856730*Sin( 4.12394311407 +       74.78159856730*t);

      return uranus_b_0+uranus_b_1;
   }

   static double uranus_r(double t){
      double exp=0.0;
      double uranus_r_0=0.0;
      exp=0;
      uranus_r_0+=-Pow(t,exp)*    19.21264847881*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      uranus_r_0+=-Pow(t,exp)*     0.88784984055*      74.78159856730*Sin( 5.60377526994 +       74.78159856730*t);
      uranus_r_0+=-Pow(t,exp)*     0.03440835545*      73.29712585900*Sin( 0.32836098991 +       73.29712585900*t);
      uranus_r_0+=-Pow(t,exp)*     0.02055653495*     149.56319713460*Sin( 1.78295170028 +      149.56319713460*t);
      uranus_r_0+=-Pow(t,exp)*     0.00649321851*      76.26607127560*Sin( 4.52247298119 +       76.26607127560*t);
      uranus_r_0+=-Pow(t,exp)*     0.00602248144*      63.73589830340*Sin( 3.86003820462 +       63.73589830340*t);
      uranus_r_0+=-Pow(t,exp)*     0.00496404171*     454.90936652730*Sin( 1.40139934716 +      454.90936652730*t);
      uranus_r_0+=-Pow(t,exp)*     0.00338525522*     138.51749687070*Sin( 1.58002682946 +      138.51749687070*t);
      uranus_r_0+=-Pow(t,exp)*     0.00243508222*      71.81265315070*Sin( 1.57086595074 +       71.81265315070*t);
      uranus_r_0+=-Pow(t,exp)*     0.00190521915*       1.48447270830*Sin( 1.99809364502 +        1.48447270830*t);
      uranus_r_0+=-Pow(t,exp)*     0.00161858251*     148.07872442630*Sin( 2.79137863469 +      148.07872442630*t);
      uranus_r_0+=-Pow(t,exp)*     0.00143705902*      11.04570026390*Sin( 1.38368574483 +       11.04570026390*t);

      double uranus_r_1=0.0;
      exp=1;
      uranus_r_1+=Pow(t,exp-1)*exp*     0.01479896370*Cos( 3.67205705317 +       74.78159856730*t)-Pow(t,exp)*     0.01479896370*      74.78159856730*Sin( 3.67205705317 +       74.78159856730*t);

      return uranus_r_0+uranus_r_1;
   }

   static double venus_l(double t){
      double exp=0.0;
      double venus_l_0=0.0;
      exp=0;
      venus_l_0+=-Pow(t,exp)*     3.17614666774*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      venus_l_0+=-Pow(t,exp)*     0.01353968419*   10213.28554621100*Sin( 5.59313319619 +    10213.28554621100*t);

      double venus_l_1=0.0;
      exp=1;
      venus_l_1+=Pow(t,exp-1)*exp* 10213.52943052898*Cos( 0.00000000000 +        0.00000000000*t)-Pow(t,exp)* 10213.52943052898*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);

      return venus_l_0+venus_l_1;
   }

   static double venus_b(double t){
      double exp=0.0;
      double venus_b_0=0.0;
      exp=0;
      venus_b_0+=-Pow(t,exp)*     0.05923638472*   10213.28554621100*Sin( 0.26702775813 +    10213.28554621100*t);

      double venus_b_1=0.0;
      exp=1;
      venus_b_1+=Pow(t,exp-1)*exp*     0.00513347602*Cos( 1.80364310797 +    10213.28554621100*t)-Pow(t,exp)*     0.00513347602*   10213.28554621100*Sin( 1.80364310797 +    10213.28554621100*t);

      return venus_b_0+venus_b_1;
   }

   static double venus_r(double t){
      double exp=0.0;
      double venus_r_0=0.0;
      exp=0;
      venus_r_0+=-Pow(t,exp)*     0.72334820905*       0.00000000000*Sin( 0.00000000000 +        0.00000000000*t);
      venus_r_0+=-Pow(t,exp)*     0.00489824185*   10213.28554621100*Sin( 4.02151832268 +    10213.28554621100*t);

      return venus_r_0;
   }

}
