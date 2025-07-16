#!/bin/bash

source /home/rrashmi/miniconda3/bin/activate

conda activate deepmd

source /home/rrashmi/software/mbx+ipi/i-pi/env.sh
MBX_HOME=/home/rrashmi/software/mbx+ipi/MBX/

export OMP_NUM_THREADS=32

rm /tmp/ipi_mbpol-water
rm /tmp/ipi_qc-water

PYTHONUNBUFFERED=1 i-pi input.xml &>> log.pimd &
sleep 30

$MBX_HOME/plugins/i-pi/bin/driver config.nrg mbx.json >> out.classical 2>> error.classical &
dp_ipi water_qc.json >> out.qc 2>> error.qc &

wait
