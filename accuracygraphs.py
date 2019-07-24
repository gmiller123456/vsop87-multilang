#!/usr/bin/python

import numpy as np
import matplotlib.pyplot as plt


colors={};
colors["xxlarge"]="red";
colors["xlarge"]="magenta";
colors["large"]="blue";
colors["small"]="black";
colors["xsmall"]="red";
colors["milli"]="brown";
colors["micro"]="grey";
colors["nano"]="green";
colors["pico"]="cyan";

f=open("data1000.txt","r")
x=[];
y=[];
c=[];
for l in f:
	(jd,version,body,err)=l.rstrip().split(",")
	if(body =="Jupiter"):
		x.append(float(jd))
		y.append(float(err))
		c.append(colors[version])

fig = plt.figure()
#fig.suptitle('Error vs Full VSOP87', fontsize=14, fontweight='bold')
ax = fig.add_subplot(111)
ax.set_ylabel(" (Degrees)")
ax.set_xlabel("Julian Day")

ax.scatter(x,y,s=3,c=c,alpha=0.5)
plt.title('Error vs Full VSOP87')
plt.legend(labels=("test1","test2","test3","test4","test5"),loc=2)
plt.show()

print("done")