#VSOP87-Multilang http://www.celestialprogramming.com/
#Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

vsop87_nano_velocities_getMercury <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_nano_mercury_a_velocity(t) / 365250.0;
    temp[2]=vsop87_nano_mercury_l_velocity(t) / 365250.0;
    temp[3]=vsop87_nano_mercury_k_velocity(t) / 365250.0;
    temp[4]=vsop87_nano_mercury_h_velocity(t) / 365250.0;
    temp[5]=vsop87_nano_mercury_q_velocity(t) / 365250.0;
    temp[6]=vsop87_nano_mercury_p_velocity(t) / 365250.0;

    return(temp);
}

vsop87_nano_velocities_getVenus <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_nano_venus_a_velocity(t) / 365250.0;
    temp[2]=vsop87_nano_venus_l_velocity(t) / 365250.0;
    temp[3]=vsop87_nano_venus_k_velocity(t) / 365250.0;
    temp[4]=vsop87_nano_venus_h_velocity(t) / 365250.0;
    temp[5]=vsop87_nano_venus_q_velocity(t) / 365250.0;
    temp[6]=vsop87_nano_venus_p_velocity(t) / 365250.0;

    return(temp);
}

vsop87_nano_velocities_getEmb <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_nano_emb_a_velocity(t) / 365250.0;
    temp[2]=vsop87_nano_emb_l_velocity(t) / 365250.0;
    temp[3]=vsop87_nano_emb_k_velocity(t) / 365250.0;
    temp[4]=vsop87_nano_emb_h_velocity(t) / 365250.0;
    temp[5]=vsop87_nano_emb_q_velocity(t) / 365250.0;
    temp[6]=vsop87_nano_emb_p_velocity(t) / 365250.0;

    return(temp);
}

vsop87_nano_velocities_getMars <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_nano_mars_a_velocity(t) / 365250.0;
    temp[2]=vsop87_nano_mars_l_velocity(t) / 365250.0;
    temp[3]=vsop87_nano_mars_k_velocity(t) / 365250.0;
    temp[4]=vsop87_nano_mars_h_velocity(t) / 365250.0;
    temp[5]=vsop87_nano_mars_q_velocity(t) / 365250.0;
    temp[6]=vsop87_nano_mars_p_velocity(t) / 365250.0;

    return(temp);
}

vsop87_nano_velocities_getJupiter <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_nano_jupiter_a_velocity(t) / 365250.0;
    temp[2]=vsop87_nano_jupiter_l_velocity(t) / 365250.0;
    temp[3]=vsop87_nano_jupiter_k_velocity(t) / 365250.0;
    temp[4]=vsop87_nano_jupiter_h_velocity(t) / 365250.0;
    temp[5]=vsop87_nano_jupiter_q_velocity(t) / 365250.0;
    temp[6]=vsop87_nano_jupiter_p_velocity(t) / 365250.0;

    return(temp);
}

vsop87_nano_velocities_getSaturn <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_nano_saturn_a_velocity(t) / 365250.0;
    temp[2]=vsop87_nano_saturn_l_velocity(t) / 365250.0;
    temp[3]=vsop87_nano_saturn_k_velocity(t) / 365250.0;
    temp[4]=vsop87_nano_saturn_h_velocity(t) / 365250.0;
    temp[5]=vsop87_nano_saturn_q_velocity(t) / 365250.0;
    temp[6]=vsop87_nano_saturn_p_velocity(t) / 365250.0;

    return(temp);
}

vsop87_nano_velocities_getUranus <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_nano_uranus_a_velocity(t) / 365250.0;
    temp[2]=vsop87_nano_uranus_l_velocity(t) / 365250.0;
    temp[3]=vsop87_nano_uranus_k_velocity(t) / 365250.0;
    temp[4]=vsop87_nano_uranus_h_velocity(t) / 365250.0;
    temp[5]=vsop87_nano_uranus_q_velocity(t) / 365250.0;
    temp[6]=vsop87_nano_uranus_p_velocity(t) / 365250.0;

    return(temp);
}

