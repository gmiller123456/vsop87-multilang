import static java.lang.Math.*;

public class vsop87_xsmall_mercury{
   static double mercury_a(double t){
      double mercury_a_0=0.0;
      mercury_a_0+=     0.38709830982 * cos( 0.00000000000 +        0.00000000000*t);

      return mercury_a_0;
   }

   static double mercury_l(double t){
      double mercury_l_0=0.0;
      mercury_l_0+=     4.40260884240 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_0+=     0.00003557754 * cos( 1.51229384945 +     1109.37855209340*t);
      mercury_l_0+=     0.00001732389 * cos( 4.10404056787 +     5661.33204915220*t);
      mercury_l_0+=     0.00000343693 * cos( 5.76602066290 +      955.59974160860*t);
      mercury_l_0+=     0.00000274570 * cos( 0.97829198562 +     4551.95349705880*t);
      mercury_l_0+=     0.00000272395 * cos( 2.48847158325 +      529.69096509460*t);
      mercury_l_0+=     0.00000222838 * cos( 0.11565050964 +     1059.38193018920*t);
      mercury_l_0+=     0.00000193670 * cos( 0.27156027221 +    11322.66409830440*t);
      mercury_l_0+=     0.00000211195 * cos( 5.29995252496 +    21535.94964451540*t);
      mercury_l_0+=     0.00000238783 * cos( 4.02571732502 +    31749.23519072640*t);
      mercury_l_0+=     0.00000201761 * cos( 2.79503077058 +    15874.61759536320*t);
      mercury_l_0+=     0.00000160008 * cos( 0.66202900792 +    13521.75144159140*t);
      mercury_l_0+=     0.00000121943 * cos( 2.99718600299 +    25028.52121138500*t);

      double mercury_l_1=0.0;
      mercury_l_1+= 26087.90314157420 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_l_1+=     0.00000352015 * cos( 3.05256012304 +     1109.37855209340*t);
      mercury_l_1=mercury_l_1 * t;

      double mercury_l_2=0.0;
      mercury_l_2+=     0.00000934669 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_l_2=mercury_l_2 * t * t;

      return mercury_l_0+mercury_l_1+mercury_l_2;
   }

   static double mercury_k(double t){
      double mercury_k_0=0.0;
      mercury_k_0+=     0.04466059760 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_k_0+=     0.00000720897 * cos( 6.12043541204 +     1059.38193018920*t);
      mercury_k_0+=     0.00000337364 * cos( 1.81571365587 +     1109.37855209340*t);
      mercury_k_0+=     0.00000445166 * cos( 4.34028777466 +     5661.33204915220*t);
      mercury_k_0+=     0.00000247240 * cos( 3.81754716007 +     4551.95349705880*t);
      mercury_k_0+=     0.00000160627 * cos( 3.30787227488 +      529.69096509460*t);

      double mercury_k_1=0.0;
      mercury_k_1+=     0.00552114624 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_k_1=mercury_k_1 * t;

      double mercury_k_2=0.0;
      mercury_k_2+=     0.00001860568 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_k_2=mercury_k_2 * t * t;

      return mercury_k_0+mercury_k_1+mercury_k_2;
   }

   static double mercury_h(double t){
      double mercury_h_0=0.0;
      mercury_h_0+=     0.20072331368 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_h_0+=     0.00000722616 * cos( 4.54448156539 +     1059.38193018920*t);
      mercury_h_0+=     0.00000352827 * cos( 3.36811061870 +     1109.37855209340*t);
      mercury_h_0+=     0.00000463409 * cos( 5.90165895822 +     5661.33204915220*t);
      mercury_h_0+=     0.00000252884 * cos( 2.25057555643 +     4551.95349705880*t);
      mercury_h_0+=     0.00000144280 * cos( 1.93331156378 +      529.69096509460*t);

      double mercury_h_1=0.0;
      mercury_h_1+=     0.00143750118 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_h_1=mercury_h_1 * t;

      double mercury_h_2=0.0;
      mercury_h_2+=     0.00007974120 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_h_2=mercury_h_2 * t * t;

      return mercury_h_0+mercury_h_1+mercury_h_2;
   }

   static double mercury_q(double t){
      double mercury_q_0=0.0;
      mercury_q_0+=     0.04061563384 * cos( 0.00000000000 +        0.00000000000*t);

      double mercury_q_1=0.0;
      mercury_q_1+=     0.00065433117 * cos( 0.00000000000 +        0.00000000000*t);
      mercury_q_1=mercury_q_1 * t;

      double mercury_q_2=0.0;
      mercury_q_2+=     0.00001071215 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_q_2=mercury_q_2 * t * t;

      return mercury_q_0+mercury_q_1+mercury_q_2;
   }

   static double mercury_p(double t){
      double mercury_p_0=0.0;
      mercury_p_0+=     0.04563550461 * cos( 0.00000000000 +        0.00000000000*t);

      double mercury_p_1=0.0;
      mercury_p_1+=     0.00127633657 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_p_1=mercury_p_1 * t;

      double mercury_p_2=0.0;
      mercury_p_2+=     0.00000913350 * cos( 3.14159265359 +        0.00000000000*t);
      mercury_p_2=mercury_p_2 * t * t;

      return mercury_p_0+mercury_p_1+mercury_p_2;
   }

}
