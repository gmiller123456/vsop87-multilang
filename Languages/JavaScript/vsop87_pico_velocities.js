//VSOP87-Multilang http://www.celestialprogramming.com/
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

class vsop87_pico_velocities{
   static getMercury(t){
      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
      temp[0]=this.mercury_a(t) / 365250.0;
      temp[1]=this.mercury_l(t) / 365250.0;
      temp[2]=this.mercury_k(t) / 365250.0;
      temp[3]=this.mercury_h(t) / 365250.0;
      temp[4]=this.mercury_q(t) / 365250.0;
      temp[5]=this.mercury_p(t) / 365250.0;

      return temp;
   }

   static getVenus(t){
      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
      temp[0]=this.venus_a(t) / 365250.0;
      temp[1]=this.venus_l(t) / 365250.0;
      temp[2]=this.venus_k(t) / 365250.0;
      temp[3]=this.venus_h(t) / 365250.0;
      temp[4]=this.venus_q(t) / 365250.0;
      temp[5]=this.venus_p(t) / 365250.0;

      return temp;
   }

   static getEmb(t){
      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
      temp[0]=this.emb_a(t) / 365250.0;
      temp[1]=this.emb_l(t) / 365250.0;
      temp[2]=this.emb_k(t) / 365250.0;
      temp[3]=this.emb_h(t) / 365250.0;
      temp[4]=this.emb_q(t) / 365250.0;
      temp[5]=this.emb_p(t) / 365250.0;

      return temp;
   }

   static getMars(t){
      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
      temp[0]=this.mars_a(t) / 365250.0;
      temp[1]=this.mars_l(t) / 365250.0;
      temp[2]=this.mars_k(t) / 365250.0;
      temp[3]=this.mars_h(t) / 365250.0;
      temp[4]=this.mars_q(t) / 365250.0;
      temp[5]=this.mars_p(t) / 365250.0;

      return temp;
   }

   static getJupiter(t){
      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
      temp[0]=this.jupiter_a(t) / 365250.0;
      temp[1]=this.jupiter_l(t) / 365250.0;
      temp[2]=this.jupiter_k(t) / 365250.0;
      temp[3]=this.jupiter_h(t) / 365250.0;
      temp[4]=this.jupiter_q(t) / 365250.0;
      temp[5]=this.jupiter_p(t) / 365250.0;

      return temp;
   }

   static getSaturn(t){
      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
      temp[0]=this.saturn_a(t) / 365250.0;
      temp[1]=this.saturn_l(t) / 365250.0;
      temp[2]=this.saturn_k(t) / 365250.0;
      temp[3]=this.saturn_h(t) / 365250.0;
      temp[4]=this.saturn_q(t) / 365250.0;
      temp[5]=this.saturn_p(t) / 365250.0;

      return temp;
   }

   static getUranus(t){
      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
      temp[0]=this.uranus_a(t) / 365250.0;
      temp[1]=this.uranus_l(t) / 365250.0;
      temp[2]=this.uranus_k(t) / 365250.0;
      temp[3]=this.uranus_h(t) / 365250.0;
      temp[4]=this.uranus_q(t) / 365250.0;
      temp[5]=this.uranus_p(t) / 365250.0;

      return temp;
   }

   static getNeptune(t){
      var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
      temp[0]=this.neptune_a(t) / 365250.0;
      temp[1]=this.neptune_l(t) / 365250.0;
      temp[2]=this.neptune_k(t) / 365250.0;
      temp[3]=this.neptune_h(t) / 365250.0;
      temp[4]=this.neptune_q(t) / 365250.0;
      temp[5]=this.neptune_p(t) / 365250.0;

      return temp;
   }

   static venus_p(t){
      var venus_p_0 = 0.0;

      venus_p_0 += -1 * 0.02882285775 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return venus_p_0;
   }

   static venus_q(t){
      return 0;
   }

   static venus_h(t){
      return 0;
   }

   static venus_k(t){
      return 0;
   }

   static venus_l(t){
      var venus_l_1 = 0.0;

      venus_l_1 += Math.pow(t,0) * 1 * 10213.28554621100 * Math.cos(0.00000000000 + 0.00000000000*t) - Math.pow(t,1) * 10213.28554621100 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);

      var venus_l_0 = 0.0;

