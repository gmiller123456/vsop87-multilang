

class vsop87_pico {
   static getEmb(t){
      const temp=new Array();
      temp.push(vsop87_pico.emb_a(t));
      temp.push(vsop87_pico.emb_l(t));
      temp.push(vsop87_pico.emb_k(t));
      temp.push(vsop87_pico.emb_h(t));
      temp.push(vsop87_pico.emb_q(t));
      temp.push(vsop87_pico.emb_p(t));
      return temp;
   }

   static getJupiter(t){
      const temp=new Array();
      temp.push(vsop87_pico.jupiter_a(t));
      temp.push(vsop87_pico.jupiter_l(t));
      temp.push(vsop87_pico.jupiter_k(t));
      temp.push(vsop87_pico.jupiter_h(t));
      temp.push(vsop87_pico.jupiter_q(t));
      temp.push(vsop87_pico.jupiter_p(t));
      return temp;
   }

   static getMars(t){
      const temp=new Array();
      temp.push(vsop87_pico.mars_a(t));
      temp.push(vsop87_pico.mars_l(t));
      temp.push(vsop87_pico.mars_k(t));
      temp.push(vsop87_pico.mars_h(t));
      temp.push(vsop87_pico.mars_q(t));
      temp.push(vsop87_pico.mars_p(t));
      return temp;
   }

   static getMercury(t){
      const temp=new Array();
      temp.push(vsop87_pico.mercury_a(t));
      temp.push(vsop87_pico.mercury_l(t));
      temp.push(vsop87_pico.mercury_k(t));
      temp.push(vsop87_pico.mercury_h(t));
      temp.push(vsop87_pico.mercury_q(t));
      temp.push(vsop87_pico.mercury_p(t));
      return temp;
   }

   static getNeptune(t){
      const temp=new Array();
      temp.push(vsop87_pico.neptune_a(t));
      temp.push(vsop87_pico.neptune_l(t));
      temp.push(vsop87_pico.neptune_k(t));
      temp.push(vsop87_pico.neptune_h(t));
      temp.push(vsop87_pico.neptune_q(t));
      temp.push(vsop87_pico.neptune_p(t));
      return temp;
   }

   static getSaturn(t){
      const temp=new Array();
      temp.push(vsop87_pico.saturn_a(t));
      temp.push(vsop87_pico.saturn_l(t));
      temp.push(vsop87_pico.saturn_k(t));
      temp.push(vsop87_pico.saturn_h(t));
      temp.push(vsop87_pico.saturn_q(t));
      temp.push(vsop87_pico.saturn_p(t));
      return temp;
   }

   static getUranus(t){
      const temp=new Array();
      temp.push(vsop87_pico.uranus_a(t));
      temp.push(vsop87_pico.uranus_l(t));
      temp.push(vsop87_pico.uranus_k(t));
      temp.push(vsop87_pico.uranus_h(t));
      temp.push(vsop87_pico.uranus_q(t));
      temp.push(vsop87_pico.uranus_p(t));
      return temp;
   }

   static getVenus(t){
      const temp=new Array();
      temp.push(vsop87_pico.venus_a(t));
      temp.push(vsop87_pico.venus_l(t));
      temp.push(vsop87_pico.venus_k(t));
      temp.push(vsop87_pico.venus_h(t));
      temp.push(vsop87_pico.venus_q(t));
      temp.push(vsop87_pico.venus_p(t));
      return temp;
   }

   static emb_a(t){
      let emb_a_0=0.0;
      emb_a_0+=     1.00000101778 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return emb_a_0;
   }

   static emb_l(t){
      let emb_l_0=0.0;
      emb_l_0+=     1.75347045953 * Math.cos( 0.00000000000 +        0.00000000000*t);

      let emb_l_1=0.0;
      emb_l_1+=  6283.07584999140 * Math.cos( 0.00000000000 +        0.00000000000*t);
      emb_l_1=emb_l_1 * t;

      return emb_l_0+emb_l_1;
   }

   static emb_k(t){
      return 0;
   }

