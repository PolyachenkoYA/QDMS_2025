#!/bin/bash

source ~/miniconda3/bin/activate

source /home/rrashmi/software/mbx+ipi/i-pi/env.sh
MBX_HOME=/home/rrashmi/software/mbx+ipi/MBX/

export OMP_NUM_THREADS=4

rm /tmp/ipi_water

PYTHONUNBUFFERED=1 i-pi input.xml &>> log.pimd &
sleep 30

for i in {1..32}
    do
      $MBX_HOME/plugins/i-pi/bin/driver config.nrg mbx.json >> out.classical 2>> error.classical &
    done
   
wait
