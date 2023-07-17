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
        return f"        {variable}+={a: > 18}*Math.cos({b: > 14} + {c: > 20} * t);\r\n"

    def getVelocityLine(self,variable,a,b,c,exponent):
        t=f"-Math.pow(t,{exponent})*{a: > 18}*{c: > 20}*Math.sin({b: > 14} + {c: > 20} * t)"
        if exponent==0:
            return f"        {variable}+={t};\r\n"
        else:
            return f"        {variable}+=Math.pow(t,{exponent-1})*{exponent}*{a: > 18}*Math.cos({b: > 14} + {c: > 20}*t){t};\r\n"

    def getLines(self,variable,exponent,lineList):
        pos=""
        vel=""
        for line in lineList:
            a=line[0]
            b=line[1]
            c=line[2]

            if(a>=self.precisionLevel):
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
                self.bprintln(f"        let {v} = 0.0;")
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
            self.bprintln("        return 0;")
        else:
            self.bprintln("        return " + "+".join(vlist) + ";")

    def writeVariables(self,planet,variablesList):
        variables=list(variablesList)
        for variable in variables:
            self.bprintln(f"    private static {planet}_{variable}(t: number): number {{")
            self.writeExponents(planet,variable,variablesList[variable])
            self.bprintln("    }")
            self.bprintln("")

    def writePlanets(self,planetsList):
        planets=list(planetsList)
        for planet in planets:
            self.writeVariables(planet,planetsList[planet])

    def writeGetters(self,data):
        for planet in list(data):
            self.bprintln(f"    public static get{planet.capitalize()}(t: number): number[]{{")
            self.bprintln("        const temp: number[] = [];")
    
            for i,variable in enumerate(list(data[planet])):
                self.position.write(f"        temp[{i}]=this.{planet}_{variable}(t);\r\n")
                if(self.velocity!=None):
                    self.velocity.write(f"        temp[{i}]=this.{planet}_{variable}(t) / 365250.0;\r\n")
    
            self.bprintln("        return temp;")
            self.bprintln("    }")
            self.bprintln("")

    def writePrecisionLevel(self,version,precision,precisionName,data):
        self.precisionLevel=precision
        classname=f"{version.upper()}_{precisionName.capitalize()}"
        self.position=open(f"{classname}.ts",mode="w",newline="")
        self.velocity=None
        if version!="vsop87":
            self.velocity=open(f"{classname}_Velocities.ts",mode="w",newline="")

        self.bprintln("//VSOP87-Multilang http://www.celestialprogramming.com/")
        self.bprintln("//Greg Miller (gmiller@gregmiller.net) 2023.  Released as Public Domain")
        self.bprintln("")
        self.position.write(f"export class {classname}{{\r\n")
        if self.velocity!=None:
            self.velocity.write(f"export class {classname}_Velocities{{\r\n")
        
        self.writeGetters(data)
        self.writePlanets(data)

        self.bprintln("}")

        self.position.close()
        if(self.velocity != None):
            self.velocity.close()

    def writeVersion(self,version,data):
        precisionNames=["Full","XXLarge","XLarge","Large","Small","XSmall","Milli","Micro","Nano","Pico"]
        precisionLevels=[0,.0000000001,.000000001,.00000001,.0000001,.000001,.00001,.0001,.001,.01]

        #i=9
        #self.writePrecisionLevel(version,precisionLevels[i],precisionNames[i],data)

        for i in range(len(precisionNames)):
            self.writePrecisionLevel(version,precisionLevels[i],precisionNames[i],data)


versions=["vsop87","vsop87a","vsop87b","vsop87c","vsop87d","vsop87e"]

for version in versions:
    gen=Generator(version)
