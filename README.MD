# 简介
iOS简单小demo

# 打包命令

cd /Users/xinxi/Documents/iOSProject/iOSDemo(项目目录下)<br>

xcodebuild  \
  -project ./iOSDemo.xcodeproj \
  -scheme iOSDemo \
  -configuration Release \
  -derivedDataPath ./


# app转ipa

xcrun -sdk iphoneos  PackageApplication -v /Users/xinxi/Documents/iOSProject/iOSDemo/Build/Products/Release-iphoneos/iOSDemo.app -o /Users/xinxi/Documents/iOSProject/iOSDemo/Build/Products/Release-iphoneos/iOSDemo.ipa

# 真机安装ipa

ideviceinstaller -u 99c957a715e8393e69ebad666aa6d8af3dfac823 -i /Users/xinxi/Documents/iOSProject/iOSDemo/Build/Products/Release-iphoneos/iOSDemo.ipa