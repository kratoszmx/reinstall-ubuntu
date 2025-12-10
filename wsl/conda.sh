# !/bin/bash

# ubuntu python update
pip3 install pip-review pipdeptree
pip-review --local --interactive

#install conda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x ~/Downloads/Miniconda3-latest-Linux-x86_64.sh
~/Downloads/Miniconda3-latest-Linux-x86_64.sh
conda update --all

# base update
pip3 install pip-review
pip-review --local --interactive

# quant update
conda create -n quant python=3.13
conda activate quant
pip3 install pip-review
pip-review --local --interactive
