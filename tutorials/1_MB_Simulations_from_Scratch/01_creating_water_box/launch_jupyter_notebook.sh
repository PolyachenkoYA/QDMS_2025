working_path="/expanse/lustre/projects/csd973/$USER"

# == localy ==:
# ssh -L 8085:localhost:8085 <your_user_name>@login01.expanse.sdsc.edu

module load cpu/0.17.3b gcc/10.2.0/npcyll4 py-jupyterlab/3.2.1/fbrlmmt
cd ${working_path}
jupyter-lab --no-browser --port=8085
