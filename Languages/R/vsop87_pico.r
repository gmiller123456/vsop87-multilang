#VSOP87-Multilang http://www.celestialprogramming.com/
#Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

vsop87_pico_getMercury <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_pico_mercury_a(t);
    temp[2]=vsop87_pico_mercury_l(t);
    temp[3]=vsop87_pico_mercury_k(t);
    temp[4]=vsop87_pico_mercury_h(t);
    temp[5]=vsop87_pico_mercury_q(t);
    temp[6]=vsop87_pico_mercury_p(t);

    return(temp);
}

vsop87_pico_getVenus <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_pico_venus_a(t);
    temp[2]=vsop87_pico_venus_l(t);
    temp[3]=vsop87_pico_venus_k(t);
    temp[4]=vsop87_pico_venus_h(t);
    temp[5]=vsop87_pico_venus_q(t);
    temp[6]=vsop87_pico_venus_p(t);

    return(temp);
}

vsop87_pico_getEmb <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_pico_emb_a(t);
    temp[2]=vsop87_pico_emb_l(t);
    temp[3]=vsop87_pico_emb_k(t);
    temp[4]=vsop87_pico_emb_h(t);
    temp[5]=vsop87_pico_emb_q(t);
    temp[6]=vsop87_pico_emb_p(t);

    return(temp);
}

vsop87_pico_getMars <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_pico_mars_a(t);
    temp[2]=vsop87_pico_mars_l(t);
    temp[3]=vsop87_pico_mars_k(t);
    temp[4]=vsop87_pico_mars_h(t);
    temp[5]=vsop87_pico_mars_q(t);
    temp[6]=vsop87_pico_mars_p(t);

    return(temp);
}

vsop87_pico_getJupiter <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_pico_jupiter_a(t);
    temp[2]=vsop87_pico_jupiter_l(t);
    temp[3]=vsop87_pico_jupiter_k(t);
    temp[4]=vsop87_pico_jupiter_h(t);
    temp[5]=vsop87_pico_jupiter_q(t);
    temp[6]=vsop87_pico_jupiter_p(t);

    return(temp);
}

vsop87_pico_getSaturn <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_pico_saturn_a(t);
    temp[2]=vsop87_pico_saturn_l(t);
    temp[3]=vsop87_pico_saturn_k(t);
    temp[4]=vsop87_pico_saturn_h(t);
    temp[5]=vsop87_pico_saturn_q(t);
    temp[6]=vsop87_pico_saturn_p(t);

    return(temp);
}

vsop87_pico_getUranus <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_pico_uranus_a(t);
    temp[2]=vsop87_pico_uranus_l(t);
    temp[3]=vsop87_pico_uranus_k(t);
    temp[4]=vsop87_pico_uranus_h(t);
    temp[5]=vsop87_pico_uranus_q(t);
    temp[6]=vsop87_pico_uranus_p(t);

    return(temp);
}

vsop87_pico_getNeptune <- function(t){
    temp=array(c(0.0, 0.0, 0.0, 0.0, 0.0, 0.0));
    temp[1]=vsop87_pico_neptune_a(t);
    temp[2]=vsop87_pico_neptune_l(t);
    temp[3]=vsop87_pico_neptune_k(t);
    temp[4]=vsop87_pico_neptune_h(t);
    temp[5]=vsop87_pico_neptune_q(t);
    temp[6]=vsop87_pico_neptune_p(t);

    return(temp);
}

vsop87_pico_venus_p <- function(t){
    venus_p_0 = 0.0;

    venus_p_0 = venus_p_0 +      0.02882285775 * cos( 0.00000000000 +        0.00000000000*t);
    return(venus_p_0);
}

vsop87_pico_venus_q <- function(t){
    return(0);
}

vsop87_pico_venus_h <- function(t){
    return(0);
}

vsop87_pico_venus_k <- function(t){
    return(0);
}

