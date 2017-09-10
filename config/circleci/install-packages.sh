#!/bin/bash

sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install unzip

# Make sure you grab the latest version
curl -OL https://github.com/google/protobuf/releases/download/v3.2.0/protoc-3.2.0-linux-x86_64.zip

# Unzip
unzip protoc-3.2.0-linux-x86_64.zip -d protoc3

# Move protoc to /usr/local/bin/
sudo mv protoc3/bin/* /usr/local/bin/

# Move protoc3/include to /usr/local/include/
# sudo mv protoc3/include/* /usr/local/include/
sudo ln -s /protoc3/bin/protoc /usr/bin/protoc

# Optional: change owner
# sudo chwon [user] /usr/local/bin/protoc
# sudo chwon -R [user] /usr/local/include/google




# sudo apt-get update

# sudo apt-get -y install automake ant autopoint cmake build-essential libtool \
#      patch pkg-config protobuf-compiler ragel subversion unzip git \
#     openjdk-8-jre openjdk-8-jdk wget python

# sudo apt-get -y install zlib1g:i386 libstdc++6:i386 libc6:i386


sudo apt-get -y install automake ant autopoint cmake build-essential libtool \
     patch pkg-config ragel subversion unzip git \
     openjdk-8-jre openjdk-8-jdk wget python gettext cvs yasm libtool-bin zlib1g:i386 libstdc++6:i386 libc6:i386 libc6-dev:i386
sudo apt-get -y install autoconf gawk gcc g++ m4

# sudo dpkg --add-architecture i386
# sudo apt-get update
# sudo apt-get -y install zlib1g:i386 libstdc++6:i386 libc6:i386

sudo apt-get -y install libiconv* liburiparser*