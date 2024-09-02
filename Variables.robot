*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}     chrome
@{CREDS}    Admin admin123
&{LOGINDATA}    username=Admin    pass=admin123


*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    Admin
    Input Password    admin123
    Submit Credentials
    Welcome Page Should Be Open
    Log    %{username} on %{os}
    [Teardown]    Close Browser

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Set Browser Implicit Wait    10
    Title Should Be    OrangeHRM

Input Username
    [Arguments]    ${username}
    Clear Element Text    name:username 
    Input Text    name:username    ${CREDS}[0]

Input Password
    [Arguments]    ${password}
    Input Text    name:password    ${LOGINDATA}[pass]

Submit Credentials
    Click Button    xpath=//button[text()=' Login ']

Welcome Page Should Be Open
    Title Should Be    Welcome Page