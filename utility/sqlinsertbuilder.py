#!/usr/bin/python

file=open("vsop87all.csv") #argv[1] is first command line param
next(file)
for l in file:
	#print(l)
	#print(l,end='')
	f=l.split(",")
	print(f"insert into vsop87 (version,planet,variable,exponent,a,b,c) values ('{f[0].strip()}',",end="")
	print(f"'{f[1].strip()}',",end="")
	print(f"'{f[2].strip()}',",end="")
	print(f"{f[3].strip()},",end="")
	print(f"{f[4].strip()},",end="")
	print(f"{f[5].strip()},",end="")
	print(f"{f[6].strip()}",end="")
	print(");")
	
	