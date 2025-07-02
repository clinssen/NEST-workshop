#!/bin/bash

# NEST environment
source /opt/nest/bin/nest_vars.sh


cd /tmp
wget https://raw.githubusercontent.com/clinssen/NEST-workshop/master/docker_containers/nest-nestml-tutorial/jupyter_notebook_config.py
mkdir $HOME/.jupyter
cp jupyter_notebook_config.py $HOME/.jupyter/jupyter_notebook_config.py
cp jupyter_notebook_config.py $HOME/.jupyter/jupyter_lab_config.py
cd

git clone https://github.com/nest/nestml


jupyter-lab &

#mv -f NEST-workshop /tmp/
#git clone https://github.com/clinssen/NEST-workshop
#cd NEST-workshop/materials
#mv nestml /tmp/orig-workshop-NESTML-materials
#ln -s ../../nestml/doc/tutorials nestml
#cd ..

/bin/bash

