#!/bin/sh

log_file="./install$(date +%Y-%m-%d_%H:%M).log"

# START THE INSTALL
sh ./scripts/fresh-install.sh  | tee -a "$log_file"

# INSTALL VIRTUALBOX
sh ./scripts/virtualbox.sh | tee -a "$log_file"

# INSTALL ALL SOFTWARE
#sh ~/INSTALL/software-laptop.sh | tee -a "$log_file"
sh ./scripts/software-vm.sh | tee -a "$log_file"
#sh ~/INSTALL/software-desktop-kde.sh | tee -a "$log_file"
#sh ~/INSTALL/software-i3.sh | tee -a "$log_file"