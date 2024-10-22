*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Search in Google
    [Documentation]    Open Google and search for BrowserStack
    Open Browser    http://www.google.com    headlesschrome
    Set Browser Implicit Wait    5
    Input Text    name:q    BrowserStack
    Press Keys    name:q    ENTER
    Close Browser
