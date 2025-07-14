
source ~/.bashrc

module purge
module load shared sdsc/1.0 DefaultModules slurm/expanse/23.02.7 cpu/0.15.4 intel/19.1.1.217 gsl/2.5 intel-mpi/2019.8.254 fftw/3.3.8 intel-mkl netcdf-cxx netcdf-c

conda activate qdms_tutorial_2

cd /expanse/projects/qstore/csd973/MB-Fit_dev
export MBFIT_HOME=$PWD
source sourceme.sh
cd -
