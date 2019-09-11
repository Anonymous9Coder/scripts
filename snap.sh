#!/bin/sh

# Install snap && snapd on redhat 7

#The EPEL repository can be added to your system with the following command:
sudo yum install epel-release

#Snap can now be installed as follows:
sudo yum install snapd

#Once installed, the systemd unit that manages the main snap communication socket needs to be enabled
sudo systemctl enable --now snapd.socket

#To enable classic snap support, enter the following to create a symbolic link between /var/lib/snapd/snap and /snap:

sudo ln -s /var/lib/snapd/snap /snap

#Restart the system 
init 6 

#Installing the Snap Store app
sudo snap install snap-store
