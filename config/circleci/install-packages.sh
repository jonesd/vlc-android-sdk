#!/bin/bash

sudo dpkg --add-architecture i386
sudo apt-get update

sudo apt-get -y install automake ant autopoint cmake build-essential libtool \
     patch pkg-config protobuf-compiler ragel subversion unzip git \
    openjdk-8-jre openjdk-8-jdk wget python

sudo apt-get -y install zlib1g:i386 libstdc++6:i386 libc6:i386

sudo ldconfig -v

# sudo apt-get update
# sudo apt-get -y upgrade
# sudo apt-get -y install automake ant autopoint cmake build-essential libtool \
#      patch pkg-config protobuf-compiler ragel subversion unzip git \
#      openjdk-8-jre openjdk-8-jdk wget python gettext cvs yasm
# sudo apt-get -y install autoconf gawk gcc g++ m4

# sudo dpkg --add-architecture i386
# sudo apt-get update
# sudo apt-get -y install zlib1g:i386 libstdc++6:i386 libc6:i386
