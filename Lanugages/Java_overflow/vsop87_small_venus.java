import static java.lang.Math.*;

public class vsop87_small_venus{
   static double venus_a_0_(double t){
      double venus_a_0=0.0;
      venus_a_0+=     0.72332981996 * cos( 0.00000000000 +        0.00000000000*t);
      venus_a_0+=     0.00000432219 * cos( 2.84552760786 +     7860.41939243920*t);
      venus_a_0+=     0.00000293981 * cos( 5.15392250791 +    19367.18916223280*t);
      venus_a_0+=     0.00000264045 * cos( 4.26809747017 +    11790.62908865880*t);
      venus_a_0+=     0.00000177364 * cos( 1.42300334637 +     3930.20969621960*t);
      venus_a_0+=     0.00000168309 * cos( 5.69068897882 +    15720.83878487840*t);
      venus_a_0+=     0.00000109965 * cos( 0.83004358220 +    19651.04848109800*t);
      venus_a_0+=     0.00000104002 * cos( 2.68625826502 +     1577.34354244780*t);
      venus_a_0+=     0.00000073026 * cos( 2.25253299866 +    23581.25817731760*t);
      venus_a_0+=     0.00000051958 * cos( 4.78619257639 +    18837.49819713819*t);
      venus_a_0+=     0.00000049057 * cos( 3.67497295699 +    27511.46787353720*t);
      venus_a_0+=     0.00000043444 * cos( 1.22834391589 +    15874.61759536320*t);
      venus_a_0+=     0.00000038168 * cos( 4.11401661315 +     5507.55323866740*t);
      venus_a_0+=     0.00000028942 * cos( 5.79010856074 +      775.52261132400*t);
      venus_a_0+=     0.00000033622 * cos( 1.43886300553 +    29050.78374334920*t);
      venus_a_0+=     0.00000033240 * cos( 5.09736442395 +    31441.67756975680*t);
      venus_a_0+=     0.00000024285 * cos( 5.53950302208 +     9437.76293488700*t);
      venus_a_0+=     0.00000022672 * cos( 0.23652301130 +    35371.88726597640*t);
      venus_a_0+=     0.00000020643 * cos( 2.58732030736 +     9683.59458111640*t);
      venus_a_0+=     0.00000017082 * cos( 0.68076260132 +    13367.97263110660*t);
      venus_a_0+=     0.00000013806 * cos( 5.69963444321 +     5661.33204915220*t);
      venus_a_0+=     0.00000015546 * cos( 1.65882022530 +    39302.09696219600*t);
      venus_a_0+=     0.00000013663 * cos( 4.60592988063 +    19999.97290154599*t);
      venus_a_0+=     0.00000012414 * cos( 2.10463822266 +    17298.18232732620*t);
      venus_a_0+=     0.00000010705 * cos( 3.08107163600 +    43232.30665841560*t);

      return venus_a_0;
   }

   static double venus_a(double t){
      return venus_a_0_(t);
   }

