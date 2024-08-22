#!/bin/bash
sudo apt update
sudo apt install -y git python3-pip libglib2.0-0 wget
sudo pip install aqtinstall

aqt list-qt linux android --modules 6.6.1 android_arm64_v8a

sudo aqt install-qt linux desktop 6.6.1 -m qtcharts qtlocation qtpositioning qtspeech qt5compat qtmultimedia qtserialport qtimageformats qtshadertools qtconnectivity qtquick3d -O /opt/Qt
sudo aqt install-qt linux android 6.6.1 android_arm64_v8a -m qtcharts qtlocation qtpositioning qtspeech qt5compat qtmultimedia qtserialport qtimageformats qtshadertools qtconnectivity qtquick3d -O /opt/Qt

export Qt6_DIR=/opt/Qt/6.6.1/android_arm64_v8a

export CMAKE_TOOLCHAIN_FILE=/opt/Qt/6.6.1/android_arm64_v8a/lib/cmake/Qt6/qt.toolchain.cmake
export CMAKE_PREFIX_PATH=/opt/Qt/6.6.1/android_arm64_v8a/bin/qt-cmake
export QT_HOST_PATH=/opt/Qt/6.6.1/gcc_64

wget https://gstreamer.freedesktop.org/data/pkg/android/1.18.6/gstreamer-1.0-android-universal-1.18.6.tar.xz
rm -r gstreamer-1.0-android-universal-1.18.5 || true
mkdir gstreamer-1.0-android-universal-1.18.5
tar xf gstreamer-1.0-android-universal-1.18.6.tar.xz -C gstreamer-1.0-android-universal-1.18.5

eabi=arm64-v8a
arch=android_arm64_v8a
ARTIFACT=MicronSprayer.apk
export QT_MKSPEC=android_arm64_v8a
export QT_VERSION=6.6.1
export QT_PATH=/opt/Qt/6.6.1/android_arm64_v8a
