/*
Greg Miller (gmiller@gregmiller.net)
http://www.celestialprogramming.com/
Released as public domain

Simplified reduction process for VSOP87.  Requires vsop87a_full.js.

The main function is CPReduce.reduce(...).  The user may likely make use of the
Julian Date class at the bottom (JulianDate.gregorianDateToJulianDate).
*/

class CPReduce{
	//By Greg Miller (gmiller@gregmiller.net)
	//Released as public domain

	/*
	Main function.
	body - Integer representing the planet: 0=Mercury ... 7=Neptune, 9=Moon, 10=Sun
	jd_utc - a Julian date representing the UCT time of observation
	observer - an array observer[0]=Latitude, [1] = Longitude, [2] = Altitude above sea level - all input in radians

	Returns array of 6 elements in radians
	0 - Declination in J2000 - radians
	1 - Right ascension in J2000 - radians
	2 - Declination of Date - radians
	3 - Right ascension of Date - radians
	4 - Alt (0 horizon, 90 zenith) - radians
	5 - Az (0 North, 90 East) - radians

	Multiply each by 180/Math.PI to convert to degrees (declination, alt, az)
	Multiply each by 180/Math.PI/15 to convert to hours (right ascension)
	*/

	static reduce(body,jd_utc,observer){
		const jd_tt=this.convertUTCtoTT(jd_utc);
        const jd_tdb=jd_tt;  //Converting TT to TDB won't produce more accurate results
		
		const ut1_utc=0;  //TODO: UT1-UTC offset
		const jd_ut1=jd_utc + ut1_utc/86400.0;

		const earth=this.getBodyPV(this.EARTH,jd_tdb);
		const target=this.getBodyLightAdjusted(earth,body,jd_tdb);

        const precessionMatrix=this.getPrecessionMatrix(jd_tdb);
		const nutationMatrix=this.getNutationMatrix(jd_tdb);

        const geocentricTarget=Vec.sub(target,earth);

		let observerGeocentric=this.getObserverGeocentricPosition(observer,jd_ut1);
		observerGeocentric=Vec.vecMatrixMul(observerGeocentric,Vec.transpose(nutationMatrix));
		observerGeocentric=Vec.vecMatrixMul(observerGeocentric,Vec.transpose(precessionMatrix));

        const topocentricTarget=Vec.sub(geocentricTarget,observerGeocentric);
		const radecj2000=this.xyzToRaDec(topocentricTarget);

		const aberrated=this.aberration(topocentricTarget,earth);
		const precessed=Vec.vecMatrixMul(aberrated,precessionMatrix);
		const nutated=Vec.vecMatrixMul(precessed,nutationMatrix);

		const radec=this.xyzToRaDec(nutated);
		const altaz=this.raDecToAltAz(radec[0],radec[1],observer[0],observer[1],jd_ut1);
		
		return [radecj2000[0],radecj2000[1],radec[0],radec[1],altaz[0],altaz[1]];
	}

	/*
	------------------------------------------------------------------------------------------------------
	The only functions past this point which a user may need to call are the functions at the end for
	computing Julian Dates
	------------------------------------------------------------------------------------------------------
	*/

	static aberration(pos,earthPV){
		//"MEAN AND APPARENT PLACE COMPUTATIONS IN THE NEW IAU SYSTEM. III. APPARENT, TOPOCENTRIC, AND ASTROMETRIC PLACES OF PLANETS AND STARS"
		//G. H. Kaplan, J. A. Hughes, P. K. Seidelmann, and C. A. Smith
		//U. S. Naval Observatory, Washington, DC 20392

		//http://articles.adsabs.harvard.edu/pdf/1989AJ.....97.1197K

		const C = 173.1446326846693; //Speed of light in AU per Day

		const u4=pos;
		const dE=new Array();
		dE[0]=earthPV[3];
		dE[1]=earthPV[4];
		dE[2]=earthPV[5];

		//Eq 16
		const t=Vec.magnitude(u4) / C;
		const B=Vec.magnitude(dE) / C;
		const cosD=Vec.vecDot(u4,dE)/(Vec.magnitude(u4)*Vec.magnitude(dE));
		const y=Math.sqrt(1-B*B);
		const f1=B*cosD;
		const f2=(1+f1/(1+y))*t;

		//Eq 17
		const u5=new Array();
		u5[0]=(y*u4[0] + f2*dE[0])/(1+f1);
		u5[1]=(y*u4[1] + f2*dE[1])/(1+f1);
		u5[2]=(y*u4[2] + f2*dE[2])/(1+f1);

		return u5;
	}

