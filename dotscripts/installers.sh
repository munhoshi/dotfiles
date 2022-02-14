#!/bin/bash

#Fix keyring:
sudo echo "session		optional	pam_gnome_keyring.so auto_start" >> /etc/pam.d/sddm

#Stuff to install explicitly:
sudo pamac install --no-confirm vim neofetch lolcat cowsay ytfzf mpv yt-dlp falkon signal-desktop telegram-desktop spotify frozen-bubble kompare kvantum imagewriter

#Stuff to install --as-deps
sudo pamac install --no-confirm --as-deps falkon-pdfreader-git jq fzf ueberzug

#pip upgrade
pip install --upgrade pip
