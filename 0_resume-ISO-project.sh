#!/bin/bash

echo "mounting chroot for iso build..."
cd ~/livecdtmp
sudo mount --bind /dev/ edit/dev
sudo chroot edit
mount -t proc none /proc && mount -t sysfs none /sys && mount -t devpts none /dev/pts && echo "mounted properly" || echo "not mounted properly"
