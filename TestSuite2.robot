*** Settings ***
Library   SeleniumLibrary

Suite Setup    Log    this is my suite setup.
Suite Teardown    Log    this is my suite teardown.
Test Setup    Log    hi, Test.
Test Teardown    Log    bye, Test.

Default Tags    Functional

*** Variables ***
${LOGIN URL}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}        Chrome
${URL}    http://www.google.com
${BROWSER2}        Edge

*** Keywords ***
Open The Browser
    Open Browser    ${URL}    ${BROWSER2}

Search Topic
    [Arguments]    ${topic}
    Input Text    name:q    ${topic}
    Press Keys    name:q    \\13

*** Test Cases ***
First Test Case
    Open Browser    ${URL}    ${BROWSER}
    Set Browser Implicit Wait    1
  Search Topic    pcloudy 
    [Teardown]    Close Browser

Second Test case
    Open Browser
        Open The Browser
    Search Topic    BrowserStack
    [Teardown]    Close Browser
