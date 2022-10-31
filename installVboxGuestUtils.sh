#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y build-essential linux-headers-$(uname -r) 
mkdir /tmp/cdrom
sudo mount /dev/cdrom /tmp/cdrom
sudo /tmp/cdrom/VBoxLinuxAdditions.run
sudo umount /dev/cdrom
sudo rm /dev/cdrom
sudo reboot
