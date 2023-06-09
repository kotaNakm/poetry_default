# poetry_default
This is my default python environment, where pyenv and poetry are needed.

## Setup
```bash
# move to directory/repository 
cd dir_name

#initalize a poetry environment
poetry init 

# if your python environment differs form poetry.toml
pyenv local 3.*.*
(pyenv global 3.*.*)

# if necessary  
pyenv install 3.*.*

#add default libraries
poetry add numpy pandas scikit-learn jupyter ipykernel matplotlib@3.5.3 seaborn argparse importlib black tqdm dill (scipy)

# install libraries
poetry install

# run shell
poetry shell

# set kernel for jupyter notebook
ipython kernel install --user --name="<shell_name>" 
```