   static double venus_l_0_(double t){
      double venus_l_0=0.0;
      venus_l_0+=     3.17614669689 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_0+=     0.00002003673 * cos( 4.41634412285 +     7860.41939243920*t);
      venus_l_0+=     0.00001974219 * cos( 2.99373531667 +     3930.20969621960*t);
      venus_l_0+=     0.00001317126 * cos( 5.18666796835 +       26.29831979980*t);
      venus_l_0+=     0.00001609772 * cos( 4.24819541738 +     1577.34354244780*t);
      venus_l_0+=     0.00000943109 * cos( 5.83898452412 +    11790.62908865880*t);
      venus_l_0+=     0.00000759073 * cos( 1.94944592333 +      529.69096509460*t);
      venus_l_0+=     0.00000701576 * cos( 1.06509133263 +      775.52261132400*t);
      venus_l_0+=     0.00000584635 * cos( 3.99837954303 +      191.44826611160*t);
      venus_l_0+=     0.00000731373 * cos( 0.44153385028 +    19367.18916223280*t);
      venus_l_0+=     0.00000510584 * cos( 0.97844846212 +    15720.83878487840*t);
      venus_l_0+=     0.00000297815 * cos( 2.40105326112 +    19651.04848109800*t);
      venus_l_0+=     0.00000176993 * cos( 4.65387062499 +     1109.37855209340*t);
      venus_l_0+=     0.00000215728 * cos( 5.66909869478 +     5507.55323866740*t);
      venus_l_0+=     0.00000181822 * cos( 3.82361289262 +    23581.25817731760*t);
      venus_l_0+=     0.00000128263 * cos( 4.22605329070 +       20.77539549240*t);
      venus_l_0+=     0.00000131296 * cos( 0.07005540742 +    18837.49819713819*t);
      venus_l_0+=     0.00000131651 * cos( 4.15523917159 +     9683.59458111640*t);
      venus_l_0+=     0.00000104644 * cos( 1.53687847258 +      801.82093112380*t);
      venus_l_0+=     0.00000114451 * cos( 5.24612716253 +    27511.46787353720*t);
      venus_l_0+=     0.00000099070 * cos( 0.83275303294 +      213.29909543800*t);
      venus_l_0+=     0.00000083483 * cos( 0.96212773931 +     5661.33204915220*t);
      venus_l_0+=     0.00000095546 * cos( 0.81049861708 +     9437.76293488700*t);
      venus_l_0+=     0.00000075437 * cos( 0.35284060842 +     3154.68708489560*t);
      venus_l_0+=     0.00000056182 * cos( 4.24065341031 +        7.11354700080*t);
      venus_l_0+=     0.00000073623 * cos( 0.38541088168 +    31441.67756975680*t);
      venus_l_0+=     0.00000071369 * cos( 3.01212187692 +    29050.78374334920*t);
      venus_l_0+=     0.00000047545 * cos( 5.45313671831 +     2352.86615377180*t);
      venus_l_0+=     0.00000043762 * cos( 3.13868236748 +     9153.90361602180*t);
      venus_l_0+=     0.00000054782 * cos( 2.23549131519 +    13367.97263110660*t);
      venus_l_0+=     0.00000048126 * cos( 1.80783498423 +    35371.88726597640*t);
      venus_l_0+=     0.00000041120 * cos( 0.36255486692 +      382.89653222320*t);
      venus_l_0+=     0.00000044908 * cos( 5.93917765916 +    15874.61759536320*t);
      venus_l_0+=     0.00000027997 * cos( 2.20218757489 +     1059.38193018920*t);
      venus_l_0+=     0.00000034795 * cos( 3.66030678178 +    17298.18232732620*t);
      venus_l_0+=     0.00000033399 * cos( 6.17659474325 +    19999.97290154599*t);
      venus_l_0+=     0.00000031849 * cos( 3.23021461020 +    39302.09696219600*t);
      venus_l_0+=     0.00000029227 * cos( 3.51392387786 +      283.85931886520*t);
      venus_l_0+=     0.00000020170 * cos( 4.01497476643 +    10213.28554621100*t);
      venus_l_0+=     0.00000024301 * cos( 4.27814493315 +        5.52292430740*t);
      venus_l_0+=     0.00000020474 * cos( 0.58547075035 +       38.02767263580*t);
      venus_l_0+=     0.00000024976 * cos( 1.81396409808 +     6283.07584999140*t);
      venus_l_0+=     0.00000020012 * cos( 1.79155434344 +     7084.89678111520*t);
      venus_l_0+=     0.00000023256 * cos( 5.08484299324 +    21228.39202354580*t);
      venus_l_0+=     0.00000016367 * cos( 5.98215595560 +    18307.80723204360*t);
      venus_l_0+=     0.00000018080 * cos( 2.64515157010 +    28521.09277825460*t);
      venus_l_0+=     0.00000021283 * cos( 4.65255030292 +    43232.30665841560*t);
      venus_l_0+=     0.00000016695 * cos( 3.92520639054 +    19896.88012732740*t);
      venus_l_0+=     0.00000013670 * cos( 4.11957538145 +     4551.95349705880*t);
      venus_l_0+=     0.00000018760 * cos( 1.79920728783 +    13745.34623902240*t);
      venus_l_0+=     0.00000015997 * cos( 0.22592293590 +    25158.60171976540*t);
      venus_l_0+=     0.00000011829 * cos( 4.41093946907 +     3532.06069281140*t);
      venus_l_0+=     0.00000014333 * cos( 6.07484266417 +    47162.51635463520*t);
      venus_l_0+=     0.00000010258 * cos( 1.44428178791 +    10404.73381232260*t);
      venus_l_0+=     0.00000010042 * cos( 2.15880800475 +    21535.94964451540*t);
      venus_l_0+=     0.00000012234 * cos( 4.82824505774 +     6872.67311951120*t);
      venus_l_0+=     0.00000011200 * cos( 1.64994977134 +    29088.81141598500*t);
      venus_l_0+=     0.00000010540 * cos( 0.88558647866 +    31749.23519072640*t);

      return venus_l_0;
   }