vsop87_nano_velocities_getNeptune <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_nano_neptune_a_velocity(t) / 365250.0;
    temp[2]=vsop87_nano_neptune_l_velocity(t) / 365250.0;
    temp[3]=vsop87_nano_neptune_k_velocity(t) / 365250.0;
    temp[4]=vsop87_nano_neptune_h_velocity(t) / 365250.0;
    temp[5]=vsop87_nano_neptune_q_velocity(t) / 365250.0;
    temp[6]=vsop87_nano_neptune_p_velocity(t) / 365250.0;

    return(temp);
}

vsop87_nano_venus_p_velocity <- function(t){
    venus_p_0 = 0.0;

    venus_p_0 = venus_p_0 + -1 *      0.02882285775 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(venus_p_0);
}

vsop87_nano_venus_q_velocity <- function(t){
    venus_q_1 = 0.0;

    venus_q_1 = venus_q_1 + t^0 * 1 *      0.00138133826 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *      0.00138133826 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    venus_q_0 = 0.0;

    venus_q_0 = venus_q_0 + -1 *      0.00682410142 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(venus_q_1+venus_q_0);
}

vsop87_nano_venus_h_velocity <- function(t){
    venus_h_0 = 0.0;

    venus_h_0 = venus_h_0 + -1 *      0.00506684726 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(venus_h_0);
}

vsop87_nano_venus_k_velocity <- function(t){
    venus_k_0 = 0.0;

    venus_k_0 = venus_k_0 + -1 *      0.00449282133 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);
    return(venus_k_0);
}

vsop87_nano_venus_l_velocity <- function(t){
    venus_l_1 = 0.0;

    venus_l_1 = venus_l_1 + t^0 * 1 *  10213.28554621100 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *  10213.28554621100 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    venus_l_0 = 0.0;

    venus_l_0 = venus_l_0 + -1 *      3.17614669689 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(venus_l_1+venus_l_0);
}

vsop87_nano_venus_a_velocity <- function(t){
    venus_a_0 = 0.0;

    venus_a_0 = venus_a_0 + -1 *      0.72332981996 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(venus_a_0);
}

vsop87_nano_uranus_p_velocity <- function(t){
    uranus_p_0 = 0.0;

    uranus_p_0 = uranus_p_0 + -1 *      0.00648617008 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(uranus_p_0);
}

vsop87_nano_uranus_q_velocity <- function(t){
    uranus_q_0 = 0.0;

    uranus_q_0 = uranus_q_0 + -1 *      0.00185915075 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(uranus_q_0);
}

vsop87_nano_uranus_h_velocity <- function(t){
    uranus_h_0 = 0.0;

    uranus_h_0 = uranus_h_0 + -1 *      0.00116288289 *      380.12776796000 * sin( 3.77434233468 +      380.12776796000*t);
    uranus_h_0 = uranus_h_0 + -1 *      0.00136132837 *       74.78159856730 * sin( 3.91136489012 +       74.78159856730*t);
    uranus_h_0 = uranus_h_0 + -1 *      0.00210407426 *        1.48447270830 * sin( 0.42744224313 +        1.48447270830*t);
    uranus_h_0 = uranus_h_0 + -1 *      0.00274676149 *      529.69096509460 * sin( 5.31178834743 +      529.69096509460*t);
    uranus_h_0 = uranus_h_0 + -1 *      0.00563791307 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(uranus_h_0);
}

vsop87_nano_uranus_k_velocity <- function(t){
    uranus_k_0 = 0.0;

    uranus_k_0 = uranus_k_0 + -1 *      0.00116379910 *      380.12776796000 * sin( 2.20321839185 +      380.12776796000*t);
    uranus_k_0 = uranus_k_0 + -1 *      0.00136013862 *       74.78159856730 * sin( 5.48189691557 +       74.78159856730*t);
    uranus_k_0 = uranus_k_0 + -1 *      0.00209611522 *        1.48447270830 * sin( 1.99913587697 +        1.48447270830*t);
    uranus_k_0 = uranus_k_0 + -1 *      0.00274532742 *      529.69096509460 * sin( 0.59960944961 +      529.69096509460*t);
    uranus_k_0 = uranus_k_0 + -1 *      0.04595132376 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);
    return(uranus_k_0);
}

