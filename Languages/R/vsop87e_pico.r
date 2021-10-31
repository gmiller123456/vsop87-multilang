#VSOP87-Multilang http://www.celestialprogramming.com/
#Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

vsop87e_pico_getMercury <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87e_pico_mercury_x(t);
    temp[2]=vsop87e_pico_mercury_y(t);
    temp[3]=vsop87e_pico_mercury_z(t);

    return(temp);
}

vsop87e_pico_getVenus <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87e_pico_venus_x(t);
    temp[2]=vsop87e_pico_venus_y(t);
    temp[3]=vsop87e_pico_venus_z(t);

    return(temp);
}

vsop87e_pico_getEarth <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87e_pico_earth_x(t);
    temp[2]=vsop87e_pico_earth_y(t);
    temp[3]=vsop87e_pico_earth_z(t);

    return(temp);
}

vsop87e_pico_getMars <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87e_pico_mars_x(t);
    temp[2]=vsop87e_pico_mars_y(t);
    temp[3]=vsop87e_pico_mars_z(t);

    return(temp);
}

vsop87e_pico_getJupiter <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87e_pico_jupiter_x(t);
    temp[2]=vsop87e_pico_jupiter_y(t);
    temp[3]=vsop87e_pico_jupiter_z(t);

    return(temp);
}

vsop87e_pico_getSaturn <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87e_pico_saturn_x(t);
    temp[2]=vsop87e_pico_saturn_y(t);
    temp[3]=vsop87e_pico_saturn_z(t);

    return(temp);
}

vsop87e_pico_getUranus <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87e_pico_uranus_x(t);
    temp[2]=vsop87e_pico_uranus_y(t);
    temp[3]=vsop87e_pico_uranus_z(t);

    return(temp);
}

vsop87e_pico_getNeptune <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87e_pico_neptune_x(t);
    temp[2]=vsop87e_pico_neptune_y(t);
    temp[3]=vsop87e_pico_neptune_z(t);

    return(temp);
}

vsop87e_pico_getSun <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87e_pico_sun_x(t);
    temp[2]=vsop87e_pico_sun_y(t);
    temp[3]=vsop87e_pico_sun_z(t);

    return(temp);
}

vsop87e_pico_venus_z <- function(t){
    venus_z_0 = 0.0;

    venus_z_0 = venus_z_0 +      0.04282979819 * cos( 0.26703856471 +    10213.28554621100*t);
    return(venus_z_0);
}

vsop87e_pico_venus_y <- function(t){
    venus_y_0 = 0.0;

    venus_y_0 = venus_y_0 +      0.72324643689 * cos( 1.60573808356 +    10213.28554621100*t);
    return(venus_y_0);
}

vsop87e_pico_venus_x <- function(t){
    venus_x_0 = 0.0;

    venus_x_0 = venus_x_0 +      0.72211104628 * cos( 3.17575836361 +    10213.28554621100*t);
    return(venus_x_0);
}

vsop87e_pico_uranus_z <- function(t){
    uranus_z_0 = 0.0;

    uranus_z_0 = uranus_z_0 +      0.01775471434 * cos( 3.14159265359 +        0.00000000000*t);
    uranus_z_0 = uranus_z_0 +      0.25876996652 * cos( 2.61861278845 +       74.78159856730*t);
    return(uranus_z_0);
}

vsop87e_pico_uranus_y <- function(t){
    uranus_y_1 = 0.0;

    uranus_y_1 = uranus_y_1 +      0.02157902502 * cos( 0.00000000000 +        0.00000000000*t);
    uranus_y_1=uranus_y_1*t;

    uranus_y_0 = 0.0;

    uranus_y_0 = uranus_y_0 +      0.01442293466 * cos( 1.08004535633 +      148.07872442630*t);
    uranus_y_0 = uranus_y_0 +      0.01542607086 * cos( 2.55041543170 +      224.34479570190*t);
    uranus_y_0 = uranus_y_0 +      0.06249939655 * cos( 3.56960238469 +        1.48447270830*t);
    uranus_y_0 = uranus_y_0 +      0.14122904825 * cos( 2.82489928705 +       76.26607127560*t);
    uranus_y_0 = uranus_y_0 +      0.14755311401 * cos( 1.85423292905 +       73.29712585900*t);
    uranus_y_0 = uranus_y_0 +      0.16222255941 * cos( 3.14159265359 +        0.00000000000*t);
    uranus_y_0 = uranus_y_0 +      0.44388525091 * cos( 0.08884126943 +      149.56319713460*t);
    uranus_y_0 = uranus_y_0 +     19.16434475791 * cos( 3.91045677275 +       74.78159856730*t);
    return(uranus_y_1+uranus_y_0);
}

