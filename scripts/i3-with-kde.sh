#!/bin/sh

echo
tput setaf 6
echo "################################################################"
echo "################### INSTALLING i3 with KDE ####################"
echo "################################################################"
tput sgr0
echo
# INSTALLING NEW SOFTWARE
sudo dnf install -y i3
sudo dnf install -y i3lock
sudo dnf install -y i3status
sudo dnf install -y dunst
sudo dnf install -y picom
sudo dnf install -y nitrogen
sudo dnf install -y dmenu
sudo dnf install -y xbacklight
sudo dnf install -y feh
sudo dnf install -y alacrity
sudo dnf install -y xfce4-terminal
sudo dnf install -y lightdm-slick-greeter
sudo dnf install -y lxappearance
sudo dnf install -y numlockx