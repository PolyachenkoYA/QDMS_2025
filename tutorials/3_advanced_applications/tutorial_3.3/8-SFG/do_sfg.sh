#!/bin/bash

# this script is to calculate the TCF
# to run: ./do_sfg.sh 
# you need dump.dipole files

# z1 and z2 define the location of the switching function that separates the surface from the bulk
# xxz is for the polarization combination. Can be replaced with other variations
# imcon is a periodic boundary key. 2 is for orthorhombic
# inttime defines how often we check the distance between two partner molecules while computing the truncated cross correlation function 

threads=32
inttime=10.0

#/home/rrashmi/software/mb-spec/src/sfg/response $threads $z1 $z2 $inttime xxz nb $imcon dump.dipoles > response_1bNb_${z1}_${z2}.dat

/home/rrashmi/software/mb-spec/src/sfg/response $threads 7.0 8.0 $inttime xxz 1b 2 dump.dipoles > response_1b_xxz_7.0_8.0.dat

/home/rrashmi/software/mb-spec/src/sfg/response $threads 7.0 8.0 $inttime xxz nb 2 dump.dipoles > response_1bNb_xxz_7.0_8.0.dat

/home/rrashmi/software/mb-spec/src/sfg/response $threads 7.0 8.0 $inttime xxz mb 2 dump.dipoles > response_1b2bNb_xxz_7.0_8.0.dat

