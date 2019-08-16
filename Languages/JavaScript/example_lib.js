/*
Sample astronomy library by Greg Miller (gmiller@gregmiller.net) 2019
Released as public domain

*/

class astrolib{
	//Returns an array containing the distance, declination, and right ascension (in that order) in radians.
	//BodyNum is passed to getBody() function below, see it for which body number to supply.
	//The positions are adjusted for the parallax of the Earth, and the offset of the observer from the Earth's center
	//All input and output angles are in radians!
	static getBodyRaDec(jd,bodyNum,lat,lon){
		const jdTAI = astrolib.convertUTCtoTT(jd);
		let t = astrolib.convertJDToJulianCenturiesSinceJ2000(jdTAI);
		
		//Get current position of Earth
		const earth = astrolib.getBody(3,t);
		
		//Get current position of body
		let body = astrolib.getBody(bodyNum,t);

		//Calculate light time to body
		body = astrolib.sub(body, earth);
		let distance = Math.sqrt(body[0] * body[0] + body[1] * body[1] + body[2] * body[2]);
		distance*=1.496e+11 //Convert from AU to meters
		const lightTime=distance/299792458.0;

		//Convert light time to Julian Centuries, and subtract it from the original value of t
		t-=lightTime / 24.0 / 60.0 / 60.0 / 365250.0;  
		//Recalculate body position adjusted for light time
		body = astrolib.getBody(bodyNum,t);
		
		//Convert to Geocrntric position
		body = astrolib.sub(body, earth);
		
		//Rotate ecliptic coordinates to J2000 coordinates
		body = astrolib.rotvsop2J2000(body);

		//Convert to topocentric
		const observerXYZ=astrolib.getObserverGeocentric(jdTAI,lat,lon);
		body = astrolib.sub(body,observerXYZ);

		//Convert to topocentric RA DEC by converting from cartesian coordinates to polar coordinates
		let RaDec = astrolib.toPolar(body);
		
		RaDec[1]=Math.PI/2.0-RaDec[1];  //Offset to make 0 the equator, and the poles +/-90 deg
		
		return(RaDec);
	}

	//Returns a body's cartesian coordinates centered on the Sun.
	//Requires vsop87a_full.js, if you wish to use a different version of VSOP87, replace the class name vsop87a_full below
	static getBody(bodyNum,et){
		switch(bodyNum){
			case 0: //Sun is at the center for vsop87a
				return [0,0,0];
			case 1:
				return vsop87a_full.getMercury(et);
			case 2:
				return vsop87a_full.getVenus(et);
			case 3:
				return vsop87a_full.getEarth(et);
			case 4:
				return vsop87a_full.getMars(et);
			case 5:
				return vsop87a_full.getJupiter(et);
			case 6:
				return vsop87a_full.getSaturn(et);
			case 7:
				return vsop87a_full.getUranus(et);
			case 8:
				return vsop87a_full.getNeptune(et);
			case 9:
				return vsop87a_full.getEmb(et);
			case 10:
				return vsop87a_full.getMoon(vsop87a_full.getEarth(et), vsop87a_full.getEmb(et))
		}
	}

	//Converts a JavaScript Date object into a Julian Date
	static convertDateToJulianDate(date){
	  return (date.valueOf() / (1000 * 60 * 60 * 24)) - 0.5 + 2440588;
	}


	//Converts a Julan Date to Julian centuries since J2000, which is what VSOP expects as input
	static convertJDToJulianCenturiesSinceJ2000(jd){
		return (jd - 2451545.0) / 365250.0;
	}

	//Converts cartesian XYZ coordinates to polar (e.g. J2000 xyz to Right Accention and Declication)
	static toPolar(xyz){
		let t = new Array();
		t[0] = Math.sqrt(xyz[0] * xyz[0] + xyz[1] * xyz[1] + xyz[2] * xyz[2]);
		t[1] = Math.acos(xyz[2] / t[0]);
		t[2] = Math.atan2(xyz[1], xyz[0]);

		if(t[1]<0){t[1]+=2*Math.PI;}
		if(t[2]<0){t[2]+=2*Math.PI;}

		return t;
	}

	//Subtracts two arrays (vectors), a-b
	static sub(a, b){
		let t = new Array();
		t[0] = a[0] - b[0];
		t[1] = a[1] - b[1];
		t[2] = a[2] - b[2];
		return t;
	}

