#!/bin/bash
# Configuration
project_name=hybscope
pyv=3.11.12
path=./

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