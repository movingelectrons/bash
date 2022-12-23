#!/bin/bash

# undos what 'force_vpn.sh' does

sudo ufw reset
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