vsop87e_pico_uranus_x <- function(t){
    uranus_x_0 = 0.0;

    uranus_x_0 = uranus_x_0 +      0.01444153470 * cos( 2.65117108186 +      148.07872442630*t);
    uranus_x_0 = uranus_x_0 +      0.01542890129 * cos( 4.12122840701 +      224.34479570190*t);
    uranus_x_0 = uranus_x_0 +      0.06200970387 * cos( 5.14043568284 +        1.48447270830*t);
    uranus_x_0 = uranus_x_0 +      0.14129215712 * cos( 4.39576776954 +       76.26607127560*t);
    uranus_x_0 = uranus_x_0 +      0.14667584671 * cos( 3.42395875589 +       73.29712585900*t);
    uranus_x_0 = uranus_x_0 +      0.44400556159 * cos( 1.65967535182 +      149.56319713460*t);
    uranus_x_0 = uranus_x_0 +      1.32301898121 * cos( 0.00000000000 +        0.00000000000*t);
    uranus_x_0 = uranus_x_0 +     19.17286937362 * cos( 5.48133416758 +       74.78159856730*t);
    return(uranus_x_0);
}

vsop87e_pico_sun_z <- function(t){
    return(0);
}

vsop87e_pico_sun_y <- function(t){
    return(0);
}

vsop87e_pico_sun_x <- function(t){
    return(0);
}

vsop87e_pico_saturn_z <- function(t){
    saturn_z_1 = 0.0;

    saturn_z_1 = saturn_z_1 +      0.01905958940 * cos( 4.94544746619 +      213.29909543800*t);
    saturn_z_1=saturn_z_1*t;

    saturn_z_0 = 0.0;

    saturn_z_0 = saturn_z_0 +      0.01213097211 * cos( 0.00000000000 +        0.00000000000*t);
    saturn_z_0 = saturn_z_0 +      0.01147953788 * cos( 2.85128771957 +      426.59819087600*t);
    saturn_z_0 = saturn_z_0 +      0.41345140292 * cos( 3.60234141893 +      213.29909543800*t);
    return(saturn_z_1+saturn_z_0);
}

vsop87e_pico_saturn_y <- function(t){
    saturn_y_1 = 0.0;

    saturn_y_1 = saturn_y_1 +      0.02646734779 * cos( 3.76132299914 +      220.41264243880*t);
    saturn_y_1 = saturn_y_1 +      0.02740812928 * cos( 4.26667506460 +      206.18554843720*t);
    saturn_y_1 = saturn_y_1 +      0.03089676414 * cos( 2.70347020059 +      426.59819087600*t);
    saturn_y_1 = saturn_y_1 +      0.05373895252 * cos( 0.00000000000 +        0.00000000000*t);
    saturn_y_1=saturn_y_1*t;

    saturn_y_0 = 0.0;

    saturn_y_0 = saturn_y_0 +      0.01098442011 * cos( 4.08609387384 +      639.89728631400*t);
    saturn_y_0 = saturn_y_0 +      0.01245523800 * cos( 0.60375781288 +      110.20632121940*t);
    saturn_y_0 = saturn_y_0 +      0.01183557497 * cos( 1.34637027573 +      419.48464387520*t);
    saturn_y_0 = saturn_y_0 +      0.02345226948 * cos( 0.44652393276 +        7.11354700080*t);
    saturn_y_0 = saturn_y_0 +      0.06631679200 * cos( 5.46258849076 +      220.41264243880*t);
    saturn_y_0 = saturn_y_0 +      0.06914690347 * cos( 2.55279029588 +      206.18554843720*t);
    saturn_y_0 = saturn_y_0 +      0.26434197609 * cos( 4.83528742856 +      426.59819087600*t);
    saturn_y_0 = saturn_y_0 +      0.79354119271 * cos( 3.14159265359 +        0.00000000000*t);
    saturn_y_0 = saturn_y_0 +      9.52714696877 * cos( 5.58600556072 +      213.29909543800*t);
    return(saturn_y_1+saturn_y_0);
}

