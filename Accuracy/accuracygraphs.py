#!/usr/bin/python

import numpy as np
import matplotlib.pyplot as plt




colors={}
colors["xxlarge"]="red"
colors["xlarge"]="magenta"
colors["large"]="blue"
colors["small"]="black"
colors["xsmall"]="yellow"
colors["milli"]="brown"
colors["micro"]="grey"
colors["nano"]="green"
colors["pico"]="cyan"


x={}
y={}
c={}

versions=("xxlarge","xlarge","large","small","xsmall","milli","micro","nano","pico")
for v in versions:
	x[v]=[]
	y[v]=[]
	c[v]=[]



f=open("data1000.txt","r")
for l in f:
	(jd,version,body,err)=l.rstrip().split(",")
	if(body =="Neptune"):
		e=float(err)
		if(e>180):
			e=360-e
		x[version].append(float(jd))
		y[version].append(e)
		#y.append(float(err))
		c[version].append(colors[version])

fig = plt.figure()
#fig.suptitle('Error vs Full VSOP87', fontsize=14, fontweight='bold')
ax = fig.add_subplot(111)
ax.set_ylabel("Error (Degrees)")
ax.set_xlabel("Julian Day")

for v in versions:
	ax.scatter(x[v],y[v],s=3,c=c[v],alpha=0.5,label=v)
plt.title('Error vs Full VSOP87')
plt.legend(loc=2)
plt.show()

print("done")