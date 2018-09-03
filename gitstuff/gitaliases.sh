#!/bin/sh
git config --global alias.co checkout
git config --global alias.s status
git config --global alias.branch-name "!git rev-parse --abbrev-ref HEAD"
git config --global alias.pushu "!git push --set-upstream origin \$(git branch-name)"
git config --global alias.stat "!git log; git status"

git config --global alias.wip "!f(){ git add .; git commit -m \"WIP\"; } f;"
git config --global alias.ca "!f(){ git commit --amend; } f;"
git config --global alias.cawww "!f(){ git add .; git commit --amend; } f;"

