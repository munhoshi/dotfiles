#!/bin/sh

#Stuff to install explicitly:
sudo pamac install --no-confirm $(cat packages.txt)
#Stuff to install --as-deps
sudo pamac install --no-confirm $(cat deps.txt)
