*** Settings ***
Library    SeleniumLibrary
Resource    LoginResources.robot
Suite Setup    Open Browser To Login Page
Suite Teardown    Close Browser
Library    DataDriver    LoginData.xlsx    sheet_name=Sheet1
Test Template    InvalidLogin

*** Test Cases ***
Login with user ${username} and password ${password}    Default    UserData

*** Keywords ***
InvalidLogin
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    LoginResources.Input Password    ${password}
    Submit Credentials
    Sleep    10
    isError displayed

