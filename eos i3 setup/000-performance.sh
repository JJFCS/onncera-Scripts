#!/bin/bash

######################################################################################################################
#
# Check for updates on the gitlab page for maxperfwiz script (https://gitlab.com/cscs/maxperfwiz)
# Credit goes to the original author in the Gitlab link above
#
#

cd ~/Downloads/
git clone https://gitlab.com/cscs/maxperfwiz
git clone https://github.com/arcolinux/arcolinux-spices
cd ~/Downloads/maxperfwiz/

chmod +x maxperfwiz

./maxperfwiz

