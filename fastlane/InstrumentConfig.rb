#####################################################################################
# PROJECT SETUP VARIABLES
#####################################################################################

# The bundle identifier set in Xcode app target general settings
$BUNDLE_ID="com.instrumentInHouse.ios-bootstrap"

# The Xcode app target name
$APP_NAME="ios-bootstrap"

# XCode scheme name - usually same as app name
$SCHEME_NAME="ios-bootstrap"

# xcworkspace file path from root - leave blank unless using an Xcode workspace
$WORKSPACE_PATH=""

# xcodeproj file path from root - set this even when using a workspace
$PROJECT_PATH = "ios-bootstrap.xcodeproj"

# relative path from inside the fastlane directory, leave blank if none
$PACKAGE_JSON_PATH=""

# if you've set up CI to build from a specific branch - used by `push_build_branch` lane
$IOS_CI_BRANCH=""

# Navigate to https://appcenter.ms.
# Navigate to your app.
# When you look at your app's URL, it is in the format https://appcenter.ms/users/{owner-name}/apps/{app-name}
$APP_OWNER="apple-pro1" # Most likely "apple-pro1"
$APPCENTER_APP_NAME="iOS-Bootstrap" # IMPORTANT! Follow steps above to ensure correct app-name. This could differ from $APP_NAME.
$APPCENTER_GROUPS="Instrument-Test"
$APPCENTER_TOKEN="da67bfda-006c-4fd4-b8f8-36b41237ca94" # App Center Token

$RELEASE_NOTES_PATH="release_notes.md"

$BASE_BRANCH="master"