	static getPrecessionMatrix(jd_tdb){
		//Fukushima-Williams IAU 2006
		const t=(jd_tdb-2451545.5)/36525.0;

		const gamma = (-0.052928 + 10.556378*t + 0.4932044*t*t - 0.00031238*t*t*t - 0.000002788*t*t*t*t + 0.0000000260*t*t*t*t*t) /60/60*Math.PI/180;
		const phi = (+84381.412819 - 46.811016*t + 0.0511268*t*t + 0.00053289*t*t*t - 0.000000440*t*t*t*t - 0.0000000176*t*t*t*t*t) /60/60*Math.PI/180;
		const psi = (-0.041775 + 5038.481484*t + 1.5584175*t*t - 0.00018522*t*t*t - 0.000026452*t*t*t*t - 0.0000000148*t*t*t*t*t) /60/60*Math.PI/180;
		const eps = (+84381.406 - 46.836769*t - 0.0001831*t*t + 0.00200340*t*t*t - 0.000000576*t*t*t*t - 0.0000000434*t*t*t*t*t) /60/60*Math.PI/180;

		const a=Vec.getZRotationMatrix(gamma);
		const b=Vec.dot(Vec.getXRotationMatrix(phi),a);
		const c=Vec.dot(Vec.getZRotationMatrix(-psi),b);
		const d=Vec.dot(Vec.getXRotationMatrix(-eps),c);

		return d;
	}

	static getLeapSeconds(jd){
		//Source IERS Resolution B1 and http://maia.usno.navy.mil/ser7/tai-utc.dat
		//This function must be updated any time a new leap second is introduced

		if(jd > 2457754.5) return 37.0;
		if(jd > 2457204.5) return 36.0;
		if(jd > 2456109.5) return 35.0;
		if(jd > 2454832.5) return 34.0;
		if(jd > 2453736.5) return 33.0;
		if(jd > 2451179.5) return 32.0;
		if(jd > 2450630.5) return 31.0;
		if(jd > 2450083.5) return 30.0;
		if(jd > 2449534.5) return 29.0;
		if(jd > 2449169.5) return 28.0;
		if(jd > 2448804.5) return 27.0;
		if(jd > 2448257.5) return 26.0;
		if(jd > 2447892.5) return 25.0;
		if(jd > 2447161.5) return 24.0;
		if(jd > 2446247.5) return 23.0;
		if(jd > 2445516.5) return 22.0;
		if(jd > 2445151.5) return 21.0;
		if(jd > 2444786.5) return 20.0;
		if(jd > 2444239.5) return 19.0;
		if(jd > 2443874.5) return 18.0;
		if(jd > 2443509.5) return 17.0;
		if(jd > 2443144.5) return 16.0;
		if(jd > 2442778.5) return 15.0;
		if(jd > 2442413.5) return 14.0;
		if(jd > 2442048.5) return 13.0;
		if(jd > 2441683.5) return 12.0;
		if(jd > 2441499.5) return 11.0;
		if(jd > 2441317.5) return 10.0;
		if(jd > 2439887.5) return 4.2131700 + (jd - 2439126.5) * 0.002592;
		if(jd > 2439126.5) return 4.3131700 + (jd - 2439126.5) * 0.002592;
		if(jd > 2439004.5) return 3.8401300 + (jd - 2438761.5) * 0.001296;
		if(jd > 2438942.5) return 3.7401300 + (jd - 2438761.5) * 0.001296;
		if(jd > 2438820.5) return 3.6401300 + (jd - 2438761.5) * 0.001296;
		if(jd > 2438761.5) return 3.5401300 + (jd - 2438761.5) * 0.001296;
		if(jd > 2438639.5) return 3.4401300 + (jd - 2438761.5) * 0.001296;
		if(jd > 2438486.5) return 3.3401300 + (jd - 2438761.5) * 0.001296;
		if(jd > 2438395.5) return 3.2401300 + (jd - 2438761.5) * 0.001296;
		if(jd > 2438334.5) return 1.9458580 + (jd - 2437665.5) * 0.0011232;
		if(jd > 2437665.5) return 1.8458580 + (jd - 2437665.5) * 0.0011232;
		if(jd > 2437512.5) return 1.3728180 + (jd - 2437300.5) * 0.001296;
		if(jd > 2437300.5) return 1.4228180 + (jd - 2437300.5) * 0.001296;
		return 0.0;
	}

