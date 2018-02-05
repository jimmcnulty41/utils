#!/bin/sh

git pull
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
ln -s $(pwd) ~/.oh-my-zsh/themes/agnoster-fcamblor.zsh-theme
sudo apt-get install fonts-powerline
cp .zshrc ~/.zshrc


