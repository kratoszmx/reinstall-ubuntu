# !/bin/bash
cp zsh-5.9-5-x86_64.pkg/* /
bash
zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd ~/.oh-my-zsh/custom/plugins;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git

cp .zshrc ~
mkdir $HOME/.config/zsh
cp history_protection.zsh $HOME/.config/zsh
