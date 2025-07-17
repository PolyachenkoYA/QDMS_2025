module purge
module load shared slurm/expanse/23.02.7 sdsc/1.0 DefaultModules slurm/expanse/23.02.7 cpu/0.17.3b intel/19.1.3.304/6pv46so intel-tbb/2020.3/lfesfxm intel-mpi/2019.10.317/ezrfjne fftw/3.3.10/tqkvj37

lammps=/expanse/projects/qstore/csd973/bin/lmp_mpi_mbx

export OMP_NUM_THREADS=16
