# !/bin/bash

brew install --cask miniforge
conda init zsh
conda update --all
conda update -n base -c defaults conda

# quant update
conda create -n quant python=3.14.3
conda activate quant
pip3 install pip-review
pip-review --local --interactive
conda update --all
