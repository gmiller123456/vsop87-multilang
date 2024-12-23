#VSOP87-Multilang http://www.celestialprogramming.com/
#Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

vsop87a_nano_getMercury <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87a_nano_mercury_x(t);
    temp[2]=vsop87a_nano_mercury_y(t);
    temp[3]=vsop87a_nano_mercury_z(t);

    return(temp);
}

vsop87a_nano_getVenus <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87a_nano_venus_x(t);
    temp[2]=vsop87a_nano_venus_y(t);
    temp[3]=vsop87a_nano_venus_z(t);

    return(temp);
}

vsop87a_nano_getEarth <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87a_nano_earth_x(t);
    temp[2]=vsop87a_nano_earth_y(t);
    temp[3]=vsop87a_nano_earth_z(t);

    return(temp);
}

vsop87a_nano_getMars <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87a_nano_mars_x(t);
    temp[2]=vsop87a_nano_mars_y(t);
    temp[3]=vsop87a_nano_mars_z(t);

    return(temp);
}

vsop87a_nano_getJupiter <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87a_nano_jupiter_x(t);
    temp[2]=vsop87a_nano_jupiter_y(t);
    temp[3]=vsop87a_nano_jupiter_z(t);

    return(temp);
}

vsop87a_nano_getSaturn <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87a_nano_saturn_x(t);
    temp[2]=vsop87a_nano_saturn_y(t);
    temp[3]=vsop87a_nano_saturn_z(t);

    return(temp);
}

vsop87a_nano_getUranus <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87a_nano_uranus_x(t);
    temp[2]=vsop87a_nano_uranus_y(t);
    temp[3]=vsop87a_nano_uranus_z(t);

    return(temp);
}

vsop87a_nano_getNeptune <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87a_nano_neptune_x(t);
    temp[2]=vsop87a_nano_neptune_y(t);
    temp[3]=vsop87a_nano_neptune_z(t);

    return(temp);
}

vsop87a_nano_getEmb <- function(t){
    temp=array(c(0.0, 0.0, 0.0));
    temp[1]=vsop87a_nano_emb_x(t);
    temp[2]=vsop87a_nano_emb_y(t);
    temp[3]=vsop87a_nano_emb_z(t);

    return(temp);
}

vsop87a_nano_getMoon <- function(earth, emb){
    temp=array(c(0.0, 0.0, 0,0));

    temp[1]=(emb[1]-earth[1])*(1 + 1 / 0.01230073677);
    temp[2]=(emb[2]-earth[2])*(1 + 1 / 0.01230073677);
    temp[3]=(emb[3]-earth[3])*(1 + 1 / 0.01230073677);
    temp[1]=temp[1]+earth[1];
    temp[2]=temp[2]+earth[2];
    temp[3]=temp[3]+earth[3];

    return(temp);
}

vsop87a_nano_venus_z <- function(t){
    venus_z_1 = 0.0;

    venus_z_1 = venus_z_1 +      0.00208096402 * cos( 1.88967278742 +    10213.28554621100*t);
    venus_z_1=venus_z_1*t;

    venus_z_0 = 0.0;

    venus_z_0 = venus_z_0 +      0.04282990302 * cos( 0.26703856476 +    10213.28554621100*t);
    return(venus_z_1+venus_z_0);
}

vsop87a_nano_venus_y <- function(t){
    venus_y_0 = 0.0;

    venus_y_0 = venus_y_0 +      0.00244884790 * cos( 2.48564954004 +    20426.57109242200*t);
    venus_y_0 = venus_y_0 +      0.00549506273 * cos( 3.14159265359 +        0.00000000000*t);
    venus_y_0 = venus_y_0 +      0.72324820731 * cos( 1.60573808356 +    10213.28554621100*t);
    return(venus_y_0);
}

vsop87a_nano_venus_x <- function(t){
    venus_x_0 = 0.0;

    venus_x_0 = venus_x_0 +      0.00244500474 * cos( 4.05566613861 +    20426.57109242200*t);
    venus_x_0 = venus_x_0 +      0.00486448018 * cos( 0.00000000000 +        0.00000000000*t);
    venus_x_0 = venus_x_0 +      0.72211281391 * cos( 3.17575836361 +    10213.28554621100*t);
    return(venus_x_0);
}

vsop87a_nano_uranus_z <- function(t){
    uranus_z_1 = 0.0;

    uranus_z_1 = uranus_z_1 +      0.00655916626 * cos( 0.01271947660 +       74.78159856730*t);
    uranus_z_1=uranus_z_1*t;

    uranus_z_0 = 0.0;

    uranus_z_0 = uranus_z_0 +      0.00190881685 * cos( 0.57869575952 +       73.29712585900*t);
    uranus_z_0 = uranus_z_0 +      0.00190281890 * cos( 1.61643841193 +       76.26607127560*t);
    uranus_z_0 = uranus_z_0 +      0.00599316131 * cos( 5.08119500585 +      149.56319713460*t);
    uranus_z_0 = uranus_z_0 +      0.01774318778 * cos( 3.14159265359 +        0.00000000000*t);
    uranus_z_0 = uranus_z_0 +      0.25878127698 * cos( 2.61861272578 +       74.78159856730*t);
    return(uranus_z_1+uranus_z_0);
}

