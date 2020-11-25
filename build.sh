#!/bin/bash 
PATH_PROJECT=$(pwd)

# build apk
flutter clean
flutter pub get
flutter build apk --release
flutter build appbundle --target-platform android-arm,android-arm64,android-x64
# move file app-release.aab to folder certs
cp "$PATH_PROJECT/build/app/outputs/flutter-apk/app-release.apk" "$PATH_PROJECT/sendowner.apk"
cp "$PATH_PROJECT/build/app/outputs/bundle/release/app-release.aab" "$PATH_PROJECT/sendowner.aab"
