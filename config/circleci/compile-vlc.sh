#!/bin/bash

cd vlc-android

echo "Build armeabi-v7a"
./compile.sh -l --no-ml --release -a armeabi-v7a

echo "Copy native lib for armeabi-v7a"
mkdir -p ../src/main/jniLibs/armeabi-v7a
cp -r libvlc/jni/libs/armeabi-v7a/ ../src/main/jniLibs/armeabi-v7a/

echo "Copy java files"
cp -r libvlc/src/ ../src/main/java
