#!/bin/bash

#run this within the chroot environment

#purge stuff i dont want
sudo apt-get purge hexchat thunderbird pidgin evolution-data-server
sudo apt-get purge libmono*
sudo apt-get purge fonts-tlwg-* fonts-kacst* fonts-takao-pgothic* fonts-tibetan-machine fonts-kacst-one fonts-khmeros-core fonts-lao fonts-lklug-sinhala fonts-sil-abyssinica fonts-sil-padauk
sudo apt-get purge virtualbox-guest-*

#install stuff i do want
sudo apt-get install aptitude
sudo aptitude install vpnc vpnc-scripts network-manager network-manager-gnome network-manager-vpnc network-manager-vpnc-gnome
sudo aptitude install remmina freerdp remmina-plugin-rdp remmina-plugin-vnc
sudo aptitude install xfce4-clipman-plugin gparted encfs sshfs beep csvtool curl pepperflashplugin-nonfree

#setup pepperflash dependencies
sudo aptitude install build-essential cmake g++ gcc git libasound2-dev libavcodec-dev libcairo2-dev onfig-dev libegl1-mesa-dev libevent-dev libfreetype6-dev libgl1-mesa-dev libgles2-mesa-dev libglib2ev libgtk2.0-dev libjack-jackd2-dev libpango1.0-dev libpangocairo-1.0-0 libpangoft2-1.0-0 libpulse-libsoxr-dev libssl-dev liburiparser-dev libv4l-dev libva-dev libvdpau-dev libx11-dev libxcursor-libxinerama-dev libxrandr-dev libxrender-dev pkg-config ragel libpulse-dev libjack-jackd2-dev libsoxr-dev

#update
sudo aptitude update ; aptitude full-upgrade ; aptitude autoclean
