%VSOP87-Multilang http://www.celestialprogramming.com/vsop87-multilang/index.html
%Greg Miller (gmiller@gregmiller.net) 2019.  Released as Public Domain



classdef vsop87b_pico
   methods(Static)
   function retval=getEarth(t)
      temp=[0 0 0];
      temp(0+1)=vsop87b_pico.earth_l(t);
      temp(1+1)=vsop87b_pico.earth_b(t);
      temp(2+1)=vsop87b_pico.earth_r(t);
      retval= temp;
   end

   function retval=getJupiter(t)
      temp=[0 0 0];
      temp(0+1)=vsop87b_pico.jupiter_l(t);
      temp(1+1)=vsop87b_pico.jupiter_b(t);
      temp(2+1)=vsop87b_pico.jupiter_r(t);
      retval= temp;
   end

   function retval=getMars(t)
      temp=[0 0 0];
      temp(0+1)=vsop87b_pico.mars_l(t);
      temp(1+1)=vsop87b_pico.mars_b(t);
      temp(2+1)=vsop87b_pico.mars_r(t);
      retval= temp;
   end

   function retval=getMercury(t)
      temp=[0 0 0];
      temp(0+1)=vsop87b_pico.mercury_l(t);
      temp(1+1)=vsop87b_pico.mercury_b(t);
      temp(2+1)=vsop87b_pico.mercury_r(t);
      retval= temp;
   end

   function retval=getNeptune(t)
      temp=[0 0 0];
      temp(0+1)=vsop87b_pico.neptune_l(t);
      temp(1+1)=vsop87b_pico.neptune_b(t);
      temp(2+1)=vsop87b_pico.neptune_r(t);
      retval= temp;
   end

   function retval=getSaturn(t)
      temp=[0 0 0];
      temp(0+1)=vsop87b_pico.saturn_l(t);
      temp(1+1)=vsop87b_pico.saturn_b(t);
      temp(2+1)=vsop87b_pico.saturn_r(t);
      retval= temp;
   end

   function retval=getUranus(t)
      temp=[0 0 0];
      temp(0+1)=vsop87b_pico.uranus_l(t);
      temp(1+1)=vsop87b_pico.uranus_b(t);
      temp(2+1)=vsop87b_pico.uranus_r(t);
      retval= temp;
   end

   function retval=getVenus(t)
      temp=[0 0 0];
      temp(0+1)=vsop87b_pico.venus_l(t);
      temp(1+1)=vsop87b_pico.venus_b(t);
      temp(2+1)=vsop87b_pico.venus_r(t);
      retval= temp;
   end

   function retval=earth_l(t)
      earth_l_0=0.0;
      earth_l_0+=     1.75347045673 * cos( 0.00000000000 +        0.00000000000*t);
      earth_l_0+=     0.03341656453 * cos( 4.66925680415 +     6283.07584999140*t);

      earth_l_1=0.0;
      earth_l_1+=  6283.07584999140 * cos( 0.00000000000 +        0.00000000000*t);
      earth_l_1=earth_l_1 * t;

      retval= earth_l_0+earth_l_1;
   end

   function retval=earth_b(t)
      retval= 0;
   end

   function retval=earth_r(t)
      earth_r_0=0.0;
      earth_r_0+=     1.00013988784 * cos( 0.00000000000 +        0.00000000000*t);
      earth_r_0+=     0.01670699632 * cos( 3.09846350258 +     6283.07584999140*t);

      retval= earth_r_0;
   end

   function retval=jupiter_l(t)
      jupiter_l_0=0.0;
      jupiter_l_0+=     0.59954691494 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_0+=     0.09695898719 * cos( 5.06191793158 +      529.69096509460*t);

      jupiter_l_1=0.0;
      jupiter_l_1+=   529.69096508814 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_l_1=jupiter_l_1 * t;

      retval= jupiter_l_0+jupiter_l_1;
   end

   function retval=jupiter_b(t)
      jupiter_b_0=0.0;
      jupiter_b_0+=     0.02268615702 * cos( 3.55852606721 +      529.69096509460*t);

      retval= jupiter_b_0;
   end

   function retval=jupiter_r(t)
      jupiter_r_0=0.0;
      jupiter_r_0+=     5.20887429326 * cos( 0.00000000000 +        0.00000000000*t);
      jupiter_r_0+=     0.25209327119 * cos( 3.49108639871 +      529.69096509460*t);

      jupiter_r_1=0.0;
      jupiter_r_1+=     0.01271801520 * cos( 2.64937512894 +      529.69096509460*t);
      jupiter_r_1=jupiter_r_1 * t;

      retval= jupiter_r_0+jupiter_r_1;
   end

   function retval=mars_l(t)
      mars_l_0=0.0;
      mars_l_0+=     6.20347711581 * cos( 0.00000000000 +        0.00000000000*t);
      mars_l_0+=     0.18656368093 * cos( 5.05037100270 +     3340.61242669980*t);
      mars_l_0+=     0.01108216816 * cos( 5.40099836344 +     6681.22485339960*t);

      mars_l_1=0.0;
      mars_l_1+=  3340.61242700512 * cos( 0.00000000000 +        0.00000000000*t);
      mars_l_1+=     0.01457554523 * cos( 3.60433733236 +     3340.61242669980*t);
      mars_l_1=mars_l_1 * t;

      retval= mars_l_0+mars_l_1;
   end

   function retval=mars_b(t)
      mars_b_0=0.0;
      mars_b_0+=     0.03197134986 * cos( 3.76832042431 +     3340.61242669980*t);

      retval= mars_b_0;
   end

   function retval=mars_r(t)
      mars_r_0=0.0;
      mars_r_0+=     1.53033488271 * cos( 0.00000000000 +        0.00000000000*t);
      mars_r_0+=     0.14184953160 * cos( 3.47971283528 +     3340.61242669980*t);

      mars_r_1=0.0;
      mars_r_1+=     0.01107433345 * cos( 2.03250524857 +     3340.61242669980*t);
      mars_r_1=mars_r_1 * t;

      retval= mars_r_0+mars_r_1;
   end

   function retval=mercury_l(t)
      mercury_l_0=0.0;
      mercury_l_0+=     4.40250710144 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_0+=     0.40989414977 * cos( 1.48302034195 +    26087.90314157420*t);
      mercury_l_0+=     0.05046294200 * cos( 4.47785489551 +    52175.80628314840*t);

      mercury_l_1=0.0;
      mercury_l_1+= 26087.90313685529 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_1+=     0.01131199811 * cos( 6.21874197797 +    26087.90314157420*t);
      mercury_l_1=mercury_l_1 * t;

      retval= mercury_l_0+mercury_l_1;
   end

   function retval=mercury_b(t)
      mercury_b_0=0.0;
      mercury_b_0+=     0.11737528961 * cos( 1.98357498767 +    26087.90314157420*t);
      mercury_b_0+=     0.02388076996 * cos( 5.03738959686 +    52175.80628314840*t);
      mercury_b_0+=     0.01222839532 * cos( 3.14159265359 +        0.00000000000*t);

      retval= mercury_b_0;
   end

   function retval=mercury_r(t)
      mercury_r_0=0.0;
      mercury_r_0+=     0.39528271651 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_r_0+=     0.07834131818 * cos( 6.19233722598 +    26087.90314157420*t);

      retval= mercury_r_0;
   end

   function retval=neptune_l(t)
      neptune_l_0=0.0;
      neptune_l_0+=     5.31188633046 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_0+=     0.01798475530 * cos( 2.90101273890 +       38.13303563780*t);
      neptune_l_0+=     0.01019727652 * cos( 0.48580922867 +        1.48447270830*t);

      neptune_l_1=0.0;
      neptune_l_1+=    38.13303563957 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_l_1=neptune_l_1 * t;

      retval= neptune_l_0+neptune_l_1;
   end

   function retval=neptune_b(t)
      neptune_b_0=0.0;
      neptune_b_0+=     0.03088622933 * cos( 1.44104372644 +       38.13303563780*t);

      retval= neptune_b_0;
   end

   function retval=neptune_r(t)
      neptune_r_0=0.0;
      neptune_r_0+=    30.07013205828 * cos( 0.00000000000 +        0.00000000000*t);
      neptune_r_0+=     0.27062259632 * cos( 1.32999459377 +       38.13303563780*t);
      neptune_r_0+=     0.01691764014 * cos( 3.25186135653 +       36.64856292950*t);

      retval= neptune_r_0;
   end

   function retval=saturn_l(t)
      saturn_l_0=0.0;
      saturn_l_0+=     0.87401354025 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_0+=     0.11107659762 * cos( 3.96205090159 +      213.29909543800*t);
      saturn_l_0+=     0.01414150957 * cos( 4.58581516874 +        7.11354700080*t);

      saturn_l_1=0.0;
      saturn_l_1+=   213.29909521690 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_l_1+=     0.01297370862 * cos( 1.82834923978 +      213.29909543800*t);
      saturn_l_1=saturn_l_1 * t;

      retval= saturn_l_0+saturn_l_1;
   end

   function retval=saturn_b(t)
      saturn_b_0=0.0;
      saturn_b_0+=     0.04330678039 * cos( 3.60284428399 +      213.29909543800*t);

      retval= saturn_b_0;
   end

   function retval=saturn_r(t)
      saturn_r_0=0.0;
      saturn_r_0+=     9.55758135486 * cos( 0.00000000000 +        0.00000000000*t);
      saturn_r_0+=     0.52921382865 * cos( 2.39226219573 +      213.29909543800*t);
      saturn_r_0+=     0.01873679867 * cos( 5.23549604660 +      206.18554843720*t);
      saturn_r_0+=     0.01464663929 * cos( 1.64763042902 +      426.59819087600*t);

      saturn_r_1=0.0;
      saturn_r_1+=     0.06182981340 * cos( 0.25843511480 +      213.29909543800*t);
      saturn_r_1=saturn_r_1 * t;

      retval= saturn_r_0+saturn_r_1;
   end

   function retval=uranus_l(t)
      uranus_l_0=0.0;
      uranus_l_0+=     5.48129294297 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_0+=     0.09260408234 * cos( 0.89106421507 +       74.78159856730*t);
      uranus_l_0+=     0.01504247898 * cos( 3.62719260920 +        1.48447270830*t);

      uranus_l_1=0.0;
      uranus_l_1+=    74.78159860910 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_l_1=uranus_l_1 * t;

      retval= uranus_l_0+uranus_l_1;
   end

   function retval=uranus_b(t)
      uranus_b_0=0.0;
      uranus_b_0+=     0.01346277648 * cos( 2.61877810547 +       74.78159856730*t);

      retval= uranus_b_0;
   end

   function retval=uranus_r(t)
      uranus_r_0=0.0;
      uranus_r_0+=    19.21264847206 * cos( 0.00000000000 +        0.00000000000*t);
      uranus_r_0+=     0.88784984413 * cos( 5.60377527014 +       74.78159856730*t);
      uranus_r_0+=     0.03440836062 * cos( 0.32836099706 +       73.29712585900*t);
      uranus_r_0+=     0.02055653860 * cos( 1.78295159330 +      149.56319713460*t);

      uranus_r_1=0.0;
      uranus_r_1+=     0.01479896629 * cos( 3.67205697578 +       74.78159856730*t);
      uranus_r_1=uranus_r_1 * t;

      retval= uranus_r_0+uranus_r_1;
   end

   function retval=venus_l(t)
      venus_l_0=0.0;
      venus_l_0+=     3.17614666774 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_0+=     0.01353968419 * cos( 5.59313319619 +    10213.28554621100*t);

      venus_l_1=0.0;
      venus_l_1+= 10213.28554621638 * cos( 0.00000000000 +        0.00000000000*t);
      venus_l_1=venus_l_1 * t;

      retval= venus_l_0+venus_l_1;
   end

   function retval=venus_b(t)
      venus_b_0=0.0;
      venus_b_0+=     0.05923638472 * cos( 0.26702775812 +    10213.28554621100*t);

      retval= venus_b_0;
   end

   function retval=venus_r(t)
      venus_r_0=0.0;
      venus_r_0+=     0.72334820891 * cos( 0.00000000000 +        0.00000000000*t);

      retval= venus_r_0;
   end

   end
end
