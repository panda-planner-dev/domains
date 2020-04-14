from __future__ import print_function
import sys
import re
import operator
from collections import deque

resultFile = sys.argv[1]
worldSize = int(sys.argv[2])
out = open(resultFile, 'w')

out.write("(define (problem house) \n (:domain minecraft) \n (:objects")

for  h in range(0, (worldSize+2)):
	for l in range(0,worldSize+1):
		out.write("\n")
		for w in range(0,worldSize+1):
			out.write(" l-"+ str(h) + "-"+ str(l) +"-"+ str(w))
			
out.write(" \n dummy \n- location \n e w s n \n - direction \n")
out.write("wood stone earth \n - blocktype \n")

for n in range(0, worldSize+1):
	out.write(" n"+ str(n))
out.write(" \n - numbers \n )\n (:init \n ")

for  h in range(0, worldSize+2):
	for l in range(0,worldSize+1):
		out.write("\n")
		for w in range(0,worldSize):
			out.write("(neighbour l-"+ str(h) + "-"+ str(l) +"-"+ str(w) +" l-"+ str(h) + "-"+ str(l) +"-"+ str(w+1) +" e) ")

out.write("\n")

for  h in range(0, worldSize+2):
	for l in range(0,worldSize+1):
		out.write("\n")
		for w in range(1,worldSize+1):
			out.write("(neighbour l-"+ str(h) + "-"+ str(l) +"-"+ str(w) +" l-"+ str(h) + "-"+ str(l) +"-"+ str(w-1) +" w) ")

out.write("\n")

for  h in range(0, worldSize+2):
	for w in range(0,worldSize+1):
		out.write("\n")
		for l in range(0,worldSize):
			out.write("(neighbour l-"+ str(h) + "-"+ str(l) +"-"+ str(w) +" l-"+ str(h) + "-"+ str(l+1) +"-"+ str(w) +" n) ")
out.write("\n")

for  h in range(0, worldSize+2):
	for w in range(0,worldSize+1):
		out.write("\n")
		for l in range(1,worldSize+1):
			out.write("(neighbour l-"+ str(h) + "-"+ str(l) +"-"+ str(w) +" l-"+ str(h) + "-"+ str(l-1) +"-"+ str(w) +" s) ")

out.write("\n")

for  l in range(0, worldSize+1):
	for w in range(0,worldSize+1):
		out.write("\n")
		for h in range(0,worldSize+1):
			out.write("(on-top l-"+ str(h) + "-"+ str(l) +"-"+ str(w) +" l-"+ str(h+1) + "-"+ str(l) +"-"+ str(w) +") ")

out.write("\n \n")

for  l in range(0, worldSize+1):
	for w in range(0,worldSize+1):
		out.write("(blockat l-0-"+ str(l) + "-"+ str(w) + " earth) ")

out.write("\n")

for  h in range(1, worldSize+2):
	for l in range(0,worldSize+1):
		out.write("\n")
		for w in range(0,worldSize+1):
			out.write("(empty l-"+ str(h) + "-"+ str(l) +"-"+ str(w) +") ")

out.write("\n \n (isone n1) \n")

out.write("(lastplaced dummy) \n")

for n in range(0, worldSize):
	out.write("(prev n"+ str(n+1) + " n"+ str(n) + ") ")
out.write("\n ) \n )")
