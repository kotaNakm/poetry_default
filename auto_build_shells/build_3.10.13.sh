#!/bin/bash
# Configuration
project_name=hogehoge
pyv=3.10.13
path=../../my_project/

# move to diretory/repository 
cd $path$project_name

#initalize a poetry environment
poetry init -n

# set pyenv
pyenv install $pyv
pyenv local $pyv

# set python for poetry 
poetry env use $pyv

# #add libraries
poetry add numpy pandas scikit-learn jupyter ipykernel matplotlib@3.5.3 seaborn argparse importlib black tqdm dill 

# # set kernel for jupyter notebook
poetry run python -m ipykernel install --user --name=$project_name

# make directories
mkdir _dat
mkdir _src
mkdir _notebooks
mkdir _misc