vsop87_nano_uranus_l_velocity <- function(t){
    uranus_l_1 = 0.0;

    uranus_l_1 = uranus_l_1 + t^0 * 1 *     74.78159856730 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *     74.78159856730 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    uranus_l_0 = 0.0;

    uranus_l_0 = uranus_l_0 + -1 *      0.00341045477 *      454.90936652730 * sin( 6.11377091373 +      454.90936652730*t);
    uranus_l_0 = uranus_l_0 + -1 *      0.01503941337 *        1.48447270830 * sin( 3.62721239702 +        1.48447270830*t);
    uranus_l_0 = uranus_l_0 + -1 *      5.48129387159 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(uranus_l_1+uranus_l_0);
}

vsop87_nano_uranus_a_velocity <- function(t){
    uranus_a_0 = 0.0;

    uranus_a_0 = uranus_a_0 + -1 *      0.00102755162 *      351.81659230870 * sin( 0.89451486294 +      351.81659230870*t);
    uranus_a_0 = uranus_a_0 + -1 *      0.00120436873 *      277.03499374140 * sin( 0.15931700196 +      277.03499374140*t);
    uranus_a_0 = uranus_a_0 + -1 *      0.00124336026 *       11.04570026390 * sin( 1.34101096123 +       11.04570026390*t);
    uranus_a_0 = uranus_a_0 + -1 *      0.00148020073 *       63.73589830340 * sin( 4.84763548983 +       63.73589830340*t);
    uranus_a_0 = uranus_a_0 + -1 *      0.00313720406 *       74.78159856730 * sin( 2.19852745462 +       74.78159856730*t);
    uranus_a_0 = uranus_a_0 + -1 *      0.00391818405 *        1.48447270830 * sin( 2.05935807638 +        1.48447270830*t);
    uranus_a_0 = uranus_a_0 + -1 *      0.00365190162 *      984.60033162190 * sin( 1.75064255586 +      984.60033162190*t);
    uranus_a_0 = uranus_a_0 + -1 *      0.00406413575 *      380.12776796000 * sin( 5.21303965129 +      380.12776796000*t);
    uranus_a_0 = uranus_a_0 + -1 *      0.02068375131 *      138.51749687070 * sin( 1.67626096637 +      138.51749687070*t);
    uranus_a_0 = uranus_a_0 + -1 *      0.08030476240 *      454.90936652730 * sin( 1.40140954803 +      454.90936652730*t);
    uranus_a_0 = uranus_a_0 + -1 *     19.21844606178 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(uranus_a_0);
}

vsop87_nano_saturn_p_velocity <- function(t){
    saturn_p_0 = 0.0;

    saturn_p_0 = saturn_p_0 + -1 *      0.01989147301 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(saturn_p_0);
}

vsop87_nano_saturn_q_velocity <- function(t){
    saturn_q_0 = 0.0;

    saturn_q_0 = saturn_q_0 + -1 *      0.00871747436 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);
    return(saturn_q_0);
}

vsop87_nano_saturn_h_velocity <- function(t){
    saturn_h_1 = 0.0;

    saturn_h_1 = saturn_h_1 + t^0 * 1 *      0.00375593887 * cos( 3.14159265359 +        0.00000000000*t) - t^1 *      0.00375593887 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);

    saturn_h_0 = 0.0;

    saturn_h_0 = saturn_h_0 + -1 *      0.00124537423 *      213.29909543800 * sin( 5.60295505720 +      213.29909543800*t);
    saturn_h_0 = saturn_h_0 + -1 *      0.00196887619 *      529.69096509460 * sin( 5.31528897782 +      529.69096509460*t);
    saturn_h_0 = saturn_h_0 + -1 *      0.00154553684 *        7.11354700080 * sin( 3.59447132230 +        7.11354700080*t);
    saturn_h_0 = saturn_h_0 + -1 *      0.05542964254 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(saturn_h_1+saturn_h_0);
}

