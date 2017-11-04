#!/bin/bash

cd vlc-android

archs=( armeabi-v7a arm64-v8a x86 x86_64 )

for a in "${archs[@]}"
do
    echo "Build $a"
    ./compile.sh -l --no-ml --release -a $a

    echo "Copy native lib for $a"
    mkdir -p ../src/main/jniLibs/$a
    cp -r libvlc/jni/libs/$a/ ../src/main/jniLibs/
done

echo "Copy java files"
cp -r libvlc/src/ ../src/main/java
cd ..

./gradlew assDeb
