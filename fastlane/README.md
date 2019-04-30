fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew cask install fastlane`

# Available Actions
## iOS
### ios provision
```
fastlane ios provision
```
Join an existing project (passphrase required)
### ios bump_build
```
fastlane ios bump_build
```
Bump build number and make a commit
### ios bump_patch_version
```
fastlane ios bump_patch_version
```
Bump patch version & commit
### ios bump_minor_version
```
fastlane ios bump_minor_version
```
Bump minor version & commit
### ios bump_major_version
```
fastlane ios bump_major_version
```
Bump major version & commit
### ios push_build_branch
```
fastlane ios push_build_branch
```
Hard delete/push to CI branch
### ios build
```
fastlane ios build
```
Distribution build in fastlane/ipa
### ios bootstrap
```
fastlane ios bootstrap
```
Admin: Set up a new project
### ios add_device
```
fastlane ios add_device
```
Admin: Register new development device

----

## Android
### android build
```
fastlane android build
```
Distribution build in android/build

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