vsop87_nano_saturn_k_velocity <- function(t){
    saturn_k_1 = 0.0;

    saturn_k_1 = saturn_k_1 + t^0 * 1 *      0.00529602626 * cos( 3.14159265359 +        0.00000000000*t) - t^1 *      0.00529602626 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);

    saturn_k_0 = 0.0;

    saturn_k_0 = saturn_k_0 + -1 *      0.00126322249 *      213.29909543800 * sin( 0.86230560136 +      213.29909543800*t);
    saturn_k_0 = saturn_k_0 + -1 *      0.00197268763 *      529.69096509460 * sin( 0.59616692002 +      529.69096509460*t);
    saturn_k_0 = saturn_k_0 + -1 *      0.00155326496 *        7.11354700080 * sin( 5.16402515606 +        7.11354700080*t);
    saturn_k_0 = saturn_k_0 + -1 *      0.00296003595 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);
    return(saturn_k_1+saturn_k_0);
}

vsop87_nano_saturn_l_velocity <- function(t){
    saturn_l_2 = 0.0;

    saturn_l_2 = saturn_l_2 + t^1 * 2 *      0.00116235667 * cos( 1.17971682406 +        7.11354700080*t) - t^2 *      0.00116235667 *        7.11354700080 * sin( 1.17971682406 +        7.11354700080*t);

    saturn_l_1 = 0.0;

    saturn_l_1 = saturn_l_1 + t^0 * 1 *      0.00563352798 * cos( 2.88478561660 +        7.11354700080*t) - t^1 *      0.00563352798 *        7.11354700080 * sin( 2.88478561660 +        7.11354700080*t);
    saturn_l_1 = saturn_l_1 + t^0 * 1 *    213.29909543800 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *    213.29909543800 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    saturn_l_0 = 0.0;

    saturn_l_0 = saturn_l_0 + -1 *      0.00149861955 *      103.09277421860 * sin( 0.26851062811 +      103.09277421860*t);
    saturn_l_0 = saturn_l_0 + -1 *      0.00259784547 *      316.39186965660 * sin( 4.43343036691 +      316.39186965660*t);
    saturn_l_0 = saturn_l_0 + -1 *      0.01411655077 *        7.11354700080 * sin( 4.58553469006 +        7.11354700080*t);
    saturn_l_0 = saturn_l_0 + -1 *      0.87401675650 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(saturn_l_2+saturn_l_1+saturn_l_0);
}

vsop87_nano_saturn_a_velocity <- function(t){
    saturn_a_1 = 0.0;

    saturn_a_1 = saturn_a_1 + t^0 * 1 *      0.00115108584 * cos( 1.31913907888 +        7.11354700080*t) - t^1 *      0.00115108584 *        7.11354700080 * sin( 1.31913907888 +        7.11354700080*t);

    saturn_a_0 = 0.0;

    saturn_a_0 = saturn_a_0 + -1 *      0.00142075017 *      949.17560896980 * sin( 2.32273369924 +      949.17560896980*t);
    saturn_a_0 = saturn_a_0 + -1 *      0.00146816895 *      846.08283475120 * sin( 0.07437685257 +      846.08283475120*t);
    saturn_a_0 = saturn_a_0 + -1 *      0.00143605062 *      213.29909543800 * sin( 4.85917505070 +      213.29909543800*t);
    saturn_a_0 = saturn_a_0 + -1 *      0.00149912686 *      419.48464387520 * sin( 3.86270340354 +      419.48464387520*t);
    saturn_a_0 = saturn_a_0 + -1 *      0.00308461590 *      632.78373931320 * sin( 2.55488166399 +      632.78373931320*t);
    saturn_a_0 = saturn_a_0 + -1 *      0.00289062242 *        7.11354700080 * sin( 3.01816520038 +        7.11354700080*t);
    saturn_a_0 = saturn_a_0 + -1 *      0.00354492417 *      103.09277421860 * sin( 5.81482665415 +      103.09277421860*t);
    saturn_a_0 = saturn_a_0 + -1 *      0.03363448736 *      316.39186965660 * sin( 6.00973673460 +      316.39186965660*t);
    saturn_a_0 = saturn_a_0 + -1 *      9.55490959574 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(saturn_a_1+saturn_a_0);
}

