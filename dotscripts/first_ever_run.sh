#!/bin/zsh

#This is just for reference - it's how I first set it up.

#Set up bare dotfiles repo
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.oh-my-zsh/custom/alias.zsh
config config --local status.showUntrackedFiles no

#Add dotfiles
config add .zshrc .gitconfig .oh-my-zsh/custom/ .vimrc .vim/ .local/share/konsole .zshfunctions/
config commit -m "Add zsh, vim, git and konsole profiles"

echo "Success! You can now cd .cfg/ and gh repo create or something :D"
