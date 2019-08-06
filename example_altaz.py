Step 1: Convert UTC to ET

Step 2: Convert Geodedic Lat Lon to geocentric XYZ position vector

a=6378136.6
f=1/298.25642

C=((cos lat)^2 + (1-f)^2 (sin lat)^2)^1/2

S=(1-f)^2*C

x=(aC+h)cos lat cos lon
y=(aC+h)cos lat sin lon
z=(aS+h)sin lat

r=[x y z]

Step 3: Convert position vector to celestial "of date" system.
g(t)=R3(-GAST) r
(Remember to use UT1 for GAST, not ET)

Step 4: Convert from meters to AU
Multiply g(t) by 1.49597870691E+11

Step 5: Convert to ICRS
G(t)=M^-1 g(t)

M^-1 is the transpose of M, the precession-nutation matrix.

Step 6: Convert to barrycentric
Ob=Eb(t) + G(t)

Step 7: Continue reduction in 7.4.1.2 step 2.1 using Ob computed above