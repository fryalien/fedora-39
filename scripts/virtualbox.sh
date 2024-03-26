#!/bin/sh

# INSTALL DEPENDENCIES
yes | dnf install @development-tools -y

yes | dnf install kernel-headers kernel-devel dkms

# ADD VIRTUALBOX REPO
cp scripts/virtualbox.repo /etc/yum.repos.d/

#INSTALL VRITUALBOX
yes | dnf install VirtualBox-7.0 -y

# INSTALL EXTENSION PACK
cd Downloads
wget https://download.virtualbox.org/virtualbox/7.0.14/Oracle_VM_VirtualBox_Extension_Pack-7.0.14.vbox-extpack

yes | vboxmanage extpack install Oracle_VM_VirtualBox_Extension_Pack-7.0.14.vbox-extpack
