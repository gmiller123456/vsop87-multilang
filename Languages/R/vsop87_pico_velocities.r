#VSOP87-Multilang http://www.celestialprogramming.com/
#Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

vsop87_pico_velocities_getMercury <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_pico_mercury_a_velocity(t) / 365250.0;
    temp[2]=vsop87_pico_mercury_l_velocity(t) / 365250.0;
    temp[3]=vsop87_pico_mercury_k_velocity(t) / 365250.0;
    temp[4]=vsop87_pico_mercury_h_velocity(t) / 365250.0;
    temp[5]=vsop87_pico_mercury_q_velocity(t) / 365250.0;
    temp[6]=vsop87_pico_mercury_p_velocity(t) / 365250.0;

    return(temp);
}

vsop87_pico_velocities_getVenus <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_pico_venus_a_velocity(t) / 365250.0;
    temp[2]=vsop87_pico_venus_l_velocity(t) / 365250.0;
    temp[3]=vsop87_pico_venus_k_velocity(t) / 365250.0;
    temp[4]=vsop87_pico_venus_h_velocity(t) / 365250.0;
    temp[5]=vsop87_pico_venus_q_velocity(t) / 365250.0;
    temp[6]=vsop87_pico_venus_p_velocity(t) / 365250.0;

    return(temp);
}

vsop87_pico_velocities_getEmb <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_pico_emb_a_velocity(t) / 365250.0;
    temp[2]=vsop87_pico_emb_l_velocity(t) / 365250.0;
    temp[3]=vsop87_pico_emb_k_velocity(t) / 365250.0;
    temp[4]=vsop87_pico_emb_h_velocity(t) / 365250.0;
    temp[5]=vsop87_pico_emb_q_velocity(t) / 365250.0;
    temp[6]=vsop87_pico_emb_p_velocity(t) / 365250.0;

    return(temp);
}

vsop87_pico_velocities_getMars <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_pico_mars_a_velocity(t) / 365250.0;
    temp[2]=vsop87_pico_mars_l_velocity(t) / 365250.0;
    temp[3]=vsop87_pico_mars_k_velocity(t) / 365250.0;
    temp[4]=vsop87_pico_mars_h_velocity(t) / 365250.0;
    temp[5]=vsop87_pico_mars_q_velocity(t) / 365250.0;
    temp[6]=vsop87_pico_mars_p_velocity(t) / 365250.0;

    return(temp);
}

vsop87_pico_velocities_getJupiter <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_pico_jupiter_a_velocity(t) / 365250.0;
    temp[2]=vsop87_pico_jupiter_l_velocity(t) / 365250.0;
    temp[3]=vsop87_pico_jupiter_k_velocity(t) / 365250.0;
    temp[4]=vsop87_pico_jupiter_h_velocity(t) / 365250.0;
    temp[5]=vsop87_pico_jupiter_q_velocity(t) / 365250.0;
    temp[6]=vsop87_pico_jupiter_p_velocity(t) / 365250.0;

    return(temp);
}

vsop87_pico_velocities_getSaturn <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_pico_saturn_a_velocity(t) / 365250.0;
    temp[2]=vsop87_pico_saturn_l_velocity(t) / 365250.0;
    temp[3]=vsop87_pico_saturn_k_velocity(t) / 365250.0;
    temp[4]=vsop87_pico_saturn_h_velocity(t) / 365250.0;
    temp[5]=vsop87_pico_saturn_q_velocity(t) / 365250.0;
    temp[6]=vsop87_pico_saturn_p_velocity(t) / 365250.0;

    return(temp);
}

vsop87_pico_velocities_getUranus <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_pico_uranus_a_velocity(t) / 365250.0;
    temp[2]=vsop87_pico_uranus_l_velocity(t) / 365250.0;
    temp[3]=vsop87_pico_uranus_k_velocity(t) / 365250.0;
    temp[4]=vsop87_pico_uranus_h_velocity(t) / 365250.0;
    temp[5]=vsop87_pico_uranus_q_velocity(t) / 365250.0;
    temp[6]=vsop87_pico_uranus_p_velocity(t) / 365250.0;

    return(temp);
}

