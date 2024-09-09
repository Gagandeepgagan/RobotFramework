*** Settings ***
Library    Browser

*** Test Cases ***
TestCase1
    New Browser    chromium    headless=No
    New Page    http://www.google.com
    Type Text    [name="q"]    robotframework
    Sleep    1
    

