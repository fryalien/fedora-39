#!/bin/sh

log_file="./install-$(date +%Y-%m-%d_%H:%M).log"
user="y" # CHANGE THIS TO YOUR USER

echo
tput setaf 6
echo "################################################################"
echo "################### FRESH INSTALL SCRIPT #######################"
echo "################################################################"
tput sgr0
echo
# START THE INSTALL
sh ./scripts/fresh-install.sh  | tee -a "$log_file"

echo
tput setaf 6
echo "################### CHANGING USER SHELL TO FISH ################"
tput sgr0
echo
usermod --shell /usr/bin/fish $user  | tee -a "$log_file"

echo
tput setaf 6
echo "################################################################"
echo "################### INSTALL VIRTUALBOX SCRIPT ##################"
echo "################################################################"
tput sgr0
echo

# INSTALL VIRTUALBOX
sh ./scripts/virtualbox.sh | tee -a "$log_file"

echo
tput setaf 6
echo "################### ADDING USER TO vboxusers GROUP #############"
tput sgr0
echo
# ADD USER TO VBOX GROUP
usermod -a -G vboxusers $user

echo
tput setaf 6
echo "################################################################"
echo "################### INSTALL APPIMAGELAUNCHER SCRIPT ############"
echo "################################################################"
tput sgr0
echo

# APPIMAGELAUNCHER INSTALL
sh ./scripts/applauncher.sh | tee -a "$log_file"

echo
tput setaf 6
echo "################################################################"
echo "################### INSTALLING SOFTWARE ########################"
echo "################################################################"
tput sgr0
echo

# INSTALL ALL SOFTWARE
sh ./scripts/software-laptop.sh | tee -a "$log_file"
#sh ./scripts/software-vm.sh | tee -a "$log_file"
#sh ./scripts/software-desktop-kde.sh | tee -a "$log_file"
#sh ./scripts/i3-with-kde.sh | tee -a "$log_file"#!/bin/sh
