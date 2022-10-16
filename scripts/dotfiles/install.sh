#!/bin/sh

echo "Cloning dotfiles..."
git clone --bare https://github.com/lumipixi/dotfiles.git $HOME/.cfg
echo ".cfg" >> .gitignore

git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout -f
git --git-dir=$HOME/.cfg/ --work-tree=$HOME config status.showUntrackedFiles no

echo "Done! Please reload the shell"
