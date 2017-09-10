#!/bin/bash

git clone https://code.videolan.org/videolan/vlc-android.git vlc-android
cd vlc-android
git checkout 2.1.19
# cd ..
git clone http://git.videolan.org/git/vlc.git vlc
cd vlc
git checkout 591b2d2
cd ../..
patch -p < protobuff.patch
