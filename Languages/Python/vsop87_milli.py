import math

#VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
#Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain


class vsop87_milli :
   @staticmethod
   def getEmb(t):
      temp=[]
      temp.append(vsop87_milli.emb_a(t))
      temp.append(vsop87_milli.emb_l(t))
      temp.append(vsop87_milli.emb_k(t))
      temp.append(vsop87_milli.emb_h(t))
      temp.append(vsop87_milli.emb_q(t))
      temp.append(vsop87_milli.emb_p(t))
      return temp
   

   @staticmethod
   def getJupiter(t):
      temp=[]
      temp.append(vsop87_milli.jupiter_a(t))
      temp.append(vsop87_milli.jupiter_l(t))
      temp.append(vsop87_milli.jupiter_k(t))
      temp.append(vsop87_milli.jupiter_h(t))
      temp.append(vsop87_milli.jupiter_q(t))
      temp.append(vsop87_milli.jupiter_p(t))
      return temp
   

   @staticmethod
   def getMars(t):
      temp=[]
      temp.append(vsop87_milli.mars_a(t))
      temp.append(vsop87_milli.mars_l(t))
      temp.append(vsop87_milli.mars_k(t))
      temp.append(vsop87_milli.mars_h(t))
      temp.append(vsop87_milli.mars_q(t))
      temp.append(vsop87_milli.mars_p(t))
      return temp
   

   @staticmethod
   def getMercury(t):
      temp=[]
      temp.append(vsop87_milli.mercury_a(t))
      temp.append(vsop87_milli.mercury_l(t))
      temp.append(vsop87_milli.mercury_k(t))
      temp.append(vsop87_milli.mercury_h(t))
      temp.append(vsop87_milli.mercury_q(t))
      temp.append(vsop87_milli.mercury_p(t))
      return temp
   

   @staticmethod
   def getNeptune(t):
      temp=[]
      temp.append(vsop87_milli.neptune_a(t))
      temp.append(vsop87_milli.neptune_l(t))
      temp.append(vsop87_milli.neptune_k(t))
      temp.append(vsop87_milli.neptune_h(t))
      temp.append(vsop87_milli.neptune_q(t))
      temp.append(vsop87_milli.neptune_p(t))
      return temp
   

   @staticmethod
   def getSaturn(t):
      temp=[]
      temp.append(vsop87_milli.saturn_a(t))
      temp.append(vsop87_milli.saturn_l(t))
      temp.append(vsop87_milli.saturn_k(t))
      temp.append(vsop87_milli.saturn_h(t))
      temp.append(vsop87_milli.saturn_q(t))
      temp.append(vsop87_milli.saturn_p(t))
      return temp
   

   @staticmethod
   def getUranus(t):
      temp=[]
      temp.append(vsop87_milli.uranus_a(t))
      temp.append(vsop87_milli.uranus_l(t))
      temp.append(vsop87_milli.uranus_k(t))
      temp.append(vsop87_milli.uranus_h(t))
      temp.append(vsop87_milli.uranus_q(t))
      temp.append(vsop87_milli.uranus_p(t))
      return temp
   

   @staticmethod
   def getVenus(t):
      temp=[]
      temp.append(vsop87_milli.venus_a(t))
      temp.append(vsop87_milli.venus_l(t))
      temp.append(vsop87_milli.venus_k(t))
      temp.append(vsop87_milli.venus_h(t))
      temp.append(vsop87_milli.venus_q(t))
      temp.append(vsop87_milli.venus_p(t))
      return temp
   

   @staticmethod
   def emb_a(t):
      emb_a_0=0.0
      emb_a_0+=     1.00000101778 * math.cos( 0.00000000000 +        0.00000000000*t)
      emb_a_0+=     0.00001120473 * math.cos( 2.30855131827 +    11506.76976979360*t)

      return emb_a_0
   

   @staticmethod
   def emb_l(t):
      emb_l_0=0.0
      emb_l_0+=     1.75347045953 * math.cos( 0.00000000000 +        0.00000000000*t)
      emb_l_0+=     0.00003417568 * math.cos( 2.82887613695 +        3.52311834900*t)
      emb_l_0+=     0.00002056367 * math.cos( 3.87949142209 +    11506.76976979360*t)
      emb_l_0+=     0.00001664099 * math.cos( 6.13527980181 +     3930.20969621960*t)
      emb_l_0+=     0.00001263517 * math.cos( 2.03240137643 +      529.69096509460*t)
      emb_l_0+=     0.00001268612 * math.cos( 1.27476353113 +     7860.41939243920*t)
      emb_l_0+=     0.00001089612 * math.cos( 1.10654596593 +     1577.34354244780*t)

      emb_l_1=0.0
      emb_l_1+=  6283.07584999140 * math.cos( 0.00000000000 +        0.00000000000*t)
      emb_l_1=emb_l_1 * t

      return emb_l_0+emb_l_1
   

   @staticmethod
   def emb_k(t):
      emb_k_0=0.0
      emb_k_0+=     0.00374081650 * math.cos( 3.14159265359 +        0.00000000000*t)
      emb_k_0+=     0.00001988852 * math.cos( 4.23374621009 +     1577.34354244780*t)
      emb_k_0+=     0.00001859231 * math.cos( 0.55463591479 +     5223.69391980220*t)
      emb_k_0+=     0.00001497439 * math.cos( 3.72409379834 +      529.69096509460*t)

      emb_k_1=0.0
      emb_k_1+=     0.00082267418 * math.cos( 3.14159265359 +        0.00000000000*t)
      emb_k_1=emb_k_1 * t

      emb_k_2=0.0
      emb_k_2+=     0.00002762465 * math.cos( 0.00000000000 +        0.00000000000*t)
      emb_k_2=emb_k_2 * t * t

      return emb_k_0+emb_k_1+emb_k_2
   

   @staticmethod
   def emb_h(t):
      emb_h_0=0.0
      emb_h_0+=     0.01628447663 * math.cos( 0.00000000000 +        0.00000000000*t)
      emb_h_0+=     0.00001986929 * math.cos( 5.80464886318 +     1577.34354244780*t)
      emb_h_0+=     0.00001864029 * math.cos( 2.12650300196 +     5223.69391980220*t)
      emb_h_0+=     0.00001510978 * math.cos( 2.16070229051 +      529.69096509460*t)

      emb_h_1=0.0
      emb_h_1+=     0.00062029655 * math.cos( 3.14159265359 +        0.00000000000*t)
      emb_h_1=emb_h_1 * t

      emb_h_2=0.0
      emb_h_2+=     0.00003382631 * math.cos( 3.14159265359 +        0.00000000000*t)
      emb_h_2=emb_h_2 * t * t

      return emb_h_0+emb_h_1+emb_h_2
   

   @staticmethod
   def emb_q(t):
      emb_q_1=0.0
      emb_q_1+=     0.00113468869 * math.cos( 3.14159265359 +        0.00000000000*t)
      emb_q_1=emb_q_1 * t

      emb_q_2=0.0
      emb_q_2+=     0.00001237314 * math.cos( 0.00000000000 +        0.00000000000*t)
      emb_q_2=emb_q_2 * t * t

      return emb_q_1+emb_q_2
   

   @staticmethod
   def emb_p(t):
      emb_p_1=0.0
      emb_p_1+=     0.00010180375 * math.cos( 0.00000000000 +        0.00000000000*t)
      emb_p_1=emb_p_1 * t

      emb_p_2=0.0
      emb_p_2+=     0.00004701998 * math.cos( 0.00000000000 +        0.00000000000*t)
      emb_p_2=emb_p_2 * t * t

      return emb_p_1+emb_p_2
   

   @staticmethod
   def jupiter_a(t):
      jupiter_a_0=0.0
      jupiter_a_0+=     5.20260319132 * math.cos( 0.00000000000 +        0.00000000000*t)
      jupiter_a_0+=     0.00069070151 * math.cos( 5.72686174779 +      632.78373931320*t)
      jupiter_a_0+=     0.00032272046 * math.cos( 1.90381613358 +      103.09277421860*t)
      jupiter_a_0+=     0.00031138634 * math.cos( 5.46486196547 +      949.17560896980*t)
      jupiter_a_0+=     0.00021814330 * math.cos( 0.70025220178 +      419.48464387520*t)
      jupiter_a_0+=     0.00025558941 * math.cos( 6.15962426898 +        7.11354700080*t)
      jupiter_a_0+=     0.00020585372 * math.cos( 5.98131661466 +      316.39186965660*t)
      jupiter_a_0+=     0.00011836569 * math.cos( 0.41496888665 +      735.87651353180*t)
      jupiter_a_0+=     0.00014633106 * math.cos( 5.20240925402 +     1265.56747862640*t)
      jupiter_a_0+=     0.00006702248 * math.cos( 0.13787303369 +     1052.26838318840*t)
      jupiter_a_0+=     0.00006545032 * math.cos( 1.97539564312 +      206.18554843720*t)
      jupiter_a_0+=     0.00007808378 * math.cos( 1.15392185250 +     5753.38488489680*t)
      jupiter_a_0+=     0.00005492322 * math.cos( 6.22811858833 +      110.20632121940*t)
      jupiter_a_0+=     0.00007016965 * math.cos( 4.94542752265 +     1581.95934828300*t)
      jupiter_a_0+=     0.00007170006 * math.cos( 2.57687162897 +     9683.59458111640*t)
      jupiter_a_0+=     0.00003812238 * math.cos( 6.14889511650 +     1368.66025284500*t)
      jupiter_a_0+=     0.00003161638 * math.cos( 1.66903371591 +      522.57741809380*t)
      jupiter_a_0+=     0.00003403855 * math.cos( 4.69439311157 +     1898.35121793960*t)
      jupiter_a_0+=     0.00002159445 * math.cos( 5.88093480007 +     1685.05212250160*t)
      jupiter_a_0+=     0.00002137176 * math.cos( 4.12641996837 +      529.69096509460*t)
      jupiter_a_0+=     0.00001907151 * math.cos( 1.38573177860 +      838.96928775040*t)
      jupiter_a_0+=     0.00002098973 * math.cos( 0.26695969427 +     1162.47470440780*t)
      jupiter_a_0+=     0.00001629945 * math.cos( 0.03571048023 +     1478.86657406440*t)
      jupiter_a_0+=     0.00001661953 * math.cos( 4.44977785904 +     2214.74308759620*t)
      jupiter_a_0+=     0.00001186903 * math.cos( 2.64995167523 +      846.08283475120*t)
      jupiter_a_0+=     0.00001214418 * math.cos( 5.61722097881 +     2001.44399215820*t)
      jupiter_a_0+=     0.00001269999 * math.cos( 3.71806964818 +      426.59819087600*t)
      jupiter_a_0+=     0.00001213593 * math.cos( 1.06750572685 +     1155.36115740700*t)
      jupiter_a_0+=     0.00001312912 * math.cos( 2.44966148532 +      639.89728631400*t)
      jupiter_a_0+=     0.00001103727 * math.cos( 6.06678431400 +     1795.25844372100*t)

      jupiter_a_1=0.0
      jupiter_a_1+=     0.00010177614 * math.cos( 4.46063225487 +        7.11354700080*t)
      jupiter_a_1+=     0.00002974577 * math.cos( 2.40984161552 +      419.48464387520*t)
      jupiter_a_1+=     0.00002846542 * math.cos( 2.88143856615 +      103.09277421860*t)
      jupiter_a_1+=     0.00001611596 * math.cos( 2.13915074201 +      735.87651353180*t)
      jupiter_a_1+=     0.00001760156 * math.cos( 3.67637229071 +      206.18554843720*t)
      jupiter_a_1=jupiter_a_1 * t

      jupiter_a_2=0.0
      jupiter_a_2+=     0.00002100381 * math.cos( 2.75770207184 +        7.11354700080*t)
      jupiter_a_2=jupiter_a_2 * t * t

      return jupiter_a_0+jupiter_a_1+jupiter_a_2
   

   @staticmethod
   def jupiter_l(t):
      jupiter_l_0=0.0
      jupiter_l_0+=     0.59954649739 * math.cos( 0.00000000000 +        0.00000000000*t)
      jupiter_l_0+=     0.00573506125 * math.cos( 1.44396306420 +        7.11354700080*t)
      jupiter_l_0+=     0.00062308554 * math.cos( 3.41857056095 +      103.09277421860*t)
      jupiter_l_0+=     0.00032251188 * math.cos( 1.01358443926 +      632.78373931320*t)
      jupiter_l_0+=     0.00023791184 * math.cos( 1.27622244841 +      316.39186965660*t)
      jupiter_l_0+=     0.00013391386 * math.cos( 2.32518571601 +      419.48464387520*t)
      jupiter_l_0+=     0.00011730590 * math.cos( 0.74641135653 +      949.17560896980*t)
      jupiter_l_0+=     0.00006812004 * math.cos( 3.60956583595 +      206.18554843720*t)
      jupiter_l_0+=     0.00005167226 * math.cos( 2.03396982022 +      735.87651353180*t)
      jupiter_l_0+=     0.00005028480 * math.cos( 1.30119547663 +      110.20632121940*t)
      jupiter_l_0+=     0.00004874926 * math.cos( 0.14125173816 +      213.29909543800*t)
      jupiter_l_0+=     0.00005301368 * math.cos( 1.30630311058 +       14.22709400160*t)
      jupiter_l_0+=     0.00004646804 * math.cos( 4.69958744435 +        3.93215326310*t)
      jupiter_l_0+=     0.00004844502 * math.cos( 0.48003774299 +     1265.56747862640*t)
      jupiter_l_0+=     0.00002441576 * math.cos( 1.74974982970 +     1052.26838318840*t)
      jupiter_l_0+=     0.00002028225 * math.cos( 1.06374295158 +        3.18139373770*t)
      jupiter_l_0+=     0.00001824700 * math.cos( 5.72883078185 +      529.69096509460*t)
      jupiter_l_0+=     0.00001712597 * math.cos( 3.32169437274 +      522.57741809380*t)
      jupiter_l_0+=     0.00002129932 * math.cos( 0.21867743210 +     1581.95934828300*t)
      jupiter_l_0+=     0.00001238477 * math.cos( 1.47069491582 +     1368.66025284500*t)
      jupiter_l_0+=     0.00001327642 * math.cos( 5.86632120612 +     5753.38488489680*t)
      jupiter_l_0+=     0.00001277074 * math.cos( 1.00600288328 +     9683.59458111640*t)

      jupiter_l_1=0.0
      jupiter_l_1+=   529.69096509460 * math.cos( 0.00000000000 +        0.00000000000*t)
      jupiter_l_1+=     0.00228875491 * math.cos( 6.02639570653 +        7.11354700080*t)
      jupiter_l_1+=     0.00005840251 * math.cos( 4.42734755250 +      103.09277421860*t)
      jupiter_l_1+=     0.00004234649 * math.cos( 5.88973718187 +       14.22709400160*t)
      jupiter_l_1+=     0.00001827425 * math.cos( 3.98800487338 +      419.48464387520*t)
      jupiter_l_1+=     0.00001825678 * math.cos( 5.28404506455 +      206.18554843720*t)
      jupiter_l_1+=     0.00001295763 * math.cos( 5.55131472287 +        3.18139373770*t)
      jupiter_l_1+=     0.00001163261 * math.cos( 0.51449095629 +        3.93215326310*t)
      jupiter_l_1=jupiter_l_1 * t

      jupiter_l_2=0.0
      jupiter_l_2+=     0.00047224495 * math.cos( 4.32142959829 +        7.11354700080*t)
      jupiter_l_2+=     0.00014837133 * math.cos( 3.14159265359 +        0.00000000000*t)
      jupiter_l_2+=     0.00001719760 * math.cos( 4.18704068143 +       14.22709400160*t)
      jupiter_l_2=jupiter_l_2 * t * t

      jupiter_l_3=0.0
      jupiter_l_3+=     0.00006500387 * math.cos( 2.59858880160 +        7.11354700080*t)
      jupiter_l_3=jupiter_l_3 * t * t * t

      return jupiter_l_0+jupiter_l_1+jupiter_l_2+jupiter_l_3
   

   @staticmethod
   def jupiter_k(t):
      jupiter_k_0=0.0
      jupiter_k_0+=     0.04698572124 * math.cos( 0.00000000000 +        0.00000000000*t)
      jupiter_k_0+=     0.00065287010 * math.cos( 5.14135675663 +      103.09277421860*t)
      jupiter_k_0+=     0.00038006128 * math.cos( 2.03714771852 +        7.11354700080*t)
      jupiter_k_0+=     0.00013518804 * math.cos( 2.94820975394 +      110.20632121940*t)
      jupiter_k_0+=     0.00010740857 * math.cos( 4.85106997988 +      419.48464387520*t)
      jupiter_k_0+=     0.00006494479 * math.cos( 6.11501213894 +      206.18554843720*t)
      jupiter_k_0+=     0.00008220806 * math.cos( 3.97331004047 +      213.29909543800*t)
      jupiter_k_0+=     0.00003765858 * math.cos( 4.56504910618 +      735.87651353180*t)
      jupiter_k_0+=     0.00002959813 * math.cos( 3.68441778896 +      529.69096509460*t)
      jupiter_k_0+=     0.00002035004 * math.cos( 5.81350208632 +      522.57741809380*t)
      jupiter_k_0+=     0.00001747828 * math.cos( 1.94483888566 +      426.59819087600*t)
      jupiter_k_0+=     0.00001558179 * math.cos( 4.27725789559 +     1052.26838318840*t)
      jupiter_k_0+=     0.00001472174 * math.cos( 0.07389019650 +     1162.47470440780*t)
      jupiter_k_0+=     0.00001038475 * math.cos( 1.75340907792 +     6283.07584999140*t)

      jupiter_k_1=0.0
      jupiter_k_1+=     0.00113010377 * math.cos( 0.00000000000 +        0.00000000000*t)
      jupiter_k_1+=     0.00010303903 * math.cos( 0.33250058601 +        7.11354700080*t)
      jupiter_k_1+=     0.00001978042 * math.cos( 1.13748818129 +      110.20632121940*t)
      jupiter_k_1=jupiter_k_1 * t

      jupiter_k_2=0.0
      jupiter_k_2+=     0.00010930126 * math.cos( 3.14159265359 +        0.00000000000*t)
      jupiter_k_2+=     0.00001442597 * math.cos( 4.88233039271 +        7.11354700080*t)
      jupiter_k_2=jupiter_k_2 * t * t

      return jupiter_k_0+jupiter_k_1+jupiter_k_2
   

   @staticmethod
   def jupiter_h(t):
      jupiter_h_0=0.0
      jupiter_h_0+=     0.01200385748 * math.cos( 0.00000000000 +        0.00000000000*t)
      jupiter_h_0+=     0.00064278139 * math.cos( 0.39928981461 +      103.09277421860*t)
      jupiter_h_0+=     0.00037689163 * math.cos( 0.46902799622 +        7.11354700080*t)
      jupiter_h_0+=     0.00012686502 * math.cos( 1.52173271472 +      110.20632121940*t)
      jupiter_h_0+=     0.00010468075 * math.cos( 0.14414631816 +      419.48464387520*t)
      jupiter_h_0+=     0.00006402161 * math.cos( 1.39213151486 +      206.18554843720*t)
      jupiter_h_0+=     0.00007914390 * math.cos( 2.52216677357 +      213.29909543800*t)
      jupiter_h_0+=     0.00003749183 * math.cos( 6.17601797762 +      735.87651353180*t)
      jupiter_h_0+=     0.00002842733 * math.cos( 2.22519565559 +      529.69096509460*t)
      jupiter_h_0+=     0.00002032835 * math.cos( 1.12581931301 +      522.57741809380*t)
      jupiter_h_0+=     0.00001205591 * math.cos( 3.58200423326 +      316.39186965660*t)
      jupiter_h_0+=     0.00001580155 * math.cos( 5.93627628914 +     1052.26838318840*t)
      jupiter_h_0+=     0.00001251514 * math.cos( 0.53303247088 +      426.59819087600*t)
      jupiter_h_0+=     0.00001501758 * math.cos( 4.71935111593 +     1162.47470440780*t)
      jupiter_h_0+=     0.00001038160 * math.cos( 0.18273665816 +     6283.07584999140*t)

      jupiter_h_1=0.0
      jupiter_h_1+=     0.00217149360 * math.cos( 0.00000000000 +        0.00000000000*t)
      jupiter_h_1+=     0.00010164439 * math.cos( 5.05135857516 +        7.11354700080*t)
      jupiter_h_1+=     0.00001666197 * math.cos( 6.26691415094 +      110.20632121940*t)
      jupiter_h_1=jupiter_h_1 * t

      jupiter_h_2=0.0
      jupiter_h_2+=     0.00009858539 * math.cos( 0.00000000000 +        0.00000000000*t)
      jupiter_h_2+=     0.00001409659 * math.cos( 3.32663555725 +        7.11354700080*t)
      jupiter_h_2=jupiter_h_2 * t * t

      return jupiter_h_0+jupiter_h_1+jupiter_h_2
   

   @staticmethod
   def jupiter_q(t):
      jupiter_q_0=0.0
      jupiter_q_0+=     0.00206561098 * math.cos( 3.14159265359 +        0.00000000000*t)

      jupiter_q_1=0.0
      jupiter_q_1+=     0.00031340156 * math.cos( 3.14159265359 +        0.00000000000*t)
      jupiter_q_1=jupiter_q_1 * t

      jupiter_q_2=0.0
      jupiter_q_2+=     0.00001667392 * math.cos( 3.14159265359 +        0.00000000000*t)
      jupiter_q_2=jupiter_q_2 * t * t

      return jupiter_q_0+jupiter_q_1+jupiter_q_2
   

   @staticmethod
   def jupiter_p(t):
      jupiter_p_0=0.0
      jupiter_p_0+=     0.01118377157 * math.cos( 0.00000000000 +        0.00000000000*t)

      jupiter_p_1=0.0
      jupiter_p_1+=     0.00023427562 * math.cos( 3.14159265359 +        0.00000000000*t)
      jupiter_p_1=jupiter_p_1 * t

      jupiter_p_2=0.0
      jupiter_p_2+=     0.00002086760 * math.cos( 0.00000000000 +        0.00000000000*t)
      jupiter_p_2=jupiter_p_2 * t * t

      return jupiter_p_0+jupiter_p_1+jupiter_p_2
   

   @staticmethod
   def mars_a(t):
      mars_a_0=0.0
      mars_a_0+=     1.52367934191 * math.cos( 0.00000000000 +        0.00000000000*t)
      mars_a_0+=     0.00006601698 * math.cos( 4.92149777465 +     5621.84292321040*t)
      mars_a_0+=     0.00002201786 * math.cos( 1.39247552912 +     2281.23049651060*t)
      mars_a_0+=     0.00001214966 * math.cos( 5.01404770046 +      398.14900340820*t)
      mars_a_0+=     0.00001639879 * math.cos( 4.27793460842 +     8432.76438481560*t)
      mars_a_0+=     0.00001580816 * math.cos( 1.83232786200 +     2942.46342329160*t)
      mars_a_0+=     0.00001412662 * math.cos( 3.25538771720 +     6872.67311951120*t)
      mars_a_0+=     0.00001039285 * math.cos( 5.55848890740 +     2810.92146160520*t)

      return mars_a_0
   

   @staticmethod
   def mars_l(t):
      mars_l_0=0.0
      mars_l_0+=     6.20347611291 * math.cos( 0.00000000000 +        0.00000000000*t)
      mars_l_0+=     0.00027745033 * math.cos( 5.97049541372 +        3.52311834900*t)
      mars_l_0+=     0.00008926849 * math.cos( 4.15697846934 +        0.01725365220*t)
      mars_l_0+=     0.00006592291 * math.cos( 0.36792271340 +      398.14900340820*t)
      mars_l_0+=     0.00008395541 * math.cos( 0.20835197721 +     5621.84292321040*t)
      mars_l_0+=     0.00005745457 * math.cos( 2.94479034922 +     2281.23049651060*t)
      mars_l_0+=     0.00003054393 * math.cos( 0.85670458531 +      191.44826611160*t)
      mars_l_0+=     0.00002937590 * math.cos( 6.07893711376 +        0.06731030280*t)
      mars_l_0+=     0.00003321877 * math.cos( 0.85790353464 +     2810.92146160520*t)
      mars_l_0+=     0.00002124413 * math.cos( 5.04195951157 +      796.29800681640*t)
      mars_l_0+=     0.00001686484 * math.cos( 0.77141234937 +      529.69096509460*t)
      mars_l_0+=     0.00001733875 * math.cos( 5.83752078998 +     8432.76438481560*t)
      mars_l_0+=     0.00001238027 * math.cos( 1.66209647251 +     2544.31441988340*t)
      mars_l_0+=     0.00001044992 * math.cos( 0.65472060539 +     5092.15195811580*t)
      mars_l_0+=     0.00001262899 * math.cos( 0.26625922905 +     2942.46342329160*t)
      mars_l_0+=     0.00001124144 * math.cos( 2.94366443964 +     1751.53953141600*t)

      mars_l_1=0.0
      mars_l_1+=  3340.61242669981 * math.cos( 0.00000000000 +        0.00000000000*t)
      mars_l_1+=     0.00003452439 * math.cos( 4.73210379431 +        3.52311834900*t)
      mars_l_1=mars_l_1 * t

      return mars_l_0+mars_l_1
   

   @staticmethod
   def mars_k(t):
      mars_k_0=0.0
      mars_k_0+=     0.08536560252 * math.cos( 0.00000000000 +        0.00000000000*t)
      mars_k_0+=     0.00008228685 * math.cos( 4.99515670335 +     2281.23049651060*t)
      mars_k_0+=     0.00004631835 * math.cos( 3.76981942051 +      529.69096509460*t)
      mars_k_0+=     0.00002590017 * math.cos( 1.69837709855 +     1059.38193018920*t)
      mars_k_0+=     0.00001710954 * math.cos( 4.34158755371 +      398.14900340820*t)
      mars_k_0+=     0.00001174163 * math.cos( 5.31228741951 +     1751.53953141600*t)
      mars_k_0+=     0.00001023098 * math.cos( 2.96623191194 +      796.29800681640*t)
      mars_k_0+=     0.00001300580 * math.cos( 4.32747267803 +     5092.15195811580*t)

      mars_k_1=0.0
      mars_k_1+=     0.00376330152 * math.cos( 0.00000000000 +        0.00000000000*t)
      mars_k_1=mars_k_1 * t

      mars_k_2=0.0
      mars_k_2+=     0.00024657776 * math.cos( 3.14159265359 +        0.00000000000*t)
      mars_k_2=mars_k_2 * t * t

      return mars_k_0+mars_k_1+mars_k_2
   

   @staticmethod
   def mars_h(t):
      mars_h_0=0.0
      mars_h_0+=     0.03789973236 * math.cos( 3.14159265359 +        0.00000000000*t)
      mars_h_0+=     0.00008158391 * math.cos( 0.29399378947 +     2281.23049651060*t)
      mars_h_0+=     0.00004516507 * math.cos( 2.19998239682 +      529.69096509460*t)
      mars_h_0+=     0.00002592276 * math.cos( 0.12646371989 +     1059.38193018920*t)
      mars_h_0+=     0.00001767646 * math.cos( 2.80798995472 +      398.14900340820*t)
      mars_h_0+=     0.00001168491 * math.cos( 0.61541102304 +     1751.53953141600*t)
      mars_h_0+=     0.00001376104 * math.cos( 5.91426857264 +     5092.15195811580*t)
      mars_h_0+=     0.00001024786 * math.cos( 1.39271679546 +      796.29800681640*t)

      mars_h_1=0.0
      mars_h_1+=     0.00624657465 * math.cos( 0.00000000000 +        0.00000000000*t)
      mars_h_1=mars_h_1 * t

      mars_h_2=0.0
      mars_h_2+=     0.00015529482 * math.cos( 0.00000000000 +        0.00000000000*t)
      mars_h_2=mars_h_2 * t * t

      return mars_h_0+mars_h_1+mars_h_2
   

   @staticmethod
   def mars_q(t):
      mars_q_0=0.0
      mars_q_0+=     0.01047042574 * math.cos( 0.00000000000 +        0.00000000000*t)

      mars_q_1=0.0
      mars_q_1+=     0.00017138526 * math.cos( 0.00000000000 +        0.00000000000*t)
      mars_q_1=mars_q_1 * t

      mars_q_2=0.0
      mars_q_2+=     0.00004077491 * math.cos( 3.14159265359 +        0.00000000000*t)
      mars_q_2=mars_q_2 * t * t

      return mars_q_0+mars_q_1+mars_q_2
   

   @staticmethod
   def mars_p(t):
      mars_p_0=0.0
      mars_p_0+=     0.01228449307 * math.cos( 0.00000000000 +        0.00000000000*t)

      mars_p_1=0.0
      mars_p_1+=     0.00108020083 * math.cos( 3.14159265359 +        0.00000000000*t)
      mars_p_1=mars_p_1 * t

      mars_p_2=0.0
      mars_p_2+=     0.00001922224 * math.cos( 3.14159265359 +        0.00000000000*t)
      mars_p_2=mars_p_2 * t * t

      return mars_p_0+mars_p_1+mars_p_2
   

   @staticmethod
   def mercury_a(t):
      mercury_a_0=0.0
      mercury_a_0+=     0.38709830982 * math.cos( 0.00000000000 +        0.00000000000*t)

      return mercury_a_0
   

   @staticmethod
   def mercury_l(t):
      mercury_l_0=0.0
      mercury_l_0+=     4.40260884240 * math.cos( 0.00000000000 +        0.00000000000*t)
      mercury_l_0+=     0.00003557754 * math.cos( 1.51229384945 +     1109.37855209340*t)
      mercury_l_0+=     0.00001732389 * math.cos( 4.10404056787 +     5661.33204915220*t)

      mercury_l_1=0.0
      mercury_l_1+= 26087.90314157420 * math.cos( 0.00000000000 +        0.00000000000*t)
      mercury_l_1=mercury_l_1 * t

      return mercury_l_0+mercury_l_1
   

   @staticmethod
   def mercury_k(t):
      mercury_k_0=0.0
      mercury_k_0+=     0.04466059760 * math.cos( 0.00000000000 +        0.00000000000*t)

      mercury_k_1=0.0
      mercury_k_1+=     0.00552114624 * math.cos( 3.14159265359 +        0.00000000000*t)
      mercury_k_1=mercury_k_1 * t

      mercury_k_2=0.0
      mercury_k_2+=     0.00001860568 * math.cos( 3.14159265359 +        0.00000000000*t)
      mercury_k_2=mercury_k_2 * t * t

      return mercury_k_0+mercury_k_1+mercury_k_2
   

   @staticmethod
   def mercury_h(t):
      mercury_h_0=0.0
      mercury_h_0+=     0.20072331368 * math.cos( 0.00000000000 +        0.00000000000*t)

      mercury_h_1=0.0
      mercury_h_1+=     0.00143750118 * math.cos( 0.00000000000 +        0.00000000000*t)
      mercury_h_1=mercury_h_1 * t

      mercury_h_2=0.0
      mercury_h_2+=     0.00007974120 * math.cos( 3.14159265359 +        0.00000000000*t)
      mercury_h_2=mercury_h_2 * t * t

      return mercury_h_0+mercury_h_1+mercury_h_2
   

   @staticmethod
   def mercury_q(t):
      mercury_q_0=0.0
      mercury_q_0+=     0.04061563384 * math.cos( 0.00000000000 +        0.00000000000*t)

      mercury_q_1=0.0
      mercury_q_1+=     0.00065433117 * math.cos( 0.00000000000 +        0.00000000000*t)
      mercury_q_1=mercury_q_1 * t

      mercury_q_2=0.0
      mercury_q_2+=     0.00001071215 * math.cos( 3.14159265359 +        0.00000000000*t)
      mercury_q_2=mercury_q_2 * t * t

      return mercury_q_0+mercury_q_1+mercury_q_2
   

   @staticmethod
   def mercury_p(t):
      mercury_p_0=0.0
      mercury_p_0+=     0.04563550461 * math.cos( 0.00000000000 +        0.00000000000*t)

      mercury_p_1=0.0
      mercury_p_1+=     0.00127633657 * math.cos( 3.14159265359 +        0.00000000000*t)
      mercury_p_1=mercury_p_1 * t

      return mercury_p_0+mercury_p_1
   

   @staticmethod
   def neptune_a(t):
      neptune_a_0=0.0
      neptune_a_0+=    30.11038686942 * math.cos( 0.00000000000 +        0.00000000000*t)
      neptune_a_0+=     0.14818172119 * math.cos( 1.57105922541 +      491.55792945680*t)
      neptune_a_0+=     0.03597274341 * math.cos( 1.84552690821 +      175.16605980020*t)
      neptune_a_0+=     0.00832345688 * math.cos( 5.19528065894 +        1.48447270830*t)
      neptune_a_0+=     0.00694303990 * math.cos( 1.92062235445 +     1021.24889455140*t)
      neptune_a_0+=     0.00462318447 * math.cos( 0.16921610518 +       36.64856292950*t)
      neptune_a_0+=     0.00144701407 * math.cos( 3.36967102070 +      453.42489381900*t)
      neptune_a_0+=     0.00185666340 * math.cos( 1.07141029917 +      388.46515523820*t)
      neptune_a_0+=     0.00105687575 * math.cos( 3.48447772920 +       73.29712585900*t)
      neptune_a_0+=     0.00101174992 * math.cos( 2.72476929716 +     6244.94281435360*t)
      neptune_a_0+=     0.00095530570 * math.cos( 4.14819625611 +    10175.15251057320*t)
      neptune_a_0+=     0.00078391390 * math.cos( 0.48629941459 +      493.04240216510*t)
      neptune_a_0+=     0.00069569587 * math.cos( 3.84742919656 +        2.96894541660*t)
      neptune_a_0+=     0.00072554259 * math.cos( 5.79767484989 +      490.07345674850*t)
      neptune_a_0+=     0.00046876450 * math.cos( 3.85081593965 +      137.03302416240*t)
      neptune_a_0+=     0.00056976700 * math.cos( 3.65157409569 +      109.94568878850*t)
      neptune_a_0+=     0.00050781320 * math.cos( 4.51488159732 +       35.16409022120*t)
      neptune_a_0+=     0.00037417236 * math.cos( 2.27030739588 +     1550.93985964600*t)
      neptune_a_0+=     0.00042415052 * math.cos( 1.70067649012 +      484.44438245600*t)
      neptune_a_0+=     0.00042539010 * math.cos( 4.58925849638 +      498.67147645760*t)
      neptune_a_0+=     0.00031792020 * math.cos( 3.25530033905 +      983.11585891360*t)
      neptune_a_0+=     0.00031426284 * math.cos( 3.82119024473 +      146.59425171800*t)
      neptune_a_0+=     0.00025671325 * math.cos( 1.72232760443 +      182.27960680100*t)
      neptune_a_0+=     0.00025130259 * math.cos( 5.11703371894 +      168.05251279940*t)
      neptune_a_0+=     0.00026057248 * math.cos( 0.60013829511 +      350.33211960040*t)
      neptune_a_0+=     0.00024649447 * math.cos( 6.00875947773 +      316.39186965660*t)
      neptune_a_0+=     0.00021792087 * math.cos( 2.62371458707 +      111.43016149680*t)
      neptune_a_0+=     0.00019887390 * math.cos( 4.72200680846 +       71.81265315070*t)
      neptune_a_0+=     0.00018971774 * math.cos( 0.76073169118 +      176.65053250850*t)
      neptune_a_0+=     0.00017669174 * math.cos( 6.07111527239 +      173.68158709190*t)
      neptune_a_0+=     0.00017938336 * math.cos( 3.98996043594 +      183.24281464750*t)
      neptune_a_0+=     0.00017526509 * math.cos( 3.41680716222 +      666.72398925700*t)
      neptune_a_0+=     0.00014186982 * math.cos( 0.39055348945 +       38.13303563780*t)
      neptune_a_0+=     0.00013243147 * math.cos( 1.48517883768 +      454.90936652730*t)
      neptune_a_0+=     0.00011035877 * math.cos( 0.32439741096 +      601.76425067620*t)
      neptune_a_0+=     0.00011159386 * math.cos( 4.90170178578 +      108.46121608020*t)
      neptune_a_0+=     0.00010396544 * math.cos( 4.15850491413 +      219.89137757700*t)
      neptune_a_0+=     0.00007632319 * math.cos( 3.96168072784 +      381.35160823740*t)
      neptune_a_0+=     0.00008707313 * math.cos( 0.89208438481 +     3302.47939106200*t)
      neptune_a_0+=     0.00008622145 * math.cos( 5.37576545499 +    26049.77010593640*t)
      neptune_a_0+=     0.00007782789 * math.cos( 2.39187318497 +      525.49817940060*t)
      neptune_a_0+=     0.00006674860 * math.cos( 5.07928918413 +      145.10977900970*t)
      neptune_a_0+=     0.00006376652 * math.cos( 5.76130274516 +       33.67961751290*t)
      neptune_a_0+=     0.00006895671 * math.cos( 0.98793536426 +     1124.34166877000*t)
      neptune_a_0+=     0.00005629180 * math.cos( 0.85835852864 +     1014.13534755060*t)
      neptune_a_0+=     0.00005773397 * math.cos( 2.64610145306 +        4.45341812490*t)
      neptune_a_0+=     0.00006083350 * math.cos( 4.32651626591 +      256.53994050650*t)
      neptune_a_0+=     0.00004544908 * math.cos( 2.35139605515 +      567.82400073240*t)
      neptune_a_0+=     0.00004934813 * math.cos( 0.36064784582 +      529.69096509460*t)
      neptune_a_0+=     0.00004046438 * math.cos( 4.93509230909 +     1028.36244155220*t)
      neptune_a_0+=     0.00004369251 * math.cos( 4.06194785498 +       39.61750834610*t)
      neptune_a_0+=     0.00003927886 * math.cos( 3.58953387923 +      278.25883401880*t)
      neptune_a_0+=     0.00004057513 * math.cos( 0.25568522011 +      594.65070367540*t)
      neptune_a_0+=     0.00004133043 * math.cos( 5.25484935130 +      181.75834193920*t)
      neptune_a_0+=     0.00003677143 * math.cos( 0.83586785926 +     1022.73336725970*t)
      neptune_a_0+=     0.00003386120 * math.cos( 6.14643908326 +     1019.76442184310*t)
      neptune_a_0+=     0.00002951694 * math.cos( 5.43383619500 +      911.04257333200*t)
      neptune_a_0+=     0.00003543495 * math.cos( 5.42973911153 +      494.52687487340*t)
      neptune_a_0+=     0.00003392909 * math.cos( 3.54659671932 +     1512.80682400820*t)
      neptune_a_0+=     0.00003353300 * math.cos( 1.79815387525 +      138.51749687070*t)
      neptune_a_0+=     0.00003583908 * math.cos( 4.49408030978 +      293.18850343600*t)
      neptune_a_0+=     0.00002504618 * math.cos( 0.44310110215 +      312.19908396260*t)
      neptune_a_0+=     0.00002776207 * math.cos( 5.94937385502 +       70.32818044240*t)
      neptune_a_0+=     0.00002699023 * math.cos( 0.89541716557 +      488.58898404020*t)
      neptune_a_0+=     0.00002620355 * math.cos( 0.95334129551 +      395.57870223900*t)
      neptune_a_0+=     0.00002982950 * math.cos( 4.38693444607 +      807.94979911340*t)
      neptune_a_0+=     0.00002137597 * math.cos( 2.62040972080 +     2080.63082474060*t)
      neptune_a_0+=     0.00002846186 * math.cos( 0.20239512935 +      456.39383923560*t)
      neptune_a_0+=     0.00002598581 * math.cos( 5.42929247282 +      218.40690486870*t)
      neptune_a_0+=     0.00002717873 * math.cos( 2.38333001564 +       74.78159856730*t)
      neptune_a_0+=     0.00002189863 * math.cos( 2.76170836241 +       72.07328558160*t)
      neptune_a_0+=     0.00002141554 * math.cos( 4.23262734613 +      700.66423920080*t)
      neptune_a_0+=     0.00002121509 * math.cos( 4.66119138983 +      329.83706636550*t)
      neptune_a_0+=     0.00001752930 * math.cos( 2.14333475172 +    52137.67324751059*t)
      neptune_a_0+=     0.00001433109 * math.cos( 1.33180211256 +      451.94042111070*t)
      neptune_a_0+=     0.00001685284 * math.cos( 2.68165524330 +    12528.01866434500*t)
      neptune_a_0+=     0.00001599634 * math.cos( 6.13584178809 +      106.97674337190*t)
      neptune_a_0+=     0.00001646734 * math.cos( 5.60253199044 +      255.05546779820*t)
      neptune_a_0+=     0.00001625124 * math.cos( 5.18800512745 +      415.29185818120*t)
      neptune_a_0+=     0.00001749735 * math.cos( 1.73835044368 +      528.20649238630*t)
      neptune_a_0+=     0.00001166454 * math.cos( 0.07504784936 +      846.08283475120*t)
      neptune_a_0+=     0.00001385383 * math.cos( 1.54908001242 +     1474.67378837040*t)
      neptune_a_0+=     0.00001297766 * math.cos( 0.47959536188 +      103.09277421860*t)
      neptune_a_0+=     0.00001003414 * math.cos( 3.30114109938 +       31.01948863700*t)
      neptune_a_0+=     0.00001259933 * math.cos( 4.82781905172 +      366.48562929500*t)
      neptune_a_0+=     0.00001009977 * math.cos( 5.10943006583 +       98.89998852460*t)
      neptune_a_0+=     0.00001048012 * math.cos( 5.77490234485 +      291.70403072770*t)
      neptune_a_0+=     0.00001128798 * math.cos( 6.17644134650 +      251.43213107580*t)
      neptune_a_0+=     0.00001051232 * math.cos( 5.05228678509 +      564.85505531580*t)

      neptune_a_1=0.0
      neptune_a_1+=     0.00035017221 * math.cos( 1.07792431879 +     1021.24889455140*t)
      neptune_a_1+=     0.00021981792 * math.cos( 5.24159938374 +      388.46515523820*t)
      neptune_a_1+=     0.00016983720 * math.cos( 2.88749614679 +      498.67147645760*t)
      neptune_a_1+=     0.00016926224 * math.cos( 3.40079518197 +      484.44438245600*t)
      neptune_a_1+=     0.00013646732 * math.cos( 3.31887794551 +        1.48447270830*t)
      neptune_a_1+=     0.00010242826 * math.cos( 0.02106658542 +      182.27960680100*t)
      neptune_a_1+=     0.00010028658 * math.cos( 0.53331428424 +      168.05251279940*t)
      neptune_a_1+=     0.00003776476 * math.cos( 1.42851534633 +     1550.93985964600*t)
      neptune_a_1+=     0.00003075458 * math.cos( 4.97970096897 +       38.13303563780*t)
      neptune_a_1+=     0.00002594040 * math.cos( 4.47823296834 +      601.76425067620*t)
      neptune_a_1+=     0.00002161942 * math.cos( 2.11259824319 +        2.96894541660*t)
      neptune_a_1+=     0.00001781290 * math.cos( 2.71816195692 +     1014.13534755060*t)
      neptune_a_1+=     0.00001753956 * math.cos( 3.31444002417 +     1028.36244155220*t)
      neptune_a_1+=     0.00002110200 * math.cos( 5.77549830815 +      381.35160823740*t)
      neptune_a_1+=     0.00001334471 * math.cos( 5.44088442936 +      395.57870223900*t)
      neptune_a_1+=     0.00001294918 * math.cos( 0.10258184950 +      137.03302416240*t)
      neptune_a_1+=     0.00001396569 * math.cos( 3.95224291840 +      453.42489381900*t)
      neptune_a_1+=     0.00001279417 * math.cos( 4.85952483354 +      493.04240216510*t)
      neptune_a_1+=     0.00001181676 * math.cos( 1.42716610982 +      490.07345674850*t)
      neptune_a_1+=     0.00001105460 * math.cos( 4.88306434620 +      491.55792945680*t)
      neptune_a_1=neptune_a_1 * t

      neptune_a_2=0.0
      neptune_a_2+=     0.00003493966 * math.cos( 5.10707633632 +      484.44438245600*t)
      neptune_a_2+=     0.00003503585 * math.cos( 1.18344352637 +      498.67147645760*t)
      neptune_a_2+=     0.00002282135 * math.cos( 6.09486118766 +     1021.24889455140*t)
      neptune_a_2+=     0.00002115677 * math.cos( 4.59469314887 +      182.27960680100*t)
      neptune_a_2+=     0.00002066951 * math.cos( 2.23303786678 +      168.05251279940*t)
      neptune_a_2+=     0.00001597010 * math.cos( 3.46010091566 +      388.46515523820*t)
      neptune_a_2+=     0.00002216295 * math.cos( 0.00738785922 +      491.55792945680*t)
      neptune_a_2+=     0.00001315130 * math.cos( 3.42363937604 +      175.16605980020*t)
      neptune_a_2=neptune_a_2 * t * t

      return neptune_a_0+neptune_a_1+neptune_a_2
   

   @staticmethod
   def neptune_l(t):
      neptune_l_0=0.0
      neptune_l_0+=     5.31188628676 * math.cos( 0.00000000000 +        0.00000000000*t)
      neptune_l_0+=     0.01017628072 * math.cos( 0.48586478491 +        1.48447270830*t)
      neptune_l_0+=     0.00441710236 * math.cos( 0.00020868462 +      491.55792945680*t)
      neptune_l_0+=     0.00092919548 * math.cos( 0.27470534254 +      175.16605980020*t)
      neptune_l_0+=     0.00041703723 * math.cos( 5.41098453927 +        2.96894541660*t)
      neptune_l_0+=     0.00021806166 * math.cos( 0.34972092081 +     1021.24889455140*t)
      neptune_l_0+=     0.00016297466 * math.cos( 4.88440388945 +       36.64856292950*t)
      neptune_l_0+=     0.00008886033 * math.cos( 5.05361823928 +       73.29712585900*t)
      neptune_l_0+=     0.00004659994 * math.cos( 1.33477314139 +      529.69096509460*t)
      neptune_l_0+=     0.00005377245 * math.cos( 5.78272041689 +      388.46515523820*t)
      neptune_l_0+=     0.00004680334 * math.cos( 6.09321391056 +       35.16409022120*t)
      neptune_l_0+=     0.00003802349 * math.cos( 5.22333208877 +      109.94568878850*t)
      neptune_l_0+=     0.00003322163 * math.cos( 1.15397315005 +     6244.94281435360*t)
      neptune_l_0+=     0.00003147352 * math.cos( 2.57721133604 +    10175.15251057320*t)
      neptune_l_0+=     0.00002240383 * math.cos( 4.20707088869 +        4.45341812490*t)
      neptune_l_0+=     0.00002281838 * math.cos( 5.19871056223 +      493.04240216510*t)
      neptune_l_0+=     0.00002219849 * math.cos( 4.22711801112 +      490.07345674850*t)
      neptune_l_0+=     0.00001735754 * math.cos( 5.54936890835 +       38.13303563780*t)
      neptune_l_0+=     0.00001859332 * math.cos( 5.39275689304 +      146.59425171800*t)
      neptune_l_0+=     0.00001659134 * math.cos( 2.11418238398 +      350.33211960040*t)
      neptune_l_0+=     0.00001181561 * math.cos( 1.89487772228 +      453.42489381900*t)
      neptune_l_0+=     0.00001196450 * math.cos( 0.69928495249 +     1550.93985964600*t)
      neptune_l_0+=     0.00001095165 * math.cos( 1.53739829302 +      213.29909543800*t)
      neptune_l_0+=     0.00001404152 * math.cos( 6.28025718650 +       71.81265315070*t)
      neptune_l_0+=     0.00001269673 * math.cos( 3.01840568374 +      498.67147645760*t)
      neptune_l_0+=     0.00001262634 * math.cos( 0.12984088183 +      484.44438245600*t)

      neptune_l_1=0.0
      neptune_l_1+=    38.13303563780 * math.cos( 0.00000000000 +        0.00000000000*t)
      neptune_l_1+=     0.00016569412 * math.cos( 4.86311838543 +        1.48447270830*t)
      neptune_l_1+=     0.00001295022 * math.cos( 3.67289349677 +        2.96894541660*t)
      neptune_l_1+=     0.00001099574 * math.cos( 5.79033065445 +     1021.24889455140*t)
      neptune_l_1=neptune_l_1 * t

      return neptune_l_0+neptune_l_1
   

   @staticmethod
   def neptune_k(t):
      neptune_k_0=0.0
      neptune_k_0+=     0.00599977571 * math.cos( 0.00000000000 +        0.00000000000*t)
      neptune_k_0+=     0.00343810387 * math.cos( 0.59989432818 +      529.69096509460*t)
      neptune_k_0+=     0.00136232980 * math.cos( 5.31190360139 +       38.13303563780*t)
      neptune_k_0+=     0.00131042161 * math.cos( 2.54238248127 +      453.42489381900*t)
      neptune_k_0+=     0.00076137558 * math.cos( 0.87421757435 +      213.29909543800*t)
      neptune_k_0+=     0.00059960933 * math.cos( 5.13746031010 +        1.48447270830*t)
      neptune_k_0+=     0.00034074986 * math.cos( 2.81681245358 +      137.03302416240*t)
      neptune_k_0+=     0.00016663303 * math.cos( 0.94954464976 +     1059.38193018920*t)
      neptune_k_0+=     0.00015893727 * math.cos( 3.92171062449 +        2.96894541660*t)
      neptune_k_0+=     0.00008693527 * math.cos( 5.48153407016 +       74.78159856730*t)
      neptune_k_0+=     0.00005959757 * math.cos( 2.89195740420 +      983.11585891360*t)
      neptune_k_0+=     0.00006853410 * math.cos( 4.45483856472 +       35.16409022120*t)
      neptune_k_0+=     0.00004237518 * math.cos( 0.09987056189 +      426.59819087600*t)
      neptune_k_0+=     0.00001961981 * math.cos( 4.32459826389 +      415.29185818120*t)
      neptune_k_0+=     0.00002537316 * math.cos( 4.62456789470 +       71.81265315070*t)
      neptune_k_0+=     0.00002501595 * math.cos( 1.75321813791 +     6283.07584999140*t)
      neptune_k_0+=     0.00002367417 * math.cos( 3.17748419570 +    10213.28554621100*t)
      neptune_k_0+=     0.00001787820 * math.cos( 3.54792002715 +      491.55792945680*t)
      neptune_k_0+=     0.00001660368 * math.cos( 2.04259826446 +      350.33211960040*t)
      neptune_k_0+=     0.00001253789 * math.cos( 2.69174021181 +        4.45341812490*t)
      neptune_k_0+=     0.00001339300 * math.cos( 1.45875695517 +      454.90936652730*t)
      neptune_k_0+=     0.00001331545 * math.cos( 0.48693991119 +      451.94042111070*t)
      neptune_k_0+=     0.00001146706 * math.cos( 5.69699174151 +       33.67961751290*t)
      neptune_k_0+=     0.00001205329 * math.cos( 4.79465507600 +      108.46121608020*t)

      return neptune_k_0
   

   @staticmethod
   def neptune_h(t):
      neptune_h_0=0.0
      neptune_h_0+=     0.00669242413 * math.cos( 0.00000000000 +        0.00000000000*t)
      neptune_h_0+=     0.00344034784 * math.cos( 5.31201105782 +      529.69096509460*t)
      neptune_h_0+=     0.00136278888 * math.cos( 3.74103613444 +       38.13303563780*t)
      neptune_h_0+=     0.00131043136 * math.cos( 4.11313570675 +      453.42489381900*t)
      neptune_h_0+=     0.00076068364 * math.cos( 5.58664660018 +      213.29909543800*t)
      neptune_h_0+=     0.00059736086 * math.cos( 3.56479788019 +        1.48447270830*t)
      neptune_h_0+=     0.00034070791 * math.cos( 4.38749299404 +      137.03302416240*t)
      neptune_h_0+=     0.00016671327 * math.cos( 5.66175544286 +     1059.38193018920*t)
      neptune_h_0+=     0.00015834646 * math.cos( 2.35068672532 +        2.96894541660*t)
      neptune_h_0+=     0.00008735589 * math.cos( 3.91135863579 +       74.78159856730*t)
      neptune_h_0+=     0.00005954962 * math.cos( 4.46229789809 +      983.11585891360*t)
      neptune_h_0+=     0.00006868580 * math.cos( 6.02685250841 +       35.16409022120*t)
      neptune_h_0+=     0.00004234919 * math.cos( 4.81228455925 +      426.59819087600*t)
      neptune_h_0+=     0.00001961993 * math.cos( 5.89537496236 +      415.29185818120*t)
      neptune_h_0+=     0.00002507622 * math.cos( 6.19465876991 +       71.81265315070*t)
      neptune_h_0+=     0.00002501304 * math.cos( 0.18292649334 +     6283.07584999140*t)
      neptune_h_0+=     0.00002367379 * math.cos( 1.60551412353 +    10213.28554621100*t)
      neptune_h_0+=     0.00001677116 * math.cos( 5.77508123167 +      491.55792945680*t)
      neptune_h_0+=     0.00001685035 * math.cos( 3.61864095194 +      350.33211960040*t)
      neptune_h_0+=     0.00001246945 * math.cos( 1.12070201833 +        4.45341812490*t)
      neptune_h_0+=     0.00001340035 * math.cos( 3.02916883266 +      454.90936652730*t)
      neptune_h_0+=     0.00001331561 * math.cos( 2.05769294802 +      451.94042111070*t)
      neptune_h_0+=     0.00001142076 * math.cos( 0.98492427695 +       33.67961751290*t)
      neptune_h_0+=     0.00001184075 * math.cos( 0.08056022972 +      108.46121608020*t)
      neptune_h_0+=     0.00001135355 * math.cos( 4.85626290641 +       36.64856292950*t)

      neptune_h_1=0.0
      neptune_h_1+=     0.00007824336 * math.cos( 0.00000000000 +        0.00000000000*t)
      neptune_h_1=neptune_h_1 * t

      return neptune_h_0+neptune_h_1
   

   @staticmethod
   def neptune_q(t):
      neptune_q_0=0.0
      neptune_q_0+=     0.01029147819 * math.cos( 3.14159265359 +        0.00000000000*t)
      neptune_q_0+=     0.00001010070 * math.cos( 1.61174508752 +      491.55792945680*t)

      return neptune_q_0
   

   @staticmethod
   def neptune_p(t):
      neptune_p_0=0.0
      neptune_p_0+=     0.01151683985 * math.cos( 0.00000000000 +        0.00000000000*t)
      neptune_p_0+=     0.00001009343 * math.cos( 3.18233913691 +      491.55792945680*t)

      neptune_p_1=0.0
      neptune_p_1+=     0.00002575536 * math.cos( 0.00000000000 +        0.00000000000*t)
      neptune_p_1=neptune_p_1 * t

      return neptune_p_0+neptune_p_1
   

   @staticmethod
   def saturn_a(t):
      saturn_a_0=0.0
      saturn_a_0+=     9.55490959574 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_a_0+=     0.03363448736 * math.cos( 6.00973673460 +      316.39186965660*t)
      saturn_a_0+=     0.00354492417 * math.cos( 5.81482665415 +      103.09277421860*t)
      saturn_a_0+=     0.00289062242 * math.cos( 3.01816520038 +        7.11354700080*t)
      saturn_a_0+=     0.00308461590 * math.cos( 2.55488166399 +      632.78373931320*t)
      saturn_a_0+=     0.00149912686 * math.cos( 3.86270340354 +      419.48464387520*t)
      saturn_a_0+=     0.00143605062 * math.cos( 4.85917505070 +      213.29909543800*t)
      saturn_a_0+=     0.00146816895 * math.cos( 0.07437685257 +      846.08283475120*t)
      saturn_a_0+=     0.00142075017 * math.cos( 2.32273369924 +      949.17560896980*t)
      saturn_a_0+=     0.00073412340 * math.cos( 3.55846055429 +      735.87651353180*t)
      saturn_a_0+=     0.00081821669 * math.cos( 3.45006412768 +      110.20632121940*t)
      saturn_a_0+=     0.00054284469 * math.cos( 5.12517048023 +      206.18554843720*t)
      saturn_a_0+=     0.00067160409 * math.cos( 2.06145646779 +     1265.56747862640*t)
      saturn_a_0+=     0.00038450594 * math.cos( 3.28109764968 +     1052.26838318840*t)
      saturn_a_0+=     0.00040372154 * math.cos( 6.12336876226 +      309.27832265580*t)
      saturn_a_0+=     0.00037861360 * math.cos( 2.71073622362 +      323.50541665740*t)
      saturn_a_0+=     0.00032196433 * math.cos( 1.80319862777 +     1581.95934828300*t)
      saturn_a_0+=     0.00024471393 * math.cos( 4.81178790264 +      522.57741809380*t)
      saturn_a_0+=     0.00020860007 * math.cos( 3.01028862668 +     1368.66025284500*t)
      saturn_a_0+=     0.00018549188 * math.cos( 0.87944999842 +     6069.77675455340*t)
      saturn_a_0+=     0.00013849443 * math.cos( 4.65107330724 +      838.96928775040*t)
      saturn_a_0+=     0.00017342295 * math.cos( 2.30290130287 +     9999.98645077300*t)
      saturn_a_0+=     0.00015605088 * math.cos( 1.55158323786 +     1898.35121793960*t)
      saturn_a_0+=     0.00011535604 * math.cos( 2.74021432418 +     1685.05212250160*t)
      saturn_a_0+=     0.00013277748 * math.cos( 3.34520712627 +      277.03499374140*t)
      saturn_a_0+=     0.00009007760 * math.cos( 0.28957280814 +     1375.77379984580*t)
      saturn_a_0+=     0.00007822638 * math.cos( 4.22985906112 +     1155.36115740700*t)
      saturn_a_0+=     0.00007636461 * math.cos( 0.08643307957 +       95.97922721780*t)
      saturn_a_0+=     0.00006346406 * math.cos( 2.47617493807 +     2001.44399215820*t)
      saturn_a_0+=     0.00007616638 * math.cos( 1.30738426041 +     2214.74308759620*t)
      saturn_a_0+=     0.00005411083 * math.cos( 2.87617167843 +       14.22709400160*t)
      saturn_a_0+=     0.00004759551 * math.cos( 3.93823562434 +     1471.75302706360*t)
      saturn_a_0+=     0.00005202303 * math.cos( 3.14859040562 +     1478.86657406440*t)
      saturn_a_0+=     0.00005139135 * math.cos( 5.54038887050 +      639.89728631400*t)
      saturn_a_0+=     0.00004577761 * math.cos( 0.35760617578 +      742.99006053260*t)
      saturn_a_0+=     0.00004322446 * math.cos( 1.13068618048 +      529.69096509460*t)
      saturn_a_0+=     0.00004908210 * math.cos( 0.72709275611 +       63.73589830340*t)
      saturn_a_0+=     0.00005101971 * math.cos( 3.30359991147 +     1162.47470440780*t)
      saturn_a_0+=     0.00005415736 * math.cos( 5.03747123641 +      415.55249061210*t)
      saturn_a_0+=     0.00004577121 * math.cos( 4.42047324112 +       11.04570026390*t)
      saturn_a_0+=     0.00003484692 * math.cos( 2.21589500680 +     2317.83586181480*t)
      saturn_a_0+=     0.00003885200 * math.cos( 2.89854059721 +     1795.25844372100*t)
      saturn_a_0+=     0.00003192440 * math.cos( 4.02425427950 +      412.37109687440*t)
      saturn_a_0+=     0.00003964442 * math.cos( 5.34743947465 +      956.28915597060*t)
      saturn_a_0+=     0.00003191130 * math.cos( 1.49704278283 +      202.25339517410*t)
      saturn_a_0+=     0.00003185981 * math.cos( 2.91148783391 +      426.59819087600*t)
      saturn_a_0+=     0.00003730627 * math.cos( 1.06943140301 +     2531.13495725280*t)
      saturn_a_0+=     0.00003038127 * math.cos( 0.03748334373 +     1059.38193018920*t)
      saturn_a_0+=     0.00002908609 * math.cos( 3.65144679149 +     1788.14489672020*t)
      saturn_a_0+=     0.00003520766 * math.cos( 1.64836730035 +      138.51749687070*t)
      saturn_a_0+=     0.00002574202 * math.cos( 2.64518630194 +     2111.65031337760*t)
      saturn_a_0+=     0.00002231204 * math.cos( 3.70941707745 +      728.76296653100*t)
      saturn_a_0+=     0.00002556787 * math.cos( 2.77336009184 +      625.67019231240*t)
      saturn_a_0+=     0.00003017391 * math.cos( 3.69181538175 +      350.33211960040*t)
      saturn_a_0+=     0.00002510095 * math.cos( 5.09716024446 +     1272.68102562720*t)
      saturn_a_0+=     0.00002180444 * math.cos( 2.56104191923 +      942.06206196900*t)
      saturn_a_0+=     0.00001907070 * math.cos( 1.95952356206 +     2634.22773147140*t)
      saturn_a_0+=     0.00001876330 * math.cos( 3.07619330668 +      853.19638175200*t)
      saturn_a_0+=     0.00001772523 * math.cos( 3.36928951644 +     2104.53676637680*t)
      saturn_a_0+=     0.00002318289 * math.cos( 0.44379732912 +      554.06998748280*t)
      saturn_a_0+=     0.00001720664 * math.cos( 3.16850728820 +      340.77089204480*t)
      saturn_a_0+=     0.00001763236 * math.cos( 5.27023251258 +      199.07200143640*t)
      saturn_a_0+=     0.00001812532 * math.cos( 0.02345178075 +        3.93215326310*t)
      saturn_a_0+=     0.00001496629 * math.cos( 3.43523329566 +     1045.15483618760*t)
      saturn_a_0+=     0.00001830544 * math.cos( 0.83908078121 +     2847.52682690940*t)
      saturn_a_0+=     0.00001609936 * math.cos( 2.39037566076 +     2428.04218303420*t)
      saturn_a_0+=     0.00001424893 * math.cos( 3.20459836704 +      117.31986822020*t)
      saturn_a_0+=     0.00001374324 * math.cos( 2.32562998878 +     1258.45393162560*t)
      saturn_a_0+=     0.00001634105 * math.cos( 5.33009798117 +     3127.31333126180*t)
      saturn_a_0+=     0.00001499860 * math.cos( 4.84564304198 +     1589.07289528380*t)
      saturn_a_0+=     0.00001549891 * math.cos( 3.53099004581 +    25874.60404613620*t)
      saturn_a_0+=     0.00001073545 * math.cos( 3.09127102485 +     2420.92863603340*t)
      saturn_a_0+=     0.00001039659 * math.cos( 1.70722458368 +     2950.61960112800*t)
      saturn_a_0+=     0.00001144205 * math.cos( 5.63300199931 +     1692.16566950240*t)
      saturn_a_0+=     0.00001065404 * math.cos( 1.63151081253 +     5856.47765911540*t)
      saturn_a_0+=     0.00001010817 * math.cos( 2.14079742612 +      692.58748435350*t)

      saturn_a_1=0.0
      saturn_a_1+=     0.00115108584 * math.cos( 1.31913907888 +        7.11354700080*t)
      saturn_a_1+=     0.00020477409 * math.cos( 5.54887034001 +      419.48464387520*t)
      saturn_a_1+=     0.00019395929 * math.cos( 3.30487092881 +      213.29909543800*t)
      saturn_a_1+=     0.00017963494 * math.cos( 1.85653949491 +      110.20632121940*t)
      saturn_a_1+=     0.00016133051 * math.cos( 1.54311529056 +      309.27832265580*t)
      saturn_a_1+=     0.00014944585 * math.cos( 1.01717765228 +      323.50541665740*t)
      saturn_a_1+=     0.00014543221 * math.cos( 0.53828819496 +      206.18554843720*t)
      saturn_a_1+=     0.00009998081 * math.cos( 5.28159092946 +      735.87651353180*t)
      saturn_a_1+=     0.00008158206 * math.cos( 1.61713789294 +      103.09277421860*t)
      saturn_a_1+=     0.00007440338 * math.cos( 5.50519123677 +      846.08283475120*t)
      saturn_a_1+=     0.00006615475 * math.cos( 0.24404793981 +      522.57741809380*t)
      saturn_a_1+=     0.00005231753 * math.cos( 5.01328016493 +     1052.26838318840*t)
      saturn_a_1+=     0.00004317657 * math.cos( 1.17772760990 +       14.22709400160*t)
      saturn_a_1+=     0.00003777478 * math.cos( 0.13473525815 +      838.96928775040*t)
      saturn_a_1+=     0.00002815592 * math.cos( 4.75042687464 +     1368.66025284500*t)
      saturn_a_1+=     0.00003432323 * math.cos( 1.89093890567 +       95.97922721780*t)
      saturn_a_1+=     0.00002118165 * math.cos( 5.95564480205 +     1155.36115740700*t)
      saturn_a_1+=     0.00002070562 * math.cos( 3.85273193471 +      639.89728631400*t)
      saturn_a_1+=     0.00001709753 * math.cos( 5.71449088168 +      412.37109687440*t)
      saturn_a_1+=     0.00001567390 * math.cos( 4.48491632282 +     1685.05212250160*t)
      saturn_a_1+=     0.00002138957 * math.cos( 3.14159265359 +        0.00000000000*t)
      saturn_a_1+=     0.00001594273 * math.cos( 3.64295931777 +      956.28915597060*t)
      saturn_a_1+=     0.00001192975 * math.cos( 5.41193208721 +      728.76296653100*t)
      saturn_a_1+=     0.00001289901 * math.cos( 5.66421564917 +     1471.75302706360*t)
      saturn_a_1+=     0.00001324172 * math.cos( 4.84316362024 +      742.99006053260*t)
      saturn_a_1+=     0.00001176712 * math.cos( 0.68336133189 +      199.07200143640*t)
      saturn_a_1+=     0.00001000522 * math.cos( 4.42966424505 +      625.67019231240*t)
      saturn_a_1+=     0.00001004969 * math.cos( 3.38841558218 +     1272.68102562720*t)
      saturn_a_1=saturn_a_1 * t

      saturn_a_2=0.0
      saturn_a_2+=     0.00023754277 * math.cos( 5.89931397638 +        7.11354700080*t)
      saturn_a_2+=     0.00003334839 * math.cos( 3.25589178410 +      309.27832265580*t)
      saturn_a_2+=     0.00003067531 * math.cos( 5.60883291989 +      323.50541665740*t)
      saturn_a_2+=     0.00002367005 * math.cos( 0.22585649760 +      110.20632121940*t)
      saturn_a_2+=     0.00001751432 * math.cos( 5.75969476921 +       14.22709400160*t)
      saturn_a_2+=     0.00002021192 * math.cos( 2.25480844844 +      206.18554843720*t)
      saturn_a_2+=     0.00001444070 * math.cos( 1.04324959010 +      419.48464387520*t)
      saturn_a_2+=     0.00001317805 * math.cos( 1.65305610809 +      213.29909543800*t)
      saturn_a_2+=     0.00001756009 * math.cos( 4.43464983610 +      316.39186965660*t)
      saturn_a_2=saturn_a_2 * t * t

      saturn_a_3=0.0
      saturn_a_3+=     0.00003271907 * math.cos( 4.17756548130 +        7.11354700080*t)
      saturn_a_3=saturn_a_3 * t * t * t

      return saturn_a_0+saturn_a_1+saturn_a_2+saturn_a_3
   

   @staticmethod
   def saturn_l(t):
      saturn_l_0=0.0
      saturn_l_0+=     0.87401675650 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_l_0+=     0.01411655077 * math.cos( 4.58553469006 +        7.11354700080*t)
      saturn_l_0+=     0.00259784547 * math.cos( 4.43343036691 +      316.39186965660*t)
      saturn_l_0+=     0.00149861955 * math.cos( 0.26851062811 +      103.09277421860*t)
      saturn_l_0+=     0.00071179955 * math.cos( 4.15641496284 +      632.78373931320*t)
      saturn_l_0+=     0.00031452707 * math.cos( 5.46081855509 +      419.48464387520*t)
      saturn_l_0+=     0.00026548090 * math.cos( 3.88757160092 +      949.17560896980*t)
      saturn_l_0+=     0.00016678500 * math.cos( 0.46554866763 +      206.18554843720*t)
      saturn_l_0+=     0.00012478276 * math.cos( 4.43427037492 +      110.20632121940*t)
      saturn_l_0+=     0.00014648090 * math.cos( 0.80489143062 +      529.69096509460*t)
      saturn_l_0+=     0.00012249591 * math.cos( 5.17809413714 +      735.87651353180*t)
      saturn_l_0+=     0.00014601573 * math.cos( 1.56514416532 +        3.93215326310*t)
      saturn_l_0+=     0.00013067003 * math.cos( 4.44777987188 +       14.22709400160*t)
      saturn_l_0+=     0.00012172375 * math.cos( 2.85599565676 +      213.29909543800*t)
      saturn_l_0+=     0.00012994507 * math.cos( 5.98000018071 +       11.04570026390*t)
      saturn_l_0+=     0.00010143831 * math.cos( 4.81233412109 +      846.08283475120*t)
      saturn_l_0+=     0.00011053979 * math.cos( 3.62184165245 +     1265.56747862640*t)
      saturn_l_0+=     0.00005836217 * math.cos( 4.89069547157 +     1052.26838318840*t)
      saturn_l_0+=     0.00005226823 * math.cos( 4.20773220180 +        3.18139373770*t)
      saturn_l_0+=     0.00004901096 * math.cos( 3.36203493350 +     1581.95934828300*t)
      saturn_l_0+=     0.00003772571 * math.cos( 0.19095255187 +      522.57741809380*t)
      saturn_l_0+=     0.00003696376 * math.cos( 2.25340821564 +       63.73589830340*t)
      saturn_l_0+=     0.00002971924 * math.cos( 4.61344086907 +     1368.66025284500*t)
      saturn_l_0+=     0.00003154129 * math.cos( 4.91543855458 +      277.03499374140*t)
      saturn_l_0+=     0.00002268759 * math.cos( 0.97085130424 +       95.97922721780*t)
      saturn_l_0+=     0.00002570657 * math.cos( 1.97132584720 +      426.59819087600*t)
      saturn_l_0+=     0.00002596442 * math.cos( 1.15530311275 +      323.50541665740*t)
      saturn_l_0+=     0.00001905306 * math.cos( 6.10909332977 +      838.96928775040*t)
      saturn_l_0+=     0.00002247112 * math.cos( 3.10725805492 +     1898.35121793960*t)
      saturn_l_0+=     0.00002115472 * math.cos( 3.22612886457 +      138.51749687070*t)
      saturn_l_0+=     0.00001552009 * math.cos( 4.34051151899 +     1685.05212250160*t)
      saturn_l_0+=     0.00001843741 * math.cos( 5.59184716219 +     6069.77675455340*t)
      saturn_l_0+=     0.00001756850 * math.cos( 0.73191225121 +     9999.98645077300*t)
      saturn_l_0+=     0.00001401273 * math.cos( 0.85436221114 +      639.89728631400*t)
      saturn_l_0+=     0.00001111089 * math.cos( 5.15881839411 +     1162.47470440780*t)
      saturn_l_0+=     0.00001057378 * math.cos( 5.86843421260 +     1155.36115740700*t)
      saturn_l_0+=     0.00001000292 * math.cos( 3.14098540005 +      202.25339517410*t)
      saturn_l_0+=     0.00001058307 * math.cos( 1.79920590132 +      742.99006053260*t)
      saturn_l_0+=     0.00001239001 * math.cos( 1.17392796131 +     1059.38193018920*t)
      saturn_l_0+=     0.00001048677 * math.cos( 4.52538911077 +      309.27832265580*t)
      saturn_l_0+=     0.00001086719 * math.cos( 4.18346682205 +        2.44768055480*t)
      saturn_l_0+=     0.00001050929 * math.cos( 2.85814270959 +     2214.74308759620*t)
      saturn_l_0+=     0.00001054337 * math.cos( 0.32336241328 +      415.55249061210*t)

      saturn_l_1=0.0
      saturn_l_1+=   213.29909543800 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_l_1+=     0.00563352798 * math.cos( 2.88478561660 +        7.11354700080*t)
      saturn_l_1+=     0.00014171331 * math.cos( 1.28319722079 +      103.09277421860*t)
      saturn_l_1+=     0.00010437362 * math.cos( 2.74781046876 +       14.22709400160*t)
      saturn_l_1+=     0.00004293054 * math.cos( 0.84432021204 +      419.48464387520*t)
      saturn_l_1+=     0.00004472550 * math.cos( 2.13913005932 +      206.18554843720*t)
      saturn_l_1+=     0.00003766525 * math.cos( 3.64960431172 +        3.93215326310*t)
      saturn_l_1+=     0.00003384387 * math.cos( 2.41681908344 +        3.18139373770*t)
      saturn_l_1+=     0.00002144886 * math.cos( 2.60845915192 +      110.20632121940*t)
      saturn_l_1+=     0.00001951948 * math.cos( 3.56235240442 +       11.04570026390*t)
      saturn_l_1+=     0.00001670947 * math.cos( 0.57244091662 +      735.87651353180*t)
      saturn_l_1+=     0.00001423856 * math.cos( 1.60681848195 +      213.29909543800*t)
      saturn_l_1+=     0.00001409240 * math.cos( 4.77172107316 +      529.69096509460*t)
      saturn_l_1+=     0.00001048311 * math.cos( 5.74264387213 +      323.50541665740*t)
      saturn_l_1+=     0.00001017683 * math.cos( 1.87434917863 +      522.57741809380*t)
      saturn_l_1=saturn_l_1 * t

      saturn_l_2=0.0
      saturn_l_2+=     0.00116235667 * math.cos( 1.17971682406 +        7.11354700080*t)
      saturn_l_2+=     0.00036659741 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_l_2+=     0.00004235353 * math.cos( 1.04508642603 +       14.22709400160*t)
      saturn_l_2+=     0.00001020168 * math.cos( 0.63355848198 +        3.18139373770*t)
      saturn_l_2=saturn_l_2 * t * t

      saturn_l_3=0.0
      saturn_l_3+=     0.00016010484 * math.cos( 5.73932776276 +        7.11354700080*t)
      saturn_l_3+=     0.00001153866 * math.cos( 5.61897587419 +       14.22709400160*t)
      saturn_l_3=saturn_l_3 * t * t * t

      saturn_l_4=0.0
      saturn_l_4+=     0.00001658821 * math.cos( 3.99816906699 +        7.11354700080*t)
      saturn_l_4=saturn_l_4 * t * t * t * t

      return saturn_l_0+saturn_l_1+saturn_l_2+saturn_l_3+saturn_l_4
   

   @staticmethod
   def saturn_k(t):
      saturn_k_0=0.0
      saturn_k_0+=     0.00296003595 * math.cos( 3.14159265359 +        0.00000000000*t)
      saturn_k_0+=     0.00155326496 * math.cos( 5.16402515606 +        7.11354700080*t)
      saturn_k_0+=     0.00197268763 * math.cos( 0.59616692002 +      529.69096509460*t)
      saturn_k_0+=     0.00126322249 * math.cos( 0.86230560136 +      213.29909543800*t)
      saturn_k_0+=     0.00065050158 * math.cos( 5.14656256627 +      103.09277421860*t)
      saturn_k_0+=     0.00045181084 * math.cos( 1.69923556056 +      419.48464387520*t)
      saturn_k_0+=     0.00031292923 * math.cos( 5.75285406117 +      110.20632121940*t)
      saturn_k_0+=     0.00027272443 * math.cos( 3.00890883920 +      206.18554843720*t)
      saturn_k_0+=     0.00016225491 * math.cos( 1.42799166910 +      735.87651353180*t)
      saturn_k_0+=     0.00012474180 * math.cos( 1.09305375439 +      316.39186965660*t)
      saturn_k_0+=     0.00009459610 * math.cos( 5.65507805945 +      426.59819087600*t)
      saturn_k_0+=     0.00008447407 * math.cos( 2.62011176262 +      522.57741809380*t)
      saturn_k_0+=     0.00009010523 * math.cos( 0.93814801735 +     1059.38193018920*t)
      saturn_k_0+=     0.00005949950 * math.cos( 5.31181339398 +      632.78373931320*t)
      saturn_k_0+=     0.00005175953 * math.cos( 2.47945708486 +       11.04570026390*t)
      saturn_k_0+=     0.00006874937 * math.cos( 1.14613721578 +     1052.26838318840*t)
      saturn_k_0+=     0.00003998727 * math.cos( 2.40540369269 +      838.96928775040*t)
      saturn_k_0+=     0.00004686144 * math.cos( 2.46891397169 +       63.73589830340*t)
      saturn_k_0+=     0.00003491448 * math.cos( 3.93248075292 +      309.27832265580*t)
      saturn_k_0+=     0.00002901643 * math.cos( 5.02556493525 +       14.22709400160*t)
      saturn_k_0+=     0.00002995571 * math.cos( 5.22987374446 +       95.97922721780*t)
      saturn_k_0+=     0.00003067391 * math.cos( 0.88647766071 +     1368.66025284500*t)
      saturn_k_0+=     0.00002599790 * math.cos( 4.59077939806 +      323.50541665740*t)
      saturn_k_0+=     0.00002034707 * math.cos( 2.13784947592 +     1155.36115740700*t)
      saturn_k_0+=     0.00001375360 * math.cos( 3.92909866961 +      742.99006053260*t)
      saturn_k_0+=     0.00001432191 * math.cos( 3.73211683760 +      625.67019231240*t)
      saturn_k_0+=     0.00001684438 * math.cos( 3.42782020268 +      846.08283475120*t)
      saturn_k_0+=     0.00001340850 * math.cos( 3.43892164589 +     1162.47470440780*t)
      saturn_k_0+=     0.00001075575 * math.cos( 1.87545739154 +     1471.75302706360*t)
      saturn_k_0+=     0.00001413794 * math.cos( 0.61962547117 +     1685.05212250160*t)
      saturn_k_0+=     0.00001407002 * math.cos( 1.75310748024 +     6283.07584999140*t)
      saturn_k_0+=     0.00001331587 * math.cos( 3.17719333564 +    10213.28554621100*t)
      saturn_k_0+=     0.00001022359 * math.cos( 3.75811763978 +      949.17560896980*t)

      saturn_k_1=0.0
      saturn_k_1+=     0.00529602626 * math.cos( 3.14159265359 +        0.00000000000*t)
      saturn_k_1+=     0.00041825363 * math.cos( 3.46891617076 +        7.11354700080*t)
      saturn_k_1+=     0.00003861305 * math.cos( 4.51435630426 +      110.20632121940*t)
      saturn_k_1+=     0.00003822220 * math.cos( 4.74856256975 +      206.18554843720*t)
      saturn_k_1+=     0.00001940192 * math.cos( 3.33004093540 +       14.22709400160*t)
      saturn_k_1+=     0.00001445541 * math.cos( 3.87182632473 +      426.59819087600*t)
      saturn_k_1+=     0.00001111374 * math.cos( 4.19595906021 +      522.57741809380*t)
      saturn_k_1+=     0.00001198499 * math.cos( 0.65283485226 +       95.97922721780*t)
      saturn_k_1+=     0.00001068601 * math.cos( 4.94949412559 +      316.39186965660*t)
      saturn_k_1=saturn_k_1 * t

      saturn_k_2=0.0
      saturn_k_2+=     0.00030928405 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_k_2+=     0.00005845583 * math.cos( 1.74297057661 +        7.11354700080*t)
      saturn_k_2=saturn_k_2 * t * t

      saturn_k_3=0.0
      saturn_k_3+=     0.00001296215 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_k_3=saturn_k_3 * t * t * t

      return saturn_k_0+saturn_k_1+saturn_k_2+saturn_k_3
   

   @staticmethod
   def saturn_h(t):
      saturn_h_0=0.0
      saturn_h_0+=     0.05542964254 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_h_0+=     0.00154553684 * math.cos( 3.59447132230 +        7.11354700080*t)
      saturn_h_0+=     0.00196887619 * math.cos( 5.31528897782 +      529.69096509460*t)
      saturn_h_0+=     0.00124537423 * math.cos( 5.60295505720 +      213.29909543800*t)
      saturn_h_0+=     0.00068728896 * math.cos( 0.46796586407 +      103.09277421860*t)
      saturn_h_0+=     0.00044695611 * math.cos( 3.26423001884 +      419.48464387520*t)
      saturn_h_0+=     0.00032981260 * math.cos( 4.13131540179 +      110.20632121940*t)
      saturn_h_0+=     0.00026520042 * math.cos( 4.52478837442 +      206.18554843720*t)
      saturn_h_0+=     0.00016256954 * math.cos( 3.02503473426 +      735.87651353180*t)
      saturn_h_0+=     0.00008862147 * math.cos( 4.32059038009 +      522.57741809380*t)
      saturn_h_0+=     0.00009619733 * math.cos( 5.65804295918 +     1059.38193018920*t)
      saturn_h_0+=     0.00008341142 * math.cos( 4.31606267639 +      426.59819087600*t)
      saturn_h_0+=     0.00006887017 * math.cos( 2.77760844184 +     1052.26838318840*t)
      saturn_h_0+=     0.00005195115 * math.cos( 0.91409726646 +       11.04570026390*t)
      saturn_h_0+=     0.00004973295 * math.cos( 2.43801254153 +      316.39186965660*t)
      saturn_h_0+=     0.00004310940 * math.cos( 0.63154377287 +      632.78373931320*t)
      saturn_h_0+=     0.00003981833 * math.cos( 3.98208427033 +      838.96928775040*t)
      saturn_h_0+=     0.00003543754 * math.cos( 5.51791276866 +      309.27832265580*t)
      saturn_h_0+=     0.00004719662 * math.cos( 4.04332030354 +       63.73589830340*t)
      saturn_h_0+=     0.00002892864 * math.cos( 3.45123584181 +       14.22709400160*t)
      saturn_h_0+=     0.00003016338 * math.cos( 0.51522702738 +       95.97922721780*t)
      saturn_h_0+=     0.00003124342 * math.cos( 2.51775310612 +     1368.66025284500*t)
      saturn_h_0+=     0.00002433657 * math.cos( 3.06052361648 +      323.50541665740*t)
      saturn_h_0+=     0.00002014723 * math.cos( 3.69869782746 +     1155.36115740700*t)
      saturn_h_0+=     0.00002154026 * math.cos( 1.83308758095 +      846.08283475120*t)
      saturn_h_0+=     0.00001865955 * math.cos( 1.45632551073 +     1162.47470440780*t)
      saturn_h_0+=     0.00001433129 * math.cos( 5.28852869095 +      625.67019231240*t)
      saturn_h_0+=     0.00001463393 * math.cos( 2.27697571268 +     1685.05212250160*t)
      saturn_h_0+=     0.00001059846 * math.cos( 3.42145576578 +     1471.75302706360*t)
      saturn_h_0+=     0.00001406014 * math.cos( 0.18303643712 +     6283.07584999140*t)
      saturn_h_0+=     0.00001332016 * math.cos( 1.60585238019 +    10213.28554621100*t)
      saturn_h_0+=     0.00001116994 * math.cos( 3.87361907926 +      949.17560896980*t)
      saturn_h_0+=     0.00001014997 * math.cos( 1.23700809353 +     1478.86657406440*t)

      saturn_h_1=0.0
      saturn_h_1+=     0.00375593887 * math.cos( 3.14159265359 +        0.00000000000*t)
      saturn_h_1+=     0.00041501368 * math.cos( 1.90158625579 +        7.11354700080*t)
      saturn_h_1+=     0.00004266149 * math.cos( 2.73559155724 +      110.20632121940*t)
      saturn_h_1+=     0.00003540921 * math.cos( 6.15678987566 +      206.18554843720*t)
      saturn_h_1+=     0.00001933431 * math.cos( 1.75458256507 +       14.22709400160*t)
      saturn_h_1+=     0.00001282809 * math.cos( 6.14149672159 +      522.57741809380*t)
      saturn_h_1+=     0.00001308124 * math.cos( 0.93411525898 +      316.39186965660*t)
      saturn_h_1+=     0.00001210043 * math.cos( 2.22093790004 +       95.97922721780*t)
      saturn_h_1+=     0.00001104707 * math.cos( 3.00012484887 +      426.59819087600*t)
      saturn_h_1=saturn_h_1 * t

      saturn_h_2=0.0
      saturn_h_2+=     0.00031990236 * math.cos( 3.14159265359 +        0.00000000000*t)
      saturn_h_2+=     0.00005775783 * math.cos( 0.17981518193 +        7.11354700080*t)
      saturn_h_2=saturn_h_2 * t * t

      saturn_h_3=0.0
      saturn_h_3+=     0.00001598633 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_h_3=saturn_h_3 * t * t * t

      return saturn_h_0+saturn_h_1+saturn_h_2+saturn_h_3
   

   @staticmethod
   def saturn_q(t):
      saturn_q_0=0.0
      saturn_q_0+=     0.00871747436 * math.cos( 3.14159265359 +        0.00000000000*t)
      saturn_q_0+=     0.00002058688 * math.cos( 5.23320611640 +        7.11354700080*t)

      saturn_q_1=0.0
      saturn_q_1+=     0.00080171499 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_q_1=saturn_q_1 * t

      saturn_q_2=0.0
      saturn_q_2+=     0.00004142282 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_q_2=saturn_q_2 * t * t

      return saturn_q_0+saturn_q_1+saturn_q_2
   

   @staticmethod
   def saturn_p(t):
      saturn_p_0=0.0
      saturn_p_0+=     0.01989147301 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_p_0+=     0.00002063161 * math.cos( 3.60620665217 +        7.11354700080*t)

      saturn_p_1=0.0
      saturn_p_1+=     0.00059439766 * math.cos( 0.00000000000 +        0.00000000000*t)
      saturn_p_1=saturn_p_1 * t

      saturn_p_2=0.0
      saturn_p_2+=     0.00005235117 * math.cos( 3.14159265359 +        0.00000000000*t)
      saturn_p_2=saturn_p_2 * t * t

      return saturn_p_0+saturn_p_1+saturn_p_2
   

   @staticmethod
   def uranus_a(t):
      uranus_a_0=0.0
      uranus_a_0+=    19.21844606178 * math.cos( 0.00000000000 +        0.00000000000*t)
      uranus_a_0+=     0.08030476240 * math.cos( 1.40140954803 +      454.90936652730*t)
      uranus_a_0+=     0.02068375131 * math.cos( 1.67626096637 +      138.51749687070*t)
      uranus_a_0+=     0.00406413575 * math.cos( 5.21303965129 +      380.12776796000*t)
      uranus_a_0+=     0.00365190162 * math.cos( 1.75064255586 +      984.60033162190*t)
      uranus_a_0+=     0.00391818405 * math.cos( 2.05935807638 +        1.48447270830*t)
      uranus_a_0+=     0.00313720406 * math.cos( 2.19852745462 +       74.78159856730*t)
      uranus_a_0+=     0.00148020073 * math.cos( 4.84763548983 +       63.73589830340*t)
      uranus_a_0+=     0.00124336026 * math.cos( 1.34101096123 +       11.04570026390*t)
      uranus_a_0+=     0.00120436873 * math.cos( 0.15931700196 +      277.03499374140*t)
      uranus_a_0+=     0.00102755162 * math.cos( 0.89451486294 +      351.81659230870*t)
      uranus_a_0+=     0.00090078269 * math.cos( 0.33585778387 +       73.29712585900*t)
      uranus_a_0+=     0.00061920970 * math.cos( 3.45818087920 +      456.39383923560*t)
      uranus_a_0+=     0.00045935079 * math.cos( 4.64286711150 +      202.25339517410*t)
      uranus_a_0+=     0.00058841165 * math.cos( 2.48705383463 +      453.42489381900*t)
      uranus_a_0+=     0.00053293996 * math.cos( 0.50995644390 +      109.94568878850*t)
      uranus_a_0+=     0.00051844499 * math.cos( 2.55536031544 +     6208.29425142410*t)
      uranus_a_0+=     0.00050469671 * math.cos( 1.89418222433 +      415.55249061210*t)
      uranus_a_0+=     0.00048838076 * math.cos( 3.97801797335 +    10138.50394764370*t)
      uranus_a_0+=     0.00034892404 * math.cos( 5.75418250485 +      909.81873305460*t)
      uranus_a_0+=     0.00032917894 * math.cos( 0.70483800006 +        2.96894541660*t)
      uranus_a_0+=     0.00036972301 * math.cos( 0.17475135689 +       36.64856292950*t)
      uranus_a_0+=     0.00028704578 * math.cos( 1.39041828806 +       35.16409022120*t)
      uranus_a_0+=     0.00029696881 * math.cos( 0.67903436338 +      146.59425171800*t)
      uranus_a_0+=     0.00021391939 * math.cos( 0.02845030511 +      340.77089204480*t)
      uranus_a_0+=     0.00019478270 * math.cos( 2.10041390560 +     1514.29129671650*t)
      uranus_a_0+=     0.00022997542 * math.cos( 1.53103267798 +      447.79581952650*t)
      uranus_a_0+=     0.00023034340 * math.cos( 4.41961897942 +      462.02291352810*t)
      uranus_a_0+=     0.00020141604 * math.cos( 2.67711439002 +      305.34616939270*t)
      uranus_a_0+=     0.00018767795 * math.cos( 4.43338724151 +      149.56319713460*t)
      uranus_a_0+=     0.00021559916 * math.cos( 3.58530830565 +      554.06998748280*t)
      uranus_a_0+=     0.00012998808 * math.cos( 2.85105295526 +      127.47179660680*t)
      uranus_a_0+=     0.00016880093 * math.cos( 0.84798058480 +      183.24281464750*t)
      uranus_a_0+=     0.00014762015 * math.cos( 1.55212266318 +      145.63104387150*t)
      uranus_a_0+=     0.00015930221 * math.cos( 3.73134883667 +      140.00196957900*t)
      uranus_a_0+=     0.00014478423 * math.cos( 4.94983129790 +      131.40394986990*t)
      uranus_a_0+=     0.00015159970 * math.cos( 2.76239188887 +      137.03302416240*t)
      uranus_a_0+=     0.00010515353 * math.cos( 1.70301075392 +      479.28838891550*t)
      uranus_a_0+=     0.00012687891 * math.cos( 1.58735697797 +       71.81265315070*t)
      uranus_a_0+=     0.00013077660 * math.cos( 4.23675214362 +      381.61224066830*t)
      uranus_a_0+=     0.00011020208 * math.cos( 3.19000442755 +        3.93215326310*t)
      uranus_a_0+=     0.00011013560 * math.cos( 3.54307351200 +      835.03713448730*t)
      uranus_a_0+=     0.00011334332 * math.cos( 5.97963560630 +      316.39186965660*t)
      uranus_a_0+=     0.00009400054 * math.cos( 5.28230095127 +      692.58748435350*t)
      uranus_a_0+=     0.00009781311 * math.cos( 1.01633313183 +      219.89137757700*t)
      uranus_a_0+=     0.00007989550 * math.cos( 1.76877643940 +      108.46121608020*t)
      uranus_a_0+=     0.00008139280 * math.cos( 3.07429274553 +      593.42686339800*t)
      uranus_a_0+=     0.00005558128 * math.cos( 4.45343942123 +      265.98929347750*t)
      uranus_a_0+=     0.00007565892 * math.cos( 1.07047678050 +     1364.72809958190*t)
      uranus_a_0+=     0.00005292312 * math.cos( 3.18563288325 +        9.56122755560*t)
      uranus_a_0+=     0.00005284447 * math.cos( 3.38391584822 +      617.80588578620*t)
      uranus_a_0+=     0.00006001971 * math.cos( 0.01328538618 +      378.64329525170*t)
      uranus_a_0+=     0.00005940367 * math.cos( 0.14725300349 +      565.11568774670*t)
      uranus_a_0+=     0.00005725815 * math.cos( 1.18425005561 +      256.53994050650*t)
      uranus_a_0+=     0.00004993616 * math.cos( 1.94640108019 +      145.10977900970*t)
      uranus_a_0+=     0.00004242318 * math.cos( 3.78803520227 +      344.70304530790*t)
      uranus_a_0+=     0.00004484929 * math.cos( 0.72226959421 +     3265.83082813250*t)
      uranus_a_0+=     0.00003342906 * math.cos( 4.92188150151 +       65.22037101170*t)
      uranus_a_0+=     0.00004144967 * math.cos( 0.70303785867 +      831.10498122420*t)
      uranus_a_0+=     0.00004401244 * math.cos( 5.20484038271 +    26013.12154300690*t)
      uranus_a_0+=     0.00004125871 * math.cos( 0.98003717672 +       52.69019803950*t)
      uranus_a_0+=     0.00002974538 * math.cos( 6.11550996496 +      404.50679034820*t)
      uranus_a_0+=     0.00003441900 * math.cos( 2.62220453188 +       33.67961751290*t)
      uranus_a_0+=     0.00003020651 * math.cos( 0.85527395570 +      391.17346822390*t)
      uranus_a_0+=     0.00003622075 * math.cos( 0.81820459592 +     1087.69310584050*t)
      uranus_a_0+=     0.00002963941 * math.cos( 0.68793608510 +      977.48678462110*t)
      uranus_a_0+=     0.00002666132 * math.cos( 5.06903861250 +      756.32338265690*t)
      uranus_a_0+=     0.00003177071 * math.cos( 2.12223452915 +      181.75834193920*t)
      uranus_a_0+=     0.00003023905 * math.cos( 5.99911376627 +      490.33408917940*t)
      uranus_a_0+=     0.00003374452 * math.cos( 1.35172822834 +      293.18850343600*t)
      uranus_a_0+=     0.00003238153 * math.cos( 4.97184215613 +     1289.94650101460*t)
      uranus_a_0+=     0.00002659333 * math.cos( 2.83464668205 +      983.11585891360*t)
      uranus_a_0+=     0.00002818900 * math.cos( 3.80744526388 +      986.08480433020*t)
      uranus_a_0+=     0.00002730392 * math.cos( 5.78713322924 +        4.45341812490*t)
      uranus_a_0+=     0.00003026812 * math.cos( 2.86723045009 +      604.47256366190*t)
      uranus_a_0+=     0.00002926742 * math.cos( 5.75954860599 +      111.43016149680*t)
      uranus_a_0+=     0.00002285405 * math.cos( 5.88369666833 +       62.25142559510*t)
      uranus_a_0+=     0.00002666466 * math.cos( 3.46267434311 +      241.61027108930*t)
      uranus_a_0+=     0.00002497440 * math.cos( 1.50739311442 +      628.85158605010*t)
      uranus_a_0+=     0.00002757762 * math.cos( 2.67859821585 +      465.95506679120*t)
      uranus_a_0+=     0.00002567379 * math.cos( 3.82445495974 +      451.94042111070*t)
      uranus_a_0+=     0.00002127920 * math.cos( 4.76506016217 +      991.71387862270*t)
      uranus_a_0+=     0.00002382826 * math.cos( 2.07601865522 +      457.87831194390*t)
      uranus_a_0+=     0.00002503340 * math.cos( 1.15805847644 +      760.25553592000*t)
      uranus_a_0+=     0.00002437755 * math.cos( 0.09462956632 +     6133.51265285680*t)
      uranus_a_0+=     0.00002286160 * math.cos( 1.51729619521 +    10063.72234907640*t)
      uranus_a_0+=     0.00002185288 * math.cos( 0.08704708710 +      558.00214074590*t)
      uranus_a_0+=     0.00002457441 * math.cos( 0.26974942497 +       12.53017297220*t)
      uranus_a_0+=     0.00002191880 * math.cos( 3.25202521002 +      443.86366626340*t)
      uranus_a_0+=     0.00002208093 * math.cos( 1.11258359430 +       76.26607127560*t)
      uranus_a_0+=     0.00001939068 * math.cos( 3.50613473107 +       85.82729883120*t)
      uranus_a_0+=     0.00001659166 * math.cos( 1.50290332246 +      543.02428721890*t)
      uranus_a_0+=     0.00002043785 * math.cos( 2.29629591754 +      218.40690486870*t)
      uranus_a_0+=     0.00001559141 * math.cos( 5.26393444399 +      874.39401040250*t)
      uranus_a_0+=     0.00001631375 * math.cos( 3.21025158737 +      767.36908292080*t)
      uranus_a_0+=     0.00001833740 * math.cos( 2.35881785143 +      278.51946644970*t)
      uranus_a_0+=     0.00001833954 * math.cos( 1.23032377815 +      275.55052103310*t)
      uranus_a_0+=     0.00001839887 * math.cos( 2.41449652179 +      969.62247809490*t)
      uranus_a_0+=     0.00001998215 * math.cos( 1.51874856901 +      329.83706636550*t)
      uranus_a_0+=     0.00001630969 * math.cos( 0.04305088147 +      284.14854074220*t)
      uranus_a_0+=     0.00001574883 * math.cos( 2.81434037404 +       70.32818044240*t)
      uranus_a_0+=     0.00001343524 * math.cos( 0.47466714500 +      894.84087952760*t)
      uranus_a_0+=     0.00001614461 * math.cos( 1.74465474119 +      306.83064210100*t)
      uranus_a_0+=     0.00001644295 * math.cos( 4.20035521857 +      771.30123618390*t)
      uranus_a_0+=     0.00001448810 * math.cos( 0.77642344329 +      358.93013930950*t)
      uranus_a_0+=     0.00001665753 * math.cos( 3.35750378382 +      269.92144674060*t)
      uranus_a_0+=     0.00001665496 * math.cos( 2.48866254865 +     1819.63746610920*t)
      uranus_a_0+=     0.00001431799 * math.cos( 1.11504717533 +       70.84944530420*t)
      uranus_a_0+=     0.00001213214 * math.cos( 2.51630720379 +      203.73786788240*t)
      uranus_a_0+=     0.00001176640 * math.cos( 5.99924085122 +      518.64526483070*t)
      uranus_a_0+=     0.00001106945 * math.cos( 2.45059253084 +     2043.98226181110*t)
      uranus_a_0+=     0.00001090992 * math.cos( 1.75846110374 +       56.62235130260*t)
      uranus_a_0+=     0.00001141596 * math.cos( 3.45007547281 +       67.66805156650*t)
      uranus_a_0+=     0.00001121356 * math.cos( 3.97747348620 +       22.09140052780*t)
      uranus_a_0+=     0.00001470376 * math.cos( 2.86944648936 +      184.72728735580*t)
      uranus_a_0+=     0.00001319320 * math.cos( 2.46920131818 +      255.05546779820*t)
      uranus_a_0+=     0.00001175745 * math.cos( 2.54359813462 +       35.42472265210*t)
      uranus_a_0+=     0.00001024449 * math.cos( 3.66634638445 +      209.36694217490*t)
      uranus_a_0+=     0.00001048262 * math.cos( 5.72125675593 +      200.76892246580*t)
      uranus_a_0+=     0.00001170276 * math.cos( 0.55774352633 +      224.34479570190*t)
      uranus_a_0+=     0.00001324437 * math.cos( 3.03887629712 +      221.37585028530*t)
      uranus_a_0+=     0.00001263638 * math.cos( 0.95663861038 +       39.61750834610*t)
      uranus_a_0+=     0.00001213200 * math.cos( 2.60560141797 +      191.20769491020*t)
      uranus_a_0+=     0.00001101963 * math.cos( 2.00743750884 +      387.24131496080*t)
      uranus_a_0+=     0.00001002948 * math.cos( 0.20860179042 +      529.69096509460*t)
      uranus_a_0+=     0.00001104506 * math.cos( 5.19382269060 +      408.43894361130*t)
      uranus_a_0+=     0.00001135575 * math.cos( 2.96083781186 +      414.06801790380*t)
      uranus_a_0+=     0.00001187262 * math.cos( 1.68527478275 +      366.48562929500*t)
      uranus_a_0+=     0.00001164785 * math.cos( 5.34173102494 +      373.01422095920*t)
      uranus_a_0+=     0.00001000535 * math.cos( 3.00278670295 +      106.97674337190*t)
      uranus_a_0+=     0.00001137556 * math.cos( 3.91569154137 +      417.03696332040*t)
      uranus_a_0+=     0.00001042369 * math.cos( 1.78835296097 +      422.66603761290*t)
      uranus_a_0+=     0.00001051862 * math.cos( 3.20890164599 +      258.02441321480*t)

      uranus_a_1=0.0
      uranus_a_1+=     0.00018892174 * math.cos( 5.14166599806 +       11.04570026390*t)
      uranus_a_1+=     0.00018428974 * math.cos( 0.90876002089 +      984.60033162190*t)
      uranus_a_1+=     0.00012155731 * math.cos( 5.07129450662 +      351.81659230870*t)
      uranus_a_1+=     0.00011411513 * math.cos( 0.08109503303 +       63.73589830340*t)
      uranus_a_1+=     0.00009178456 * math.cos( 3.23114420803 +      447.79581952650*t)
      uranus_a_1+=     0.00009196301 * math.cos( 2.71787369185 +      462.02291352810*t)
      uranus_a_1+=     0.00006522823 * math.cos( 0.94154848017 +      380.12776796000*t)
      uranus_a_1+=     0.00005730767 * math.cos( 6.15517032108 +       74.78159856730*t)
      uranus_a_1+=     0.00006431936 * math.cos( 0.17368297794 +        1.48447270830*t)
      uranus_a_1+=     0.00005888953 * math.cos( 6.13448987217 +      145.63104387150*t)
      uranus_a_1+=     0.00005774171 * math.cos( 0.36554818918 +      131.40394986990*t)
      uranus_a_1+=     0.00002960951 * math.cos( 5.18940714206 +        3.93215326310*t)
      uranus_a_1+=     0.00002970471 * math.cos( 1.38398543524 +      202.25339517410*t)
      uranus_a_1+=     0.00001757222 * math.cos( 5.83779207506 +      127.47179660680*t)
      uranus_a_1+=     0.00001966175 * math.cos( 1.25902379202 +     1514.29129671650*t)
      uranus_a_1+=     0.00001397028 * math.cos( 4.30180049174 +      565.11568774670*t)
      uranus_a_1+=     0.00001298191 * math.cos( 3.07363226782 +      340.77089204480*t)
      uranus_a_1+=     0.00001023220 * math.cos( 5.25241363250 +        2.96894541660*t)
      uranus_a_1+=     0.00001009835 * math.cos( 1.54231948299 +      456.39383923560*t)
      uranus_a_1+=     0.00001173350 * math.cos( 5.60143868445 +      344.70304530790*t)
      uranus_a_1=uranus_a_1 * t

      uranus_a_2=0.0
      uranus_a_2+=     0.00001894669 * math.cos( 4.93732568520 +      447.79581952650*t)
      uranus_a_2+=     0.00001897156 * math.cos( 1.01368771445 +      462.02291352810*t)
      uranus_a_2+=     0.00001198486 * math.cos( 5.92364914461 +      984.60033162190*t)
      uranus_a_2+=     0.00001597619 * math.cos( 2.94194190200 +       11.04570026390*t)
      uranus_a_2+=     0.00001216263 * math.cos( 4.42512858481 +      145.63104387150*t)
      uranus_a_2+=     0.00001189319 * math.cos( 2.06463695518 +      131.40394986990*t)
      uranus_a_2+=     0.00001126662 * math.cos( 6.11539656112 +      454.90936652730*t)
      uranus_a_2=uranus_a_2 * t * t

      return uranus_a_0+uranus_a_1+uranus_a_2
   

   @staticmethod
   def uranus_l(t):
      uranus_l_0=0.0
      uranus_l_0+=     5.48129387159 * math.cos( 0.00000000000 +        0.00000000000*t)
      uranus_l_0+=     0.01503941337 * math.cos( 3.62721239702 +        1.48447270830*t)
      uranus_l_0+=     0.00341045477 * math.cos( 6.11377091373 +      454.90936652730*t)
      uranus_l_0+=     0.00075571550 * math.cos( 0.10254572902 +      138.51749687070*t)
      uranus_l_0+=     0.00061937506 * math.cos( 2.26973190883 +        2.96894541660*t)
      uranus_l_0+=     0.00059722283 * math.cos( 2.84455045894 +       11.04570026390*t)
      uranus_l_0+=     0.00018867012 * math.cos( 5.43708395337 +      529.69096509460*t)
      uranus_l_0+=     0.00017129222 * math.cos( 0.18104766503 +      984.60033162190*t)
      uranus_l_0+=     0.00016468518 * math.cos( 5.36717518314 +       63.73589830340*t)
      uranus_l_0+=     0.00014543819 * math.cos( 4.73644575760 +        3.93215326310*t)
      uranus_l_0+=     0.00014437567 * math.cos( 1.91368590597 +       73.29712585900*t)
      uranus_l_0+=     0.00013047912 * math.cos( 1.74402938964 +       36.64856292950*t)
      uranus_l_0+=     0.00012930477 * math.cos( 1.77673119432 +      277.03499374140*t)
      uranus_l_0+=     0.00007275693 * math.cos( 2.94925722754 +       35.16409022120*t)
      uranus_l_0+=     0.00005859500 * math.cos( 3.72301900014 +      380.12776796000*t)
      uranus_l_0+=     0.00006111877 * math.cos( 2.08145057987 +      109.94568878850*t)
      uranus_l_0+=     0.00004280688 * math.cos( 6.19027964445 +       74.78159856730*t)
      uranus_l_0+=     0.00004336166 * math.cos( 6.27925448992 +      202.25339517410*t)
      uranus_l_0+=     0.00004088827 * math.cos( 5.88694542212 +      213.29909543800*t)
      uranus_l_0+=     0.00004429228 * math.cos( 3.45893911136 +      415.55249061210*t)
      uranus_l_0+=     0.00003938215 * math.cos( 5.64258162910 +      351.81659230870*t)
      uranus_l_0+=     0.00003347344 * math.cos( 1.06594762369 +        4.45341812490*t)
      uranus_l_0+=     0.00002849022 * math.cos( 4.62497396881 +        9.56122755560*t)
      uranus_l_0+=     0.00002947374 * math.cos( 2.25120769096 +      146.59425171800*t)
      uranus_l_0+=     0.00002592173 * math.cos( 1.88721711257 +      456.39383923560*t)
      uranus_l_0+=     0.00002537281 * math.cos( 0.91575331225 +      453.42489381900*t)
      uranus_l_0+=     0.00002645235 * math.cos( 0.98456705247 +     6208.29425142410*t)
      uranus_l_0+=     0.00002051032 * math.cos( 1.51771174508 +        0.11187458460*t)
      uranus_l_0+=     0.00002488918 * math.cos( 1.26893631370 +      909.81873305460*t)
      uranus_l_0+=     0.00002508604 * math.cos( 2.40722875719 +    10138.50394764370*t)
      uranus_l_0+=     0.00002120344 * math.cos( 3.14091027042 +       71.81265315070*t)
      uranus_l_0+=     0.00001678162 * math.cos( 1.65932418312 +      340.77089204480*t)
      uranus_l_0+=     0.00001697822 * math.cos( 5.14575670776 +      554.06998748280*t)
      uranus_l_0+=     0.00001248928 * math.cos( 4.47213079744 +      127.47179660680*t)
      uranus_l_0+=     0.00001148235 * math.cos( 0.93360896167 +        3.18139373770*t)
      uranus_l_0+=     0.00001526537 * math.cos( 2.42021066976 +      183.24281464750*t)
      uranus_l_0+=     0.00001241845 * math.cos( 0.91639009863 +        2.44768055480*t)
      uranus_l_0+=     0.00001262396 * math.cos( 0.57960861670 +       38.13303563780*t)
      uranus_l_0+=     0.00001039877 * math.cos( 1.76673081468 +       12.53017297220*t)

      uranus_l_1=0.0
      uranus_l_1+=    74.78159856730 * math.cos( 0.00000000000 +        0.00000000000*t)
      uranus_l_1+=     0.00024451511 * math.cos( 1.71261369505 +        1.48447270830*t)
      uranus_l_1+=     0.00008935001 * math.cos( 0.42318902886 +       11.04570026390*t)
      uranus_l_1+=     0.00003879375 * math.cos( 0.46426879091 +        3.93215326310*t)
      uranus_l_1+=     0.00001918566 * math.cos( 1.47255222866 +       63.73589830340*t)
      uranus_l_1+=     0.00001925567 * math.cos( 0.52988692980 +        2.96894541660*t)
      uranus_l_1=uranus_l_1 * t

      return uranus_l_0+uranus_l_1
   

   @staticmethod
   def uranus_k(t):
      uranus_k_0=0.0
      uranus_k_0+=     0.04595132376 * math.cos( 3.14159265359 +        0.00000000000*t)
      uranus_k_0+=     0.00274532742 * math.cos( 0.59960944961 +      529.69096509460*t)
      uranus_k_0+=     0.00209611522 * math.cos( 1.99913587697 +        1.48447270830*t)
      uranus_k_0+=     0.00136013862 * math.cos( 5.48189691557 +       74.78159856730*t)
      uranus_k_0+=     0.00116379910 * math.cos( 2.20321839185 +      380.12776796000*t)
      uranus_k_0+=     0.00061367654 * math.cos( 0.87377399008 +      213.29909543800*t)
      uranus_k_0+=     0.00025955084 * math.cos( 4.91660280043 +       11.04570026390*t)
      uranus_k_0+=     0.00028383762 * math.cos( 2.48454325825 +       63.73589830340*t)
      uranus_k_0+=     0.00015021315 * math.cos( 0.76594621932 +        2.96894541660*t)
      uranus_k_0+=     0.00013311384 * math.cos( 0.94943515364 +     1059.38193018920*t)
      uranus_k_0+=     0.00008609639 * math.cos( 1.39257421698 +      149.56319713460*t)
      uranus_k_0+=     0.00008256877 * math.cos( 5.99479016175 +      305.34616939270*t)
      uranus_k_0+=     0.00007827920 * math.cos( 0.99164832808 +      202.25339517410*t)
      uranus_k_0+=     0.00006933537 * math.cos( 1.31290038532 +       35.16409022120*t)
      uranus_k_0+=     0.00005042578 * math.cos( 2.55138995972 +      909.81873305460*t)
      uranus_k_0+=     0.00005042081 * math.cos( 1.63759327657 +      454.90936652730*t)
      uranus_k_0+=     0.00003197860 * math.cos( 5.45909450367 +      127.47179660680*t)
      uranus_k_0+=     0.00003369044 * math.cos( 0.09586840146 +      426.59819087600*t)
      uranus_k_0+=     0.00002711395 * math.cos( 2.69940614144 +      340.77089204480*t)
      uranus_k_0+=     0.00002576299 * math.cos( 2.16681422946 +       38.13303563780*t)
      uranus_k_0+=     0.00002469608 * math.cos( 1.48073003218 +       71.81265315070*t)
      uranus_k_0+=     0.00001713289 * math.cos( 0.78221760868 +        3.93215326310*t)
      uranus_k_0+=     0.00002046607 * math.cos( 0.39514553771 +      835.03713448730*t)
      uranus_k_0+=     0.00001996913 * math.cos( 1.75347937234 +     6283.07584999140*t)
      uranus_k_0+=     0.00001779124 * math.cos( 6.21057499329 +      604.47256366190*t)
      uranus_k_0+=     0.00001890430 * math.cos( 3.17634406186 +    10213.28554621100*t)
      uranus_k_0+=     0.00001778887 * math.cos( 4.26115437583 +      381.61224066830*t)
      uranus_k_0+=     0.00001718373 * math.cos( 3.28952325407 +      378.64329525170*t)
      uranus_k_0+=     0.00001279999 * math.cos( 3.64452387804 +       52.69019803950*t)
      uranus_k_0+=     0.00001482095 * math.cos( 1.64693904292 +      277.03499374140*t)
      uranus_k_0+=     0.00001152601 * math.cos( 0.84158185752 +      265.98929347750*t)
      uranus_k_0+=     0.00001243311 * math.cos( 5.82960143419 +        4.45341812490*t)
      uranus_k_0+=     0.00001212991 * math.cos( 1.80950191649 +      138.51749687070*t)
      uranus_k_0+=     0.00001148990 * math.cos( 2.55760174097 +       33.67961751290*t)
      uranus_k_0+=     0.00001170872 * math.cos( 0.95700465854 +       39.61750834610*t)
      uranus_k_0+=     0.00001183423 * math.cos( 1.65363141402 +      108.46121608020*t)
      uranus_k_0+=     0.00001066135 * math.cos( 4.39404038232 +      479.28838891550*t)

      uranus_k_1=0.0
      uranus_k_1+=     0.00018344115 * math.cos( 0.00000000000 +        0.00000000000*t)
      uranus_k_1+=     0.00002974032 * math.cos( 2.44820580252 +       11.04570026390*t)
      uranus_k_1=uranus_k_1 * t

      return uranus_k_0+uranus_k_1
   

   @staticmethod
   def uranus_h(t):
      uranus_h_0=0.0
      uranus_h_0+=     0.00563791307 * math.cos( 0.00000000000 +        0.00000000000*t)
      uranus_h_0+=     0.00274676149 * math.cos( 5.31178834743 +      529.69096509460*t)
      uranus_h_0+=     0.00210407426 * math.cos( 0.42744224313 +        1.48447270830*t)
      uranus_h_0+=     0.00136132837 * math.cos( 3.91136489012 +       74.78159856730*t)
      uranus_h_0+=     0.00116288289 * math.cos( 3.77434233468 +      380.12776796000*t)
      uranus_h_0+=     0.00061308823 * math.cos( 5.58629337039 +      213.29909543800*t)
      uranus_h_0+=     0.00025966791 * math.cos( 3.35174050484 +       11.04570026390*t)
      uranus_h_0+=     0.00028214307 * math.cos( 4.05785385739 +       63.73589830340*t)
      uranus_h_0+=     0.00014988819 * math.cos( 5.47840346834 +        2.96894541660*t)
      uranus_h_0+=     0.00013315732 * math.cos( 5.66170904346 +     1059.38193018920*t)
      uranus_h_0+=     0.00009637333 * math.cos( 3.03051043787 +      454.90936652730*t)
      uranus_h_0+=     0.00008613819 * math.cos( 6.10470674406 +      149.56319713460*t)
      uranus_h_0+=     0.00008258031 * math.cos( 1.28279595160 +      305.34616939270*t)
      uranus_h_0+=     0.00007836952 * math.cos( 2.55128696169 +      202.25339517410*t)
      uranus_h_0+=     0.00006885341 * math.cos( 2.88387180772 +       35.16409022120*t)
      uranus_h_0+=     0.00004932965 * math.cos( 4.11649972191 +      909.81873305460*t)
      uranus_h_0+=     0.00003203231 * math.cos( 0.74162702216 +      127.47179660680*t)
      uranus_h_0+=     0.00003366895 * math.cos( 4.80879668305 +      426.59819087600*t)
      uranus_h_0+=     0.00002766958 * math.cos( 3.15085054061 +      138.51749687070*t)
      uranus_h_0+=     0.00002701158 * math.cos( 4.25025054889 +      340.77089204480*t)
      uranus_h_0+=     0.00002643494 * math.cos( 0.59736266096 +       38.13303563780*t)
      uranus_h_0+=     0.00002503832 * math.cos( 3.05546144902 +       71.81265315070*t)
      uranus_h_0+=     0.00001709322 * math.cos( 5.52324273057 +        3.93215326310*t)
      uranus_h_0+=     0.00002023612 * math.cos( 1.96586131259 +      835.03713448730*t)
      uranus_h_0+=     0.00001773957 * math.cos( 3.12382158926 +      277.03499374140*t)
      uranus_h_0+=     0.00001996633 * math.cos( 0.18266518036 +     6283.07584999140*t)
      uranus_h_0+=     0.00001780292 * math.cos( 4.64025442450 +      604.47256366190*t)
      uranus_h_0+=     0.00001888635 * math.cos( 1.60511548878 +    10213.28554621100*t)
      uranus_h_0+=     0.00001788174 * math.cos( 5.83091825172 +      381.61224066830*t)
      uranus_h_0+=     0.00001717023 * math.cos( 4.86065335559 +      378.64329525170*t)
      uranus_h_0+=     0.00001281964 * math.cos( 5.21148314354 +       52.69019803950*t)
      uranus_h_0+=     0.00001152188 * math.cos( 2.40279714309 +      265.98929347750*t)
      uranus_h_0+=     0.00001237727 * math.cos( 4.25933563667 +        4.45341812490*t)
      uranus_h_0+=     0.00001173615 * math.cos( 5.66962620922 +       39.61750834610*t)
      uranus_h_0+=     0.00001140119 * math.cos( 4.12796709847 +       33.67961751290*t)
      uranus_h_0+=     0.00001151876 * math.cos( 3.22140030118 +      108.46121608020*t)
      uranus_h_0+=     0.00001054450 * math.cos( 5.93243913005 +      479.28838891550*t)

      uranus_h_1=0.0
      uranus_h_1+=     0.00074964350 * math.cos( 3.14159265359 +        0.00000000000*t)
      uranus_h_1+=     0.00002977624 * math.cos( 0.88815201141 +       11.04570026390*t)
      uranus_h_1=uranus_h_1 * t

      uranus_h_2=0.0
      uranus_h_2+=     0.00001210200 * math.cos( 0.00000000000 +        0.00000000000*t)
      uranus_h_2=uranus_h_2 * t * t

      return uranus_h_0+uranus_h_1+uranus_h_2
   

   @staticmethod
   def uranus_q(t):
      uranus_q_0=0.0
      uranus_q_0+=     0.00185915075 * math.cos( 0.00000000000 +        0.00000000000*t)

      uranus_q_1=0.0
      uranus_q_1+=     0.00012449382 * math.cos( 3.14159265359 +        0.00000000000*t)
      uranus_q_1=uranus_q_1 * t

      return uranus_q_0+uranus_q_1
   

   @staticmethod
   def uranus_p(t):
      uranus_p_0=0.0
      uranus_p_0+=     0.00648617008 * math.cos( 0.00000000000 +        0.00000000000*t)

      uranus_p_1=0.0
      uranus_p_1+=     0.00011744733 * math.cos( 3.14159265359 +        0.00000000000*t)
      uranus_p_1=uranus_p_1 * t

      return uranus_p_0+uranus_p_1
   

   @staticmethod
   def venus_a(t):
      venus_a_0=0.0
      venus_a_0+=     0.72332981996 * math.cos( 0.00000000000 +        0.00000000000*t)

      return venus_a_0
   

   @staticmethod
   def venus_l(t):
      venus_l_0=0.0
      venus_l_0+=     3.17614669689 * math.cos( 0.00000000000 +        0.00000000000*t)
      venus_l_0+=     0.00002003673 * math.cos( 4.41634412285 +     7860.41939243920*t)
      venus_l_0+=     0.00001974219 * math.cos( 2.99373531667 +     3930.20969621960*t)
      venus_l_0+=     0.00001317126 * math.cos( 5.18666796835 +       26.29831979980*t)
      venus_l_0+=     0.00001609772 * math.cos( 4.24819541738 +     1577.34354244780*t)

      venus_l_1=0.0
      venus_l_1+= 10213.28554621100 * math.cos( 0.00000000000 +        0.00000000000*t)
      venus_l_1=venus_l_1 * t

      return venus_l_0+venus_l_1
   

   @staticmethod
   def venus_k(t):
      venus_k_0=0.0
      venus_k_0+=     0.00449282133 * math.cos( 3.14159265359 +        0.00000000000*t)
      venus_k_0+=     0.00002247401 * math.cos( 1.09074471887 +     1577.34354244780*t)
      venus_k_0+=     0.00001705727 * math.cos( 3.47431815156 +     2352.86615377180*t)

      venus_k_1=0.0
      venus_k_1+=     0.00031259019 * math.cos( 0.00000000000 +        0.00000000000*t)
      venus_k_1=venus_k_1 * t

      return venus_k_0+venus_k_1
   

   @staticmethod
   def venus_h(t):
      venus_h_0=0.0
      venus_h_0+=     0.00506684726 * math.cos( 0.00000000000 +        0.00000000000*t)
      venus_h_0+=     0.00002230653 * math.cos( 2.66432207509 +     1577.34354244780*t)
      venus_h_0+=     0.00001690127 * math.cos( 1.89924451370 +     2352.86615377180*t)

      venus_h_1=0.0
      venus_h_1+=     0.00036121239 * math.cos( 3.14159265359 +        0.00000000000*t)
      venus_h_1=venus_h_1 * t

      venus_h_2=0.0
      venus_h_2+=     0.00001846764 * math.cos( 0.00000000000 +        0.00000000000*t)
      venus_h_2=venus_h_2 * t * t

      return venus_h_0+venus_h_1+venus_h_2
   

   @staticmethod
   def venus_q(t):
      venus_q_0=0.0
      venus_q_0+=     0.00682410142 * math.cos( 0.00000000000 +        0.00000000000*t)

      venus_q_1=0.0
      venus_q_1+=     0.00138133826 * math.cos( 0.00000000000 +        0.00000000000*t)
      venus_q_1=venus_q_1 * t

      venus_q_2=0.0
      venus_q_2+=     0.00001090942 * math.cos( 3.14159265359 +        0.00000000000*t)
      venus_q_2=venus_q_2 * t * t

      return venus_q_0+venus_q_1+venus_q_2
   

   @staticmethod
   def venus_p(t):
      venus_p_0=0.0
      venus_p_0+=     0.02882285775 * math.cos( 0.00000000000 +        0.00000000000*t)

      venus_p_1=0.0
      venus_p_1+=     0.00040384791 * math.cos( 3.14159265359 +        0.00000000000*t)
      venus_p_1=venus_p_1 * t

      venus_p_2=0.0
      venus_p_2+=     0.00006232891 * math.cos( 3.14159265359 +        0.00000000000*t)
      venus_p_2=venus_p_2 * t * t

      return venus_p_0+venus_p_1+venus_p_2
   