vsop87_nano_neptune_p_velocity <- function(t){
    neptune_p_0 = 0.0;

    neptune_p_0 = neptune_p_0 + -1 *      0.01151683985 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(neptune_p_0);
}

vsop87_nano_neptune_q_velocity <- function(t){
    neptune_q_0 = 0.0;

    neptune_q_0 = neptune_q_0 + -1 *      0.01029147819 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);
    return(neptune_q_0);
}

vsop87_nano_neptune_h_velocity <- function(t){
    neptune_h_0 = 0.0;

    neptune_h_0 = neptune_h_0 + -1 *      0.00131043136 *      453.42489381900 * sin( 4.11313570675 +      453.42489381900*t);
    neptune_h_0 = neptune_h_0 + -1 *      0.00136278888 *       38.13303563780 * sin( 3.74103613444 +       38.13303563780*t);
    neptune_h_0 = neptune_h_0 + -1 *      0.00344034784 *      529.69096509460 * sin( 5.31201105782 +      529.69096509460*t);
    neptune_h_0 = neptune_h_0 + -1 *      0.00669242413 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(neptune_h_0);
}

vsop87_nano_neptune_k_velocity <- function(t){
    neptune_k_0 = 0.0;

    neptune_k_0 = neptune_k_0 + -1 *      0.00131042161 *      453.42489381900 * sin( 2.54238248127 +      453.42489381900*t);
    neptune_k_0 = neptune_k_0 + -1 *      0.00136232980 *       38.13303563780 * sin( 5.31190360139 +       38.13303563780*t);
    neptune_k_0 = neptune_k_0 + -1 *      0.00343810387 *      529.69096509460 * sin( 0.59989432818 +      529.69096509460*t);
    neptune_k_0 = neptune_k_0 + -1 *      0.00599977571 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(neptune_k_0);
}

vsop87_nano_neptune_l_velocity <- function(t){
    neptune_l_1 = 0.0;

    neptune_l_1 = neptune_l_1 + t^0 * 1 *     38.13303563780 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *     38.13303563780 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    neptune_l_0 = 0.0;

    neptune_l_0 = neptune_l_0 + -1 *      0.00441710236 *      491.55792945680 * sin( 0.00020868462 +      491.55792945680*t);
    neptune_l_0 = neptune_l_0 + -1 *      0.01017628072 *        1.48447270830 * sin( 0.48586478491 +        1.48447270830*t);
    neptune_l_0 = neptune_l_0 + -1 *      5.31188628676 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(neptune_l_1+neptune_l_0);
}

vsop87_nano_neptune_a_velocity <- function(t){
    neptune_a_0 = 0.0;

    neptune_a_0 = neptune_a_0 + -1 *      0.00101174992 *     6244.94281435360 * sin( 2.72476929716 +     6244.94281435360*t);
    neptune_a_0 = neptune_a_0 + -1 *      0.00105687575 *       73.29712585900 * sin( 3.48447772920 +       73.29712585900*t);
    neptune_a_0 = neptune_a_0 + -1 *      0.00185666340 *      388.46515523820 * sin( 1.07141029917 +      388.46515523820*t);
    neptune_a_0 = neptune_a_0 + -1 *      0.00144701407 *      453.42489381900 * sin( 3.36967102070 +      453.42489381900*t);
    neptune_a_0 = neptune_a_0 + -1 *      0.00462318447 *       36.64856292950 * sin( 0.16921610518 +       36.64856292950*t);
    neptune_a_0 = neptune_a_0 + -1 *      0.00694303990 *     1021.24889455140 * sin( 1.92062235445 +     1021.24889455140*t);
    neptune_a_0 = neptune_a_0 + -1 *      0.00832345688 *        1.48447270830 * sin( 5.19528065894 +        1.48447270830*t);
    neptune_a_0 = neptune_a_0 + -1 *      0.03597274341 *      175.16605980020 * sin( 1.84552690821 +      175.16605980020*t);
    neptune_a_0 = neptune_a_0 + -1 *      0.14818172119 *      491.55792945680 * sin( 1.57105922541 +      491.55792945680*t);
    neptune_a_0 = neptune_a_0 + -1 *     30.11038686942 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(neptune_a_0);
}

