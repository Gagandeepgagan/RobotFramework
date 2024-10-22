*** Settings ***
Library    Browser
Library    SeleniumLibrary



*** Test Cases ***
TestCase1-playwright
    New Browser    browser=chromium    headless=No
    New Page    http://www.google.com
    Set Viewport Size    1920    1080
    Type Text    [name="q"]    robotframework with playwright
    Sleep    1
    Browser.Close Browser



TestCase2-selenium
    SeleniumLibrary.Open Browser    http://www.google.com    chrome
    Maximize Browser Window
    Input Text    name:q    robotframework with selenium
    Sleep    1
    SeleniumLibrary.Close Browser


TestCase3
    SeleniumLibrary.Open Browser    http://www.google.com    chrome
    Set Viewport Size    1920    1080
    Type Text    [name="q"]    robotframework with playwright
    Browser.Close Browser




















TestCase3-selenium&playwright
    SeleniumLibrary.Open Browser    http://www.google.com    chrome
    Type Text    [name="q"]    playwright
    Input Text    name:q    selenium
    Sleep    2
    SeleniumLibrary.Close Browser