vsop87a_nano_uranus_y <- function(t){
    uranus_y_1 = 0.0;

    uranus_y_1 = uranus_y_1 +      0.00110137111 * cos( 4.00844441616 +       11.04570026390*t);
    uranus_y_1 = uranus_y_1 +      0.00229396424 * cos( 0.91090183978 +       76.26607127560*t);
    uranus_y_1 = uranus_y_1 +      0.00238545685 * cos( 3.76882493145 +       73.29712585900*t);
    uranus_y_1 = uranus_y_1 +      0.00739227349 * cos( 4.43963890935 +      149.56319713460*t);
    uranus_y_1 = uranus_y_1 +      0.02157896385 * cos( 0.00000000000 +        0.00000000000*t);
    uranus_y_1=uranus_y_1*t;

    uranus_y_0 = 0.0;

    uranus_y_0 = uranus_y_0 +      0.00108584454 * cos( 6.02234848388 +       35.16409022120*t);
    uranus_y_0 = uranus_y_0 +      0.00104507929 * cos( 2.33345675603 +      146.59425171800*t);
    uranus_y_0 = uranus_y_0 +      0.00111204860 * cos( 3.55163219419 +      222.86032299360*t);
    uranus_y_0 = uranus_y_0 +      0.00124868545 * cos( 0.94315917319 +      111.43016149680*t);
    uranus_y_0 = uranus_y_0 +      0.00119670613 * cos( 2.53058783780 +       39.61750834610*t);
    uranus_y_0 = uranus_y_0 +      0.00135290820 * cos( 3.93970260616 +       78.71375183040*t);
    uranus_y_0 = uranus_y_0 +      0.00144032475 * cos( 0.75015700920 +       70.84944530420*t);
    uranus_y_0 = uranus_y_0 +      0.00216239629 * cos( 3.73800767580 +       38.13303563780*t);
    uranus_y_0 = uranus_y_0 +      0.00268363417 * cos( 5.68085299020 +      213.29909543800*t);
    uranus_y_0 = uranus_y_0 +      0.00387922853 * cos( 4.62026923885 +      138.51749687070*t);
    uranus_y_0 = uranus_y_0 +      0.00495936105 * cos( 5.31205753740 +      529.69096509460*t);
    uranus_y_0 = uranus_y_0 +      0.00459589120 * cos( 2.33745536070 +        2.96894541660*t);
    uranus_y_0 = uranus_y_0 +      0.00547472694 * cos( 2.06037924573 +       85.82729883120*t);
    uranus_y_0 = uranus_y_0 +      0.00541961958 * cos( 3.24476486661 +       71.81265315070*t);
    uranus_y_0 = uranus_y_0 +      0.00621326770 * cos( 1.48795811387 +       77.75054398390*t);
    uranus_y_0 = uranus_y_0 +      0.00657343120 * cos( 5.28830704469 +      151.04766984290*t);
    uranus_y_0 = uranus_y_0 +      0.00650331846 * cos( 2.76142680222 +       63.73589830340*t);
    uranus_y_0 = uranus_y_0 +      0.00938975501 * cos( 0.09275714761 +       11.04570026390*t);
    uranus_y_0 = uranus_y_0 +      0.01442356575 * cos( 1.08004542712 +      148.07872442630*t);
    uranus_y_0 = uranus_y_0 +      0.01542668264 * cos( 2.55040539213 +      224.34479570190*t);
    uranus_y_0 = uranus_y_0 +      0.06250078231 * cos( 3.56960243857 +        1.48447270830*t);
    uranus_y_0 = uranus_y_0 +      0.14123958128 * cos( 2.82486076549 +       76.26607127560*t);
    uranus_y_0 = uranus_y_0 +      0.14755940186 * cos( 1.85423280679 +       73.29712585900*t);
    uranus_y_0 = uranus_y_0 +      0.16256125476 * cos( 3.14159265359 +        0.00000000000*t);
    uranus_y_0 = uranus_y_0 +      0.44390465203 * cos( 0.08884111329 +      149.56319713460*t);
    uranus_y_0 = uranus_y_0 +     19.16518231584 * cos( 3.91045677002 +       74.78159856730*t);
    return(uranus_y_1+uranus_y_0);
}

