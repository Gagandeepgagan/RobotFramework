*** Settings ***
Library    Browser

*** Test Cases ***
TestCase1
    [Documentation]    Open Google and search for robotframework
    New Browser    chromium    headless=No
    New Page    http://www.google.com
    Type Text    [name="q"]    robotframework
    Press Keys    [name="q"]    Enter
    Sleep    1
    Close Browser

