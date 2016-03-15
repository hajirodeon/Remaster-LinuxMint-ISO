#!/bin/bash

cd ~/ #(or your preferred folder)
git clone https://github.com/i-rinat/freshplayerplugin.git
cd freshplayerplugin
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
make
cp ~/freshplayerplugin/build/libfreshwrapper-flashplayer.so /usr/lib/mozilla/plugins/libfreshwrapper-pepperflash.so && echo success || echo failed
rm -rf ~/freshplayerplugin

