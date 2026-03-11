# !/bin/bash

# ubuntu python update
pip3 install pip-review pipdeptree
pip-review --local --interactive

#install conda
cd ~/Downloads
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x ~/Downloads/Miniconda3-latest-Linux-x86_64.sh
# /home/zmx/.local/local/miniconda3
~/Downloads/Miniconda3-latest-Linux-x86_64.sh
conda update --all
conda update -n base -c defaults conda

# base update
pip3 install pip-review
pip-review --local --interactive

# quant update
conda create -n quant python=3.14
conda activate quant
pip3 install pip-review
pip-review --local --interactive
conda update --all
