#!/bin/bash

apt-get update
apt-get upgrade
apt-get clean
apt-get autoremove
rm -rf /tmp/* ~/.bash_history ~/.nano_history
#sudo cp -R .mozilla/firefox/mwad0hks.default/extensions/* ~/livecdtmp/edit/etc/skel/.mozilla/firefox/mwad0hks.default/extensions/
umount /proc
umount /sys
umount /dev/pts
echo "now you must:"
#echo "exit"
#echo "sudo umount /edit/dev"
#echo "sudo umount mnt"
echo "sudo reboot"
