#!/bin/sh

echo "Cloning dotfiles..."
git clone --bare https://github.com/lumipixi/dotfiles.git $HOME/.cfg
echo ".cfg" >> .gitignore

function conf {
   git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}

conf checkout -f
conf config status.showUntrackedFiles no

echo "Done! Please reload the shell"
