#!/bin/bash

ISONAME="LinuxMintRemaster.iso"

echo "Clean all local Firefox configs/history/etc; Configure add-ons..."
read -sn 1 -p "Then, press any key to continue..."
echo ""
sudo rm -rf ~/livecdtmp/edit/etc/skel/.mozilla/firefox/mwad0hks.default/
sudo cp -R ~/.mozilla/firefox/mwad0hks.default ~/livecdtmp/edit/etc/skel/.mozilla/firefox/
sudo cp -R ~/.mozilla/firefox/profiles.ini ~/livecdtmp/edit/etc/skel/.mozilla/firefox/
echo "copied local Firefox profile to skel."

echo ""
echo "purge old build."
sudo rm -f ~/livecdtmp/extract-cd/casper/filesystem.squashfs  #purge old build
sudo rm -f ~/${ISONAME}

echo "creating new build..."
cd ~/livecdtmp #(if you're not in there already)
sudo mksquashfs edit extract-cd/casper/filesystem.squashfs
#sudo nano extract-cd/README.diskdefines
cd extract-cd
sudo rm -f md5sum.txt
find -type f -print0 | sudo xargs -0 md5sum | grep -v isolinux/boot.cat | sudo tee md5sum.txt
cd ..
sudo mkisofs -r -V "Linux_Mint_Remaster" -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o ~/${ISONAME} extract-cd
cd ..
sudo chmod 777 ${ISONAME}
pwd
ls -lh ${ISONAME}
