#!/bin/sh

git pull
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh ./oh-my-zsh-agnoster-fcamblor/install
cp .zshrc ~/.zshrc


