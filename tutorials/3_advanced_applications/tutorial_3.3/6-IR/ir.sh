#!/bin/bash

#1B dipoles
mpirun -np 1 /home/rrashmi/tutorials/QDMS/0-software/MB-SPEC/src/infrared/dipole 1b 2 0.0005 ../8-SFG/dump.dipoles > dipole-1b.dat
/home/rrashmi/tutorials/QDMS/0-software/MB-SPEC/src/infrared/response 10.0 dipole.dat > response-1b.dat
/home/rrashmi/tutorials/QDMS/0-software/MB-SPEC/src/infrared/spectrum 298 125000 0 0.5 10.0 < response-1b.dat > spectrum-1b_a0.5.dat

