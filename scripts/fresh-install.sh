#!/bin/sh

cat ./scripts/dnf.add >> /etc/dnf/dnf.conf

# UPDATE REPOSITORIES AND INSTALL UPDATES
yes | dnf update --refresh

# INSTALL RPMFUSION FREE
yes | dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

# INSTALL RPM-FUSION NON-FREE
yes | dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# INSTALL OVER GUI
dnf group update core -y

# INSTALL FLATPAK
dnf install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# INSTALL CODECS ON FEDORA
dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
dnf install -y lame\* --exclude=lame-devel
dnf group upgrade --allowerasing --with-optional Multimedia -y

# INSTALL FISH SHELL
dnf install -y fish