vsop87a_nano_uranus_x <- function(t){
    uranus_x_1 = 0.0;

    uranus_x_1 = uranus_x_1 +      0.00111045158 * cos( 5.57157235960 +       11.04570026390*t);
    uranus_x_1 = uranus_x_1 +      0.00229676787 * cos( 2.48204455775 +       76.26607127560*t);
    uranus_x_1 = uranus_x_1 +      0.00239840801 * cos( 5.33657762707 +       73.29712585900*t);
    uranus_x_1 = uranus_x_1 +      0.00526878306 * cos( 3.14159265359 +        0.00000000000*t);
    uranus_x_1 = uranus_x_1 +      0.00739730021 * cos( 6.01067825116 +      149.56319713460*t);
    uranus_x_1=uranus_x_1*t;

    uranus_x_0 = 0.0;

    uranus_x_0 = uranus_x_0 +      0.00110125387 * cos( 4.45473528724 +       35.16409022120*t);
    uranus_x_0 = uranus_x_0 +      0.00104619827 * cos( 3.90538916334 +      146.59425171800*t);
    uranus_x_0 = uranus_x_0 +      0.00111260244 * cos( 5.12252784325 +      222.86032299360*t);
    uranus_x_0 = uranus_x_0 +      0.00125105686 * cos( 2.51455273063 +      111.43016149680*t);
    uranus_x_0 = uranus_x_0 +      0.00119593859 * cos( 4.10138544267 +       39.61750834610*t);
    uranus_x_0 = uranus_x_0 +      0.00135340032 * cos( 5.51062460816 +       78.71375183040*t);
    uranus_x_0 = uranus_x_0 +      0.00145505389 * cos( 2.31759757085 +       70.84944530420*t);
    uranus_x_0 = uranus_x_0 +      0.00215368005 * cos( 5.30877641428 +       38.13303563780*t);
    uranus_x_0 = uranus_x_0 +      0.00267938156 * cos( 0.96885660137 +      213.29909543800*t);
    uranus_x_0 = uranus_x_0 +      0.00383625535 * cos( 6.18762010576 +      138.51749687070*t);
    uranus_x_0 = uranus_x_0 +      0.00496087649 * cos( 0.59947400861 +      529.69096509460*t);
    uranus_x_0 = uranus_x_0 +      0.00458219984 * cos( 3.90788284112 +        2.96894541660*t);
    uranus_x_0 = uranus_x_0 +      0.00547699056 * cos( 3.63127725056 +       85.82729883120*t);
    uranus_x_0 = uranus_x_0 +      0.00634000270 * cos( 4.09556589724 +       63.73589830340*t);
    uranus_x_0 = uranus_x_0 +      0.00585182542 * cos( 4.79934779678 +       71.81265315070*t);
    uranus_x_0 = uranus_x_0 +      0.00621624676 * cos( 3.05882246638 +       77.75054398390*t);
    uranus_x_0 = uranus_x_0 +      0.00657524815 * cos( 0.57595170636 +      151.04766984290*t);
    uranus_x_0 = uranus_x_0 +      0.00944995563 * cos( 1.65869338757 +       11.04570026390*t);
    uranus_x_0 = uranus_x_0 +      0.01444216660 * cos( 2.65117115201 +      148.07872442630*t);
    uranus_x_0 = uranus_x_0 +      0.01542951343 * cos( 4.12121838072 +      224.34479570190*t);
    uranus_x_0 = uranus_x_0 +      0.06201106178 * cos( 5.14043574125 +        1.48447270830*t);
    uranus_x_0 = uranus_x_0 +      0.14130269479 * cos( 4.39572927934 +       76.26607127560*t);
    uranus_x_0 = uranus_x_0 +      0.14668209481 * cos( 3.42395862804 +       73.29712585900*t);
    uranus_x_0 = uranus_x_0 +      0.44402496796 * cos( 1.65967519586 +      149.56319713460*t);
    uranus_x_0 = uranus_x_0 +      1.32272523872 * cos( 0.00000000000 +        0.00000000000*t);
    uranus_x_0 = uranus_x_0 +     19.17370730359 * cos( 5.48133416489 +       74.78159856730*t);
    return(uranus_x_1+uranus_x_0);
}

vsop87a_nano_saturn_z <- function(t){
    saturn_z_2 = 0.0;

    saturn_z_2 = saturn_z_2 +      0.00131275155 * cos( 0.08868998101 +      213.29909543800*t);
    saturn_z_2=saturn_z_2*t*t;

    saturn_z_1 = 0.0;

    saturn_z_1 = saturn_z_1 +      0.00101466332 * cos( 1.79095829545 +      220.41264243880*t);
    saturn_z_1 = saturn_z_1 +      0.00130262284 * cos( 2.26140980879 +      206.18554843720*t);
    saturn_z_1 = saturn_z_1 +      0.00528301265 * cos( 3.14159265359 +        0.00000000000*t);
    saturn_z_1 = saturn_z_1 +      0.01906503283 * cos( 4.94544746116 +      213.29909543800*t);
    saturn_z_1=saturn_z_1*t;

    saturn_z_0 = 0.0;

    saturn_z_0 = saturn_z_0 +      0.00286934048 * cos( 3.48073526693 +      220.41264243880*t);
    saturn_z_0 = saturn_z_0 +      0.00329280791 * cos( 0.57121407104 +      206.18554843720*t);
    saturn_z_0 = saturn_z_0 +      0.01214249867 * cos( 0.00000000000 +        0.00000000000*t);
    saturn_z_0 = saturn_z_0 +      0.01148283576 * cos( 2.85128367469 +      426.59819087600*t);
    saturn_z_0 = saturn_z_0 +      0.41356950940 * cos( 3.60234142982 +      213.29909543800*t);
    return(saturn_z_2+saturn_z_1+saturn_z_0);
}

