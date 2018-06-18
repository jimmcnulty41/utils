#!/bin/sh

git pull
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
ln -s ~/.oh-my-zsh/themes/agnoster-fcamblor.zsh-theme $(pwd) 
sudo apt-get install fonts-powerline
sudo apt-get install autojump
cp .zshrc ~/.zshrc


