#!/bin/bash

module unload gcc mpi 
module load gcc/8.2.0 intel intel/mpi

LAMMPS_EXE=/home/rrashmi/software/EPYC/mbx+lammps/LAMMPS-stable/src/lmp_mpi_mbx
INPUT_FILE=lammps.in

env OMP_NUM_THREADS=8 mpirun -np 1  $LAMMPS_EXE -in $INPUT_FILE >> stdout 2>> stderr &