   static double venus_l_1_(double t){
      double venus_l_1=0.0;
      venus_l_1+= 10213.28554621100 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_1+=     0.00000147221 * cos( 6.10436974053 +     1577.34354244780*t);
      venus_l_1+=     0.00000173922 * cos( 2.65539758046 +       26.29831979980*t);
      venus_l_1+=     0.00000082243 * cos( 5.70238888315 +      191.44826611160*t);
      venus_l_1+=     0.00000051801 * cos( 3.60307570789 +      775.52261132400*t);
      venus_l_1+=     0.00000038184 * cos( 1.03485957009 +      529.69096509460*t);
      venus_l_1+=     0.00000019811 * cos( 1.24194200418 +     5507.55323866740*t);
      venus_l_1+=     0.00000017511 * cos( 6.19411159617 +     1109.37855209340*t);
      venus_l_1+=     0.00000016485 * cos( 2.64345759067 +        7.11354700080*t);
      venus_l_1+=     0.00000011612 * cos( 4.97597758995 +      213.29909543800*t);
      venus_l_1+=     0.00000012547 * cos( 1.88135866035 +      382.89653222320*t);
      venus_l_1=venus_l_1 * t;

      return venus_l_1;
   }

   static double venus_l_2_(double t){
      double venus_l_2=0.0;
      venus_l_2+=     0.00000287889 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_2+=     0.00000023840 * cos( 2.04592287750 +       26.29831979980*t);
      venus_l_2=venus_l_2 * t * t;

      return venus_l_2;
   }

   static double venus_l(double t){
      return venus_l_0_(t)+venus_l_1_(t)+venus_l_2_(t);
   }

