#Introduction
##v0.9
These scripts help me setup a new lubuntu (18.10?+) system quickly, and a few other very handy things.

remember to run :Helptags in vim

ref: https://forum.unity3d.com/threads/unity3d-with-vim.355814/

##Notes (VIM)
ZZ in normal mode = save and quit
ZQ      ''        = quit without saving
$       ''        = go to end of line

#Instructions
##first make sure you have run 'sudo' latley so it dosent ask for password!
##then just copy the following and paste into terminal

sudo apt update
yes Y | sudo apt upgrade
yes Y | sudo apt install git chromium-browser youtube-dl build-essential cmake python3-dev python-dev mono-devel npm vim vim-nox vim-syntastic vim-gnome snapd-xdg-open guake libdb1-compat tzdata lib32z1 torbrowser-launcher gconf-service lib32gcc1 lib32stdc++6 libasound2 libc6 libc6-i386 libcairo2 libcap2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libfreetype6 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libgl1-mesa-glx libglib2.0-0 libglu1-mesa libgtk2.0-0 libnspr4 libnss3 libpango1.0-0 libstdc++6 libx11-6 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxtst6 zlib1g debconf rails coffeescript coffeescript-doc
yes Y | sudo npm install -g yarn
yes Y | sudo snap install discord
git config --global user.email "jeromestonebridge@gmail.com"
git config --global user.name "Jerome Stonebridge"

yes "" | ssh-keygen -t rsa -b 4096 -C "jeromestonebridge@gmail.com"
cat ~/.ssh/id_rsa.pub
read -p "copy/paste the above public key into github/gitlab settings, then press enter to continue"
mkdir ~/Projects
cd ~/Projects
yes "yes" | git clone git@github.com:movingelectrons/bash.git

cd ./bash
./setup.sh

