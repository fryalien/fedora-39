#!/bins/sh

# INSTALL DEPENDENCIES
sudo dnf -y install @development-tools

sudo dnf -y install kernel-headers kernel-devel dkms

# ADD VIRTUALBOX REPO
sudo cp ./scripts/vritualbox.repo /etc/yum.repos.d/virtualbox.repo

#INSTALL VRITUALBOX
sudo dnf install -y VirtualBox-7.0

# INSTALL EXTENSION PACK
cd Downloads
wget https://download.virtualbox.org/virtualbox/7.0.8/Oracle_VM_VirtualBox_Extension_Pack-7.0.8.vbox-extpack

sudo vboxmanage extpack install Oracle_VM_VirtualBox_Extension_Pack-7.0.8.vbox-extpack

# ADD USER TO VBOX GROUP
sudo usermod -a -G vboxusers $USER