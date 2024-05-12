#!/bin/bash

cd ~/Downloads/maxperfwiz
./maxperfwiz

######################################################################################################################
#
# For reference:
#	https://www.arcolinux.info/arcolinux-spices-application/
#	https://github.com/arcolinux/arcolinux-spices
#

cd ~/Downloads/arcolinux-spices/usr/share/arcolinux-spices/scripts
sudo ./get-the-keys-and-repos.sh
sudo pacman -Syyu

