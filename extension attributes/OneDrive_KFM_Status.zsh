#!/bin/zsh

### Version Beta 0.2
### Created by Colorenz
### Extenstion Attribute to check if KFM Status
### KFM Values
### 0 = Off
### 512 = Desktop Backed Up
### 1024 = Documents Backed Up
### 1536 = Desktop and Documents Backed Up.


#Get Current logined User
CurrentUser=$(scutil <<<"show State:/Users/ConsoleUser" | awk '/Name :/ { print $3 }')
#Get Current User Home
KFMFolderStatus=$(/usr/libexec/PlistBuddy -c "print :AccountInfo_Business1:KfmFoldersProtectedNow"  /Users/${CurrentUser}/Library/Group\ Containers/UBF8T346G9.OneDriveStandaloneSuite/Library/Preferences/UBF8T346G9.OneDriveStandaloneSuite.plist)

#Check KFM Status

case "$KFMFolderStatus" in
   "0") /bin/echo "<result>KFM not activated</result>"
   ;;
   "512") /bin/echo "<result>Desktop is activated</result>"
   ;;
   "1024") /bin/echo "<result>Documents is activated</result>"
   ;;
   "1536") /bin/echo "<result>Desktop and Documents is activated</result>"
   ;;
esac
