*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.google.com
${URL2}    http://www.yahoo.com
${BROWSER}     chrome

*** Test Cases ***
FIrst test
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Open Browser    ${URL2}    ${BROWSER}
    Maximize Browser Window

    # Close Browser
    Close All Browsers

HandleTabbedWindows
    Open Browser    https://demo.automationtesting.in/Windows.html    chrome
    Click Element    xpath://*[@id="Tabbed"]/a/button
    Switch Window    title=Selenium
    Click Element    xpath://*[@id="main_navbar"]/ul/li[4]/a/span
    Sleep    3
    Close All Browsers

SwitchMultipleBrowsers
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Open Browser    ${URL2}    ${BROWSER}
    Maximize Browser Window

    Switch Browser    1    #index=1
    ${title}=    Get Title
    Log To Console    ${title}

    Switch Browser    2    #index=2
    ${title2}=    Get Title
    Log To Console    ${title2}

    Close All Browsers

NavigationalKeywords
    Open Browser    ${URL}    ${BROWSER}
    ${location}=    Get Location
    Log To Console    ${location}

    Go To    ${URL2}
    ${location}=    Get Location
    Log To Console    ${location}

    Go Back
    ${location}=    Get Location
    Log To Console    ${location}
