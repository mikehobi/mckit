# Instrument iOS Bootstrap

A bootstrap designed for programatic iOS apps. Storyboards and Xibs optional.

## Included Frameworks

We use [Carthage](https://github.com/Carthage/Carthage) for managing our dependencies. If a framework is not available through Carthage, the binaries can be added to the `./vendor` folder, don't forget to commit these!

- [Snapkit](http://snapkit.io/docs/) (Carthage)
- [Hero](https://github.com/HeroTransitions/Hero) (Carthage)
- [AppCenter](https://github.com/Microsoft/AppCenter-SDK-Apple) (Binaries included in `./vendors`)

## Requires

> ⚠️ NOTE: Instrument uses Fastlane Match to manage provisioning versus direct Apple Developer accounts. This affects how all iOS apps can be developed using Instrument sigining certificates. See the Instrument Developer Wiki on [Native Dev](https://github.com/Instrument/developers/wiki/Native-Dev-Home) for baseline info

- Carthage - See [Carthage GitHub](https://github.com/Carthage/Carthage) to get familiar with Carthage
  - You can install Carthage with Brew the easiest `brew install Carthage`
- XCode 10+ with XCode dev tools installed in the command line (iOS 12 features)
- [Fastlane](https://fastlane.tools/) - ([Installation Guide](https://github.com/Instrument/fastlane/blob/master/Install-Fastlane.md))
- Developer account on [AppCenter](https://appcenter.ms/)

## Quickstart

1. Install Carthage if you haven't already
2. Clone this repo
3. Download and build the Carthage dependencies from the `ios` folder via Terminal: `carthage bootstrap --platform iOS` will build the dependencies _exactly_ as defined in Cartfile.resolved
4. [Rename the project](renaming-project.md)
5. Follow the instructions [here](https://github.com/Instrument/fastlane/blob/master/Join-a-Project.md) for using fastlane to provision. Most of the fastlane files are already included.

Or use this handy script to clone, clean up, carthage install, and rename:
https://gist.github.com/matthewward/81b5237f7833d57e3b6e512a9115d90e

## AppCenter

- Reference the [Instrument/fastlane](https://github.com/Instrument/fastlane) docs for provisioning the project.
- After setting up the `InstrumentConfig.rb` file, note that there are a few AppCenter specific values that are needed: `$APPCENTER_OWNER`, `$APPCENTER_APP_NAME` and `$APPCENTER_TOKEN`
- You can create the AppCenter project directly through the [AppCenter website](http://appcenter.ms) or you can let AppCenter create the project when you do your first build through fastlane.
- You can also manually build your IPA file from Xcode and drag it in directly to your AppCenter project.
- AppCenter also provides simple ways to track events, bugs and crashes.

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