vsop87_pico_velocities_getNeptune <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_pico_neptune_a_velocity(t) / 365250.0;
    temp[2]=vsop87_pico_neptune_l_velocity(t) / 365250.0;
    temp[3]=vsop87_pico_neptune_k_velocity(t) / 365250.0;
    temp[4]=vsop87_pico_neptune_h_velocity(t) / 365250.0;
    temp[5]=vsop87_pico_neptune_q_velocity(t) / 365250.0;
    temp[6]=vsop87_pico_neptune_p_velocity(t) / 365250.0;

    return(temp);
}

vsop87_pico_venus_p_velocity <- function(t){
    venus_p_0 = 0.0;

    venus_p_0 = venus_p_0 + -1 *      0.02882285775 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(venus_p_0);
}

vsop87_pico_venus_q_velocity <- function(t){
    return(0);
}

vsop87_pico_venus_h_velocity <- function(t){
    return(0);
}

vsop87_pico_venus_k_velocity <- function(t){
    return(0);
}

vsop87_pico_venus_l_velocity <- function(t){
    venus_l_1 = 0.0;

    venus_l_1 = venus_l_1 + t^0 * 1 *  10213.28554621100 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *  10213.28554621100 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    venus_l_0 = 0.0;

    venus_l_0 = venus_l_0 + -1 *      3.17614669689 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(venus_l_1+venus_l_0);
}

vsop87_pico_venus_a_velocity <- function(t){
    venus_a_0 = 0.0;

    venus_a_0 = venus_a_0 + -1 *      0.72332981996 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(venus_a_0);
}

vsop87_pico_uranus_p_velocity <- function(t){
    return(0);
}

vsop87_pico_uranus_q_velocity <- function(t){
    return(0);
}

vsop87_pico_uranus_h_velocity <- function(t){
    return(0);
}

vsop87_pico_uranus_k_velocity <- function(t){
    uranus_k_0 = 0.0;

    uranus_k_0 = uranus_k_0 + -1 *      0.04595132376 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);
    return(uranus_k_0);
}

vsop87_pico_uranus_l_velocity <- function(t){
    uranus_l_1 = 0.0;

    uranus_l_1 = uranus_l_1 + t^0 * 1 *     74.78159856730 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *     74.78159856730 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    uranus_l_0 = 0.0;

    uranus_l_0 = uranus_l_0 + -1 *      0.01503941337 *        1.48447270830 * sin( 3.62721239702 +        1.48447270830*t);
    uranus_l_0 = uranus_l_0 + -1 *      5.48129387159 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(uranus_l_1+uranus_l_0);
}

vsop87_pico_uranus_a_velocity <- function(t){
    uranus_a_0 = 0.0;

    uranus_a_0 = uranus_a_0 + -1 *      0.02068375131 *      138.51749687070 * sin( 1.67626096637 +      138.51749687070*t);
    uranus_a_0 = uranus_a_0 + -1 *      0.08030476240 *      454.90936652730 * sin( 1.40140954803 +      454.90936652730*t);
    uranus_a_0 = uranus_a_0 + -1 *     19.21844606178 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(uranus_a_0);
}

vsop87_pico_saturn_p_velocity <- function(t){
    saturn_p_0 = 0.0;

    saturn_p_0 = saturn_p_0 + -1 *      0.01989147301 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(saturn_p_0);
}

vsop87_pico_saturn_q_velocity <- function(t){
    return(0);
}

vsop87_pico_saturn_h_velocity <- function(t){
    saturn_h_0 = 0.0;

    saturn_h_0 = saturn_h_0 + -1 *      0.05542964254 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(saturn_h_0);
}

vsop87_pico_saturn_k_velocity <- function(t){
    return(0);
}