vsop87e_pico_saturn_x <- function(t){
    saturn_x_1 = 0.0;

    saturn_x_1 = saturn_x_1 +      0.02642347272 * cos( 5.33291950842 +      220.41264243880*t);
    saturn_x_1 = saturn_x_1 +      0.02714141496 * cos( 5.85229546861 +      206.18554843720*t);
    saturn_x_1 = saturn_x_1 +      0.03084144308 * cos( 4.27565898829 +      426.59819087600*t);
    saturn_x_1 = saturn_x_1 +      0.07573807889 * cos( 0.00000000000 +        0.00000000000*t);
    saturn_x_1=saturn_x_1*t;

    saturn_x_0 = 0.0;

    saturn_x_0 = saturn_x_0 +      0.01097374519 * cos( 5.65753938643 +      639.89728631400*t);
    saturn_x_0 = saturn_x_0 +      0.01115372225 * cos( 3.15690865182 +      419.48464387520*t);
    saturn_x_0 = saturn_x_0 +      0.01255113414 * cos( 2.17347170552 +      110.20632121940*t);
    saturn_x_0 = saturn_x_0 +      0.02335961354 * cos( 2.02227905783 +        7.11354700080*t);
    saturn_x_0 = saturn_x_0 +      0.04274172066 * cos( 0.00000000000 +        0.00000000000*t);
    saturn_x_0 = saturn_x_0 +      0.06622371284 * cos( 0.75094738122 +      220.41264243880*t);
    saturn_x_0 = saturn_x_0 +      0.06758489145 * cos( 4.16767544586 +      206.18554843720*t);
    saturn_x_0 = saturn_x_0 +      0.26404799161 * cos( 0.12391580771 +      426.59819087600*t);
    saturn_x_0 = saturn_x_0 +      9.51366533422 * cos( 0.87441380650 +      213.29909543800*t);
    return(saturn_x_1+saturn_x_0);
}

vsop87e_pico_neptune_z <- function(t){
    neptune_z_0 = 0.0;

    neptune_z_0 = neptune_z_0 +      0.01244825806 * cos( 0.00000000000 +        0.00000000000*t);
    neptune_z_0 = neptune_z_0 +      0.92861252357 * cos( 1.44103930199 +       38.13303563780*t);
    return(neptune_z_0);
}

vsop87e_pico_neptune_y <- function(t){
    neptune_y_0 = 0.0;

    neptune_y_0 = neptune_y_0 +      0.02584389323 * cos( 0.42549727257 +        1.48447270830*t);
    neptune_y_0 = neptune_y_0 +      0.14935398681 * cos( 5.79694896309 +       39.61750834610*t);
    neptune_y_0 = neptune_y_0 +      0.15705776296 * cos( 4.82539969469 +       36.64856292950*t);
    neptune_y_0 = neptune_y_0 +      0.13505308635 * cos( 1.92949466968 +       76.26607127560*t);
    neptune_y_0 = neptune_y_0 +      0.30171988148 * cos( 3.14159265359 +        0.00000000000*t);
    neptune_y_0 = neptune_y_0 +     30.05900907352 * cos( 3.74086294715 +       38.13303563780*t);
    return(neptune_y_0);
}

vsop87e_pico_neptune_x <- function(t){
    neptune_x_0 = 0.0;

    neptune_x_0 = neptune_x_0 +      0.02597449604 * cos( 1.99590330725 +        1.48447270830*t);
    neptune_x_0 = neptune_x_0 +      0.14934353052 * cos( 1.08499398649 +       39.61750834610*t);
    neptune_x_0 = neptune_x_0 +      0.15725280871 * cos( 0.11319072402 +       36.64856292950*t);
    neptune_x_0 = neptune_x_0 +      0.13504578270 * cos( 3.50075407055 +       76.26607127560*t);
    neptune_x_0 = neptune_x_0 +      0.27050789973 * cos( 3.14159265359 +        0.00000000000*t);
    neptune_x_0 = neptune_x_0 +     30.05734568801 * cos( 5.31211340030 +       38.13303563780*t);
    return(neptune_x_0);
}

vsop87e_pico_mercury_z <- function(t){
    mercury_z_0 = 0.0;

    mercury_z_0 = mercury_z_0 +      0.04607664562 * cos( 1.99295081967 +    26087.90314157420*t);
    return(mercury_z_0);
}

vsop87e_pico_mercury_y <- function(t){
    mercury_y_0 = 0.0;

    mercury_y_0 = mercury_y_0 +      0.03854667576 * cos( 5.88780608961 +    52175.80628314840*t);
    mercury_y_0 = mercury_y_0 +      0.11592262295 * cos( 3.14159265359 +        0.00000000000*t);
    mercury_y_0 = mercury_y_0 +      0.37953636588 * cos( 2.83780617821 +    26087.90314157420*t);
    return(mercury_y_0);
}

