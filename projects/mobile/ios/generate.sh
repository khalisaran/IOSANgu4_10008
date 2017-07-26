#Generating IPA
executeXcodeIpaBuild(){

cd  IOSANgu4_10008

/bin/sh -c "sleep 10 ; echo IOS_Platform_Removed"

ionic state reset

/bin/sh -c "sleep 10 ; echo installing NPM "

npm install

/bin/sh -c "sleep 10 ; echo Building Ionic"

ionic build

/bin/sh -c "sleep 10 ; echo Permission_to_be_Changed"

cd platforms

chmod -R 777 ios

/bin/sh -c "sleep 10 ; echo Permission_changed"

pwd

cp -R /Users/administrator/ionic_ios_blank_project/platforms/ios/config  ios/

pwd

/bin/sh -c "sleep 10 ; echo Config_folder_copy"

cd  ios

/bin/sh -c "sleep 10 ; echo open_Xcode"

open  IOSANgu4_10008.xcodeproj

/bin/sh -c "sleep 10 ; echo Xcode_is_ready"

pwd

chmod -R 777 ~/Desktop/IOSANgu4_10008/IOSANgu4_10008/projects/mobile/ios/IOSANgu4_10008

/bin/sh -c "sleep 10 ; echo IOSANgu4_10008_Access_Granted"

security -v unlock-keychain -p "$1" "login.keychain"

xcodebuild clean -project IOSANgu4_10008.xcodeproj -configuration Release -alltargets

#xcodebuild archive -project IOSANgu4_10008.xcodeproj -scheme IOSANgu4_10008 -destination generic/platform=iOS  -archivePath "build/"IOSANgu4_10008.xcarchive

#xcodebuild -exportArchive -archivePath "build/"IOSANgu4_10008.xcarchive -exportPath "build/"IOSANgu4_10008 -exportFormat ipa -exportProvisioningProfile "XC Ad Hoc: *"

xcodebuild archive -project IOSANgu4_10008.xcodeproj -scheme IOSANgu4_10008  -configuration Release DEVELOPMENT_TEAM="4SGB5GTW2X"  -destination generic/platform=iOS  -archivePath "build/"IOSANgu4_10008.xcarchive

xcodebuild -exportArchive -archivePath "build/"IOSANgu4_10008.xcarchive -exportPath "build/"IOSANgu4_10008  CODE_SIGN_IDENTITY="iphone Distribution: PricewaterhouseCoopers LLP"  -exportProvisioningProfile "PwC_Internal_Apps_Distribution_Profile_2017"

exit 0
}

executeXcodeIpaBuildTablet(){

#this cd refer inside the project dir in mac mini desktop

cd  IOSANgu4_10008

/bin/sh -c "sleep 10 ; echo IOS_Platform_Removed"

ionic state reset

/bin/sh -c "sleep 10 ; echo installing NPM "

npm install

/bin/sh -c "sleep 10 ; echo Building Ionic"

ionic build

/bin/sh -c "sleep 10 ; echo Permission_to_be_Changed"

cd platforms

chmod -R 777 ios

/bin/sh -c "sleep 10 ; echo Permission_changed"

pwd

cp -R /Users/administrator/ionic_ios_blank_project/platforms/ios/config  ios/

pwd

/bin/sh -c "sleep 10 ; echo Config_folder_copy"

cd  ios

/bin/sh -c "sleep 10 ; echo open_Xcode"

open  IOSANgu4_10008.xcodeproj

/bin/sh -c "sleep 10 ; echo Xcode_is_ready"

pwd

chmod -R 777 ~/Desktop/IOSANgu4_10008/projects/Tablet/ios/IOSANgu4_10008

/bin/sh -c "sleep 10 ; echo IOSANgu4_10008_Access_Granted"

security -v unlock-keychain -p "$1" "login.keychain"

xcodebuild clean -project IOSANgu4_10008.xcodeproj -configuration Release -alltargets

xcodebuild archive -project IOSANgu4_10008.xcodeproj -scheme IOSANgu4_10008 -destination generic/platform=iOS  -archivePath "build/"IOSANgu4_10008.xcarchive

xcodebuild -exportArchive -archivePath "build/"IOSANgu4_10008.xcarchive -exportPath "build/"IOSANgu4_10008 -exportFormat ipa -exportProvisioningProfile "XC Ad Hoc: *"



exit 0
}
# call arguments verbatim:
$@
