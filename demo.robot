# This sample code uses the Appium robot client
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with robot
#
#  more keywords on: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html
#
# if your tests fails saying 'did not match any elements' consider use 'wait activity' or 
# 'wait until page contains element' before a click command 

*** Settings ***
Library           AppiumLibrary


*** Variables ***
${REMOTE_URL}   http://127.0.0.1:4723
${appium:automationName}    uiautomator2
${platformName}    android
${appium:platformVersion}    14
${appium:deviceName}    emulator-5554
${appium:appPackage}    com.wdiodemoapp
${appium:appActivity}    .MainActivity
${appium:app}    /Users/7n100341/Downloads/TrainingAutomate/day1.apk
${appium:ensureWebviewsHavePages}    true
${appium:nativeWebScreenshot}    true
${appium:newCommandTimeout}    3600
${appium:connectHardwareKeyboard}    true

*** Test Cases ***
Test case name
        Open Application    ${REMOTE_URL}   
        ...    appium:automationName=${appium:automationName}  
        ...    platformName=${platformName}  
        ...    appium:platformVersion=${appium:platformVersion}  
        ...    appium:deviceName=${appium:deviceName}  
        ...    appium:appPackage=${appium:appPackage}  
        ...    appium:appActivity=${appium:appActivity}  
        ...    appium:app=${appium:app}  
        ...    appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}  
        ...    appium:nativeWebScreenshot=${appium:nativeWebScreenshot}  
        ...    appium:newCommandTimeout=${appium:newCommandTimeout}  
        ...    appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}
        AppiumLibrary.Wait Until Element Is Visible    android=UiSelector().textContains("apple")
        #UI Selector --> Framework to work with android device
        AppiumLibrary.Capture Page Screenshot
        AppiumLibrary.Close Application