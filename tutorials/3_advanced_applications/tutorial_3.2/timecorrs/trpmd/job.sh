#!/bin/bash

source ~/miniconda3/bin/activate
source /home/rrashmi/tutorials/QDMS/4-tests/i-pi/env.sh

PYTHONUNBUFFERED=1 i-pi trpmd.xml &>> log.pimd &
sleep 10

i-pi-driver -u -a oh-trpmd -m morsedia >> out 2>> error &

#i-pi-getacf -ifile simulation.vc.xyz -mlag 1024 -ftpad 3072 -ftwin cosine-hanning -dt "1.0 femtosecond" -oprefix trpmd
