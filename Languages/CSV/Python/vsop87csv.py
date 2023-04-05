import math

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

class vsop87csv:

    version=-1
    versionString=""
    varsOsculating=['a','l','k','h','q','p']
    varsRectangular=['x','y','z']
    varsPolar=['l','b','r']
    data=dict()

    def __init__(self,filename):
        
        #File is assumed to be in the following format:
        #Version,Planet,Variable,Exponent,A,B,C
        #vsop87 ,emb       ,a,0,     1.00000101778, 0.00000000000,       0.00000000000
        #vsop87 ,emb       ,a,0,     0.00001120473, 2.30855131827,   11506.76976979360
        
        self._loadFile(filename)

    def getSun(self,t):
        return self._getPlanet(0,t)

    def getMercury(self, t):
        return self._getPlanet(1,t)

    def getVenus(self, t):
        return self._getPlanet(2,t)

    def getEarth(self, t):
        return self._getPlanet(3,t)

    def getMars(self, t):
        return self._getPlanet(4,t)

    def getJupiter(self, t):
        return self._getPlanet(5,t)

    def getSaturn(self, t):
        return self._getPlanet(6,t)

    def getUranus(self, t):
        return self._getPlanet(7,t)

    def getNeptune(self, t):
        return self._getPlanet(8,t)

    def getEmb(self, t):
        return self._getPlanet(9,t)

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
            expList=v[exponent]
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
        br = open(filename,'r')
        line = br.readline() #Skip header
        self.data=dict()
        for line in br:
            f=line.split(",")

            if(self.version==-1):
                self.version=self._getVersionID(f[0].strip())
                self.versionString=f[0].strip()

            vars=[0,0,0]
            vars[0]=float(f[4])
            vars[1]=float(f[5])
            vars[2]=float(f[6])

            planet=self._getPlanetID(f[1].strip())
            variable=f[2][0]
            exponent=int(f[3])

            if(not planet in self.data):
                self.data[planet]=dict()

            if(not variable in self.data[planet]):
                self.data[planet][variable]=dict()

            if(not exponent in self.data[planet][variable]):
                self.data[planet][variable][exponent]=[]

            self.data[planet][variable][exponent].append(vars)

        br.close()

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

    def _getPlanetID(self, planet):
        if(planet.lower()==("sun")):
            return 0
        elif(planet.lower()==("mercury")):
            return 1
        elif(planet.lower()==("venus")):
            return 2
        elif(planet.lower()==("earth")):
            return 3
        elif(planet.lower()==("mars")):
            return 4
        elif(planet.lower()==("jupiter")):
            return 5
        elif(planet.lower()==("saturn")):
            return 6
        elif(planet.lower()==("uranus")):
            return 7
        elif(planet.lower()==("neptune")):
            return 8
        elif(planet.lower()==("emb")):
            return 9
        
        return -1
