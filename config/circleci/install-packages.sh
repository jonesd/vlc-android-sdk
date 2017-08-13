#!/bin/bash

apt-get update
apt-get -y upgrade
apt-get -y install automake ant autopoint cmake build-essential libtool \
     patch pkg-config protobuf-compiler ragel subversion unzip git \
     openjdk-8-jre openjdk-8-jdk wget python gettext cvs yasm
apt-get -y install autoconf gawk gcc g++ m4

dpkg --add-architecture i386
apt-get update
apt-get -y install zlib1g:i386 libstdc++6:i386 libc6:i386
