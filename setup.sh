#!/bin/bash

sudo dpkg --add-architecture i386
sudo apt-get update && \
sudo apt-get install -y build-essential libncurses5-dev u-boot-tools \
qemu-user-static debootstrap git binfmt-support libusb-1.0-0-dev \
pkg-config gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf \
gcc-arm-linux-gnueabi g++-arm-linux-gnueabi libssl-dev \
libc6:i386 libncurses5:i386 libstdc++6:i386 zlib1g:i386

cd ~
git clone https://github.com/BPI-SINOVOIP/bpi-tools.git
sudo cp bpi-tools/bpi-* /usr/bin/
bpi-tools -u
git clone https://github.com/BPI-SINOVOIP/BPI-M3-bsp.git

