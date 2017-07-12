export PATH=$PATH:/Users/administrator/gradle-2.11/bin
echo 'Gradle Path set..!'
echo 3NCQCqv4 | sudo -S chmod -R 777 ~/Desktop/IOSANgu4_10008/
cd ~/Desktop/IOSANgu4_10008/projects/mobile/ios
pwd
echo 'Started to excute gradle script'
gradle -q deployIPA > gradlelog.txt 2>&1