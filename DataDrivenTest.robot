*** Settings ***
Library    SeleniumLibrary
Resource    LoginResources.robot
Suite Setup    Open Browser To Login Page
Suite Teardown    Close Browser
Test Template    InvalidLogin

*** Test Cases ***
Valid user empty pass    Admin    ${EMPTY}
Valid user invalid pass    admin@yourstore.com    admin123
inValid user valid pass    Admin    admin


*** Keywords ***
InvalidLogin
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Input Username    ${USERNAME}
    LoginResources.Input Password    ${PASSWORD}
    Submit Credentials
    isError displayed

