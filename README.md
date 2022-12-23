# v.1.02 Introduction

These scripts help me setup a new debian based (and others?) system, along with a few handy scripts and config files.

## Instructions

1. setup ssh keys
  if copying keys over from old system, run 'add-ssh' after making sure permissions are right
  if generating new keys, see bottom of this file
2. make sure you have run 'sudo' latley so it dosent ask for password!
3. then copy the following and paste into terminal

```bash
sudo apt update
yes Y | sudo apt upgrade
yes Y | sudo apt install git guake flatpak
git config --global user.email "jeromestonebridge@gmail.com"
git config --global user.name "Jerome Stonebridge"
mkdir ~/Projects
cd ~/Projects
yes "yes" | git clone git@github.com:movingelectrons/bash.git
cd ./bash
./setup.sh
```

### To generate new ssh keys
yes "" | ssh-keygen -t rsa -b 4096 -C "jeromestonebridge@gmail.com"
cat ~/.ssh/id_rsa.pub