vsop87_pico_venus_l <- function(t){
    venus_l_1 = 0.0;

    venus_l_1 = venus_l_1 +  10213.28554621100 * cos( 0.00000000000 +        0.00000000000*t);
    venus_l_1=venus_l_1*t;

    venus_l_0 = 0.0;

    venus_l_0 = venus_l_0 +      3.17614669689 * cos( 0.00000000000 +        0.00000000000*t);
    return(venus_l_1+venus_l_0);
}

vsop87_pico_venus_a <- function(t){
    venus_a_0 = 0.0;

    venus_a_0 = venus_a_0 +      0.72332981996 * cos( 0.00000000000 +        0.00000000000*t);
    return(venus_a_0);
}

vsop87_pico_uranus_p <- function(t){
    return(0);
}

vsop87_pico_uranus_q <- function(t){
    return(0);
}

vsop87_pico_uranus_h <- function(t){
    return(0);
}

vsop87_pico_uranus_k <- function(t){
    uranus_k_0 = 0.0;

    uranus_k_0 = uranus_k_0 +      0.04595132376 * cos( 3.14159265359 +        0.00000000000*t);
    return(uranus_k_0);
}

vsop87_pico_uranus_l <- function(t){
    uranus_l_1 = 0.0;

    uranus_l_1 = uranus_l_1 +     74.78159856730 * cos( 0.00000000000 +        0.00000000000*t);
    uranus_l_1=uranus_l_1*t;

    uranus_l_0 = 0.0;

    uranus_l_0 = uranus_l_0 +      0.01503941337 * cos( 3.62721239702 +        1.48447270830*t);
    uranus_l_0 = uranus_l_0 +      5.48129387159 * cos( 0.00000000000 +        0.00000000000*t);
    return(uranus_l_1+uranus_l_0);
}

vsop87_pico_uranus_a <- function(t){
    uranus_a_0 = 0.0;

    uranus_a_0 = uranus_a_0 +      0.02068375131 * cos( 1.67626096637 +      138.51749687070*t);
    uranus_a_0 = uranus_a_0 +      0.08030476240 * cos( 1.40140954803 +      454.90936652730*t);
    uranus_a_0 = uranus_a_0 +     19.21844606178 * cos( 0.00000000000 +        0.00000000000*t);
    return(uranus_a_0);
}

vsop87_pico_saturn_p <- function(t){
    saturn_p_0 = 0.0;

    saturn_p_0 = saturn_p_0 +      0.01989147301 * cos( 0.00000000000 +        0.00000000000*t);
    return(saturn_p_0);
}

vsop87_pico_saturn_q <- function(t){
    return(0);
}

vsop87_pico_saturn_h <- function(t){
    saturn_h_0 = 0.0;

    saturn_h_0 = saturn_h_0 +      0.05542964254 * cos( 0.00000000000 +        0.00000000000*t);
    return(saturn_h_0);
}

vsop87_pico_saturn_k <- function(t){
    return(0);
}

vsop87_pico_saturn_l <- function(t){
    saturn_l_1 = 0.0;

    saturn_l_1 = saturn_l_1 +    213.29909543800 * cos( 0.00000000000 +        0.00000000000*t);
    saturn_l_1=saturn_l_1*t;

    saturn_l_0 = 0.0;

    saturn_l_0 = saturn_l_0 +      0.01411655077 * cos( 4.58553469006 +        7.11354700080*t);
    saturn_l_0 = saturn_l_0 +      0.87401675650 * cos( 0.00000000000 +        0.00000000000*t);
    return(saturn_l_1+saturn_l_0);
}

vsop87_pico_saturn_a <- function(t){
    saturn_a_0 = 0.0;

    saturn_a_0 = saturn_a_0 +      0.03363448736 * cos( 6.00973673460 +      316.39186965660*t);
    saturn_a_0 = saturn_a_0 +      9.55490959574 * cos( 0.00000000000 +        0.00000000000*t);
    return(saturn_a_0);
}

