*** Settings ***
Library   Browser

Suite Setup    Log    this is my suite setup.
Suite Teardown    Log    this is my suite teardown.
Test Setup    Log    hi, Test.
Test Teardown    Log    bye, Test.

Default Tags    Functional

*** Variables ***
${LOGIN URL}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}        chromium
${URL}    http://www.google.com
${BROWSER2}        webkit

*** Keywords ***
Open The Browser
    New Browser    ${BROWSER2}    headless=No
    New Context
    New Page    ${URL}
    Set Browser Timeout    10000

Search Topic
    [Arguments]    ${topic}
    Fill Text    [name="q"]    ${topic}
    Press Keys    [name="q"]    Enter
    Set Browser Timeout    2000

*** Test Cases ***
First Test Case
    New Browser    ${BROWSER}    headless=No
    New Context
    New Page    ${URL}
    Set Browser Timeout    10000
    Search Topic    pcloudy

Second Test case
    Open The Browser
    Search Topic    BrowserStack