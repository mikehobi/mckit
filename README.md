# Instrument iOS Bootstrap

A bootstrap designed for programatic iOS apps. Storyboards and Xibs optional.

## Included Frameworks

- [Snapkit](http://snapkit.io/docs/)

## Requires

> ⚠️ NOTE: Instrument uses Fastlane Match to manage provisioning versus direct Apple Developer accounts. This affects how all iOS apps can be developed using Instrument sigining certificates. See the Instrument Developer Wiki on [Native Dev](https://github.com/Instrument/developers/wiki/Native-Dev-Home) for baseline info

- Carthage - See [Carthage GitHub](https://github.com/Carthage/Carthage) to get familiar with Carthage
  - You can install Carthage with Brew the easiest `brew install Carthage`
- XCode 10+ with XCode dev tools installed in the command line (iOS 12 features)
- [Fastlane](https://fastlane.tools/) - ([Installation Guide](https://github.com/Instrument/fastlane/blob/master/Install-Fastlane.md))
- Developer on the [HockeyApp Nike (Demo)](https://rink.hockeyapp.net/manage/apps/699961)

## Quickstart

1. Install Carthage if you haven't already
2. Clone this repo
3. Download and build the Carthage dependencies from the `ios` folder via Terminal: `carthage bootstrap --platform iOS` will build the dependencies _exactly_ as defined in Cartfile.resolved
4. Follow the instructions [here](https://github.com/Instrument/fastlane/blob/master/Join-a-Project.md) for using fastlane to provision
5. Open the project file in the `ios` directory

## Adding or updating Carthage dependencies

1. Edit the Cartfile with your changes (if needed)
2. From the `ios` folder via Terminal: `carthage update --platform iOS`
   > This will download and build the dependencies including any relevant updates as defined in your Cartfile

### If you've added or removed new frameworks

1. Either remove the library link or add it under the app target's General tab in the Linked Frameworks and Libraries section. For adding you can drag and drop from the `ios/Carthage/Builds/iOS/` folder.
2. Update the Build Phases: Run Script section by removing unused libraries or adding an entry for the newly adeded ones.

## Distribution

> Distribution is done through fastlane using `fastlane build`. It is possible to do a manual archive and export in XCode but make sure you increment the build and know what you are doing. 😉

[Distribution Guide](https://github.com/Instrument/NikeOmegaSwift/wiki/Distribution)
