#Step 1: Convert UTC to ET
def convertUTCToTAI(jd):
	return jd + (32.0 + 32.184) / 24.0 / 60.0 / 60.0


#Step 2: Convert Geodedic Lat Lon to geocentric XYZ position vector
def convertGeodedicLatLonToITRFXYZ(lat,lon):
	a=6378136.6
	f=1/298.25642

	C=sqrt(((cos(lat)*cos(lat)) + (1.0-f)*(1.0-f) * (sin(lat)*sin(lat))))

	S=(1-f)*(1-f)*C

	x=(aC+h) * cos(lat) * cos(lon)
	y=(aC+h) * cos(lat) * sin(lon)
	z=(aS+h) * sin(lat)

	r=[x y z]
	
	return r

#Step 3: Convert position vector to celestial "of date" system.
#g(t)=R3(-GAST) r
#(Remember to use UT1 for GAST, not ET)
def convertITRFToGCRS(r,ut1):
	#D0=previous midnight
	#H=hours since previous midnight
	D=JD - 2451545.0
	T = D/36525.0
	
	#GMST = 6.697374558 + 0.06570982441908 * D0 + 1.00273790935 * H + 0.000026 T*T
	GMST = (24110.54841 + 8640184.812866*T + 0.093104*T*T - 0.000062*T*T*T) % 360.0
	
	#apply rotation matrix R3(-GMST)
	
	t=(0,0,0)
	GMST=GMST*PI/180.0
	t[0]=r[0]*cos(GMST) + r[1]*sin(GMST)
	t[1]=r[0]*(-sin(GMST)) + r[1]*cos(GMST)
	t[2]=r[2]
	
	return t
	
	
	#R3
	# cos(a) sin(a) 0
	#-sin(a) cos(a) 0
	#   0      0    1

#Step 4: Convert from meters to AU
#Multiply g(t) by 1.49597870691E+11
def convertFromMetersToAU(r):
	t=[0,0,0]
	
	t[0]=r[0]*1.49597870691E+11
	t[1]=r[1]*1.49597870691E+11
	t[2]=r[2]*1.49597870691E+11
	
	return t

#Step 5: Convert to ICRS
#G(t)=M^-1 g(t)
#M^-1 is the transpose of M, the precession-nutation matrix.
def convertGCRSToICRS(r):
	#pass
	return r


#Step 6: Convert to barrycentric
#Ob=Eb(t) + G(t)
def convertToBarrycentric(r,earthBarrycentric):
	t=[0,0,0]
	
	t[0]=r[0]+earthBarrycentric[0]
	t[1]=r[1]+earthBarrycentric[1]
	t[2]=r[2]+earthBarrycentric[2]
	
	return t

#Step 7: Continue reduction in 7.4.1.2 step 2.1 using Ob computed above

