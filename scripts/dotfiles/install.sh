#!/bin/sh

git clone --bare https://github.com/lumipixi/dotfiles.git $HOME/.cfg
echo ".cfg" >> .gitignore

function conf {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}

conf checkout -f
conf config status.showUntrackedFiles no

echo "Please reload the shell"
