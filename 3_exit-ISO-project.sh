#!/bin/bash

apt-get update
apt-get upgrade
apt-get clean
apt-get autoremove
rm -rf /tmp/* ~/.bash_history ~/.nano_history
umount /proc
umount /sys
umount /dev/pts
echo "now you must:"
#echo "exit"
#echo "sudo umount /edit/dev"
#echo "sudo umount mnt"
echo "sudo reboot"