   static double venus_k_0_(double t){
      double venus_k_0=0.0;
      venus_k_0+=     0.00449282133 * cos( 3.14159265359 +        0.00000000000*t);
      venus_k_0+=     0.00002247401 * cos( 1.09074471887 +     1577.34354244780*t);
      venus_k_0+=     0.00001705727 * cos( 3.47431815156 +     2352.86615377180*t);
      venus_k_0+=     0.00000653102 * cos( 3.73601615190 +      529.69096509460*t);
      venus_k_0+=     0.00000646057 * cos( 1.97697362222 +     9153.90361602180*t);
      venus_k_0+=     0.00000535429 * cos( 2.51380251594 +     5507.55323866740*t);
      venus_k_0+=     0.00000333443 * cos( 0.78531885212 +      775.52261132400*t);
      venus_k_0+=     0.00000252413 * cos( 0.04155262942 +    10213.28554621100*t);
      venus_k_0+=     0.00000251699 * cos( 3.93683715476 +     9437.76293488700*t);
      venus_k_0+=     0.00000239041 * cos( 4.90218844722 +     6283.07584999140*t);
      venus_k_0+=     0.00000166418 * cos( 2.98478080988 +      191.44826611160*t);
      venus_k_0+=     0.00000118122 * cos( 1.60851542401 +     8624.21265092720*t);
      venus_k_0+=     0.00000140152 * cos( 5.35977741501 +    13367.97263110660*t);
      venus_k_0+=     0.00000095436 * cos( 4.72392662117 +     1059.38193018920*t);
      venus_k_0+=     0.00000084190 * cos( 0.49944944454 +    17298.18232732620*t);
      venus_k_0+=     0.00000080208 * cos( 3.78241916102 +     3154.68708489560*t);
      venus_k_0+=     0.00000065984 * cos( 2.04700304268 +    29580.47470844380*t);
      venus_k_0+=     0.00000054259 * cos( 4.54646773271 +    18837.49819713819*t);
      venus_k_0+=     0.00000052006 * cos( 2.21334466861 +     4705.73230754360*t);
      venus_k_0+=     0.00000052756 * cos( 1.92223018570 +    21228.39202354580*t);
      venus_k_0+=     0.00000041308 * cos( 4.78197037459 +      801.82093112380*t);
      venus_k_0+=     0.00000042660 * cos( 4.01029251607 +      213.29909543800*t);
      venus_k_0+=     0.00000029573 * cos( 4.95421912825 +     1109.37855209340*t);
      venus_k_0+=     0.00000038666 * cos( 1.48472668866 +    14143.49524243060*t);
      venus_k_0+=     0.00000037215 * cos( 5.99977026231 +    18073.70493865020*t);
      venus_k_0+=     0.00000033841 * cos( 1.14241120479 +    22003.91463486980*t);
      venus_k_0+=     0.00000034106 * cos( 4.40887917912 +    26087.90314157420*t);
      venus_k_0+=     0.00000033162 * cos( 5.20758913022 +     7084.89678111520*t);
      venus_k_0+=     0.00000033948 * cos( 3.34493826080 +    25158.60171976540*t);
      venus_k_0+=     0.00000029010 * cos( 1.42967833786 +     9786.68735533500*t);
      venus_k_0+=     0.00000026613 * cos( 2.56546169719 +    25934.12433108940*t);
      venus_k_0+=     0.00000021427 * cos( 0.64717995626 +     4551.95349705880*t);
      venus_k_0+=     0.00000025351 * cos( 3.34159515809 +     3532.06069281140*t);
      venus_k_0+=     0.00000024090 * cos( 5.66291458177 +     9683.59458111640*t);
      venus_k_0+=     0.00000023511 * cos( 3.64552442373 +     8635.94200376320*t);
      venus_k_0+=     0.00000017535 * cos( 2.18573123121 +       26.29831979980*t);
      venus_k_0+=     0.00000017362 * cos( 5.17195907567 +        7.11354700080*t);
      venus_k_0+=     0.00000022244 * cos( 4.76757629437 +    29088.81141598500*t);
      venus_k_0+=     0.00000019838 * cos( 3.98755306502 +    29864.33402730900*t);
      venus_k_0+=     0.00000015025 * cos( 1.24027243238 +     8094.52168583260*t);
      venus_k_0+=     0.00000019088 * cos( 0.34895920059 +    11015.10647733480*t);
      venus_k_0+=     0.00000013735 * cos( 4.18270285949 +    18307.80723204360*t);
      venus_k_0+=     0.00000014765 * cos( 6.19014613291 +    33019.02111220460*t);
      venus_k_0+=     0.00000014424 * cos( 5.40918062853 +    33794.54372352860*t);
      venus_k_0+=     0.00000011085 * cos( 6.09454426911 +     3128.38876509580*t);
      venus_k_0+=     0.00000010984 * cos( 1.67262095220 +    29050.78374334920*t);
      venus_k_0+=     0.00000010492 * cos( 0.15460024711 +     3930.20969621960*t);
      venus_k_0+=     0.00000012699 * cos( 4.31546172048 +     5661.33204915220*t);
      venus_k_0+=     0.00000012247 * cos( 1.77310868552 +    14945.31617355440*t);
      venus_k_0+=     0.00000010352 * cos( 0.54734126226 +    37724.75341974820*t);

      return venus_k_0;
   }

