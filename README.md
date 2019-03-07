## NativeScript Fastlane

A Docker image useful for building NativeScript applications with
Fastlane Tools, this contains a modern development stack for
JavaScript, Ruby, and Android.

Note that there are no global dependencies related to nativescript
since this is designed to have all dependencies managed per project,
so for example, the `tns` and `fastlane` commands are not availabe
globally.  Instead, you should install them with `npm`, `yarn`, or
`bundler` respectively.

## JavaScript

``` text
$ node -v
v10.15.2
$ yarn -v
1.13.0
$ npm -v
6.4.1
```

## Ruby

``` text
$ ruby -v
ruby 2.6.1p33 (2019-01-30 revision 66950) [x86_64-linux]
$ bundle -v
Bundler version 1.17.2
```

## Android

``` text
$ java -version
openjdk version "1.8.0_181"
OpenJDK Runtime Environment (build 1.8.0_181-8u181-b13-2~deb9u1-b13)
OpenJDK 64-Bit Server VM (build 25.181-b13, mixed mode)

$ sdkmanager --version
26.1.1

$ sdkmanager --list
Installed packages:=====================] 100% Computing updates...
  Path                        | Version | Description                    | Location
  -------                     | ------- | -------                        | -------
  build-tools;28.0.3          | 28.0.3  | Android SDK Build-Tools 28.0.3 | build-tools/28.0.3/
  emulator                    | 28.0.23 | Android Emulator               | emulator/
  extras;android;m2repository | 47.0.0  | Android Support Repository     | extras/android/m2repository/
  extras;google;m2repository  | 58      | Google Repository              | extras/google/m2repository/
  patcher;v4                  | 1       | SDK Patch Applier v4           | patcher/v4/
  platform-tools              | 28.0.1  | Android SDK Platform-Tools     | platform-tools/
  platforms;android-28        | 6       | Android SDK Platform 28        | platforms/android-28/
  tools                       | 26.1.1  | Android SDK Tools 26.1.1       | tools/
```
