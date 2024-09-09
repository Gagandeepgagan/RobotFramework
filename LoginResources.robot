*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}     https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${BROWSER}        Chrome

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Sleep    10
    Title Should Be    Your store. Login
    Maximize Browser Window

Input Username
    [Arguments]    ${username}
    Input Text    id:Email    ${username}

Input Password    #keyword with Argument
    [Arguments]    ${password}
    Input Text    id:Password    ${password}

Submit Credentials    #keyword without Argument
    Click Button    xpath://button[text()="Log in"]


isError displayed
    Page Should Contain    Welcome, please sign in!