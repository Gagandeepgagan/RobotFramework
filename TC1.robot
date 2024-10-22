*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.google.com
${BROWSER}     headlesschrome

*** Keywords ***
Open The Browser
    # Open Browser    ${URL}    ${BROWSER}
    # Create Chrome options
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # Add the necessary arguments
    Call Method    ${chrome options}    add_argument    --headless=old
    Call Method    ${chrome options}    add_argument    --window-size=1920,1080
    Call Method    ${chrome options}    add_argument    --disable-gpu
    Call Method    ${chrome options}    add_argument    --no-sandbox
    Call Method    ${chrome options}    add_argument    --window-position=-2400,-2400
    # Use the options to open Chrome browser
    Create Webdriver    Chrome    options=${chrome options}
    Open Browser    ${URL}    ${BROWSER}
    Go To    ${URL}

Search Topic
    [Arguments]    ${topic}
    Input Text    name:q    ${topic}
    Press Keys    name:q    \\13

*** Test Cases ***
Open Browser
    Open The Browser

Search On Google
    Search Topic    BrowserStack