vsop87a_nano_saturn_y <- function(t){
    saturn_y_2 = 0.0;

    saturn_y_2 = saturn_y_2 +      0.00225521642 * cos( 0.91699821445 +      426.59819087600*t);
    saturn_y_2 = saturn_y_2 +      0.00362294249 * cos( 0.89540100509 +      213.29909543800*t);
    saturn_y_2 = saturn_y_2 +      0.00458518613 * cos( 0.00000000000 +        0.00000000000*t);
    saturn_y_2 = saturn_y_2 +      0.00547012116 * cos( 2.05154973426 +      220.41264243880*t);
    saturn_y_2 = saturn_y_2 +      0.00563706537 * cos( 5.97115878242 +      206.18554843720*t);
    saturn_y_2=saturn_y_2*t*t;

    saturn_y_1 = 0.0;

    saturn_y_1 = saturn_y_1 +      0.00116791227 * cos( 5.89146675760 +      110.20632121940*t);
    saturn_y_1 = saturn_y_1 +      0.00164133553 * cos( 5.29239290066 +      213.29909543800*t);
    saturn_y_1 = saturn_y_1 +      0.00189433319 * cos( 2.91501840819 +      433.71173787680*t);
    saturn_y_1 = saturn_y_1 +      0.00312271930 * cos( 3.25850205023 +      419.48464387520*t);
    saturn_y_1 = saturn_y_1 +      0.00256799701 * cos( 1.95351819758 +      639.89728631400*t);
    saturn_y_1 = saturn_y_1 +      0.00631520527 * cos( 5.03245505280 +        7.11354700080*t);
    saturn_y_1 = saturn_y_1 +      0.02647489677 * cos( 3.76132298889 +      220.41264243880*t);
    saturn_y_1 = saturn_y_1 +      0.02741594312 * cos( 4.26667636015 +      206.18554843720*t);
    saturn_y_1 = saturn_y_1 +      0.03090575152 * cos( 2.70346890906 +      426.59819087600*t);
    saturn_y_1 = saturn_y_1 +      0.05373889135 * cos( 0.00000000000 +        0.00000000000*t);
    saturn_y_1=saturn_y_1*t;

    saturn_y_0 = 0.0;

    saturn_y_0 = saturn_y_0 +      0.00335162363 * cos( 0.66422253983 +      103.09277421860*t);
    saturn_y_0 = saturn_y_0 +      0.00373327342 * cos( 4.71308726958 +      433.71173787680*t);
    saturn_y_0 = saturn_y_0 +      0.00434466176 * cos( 5.42474696262 +      529.69096509460*t);
    saturn_y_0 = saturn_y_0 +      0.00700849336 * cos( 1.13611298025 +      316.39186965660*t);
    saturn_y_0 = saturn_y_0 +      0.01098751131 * cos( 4.08608782813 +      639.89728631400*t);
    saturn_y_0 = saturn_y_0 +      0.01245790434 * cos( 0.60367177975 +      110.20632121940*t);
    saturn_y_0 = saturn_y_0 +      0.01183874652 * cos( 1.34638298371 +      419.48464387520*t);
    saturn_y_0 = saturn_y_0 +      0.02345609742 * cos( 0.44652132519 +        7.11354700080*t);
    saturn_y_0 = saturn_y_0 +      0.06633570703 * cos( 5.46258848288 +      220.41264243880*t);
    saturn_y_0 = saturn_y_0 +      0.06916653915 * cos( 2.55279408706 +      206.18554843720*t);
    saturn_y_0 = saturn_y_0 +      0.26441781302 * cos( 4.83528061849 +      426.59819087600*t);
    saturn_y_0 = saturn_y_0 +      0.79387988806 * cos( 3.14159265359 +        0.00000000000*t);
    saturn_y_0 = saturn_y_0 +      9.52986882699 * cos( 5.58600556665 +      213.29909543800*t);
    return(saturn_y_2+saturn_y_1+saturn_y_0);
}

vsop87a_nano_saturn_x <- function(t){
    saturn_x_2 = 0.0;

    saturn_x_2 = saturn_x_2 +      0.00224302269 * cos( 2.49151203519 +      426.59819087600*t);
    saturn_x_2 = saturn_x_2 +      0.00336109713 * cos( 2.42547432460 +      213.29909543800*t);
    saturn_x_2 = saturn_x_2 +      0.00443342186 * cos( 3.14159265359 +        0.00000000000*t);
    saturn_x_2 = saturn_x_2 +      0.00545834518 * cos( 3.62343709657 +      220.41264243880*t);
    saturn_x_2 = saturn_x_2 +      0.00560746334 * cos( 1.26401632282 +      206.18554843720*t);
    saturn_x_2=saturn_x_2*t*t;

    saturn_x_1 = 0.0;

    saturn_x_1 = saturn_x_1 +      0.00119531145 * cos( 1.14735096078 +      110.20632121940*t);
    saturn_x_1 = saturn_x_1 +      0.00203646570 * cos( 1.10998681782 +      213.29909543800*t);
    saturn_x_1 = saturn_x_1 +      0.00189196274 * cos( 4.48642453552 +      433.71173787680*t);
    saturn_x_1 = saturn_x_1 +      0.00312356512 * cos( 4.83001724941 +      419.48464387520*t);
    saturn_x_1 = saturn_x_1 +      0.00256560953 * cos( 3.52478934343 +      639.89728631400*t);
    saturn_x_1 = saturn_x_1 +      0.00627104520 * cos( 0.32898307969 +        7.11354700080*t);
    saturn_x_1 = saturn_x_1 +      0.02643100909 * cos( 5.33291950584 +      220.41264243880*t);
    saturn_x_1 = saturn_x_1 +      0.02714918399 * cos( 5.85229412397 +      206.18554843720*t);
    saturn_x_1 = saturn_x_1 +      0.03085041716 * cos( 4.27565749128 +      426.59819087600*t);
    saturn_x_1 = saturn_x_1 +      0.07575103962 * cos( 0.00000000000 +        0.00000000000*t);
    saturn_x_1=saturn_x_1*t;

    saturn_x_0 = 0.0;

    saturn_x_0 = saturn_x_0 +      0.00372894461 * cos( 0.00137195497 +      433.71173787680*t);
    saturn_x_0 = saturn_x_0 +      0.00433994439 * cos( 0.72012820974 +      529.69096509460*t);
    saturn_x_0 = saturn_x_0 +      0.00509313365 * cos( 4.95865624780 +      103.09277421860*t);
    saturn_x_0 = saturn_x_0 +      0.00716328481 * cos( 2.71149993708 +      316.39186965660*t);
    saturn_x_0 = saturn_x_0 +      0.01097683232 * cos( 5.65753337256 +      639.89728631400*t);
    saturn_x_0 = saturn_x_0 +      0.01115684467 * cos( 3.15686878377 +      419.48464387520*t);
    saturn_x_0 = saturn_x_0 +      0.01255372247 * cos( 2.17338917731 +      110.20632121940*t);
    saturn_x_0 = saturn_x_0 +      0.02336340488 * cos( 2.02227784673 +        7.11354700080*t);
    saturn_x_0 = saturn_x_0 +      0.04244797817 * cos( 0.00000000000 +        0.00000000000*t);
    saturn_x_0 = saturn_x_0 +      0.06624260115 * cos( 0.75094737780 +      220.41264243880*t);
    saturn_x_0 = saturn_x_0 +      0.06760430339 * cos( 4.16767145778 +      206.18554843720*t);
    saturn_x_0 = saturn_x_0 +      0.26412374238 * cos( 0.12390892620 +      426.59819087600*t);
    saturn_x_0 = saturn_x_0 +      9.51638335797 * cos( 0.87441380794 +      213.29909543800*t);
    return(saturn_x_2+saturn_x_1+saturn_x_0);
}

