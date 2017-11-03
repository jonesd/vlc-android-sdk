#!/bin/bash

cd vlc-android

# Arm v7
./compile.sh -l --no-ml --release -a armeabi-v7a
mkdir -p ../src/main/jniLibs/armeabi-v7a
cp /libvlc/jni/libs/armeabi-v7a/ ../src/main/jniLibs/armeabi-v7a/

# Java files
cp /libvlc/src/ ../src/main/java
