#!/bin/bash

apt-get update
apt-get -y upgrade
apt-get -y install automake ant autopoint cmake build-essential libtool \
     patch pkg-config protobuf-compiler ragel subversion unzip git \
     openjdk-8-jre openjdk-8-jdk wget python gettext cvs yasm
apt-get -y install autoconf gawk gcc g++ m4

mkdir $HOME/android-sdk
export ANDROID_HOME=$HOME/android-sdk
export ANDROID_NDK=$ANDROID_HOME/android-ndk-r14b
export ANDROID_SDK=$ANDROID_HOME
wget https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip
unzip -o sdk-tools-linux-3859397.zip -d $ANDROID_HOME/
wget https://dl.google.com/android/repository/android-ndk-r14b-linux-x86_64.zip
unzip -o android-ndk-r14b-linux-x86_64.zip -d $ANDROID_HOME/
mv $ANDROID_NDK/android-ndk-r14b/* $ANDROID_NDK/
mkdir "$ANDROID_SDK/licenses"
echo "8933bad161af4178b1185d1a37fbf41ea5269c55" > "$ANDROID_SDK/licenses/android-sdk-license"
echo "84831b9409646a918e30573bab4c9c91346d8abd" > "$ANDROID_SDK/licenses/android-sdk-preview-license"
git clone https://code.videolan.org/videolan/vlc-android.git vlc-android
cd vlc-android
git checkout 2.1.15
git clone http://git.videolan.org/git/vlc.git vlc
cd vlc
#git checkout bdb4031
cd ../..
$ANDROID_SDK/tools/bin/sdkmanager "platforms;android-26"
$ANDROID_SDK/tools/bin/sdkmanager "platform-tools"
$ANDROID_SDK/tools/bin/sdkmanager "build-tools;25.0.0"
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
