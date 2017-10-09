#!/bin/bash

git clone https://code.videolan.org/videolan/vlc-android.git vlc-android
cd vlc-android
git checkout 2.5.3
# cd ..
git clone http://git.videolan.org/git/vlc.git vlc
cd vlc
git checkout 1c02164
cd ../..
patch -p1 vlc-android/vlc/extras/tools/bootstrap < protobuff.patch 