	static convertUTCtoTT(jd_utc){
		const TAI=this.getLeapSeconds(jd_utc)/60/60/24 + jd_utc;
		const TT=TAI + 32.184/60/60/24;

		return TT;
	}

	//Gets the position of a body adjusted for light time.  Runs three itterations, which is likely overkill for most applications.
	static getBodyLightAdjusted(origin,body,jd){
		let jd_light=jd;
		let b;
		const c=299792458; // m/s
		const au=149597870691; // meters

		for(let i=0;i<3;i++){
			b=this.getBodyPV(body,jd_light);
			const r=Math.sqrt((origin[0]-b[0])*(origin[0]-b[0])+(origin[1]-b[1])*(origin[1]-b[1])+(origin[2]-b[2])*(origin[2]-b[2]));
			const lightTime=r/(c/au*60*60*24);
			jd_light=jd-lightTime;
		}

		return b;
	}

	static getObserverGeocentricPosition(observer,jd_ut){
		const ecef=this.convertGeodedicLatLonToECEFXYZ(observer[0],observer[1],observer[2]);
		const gast=this.greenwichApparentSiderealTime(jd_ut);

		const m=Vec.getZRotationMatrix(-gast);
		const gcrs=Vec.vecMatrixMul(ecef,m);

		return gcrs;
	}

	//Convert Geodedic Lat Lon to geocentric XYZ position vector in ECEF coordinates
	static convertGeodedicLatLonToECEFXYZ(lat,lon,height){
		//Algorithm from Explanatory Supplement to the Astronomical Almanac 3rd ed. P294
		const au=149597870691; // meters
		const a=6378136.6/au;
		const f=1/298.25642;

		const C=1/Math.sqrt(((Math.cos(lat)*Math.cos(lat)) + (1.0-f)*(1.0-f) * (Math.sin(lat)*Math.sin(lat))));

		const S=(1-f)*(1-f)*C;
		const h=height;

		let r=new Array();
		r[0]=(a*C+h) * Math.cos(lat) * Math.cos(lon);
		r[1]=(a*C+h) * Math.cos(lat) * Math.sin(lon);
		r[2]=(a*S+h) * Math.sin(lat);
		
		return r;
	}

	static xyzToRaDec(target){
		const x=target[0];
		const y=target[1];
		const z=target[2];

		//Convert from Cartesian to polar coordinates 
		const r=Math.sqrt(x*x+y*y+z*z);
		let l=Math.atan2(y,x);
		let t=Math.acos(z/r);

		//Make sure RA is positive, and Dec is in range +/-90
		if(l<0){l+=2*Math.PI;}
		t=.5*Math.PI-t;

		return [l,t,r];
	}

	static raDecToAltAz(ra,dec,lat,lon,jd_ut){
    //Meeus 13.5 and 13.6, modified so West longitudes are negative and 0 is North
    const gmst=this.greenwichApparentSiderealTime(jd_ut);
    let localSiderealTime=(gmst+lon)%(2*Math.PI);
    
        
    let H=(localSiderealTime - ra);
    if(H<0){H+=2*Math.PI;}
    if(H>Math.PI){H=H-2*Math.PI;}

    let az = (Math.atan2(Math.sin(H), Math.cos(H)*Math.sin(lat) - Math.tan(dec)*Math.cos(lat)));
    let a = (Math.asin(Math.sin(lat)*Math.sin(dec) + Math.cos(lat)*Math.cos(dec)*Math.cos(H)));
    az-=Math.PI;

    if(az<0){az+=2*Math.PI;}
    return [az,a, localSiderealTime,H];
}