vsop87a_nano_neptune_z <- function(t){
    neptune_z_1 = 0.0;

    neptune_z_1 = neptune_z_1 +      0.00154885971 * cos( 2.14239039664 +       38.13303563780*t);
    neptune_z_1=neptune_z_1*t;

    neptune_z_0 = 0.0;

    neptune_z_0 = neptune_z_0 +      0.00417558068 * cos( 5.91310695421 +       76.26607127560*t);
    neptune_z_0 = neptune_z_0 +      0.00451987936 * cos( 3.50949720541 +       39.61750834610*t);
    neptune_z_0 = neptune_z_0 +      0.00474333567 * cos( 2.52218774238 +       36.64856292950*t);
    neptune_z_0 = neptune_z_0 +      0.01245978462 * cos( 0.00000000000 +        0.00000000000*t);
    neptune_z_0 = neptune_z_0 +      0.92866054405 * cos( 1.44103930278 +       38.13303563780*t);
    return(neptune_z_1+neptune_z_0);
}

vsop87a_nano_neptune_y <- function(t){
    neptune_y_1 = 0.0;

    neptune_y_1 = neptune_y_1 +      0.00118427205 * cos( 1.31128027037 +       76.26607127560*t);
    neptune_y_1 = neptune_y_1 +      0.00243147725 * cos( 3.89099798696 +       39.61750834610*t);
    neptune_y_1 = neptune_y_1 +      0.00256125493 * cos( 0.44757496817 +       36.64856292950*t);
    neptune_y_1 = neptune_y_1 +      0.00352947493 * cos( 3.14159265359 +        0.00000000000*t);
    neptune_y_1=neptune_y_1*t;

    neptune_y_0 = 0.0;

    neptune_y_0 = neptune_y_0 +      0.00135897385 * cos( 3.97553750964 +       77.75054398390*t);
    neptune_y_0 = neptune_y_0 +      0.00272640298 * cos( 5.58603690785 +      213.29909543800*t);
    neptune_y_0 = neptune_y_0 +      0.00304525203 * cos( 5.11048113661 +       73.29712585900*t);
    neptune_y_0 = neptune_y_0 +      0.00495581047 * cos( 5.31205825784 +      529.69096509460*t);
    neptune_y_0 = neptune_y_0 +      0.00565576412 * cos( 4.41843009015 +       41.10198105440*t);
    neptune_y_0 = neptune_y_0 +      0.00582199295 * cos( 6.19633718936 +       35.16409022120*t);
    neptune_y_0 = neptune_y_0 +      0.00815187583 * cos( 5.49429775826 +        2.96894541660*t);
    neptune_y_0 = neptune_y_0 +      0.01073739772 * cos( 3.81371728533 +       74.78159856730*t);
    neptune_y_0 = neptune_y_0 +      0.02584250749 * cos( 0.42549700754 +        1.48447270830*t);
    neptune_y_0 = neptune_y_0 +      0.14936165806 * cos( 5.79694900665 +       39.61750834610*t);
    neptune_y_0 = neptune_y_0 +      0.15706589373 * cos( 4.82539970129 +       36.64856292950*t);
    neptune_y_0 = neptune_y_0 +      0.13506391797 * cos( 1.92953034883 +       76.26607127560*t);
    neptune_y_0 = neptune_y_0 +      0.30205857683 * cos( 3.14159265359 +        0.00000000000*t);
    neptune_y_0 = neptune_y_0 +     30.06056351665 * cos( 3.74086294714 +       38.13303563780*t);
    return(neptune_y_1+neptune_y_0);
}

