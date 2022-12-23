#!/bin/bash

# this script forces the use of a vpn to access the internet; no vpn, no net access.  ment to be ran after a vpn connection is established.  IMPORTANT: upon vpn termination, the included script 'unforce_vpn.sh' must be ran before a new vpn connection can be established.

sudo ufw reset
sudo ufw default deny incoming
sudo ufw default deny outgoing
sudo ufw allow out on tun0 from any to any
sudo ufw enable