	static getBodyPV(body,jd_tdb){
        let b;
        let v=[0,0,0]; //Velocity is only needed for the Earth, set others to 0 to save time
        const t= (jd_tdb - 2451545.0) / 365250.0;
		
		switch (body){
            case this.MERCURY:
                b=vsop87a_full.getMercury(t);
                //v=vsop87a_full_velocities.getMercury(t);
                break;
            case this.VENUS:
                b=vsop87a_full.getVenus(t);
                //v=vsop87a_full_velocities.getVenus(t);
                break;
            case this.EARTH: //Earth
				b=vsop87a_full.getEarth(t);
                v=vsop87a_full_velocities.getEarth(t);
				break;
            case this.MARS:
                b=vsop87a_full.getMars(t);
                //v=vsop87a_full_velocities.getMars(t);
                break;
            case this.JUPITER:
                b=vsop87a_full.getJupiter(t);
                //v=vsop87a_full_velocities.getJupiter(t);
                break;
            case this.SATURN:
                b=vsop87a_full.getSaturn(t);
                //v=vsop87a_full_velocities.getSaturn(t);
                break;
            case this.URANUS:
                b=vsop87a_full.getUranus(t);
                //v=vsop87a_full_velocities.getUranus(t);
                break;
            case this.NEPTUNE:
                b=vsop87a_full.getNeptune(t);
                //v=vsop87a_full_velocities.getNeptune(t);
                break;
            case this.PLUTO:
                //b=vsop87a_full.getPluto();
                b=[0,0,0];
                break;
            case this.MOON: //Moon
                const e=vsop87a_full.getEarth(t);
                const emb=vsop87a_full.getEmb(t);
                b=vsop87a_full.getMoon(e,emb);

                //const ev=vsop87a_full_velocities.getEarth(t);
                //const embv=vsop87a_full_velocities.getEmb(t);
                //v=vsop87a_full_velocities.getMoon(ev,embv);

				break;
			case this.SUN: //Sun
                b=[0,0,0];
                break;
        }
        b=this.rotvsop2J2000(b);
        v=this.rotvsop2J2000(v);
        b[3]=v[0];
        b[4]=v[1];
        b[5]=v[2];
        
		return b;

	}

	 //Rotates the vector x from VSOP coordinates to J2000
	static rotvsop2J2000(x){
		/* From VSOP87.doc
		  X        +1.000000000000  +0.000000440360  -0.000000190919   X
		  Y     =  -0.000000479966  +0.917482137087  -0.397776982902   Y
		  Z FK5     0.000000000000  +0.397776982902  +0.917482137087   Z VSOP87A
		*/
		let t = new Array();
		t[0] = x[0] + x[1] * 0.000000440360 + x[2] * -0.000000190919;
		t[1] = x[0] * -0.000000479966 + x[1] * 0.917482137087 + x[2] * -0.397776982902;
		t[2] = x[1] * 0.397776982902 + x[2] * 0.917482137087;

		return t;
	}

	static getNutationMatrix(jd_tdb){
		const t=(jd_tdb-2451545.5)/36525.0;
		const nut=this.nutation2000BTruncated(t);
		const dpsi=nut[0];
		const deps=nut[1];
		const eps = (+84381.406 - 46.836769*t - 0.0001831*t*t + 0.00200340*t*t*t - 0.000000576*t*t*t*t - 0.0000000434*t*t*t*t*t) /60/60*Math.PI/180;

		const a=Vec.getXRotationMatrix(eps);
		const b=Vec.dot(Vec.getZRotationMatrix(-dpsi),a);
		const c=Vec.dot(Vec.getXRotationMatrix(-(eps+deps)),b);

		return c;
	}

	//Truncated version of IAU2000A/B nutation, accurate enough for VSOP87
	static nutation2000BTruncated(T){
		//The IAU Resolutions on Astronomical Reference Systems, Time Scales, and Earth Rotation Models Explanation and Implementation (George H. Kaplan)
		//https://arxiv.org/pdf/astro-ph/0602086.pdf
	    //IAU 2000B Nutation truncated to 6 terms
		let dp=0;
		let de=0;
		let arg;
	
		const AS2R = 1/60/60*Math.PI/180.0;
	
		const T2 = T * T;
		const T3 = T * T2;
		const T4 = T * T3;
	
		//Fundamental Arguments p46 eq 5.17, 5.18, 5.19
		const Lp = AS2R*(1287104.79305  + 129596581.0481*T  - 0.5532*T2 + 0.000136*T3 - 0.00001149*T4);
		const F  = AS2R*(335779.526232 + 1739527262.8478*T - 12.7512*T2 - 0.001037*T3 + 0.00000417*T4);
		const D  = AS2R*(1072260.70369 + 1602961601.2090*T  - 6.3706*T2 + 0.006593*T3 - 0.00003169*T4);
		const Om = AS2R*(450160.398036    - 6962890.5431*T  + 7.4722*T2 + 0.007702*T3 - 0.00005939*T4);
	
		//Terms summed from lowest to highest to reduce floating point rounding errors.  Page 88.
		arg= Lp + 2*(F - D + Om);
		dp+=(-516821 + 1226*T)*Math.sin(arg) + -524*Math.cos(arg);
		de+=(224386 + -677*T)*Math.cos(arg) + -174*Math.sin(arg);

		dp+=(1475877 + -3633*T)*Math.sin(Lp) + 11817*Math.cos(Lp);
		de+=(73871 + -184*T)*Math.cos(Lp) + -1924*Math.sin(Lp);
		
		arg= 2*Om;
		dp+=(2074554 + 207*T)*Math.sin(arg) + -698*Math.cos(arg);
		de+=(-897492 + 470*T)*Math.cos(arg) + -291*Math.sin(arg);
		
		arg= 2*(F + Om);
		dp+=(-2276413 + -234*T)*Math.sin(arg) + 2796*Math.cos(arg);
		de+=(978459 + -485*T)*Math.cos(arg) + 1374*Math.sin(arg);
		
		arg= 2*(F - D + Om);
		dp+=(-13170906 + -1675*T)*Math.sin(arg) + -13696*Math.cos(arg);
		de+=(5730336 + -3015*T)*Math.cos(arg) + -4587*Math.sin(arg);

		dp+=(-172064161 + -174666*T)*Math.sin(Om) + 33386*Math.cos(Om);
		de+=(92052331 + 9086*T)*Math.cos(Om) + 15377*Math.sin(Om);
	
		return [dp*AS2R/10000000,de*AS2R/10000000];
	}

