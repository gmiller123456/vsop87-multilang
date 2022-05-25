# Overview
These are written to be in the syntax of Commodore 64 BASIC, but tested with Vintage Basic because they
are obviously too large to run on a C64.

The _full versions contain the test cases.  Some of the test cases appear to fail with a very large
error, but they are really just multiples of 2pi radians.  Actual errors will depend on the version
of BASIC and the floating point precision it uses.

# The general usage:
```
p=<planet> 1=mercury 2=venus 3=earth (or emb) 4=mars 5=jupiter 6=saturn 7=uranus 8=neptune 9=emb or sun
t=(jd - 2451545.0) / 365250.0
gosub 1000
result in r() array
Order of variables in r(), depend on version:
vsop87: a, l, k, h, q, p
vsop87 A,C,E=x, y, z
vsop87 B,D: l, b, r
```

# Example:
```
10 p=1
20 jd=2451545.0
30 t=(jd - 2451545.0) / 365250.0
40 gosub 1000
50 print "x="+str$(r(1))
60 print "y="+str$(r(2))
70 print "z="+str$(r(3))
80 end
```