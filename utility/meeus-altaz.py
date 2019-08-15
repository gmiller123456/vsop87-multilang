#!/usr/bin/python
import math

#p95 Example 13.b

#April 10 1987 19:21:00UT
#Lon=77d 03' 56"
#Lat=38d 55' 17"

#ra=23h 09m 16.641s
#dec=-6d 43' 11.61"

def GMST(jd):
	midnight=math.trunc(jd-1)+0.5
	frac=(jd-midnight)
	frac=frac*24.0*60.0*60.0

	t=(midnight-2451545.0)/36525.0

	g=100.46061837+36000.770053608*t+0.000387933*t*t+t*t*t/3871000.0
	g=(g%360.0)/15.0

	g=(g+frac*1.00273790935/60.0/60.0) % 24.0
	if(g<0):
		g+=24.0
	return g;

#print(GMST(2446895.5)); #example 12.a expect 13h 10m 46.3668s
gmst=GMST(2446896.306250) #example 12.b expect 8h 34m 57.0896s
print(gmst)

dpsi=-3.868
e=23.0 + 26.0/60.0 + 36.87/60.0/60.0

L=(77.0 + 3.0/60.0 + 56.0/60.0/60.0)/15.0

ra=23+9.0/60.0+ 16.641/60.0/60.0

H=gmst - L - ra
H=H*15%360
if(H<0):
	H+=360

print(H)

H=H*math.pi/180.0
top=math.sin(H)
print(top)

dec=(-6.0-43.0/60.0-11.61/60.0/60.0) * math.pi/180.0
L=L*15.0*math.pi/180.0

lat=(38 + 55.0/60.0 + 17.0/60.0/60.0) * math.pi/180.0

denom=math.cos(H)*math.sin(lat)-math.tan(dec)*math.cos(lat)
A=math.atan2(top,denom)
print(A*180.0/math.pi) #68.03429265164213

sinh=math.sin(lat)*math.sin(dec)+math.cos(lat)*math.cos(dec)*math.cos(H)
h=math.asin(sinh)
print(h*180.0/math.pi) #15.124262723923408