vsop87_pico_saturn_l_velocity <- function(t){
    saturn_l_1 = 0.0;

    saturn_l_1 = saturn_l_1 + t^0 * 1 *    213.29909543800 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *    213.29909543800 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    saturn_l_0 = 0.0;

    saturn_l_0 = saturn_l_0 + -1 *      0.01411655077 *        7.11354700080 * sin( 4.58553469006 +        7.11354700080*t);
    saturn_l_0 = saturn_l_0 + -1 *      0.87401675650 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(saturn_l_1+saturn_l_0);
}

vsop87_pico_saturn_a_velocity <- function(t){
    saturn_a_0 = 0.0;

    saturn_a_0 = saturn_a_0 + -1 *      0.03363448736 *      316.39186965660 * sin( 6.00973673460 +      316.39186965660*t);
    saturn_a_0 = saturn_a_0 + -1 *      9.55490959574 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(saturn_a_0);
}

vsop87_pico_neptune_p_velocity <- function(t){
    neptune_p_0 = 0.0;

    neptune_p_0 = neptune_p_0 + -1 *      0.01151683985 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(neptune_p_0);
}

vsop87_pico_neptune_q_velocity <- function(t){
    neptune_q_0 = 0.0;

    neptune_q_0 = neptune_q_0 + -1 *      0.01029147819 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);
    return(neptune_q_0);
}

vsop87_pico_neptune_h_velocity <- function(t){
    return(0);
}

vsop87_pico_neptune_k_velocity <- function(t){
    return(0);
}

vsop87_pico_neptune_l_velocity <- function(t){
    neptune_l_1 = 0.0;

    neptune_l_1 = neptune_l_1 + t^0 * 1 *     38.13303563780 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *     38.13303563780 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    neptune_l_0 = 0.0;

    neptune_l_0 = neptune_l_0 + -1 *      0.01017628072 *        1.48447270830 * sin( 0.48586478491 +        1.48447270830*t);
    neptune_l_0 = neptune_l_0 + -1 *      5.31188628676 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(neptune_l_1+neptune_l_0);
}

vsop87_pico_neptune_a_velocity <- function(t){
    neptune_a_0 = 0.0;

    neptune_a_0 = neptune_a_0 + -1 *      0.03597274341 *      175.16605980020 * sin( 1.84552690821 +      175.16605980020*t);
    neptune_a_0 = neptune_a_0 + -1 *      0.14818172119 *      491.55792945680 * sin( 1.57105922541 +      491.55792945680*t);
    neptune_a_0 = neptune_a_0 + -1 *     30.11038686942 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(neptune_a_0);
}

vsop87_pico_mercury_p_velocity <- function(t){
    mercury_p_0 = 0.0;

    mercury_p_0 = mercury_p_0 + -1 *      0.04563550461 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mercury_p_0);
}

vsop87_pico_mercury_q_velocity <- function(t){
    mercury_q_0 = 0.0;

    mercury_q_0 = mercury_q_0 + -1 *      0.04061563384 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mercury_q_0);
}

vsop87_pico_mercury_h_velocity <- function(t){
    mercury_h_0 = 0.0;

    mercury_h_0 = mercury_h_0 + -1 *      0.20072331368 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mercury_h_0);
}

vsop87_pico_mercury_k_velocity <- function(t){
    mercury_k_0 = 0.0;

    mercury_k_0 = mercury_k_0 + -1 *      0.04466059760 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mercury_k_0);
}

vsop87_pico_mercury_l_velocity <- function(t){
    mercury_l_1 = 0.0;

    mercury_l_1 = mercury_l_1 + t^0 * 1 *  26087.90314157420 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *  26087.90314157420 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    mercury_l_0 = 0.0;

    mercury_l_0 = mercury_l_0 + -1 *      4.40260884240 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mercury_l_1+mercury_l_0);
}

vsop87_pico_mercury_a_velocity <- function(t){
    mercury_a_0 = 0.0;

    mercury_a_0 = mercury_a_0 + -1 *      0.38709830982 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mercury_a_0);
}

