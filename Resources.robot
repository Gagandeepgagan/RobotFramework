*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}        Chrome

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Sleep    20
    Title Should Be    OrangeHRM

GetTitle    #keyword with return value
    ${title}=    Get Window Titles
    RETURN    ${title}
Input Username
    [Arguments]    ${username}
    Input Text    name:username    ${username}

Input Password    #keyword with Argument
    [Arguments]    ${password}
    Input Text    name:password    ${password}

Submit Credentials    #keyword without Argument
    Click Button    type:submit

Welcome Page Should Be Open
    Title Should Be    Welcome Page