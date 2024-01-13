#!/usr/bin/python
import json

class Generator:
    def __init__(self,version):
        self.version=version
        js=json.load(open(version+'.json'))
        self.writeVersion(version,js)
        
    #Writes string to both position and velocity file, adds crlf
    def bprintln(self,s):
        self.position.write(s+"\r\n")
        if(self.velocity != None):
            self.velocity.write(s+"\r\n")

    #Writes string to both position and velocity file
    def bprint(self,s):
        self.position.write(s)
        if(self.velocity != None):
            self.velocity.write(s)

    def getPositionLine(self,variable,a,b,c):
        return f"        {variable} = {variable} + {a}*cos({b} + {c} * t)\r\n"

    def getVelocityLine(self,variable,a,b,c,exponent):
        t=f"-(t**{exponent})*{a}*{c}*sin({b} + {c} * t)"
        if exponent==0:
            return f"        {variable} = {variable} {t}\r\n"
        else:
            return f"        {variable} = {variable} +(t**({exponent-1}))*{exponent}*{a}*cos({b} + {c}*t)\r\n        {variable} = {variable} {t}\r\n"

    def getLines(self,variable,exponent,lineList):
        pos=""
        vel=""
        for line in lineList:
            a=str(line[0]).replace('e','d')
            b=str(line[1]).replace('e','d')
            c=str(line[2]).replace('e','d')

            if 'd' not in a: a=a+"d0"
            if 'd' not in b: b=b+"d0"
            if 'd' not in c: c=c+"d0"

            if(line[0]>=self.precisionLevel):
                pos+=self.getPositionLine(variable,a,b,c)
                vel+=self.getVelocityLine(variable,a,b,c,exponent)
        
        return pos,vel

    def writeExponents(self,planet,variable,exponentsList):
        exponents=list(exponentsList)
        vlist=[]
        for exponent in exponents:
            v=f"{planet}_{variable}_{exponent}"

            pos,vel=self.getLines(v,int(exponent),exponentsList[exponent])

            if len(pos)>0:
                vlist.insert(0,v)
                self.position.write(pos)
                if(self.velocity!=None):
                    self.velocity.write(vel)
            
                pow=int(exponent)
                if pow > 0:
                    #self.bprint(f"        {v}={v}")
                    self.position.write(f"        {v}={v}")
                    for i in range(pow):
                        #self.bprint("*t")
                        self.position.write("*t")
                    #self.bprintln(";")
                    self.position.write(";\r\n")
                self.bprintln("")

        if len(vlist)==0:
            self.bprintln("        r = 0")
        else:
            self.bprintln("        r = " + "+".join(vlist))

    def writeVariables(self,planet,variablesList):
        variables=list(variablesList)
        for variable in variables:
            self.bprintln(f"    function {planet}_{variable}(t) result(r)")
            self.bprintln(f"        double precision :: t")
            self.bprintln(f"        double precision :: r")
            
            for i in range(6):
                self.bprintln(f"        double precision :: {planet}_{variable}_{i}")

            self.bprintln("")

            for i in range(6):
                self.bprintln(f"        {planet}_{variable}_{i} = 0.0")

            self.bprintln("")

            self.writeExponents(planet,variable,variablesList[variable])
            
            self.bprintln("    end function")
            self.bprintln("")

    def writePlanets(self,planetsList):
        planets=list(planetsList)
        for planet in planets:
            self.writeVariables(planet,planetsList[planet])

    def writeGetters(self,classname,data):
        for planet in list(data):
            self.position.write(f"    subroutine {classname}_get{planet.capitalize()}(t, result)\r\n")
            if(self.velocity!=None):
                self.velocity.write(f"    subroutine {classname}_get{planet.capitalize()}V(t, result)\r\n")
    
            varcount=3
            if len(list(data[planet]))>3: varcount=6
            self.bprintln("        double precision :: t")
            self.bprintln(f"        double precision, dimension({varcount}) :: result\r\n")
    
            for i,variable in enumerate(list(data[planet])):
                self.position.write(f"        result({i+1})={planet}_{variable}(t)\r\n")
                if(self.velocity!=None):
                    self.velocity.write(f"        result({i+1})={planet}_{variable}(t) / 365250.0\r\n")
    
            self.bprintln("    end subroutine")
            self.bprintln("")

    def writePrecisionLevel(self,version,precision,precisionName,data):
        self.precisionLevel=precision
        classname=f"{version.upper()}_{precisionName.capitalize()}"
        self.position=open(f"{classname}.f90",mode="w",newline="")
        self.velocity=None
        if version!="vsop87":
            self.velocity=open(f"{classname}_Velocities.f90",mode="w",newline="")

        self.bprintln("!VSOP87-Multilang http://www.celestialprogramming.com/")
        self.bprintln("!Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain")
        self.bprintln("")
        self.position.write(f"module {classname}\r\n")
        if self.velocity!=None:
            self.velocity.write(f"module {classname}_Velocities\r\n")

        self.bprintln("    implicit none\r\n")
        self.bprintln("    contains")
        
        self.writeGetters(classname,data)
        self.writePlanets(data)

        self.position.write(f"end module {classname}\r\n")
        if self.velocity!=None:
            self.velocity.write(f"end module {classname}_Velocities\r\n")

        self.position.close()
        if(self.velocity != None):
            self.velocity.close()

    def writeVersion(self,version,data):
        precisionNames=["Full","XXLarge","XLarge","Large","Small","XSmall","Milli","Micro","Nano","Pico"]
        precisionLevels=[0,.0000000001,.000000001,.00000001,.0000001,.000001,.00001,.0001,.001,.01]

        #i=0
        #self.writePrecisionLevel(version,precisionLevels[i],precisionNames[i],data)

        for i in range(len(precisionNames)):
            self.writePrecisionLevel(version,precisionLevels[i],precisionNames[i],data)


versions=["vsop87","vsop87a","vsop87b","vsop87c","vsop87d","vsop87e"]

#Generator("vsop87a")
for version in versions:
    gen=Generator(version)
