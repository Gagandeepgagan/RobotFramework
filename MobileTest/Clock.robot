*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://localhost:4723/wd/hub
${PLATFORM}      Android
${DEVICE_NAME}   emulator-5554
${APP_PACKAGE}   com.google.android.deskclock
${APP_ACTIVITY}  com.android.deskclock.DeskClock

*** Test Cases ***
Open Android Clock App
    [Documentation]    Test to launch Android Clock App and validate the digital clock element.
    Open Application   ${REMOTE_URL}   platformName=${PLATFORM}   deviceName=${DEVICE_NAME}   appPackage=${APP_PACKAGE}   appActivity=${APP_ACTIVITY}
    Wait Until Page Contains Element   id=com.google.android.deskclock:id/digital_clock
    ${time}=    Get Text    id=com.google.android.deskclock:id/digital_clock
    Log    ${time}
    Capture Page Screenshot
    Close Application
