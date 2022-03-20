#!/bin/sh

#Fix keyring:
#sudo echo "session		optional	pam_gnome_keyring.so auto_start" >> /etc/pam.d/sddm

git clone --bare https://github.com/lumipixi/dotfiles.git $HOME/.cfg
echo ".cfg" >> .gitignore

function conf {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}

conf checkout -f
conf config status.showUntrackedFiles no

echo "Please reload the shell"