vsop87_nano_mercury_p_velocity <- function(t){
    mercury_p_1 = 0.0;

    mercury_p_1 = mercury_p_1 + t^0 * 1 *      0.00127633657 * cos( 3.14159265359 +        0.00000000000*t) - t^1 *      0.00127633657 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);

    mercury_p_0 = 0.0;

    mercury_p_0 = mercury_p_0 + -1 *      0.04563550461 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mercury_p_1+mercury_p_0);
}

vsop87_nano_mercury_q_velocity <- function(t){
    mercury_q_0 = 0.0;

    mercury_q_0 = mercury_q_0 + -1 *      0.04061563384 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mercury_q_0);
}

vsop87_nano_mercury_h_velocity <- function(t){
    mercury_h_1 = 0.0;

    mercury_h_1 = mercury_h_1 + t^0 * 1 *      0.00143750118 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *      0.00143750118 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    mercury_h_0 = 0.0;

    mercury_h_0 = mercury_h_0 + -1 *      0.20072331368 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mercury_h_1+mercury_h_0);
}

vsop87_nano_mercury_k_velocity <- function(t){
    mercury_k_1 = 0.0;

    mercury_k_1 = mercury_k_1 + t^0 * 1 *      0.00552114624 * cos( 3.14159265359 +        0.00000000000*t) - t^1 *      0.00552114624 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);

    mercury_k_0 = 0.0;

    mercury_k_0 = mercury_k_0 + -1 *      0.04466059760 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mercury_k_1+mercury_k_0);
}

vsop87_nano_mercury_l_velocity <- function(t){
    mercury_l_1 = 0.0;

    mercury_l_1 = mercury_l_1 + t^0 * 1 *  26087.90314157420 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *  26087.90314157420 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    mercury_l_0 = 0.0;

    mercury_l_0 = mercury_l_0 + -1 *      4.40260884240 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mercury_l_1+mercury_l_0);
}

vsop87_nano_mercury_a_velocity <- function(t){
    mercury_a_0 = 0.0;

    mercury_a_0 = mercury_a_0 + -1 *      0.38709830982 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mercury_a_0);
}

vsop87_nano_mars_p_velocity <- function(t){
    mars_p_1 = 0.0;

    mars_p_1 = mars_p_1 + t^0 * 1 *      0.00108020083 * cos( 3.14159265359 +        0.00000000000*t) - t^1 *      0.00108020083 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);

    mars_p_0 = 0.0;

    mars_p_0 = mars_p_0 + -1 *      0.01228449307 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mars_p_1+mars_p_0);
}

vsop87_nano_mars_q_velocity <- function(t){
    mars_q_0 = 0.0;

    mars_q_0 = mars_q_0 + -1 *      0.01047042574 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mars_q_0);
}

vsop87_nano_mars_h_velocity <- function(t){
    mars_h_1 = 0.0;

    mars_h_1 = mars_h_1 + t^0 * 1 *      0.00624657465 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *      0.00624657465 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    mars_h_0 = 0.0;

    mars_h_0 = mars_h_0 + -1 *      0.03789973236 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);
    return(mars_h_1+mars_h_0);
}

vsop87_nano_mars_k_velocity <- function(t){
    mars_k_1 = 0.0;

    mars_k_1 = mars_k_1 + t^0 * 1 *      0.00376330152 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *      0.00376330152 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    mars_k_0 = 0.0;

    mars_k_0 = mars_k_0 + -1 *      0.08536560252 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mars_k_1+mars_k_0);
}

vsop87_nano_mars_l_velocity <- function(t){
    mars_l_1 = 0.0;

    mars_l_1 = mars_l_1 + t^0 * 1 *   3340.61242669981 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *   3340.61242669981 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    mars_l_0 = 0.0;

    mars_l_0 = mars_l_0 + -1 *      6.20347611291 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mars_l_1+mars_l_0);
}

