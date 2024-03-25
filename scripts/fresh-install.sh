#!/bin/sh

sudo cat ./scripts/dnf.add >> /etc/dnf/dnf.conf

# UPDATE REPOSITORIES AND INSTALL UPDATES
sudo dnf update --refresh

# INSTALL RPMFUSION FREE
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

# INSTALL RPM-FUSION NON-FREE
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# INSTALL OVER GUI
sudo dnf group update core

# INSTALL FLATPAK
sudo dnf install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# INSTALL CODECS ON FEDORA
sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install -y lame\* --exclude=lame-devel
sudo dnf group upgrade --allowerasing --with-optional Multimedia

# INSTALL FISH SHELL
sudo dnf install -y fish
chsh -s /usr/bin/fish

