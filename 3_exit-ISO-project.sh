#!/bin/bash

apt-get update
apt-get upgrade
apt-get clean
apt-get autoremove
rm -rf /tmp/* ~/.bash_history ~/.nano_history
umount /proc
umount /sys
umount /dev/pts

red="\e[31m"
normal="\e[0m"

echo ""
echo -e "${red} Now you must:"
#echo "exit"
#echo "sudo umount /edit/dev"
#echo "sudo umount mnt"
echo -e "${red} sudo reboot"
echo -e "${nocolor}"
