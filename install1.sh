#!/bin/bash

echo "--- updating & upgrading ---"
sudo apt update
yes Y | sudo apt upgrade

echo "--- installing my base system packages ---"
yes Y | sudo apt install git chromium-browser youtube-dl build-essential cmake python3-dev python-dev mono-devel npm vim vim-nox vim-syntastic vim-gnome snapd-xdg-open guake
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