vsop87_nano_mars_a_velocity <- function(t){
    mars_a_0 = 0.0;

    mars_a_0 = mars_a_0 + -1 *      1.52367934191 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mars_a_0);
}

vsop87_nano_jupiter_p_velocity <- function(t){
    jupiter_p_0 = 0.0;

    jupiter_p_0 = jupiter_p_0 + -1 *      0.01118377157 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(jupiter_p_0);
}

vsop87_nano_jupiter_q_velocity <- function(t){
    jupiter_q_0 = 0.0;

    jupiter_q_0 = jupiter_q_0 + -1 *      0.00206561098 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);
    return(jupiter_q_0);
}

vsop87_nano_jupiter_h_velocity <- function(t){
    jupiter_h_1 = 0.0;

    jupiter_h_1 = jupiter_h_1 + t^0 * 1 *      0.00217149360 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *      0.00217149360 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    jupiter_h_0 = 0.0;

    jupiter_h_0 = jupiter_h_0 + -1 *      0.01200385748 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(jupiter_h_1+jupiter_h_0);
}

vsop87_nano_jupiter_k_velocity <- function(t){
    jupiter_k_1 = 0.0;

    jupiter_k_1 = jupiter_k_1 + t^0 * 1 *      0.00113010377 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *      0.00113010377 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    jupiter_k_0 = 0.0;

    jupiter_k_0 = jupiter_k_0 + -1 *      0.04698572124 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(jupiter_k_1+jupiter_k_0);
}

vsop87_nano_jupiter_l_velocity <- function(t){
    jupiter_l_1 = 0.0;

    jupiter_l_1 = jupiter_l_1 + t^0 * 1 *      0.00228875491 * cos( 6.02639570653 +        7.11354700080*t) - t^1 *      0.00228875491 *        7.11354700080 * sin( 6.02639570653 +        7.11354700080*t);
    jupiter_l_1 = jupiter_l_1 + t^0 * 1 *    529.69096509460 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *    529.69096509460 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    jupiter_l_0 = 0.0;

    jupiter_l_0 = jupiter_l_0 + -1 *      0.00573506125 *        7.11354700080 * sin( 1.44396306420 +        7.11354700080*t);
    jupiter_l_0 = jupiter_l_0 + -1 *      0.59954649739 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(jupiter_l_1+jupiter_l_0);
}

vsop87_nano_jupiter_a_velocity <- function(t){
    jupiter_a_0 = 0.0;

    jupiter_a_0 = jupiter_a_0 + -1 *      5.20260319132 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(jupiter_a_0);
}

vsop87_nano_emb_p_velocity <- function(t){
    return(0);
}

vsop87_nano_emb_q_velocity <- function(t){
    emb_q_1 = 0.0;

    emb_q_1 = emb_q_1 + t^0 * 1 *      0.00113468869 * cos( 3.14159265359 +        0.00000000000*t) - t^1 *      0.00113468869 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);

    return(emb_q_1);
}

vsop87_nano_emb_h_velocity <- function(t){
    emb_h_0 = 0.0;

    emb_h_0 = emb_h_0 + -1 *      0.01628447663 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(emb_h_0);
}

vsop87_nano_emb_k_velocity <- function(t){
    emb_k_0 = 0.0;

    emb_k_0 = emb_k_0 + -1 *      0.00374081650 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);
    return(emb_k_0);
}

vsop87_nano_emb_l_velocity <- function(t){
    emb_l_1 = 0.0;

    emb_l_1 = emb_l_1 + t^0 * 1 *   6283.07584999140 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *   6283.07584999140 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    emb_l_0 = 0.0;

    emb_l_0 = emb_l_0 + -1 *      1.75347045953 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(emb_l_1+emb_l_0);
}

vsop87_nano_emb_a_velocity <- function(t){
    emb_a_0 = 0.0;

    emb_a_0 = emb_a_0 + -1 *      1.00000101778 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(emb_a_0);
}