vsop87e_pico_mercury_x <- function(t){
    mercury_x_0 = 0.0;

    mercury_x_0 = mercury_x_0 +      0.02596241714 * cos( 3.14159265359 +        0.00000000000*t);
    mercury_x_0 = mercury_x_0 +      0.03825746037 * cos( 1.16485604343 +    52175.80628314840*t);
    mercury_x_0 = mercury_x_0 +      0.37546285495 * cos( 4.39651506942 +    26087.90314157420*t);
    return(mercury_x_0);
}

vsop87e_pico_mars_z <- function(t){
    mars_z_0 = 0.0;

    mars_z_0 = mars_z_0 +      0.04901205639 * cos( 3.76712324293 +     3340.61242669980*t);
    return(mars_z_0);
}

vsop87e_pico_mars_y <- function(t){
    mars_y_1 = 0.0;

    mars_y_1 = mars_y_1 +      0.01427318093 * cos( 3.14159265359 +        0.00000000000*t);
    mars_y_1=mars_y_1*t;

    mars_y_0 = 0.0;

    mars_y_0 = mars_y_0 +      0.08689350637 * cos( 0.00000000000 +        0.00000000000*t);
    mars_y_0 = mars_y_0 +      0.07064547959 * cos( 4.97051892898 +     6681.22485339960*t);
    mars_y_0 = mars_y_0 +      1.51558927367 * cos( 4.63212206588 +     3340.61242669980*t);
    return(mars_y_1+mars_y_0);
}

vsop87e_pico_mars_x <- function(t){
    mars_x_0 = 0.0;

    mars_x_0 = mars_x_0 +      0.07070917372 * cos( 0.25870338552 +     6681.22485339960*t);
    mars_x_0 = mars_x_0 +      0.19473570996 * cos( 3.14159265359 +        0.00000000000*t);
    mars_x_0 = mars_x_0 +      1.51769887405 * cos( 6.20403346548 +     3340.61242669980*t);
    return(mars_x_0);
}

vsop87e_pico_jupiter_z <- function(t){
    jupiter_z_0 = 0.0;

    jupiter_z_0 = jupiter_z_0 +      0.11811822789 * cos( 3.55844641987 +      529.69096509460*t);
    return(jupiter_z_0);
}

vsop87e_pico_jupiter_y <- function(t){
    jupiter_y_1 = 0.0;

    jupiter_y_1 = jupiter_y_1 +      0.01694792137 * cos( 3.14159265359 +        0.00000000000*t);
    jupiter_y_1=jupiter_y_1*t;

    jupiter_y_0 = 0.0;

    jupiter_y_0 = jupiter_y_0 +      0.01474403395 * cos( 2.04679547637 +      536.80451209540*t);
    jupiter_y_0 = jupiter_y_0 +      0.01506838468 * cos( 5.43934599781 +      522.57741809380*t);
    jupiter_y_0 = jupiter_y_0 +      0.09329801081 * cos( 3.14159265359 +        0.00000000000*t);
    jupiter_y_0 = jupiter_y_0 +      0.12580850775 * cos( 5.66160225641 +     1059.38193018920*t);
    jupiter_y_0 = jupiter_y_0 +      5.19024510371 * cos( 5.31203160043 +      529.69096509460*t);
    return(jupiter_y_1+jupiter_y_0);
}

vsop87e_pico_jupiter_x <- function(t){
    jupiter_x_0 = 0.0;

    jupiter_x_0 = jupiter_x_0 +      0.01474818211 * cos( 3.61736901402 +      536.80451209540*t);
    jupiter_x_0 = jupiter_x_0 +      0.01499237862 * cos( 0.73175554601 +      522.57741809380*t);
    jupiter_x_0 = jupiter_x_0 +      0.12581924842 * cos( 0.94911581432 +     1059.38193018920*t);
    jupiter_x_0 = jupiter_x_0 +      0.36633268070 * cos( 3.14159265359 +        0.00000000000*t);
    jupiter_x_0 = jupiter_x_0 +      5.19167797375 * cos( 0.59945079482 +      529.69096509460*t);
    return(jupiter_x_0);
}

vsop87e_pico_earth_z <- function(t){
    return(0);
}

vsop87e_pico_earth_y <- function(t){
    earth_y_0 = 0.0;

    earth_y_0 = earth_y_0 +      0.02408829501 * cos( 3.14159265359 +        0.00000000000*t);
    earth_y_0 = earth_y_0 +      0.99988907017 * cos( 0.18265890456 +     6283.07584999140*t);
    return(earth_y_0);
}

vsop87e_pico_earth_x <- function(t){
    earth_x_0 = 0.0;

    earth_x_0 = earth_x_0 +      0.99982624851 * cos( 1.75348568475 +     6283.07584999140*t);
    return(earth_x_0);
}

