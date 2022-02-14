#!/bin/bash

#Fix keyring:
sudo echo "session		optional	pam_gnome_keyring.so auto_start" >> /etc/pam.d/sddm

#Stuff to install explicitly:
sudo pamac install --no-confirm $(cat packages.txt)
#Stuff to install --as-deps
sudo pamac install --no-confirm $(cat deps.txt)
#pip upgrade
pip install --upgrade pip
