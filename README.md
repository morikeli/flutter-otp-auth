# OTP authentication

## Screenshots


| Onboarding screen | Mobile number input screen |
| ----------------- | -------------------- |
| ![onboarding-screen](https://github.com/user-attachments/assets/427b4451-e3e1-4a48-a2e7-a5c62cd2defc) | ![mobile-screen](https://github.com/user-attachments/assets/8265b3df-c36f-4e96-a796-a839188cb5a4) |
|  |  |
| Bottom modal sheet (mobile no. input screen) | Selected country (mobile no. input screen) |
| ![mobile-screen-modal-sheet](https://github.com/user-attachments/assets/b014f4e8-5b9d-4ce5-aa39-5d74f53c3050) | ![select-country](https://github.com/user-attachments/assets/f74509d2-3db5-485d-961e-a9ba161e993d) |
|  |  |
| OTP screen | OTP screen with otp code |
| ![otp-screen](https://github.com/user-attachments/assets/b53d0795-5ff7-43f0-add5-cf8e640532d5) | ![otp-screen-with-otp](https://github.com/user-attachments/assets/e9e85ed0-153a-41ad-bcec-0d9839fd65e3) |

## Overview
This app uses Firebase to handle mobile authentication. The app runs on Android and iOS.


## Developer instructions
---
**NOTE**: 
* To run this project, you **MUST** install Flutter SDK on your machine. Refer to [Flutter's documentation](https://docs.flutter.dev/get-started/install) and follow a step-by-step guide on how you can install Flutter SDK on your OS.

* Make sure you have installed Android Studio or a text editor of your choice - VS Code or XCode.

* Make sure your machine supports virtualization - required to run an emulator. If it doesn't, don't worry, you can install `scrcpy` on your machine or use Android Studio's `mirror device` feature.

**Scrcpy Installation guide** 
* [Install scrcpy on Windows](https://github.com/Genymobile/scrcpy/blob/master/doc/windows.md)
* [Install scrcpy on Linux](https://github.com/Genymobile/scrcpy/blob/master/doc/linux.md)
* [Install scrcpy on MacOS](https://github.com/Genymobile/scrcpy/blob/master/doc/macos.md)

---


#### Installation guide for developers

1. Git clone
Clone this repository by opening your terminal/CMD and change the current working directory to Desktop - use `cd Desktop` command.
```bash
    $ cd Desktop
    $ git clone https://github.com/morikeli/flutter-otp-auth.git
```

2. Open the cloned repository on your text editor and run this command:
```bash
    $ flutter run
```
3. Make sure you have a very strong internet connection so that the necessary gradle files can be downloaded. These files are necessary to build the project `apk` file.

---
**Keep in mind**:
* When building the application for the first time, it may take 10 - 15 minutes to finish the installation and build process.
* When running the application using the `flutter run` command, it may take atleast a minute to install the build files on a physical device.
---


## Contributor expectations
Incase of a bug or you wish to make a contribution, create a new branch using the git command `git checkout -b <name of your branch>` and create a pull request. Wait for review.

You can also open an issue using the `Issues` tab. The reported issue will be reviewed and a solution may be provided.


## Request
Don't forget to star the repo 🌟😉