vsop87a_nano_neptune_x <- function(t){
    neptune_x_1 = 0.0;

    neptune_x_1 = neptune_x_1 +      0.00118398168 * cos( 2.88251845061 +       76.26607127560*t);
    neptune_x_1 = neptune_x_1 +      0.00243125299 * cos( 5.46214902873 +       39.61750834610*t);
    neptune_x_1 = neptune_x_1 +      0.00255840261 * cos( 2.01935686795 +       36.64856292950*t);
    neptune_x_1=neptune_x_1*t;

    neptune_x_0 = 0.0;

    neptune_x_0 = neptune_x_0 +      0.00135887219 * cos( 5.54676577816 +       77.75054398390*t);
    neptune_x_0 = neptune_x_0 +      0.00272253551 * cos( 0.87443494387 +      213.29909543800*t);
    neptune_x_0 = neptune_x_0 +      0.00307525907 * cos( 0.40023311011 +       73.29712585900*t);
    neptune_x_0 = neptune_x_0 +      0.00495719107 * cos( 0.59948143567 +      529.69096509460*t);
    neptune_x_0 = neptune_x_0 +      0.00565534918 * cos( 5.98964907613 +       41.10198105440*t);
    neptune_x_0 = neptune_x_0 +      0.00817588813 * cos( 0.78180174031 +        2.96894541660*t);
    neptune_x_0 = neptune_x_0 +      0.00823793287 * cos( 1.43221581862 +       35.16409022120*t);
    neptune_x_0 = neptune_x_0 +      0.01074040708 * cos( 5.38502938672 +       74.78159856730*t);
    neptune_x_0 = neptune_x_0 +      0.02597313814 * cos( 1.99590301412 +        1.48447270830*t);
    neptune_x_0 = neptune_x_0 +      0.14935120126 * cos( 1.08499403018 +       39.61750834610*t);
    neptune_x_0 = neptune_x_0 +      0.15726094556 * cos( 0.11319072675 +       36.64856292950*t);
    neptune_x_0 = neptune_x_0 +      0.13505661755 * cos( 3.50078975634 +       76.26607127560*t);
    neptune_x_0 = neptune_x_0 +      0.27080164222 * cos( 3.14159265359 +        0.00000000000*t);
    neptune_x_0 = neptune_x_0 +     30.05890004476 * cos( 5.31211340029 +       38.13303563780*t);
    return(neptune_x_1+neptune_x_0);
}

vsop87a_nano_mercury_z <- function(t){
    mercury_z_1 = 0.0;

    mercury_z_1 = mercury_z_1 +      0.00108722177 * cos( 3.91134750825 +    26087.90314157420*t);
    mercury_z_1=mercury_z_1*t;

    mercury_z_0 = 0.0;

    mercury_z_0 = mercury_z_0 +      0.00469171617 * cos( 5.04215742764 +    52175.80628314840*t);
    mercury_z_0 = mercury_z_0 +      0.00708734365 * cos( 3.14159265359 +        0.00000000000*t);
    mercury_z_0 = mercury_z_0 +      0.04607665326 * cos( 1.99295081967 +    26087.90314157420*t);
    return(mercury_z_1+mercury_z_0);
}

vsop87a_nano_mercury_y <- function(t){
    mercury_y_1 = 0.0;

    mercury_y_1 = mercury_y_1 +      0.00107803852 * cos( 4.34964793883 +    52175.80628314840*t);
    mercury_y_1=mercury_y_1*t;

    mercury_y_0 = 0.0;

    mercury_y_0 = mercury_y_0 +      0.00106235493 * cos( 5.70550616735 +   104351.61256629678*t);
    mercury_y_0 = mercury_y_0 +      0.00587711268 * cos( 2.65498896201 +    78263.70942472259*t);
    mercury_y_0 = mercury_y_0 +      0.03854668215 * cos( 5.88780608966 +    52175.80628314840*t);
    mercury_y_0 = mercury_y_0 +      0.11626131831 * cos( 3.14159265359 +        0.00000000000*t);
    mercury_y_0 = mercury_y_0 +      0.37953642888 * cos( 2.83780617820 +    26087.90314157420*t);
    return(mercury_y_1+mercury_y_0);
}

vsop87a_nano_mercury_x <- function(t){
    mercury_x_1 = 0.0;

    mercury_x_1 = mercury_x_1 +      0.00105289019 * cos( 5.91600475006 +    52175.80628314840*t);
    mercury_x_1 = mercury_x_1 +      0.00318848034 * cos( 0.00000000000 +        0.00000000000*t);
    mercury_x_1=mercury_x_1*t;

    mercury_x_0 = 0.0;

    mercury_x_0 = mercury_x_0 +      0.00105716695 * cos( 0.98379033182 +   104351.61256629678*t);
    mercury_x_0 = mercury_x_0 +      0.00584261333 * cos( 4.21599394757 +    78263.70942472259*t);
    mercury_x_0 = mercury_x_0 +      0.02625615963 * cos( 3.14159265359 +        0.00000000000*t);
    mercury_x_0 = mercury_x_0 +      0.03825746672 * cos( 1.16485604339 +    52175.80628314840*t);
    mercury_x_0 = mercury_x_0 +      0.37546291728 * cos( 4.39651506942 +    26087.90314157420*t);
    return(mercury_x_1+mercury_x_0);
}

vsop87a_nano_mars_z <- function(t){
    mars_z_1 = 0.0;

    mars_z_1 = mars_z_1 +      0.00331842958 * cos( 6.05027773492 +     3340.61242669980*t);
    mars_z_1=mars_z_1*t;

    mars_z_0 = 0.0;

    mars_z_0 = mars_z_0 +      0.00228333904 * cos( 4.10544022266 +     6681.22485339960*t);
    mars_z_0 = mars_z_0 +      0.00660669541 * cos( 0.00000000000 +        0.00000000000*t);
    mars_z_0 = mars_z_0 +      0.04901207220 * cos( 3.76712324286 +     3340.61242669980*t);
    return(mars_z_1+mars_z_0);
}

vsop87a_nano_mars_y <- function(t){
    mars_y_1 = 0.0;

    mars_y_1 = mars_y_1 +      0.00551063753 * cos( 3.52128320402 +     6681.22485339960*t);
    mars_y_1 = mars_y_1 +      0.01427324210 * cos( 3.14159265359 +        0.00000000000*t);
    mars_y_1=mars_y_1*t;

    mars_y_0 = 0.0;

    mars_y_0 = mars_y_0 +      0.00493872848 * cos( 5.30877806694 +    10021.83728009940*t);
    mars_y_0 = mars_y_0 +      0.08655481102 * cos( 0.00000000000 +        0.00000000000*t);
    mars_y_0 = mars_y_0 +      0.07064550239 * cos( 4.97051892902 +     6681.22485339960*t);
    mars_y_0 = mars_y_0 +      1.51558976277 * cos( 4.63212206588 +     3340.61242669980*t);
    return(mars_y_1+mars_y_0);
}

