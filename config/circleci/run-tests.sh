#!/bin/bash

git clone https://code.videolan.org/videolan/vlc-android.git vlc-android
cd vlc-android
git checkout 2.1.15
git clone http://git.videolan.org/git/vlc.git vlc
cd vlc
git checkout bdb4031
cd ../..
./gradlew vlcBuild

# if [ $CIRCLE_NODE_INDEX -eq 0 ]
# then
#    ./gradlew check
# elif [ $CIRCLE_NODE_INDEX -eq 1 ]
# then
#     emulator -avd circleci-android22 -no-audio -no-window &
#     circle-android wait-for-boot
#     ./gradlew connectedCheck
# fi