      venus_l_0 += -1 * 3.17614669689 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return venus_l_1+venus_l_0;
   }

   static venus_a(t){
      var venus_a_0 = 0.0;

      venus_a_0 += -1 * 0.72332981996 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return venus_a_0;
   }

   static uranus_p(t){
      return 0;
   }

   static uranus_q(t){
      return 0;
   }

   static uranus_h(t){
      return 0;
   }

   static uranus_k(t){
      var uranus_k_0 = 0.0;

      uranus_k_0 += -1 * 0.04595132376 * 0.00000000000 * Math.sin(3.14159265359 + 0.00000000000*t);
      return uranus_k_0;
   }

   static uranus_l(t){
      var uranus_l_1 = 0.0;

      uranus_l_1 += Math.pow(t,0) * 1 * 74.78159856730 * Math.cos(0.00000000000 + 0.00000000000*t) - Math.pow(t,1) * 74.78159856730 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);

      var uranus_l_0 = 0.0;

      uranus_l_0 += -1 * 0.01503941337 * 1.48447270830 * Math.sin(3.62721239702 + 1.48447270830*t);
      uranus_l_0 += -1 * 5.48129387159 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return uranus_l_1+uranus_l_0;
   }

   static uranus_a(t){
      var uranus_a_0 = 0.0;

      uranus_a_0 += -1 * 0.02068375131 * 138.51749687070 * Math.sin(1.67626096637 + 138.51749687070*t);
      uranus_a_0 += -1 * 0.08030476240 * 454.90936652730 * Math.sin(1.40140954803 + 454.90936652730*t);
      uranus_a_0 += -1 * 19.21844606178 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return uranus_a_0;
   }

   static saturn_p(t){
      var saturn_p_0 = 0.0;

      saturn_p_0 += -1 * 0.01989147301 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return saturn_p_0;
   }

   static saturn_q(t){
      return 0;
   }

   static saturn_h(t){
      var saturn_h_0 = 0.0;

      saturn_h_0 += -1 * 0.05542964254 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return saturn_h_0;
   }

   static saturn_k(t){
      return 0;
   }

   static saturn_l(t){
      var saturn_l_1 = 0.0;

      saturn_l_1 += Math.pow(t,0) * 1 * 213.29909543800 * Math.cos(0.00000000000 + 0.00000000000*t) - Math.pow(t,1) * 213.29909543800 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);

      var saturn_l_0 = 0.0;

      saturn_l_0 += -1 * 0.01411655077 * 7.11354700080 * Math.sin(4.58553469006 + 7.11354700080*t);
      saturn_l_0 += -1 * 0.87401675650 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return saturn_l_1+saturn_l_0;
   }

   static saturn_a(t){
      var saturn_a_0 = 0.0;

      saturn_a_0 += -1 * 0.03363448736 * 316.39186965660 * Math.sin(6.00973673460 + 316.39186965660*t);
      saturn_a_0 += -1 * 9.55490959574 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return saturn_a_0;
   }

   static neptune_p(t){
      var neptune_p_0 = 0.0;

      neptune_p_0 += -1 * 0.01151683985 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return neptune_p_0;
   }

   static neptune_q(t){
      var neptune_q_0 = 0.0;

      neptune_q_0 += -1 * 0.01029147819 * 0.00000000000 * Math.sin(3.14159265359 + 0.00000000000*t);
      return neptune_q_0;
   }

   static neptune_h(t){
      return 0;
   }

   static neptune_k(t){
      return 0;
   }

   static neptune_l(t){
      var neptune_l_1 = 0.0;

      neptune_l_1 += Math.pow(t,0) * 1 * 38.13303563780 * Math.cos(0.00000000000 + 0.00000000000*t) - Math.pow(t,1) * 38.13303563780 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);

      var neptune_l_0 = 0.0;

      neptune_l_0 += -1 * 0.01017628072 * 1.48447270830 * Math.sin(0.48586478491 + 1.48447270830*t);
      neptune_l_0 += -1 * 5.31188628676 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return neptune_l_1+neptune_l_0;
   }

   static neptune_a(t){
      var neptune_a_0 = 0.0;

      neptune_a_0 += -1 * 0.03597274341 * 175.16605980020 * Math.sin(1.84552690821 + 175.16605980020*t);
      neptune_a_0 += -1 * 0.14818172119 * 491.55792945680 * Math.sin(1.57105922541 + 491.55792945680*t);
      neptune_a_0 += -1 * 30.11038686942 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return neptune_a_0;
   }

   static mercury_p(t){
      var mercury_p_0 = 0.0;

      mercury_p_0 += -1 * 0.04563550461 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return mercury_p_0;
   }

   static mercury_q(t){
      var mercury_q_0 = 0.0;

      mercury_q_0 += -1 * 0.04061563384 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return mercury_q_0;
   }

   static mercury_h(t){
      var mercury_h_0 = 0.0;

      mercury_h_0 += -1 * 0.20072331368 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return mercury_h_0;
   }

   static mercury_k(t){
      var mercury_k_0 = 0.0;

      mercury_k_0 += -1 * 0.04466059760 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return mercury_k_0;
   }

   static mercury_l(t){
      var mercury_l_1 = 0.0;

      mercury_l_1 += Math.pow(t,0) * 1 * 26087.90314157420 * Math.cos(0.00000000000 + 0.00000000000*t) - Math.pow(t,1) * 26087.90314157420 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);

      var mercury_l_0 = 0.0;

      mercury_l_0 += -1 * 4.40260884240 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return mercury_l_1+mercury_l_0;
   }

   static mercury_a(t){
      var mercury_a_0 = 0.0;

      mercury_a_0 += -1 * 0.38709830982 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return mercury_a_0;
   }

   static mars_p(t){
      var mars_p_0 = 0.0;

      mars_p_0 += -1 * 0.01228449307 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return mars_p_0;
   }

   static mars_q(t){
      var mars_q_0 = 0.0;

      mars_q_0 += -1 * 0.01047042574 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return mars_q_0;
   }

   static mars_h(t){
      var mars_h_0 = 0.0;

      mars_h_0 += -1 * 0.03789973236 * 0.00000000000 * Math.sin(3.14159265359 + 0.00000000000*t);
      return mars_h_0;
   }

   static mars_k(t){
      var mars_k_0 = 0.0;

      mars_k_0 += -1 * 0.08536560252 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return mars_k_0;
   }

   static mars_l(t){
      var mars_l_1 = 0.0;

      mars_l_1 += Math.pow(t,0) * 1 * 3340.61242669981 * Math.cos(0.00000000000 + 0.00000000000*t) - Math.pow(t,1) * 3340.61242669981 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);

      var mars_l_0 = 0.0;

      mars_l_0 += -1 * 6.20347611291 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return mars_l_1+mars_l_0;
   }

   static mars_a(t){
      var mars_a_0 = 0.0;

      mars_a_0 += -1 * 1.52367934191 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return mars_a_0;
   }

   static jupiter_p(t){
      var jupiter_p_0 = 0.0;

      jupiter_p_0 += -1 * 0.01118377157 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return jupiter_p_0;
   }

   static jupiter_q(t){
      return 0;
   }

   static jupiter_h(t){
      var jupiter_h_0 = 0.0;

      jupiter_h_0 += -1 * 0.01200385748 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return jupiter_h_0;
   }

   static jupiter_k(t){
      var jupiter_k_0 = 0.0;

      jupiter_k_0 += -1 * 0.04698572124 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return jupiter_k_0;
   }

   static jupiter_l(t){
      var jupiter_l_1 = 0.0;

      jupiter_l_1 += Math.pow(t,0) * 1 * 529.69096509460 * Math.cos(0.00000000000 + 0.00000000000*t) - Math.pow(t,1) * 529.69096509460 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);

      var jupiter_l_0 = 0.0;

      jupiter_l_0 += -1 * 0.59954649739 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return jupiter_l_1+jupiter_l_0;
   }

   static jupiter_a(t){
      var jupiter_a_0 = 0.0;

      jupiter_a_0 += -1 * 5.20260319132 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return jupiter_a_0;
   }

   static emb_p(t){
      return 0;
   }

   static emb_q(t){
      return 0;
   }

   static emb_h(t){
      var emb_h_0 = 0.0;

      emb_h_0 += -1 * 0.01628447663 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return emb_h_0;
   }

   static emb_k(t){
      return 0;
   }

   static emb_l(t){
      var emb_l_1 = 0.0;

      emb_l_1 += Math.pow(t,0) * 1 * 6283.07584999140 * Math.cos(0.00000000000 + 0.00000000000*t) - Math.pow(t,1) * 6283.07584999140 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);

      var emb_l_0 = 0.0;

      emb_l_0 += -1 * 1.75347045953 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return emb_l_1+emb_l_0;
   }

   static emb_a(t){
      var emb_a_0 = 0.0;

      emb_a_0 += -1 * 1.00000101778 * 0.00000000000 * Math.sin(0.00000000000 + 0.00000000000*t);
      return emb_a_0;
   }

}
