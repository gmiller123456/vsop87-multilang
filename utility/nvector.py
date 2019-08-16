#!/usr/bin/python
import math

def getNVector(lat,lon):
	n=[0,0,0];
	n[0]=math.cos(lat)*math.cos(lon)
	n[1]=math.cos(lat)*math.sin(lon)
	n[2]=math.sin(lat)
	return n

def test(lat,lon):
	n=getNVector(math.radians(lat),math.radians(lon))
	print(n)

test(0,0)
test(0,180)
test(90,0)