#!/bin/bash

export threads=4
export inttime=10.0
export zc1=7.0
export zc2=8.0
export imcon=2
export dt=0.0005


/home/rrashmi/tutorials/QDMS/0-software/MB-SPEC/src/sfg/response $threads $zc1 $zc2 $inttime xxz 1b $imcon $dt dump.dipoles > resp_1b_new.dat

