#!/usr/bin/python

import numpy as np
import matplotlib.pyplot as plt


fig = plt.figure()
ax = fig.add_subplot(1, 1, 1, axisbg="1.0")

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

count=0;
f=open("data1000.txt","r")
for l in f:
	(jd,version,body,err)=l.rstrip().split(",")
	if(body =="Jupiter"):
		ax.scatter(jd, err, c=colors[version], edgecolors='none', s=10)

	count=count+1
	if(count==1000):
		count=0
		print(jd)


plt.title('Matplot scatter plot')
plt.legend(loc=2)
plt.show()

print("done")