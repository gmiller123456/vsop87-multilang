import math
import json

#VSOP87-Multilang https://www.celestialprogramming.com/vsop87-multilang/index.html
#Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain


#
# It is the responsibility of the caller to not attempt to get a planet on
# a VSOP version which does not contain data for that planet.

# input t - Time in Julian centuries since J2000: (jd - 2451545.0) / 365250.0)
# ouptut - VSOP87
#             Osculating elements in order: a, l, k, h, q, p
#          VSOP87A, VSOP87C, VSOP87E
#             Rectangular coordinates and velocities: x, y, z, vx, vy, vz
#             in AU and AU/Day
#          VSOP87B, VSOP87D
#             Polar coordinates and velocities: l, b, r, lv, bv, rv
#             in radians and radians/Day (r, rv in AU and AU/Day)

class vsop87json:

    version=-1
    varsOsculating=['a','l','k','h','q','p']
    varsRectangular=['x','y','z']
    varsPolar=['l','b','r']
    data=dict()

    def __init__(self,filename,versionName):
        self.version=self._getVersionID(versionName);
        self._loadFile(filename)

    def getSun(self,t):
        return self._getPlanet("sun",t)

    def getMercury(self, t):
        return self._getPlanet("mercury",t)

    def getVenus(self, t):
        return self._getPlanet("venus",t)

    def getEarth(self, t):
        return self._getPlanet("earth",t)

    def getMars(self, t):
        return self._getPlanet("mars",t)

    def getJupiter(self, t):
        return self._getPlanet("jupiter",t)

    def getSaturn(self, t):
        return self._getPlanet("saturn",t)

    def getUranus(self, t):
        return self._getPlanet("uranus",t)

    def getNeptune(self, t):
        return self._getPlanet("neptune",t)

    def getEmb(self, t):
        return self._getPlanet("emb",t)

    def getMoon(self, earth, emb):
        temp=[]
        temp[0]=(emb[0]-earth[0])*(1 + 1 / 0.01230073677)
        temp[1]=(emb[1]-earth[1])*(1 + 1 / 0.01230073677)
        temp[2]=(emb[2]-earth[2])*(1 + 1 / 0.01230073677)
        temp[0]=temp[0]+earth[0]
        temp[1]=temp[1]+earth[1]
        temp[2]=temp[2]+earth[2]
        return temp

    def _getPlanet(self, planetID, t):

        pv=[0,0,0,0,0,0]
        planet=self.data[planetID]

        if(self.version==0):
            for i in range(0,len(self.varsOsculating)):
                v=planet[self.varsOsculating[i]]
                pv[i]=self._computeSeries(v,t)[0]
        else:
            vars=self.varsRectangular
            if(self.version==2 or self.version==4):
                vars=self.varsPolar

            for i in range(0,len(vars)):
                v=planet[vars[i]]
                temp=self._computeSeries(v,t)
                pv[i]=temp[0]
                pv[i+3]=temp[1]

        return pv

    def _computeSeries(self,v, t):
        acc=0
        vsum=0
        for exponent in range(0,len(v)):
            expList=v[str(exponent)]
            psum=0
            for i in range(0,len(expList)):
                l=expList[i]
                a=l[0]
                b=l[1]
                c=l[2]

                #Position
                psum+=a*math.cos(b+c*t)

                #Velocity
                if(exponent==0):
                    vsum+= - a * c * math.sin(b + c*t)
                else:
                    vsum+=math.pow(t,exponent-1) * exponent * a * math.cos(b + c * t) - math.pow(t,exponent) * a * c * math.sin(b + c*t)

            acc+=math.pow(t,exponent)*psum

        return [acc,vsum/365250.0]

    def _loadFile(self, filename):
        with open(filename) as f:
            self.data=json.load(f);

    def _getVersionID(self, s):
        if(s==("vsop87")):
            return 0
        elif(s==("vsop87a")):
            return 1
        elif(s==("vsop87b")):
            return 2
        elif(s==("vsop87c")):
            return 3
        elif(s==("vsop87d")):
            return 4
        elif(s==("vsop87e")):
            return 5

        return -1
