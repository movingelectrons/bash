#!/bin/bash

yes "" | sudo add-apt-repository ppa:webupd8team/java

echo "--- updating & upgrading ---"
sudo apt update
yes Y | sudo apt upgrade

echo "--- installing my base system packages ---"
yes Y | sudo apt install git chromium-browser youtube-dl build-essential cmake python3-dev python-dev mono-devel npm vim vim-nox vim-syntastic vim-gnome snapd-xdg-open guake oracle-java8-installer libdb1-compat tzdata lib32z1 torbrowser-launcher gconf-service lib32gcc1 lib32stdc++6 libasound2 libc6 libc6-i386 libcairo2 libcap2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libfreetype6 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libgl1-mesa-glx libglib2.0-0 libglu1-mesa libgtk2.0-0 libnspr4 libnss3 libpango1.0-0 libstdc++6 libx11-6 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxtst6 zlib1g debconf
#making sure npm is installed right (npx not work when I just tried apt install npm)
#this might not be necessary in later releases of npm
yes Y | sudo npm install -g npm@latest
yes Y | sudo snap install discord

echo "--- configuring git ---"
git config --global user.email "jeromestonebridge@gmail.com"
git config --global user.name "Jerome Stonebridge"

echo "--- generating ssh keypair ---"
yes "" | ssh-keygen -t rsa -b 4096 -C "jeromestonebridge@gmail.com"

cat ~/.ssh/id_rsa.pub
read -p "copy/paste the above public key into github/gitlab settings, then press enter to continue"
echo "--- cloning my bash settings and vim install script from github ---"
mkdir ~/Projects
cd ~/Projects
git clone git@github.com:movingelectrons/bash.git

echo "--- installing bash settings and vim ---"
cd ./bash
./install2.sh