vsop87a_nano_mars_x <- function(t){
    mars_x_1 = 0.0;

    mars_x_1 = mars_x_1 +      0.00552437949 * cos( 5.09565872891 +     6681.22485339960*t);
    mars_x_1 = mars_x_1 +      0.00861441374 * cos( 3.14159265359 +        0.00000000000*t);
    mars_x_1=mars_x_1*t;

    mars_x_0 = 0.0;

    mars_x_0 = mars_x_0 +      0.00494196914 * cos( 0.59669127768 +    10021.83728009940*t);
    mars_x_0 = mars_x_0 +      0.07070919655 * cos( 0.25870338558 +     6681.22485339960*t);
    mars_x_0 = mars_x_0 +      0.19502945246 * cos( 3.14159265359 +        0.00000000000*t);
    mars_x_0 = mars_x_0 +      1.51769936383 * cos( 6.20403346548 +     3340.61242669980*t);
    return(mars_x_1+mars_x_0);
}

vsop87a_nano_jupiter_z <- function(t){
    jupiter_z_1 = 0.0;

    jupiter_z_1 = jupiter_z_1 +      0.00407072175 * cos( 1.52699353482 +      529.69096509460*t);
    jupiter_z_1=jupiter_z_1*t;

    jupiter_z_0 = 0.0;

    jupiter_z_0 = jupiter_z_0 +      0.00286562094 * cos( 3.90812238338 +     1059.38193018920*t);
    jupiter_z_0 = jupiter_z_0 +      0.00859031952 * cos( 0.00000000000 +        0.00000000000*t);
    jupiter_z_0 = jupiter_z_0 +      0.11823100489 * cos( 3.55844646343 +      529.69096509460*t);
    return(jupiter_z_1+jupiter_z_0);
}

vsop87a_nano_jupiter_y <- function(t){
    jupiter_y_2 = 0.0;

    jupiter_y_2 = jupiter_y_2 +      0.00121455991 * cos( 4.92398766380 +      536.80451209540*t);
    jupiter_y_2 = jupiter_y_2 +      0.00124032509 * cos( 2.56495576833 +      522.57741809380*t);
    jupiter_y_2=jupiter_y_2*t*t;

    jupiter_y_1 = 0.0;

    jupiter_y_1 = jupiter_y_1 +      0.00588928504 * cos( 0.34491576890 +      536.80451209540*t);
    jupiter_y_1 = jupiter_y_1 +      0.00601160431 * cos( 0.85811249940 +      522.57741809380*t);
    jupiter_y_1 = jupiter_y_1 +      0.00634859798 * cos( 4.81903199650 +     1059.38193018920*t);
    jupiter_y_1 = jupiter_y_1 +      0.01694798253 * cos( 3.14159265359 +        0.00000000000*t);
    jupiter_y_1=jupiter_y_1*t;

    jupiter_y_0 = 0.0;

    jupiter_y_0 = jupiter_y_0 +      0.00114043110 * cos( 4.72982262969 +     1162.47470440780*t);
    jupiter_y_0 = jupiter_y_0 +      0.00101999807 * cos( 4.57594598884 +     1052.26838318840*t);
    jupiter_y_0 = jupiter_y_0 +      0.00132696764 * cos( 5.62184581859 +      213.29909543800*t);
    jupiter_y_0 = jupiter_y_0 +      0.00139480058 * cos( 4.00075307706 +      632.78373931320*t);
    jupiter_y_0 = jupiter_y_0 +      0.00146104656 * cos( 4.62267224431 +      110.20632121940*t);
    jupiter_y_0 = jupiter_y_0 +      0.00192333128 * cos( 3.45690564771 +      426.59819087600*t);
    jupiter_y_0 = jupiter_y_0 +      0.00378285578 * cos( 3.53006782383 +      103.09277421860*t);
    jupiter_y_0 = jupiter_y_0 +      0.00300686679 * cos( 3.60948050740 +        7.11354700080*t);
    jupiter_y_0 = jupiter_y_0 +      0.00457750806 * cos( 6.01129093501 +     1589.07289528380*t);
    jupiter_y_0 = jupiter_y_0 +      0.01475809370 * cos( 2.04679566495 +      536.80451209540*t);
    jupiter_y_0 = jupiter_y_0 +      0.01508275299 * cos( 5.43934968102 +      522.57741809380*t);
    jupiter_y_0 = jupiter_y_0 +      0.09363670616 * cos( 3.14159265359 +        0.00000000000*t);
    jupiter_y_0 = jupiter_y_0 +      0.12592862602 * cos( 5.66160227728 +     1059.38193018920*t);
    jupiter_y_0 = jupiter_y_0 +      5.19520046589 * cos( 5.31203162731 +      529.69096509460*t);
    return(jupiter_y_2+jupiter_y_1+jupiter_y_0);
}

