*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}        Chrome

*** Test Cases ***
TestingInputBox
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    5
    Title Should Be    OrangeHRM
    ${email_txt}    Set Variable    name:username
    Element Should Be Visible    ${email_txt}
    Element Should Be Enabled    ${email_txt}
    Input Text    ${email_txt}    admin
    Sleep    2
    Clear Element Text    ${email_txt}
    ${pass_txt}    Set Variable    id:Password
    Close Browser
