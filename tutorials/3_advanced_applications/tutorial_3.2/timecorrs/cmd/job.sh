#!/bin/bash

source ~/miniconda3/bin/activate
source /home/rrashmi/tutorials/QDMS/4-tests/i-pi/env.sh

PYTHONUNBUFFERED=1 i-pi cmd.xml &>> log.pimd &
sleep 10

i-pi-driver -u -a oh-cmd -m morsedia >> out 2>> error &

#i-pi-getacf -ifile simulation.vel_0.xyz -mlag 1024 -ftpad 3072 -ftwin cosine-hanning -dt "4.0 femtosecond" -oprefix nve
