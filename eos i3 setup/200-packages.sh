#!/bin/bash
#set -e


func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
		echo "###############################################################################"
		echo "################## Package "$1" is already installed"
		echo "###############################################################################"
		echo
		tput sgr0
	else
		tput setaf 3
		echo "###############################################################################"
		echo "################## Getting package " $1
		echo "###############################################################################"
		echo
		tput sgr0
		sudo pacman -S --noconfirm --needed $1
	fi
}

func_category() {
	tput setaf 5;
	echo "###############################################################################"
	echo "################## Getting software for category " $1
	echo "###############################################################################"
	echo;tput sgr0
}

###############################################################################

func_category System

list=(
arandr
arc-gtk-theme-eos
archlinux-tweak-tool-git
awesome-terminal-fonts
biber
ccache
clang
cmake
dmenu
dunst
fd
feh
gnome-themes-extra
gparted
gtk-engine-murrine
gvfs
gvfs-afc
gvfs-gphoto2
gvfs-mtp
gvfs-nfs
gvfs-smb
hsetroot
i3-wm
i3blocks
i3lock
i3status
lxappearance-gtk3
maim
mpv
neofetch
neovim
ninja
nodejs
picom
sddm
sublime-text-4
texlab
texlive
thunar
thunar-archive-plugin
thunar-media-tags-plugin
thunar-volman
tmux
tree-sitter-cli
ttc-iosevka-slab
ttf-font-awesome
ttf-iosevka-nerd
ttf-iosevkaterm-nerd
ttf-jetbrains-mono
ttf-jetbrains-mono-nerd
ttf-martian-mono-nerd
ttf-ms-fonts
vim
visual-studio-code-bin
wezterm
xclip
xdotool
yt-dlp
zathura
zathura-pdf-poppler
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0

###############################################################################

sudo systemctl enable sddm