   static emb_h(t){
      let emb_h_0=0.0;
      emb_h_0+=     0.01628447663 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return emb_h_0;
   }

   static emb_q(t){
      return 0;
   }

   static emb_p(t){
      return 0;
   }

   static jupiter_a(t){
      let jupiter_a_0=0.0;
      jupiter_a_0+=     5.20260319132 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_a_0;
   }

   static jupiter_l(t){
      let jupiter_l_0=0.0;
      jupiter_l_0+=     0.59954649739 * Math.cos( 0.00000000000 +        0.00000000000*t);

      let jupiter_l_1=0.0;
      jupiter_l_1+=   529.69096509460 * Math.cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_1=jupiter_l_1 * t;

      return jupiter_l_0+jupiter_l_1;
   }

   static jupiter_k(t){
      let jupiter_k_0=0.0;
      jupiter_k_0+=     0.04698572124 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_k_0;
   }

   static jupiter_h(t){
      let jupiter_h_0=0.0;
      jupiter_h_0+=     0.01200385748 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_h_0;
   }

   static jupiter_q(t){
      return 0;
   }

   static jupiter_p(t){
      let jupiter_p_0=0.0;
      jupiter_p_0+=     0.01118377157 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return jupiter_p_0;
   }

   static mars_a(t){
      let mars_a_0=0.0;
      mars_a_0+=     1.52367934191 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return mars_a_0;
   }

   static mars_l(t){
      let mars_l_0=0.0;
      mars_l_0+=     6.20347611291 * Math.cos( 0.00000000000 +        0.00000000000*t);

      let mars_l_1=0.0;
      mars_l_1+=  3340.61242669981 * Math.cos( 0.00000000000 +        0.00000000000*t);
      mars_l_1=mars_l_1 * t;

      return mars_l_0+mars_l_1;
   }

   static mars_k(t){
      let mars_k_0=0.0;
      mars_k_0+=     0.08536560252 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return mars_k_0;
   }

   static mars_h(t){
      let mars_h_0=0.0;
      mars_h_0+=     0.03789973236 * Math.cos( 3.14159265359 +        0.00000000000*t);

      return mars_h_0;
   }

   static mars_q(t){
      let mars_q_0=0.0;
      mars_q_0+=     0.01047042574 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return mars_q_0;
   }

   static mars_p(t){
      let mars_p_0=0.0;
      mars_p_0+=     0.01228449307 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return mars_p_0;
   }

   static mercury_a(t){
      let mercury_a_0=0.0;
      mercury_a_0+=     0.38709830982 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return mercury_a_0;
   }

   static mercury_l(t){
      let mercury_l_0=0.0;
      mercury_l_0+=     4.40260884240 * Math.cos( 0.00000000000 +        0.00000000000*t);

      let mercury_l_1=0.0;
      mercury_l_1+= 26087.90314157420 * Math.cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_1=mercury_l_1 * t;

      return mercury_l_0+mercury_l_1;
   }

   static mercury_k(t){
      let mercury_k_0=0.0;
      mercury_k_0+=     0.04466059760 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return mercury_k_0;
   }

   static mercury_h(t){
      let mercury_h_0=0.0;
      mercury_h_0+=     0.20072331368 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return mercury_h_0;
   }

   static mercury_q(t){
      let mercury_q_0=0.0;
      mercury_q_0+=     0.04061563384 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return mercury_q_0;
   }

   static mercury_p(t){
      let mercury_p_0=0.0;
      mercury_p_0+=     0.04563550461 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return mercury_p_0;
   }

   static neptune_a(t){
      let neptune_a_0=0.0;
      neptune_a_0+=    30.11038686942 * Math.cos( 0.00000000000 +        0.00000000000*t);
      neptune_a_0+=     0.14818172119 * Math.cos( 1.57105922541 +      491.55792945680*t);
      neptune_a_0+=     0.03597274341 * Math.cos( 1.84552690821 +      175.16605980020*t);

      return neptune_a_0;
   }