vsop87a_nano_jupiter_x <- function(t){
    jupiter_x_2 = 0.0;

    jupiter_x_2 = jupiter_x_2 +      0.00121521296 * cos( 0.21155109275 +      536.80451209540*t);
    jupiter_x_2 = jupiter_x_2 +      0.00123864644 * cos( 4.13563277513 +      522.57741809380*t);
    jupiter_x_2=jupiter_x_2*t*t;

    jupiter_x_1 = 0.0;

    jupiter_x_1 = jupiter_x_1 +      0.00589157060 * cos( 1.91556314637 +      536.80451209540*t);
    jupiter_x_1 = jupiter_x_1 +      0.00599720482 * cos( 2.42996678275 +      522.57741809380*t);
    jupiter_x_1 = jupiter_x_1 +      0.00635297172 * cos( 0.10662156868 +     1059.38193018920*t);
    jupiter_x_1 = jupiter_x_1 +      0.00882389251 * cos( 3.14159265359 +        0.00000000000*t);
    jupiter_x_1=jupiter_x_1*t;

    jupiter_x_0 = 0.0;

    jupiter_x_0 = jupiter_x_0 +      0.00114201562 * cos( 0.01567084269 +     1162.47470440780*t);
    jupiter_x_0 = jupiter_x_0 +      0.00103494641 * cos( 6.19324769120 +     1052.26838318840*t);
    jupiter_x_0 = jupiter_x_0 +      0.00134226996 * cos( 0.87648567011 +      213.29909543800*t);
    jupiter_x_0 = jupiter_x_0 +      0.00144867641 * cos( 5.55980577080 +      632.78373931320*t);
    jupiter_x_0 = jupiter_x_0 +      0.00150678793 * cos( 6.12003027739 +      110.20632121940*t);
    jupiter_x_0 = jupiter_x_0 +      0.00194025405 * cos( 5.02580363996 +      426.59819087600*t);
    jupiter_x_0 = jupiter_x_0 +      0.00385975375 * cos( 2.01229910687 +      103.09277421860*t);
    jupiter_x_0 = jupiter_x_0 +      0.00301689798 * cos( 5.17372551148 +        7.11354700080*t);
    jupiter_x_0 = jupiter_x_0 +      0.00457752736 * cos( 1.29883700755 +     1589.07289528380*t);
    jupiter_x_0 = jupiter_x_0 +      0.01476224578 * cos( 3.61736921122 +      536.80451209540*t);
    jupiter_x_0 = jupiter_x_0 +      0.01500672056 * cos( 0.73175134610 +      522.57741809380*t);
    jupiter_x_0 = jupiter_x_0 +      0.12593937922 * cos( 0.94911583701 +     1059.38193018920*t);
    jupiter_x_0 = jupiter_x_0 +      0.36662642320 * cos( 3.14159265359 +        0.00000000000*t);
    jupiter_x_0 = jupiter_x_0 +      5.19663470114 * cos( 0.59945082355 +      529.69096509460*t);
    return(jupiter_x_2+jupiter_x_1+jupiter_x_0);
}

vsop87a_nano_emb_z <- function(t){
    emb_z_1 = 0.0;

    emb_z_1 = emb_z_1 +      0.00227822442 * cos( 3.41372504278 +     6283.07584999140*t);
    emb_z_1=emb_z_1*t;

    return(emb_z_1);
}

vsop87a_nano_emb_y <- function(t){
    emb_y_0 = 0.0;

    emb_y_0 = emb_y_0 +      0.00835292314 * cos( 0.13952878991 +    12566.15169998280*t);
    emb_y_0 = emb_y_0 +      0.02442698841 * cos( 3.14159265359 +        0.00000000000*t);
    emb_y_0 = emb_y_0 +      0.99989209645 * cos( 0.18265890456 +     6283.07584999140*t);
    return(emb_y_0);
}

vsop87a_nano_emb_x <- function(t){
    emb_x_1 = 0.0;

    emb_x_1 = emb_x_1 +      0.00123403046 * cos( 0.00000000000 +        0.00000000000*t);
    emb_x_1=emb_x_1*t;

    emb_x_0 = 0.0;

    emb_x_0 = emb_x_0 +      0.00561144161 * cos( 0.00000000000 +        0.00000000000*t);
    emb_x_0 = emb_x_0 +      0.00835257300 * cos( 1.71034539450 +    12566.15169998280*t);
    emb_x_0 = emb_x_0 +      0.99982927460 * cos( 1.75348568475 +     6283.07584999140*t);
    return(emb_x_1+emb_x_0);
}

vsop87a_nano_earth_z <- function(t){
    earth_z_1 = 0.0;

    earth_z_1 = earth_z_1 +      0.00227822442 * cos( 3.41372504278 +     6283.07584999140*t);
    earth_z_1=earth_z_1*t;

    return(earth_z_1);
}

vsop87a_nano_earth_y <- function(t){
    earth_y_0 = 0.0;

    earth_y_0 = earth_y_0 +      0.00835292314 * cos( 0.13952878991 +    12566.15169998280*t);
    earth_y_0 = earth_y_0 +      0.02442699036 * cos( 3.14159265359 +        0.00000000000*t);
    earth_y_0 = earth_y_0 +      0.99989211030 * cos( 0.18265890456 +     6283.07584999140*t);
    return(earth_y_0);
}

vsop87a_nano_earth_x <- function(t){
    earth_x_1 = 0.0;

    earth_x_1 = earth_x_1 +      0.00123403056 * cos( 0.00000000000 +        0.00000000000*t);
    earth_x_1=earth_x_1*t;

    earth_x_0 = 0.0;

    earth_x_0 = earth_x_0 +      0.00561144206 * cos( 0.00000000000 +        0.00000000000*t);
    earth_x_0 = earth_x_0 +      0.00835257300 * cos( 1.71034539450 +    12566.15169998280*t);
    earth_x_0 = earth_x_0 +      0.99982928844 * cos( 1.75348568475 +     6283.07584999140*t);
    return(earth_x_1+earth_x_0);
}