   static double venus_k_1_(double t){
      double venus_k_1=0.0;
      venus_k_1+=     0.00031259019 * cos( 0.00000000000 +        0.00000000000*t);
      venus_k_1+=     0.00000029898 * cos( 5.20863208298 +      775.52261132400*t);
      venus_k_1+=     0.00000012622 * cos( 4.48811780661 +      191.44826611160*t);
      venus_k_1=venus_k_1 * t;

      return venus_k_1;
   }

   static double venus_k_2_(double t){
      double venus_k_2=0.0;
      venus_k_2+=     0.00000604065 * cos( 0.00000000000 +        0.00000000000*t);
      venus_k_2=venus_k_2 * t * t;

      return venus_k_2;
   }

   static double venus_k_3_(double t){
      double venus_k_3=0.0;
      venus_k_3+=     0.00000068351 * cos( 3.14159265359 +        0.00000000000*t);
      venus_k_3=venus_k_3 * t * t * t;

      return venus_k_3;
   }

   static double venus_k(double t){
      return venus_k_0_(t)+venus_k_1_(t)+venus_k_2_(t)+venus_k_3_(t);
   }

   static double venus_h_0_(double t){
      double venus_h_0=0.0;
      venus_h_0+=     0.00506684726 * cos( 0.00000000000 +        0.00000000000*t);
      venus_h_0+=     0.00002230653 * cos( 2.66432207509 +     1577.34354244780*t);
      venus_h_0+=     0.00001690127 * cos( 1.89924451370 +     2352.86615377180*t);
      venus_h_0+=     0.00000658268 * cos( 2.16160277823 +      529.69096509460*t);
      venus_h_0+=     0.00000647290 * cos( 3.54941668195 +     9153.90361602180*t);
      venus_h_0+=     0.00000532791 * cos( 4.08663302424 +     5507.55323866740*t);
      venus_h_0+=     0.00000330805 * cos( 5.49447777930 +      775.52261132400*t);
      venus_h_0+=     0.00000251069 * cos( 5.50886761484 +     9437.76293488700*t);
      venus_h_0+=     0.00000246156 * cos( 4.73968260977 +    10213.28554621100*t);
      venus_h_0+=     0.00000231842 * cos( 3.31650363256 +     6283.07584999140*t);
      venus_h_0+=     0.00000167068 * cos( 4.54956488358 +      191.44826611160*t);
      venus_h_0+=     0.00000118194 * cos( 3.18031514290 +     8624.21265092720*t);
      venus_h_0+=     0.00000140191 * cos( 0.64791358847 +    13367.97263110660*t);
      venus_h_0+=     0.00000095411 * cos( 3.15048678174 +     1059.38193018920*t);
      venus_h_0+=     0.00000084482 * cos( 2.07013182338 +    17298.18232732620*t);
      venus_h_0+=     0.00000079776 * cos( 5.35533604608 +     3154.68708489560*t);
      venus_h_0+=     0.00000065963 * cos( 0.47615248004 +    29580.47470844380*t);
      venus_h_0+=     0.00000053763 * cos( 6.12614564177 +    18837.49819713819*t);
      venus_h_0+=     0.00000053130 * cos( 3.49233255170 +    21228.39202354580*t);
      venus_h_0+=     0.00000051424 * cos( 0.63797499719 +     4705.73230754360*t);
      venus_h_0+=     0.00000041088 * cos( 0.07175812187 +      801.82093112380*t);
      venus_h_0+=     0.00000042748 * cos( 2.42876412133 +      213.29909543800*t);
      venus_h_0+=     0.00000030663 * cos( 0.22104408592 +     1109.37855209340*t);
      venus_h_0+=     0.00000040494 * cos( 4.47118790403 +    18073.70493865020*t);
      venus_h_0+=     0.00000036357 * cos( 5.89070663571 +    22003.91463486980*t);
      venus_h_0+=     0.00000034395 * cos( 6.13861945169 +    14143.49524243060*t);
      venus_h_0+=     0.00000034327 * cos( 4.91451370606 +    25158.60171976540*t);
      venus_h_0+=     0.00000033060 * cos( 0.49638853226 +     7084.89678111520*t);
      venus_h_0+=     0.00000033741 * cos( 2.82894189956 +    26087.90314157420*t);
      venus_h_0+=     0.00000028536 * cos( 1.02965432302 +    25934.12433108940*t);
      venus_h_0+=     0.00000028927 * cos( 3.00062923559 +     9786.68735533500*t);
      venus_h_0+=     0.00000021966 * cos( 5.37378658217 +     4551.95349705880*t);
      venus_h_0+=     0.00000025595 * cos( 4.90001897763 +     3532.06069281140*t);
      venus_h_0+=     0.00000018014 * cos( 3.62970520600 +        7.11354700080*t);
      venus_h_0+=     0.00000023138 * cos( 2.06777595164 +     8635.94200376320*t);
      venus_h_0+=     0.00000017461 * cos( 3.75838051362 +       26.29831979980*t);
      venus_h_0+=     0.00000022594 * cos( 0.05348916279 +    29088.81141598500*t);
      venus_h_0+=     0.00000021303 * cos( 2.45252148577 +    29864.33402730900*t);
      venus_h_0+=     0.00000015029 * cos( 2.81188716546 +     8094.52168583260*t);
      venus_h_0+=     0.00000019072 * cos( 1.92011980197 +    11015.10647733480*t);
      venus_h_0+=     0.00000013671 * cos( 5.75779565501 +    18307.80723204360*t);
      venus_h_0+=     0.00000015536 * cos( 3.87569180264 +    33794.54372352860*t);
      venus_h_0+=     0.00000015072 * cos( 1.47562942588 +    33019.02111220460*t);
      venus_h_0+=     0.00000012170 * cos( 0.09711968312 +    29050.78374334920*t);
      venus_h_0+=     0.00000012426 * cos( 4.38294065678 +     3930.20969621960*t);
      venus_h_0+=     0.00000011004 * cos( 4.52091505393 +     3128.38876509580*t);
      venus_h_0+=     0.00000012264 * cos( 3.34351763542 +    14945.31617355440*t);
      venus_h_0+=     0.00000011425 * cos( 5.94171322480 +     5661.33204915220*t);
      venus_h_0+=     0.00000011192 * cos( 5.29900508720 +    37724.75341974820*t);
      venus_h_0+=     0.00000010157 * cos( 2.89774951235 +    36949.23080842420*t);

      return venus_h_0;
   }

