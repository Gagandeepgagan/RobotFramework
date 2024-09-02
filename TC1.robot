*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.google.com
${BROWSER}     chrome

*** Keywords ***
Open The Browser
    Open Browser    ${URL}    ${BROWSER}

Search Topic
    [Arguments]    ${topic}
    Input Text    name:q    ${topic}
    Press Keys    name:q    \\13

*** Test Cases ***
Open Browser
    Open The Browser

Search On Google
    Search Topic    BrowserStack
