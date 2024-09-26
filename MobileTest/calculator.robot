*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://localhost:4723/wd/hub
${PLATFORM}      Android
${DEVICE_NAME}   emulator-5554
${APP_PACKAGE}   com.google.android.calculator
${APP_ACTIVITY}  com.android.calculator2.Calculator

*** Test Cases ***
Open Android Clock App
    [Documentation]    Test to launch Android Clock App and validate the digital clock element.
    Open Application   ${REMOTE_URL}   platformName=${PLATFORM}   deviceName=${DEVICE_NAME}   appPackage=${APP_PACKAGE}   appActivity=${APP_ACTIVITY}
    Click Element    id=com.google.android.calculator:id/digit_8
    Click Element    id=com.google.android.calculator:id/op_add
    Click Element    id=com.google.android.calculator:id/digit_4
    Click Element    id=com.google.android.calculator:id/eq
    ${actualResult}    Get Text    id=com.google.android.calculator:id/result_final
    Log    ${actualResult}
    Should Contain    ${actualResult}    12
    
    Capture Page Screenshot
    Close Application