vsop87_pico_neptune_p <- function(t){
    neptune_p_0 = 0.0;

    neptune_p_0 = neptune_p_0 +      0.01151683985 * cos( 0.00000000000 +        0.00000000000*t);
    return(neptune_p_0);
}

vsop87_pico_neptune_q <- function(t){
    neptune_q_0 = 0.0;

    neptune_q_0 = neptune_q_0 +      0.01029147819 * cos( 3.14159265359 +        0.00000000000*t);
    return(neptune_q_0);
}

vsop87_pico_neptune_h <- function(t){
    return(0);
}

vsop87_pico_neptune_k <- function(t){
    return(0);
}

vsop87_pico_neptune_l <- function(t){
    neptune_l_1 = 0.0;

    neptune_l_1 = neptune_l_1 +     38.13303563780 * cos( 0.00000000000 +        0.00000000000*t);
    neptune_l_1=neptune_l_1*t;

    neptune_l_0 = 0.0;

    neptune_l_0 = neptune_l_0 +      0.01017628072 * cos( 0.48586478491 +        1.48447270830*t);
    neptune_l_0 = neptune_l_0 +      5.31188628676 * cos( 0.00000000000 +        0.00000000000*t);
    return(neptune_l_1+neptune_l_0);
}

vsop87_pico_neptune_a <- function(t){
    neptune_a_0 = 0.0;

    neptune_a_0 = neptune_a_0 +      0.03597274341 * cos( 1.84552690821 +      175.16605980020*t);
    neptune_a_0 = neptune_a_0 +      0.14818172119 * cos( 1.57105922541 +      491.55792945680*t);
    neptune_a_0 = neptune_a_0 +     30.11038686942 * cos( 0.00000000000 +        0.00000000000*t);
    return(neptune_a_0);
}

vsop87_pico_mercury_p <- function(t){
    mercury_p_0 = 0.0;

    mercury_p_0 = mercury_p_0 +      0.04563550461 * cos( 0.00000000000 +        0.00000000000*t);
    return(mercury_p_0);
}

vsop87_pico_mercury_q <- function(t){
    mercury_q_0 = 0.0;

    mercury_q_0 = mercury_q_0 +      0.04061563384 * cos( 0.00000000000 +        0.00000000000*t);
    return(mercury_q_0);
}

vsop87_pico_mercury_h <- function(t){
    mercury_h_0 = 0.0;

    mercury_h_0 = mercury_h_0 +      0.20072331368 * cos( 0.00000000000 +        0.00000000000*t);
    return(mercury_h_0);
}

vsop87_pico_mercury_k <- function(t){
    mercury_k_0 = 0.0;

    mercury_k_0 = mercury_k_0 +      0.04466059760 * cos( 0.00000000000 +        0.00000000000*t);
    return(mercury_k_0);
}

vsop87_pico_mercury_l <- function(t){
    mercury_l_1 = 0.0;

    mercury_l_1 = mercury_l_1 +  26087.90314157420 * cos( 0.00000000000 +        0.00000000000*t);
    mercury_l_1=mercury_l_1*t;

    mercury_l_0 = 0.0;

    mercury_l_0 = mercury_l_0 +      4.40260884240 * cos( 0.00000000000 +        0.00000000000*t);
    return(mercury_l_1+mercury_l_0);
}

vsop87_pico_mercury_a <- function(t){
    mercury_a_0 = 0.0;

    mercury_a_0 = mercury_a_0 +      0.38709830982 * cos( 0.00000000000 +        0.00000000000*t);
    return(mercury_a_0);
}

vsop87_pico_mars_p <- function(t){
    mars_p_0 = 0.0;

    mars_p_0 = mars_p_0 +      0.01228449307 * cos( 0.00000000000 +        0.00000000000*t);
    return(mars_p_0);
}

vsop87_pico_mars_q <- function(t){
    mars_q_0 = 0.0;

    mars_q_0 = mars_q_0 +      0.01047042574 * cos( 0.00000000000 +        0.00000000000*t);
    return(mars_q_0);
}

