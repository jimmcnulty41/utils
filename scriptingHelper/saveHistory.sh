#!/usr/bin/env zsh

name=$1

# output the last command entered
command=$(cat ~/.zsh_history | tail -n 2 | head -n 1 |  cut -d ";" -f 2- -)

echo "alias $name=\"$command\"" >> ~/.named_history
source ~/.named_history
