#!/bin/bash

# this script is to plot the spectra given the TCF
# to run: ./do_spectra.sh z1 z2 alpha
# you need POSITION_CMD, DIPMOL_CMD, and DIPIND_CMD files

# temp is used to get the prefactor in the intensity but is currently commented in the code
# alpha is the smoothing factor for the spectra
# tau is related to normalization but it is considered 0 and will not pass the if condition in the code
# z1 and z2 define the location of the switching function that separates the surface from the bulk

temp=298
int=10

z1=$1
z2=$2
alpha=$3

# ./spectrum-sfg temp tau alpha max_int < corr_dip.dat > spectrum.dat

/p/home/rrashmi/software/parallel_MB_SFG_dipole_polarizability_fitting-master/dipole_polarizability_fitting-master/src/sfg/spectrum-sfg $temp 0 $alpha $int < response_1b_xxz_${z1}_${z2}.dat > spec_1b_xxz_${z1}_${z2}_a$alpha.dat
/p/home/rrashmi/software/parallel_MB_SFG_dipole_polarizability_fitting-master/dipole_polarizability_fitting-master/src/sfg/spectrum-sfg $temp 0 $alpha $int < response_1bNb_xxz_${z1}_${z2}.dat > spec_1bNb_xxz_${z1}_${z2}_a$alpha.dat
/p/home/rrashmi/software/parallel_MB_SFG_dipole_polarizability_fitting-master/dipole_polarizability_fitting-master/src/sfg/spectrum-sfg $temp 0 $alpha $int < response_1b2bNb_xxz_${z1}_${z2}.dat > spec_1b2bNb_xxz_${z1}_${z2}_a$alpha.dat

