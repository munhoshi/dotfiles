#!/bin/bash

#Stuff to install explicitly:
sudo pamac install --no-confirm vim neofetch ytfzf mpv yt-dlp falkon signal-desktop telegram-desktop spotify frozen-bubble kompare kvantum imagewriter

#Stuff to install --as-deps
sudo pamac install --no-confirm --as-deps falkon-pdfreader-git jq fzf ueberzug

#pip upgrade
pip install --upgrade pip
