#Generating IPA
executeXcodeIpaBuild(){

cd  IOSANgu4_10008

/bin/sh -c "sleep 10 ; echo IOS_Platform_Removed"

echo $1 | sudo -S ionic state reset

/bin/sh -c "sleep 10 ; echo installing NPM "

echo $1 | sudo  npm install

/bin/sh -c "sleep 10 ; echo Building Ionic"

echo $1 | sudo ionic build

/bin/sh -c "sleep 10 ; echo Permission_to_be_Changed"

cd platforms

echo $1 | sudo -S chmod -R 777 ios

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

echo $1 | sudo -S chmod -R 777 ~/Desktop/IOSANgu4_10008/IOSANgu4_10008/projects/mobile/ios/IOSANgu4_10008

/bin/sh -c "sleep 10 ; echo IOSANgu4_10008_Access_Granted"

security -v unlock-keychain -p "$1" "login.keychain"

xcodebuild clean -project IOSANgu4_10008.xcodeproj -configuration Release -alltargets

xcodebuild archive -project IOSANgu4_10008.xcodeproj -scheme IOSANgu4_10008 -destination generic/platform=iOS  -archivePath "build/"IOSANgu4_10008.xcarchive

xcodebuild -exportArchive -archivePath "build/"IOSANgu4_10008.xcarchive -exportPath "build/"IOSANgu4_10008 -exportFormat ipa -exportProvisioningProfile "XC Ad Hoc: *"

# pwd

# /bin/sh -c "sleep 10 ; echo IPA_Generated_Using_Xcode"

# cd ~/Desktop/IOSANgu4_10008/projects/mobile/ios/IOSANgu4_10008/platforms/ios/build

# curl -H "X-InstallrAppToken:ODVP3Rjlz3GQe33wMbPNWL1DAuFJ6pi4"  https://www.installrapp.com/apps.json -F qqfile=@IOSANgu4_10008.ipa --verbose >IpaUploadSucess.json

# cd ~/Desktop/IOSANgu4_10008/

#cp -R ~/AutoProvision.jar ~/Desktop/IOSANgu4_10008/

#java -jar AutoProvision.jar

exit 0
}

executeXcodeIpaBuildTablet(){

#this cd refer inside the project dir in mac mini desktop

cd  IOSANgu4_10008

/bin/sh -c "sleep 10 ; echo IOS_Platform_Removed"

echo $1 | sudo -S ionic state reset

/bin/sh -c "sleep 10 ; echo installing NPM "

echo $1 | sudo  npm install

/bin/sh -c "sleep 10 ; echo Building Ionic"

echo $1 | sudo ionic build

/bin/sh -c "sleep 10 ; echo Permission_to_be_Changed"

cd platforms

echo $1 | sudo -S chmod -R 777 ios

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

echo $1 | sudo -S chmod -R 777 ~/Desktop/IOSANgu4_10008/projects/Tablet/ios/IOSANgu4_10008

/bin/sh -c "sleep 10 ; echo IOSANgu4_10008_Access_Granted"

security -v unlock-keychain -p "$1" "login.keychain"

xcodebuild clean -project IOSANgu4_10008.xcodeproj -configuration Release -alltargets

xcodebuild archive -project IOSANgu4_10008.xcodeproj -scheme IOSANgu4_10008 -destination generic/platform=iOS  -archivePath "build/"IOSANgu4_10008.xcarchive

xcodebuild -exportArchive -archivePath "build/"IOSANgu4_10008.xcarchive -exportPath "build/"IOSANgu4_10008 -exportFormat ipa -exportProvisioningProfile "XC Ad Hoc: *"

# pwd

# /bin/sh -c "sleep 10 ; echo IPA_Generated_Using_Xcode"

# cd ~/Desktop/IOSANgu4_10008/projects/Tablet/ios/IOSANgu4_10008/platforms/ios/build

# curl -H "X-InstallrAppToken:ODVP3Rjlz3GQe33wMbPNWL1DAuFJ6pi4"  https://www.installrapp.com/apps.json -F qqfile=@IOSANgu4_10008.ipa --verbose >IpaUploadSucess.json

# cd ~/Desktop/IOSANgu4_10008/

#cp -R ~/AutoProvision.jar ~/Desktop/IOSANgu4_10008/

#java -jar AutoProvision.jar

exit 0
}
# call arguments verbatim:
$@