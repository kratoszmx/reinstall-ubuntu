#root
cp -r /home/kratoschu/.oh-my-zsh ~/.oh-my-zsh 
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
rm -rf ~/.oh-my-zsh/custom;
mv /home/kratozhu/.oh-my-zsh/custom .oh-my-zsh;
mv /home/kratozhu/.zshrc .
vim ~/.zshrc
cp -r /home/kratozhu/.vimrc /home/kratozhu/.vim -t .