   static neptune_l(t){
      let neptune_l_0=0.0;
      neptune_l_0+=     5.31188628676 * Math.cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_0+=     0.01017628072 * Math.cos( 0.48586478491 +        1.48447270830*t);

      let neptune_l_1=0.0;
      neptune_l_1+=    38.13303563780 * Math.cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_1=neptune_l_1 * t;

      return neptune_l_0+neptune_l_1;
   }

   static neptune_k(t){
      return 0;
   }

   static neptune_h(t){
      return 0;
   }

   static neptune_q(t){
      let neptune_q_0=0.0;
      neptune_q_0+=     0.01029147819 * Math.cos( 3.14159265359 +        0.00000000000*t);

      return neptune_q_0;
   }

   static neptune_p(t){
      let neptune_p_0=0.0;
      neptune_p_0+=     0.01151683985 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return neptune_p_0;
   }

   static saturn_a(t){
      let saturn_a_0=0.0;
      saturn_a_0+=     9.55490959574 * Math.cos( 0.00000000000 +        0.00000000000*t);
      saturn_a_0+=     0.03363448736 * Math.cos( 6.00973673460 +      316.39186965660*t);

      return saturn_a_0;
   }

   static saturn_l(t){
      let saturn_l_0=0.0;
      saturn_l_0+=     0.87401675650 * Math.cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_0+=     0.01411655077 * Math.cos( 4.58553469006 +        7.11354700080*t);

      let saturn_l_1=0.0;
      saturn_l_1+=   213.29909543800 * Math.cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_1=saturn_l_1 * t;

      return saturn_l_0+saturn_l_1;
   }

   static saturn_k(t){
      return 0;
   }

   static saturn_h(t){
      let saturn_h_0=0.0;
      saturn_h_0+=     0.05542964254 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return saturn_h_0;
   }

   static saturn_q(t){
      return 0;
   }

   static saturn_p(t){
      let saturn_p_0=0.0;
      saturn_p_0+=     0.01989147301 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return saturn_p_0;
   }

   static uranus_a(t){
      let uranus_a_0=0.0;
      uranus_a_0+=    19.21844606178 * Math.cos( 0.00000000000 +        0.00000000000*t);
      uranus_a_0+=     0.08030476240 * Math.cos( 1.40140954803 +      454.90936652730*t);
      uranus_a_0+=     0.02068375131 * Math.cos( 1.67626096637 +      138.51749687070*t);

      return uranus_a_0;
   }

   static uranus_l(t){
      let uranus_l_0=0.0;
      uranus_l_0+=     5.48129387159 * Math.cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_0+=     0.01503941337 * Math.cos( 3.62721239702 +        1.48447270830*t);

      let uranus_l_1=0.0;
      uranus_l_1+=    74.78159856730 * Math.cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_1=uranus_l_1 * t;

      return uranus_l_0+uranus_l_1;
   }

   static uranus_k(t){
      let uranus_k_0=0.0;
      uranus_k_0+=     0.04595132376 * Math.cos( 3.14159265359 +        0.00000000000*t);

      return uranus_k_0;
   }

   static uranus_h(t){
      return 0;
   }

   static uranus_q(t){
      return 0;
   }

   static uranus_p(t){
      return 0;
   }

   static venus_a(t){
      let venus_a_0=0.0;
      venus_a_0+=     0.72332981996 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return venus_a_0;
   }

   static venus_l(t){
      let venus_l_0=0.0;
      venus_l_0+=     3.17614669689 * Math.cos( 0.00000000000 +        0.00000000000*t);

      let venus_l_1=0.0;
      venus_l_1+= 10213.28554621100 * Math.cos( 0.00000000000 +        0.00000000000*t);
      venus_l_1=venus_l_1 * t;

      return venus_l_0+venus_l_1;
   }

   static venus_k(t){
      return 0;
   }

   static venus_h(t){
      return 0;
   }

   static venus_q(t){
      return 0;
   }

   static venus_p(t){
      let venus_p_0=0.0;
      venus_p_0+=     0.02882285775 * Math.cos( 0.00000000000 +        0.00000000000*t);

      return venus_p_0;
   }

}