vsop87_pico_mars_h <- function(t){
    mars_h_0 = 0.0;

    mars_h_0 = mars_h_0 +      0.03789973236 * cos( 3.14159265359 +        0.00000000000*t);
    return(mars_h_0);
}

vsop87_pico_mars_k <- function(t){
    mars_k_0 = 0.0;

    mars_k_0 = mars_k_0 +      0.08536560252 * cos( 0.00000000000 +        0.00000000000*t);
    return(mars_k_0);
}

vsop87_pico_mars_l <- function(t){
    mars_l_1 = 0.0;

    mars_l_1 = mars_l_1 +   3340.61242669981 * cos( 0.00000000000 +        0.00000000000*t);
    mars_l_1=mars_l_1*t;

    mars_l_0 = 0.0;

    mars_l_0 = mars_l_0 +      6.20347611291 * cos( 0.00000000000 +        0.00000000000*t);
    return(mars_l_1+mars_l_0);
}

vsop87_pico_mars_a <- function(t){
    mars_a_0 = 0.0;

    mars_a_0 = mars_a_0 +      1.52367934191 * cos( 0.00000000000 +        0.00000000000*t);
    return(mars_a_0);
}

vsop87_pico_jupiter_p <- function(t){
    jupiter_p_0 = 0.0;

    jupiter_p_0 = jupiter_p_0 +      0.01118377157 * cos( 0.00000000000 +        0.00000000000*t);
    return(jupiter_p_0);
}

vsop87_pico_jupiter_q <- function(t){
    return(0);
}

vsop87_pico_jupiter_h <- function(t){
    jupiter_h_0 = 0.0;

    jupiter_h_0 = jupiter_h_0 +      0.01200385748 * cos( 0.00000000000 +        0.00000000000*t);
    return(jupiter_h_0);
}

vsop87_pico_jupiter_k <- function(t){
    jupiter_k_0 = 0.0;

    jupiter_k_0 = jupiter_k_0 +      0.04698572124 * cos( 0.00000000000 +        0.00000000000*t);
    return(jupiter_k_0);
}

vsop87_pico_jupiter_l <- function(t){
    jupiter_l_1 = 0.0;

    jupiter_l_1 = jupiter_l_1 +    529.69096509460 * cos( 0.00000000000 +        0.00000000000*t);
    jupiter_l_1=jupiter_l_1*t;

    jupiter_l_0 = 0.0;

    jupiter_l_0 = jupiter_l_0 +      0.59954649739 * cos( 0.00000000000 +        0.00000000000*t);
    return(jupiter_l_1+jupiter_l_0);
}

vsop87_pico_jupiter_a <- function(t){
    jupiter_a_0 = 0.0;

    jupiter_a_0 = jupiter_a_0 +      5.20260319132 * cos( 0.00000000000 +        0.00000000000*t);
    return(jupiter_a_0);
}

vsop87_pico_emb_p <- function(t){
    return(0);
}

vsop87_pico_emb_q <- function(t){
    return(0);
}

vsop87_pico_emb_h <- function(t){
    emb_h_0 = 0.0;

    emb_h_0 = emb_h_0 +      0.01628447663 * cos( 0.00000000000 +        0.00000000000*t);
    return(emb_h_0);
}

vsop87_pico_emb_k <- function(t){
    return(0);
}

vsop87_pico_emb_l <- function(t){
    emb_l_1 = 0.0;

    emb_l_1 = emb_l_1 +   6283.07584999140 * cos( 0.00000000000 +        0.00000000000*t);
    emb_l_1=emb_l_1*t;

    emb_l_0 = 0.0;

    emb_l_0 = emb_l_0 +      1.75347045953 * cos( 0.00000000000 +        0.00000000000*t);
    return(emb_l_1+emb_l_0);
}

vsop87_pico_emb_a <- function(t){
    emb_a_0 = 0.0;

    emb_a_0 = emb_a_0 +      1.00000101778 * cos( 0.00000000000 +        0.00000000000*t);
    return(emb_a_0);
}

