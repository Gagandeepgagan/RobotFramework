*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open The Browser
    Open Browser    http://www.google.com    edge
    Set Browser Implicit Wait    5

*** Test Cases ***
Open Browser
    Open The Browser


Search On Google
    Input Text    name:q    BrowserStack
    Press Keys    name:q    ENTER

Close Browser
    Close Browser
