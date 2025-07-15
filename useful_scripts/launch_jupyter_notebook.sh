# == localy ==:
# ssh -L <port>:localhost:<port> <your_user_name>@<address>
# ssh -L 8085:localhost:8085 ypolyachenko@login01.expanse.sdsc.edu

#working_path="/expanse/lustre/projects/csd973/$USER"; module load cpu/0.17.3b gcc/10.2.0/npcyll4 py-jupyterlab/3.2.1/fbrlmmt; cd ${working_path}; jupyter-lab --no-browser --port=8085;   # This what the author version, but loading modules breaks the python env. It worked for me without them
jupyter-lab --no-browser --port=8085 --notebook-dir=/expanse/lustre/projects/csd973/$USER;

# == if it does not want to create the same port ID ==
# lsof -i :<wanted_port>
# <kill all PID-s that hold the wanted port>
