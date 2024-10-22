*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/Locators.py

*** Variables ***
${url}    https://demo.guru99.com/test/newtours/index.php
${browser}    edge

*** Keywords ***
Open my chrome browser
    SeleniumLibrary.Open Browser    ${url}    ${browser}
    Sleep    2
    Maximize Browser Window
    Delete All Cookies
    Reload Page
    

Enter username
    [Arguments]    ${username}
    Input Text    ${txt_loginUserNAme}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_loginUPAssword}    ${password}

Click on submit button
    Click Button    ${btn_signin}
    Sleep    1


Verify successful login
    Page Should Contain    Login Successfully