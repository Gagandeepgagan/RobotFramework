*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource    Resources.robot



*** Test Cases ***
Valid Login
    Open Browser To Login Page
    ${pagetitle}=    Resources.GetTitle
    Log    ${pagetitle}
    Input Username    Admin
    Resources.Input Password    admin123
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