    static greenwichApparentSiderealTime(jd_ut1){
        const gmst = this.greenwichMeanSiderealTime(jd_ut1);
        const ee = this.equationOfTheEquinoxes(jd_ut1);
        let gast = (gmst + ee) % (Math.PI*2);
        if(gast<0) gast+=Math.PI*2;
     
        return gast;
     }

     static greenwichMeanSiderealTime(jd_ut1){
		//The IAU Resolutions on Astronomical Reference Systems, Time Scales, and Earth Rotation Models Explanation and Implementation (George H. Kaplan)
		//https://arxiv.org/pdf/astro-ph/0602086.pdf
        const t = (jd_ut1 - 2451545.0) / 36525.0;
     
        const era=this.earthRotationAngle(jd_ut1);

        //EQ 2.12
        let gmst = (era + (0.014506 + 4612.15739966*t + 1.39667721*t*t + -0.00009344*t*t*t + 0.00001882*t*t*t*t)/60/60*Math.PI/180) % (Math.PI*2);
        if(gmst<0) gmst+=Math.PI*2;
     
        return gmst;
     }

     static earthRotationAngle(jd_ut1){
		//Explanatory Supplement eq 6.59
        const t = jd_ut1 - 2451545.0;
     
        const frac=jd_ut1 % 1.0;
     
        let era = (Math.PI*2 * (0.7790572732640 + 0.00273781191135448 * t + frac)) % (Math.PI*2);
        if(era<0) era+=Math.PI*2;
     
        return era;
     }

     static equationOfTheEquinoxes(jd_ut1){
        const t = (jd_ut1 - 2451545.0) / 36525.0;

        //Explanatory Supplement eq 6.39
        const epsa = (84381.406 + -46.836769*t + -0.0001831*t*t + 0.00200340*t*t*t  + -0.000000576*t*t*t*t + -0.0000000434*t*t*t*t*t) /60/60*Math.PI/180;
  
        const nut=this.nutation2000BTruncated(t);
        const dpsi=nut[0];
        const deps=nut[1];
     
        const ee = dpsi * Math.cos(epsa+deps);
     
        return ee;
     }
	
}

CPReduce.SUN=0;
CPReduce.MERCURY=1;
CPReduce.VENUS=2;
CPReduce.EARTH=3;
CPReduce.MARS=4;
CPReduce.JUPITER=5;
CPReduce.SATURN=6;
CPReduce.URANUS=7;
CPReduce.NEPTUNE=8;
CPReduce.EMB=9;
CPReduce.MOON=10;
CPReduce.bodies=["Sun","Mercury","Venus","Earth","Mars","Jupiter","Saturn","Uranus","Neptune","Earth-Moon Barrycenter","Moon"];

class Vec{
	//Simplified Vector/Matrix library with only a few operations
	//Supports 3d vectors, and 3x3 matrixes only

    static transpose(m){
        let t=new Array();
        for(let i=0;i<m.length;i++){
            t[i]=new Array();
            for(let j=0;j<m[i].length;j++){
                t[i][j]=m[j][i];
            }
        }
        return t;
    }