   static double venus_h_1_(double t){
      double venus_h_1=0.0;
      venus_h_1+=     0.00036121239 * cos( 3.14159265359 +        0.00000000000*t);
      venus_h_1+=     0.00000030055 * cos( 3.64543939483 +      775.52261132400*t);
      venus_h_1+=     0.00000012811 * cos( 6.04301367201 +      191.44826611160*t);
      venus_h_1=venus_h_1 * t;

      return venus_h_1;
   }

   static double venus_h_2_(double t){
      double venus_h_2=0.0;
      venus_h_2+=     0.00001846764 * cos( 0.00000000000 +        0.00000000000*t);
      venus_h_2=venus_h_2 * t * t;

      return venus_h_2;
   }

   static double venus_h(double t){
      return venus_h_0_(t)+venus_h_1_(t)+venus_h_2_(t);
   }

   static double venus_q_0_(double t){
      double venus_q_0=0.0;
      venus_q_0+=     0.00682410142 * cos( 0.00000000000 +        0.00000000000*t);
      venus_q_0+=     0.00000068669 * cos( 4.17788909303 +      775.52261132400*t);
      venus_q_0+=     0.00000038043 * cos( 0.08593496588 +     1059.38193018920*t);
      venus_q_0+=     0.00000044545 * cos( 6.12600806765 +     3930.20969621960*t);
      venus_q_0+=     0.00000021496 * cos( 1.22761890656 +     7860.41939243920*t);
      venus_q_0+=     0.00000014465 * cos( 5.60075627982 +     4705.73230754360*t);
      venus_q_0+=     0.00000013011 * cos( 0.38630079245 +     3154.68708489560*t);
      venus_q_0+=     0.00000011643 * cos( 2.64431101384 +    11790.62908865880*t);

      return venus_q_0;
   }

