*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.calculator.net/
${BROWSER}     chrome

*** Test Cases ***
Open Android Clock App
    [Documentation]    Test to launch Android Clock App and validate the digital clock element.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element    //*[@onclick="r(8)"]
    Click Element    //*[@onclick="r('+')"]
    Click Element    //*[@onclick="r(8)"]
    Click Element    //*[@onclick="r('=')"]
    ${actualResult}    Get Text    id=sciOutPut
    Log    ${actualResult}
    Should Contain    ${actualResult}    16
    Close Browser
