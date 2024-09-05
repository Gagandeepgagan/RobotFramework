*** Settings ***
Library    SeleniumLibrary

Suite Setup    Open Browser    https://www.browserstack.com/automate chrome
Suite Teardown    Close Browser

*** Test Cases ***
Positive Login Test
    [Documentation]    Test the positive login functionality
    [Tags]    login
    Maximize Browser Window
    click link    xpath=//nav/ul/li[5]/a[@title = 'Sign In']
    Input Text    id=user_email_login    ****@gmail.com
    Input Password    id=user_password    ********
    click element    id=user_submit
    Wait Until Page Contains    class=text-uppercase

Negative Login Test - Incorrect Password
    [Documentation]    Test the negative login functionality with incorrect password
    [Tags]    login
    Maximize Browser Window
    click link    xpath=//nav/ul/li[5]/a[@title = 'Sign In']
    Input Text    id=user_email_login    *****@gmail.com
    Input Password    id=user_password    ****
    click element    id=user_submit
    Wait Until Page Contains    Invalid password

Negative Login Test - Incorrect Email
    [Documentation]    Test the negative login functionality with incorrect email
    [Tags]    login
    Maximize Browser Window
    click link    xpath=//nav/ul/li[5]/a[@title = 'Sign In']
    Input Text    id=user_email_login    *******.com
    Input Password    id=user_password    *******
    click element    id=user_submit
    Wait Until Page Contains    Invalide email format.