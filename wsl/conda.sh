# !/bin/bash

pip3 install pip-review pipdeptree
pip-review --local --interactive

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x ~/Downloads/Miniconda3-latest-Linux-x86_64.sh
~/Downloads/Miniconda3-latest-Linux-x86_64.sh
conda update --all

pip3 install pip-review
pip-review --local --interactive

conda create -n quant python=3.13
conda activate quant

pip3 install pip-review
pip-review --local --interactive
