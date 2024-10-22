*** Settings ***
Documentation    Importing the SeleniumLibrary to interact with web elements
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.google.com
${BROWSER}     edge

*** Keywords ***
Openning the chrome Browser
    [Documentation]    Open Google and set implicit wait.
    Open Browser    ${URL}     edge
    Set Browser Implicit Wait    5

*** Test Cases ***
Search in Google
    [Documentation]    Search for 'BrowserStack' on Google.
    Openning the chrome Browser
    Input Text    xpath://textarea[@name='q']    BrowserStack
    Press Keys    css:textarea[name='q']    ENTER
    Close Browser
