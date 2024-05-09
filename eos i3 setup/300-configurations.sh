#!/bin/bash

######################################################
cd ~/Downloads/                                      #
######################################################

######################################################
git clone https://github.com/JJFCS/onncera-I3-Status #
git clone https://github.com/JJFCS/onncera-I3        #
git clone https://github.com/JJFCS/onncera-TE        #
                                                     #
git clone https://github.com/JJFCS/onncera-Bash      #
git clone https://github.com/JJFCS/onncera-Scripts   #
git clone https://github.com/JJFCS/onncera-Picom     #
                                                     #
git clone https://github.com/JJFCS/onncera-neovim    #
######################################################

######################################################
mv onncera-I3-Status i3status                        #
mv onncera-I3 i3                                     #
                                                     #
mv onncera-Scripts Scripts                           #
mv onncera-Picom picom                               #
                                                     #
mv onncera-neovim nvim                               #
mv onncera-TE wezterm                                #
######################################################

