#!/bin/bash
#
#
# Check for updates on the script (https://gitlab.com/cscs/maxperfwiz)
# Credit goes to the original author in the Gitlab link above

git clone https://gitlab.com/cscs/maxperfwiz
git clone https://github.com/arcolinux/arcolinux-spices

mv maxperfwiz/ ~/Downloads/maxperfwiz
mv arcolinux-spices/ ~/Downloads/arcolinux-spices

cd ~/Downloads/maxperfwiz
chmod +x maxperfwiz
