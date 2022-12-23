#Introduction
##v0.9
These scripts help me setup a new ubuntu (21.4?+) system quickly, and a few other very handy things.

#Instructions
##first make sure you have run 'sudo' latley so it dosent ask for password!
##then just copy the following and paste into terminal

sudo apt update
yes Y | sudo apt upgrade
yes Y | sudo apt install git guake morestuff...
git config --global user.email "jeromestonebridge@gmail.com"
git config --global user.name "Jerome Stonebridge"
mkdir ~/Projects
cd ~/Projects
yes "yes" | git clone git@github.com:movingelectrons/bash.git
cd ./bash
./setup.sh

##seperating out this stuff as i typically reuse ssh keys now
yes "" | ssh-keygen -t rsa -b 4096 -C "jeromestonebridge@gmail.com"
cat ~/.ssh/id_rsa.pub
