#root

clear;
env|grep zmx
export USER=root;
export ZDOTDIR=/root;
export USER_ZDOTDIR=/root;
unset ZSH;
env|grep root

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
rm -rf ~/.oh-my-zsh/custom;
cp -r /home/zmx/.oh-my-zsh/custom ~/.oh-my-zsh;
cp /home/zmx/.zshrc .
# chown root:root ~/.oh-my-zsh/custom 
vim ~/.zshrc
