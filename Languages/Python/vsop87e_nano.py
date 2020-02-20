import math

#VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
#Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain


class vsop87e_nano :
   @staticmethod
   def getEarth(t):
      temp=[]
      temp.append(vsop87e_nano.earth_x(t))
      temp.append(vsop87e_nano.earth_y(t))
      temp.append(vsop87e_nano.earth_z(t))
      return temp
   

   @staticmethod
   def getJupiter(t):
      temp=[]
      temp.append(vsop87e_nano.jupiter_x(t))
      temp.append(vsop87e_nano.jupiter_y(t))
      temp.append(vsop87e_nano.jupiter_z(t))
      return temp
   

   @staticmethod
   def getMars(t):
      temp=[]
      temp.append(vsop87e_nano.mars_x(t))
      temp.append(vsop87e_nano.mars_y(t))
      temp.append(vsop87e_nano.mars_z(t))
      return temp
   

   @staticmethod
   def getMercury(t):
      temp=[]
      temp.append(vsop87e_nano.mercury_x(t))
      temp.append(vsop87e_nano.mercury_y(t))
      temp.append(vsop87e_nano.mercury_z(t))
      return temp
   

   @staticmethod
   def getNeptune(t):
      temp=[]
      temp.append(vsop87e_nano.neptune_x(t))
      temp.append(vsop87e_nano.neptune_y(t))
      temp.append(vsop87e_nano.neptune_z(t))
      return temp
   

   @staticmethod
   def getSaturn(t):
      temp=[]
      temp.append(vsop87e_nano.saturn_x(t))
      temp.append(vsop87e_nano.saturn_y(t))
      temp.append(vsop87e_nano.saturn_z(t))
      return temp
   

   @staticmethod
   def getUranus(t):
      temp=[]
      temp.append(vsop87e_nano.uranus_x(t))
      temp.append(vsop87e_nano.uranus_y(t))
      temp.append(vsop87e_nano.uranus_z(t))
      return temp
   

   @staticmethod
   def getVenus(t):
      temp=[]
      temp.append(vsop87e_nano.venus_x(t))
      temp.append(vsop87e_nano.venus_y(t))
      temp.append(vsop87e_nano.venus_z(t))
      return temp
   

   @staticmethod
   def getSun(t):
      temp=[]
      temp.append(vsop87e_nano.sun_x(t))
      temp.append(vsop87e_nano.sun_y(t))
      temp.append(vsop87e_nano.sun_z(t))
      return temp
   

   @staticmethod
   def earth_x(t):
      earth_x_0=0.0
      earth_x_0+=     0.99982624851 * math.cos( 1.75348568475 +     6283.07584999140*t)
      earth_x_0+=     0.00835254761 * math.cos( 1.71034539458 +    12566.15169998280*t)
      earth_x_0+=     0.00590518455 * math.cos( 0.00000000000 +        0.00000000000*t)
      earth_x_0+=     0.00493120585 * math.cos( 3.74115834452 +      529.69096509460*t)
      earth_x_0+=     0.00271650686 * math.cos( 4.01601440281 +      213.29909543800*t)
      earth_x_0+=     0.00155434220 * math.cos( 2.17052065758 +       38.13303563780*t)

      earth_x_1=0.0
      earth_x_1+=     0.00122106982 * math.cos( 0.00000000000 +        0.00000000000*t)
      earth_x_1=earth_x_1 * t

      return earth_x_0+earth_x_1
   

   @staticmethod
   def earth_y(t):
      earth_y_0=0.0
      earth_y_0+=     0.99988907017 * math.cos( 0.18265890456 +     6283.07584999140*t)
      earth_y_0+=     0.02408829501 * math.cos( 3.14159265359 +        0.00000000000*t)
      earth_y_0+=     0.00835289774 * math.cos( 0.13952879005 +    12566.15169998280*t)
      earth_y_0+=     0.00492966037 * math.cos( 2.17052458400 +      529.69096509460*t)
      earth_y_0+=     0.00272033033 * math.cos( 2.44443635549 +      213.29909543800*t)
      earth_y_0+=     0.00155442849 * math.cos( 0.59927021065 +       38.13303563780*t)

      return earth_y_0
   

   @staticmethod
   def earth_z(t):
      earth_z_1=0.0
      earth_z_1+=     0.00227821750 * math.cos( 3.41372504278 +     6283.07584999140*t)
      earth_z_1=earth_z_1 * t

      return earth_z_1
   

   @staticmethod
   def jupiter_x(t):
      jupiter_x_0=0.0
      jupiter_x_0+=     5.19167797375 * math.cos( 0.59945079482 +      529.69096509460*t)
      jupiter_x_0+=     0.36633268070 * math.cos( 3.14159265359 +        0.00000000000*t)
      jupiter_x_0+=     0.12581924842 * math.cos( 0.94911581432 +     1059.38193018920*t)
      jupiter_x_0+=     0.01499237862 * math.cos( 0.73175554601 +      522.57741809380*t)
      jupiter_x_0+=     0.01474818211 * math.cos( 3.61736901402 +      536.80451209540*t)
      jupiter_x_0+=     0.00457316096 * math.cos( 1.29883699143 +     1589.07289528380*t)
      jupiter_x_0+=     0.00302068886 * math.cos( 5.17370377723 +        7.11354700080*t)
      jupiter_x_0+=     0.00385749947 * math.cos( 2.01222596811 +      103.09277421860*t)
      jupiter_x_0+=     0.00192562451 * math.cos( 4.98733787115 +      426.59819087600*t)
      jupiter_x_0+=     0.00150783740 * math.cos( 6.11831671330 +      110.20632121940*t)
      jupiter_x_0+=     0.00144750651 * math.cos( 5.55980048541 +      632.78373931320*t)
      jupiter_x_0+=     0.00154896097 * math.cos( 2.17051189575 +       38.13303563780*t)
      jupiter_x_0+=     0.00137575946 * math.cos( 4.01399498370 +      213.29909543800*t)
      jupiter_x_0+=     0.00103396684 * math.cos( 6.19327175097 +     1052.26838318840*t)
      jupiter_x_0+=     0.00114092461 * math.cos( 0.01567031739 +     1162.47470440780*t)

      jupiter_x_1=0.0
      jupiter_x_1+=     0.00883685325 * math.cos( 3.14159265359 +        0.00000000000*t)
      jupiter_x_1+=     0.00634691138 * math.cos( 0.10662162351 +     1059.38193018920*t)
      jupiter_x_1+=     0.00599147916 * math.cos( 2.42996832550 +      522.57741809380*t)
      jupiter_x_1+=     0.00588595541 * math.cos( 1.91556289228 +      536.80451209540*t)
      jupiter_x_1=jupiter_x_1 * t

      jupiter_x_2=0.0
      jupiter_x_2+=     0.00123746423 * math.cos( 4.13563340107 +      522.57741809380*t)
      jupiter_x_2+=     0.00121405454 * math.cos( 0.21155087534 +      536.80451209540*t)
      jupiter_x_2=jupiter_x_2 * t * t

      return jupiter_x_0+jupiter_x_1+jupiter_x_2
   

   @staticmethod
   def jupiter_y(t):
      jupiter_y_0=0.0
      jupiter_y_0+=     5.19024510371 * math.cos( 5.31203160043 +      529.69096509460*t)
      jupiter_y_0+=     0.12580850775 * math.cos( 5.66160225641 +     1059.38193018920*t)
      jupiter_y_0+=     0.09329801081 * math.cos( 3.14159265359 +        0.00000000000*t)
      jupiter_y_0+=     0.01506838468 * math.cos( 5.43934599781 +      522.57741809380*t)
      jupiter_y_0+=     0.01474403395 * math.cos( 2.04679547637 +      536.80451209540*t)
      jupiter_y_0+=     0.00457314174 * math.cos( 6.01129093508 +     1589.07289528380*t)
      jupiter_y_0+=     0.00301069256 * math.cos( 3.60943303554 +        7.11354700080*t)
      jupiter_y_0+=     0.00378016915 * math.cos( 3.53013675622 +      103.09277421860*t)
      jupiter_y_0+=     0.00190850034 * math.cos( 3.41807324121 +      426.59819087600*t)
      jupiter_y_0+=     0.00146192922 * math.cos( 4.62080103783 +      110.20632121940*t)
      jupiter_y_0+=     0.00139367298 * math.cos( 4.00075739657 +      632.78373931320*t)
      jupiter_y_0+=     0.00154904248 * math.cos( 0.59924790507 +       38.13303563780*t)
      jupiter_y_0+=     0.00139655050 * math.cos( 2.41039954154 +      213.29909543800*t)
      jupiter_y_0+=     0.00101901831 * math.cos( 4.57592165280 +     1052.26838318840*t)
      jupiter_y_0+=     0.00113934096 * math.cos( 4.72982346991 +     1162.47470440780*t)

      jupiter_y_1=0.0
      jupiter_y_1+=     0.01694792137 * math.cos( 3.14159265359 +        0.00000000000*t)
      jupiter_y_1+=     0.00634254247 * math.cos( 4.81903195356 +     1059.38193018920*t)
      jupiter_y_1+=     0.00600587150 * math.cos( 0.85811137383 +      522.57741809380*t)
      jupiter_y_1+=     0.00588367200 * math.cos( 0.34491553018 +      536.80451209540*t)
      jupiter_y_1=jupiter_y_1 * t

      jupiter_y_2=0.0
      jupiter_y_2+=     0.00123914193 * math.cos( 2.56495551373 +      522.57741809380*t)
      jupiter_y_2+=     0.00121340211 * math.cos( 4.92398747363 +      536.80451209540*t)
      jupiter_y_2=jupiter_y_2 * t * t

      return jupiter_y_0+jupiter_y_1+jupiter_y_2
   

   @staticmethod
   def jupiter_z(t):
      jupiter_z_0=0.0
      jupiter_z_0+=     0.11811822789 * math.cos( 3.55844641987 +      529.69096509460*t)
      jupiter_z_0+=     0.00857879296 * math.cos( 0.00000000000 +        0.00000000000*t)
      jupiter_z_0+=     0.00286288759 * math.cos( 3.90812239092 +     1059.38193018920*t)

      jupiter_z_1=0.0
      jupiter_z_1+=     0.00406683941 * math.cos( 1.52699356726 +      529.69096509460*t)
      jupiter_z_1=jupiter_z_1 * t

      return jupiter_z_0+jupiter_z_1
   

   @staticmethod
   def mars_x(t):
      mars_x_0=0.0
      mars_x_0+=     1.51769887405 * math.cos( 6.20403346548 +     3340.61242669980*t)
      mars_x_0+=     0.19473570996 * math.cos( 3.14159265359 +        0.00000000000*t)
      mars_x_0+=     0.07070917372 * math.cos( 0.25870338552 +     6681.22485339960*t)
      mars_x_0+=     0.00494196754 * math.cos( 0.59669127752 +    10021.83728009940*t)
      mars_x_0+=     0.00482151285 * math.cos( 3.74021439144 +      529.69096509460*t)
      mars_x_0+=     0.00271094292 * math.cos( 4.01586959956 +      213.29909543800*t)
      mars_x_0+=     0.00155429009 * math.cos( 2.17051900894 +       38.13303563780*t)

      mars_x_1=0.0
      mars_x_1+=     0.00862737448 * math.cos( 3.14159265359 +        0.00000000000*t)
      mars_x_1+=     0.00552437771 * math.cos( 5.09565872891 +     6681.22485339960*t)
      mars_x_1=mars_x_1 * t

      return mars_x_0+mars_x_1
   

   @staticmethod
   def mars_y(t):
      mars_y_0=0.0
      mars_y_0+=     1.51558927367 * math.cos( 4.63212206588 +     3340.61242669980*t)
      mars_y_0+=     0.07064547959 * math.cos( 4.97051892898 +     6681.22485339960*t)
      mars_y_0+=     0.08689350637 * math.cos( 0.00000000000 +        0.00000000000*t)
      mars_y_0+=     0.00493872689 * math.cos( 5.30877806678 +    10021.83728009940*t)
      mars_y_0+=     0.00482218424 * math.cos( 2.16962356915 +      529.69096509460*t)
      mars_y_0+=     0.00271492455 * math.cos( 2.44409624683 +      213.29909543800*t)
      mars_y_0+=     0.00155437832 * math.cos( 0.59926749768 +       38.13303563780*t)

      mars_y_1=0.0
      mars_y_1+=     0.01427318093 * math.cos( 3.14159265359 +        0.00000000000*t)
      mars_y_1+=     0.00551063576 * math.cos( 3.52128320402 +     6681.22485339960*t)
      mars_y_1=mars_y_1 * t

      return mars_y_0+mars_y_1
   

   @staticmethod
   def mars_z(t):
      mars_z_0=0.0
      mars_z_0+=     0.04901205639 * math.cos( 3.76712324293 +     3340.61242669980*t)
      mars_z_0+=     0.00659516885 * math.cos( 0.00000000000 +        0.00000000000*t)
      mars_z_0+=     0.00228333831 * math.cos( 4.10544022266 +     6681.22485339960*t)

      mars_z_1=0.0
      mars_z_1+=     0.00331842851 * math.cos( 6.05027773492 +     3340.61242669980*t)
      mars_z_1=mars_z_1 * t

      return mars_z_0+mars_z_1
   

   @staticmethod
   def mercury_x(t):
      mercury_x_0=0.0
      mercury_x_0+=     0.37546285495 * math.cos( 4.39651506942 +    26087.90314157420*t)
      mercury_x_0+=     0.03825746037 * math.cos( 1.16485604343 +    52175.80628314840*t)
      mercury_x_0+=     0.02596241714 * math.cos( 3.14159265359 +        0.00000000000*t)
      mercury_x_0+=     0.00584261236 * math.cos( 4.21599394757 +    78263.70942472259*t)
      mercury_x_0+=     0.00495586029 * math.cos( 3.74115422358 +      529.69096509460*t)
      mercury_x_0+=     0.00271797490 * math.cos( 4.01600769847 +      213.29909543800*t)
      mercury_x_0+=     0.00155435621 * math.cos( 2.17052060921 +       38.13303563780*t)
      mercury_x_0+=     0.00105716677 * math.cos( 0.98379033182 +   104351.61256629678*t)

      mercury_x_1=0.0
      mercury_x_1+=     0.00317551960 * math.cos( 0.00000000000 +        0.00000000000*t)
      mercury_x_1+=     0.00105289001 * math.cos( 5.91600475006 +    52175.80628314840*t)
      mercury_x_1=mercury_x_1 * t

      return mercury_x_0+mercury_x_1
   

   @staticmethod
   def mercury_y(t):
      mercury_y_0=0.0
      mercury_y_0+=     0.37953636588 * math.cos( 2.83780617821 +    26087.90314157420*t)
      mercury_y_0+=     0.11592262295 * math.cos( 3.14159265359 +        0.00000000000*t)
      mercury_y_0+=     0.03854667576 * math.cos( 5.88780608961 +    52175.80628314840*t)
      mercury_y_0+=     0.00587711171 * math.cos( 2.65498896201 +    78263.70942472259*t)
      mercury_y_0+=     0.00495452148 * math.cos( 2.17050902176 +      529.69096509460*t)
      mercury_y_0+=     0.00272177927 * math.cos( 2.44442843667 +      213.29909543800*t)
      mercury_y_0+=     0.00155444251 * math.cos( 0.59927014783 +       38.13303563780*t)
      mercury_y_0+=     0.00106235475 * math.cos( 5.70550616735 +   104351.61256629678*t)

      mercury_y_1=0.0
      mercury_y_1+=     0.00107803834 * math.cos( 4.34964793883 +    52175.80628314840*t)
      mercury_y_1=mercury_y_1 * t

      return mercury_y_0+mercury_y_1
   

   @staticmethod
   def mercury_z(t):
      mercury_z_0=0.0
      mercury_z_0+=     0.04607664562 * math.cos( 1.99295081967 +    26087.90314157420*t)
      mercury_z_0+=     0.00709887021 * math.cos( 3.14159265359 +        0.00000000000*t)
      mercury_z_0+=     0.00469171540 * math.cos( 5.04215742764 +    52175.80628314840*t)

      mercury_z_1=0.0
      mercury_z_1+=     0.00108722159 * math.cos( 3.91134750825 +    26087.90314157420*t)
      mercury_z_1=mercury_z_1 * t

      return mercury_z_0+mercury_z_1
   

   @staticmethod
   def neptune_x(t):
      neptune_x_0=0.0
      neptune_x_0+=    30.05734568801 * math.cos( 5.31211340030 +       38.13303563780*t)
      neptune_x_0+=     0.27050789973 * math.cos( 3.14159265359 +        0.00000000000*t)
      neptune_x_0+=     0.13504578270 * math.cos( 3.50075407055 +       76.26607127560*t)
      neptune_x_0+=     0.15725280871 * math.cos( 0.11319072402 +       36.64856292950*t)
      neptune_x_0+=     0.14934353052 * math.cos( 1.08499398649 +       39.61750834610*t)
      neptune_x_0+=     0.02597449604 * math.cos( 1.99590330725 +        1.48447270830*t)
      neptune_x_0+=     0.00990668211 * math.cos( 5.37690139386 +       74.78159856730*t)
      neptune_x_0+=     0.00823755467 * math.cos( 1.43221512492 +       35.16409022120*t)
      neptune_x_0+=     0.00817566529 * math.cos( 0.78180136001 +        2.96894541660*t)
      neptune_x_0+=     0.00565506338 * math.cos( 5.98964911841 +       41.10198105440*t)
      neptune_x_0+=     0.00308146172 * math.cos( 0.39998862713 +       73.29712585900*t)
      neptune_x_0+=     0.00135901755 * math.cos( 5.54688721933 +       77.75054398390*t)

      neptune_x_1=0.0
      neptune_x_1+=     0.00255827017 * math.cos( 2.01935687782 +       36.64856292950*t)
      neptune_x_1+=     0.00243112812 * math.cos( 5.46214905602 +       39.61750834610*t)
      neptune_x_1+=     0.00118382753 * math.cos( 2.88255085978 +       76.26607127560*t)
      neptune_x_1=neptune_x_1 * t

      return neptune_x_0+neptune_x_1
   

   @staticmethod
   def neptune_y(t):
      neptune_y_0=0.0
      neptune_y_0+=    30.05900907352 * math.cos( 3.74086294715 +       38.13303563780*t)
      neptune_y_0+=     0.30171988148 * math.cos( 3.14159265359 +        0.00000000000*t)
      neptune_y_0+=     0.13505308635 * math.cos( 1.92949466968 +       76.26607127560*t)
      neptune_y_0+=     0.15705776296 * math.cos( 4.82539969469 +       36.64856292950*t)
      neptune_y_0+=     0.14935398681 * math.cos( 5.79694896309 +       39.61750834610*t)
      neptune_y_0+=     0.02584389323 * math.cos( 0.42549727257 +        1.48447270830*t)
      neptune_y_0+=     0.00990408083 * math.cos( 3.80555424385 +       74.78159856730*t)
      neptune_y_0+=     0.00815165481 * math.cos( 5.49429738442 +        2.96894541660*t)
      neptune_y_0+=     0.00582164520 * math.cos( 6.19633859980 +       35.16409022120*t)
      neptune_y_0+=     0.00565547830 * math.cos( 4.41843013268 +       41.10198105440*t)
      neptune_y_0+=     0.00305149662 * math.cos( 5.11023952334 +       73.29712585900*t)
      neptune_y_0+=     0.00135911904 * math.cos( 3.97565894083 +       77.75054398390*t)

      neptune_y_1=0.0
      neptune_y_1+=     0.00352941377 * math.cos( 3.14159265359 +        0.00000000000*t)
      neptune_y_1+=     0.00256112241 * math.cos( 0.44757496381 +       36.64856292950*t)
      neptune_y_1+=     0.00243135236 * math.cos( 3.89099801420 +       39.61750834610*t)
      neptune_y_1+=     0.00118411800 * math.cos( 1.31131262408 +       76.26607127560*t)
      neptune_y_1=neptune_y_1 * t

      return neptune_y_0+neptune_y_1
   

   @staticmethod
   def neptune_z(t):
      neptune_z_0=0.0
      neptune_z_0+=     0.92861252357 * math.cos( 1.44103930199 +       38.13303563780*t)
      neptune_z_0+=     0.01244825806 * math.cos( 0.00000000000 +        0.00000000000*t)
      neptune_z_0+=     0.00474309033 * math.cos( 2.52218768352 +       36.64856292950*t)
      neptune_z_0+=     0.00451964646 * math.cos( 3.50949727943 +       39.61750834610*t)
      neptune_z_0+=     0.00417539868 * math.cos( 5.91308871390 +       76.26607127560*t)

      neptune_z_1=0.0
      neptune_z_1+=     0.00154877961 * math.cos( 2.14239038882 +       38.13303563780*t)
      neptune_z_1=neptune_z_1 * t

      return neptune_z_0+neptune_z_1
   

   @staticmethod
   def saturn_x(t):
      saturn_x_0=0.0
      saturn_x_0+=     9.51366533422 * math.cos( 0.87441380650 +      213.29909543800*t)
      saturn_x_0+=     0.26404799161 * math.cos( 0.12391580771 +      426.59819087600*t)
      saturn_x_0+=     0.06758489145 * math.cos( 4.16767544586 +      206.18554843720*t)
      saturn_x_0+=     0.06622371284 * math.cos( 0.75094738122 +      220.41264243880*t)
      saturn_x_0+=     0.04274172066 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_x_0+=     0.02335961354 * math.cos( 2.02227905783 +        7.11354700080*t)
      saturn_x_0+=     0.01255113414 * math.cos( 2.17347170552 +      110.20632121940*t)
      saturn_x_0+=     0.01115372225 * math.cos( 3.15690865182 +      419.48464387520*t)
      saturn_x_0+=     0.01097374519 * math.cos( 5.65753938643 +      639.89728631400*t)
      saturn_x_0+=     0.00716112591 * math.cos( 2.71151505735 +      316.39186965660*t)
      saturn_x_0+=     0.00509529043 * math.cos( 4.95879639669 +      103.09277421860*t)
      saturn_x_0+=     0.00372789068 * math.cos( 0.00137750888 +      433.71173787680*t)
      saturn_x_0+=     0.00149659945 * math.cos( 2.17071100189 +       38.13303563780*t)

      saturn_x_1=0.0
      saturn_x_1+=     0.07573807889 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_x_1+=     0.03084144308 * math.cos( 4.27565898829 +      426.59819087600*t)
      saturn_x_1+=     0.02714141496 * math.cos( 5.85229546861 +      206.18554843720*t)
      saturn_x_1+=     0.02642347272 * math.cos( 5.33291950842 +      220.41264243880*t)
      saturn_x_1+=     0.00627003445 * math.cos( 0.32898258729 +        7.11354700080*t)
      saturn_x_1+=     0.00256488381 * math.cos( 3.52479443238 +      639.89728631400*t)
      saturn_x_1+=     0.00312269012 * math.cos( 4.83002443322 +      419.48464387520*t)
      saturn_x_1+=     0.00189142591 * math.cos( 4.48642939502 +      433.71173787680*t)
      saturn_x_1+=     0.00203589147 * math.cos( 1.10998720016 +      213.29909543800*t)
      saturn_x_1+=     0.00119517217 * math.cos( 1.14736396934 +      110.20632121940*t)
      saturn_x_1=saturn_x_1 * t

      saturn_x_2=0.0
      saturn_x_2+=     0.00560586041 * math.cos( 1.26401676555 +      206.18554843720*t)
      saturn_x_2+=     0.00545678885 * math.cos( 3.62343709789 +      220.41264243880*t)
      saturn_x_2+=     0.00443297401 * math.cos( 3.14159265359 +        0.00000000000*t)
      saturn_x_2+=     0.00336013651 * math.cos( 2.42547432210 +      213.29909543800*t)
      saturn_x_2+=     0.00224237163 * math.cos( 2.49151267683 +      426.59819087600*t)
      saturn_x_2=saturn_x_2 * t * t

      return saturn_x_0+saturn_x_1+saturn_x_2
   

   @staticmethod
   def saturn_y(t):
      saturn_y_0=0.0
      saturn_y_0+=     9.52714696877 * math.cos( 5.58600556072 +      213.29909543800*t)
      saturn_y_0+=     0.79354119271 * math.cos( 3.14159265359 +        0.00000000000*t)
      saturn_y_0+=     0.26434197609 * math.cos( 4.83528742856 +      426.59819087600*t)
      saturn_y_0+=     0.06914690347 * math.cos( 2.55279029588 +      206.18554843720*t)
      saturn_y_0+=     0.06631679200 * math.cos( 5.46258849076 +      220.41264243880*t)
      saturn_y_0+=     0.02345226948 * math.cos( 0.44652393276 +        7.11354700080*t)
      saturn_y_0+=     0.01183557497 * math.cos( 1.34637027573 +      419.48464387520*t)
      saturn_y_0+=     0.01245523800 * math.cos( 0.60375781288 +      110.20632121940*t)
      saturn_y_0+=     0.01098442011 * math.cos( 4.08609387384 +      639.89728631400*t)
      saturn_y_0+=     0.00700636234 * math.cos( 1.13613024684 +      316.39186965660*t)
      saturn_y_0+=     0.00373221824 * math.cos( 4.71309283502 +      433.71173787680*t)
      saturn_y_0+=     0.00335413797 * math.cos( 0.66392970394 +      103.09277421860*t)
      saturn_y_0+=     0.00149675444 * math.cos( 0.59938943096 +       38.13303563780*t)

      saturn_y_1=0.0
      saturn_y_1+=     0.05373895252 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_y_1+=     0.03089676414 * math.cos( 2.70347020059 +      426.59819087600*t)
      saturn_y_1+=     0.02740812928 * math.cos( 4.26667506460 +      206.18554843720*t)
      saturn_y_1+=     0.02646734779 * math.cos( 3.76132299914 +      220.41264243880*t)
      saturn_y_1+=     0.00631417689 * math.cos( 5.03245728319 +        7.11354700080*t)
      saturn_y_1+=     0.00256727017 * math.cos( 1.95352327208 +      639.89728631400*t)
      saturn_y_1+=     0.00312184641 * math.cos( 3.25850939353 +      419.48464387520*t)
      saturn_y_1+=     0.00189379568 * math.cos( 2.91502328680 +      433.71173787680*t)
      saturn_y_1+=     0.00164086267 * math.cos( 5.29239224879 +      213.29909543800*t)
      saturn_y_1+=     0.00116775818 * math.cos( 5.89150757121 +      110.20632121940*t)
      saturn_y_1=saturn_y_1 * t

      saturn_y_2=0.0
      saturn_y_2+=     0.00563545688 * math.cos( 5.97115835983 +      206.18554843720*t)
      saturn_y_2+=     0.00546856143 * math.cos( 2.05154974712 +      220.41264243880*t)
      saturn_y_2+=     0.00458462799 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_y_2+=     0.00362190876 * math.cos( 0.89540102818 +      213.29909543800*t)
      saturn_y_2+=     0.00225456249 * math.cos( 0.91699830789 +      426.59819087600*t)
      saturn_y_2=saturn_y_2 * t * t

      return saturn_y_0+saturn_y_1+saturn_y_2
   

   @staticmethod
   def saturn_z(t):
      saturn_z_0=0.0
      saturn_z_0+=     0.41345140292 * math.cos( 3.60234141893 +      213.29909543800*t)
      saturn_z_0+=     0.01147953788 * math.cos( 2.85128771957 +      426.59819087600*t)
      saturn_z_0+=     0.01213097211 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_z_0+=     0.00329186544 * math.cos( 0.57121482436 +      206.18554843720*t)
      saturn_z_0+=     0.00286852189 * math.cos( 3.48073528206 +      220.41264243880*t)

      saturn_z_1=0.0
      saturn_z_1+=     0.01905958940 * math.cos( 4.94544746619 +      213.29909543800*t)
      saturn_z_1+=     0.00528167867 * math.cos( 3.14159265359 +        0.00000000000*t)
      saturn_z_1+=     0.00130224990 * math.cos( 2.26141028606 +      206.18554843720*t)
      saturn_z_1+=     0.00101437388 * math.cos( 1.79095832223 +      220.41264243880*t)
      saturn_z_1=saturn_z_1 * t

      saturn_z_2=0.0
      saturn_z_2+=     0.00131237677 * math.cos( 0.08868998014 +      213.29909543800*t)
      saturn_z_2=saturn_z_2 * t * t

      return saturn_z_0+saturn_z_1+saturn_z_2
   

   @staticmethod
   def sun_x(t):
      sun_x_0=0.0
      sun_x_0+=     0.00495672739 * math.cos( 3.74107356792 +      529.69096509460*t)
      sun_x_0+=     0.00271802376 * math.cos( 4.01601149775 +      213.29909543800*t)
      sun_x_0+=     0.00155435675 * math.cos( 2.17052050061 +       38.13303563780*t)

      return sun_x_0
   

   @staticmethod
   def sun_y(t):
      sun_y_0=0.0
      sun_y_0+=     0.00495536218 * math.cos( 2.17046712634 +      529.69096509460*t)
      sun_y_0+=     0.00272185821 * math.cos( 2.44443364925 +      213.29909543800*t)
      sun_y_0+=     0.00155444313 * math.cos( 0.59927010840 +       38.13303563780*t)

      return sun_y_0
   

   @staticmethod
   def sun_z(t):
      return 0
   

   @staticmethod
   def uranus_x(t):
      uranus_x_0=0.0
      uranus_x_0+=    19.17286937362 * math.cos( 5.48133416758 +       74.78159856730*t)
      uranus_x_0+=     1.32301898121 * math.cos( 0.00000000000 +        0.00000000000*t)
      uranus_x_0+=     0.44400556159 * math.cos( 1.65967535182 +      149.56319713460*t)
      uranus_x_0+=     0.14667584671 * math.cos( 3.42395875589 +       73.29712585900*t)
      uranus_x_0+=     0.14129215712 * math.cos( 4.39576776954 +       76.26607127560*t)
      uranus_x_0+=     0.06200970387 * math.cos( 5.14043568284 +        1.48447270830*t)
      uranus_x_0+=     0.01542890129 * math.cos( 4.12122840701 +      224.34479570190*t)
      uranus_x_0+=     0.01444153470 * math.cos( 2.65117108186 +      148.07872442630*t)
      uranus_x_0+=     0.00944969862 * math.cos( 1.65871112189 +       11.04570026390*t)
      uranus_x_0+=     0.00657496073 * math.cos( 0.57595186181 +      151.04766984290*t)
      uranus_x_0+=     0.00621603101 * math.cos( 3.05881560775 +       77.75054398390*t)
      uranus_x_0+=     0.00585159800 * math.cos( 4.79934731599 +       71.81265315070*t)
      uranus_x_0+=     0.00633971831 * math.cos( 4.09554584740 +       63.73589830340*t)
      uranus_x_0+=     0.00547675794 * math.cos( 3.63127816021 +       85.82729883120*t)
      uranus_x_0+=     0.00458242260 * math.cos( 3.90788427382 +        2.96894541660*t)
      uranus_x_0+=     0.00383608186 * math.cos( 6.18762167352 +      138.51749687070*t)
      uranus_x_0+=     0.00145499145 * math.cos( 2.31759819136 +       70.84944530420*t)
      uranus_x_0+=     0.00135334157 * math.cos( 5.51062460646 +       78.71375183040*t)
      uranus_x_0+=     0.00120354886 * math.cos( 4.10218670070 +       39.61750834610*t)
      uranus_x_0+=     0.00125099578 * math.cos( 2.51455157066 +      111.43016149680*t)
      uranus_x_0+=     0.00111255099 * math.cos( 5.12253353573 +      222.86032299360*t)
      uranus_x_0+=     0.00104615229 * math.cos( 3.90538915195 +      146.59425171800*t)
      uranus_x_0+=     0.00110162872 * math.cos( 4.45478121996 +       35.16409022120*t)

      uranus_x_1=0.0
      uranus_x_1+=     0.00739697937 * math.cos( 6.01067921255 +      149.56319713460*t)
      uranus_x_1+=     0.00528174379 * math.cos( 3.14159265359 +        0.00000000000*t)
      uranus_x_1+=     0.00239830578 * math.cos( 5.33657752107 +       73.29712585900*t)
      uranus_x_1+=     0.00229661096 * math.cos( 2.48203377424 +       76.26607127560*t)
      uranus_x_1+=     0.00111041831 * math.cos( 5.57157483973 +       11.04570026390*t)
      uranus_x_1=uranus_x_1 * t

      return uranus_x_0+uranus_x_1
   

   @staticmethod
   def uranus_y(t):
      uranus_y_0=0.0
      uranus_y_0+=    19.16434475791 * math.cos( 3.91045677275 +       74.78159856730*t)
      uranus_y_0+=     0.44388525091 * math.cos( 0.08884126943 +      149.56319713460*t)
      uranus_y_0+=     0.16222255941 * math.cos( 3.14159265359 +        0.00000000000*t)
      uranus_y_0+=     0.14755311401 * math.cos( 1.85423292905 +       73.29712585900*t)
      uranus_y_0+=     0.14122904825 * math.cos( 2.82489928705 +       76.26607127560*t)
      uranus_y_0+=     0.06249939655 * math.cos( 3.56960238469 +        1.48447270830*t)
      uranus_y_0+=     0.01542607086 * math.cos( 2.55041543170 +      224.34479570190*t)
      uranus_y_0+=     0.01442293466 * math.cos( 1.08004535633 +      148.07872442630*t)
      uranus_y_0+=     0.00938950136 * math.cos( 0.09277492739 +       11.04570026390*t)
      uranus_y_0+=     0.00650307020 * math.cos( 2.76144565363 +       63.73589830340*t)
      uranus_y_0+=     0.00657314387 * math.cos( 5.28830720039 +      151.04766984290*t)
      uranus_y_0+=     0.00621305207 * math.cos( 1.48795124826 +       77.75054398390*t)
      uranus_y_0+=     0.00541938502 * math.cos( 3.24476518729 +       71.81265315070*t)
      uranus_y_0+=     0.00547449443 * math.cos( 2.06038015757 +       85.82729883120*t)
      uranus_y_0+=     0.00459611215 * math.cos( 2.33745675699 +        2.96894541660*t)
      uranus_y_0+=     0.00387905368 * math.cos( 4.62027047251 +      138.51749687070*t)
      uranus_y_0+=     0.00144026146 * math.cos( 0.75015758735 +       70.84944530420*t)
      uranus_y_0+=     0.00135284941 * math.cos( 3.93970261854 +       78.71375183040*t)
      uranus_y_0+=     0.00120431731 * math.cos( 2.53138588744 +       39.61750834610*t)
      uranus_y_0+=     0.00124862444 * math.cos( 0.94315799565 +      111.43016149680*t)
      uranus_y_0+=     0.00111199717 * math.cos( 3.55163790142 +      222.86032299360*t)
      uranus_y_0+=     0.00104503352 * math.cos( 2.33345670641 +      146.59425171800*t)
      uranus_y_0+=     0.00108550063 * math.cos( 6.02230047678 +       35.16409022120*t)

      uranus_y_1=0.0
      uranus_y_1+=     0.02157902502 * math.cos( 0.00000000000 +        0.00000000000*t)
      uranus_y_1+=     0.00739195286 * math.cos( 4.43963987365 +      149.56319713460*t)
      uranus_y_1+=     0.00238535521 * math.cos( 3.76882481679 +       73.29712585900*t)
      uranus_y_1+=     0.00229380743 * math.cos( 0.91089104293 +       76.26607127560*t)
      uranus_y_1+=     0.00110133819 * math.cos( 4.00844673444 +       11.04570026390*t)
      uranus_y_1=uranus_y_1 * t

      return uranus_y_0+uranus_y_1
   

   @staticmethod
   def uranus_z(t):
      uranus_z_0=0.0
      uranus_z_0+=     0.25876996652 * math.cos( 2.61861278845 +       74.78159856730*t)
      uranus_z_0+=     0.01775471434 * math.cos( 3.14159265359 +        0.00000000000*t)
      uranus_z_0+=     0.00599290075 * math.cos( 5.08119534568 +      149.56319713460*t)
      uranus_z_0+=     0.00190282274 * math.cos( 1.61654207891 +       76.26607127560*t)
      uranus_z_0+=     0.00190873655 * math.cos( 0.57869366179 +       73.29712585900*t)

      uranus_z_1=0.0
      uranus_z_1+=     0.00655887992 * math.cos( 0.01271946942 +       74.78159856730*t)
      uranus_z_1=uranus_z_1 * t

      return uranus_z_0+uranus_z_1
   

   @staticmethod
   def venus_x(t):
      venus_x_0=0.0
      venus_x_0+=     0.72211104628 * math.cos( 3.17575836361 +    10213.28554621100*t)
      venus_x_0+=     0.00515822267 * math.cos( 0.00000000000 +        0.00000000000*t)
      venus_x_0+=     0.00494908458 * math.cos( 3.74108234732 +      529.69096509460*t)
      venus_x_0+=     0.00244499876 * math.cos( 4.05566613867 +    20426.57109242200*t)
      venus_x_0+=     0.00271754748 * math.cos( 4.01601261142 +      213.29909543800*t)
      venus_x_0+=     0.00155435209 * math.cos( 2.17052052050 +       38.13303563780*t)

      return venus_x_0
   

   @staticmethod
   def venus_y(t):
      venus_y_0=0.0
      venus_y_0+=     0.72324643689 * math.cos( 1.60573808356 +    10213.28554621100*t)
      venus_y_0+=     0.00515636737 * math.cos( 3.14159265359 +        0.00000000000*t)
      venus_y_0+=     0.00494765697 * math.cos( 2.17048019743 +      529.69096509460*t)
      venus_y_0+=     0.00244884190 * math.cos( 2.48564953999 +    20426.57109242200*t)
      venus_y_0+=     0.00272138024 * math.cos( 2.44443638845 +      213.29909543800*t)
      venus_y_0+=     0.00155443844 * math.cos( 0.59927014146 +       38.13303563780*t)

      return venus_y_0
   

   @staticmethod
   def venus_z(t):
      venus_z_0=0.0
      venus_z_0+=     0.04282979819 * math.cos( 0.26703856471 +    10213.28554621100*t)

      venus_z_1=0.0
      venus_z_1+=     0.00208095894 * math.cos( 1.88967278742 +    10213.28554621100*t)
      venus_z_1=venus_z_1 * t

      return venus_z_0+venus_z_1
   


