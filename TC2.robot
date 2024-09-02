*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}        Chrome

*** Test Cases ***
Valid Login
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    OrangeHRM
    Input Text    name:username    admin
    Input Text    name:password  admin123
    Click Button    type:submit
    Title Should Be    Welcome Page
    [Teardown]    Close Browser