   static double venus_q_1_(double t){
      double venus_q_1=0.0;
      venus_q_1+=     0.00138133826 * cos( 0.00000000000 +        0.00000000000*t);
      venus_q_1=venus_q_1 * t;

      return venus_q_1;
   }

   static double venus_q_2_(double t){
      double venus_q_2=0.0;
      venus_q_2+=     0.00001090942 * cos( 3.14159265359 +        0.00000000000*t);
      venus_q_2=venus_q_2 * t * t;

      return venus_q_2;
   }

   static double venus_q_3_(double t){
      double venus_q_3=0.0;
      venus_q_3+=     0.00000186418 * cos( 3.14159265359 +        0.00000000000*t);
      venus_q_3=venus_q_3 * t * t * t;

      return venus_q_3;
   }

   static double venus_q(double t){
      return venus_q_0_(t)+venus_q_1_(t)+venus_q_2_(t)+venus_q_3_(t);
   }

   static double venus_p_0_(double t){
      double venus_p_0=0.0;
      venus_p_0+=     0.02882285775 * cos( 0.00000000000 +        0.00000000000*t);
      venus_p_0+=     0.00000071320 * cos( 2.62014485879 +      775.52261132400*t);
      venus_p_0+=     0.00000037630 * cos( 4.80305842460 +     1059.38193018920*t);
      venus_p_0+=     0.00000014903 * cos( 4.04145540100 +     4705.73230754360*t);
      venus_p_0+=     0.00000013643 * cos( 1.94257328896 +     3154.68708489560*t);
      venus_p_0+=     0.00000010686 * cos( 3.15891420935 +     3930.20969621960*t);
      venus_p_0+=     0.00000010092 * cos( 5.46307674880 +     8635.94200376320*t);

      return venus_p_0;
   }

   static double venus_p_1_(double t){
      double venus_p_1=0.0;
      venus_p_1+=     0.00040384791 * cos( 3.14159265359 +        0.00000000000*t);
      venus_p_1=venus_p_1 * t;

      return venus_p_1;
   }

   static double venus_p_2_(double t){
      double venus_p_2=0.0;
      venus_p_2+=     0.00006232891 * cos( 3.14159265359 +        0.00000000000*t);
      venus_p_2=venus_p_2 * t * t;

      return venus_p_2;
   }

   static double venus_p_3_(double t){
      double venus_p_3=0.0;
      venus_p_3+=     0.00000024731 * cos( 0.00000000000 +        0.00000000000*t);
      venus_p_3=venus_p_3 * t * t * t;

      return venus_p_3;
   }

   static double venus_p(double t){
      return venus_p_0_(t)+venus_p_1_(t)+venus_p_2_(t)+venus_p_3_(t);
   }

}