	static toDmsString(d){
		let t = d * 180 / Math.PI;
		let deg = Math.trunc(t);
		t = Math.abs(t) - Math.abs(deg);
		t *= 60;
		let min = Math.trunc(t);
		t -= min;
		let sec = t * 60;
		return(deg + "d " + min + "' " + sec + "\"\r\n");
	}

	static toHmsString(h){
		let t = h * 180 / Math.PI;
		if(t<0)t+=360;
		t /= 15.0;
		let hours = Math.trunc(t);
		t = Math.abs(t) - Math.abs(hours);
		t *= 60;
		let min = Math.trunc(t);
		t -= min;
		let sec = t * 60;
		return(hours + "h " + min + "m " + sec + "s\r\n");
	}

	//Performs the rotation from ecliptic coordinates to J2000 coordinates for the given vector x
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

	//Converts a Julian Date in UTC to Terrestrial Time (TT)
	static convertUTCtoTT(jd){
		//32 leap seconds is hard coded as of Jan 2000, should be updated from the IERS website for other times
		
		//TAI = UTC + leap seconds (e.g. 32)
		//TT=TAI + 32.184

		return jd + (32.0 + 32.184) / 24.0 / 60.0 / 60.0;
	}

	//Convert Geodedic Lat Lon to geocentric XYZ position vector
	//All angles are input as radians
	static convertGeodedicLatLonToITRFXYZ(lat,lon,height){
		const a=6378136.6;
		const f=1/298.25642;

		const C=Math.sqrt(((Math.cos(lat)*Math.cos(lat)) + (1.0-f)*(1.0-f) * (Math.sin(lat)*Math.sin(lat))));

		const S=(1-f)*(1-f)*C;
		
		const h=height;

		let r=new Array();
		r[0]=(a*C+h) * Math.cos(lat) * Math.cos(lon);
		r[1]=(a*C+h) * Math.cos(lat) * Math.sin(lon);
		r[2]=(a*S+h) * Math.sin(lat);
		
		return r;
	}


	static getGMST(ut1){
		const D=ut1 - 2451545.0;
		const T = D/36525.0;
		const gmst = 280.46061837 + 360.98564736629*D + 0.000387933*T*T - T*T*T/38710000.0;
		return gmst/15;

	}

	//Convert position vector to celestial "of date" system.
	//g(t)=R3(-GAST) r
	//(Remember to use UT1 for GAST, not ET)
	//All angles are input and output as radians
	static convertITRFToGCRS(r,ut1){

		let GMST=astrolib.getGMST(ut1);
		GMST=-GMST*15.0*Math.PI/180.0;
		let t=new Array();
		t[0]=r[0]*Math.cos(GMST) + r[1]*(Math.sin(GMST));
		t[1]=r[0]*(-Math.sin(GMST)) + r[1]*Math.cos(GMST);
		t[2]=r[2];

		return t;
	}

	//Convert from meters to AU
	//Multiply g(t) by 1.49597870691E+11
	static convertFromMetersToAU(r){
		let t=new Array();
		
		t[0]=r[0]/1.49597870691E+11;
		t[1]=r[1]/1.49597870691E+11;
		t[2]=r[2]/1.49597870691E+11;
		
		return t;
	}

	//Returns an observer's position in GCRS/J2000 cartesian coordinates in astronomical units
	//All angles are input and output as radians
	static getObserverGeocentric(jd,lat,lon){
		let r=astrolib.convertGeodedicLatLonToITRFXYZ(lat, lon,0);
		r=astrolib.convertITRFToGCRS(r,jd);
		r=astrolib.convertFromMetersToAU(r);
		
		return r;
	}

	//Returns the Alt/Az polar coordinates based on RA/Dec coordinates for a given location on Earth's surface.
	//All angles are input and output as radians
	static convertRaDecToAltAz(jd,lat,lon,ra,dec){
		const GMST=astrolib.getGMST(jd)*Math.PI/180.0*15.0;
		let h=GMST + lon - ra;
		
		const sina=Math.sin(dec)*Math.sin(lat)+Math.cos(dec)*Math.cos(h)*Math.cos(lat);
		const a=Math.asin(sina);

		const cosAz=(Math.sin(dec)-Math.sin(a)*Math.sin(lat))/(Math.cos(a)*Math.cos(lat));
		const Az=Math.acos(cosAz);

		let t=new Array();
		t[0]=Az;
		t[1]=a;
		
		return t;
	}

}
