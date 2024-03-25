#!/bin/sh

# DOWNLOAD APPIMAGELAUNCHER

cd ~/Downloads

wget https://github.com/TheAssassin/AppImageLauncher/releases/download/continuous/appimagelauncher-2.2.0-gha111.d9d4c73.x86_64.rpm

yes | rpm -i appimagelauncher-2.2.0-gha111.d9d4c73.x86_64.rpm
