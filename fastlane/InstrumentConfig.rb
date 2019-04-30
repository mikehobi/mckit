#####################################################################################
# PROJECT SETUP VARIABLES
#####################################################################################

# The bundle identifier set in Xcode app target general settings
$BUNDLE_ID="com.instrumentInHouse.mckit"

# The Xcode app target name
$APP_NAME="mckit"

# XCode scheme name - usually same as app name
$SCHEME_NAME="mckit"

# xcworkspace file path from root - leave blank unless using an Xcode workspace
$WORKSPACE_PATH=""

# xcodeproj file path from root - set this even when using a workspace
$PROJECT_PATH = "mckit.xcodeproj"

# relative path from inside the fastlane directory, leave blank if none
$PACKAGE_JSON_PATH=""

# if you've set up CI to build from a specific branch - used by `push_build_branch` lane
$IOS_CI_BRANCH=""

# Navigate to https://appcenter.ms.
# Navigate to your app.
# When you look at your app's URL, it is in the format https://appcenter.ms/users/{owner-name}/apps/{app-name}

# Required - This is different from $APP_NAME. Follow steps above to get correct app name.
$APPCENTER_APP_NAME="iOS-Bootstrap"

# Required - Most likely "apple-pro1". Follow steps above to get correct owner name.
$APPCENTER_OWNER="apple-pro1"

# Optional if token is passed manually or through CI
$APPCENTER_TOKEN="56642b1c306bb327ed188ff84ef091adf1fc8dff"

# Optional
$APPCENTER_GROUPS="Instrument-Test"

$RELEASE_NOTES_PATH="release_notes.md"

$BASE_BRANCH="master"
