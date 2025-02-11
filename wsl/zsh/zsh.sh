# !/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd ~/.oh-my-zsh/custom/plugins;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git

cd ~/Downloads;
git clone https://github.com/jeremyFreeAgent/oh-my-zsh-powerline-theme.git
cd oh-my-zsh-powerline-theme;
# ./install_in_omz.sh;
cp powerline.zsh-theme ~/.oh-my-zsh/custom/themes;
cp .zshrc ~
