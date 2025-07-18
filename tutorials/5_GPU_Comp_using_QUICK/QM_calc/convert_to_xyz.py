#!/usr/bin/python
from glob import glob
import re

natoms  = len(open('dopamine_esp.in','r').readlines())-2
npoints = len(open('results/dopamine_esp.vdw','r').readlines())-4

with open('dopamine_with_points.xyz','w') as fh:
    fh.write(str(natoms+npoints)+'\n\n')
    for line in open('dopamine_esp.in','r').readlines()[2:]:
        fh.write(line)
    for line in open('results/dopamine_esp.vdw','r').readlines()[4:]:
        fh.write('X '+' '.join(line.strip().split()[:3])+'\n')