vsop87_pico_mars_p_velocity <- function(t){
    mars_p_0 = 0.0;

    mars_p_0 = mars_p_0 + -1 *      0.01228449307 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mars_p_0);
}

vsop87_pico_mars_q_velocity <- function(t){
    mars_q_0 = 0.0;

    mars_q_0 = mars_q_0 + -1 *      0.01047042574 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mars_q_0);
}

vsop87_pico_mars_h_velocity <- function(t){
    mars_h_0 = 0.0;

    mars_h_0 = mars_h_0 + -1 *      0.03789973236 *        0.00000000000 * sin( 3.14159265359 +        0.00000000000*t);
    return(mars_h_0);
}

vsop87_pico_mars_k_velocity <- function(t){
    mars_k_0 = 0.0;

    mars_k_0 = mars_k_0 + -1 *      0.08536560252 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mars_k_0);
}

vsop87_pico_mars_l_velocity <- function(t){
    mars_l_1 = 0.0;

    mars_l_1 = mars_l_1 + t^0 * 1 *   3340.61242669981 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *   3340.61242669981 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    mars_l_0 = 0.0;

    mars_l_0 = mars_l_0 + -1 *      6.20347611291 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mars_l_1+mars_l_0);
}

vsop87_pico_mars_a_velocity <- function(t){
    mars_a_0 = 0.0;

    mars_a_0 = mars_a_0 + -1 *      1.52367934191 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(mars_a_0);
}

vsop87_pico_jupiter_p_velocity <- function(t){
    jupiter_p_0 = 0.0;

    jupiter_p_0 = jupiter_p_0 + -1 *      0.01118377157 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(jupiter_p_0);
}

vsop87_pico_jupiter_q_velocity <- function(t){
    return(0);
}

vsop87_pico_jupiter_h_velocity <- function(t){
    jupiter_h_0 = 0.0;

    jupiter_h_0 = jupiter_h_0 + -1 *      0.01200385748 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(jupiter_h_0);
}

vsop87_pico_jupiter_k_velocity <- function(t){
    jupiter_k_0 = 0.0;

    jupiter_k_0 = jupiter_k_0 + -1 *      0.04698572124 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(jupiter_k_0);
}

vsop87_pico_jupiter_l_velocity <- function(t){
    jupiter_l_1 = 0.0;

    jupiter_l_1 = jupiter_l_1 + t^0 * 1 *    529.69096509460 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *    529.69096509460 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    jupiter_l_0 = 0.0;

    jupiter_l_0 = jupiter_l_0 + -1 *      0.59954649739 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(jupiter_l_1+jupiter_l_0);
}

vsop87_pico_jupiter_a_velocity <- function(t){
    jupiter_a_0 = 0.0;

    jupiter_a_0 = jupiter_a_0 + -1 *      5.20260319132 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(jupiter_a_0);
}

vsop87_pico_emb_p_velocity <- function(t){
    return(0);
}

vsop87_pico_emb_q_velocity <- function(t){
    return(0);
}

vsop87_pico_emb_h_velocity <- function(t){
    emb_h_0 = 0.0;

    emb_h_0 = emb_h_0 + -1 *      0.01628447663 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(emb_h_0);
}

vsop87_pico_emb_k_velocity <- function(t){
    return(0);
}

vsop87_pico_emb_l_velocity <- function(t){
    emb_l_1 = 0.0;

    emb_l_1 = emb_l_1 + t^0 * 1 *   6283.07584999140 * cos( 0.00000000000 +        0.00000000000*t) - t^1 *   6283.07584999140 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);

    emb_l_0 = 0.0;

    emb_l_0 = emb_l_0 + -1 *      1.75347045953 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(emb_l_1+emb_l_0);
}

vsop87_pico_emb_a_velocity <- function(t){
    emb_a_0 = 0.0;

    emb_a_0 = emb_a_0 + -1 *      1.00000101778 *        0.00000000000 * sin( 0.00000000000 +        0.00000000000*t);
    return(emb_a_0);
}

