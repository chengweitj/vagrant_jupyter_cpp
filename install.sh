#!/usr/bin/env bash

# Install basics
sudo apt-get install --yes build-essential wget

# Install Anaconda (Python 3)
# https://www.anaconda.com/download/#linux
wget https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh -O anaconda.sh
bash anaconda.sh -b
export PATH="$HOME/anaconda3/bin:$PATH"
echo 'export PATH="$HOME/anaconda3/bin:$PATH"' >> ~/.bash_profile
conda update --yes conda
conda update --yes anaconda

# Create a Conda env
conda create --yes --name cpp_notebook
source activate cpp_notebook

# Install C++ kernel with the notebook server
# https://github.com/QuantStack/xeus-cling#installation
conda install cling xeus-cling notebook xwidgets --yes --channel QuantStack --channel conda-forge

# Start the Jupyter notebook
jupyter notebook --no-browser --ip=0.0.0.0 --port=8888 # --debug