    static vecMatrixMul(v,m){
        let t=new Array();
        t[0]=v[0]*m[0][0]+v[1]*m[0][1]+v[2]*m[0][2];
        t[1]=v[0]*m[1][0]+v[1]*m[1][1]+v[2]*m[1][2];
        t[2]=v[0]*m[2][0]+v[1]*m[2][1]+v[2]*m[2][2];

        if(t.length>3){
            t[3]=v[3]*m[0][0]+v[4]*m[0][1]+v[5]*m[0][2];
            t[4]=v[3]*m[1][0]+v[4]*m[1][1]+v[5]*m[1][2];
            t[5]=v[3]*m[2][0]+v[4]*m[2][1]+v[5]*m[2][2];
        }

        return t;
    }

    static vecDot(a,b){
        return (a[0]*b[0] + a[1]*b[1] + a[2]*b[2]);
    }

    //Subtracts two arrays (vectors), a-b
    static sub(a, b){
        let t = new Array();
        for(let i=0;i<a.length && i<b.length;i++){
            t[i]=a[i]-b[i];
        }
        return t;
    }

    //Adds two arrays (vectors), a+b
    static add(a, b){
        let t = new Array();
        for(let i=0;i<a.length && i<b.length;i++){
            t[i]=a[i]+b[i];
        }
        return t;
    }

    static magnitude(a){
        return Math.sqrt(a[0]*a[0]+a[1]*a[1]+a[2]*a[2]);
    }

    //Gets a rotation matrix about the x axis.  Angle R is in radians
    static getXRotationMatrix(r){
        let t=new Array();
        t[0]=new Array();
        t[1]=new Array();
        t[2]=new Array();

        t[0][0]=1;
        t[0][1]=0;
        t[0][2]=0;
        t[1][0]=0;
        t[1][1]=Math.cos(r);
        t[1][2]=Math.sin(r);
        t[2][0]=0;
        t[2][1]=-Math.sin(r);
        t[2][2]=Math.cos(r);

        return t;
    }

    //Gets a rotation matrix about the y axis.  Angle R is in radians
    static getYRotationMatrix(r){
        let t=new Array();
        t[0]=new Array();
        t[1]=new Array();
        t[2]=new Array();

        t[0][0]=Math.cos(r);
        t[0][1]=0;
        t[0][2]=-Math.sin(r);
        t[1][0]=0;
        t[1][1]=1;
        t[1][2]=0;
        t[2][0]=Math.sin(r);
        t[2][1]=0;
        t[2][2]=Math.cos(r);

        return t;
    }

    //Gets a rotation matrix about the z axis.  Angle R is in radians
    static getZRotationMatrix(r){
        let t=new Array();
        t[0]=new Array();
        t[1]=new Array();
        t[2]=new Array();

        t[0][0]=Math.cos(r);
        t[0][1]=Math.sin(r);
        t[0][2]=0;
        t[1][0]=-Math.sin(r);
        t[1][1]=Math.cos(r);
        t[1][2]=0;
        t[2][0]=0;
        t[2][1]=0;
        t[2][2]=1;

        return t;
    }

    //Matrix dot product
    static dot(a,b){
        let m=new Array();
        for(let i=0;i<a.length;i++){
            m[i]=new Array();
            for(let j=0;j<b[0].length;j++){
                let temp=0;
                for(let k=0;k<b.length;k++){
                    temp+=a[i][k]*b[k][j];
                }
                m[i][j]=temp;
            }
        }
        return m;
    }
}

class JulianDate{
	//Special "Math.floor()" function used by gregorianDateToJulianDate()
	static INT(d){
		if(d>0){
			return Math.floor(d);
		}
		if(d==Math.floor(d)) return d;
		return Math.floor(d)-1;
	}

	static gregorianDateToJulianDate(year, month, day, hour, min, sec){
		let isGregorian=true;
		if(year<1582 || (year == 1582 && (month < 10 || (month==10 && day < 5)))){
			isGregorian=false;
		}

		if (month < 3){
			year = year - 1;
			month = month + 12;
		}

		let b = 0;
		if (isGregorian){
		let a = this.INT(year / 100.0);
			b = 2 - a + this.INT(a / 4.0);
		}

		let jd=this.INT(365.25 * (year + 4716)) + this.INT(30.6001 * (month + 1)) + day + b - 1524.5;
		jd+=hour/24.0;
		jd+=min/24.0/60.0;
		jd+=sec/24.0/60.0/60.0;
		return jd;
	}	
}
