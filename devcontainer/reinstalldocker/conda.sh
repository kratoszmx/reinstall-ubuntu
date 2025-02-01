# cd /workspaces/devcontainertest/Downloads;
# wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
# chmod +x Miniconda3-latest-Linux-x86_64.sh
# ./Miniconda3-latest-Linux-x86_64.sh

# conda config --add channels defaults
conda create -n quant python=3.13.1

pip3 install pip-review
conda update conda
conda update --all
pip-review --local --interactive