vlc-android-sdk
===============

VLC Android SDK is pushed to Jitpack. This repository is a fork of the original [work done](https://github.com/mrmaffen/vlc-android-sdk) by 
Enno Gottschalk [https://github.com/mrmaffen](mrmaffen) 

Originally this project was being used on [tomahawk-android](https://github.com/tomahawk-player/tomahawk-android) project and now also 
on [butter-android](https://github.com/butterproject/butter-android) project. Check out those amazing projects.

This fork will try to be more updated than the original one with stable releases produced in the VLC source code.

Reporting issues
-----------------

Please contact the [VLC team](https://trac.videolan.org/vlc) directly. This is only a convenience library published to Jitpack for Android.

Get it via Jitpack
------------------

Just add this dependency to your project and you're good to go.

<pre>
dependencies {
  compile "de.mrmaffen:vlc-android-sdk:2.1.3"
}
</pre>

Currently version 2.1.3 is the most stable one.

Building the LibVLC Android SDK yourself
----------------------------------------

To build a fresh version of the LibVLC Android SDK, please make sure that you have setup your machine correctly
(You can ignore the steps after and including 'Building'): https://wiki.videolan.org/AndroidCompile

Afterwards simply run this Gradle command:

```./gradlew buildLibVlc```
  
The VLC-Android and the VLC repo will now get pulled if they haven't been previously.
After that's done the compilation process for the ABIs armeabi-v7a, x86 and armeabi gets started.
Finally the resulting .java files will be copied over into the src/main/java folder of this project.
The resulting .so files will be copied into src/main/jniLibs.

Building a specific version of the LibVLC Android SDK       
-----------------------------------------------------

If you want to build a specific version (maybe you want a major stable release) you have to 
checkout the vlc-android git repository at the corresponding commit:

```
cd vlc-android          // if this folder doesn't exist yet, simply run ./gradlew cloneVlcAndroid
git tag                 // to list all release versions
git checkout {tag-name} // to checkout the git repo at the given tag
cd ..
./gradlew buildLibVlc   // build it        
```

License
-------

    vlc-android-sdk Copyright (C) 2017  <name of author>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.