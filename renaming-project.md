## Renaming Project

https://stackoverflow.com/questions/33370175/how-do-i-completely-rename-an-xcode-project-i-e-inclusive-of-folders

### Step 1 - Rename the project

1. Open `ios-bootstrap.xcodeproj`
1. Click on the `ios-bootstrap` in the "Project navigator" on the left of the Xcode view.
1. On the right select the "File inspector" and under "Identity and Type" you should see "Name: ios-bootstrap", change it to the new name and press enter.
1. A dropdown menu will pop up, click "Rename".

### Step 2 - Rename the Scheme

1. In the top bar (near "Stop" button), there is a scheme for the `ios-bootstrap` product, click on it, then go to "Manage schemes"
2. Click on `ios-bootstrap` in the scheme, and it will become editable, change the name

### Step 3 - Rename the folder with your assets

1. Quit Xcode
2. In the correctly named master folder, there is a newly named `xcodeproj` file with another `ios-bootstrap` folder. Rename this to your new name
3. Reopen the project, you will see a warning: "The folder OLD does not exist" (or something similar), dismiss the warning
4. In the "Project navigator" on the left, click the top level `ios-bootstrap` folder name
5. In Utilities pane under "Identity and type" you will see the "Name" entry, change this from the OLD to the new name
6. Just below there is a "Location" entry. If does not display the correct folder, then select the newly renamed folder (usually automatic)

### Step 4 - Rename the Build plist data\*\*

1. Click on the project in the "Project navigator" on the left, in the main panel select "Build Settings"
2. Search for "plist" in this section
3. Under packaging, you will see `Info.plist`, and `Product bundle identifier`
4. Rename the top entry in `Info.plist`
5. Do the same for `Product Identifier`
