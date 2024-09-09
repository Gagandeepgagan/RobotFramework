*** Settings ***
Library    SeleniumLibrary
Variables    ../POM/Locators.py

*** Variables ***
${url}    https://demo.guru99.com/test/newtours/register.php
${browser}    chrome

*** Keywords ***
Open my chrome browser
    SeleniumLibrary.Open Browser    ${url}    ${browser}
    Sleep    2
    Maximize Browser Window
    Delete All Cookies
    Reload Page
    

Enter FirstName
    [Arguments]    ${firstname}
    Input Text    ${txt_regFirstName}    ${firstname}

Enter Lastname
    [Arguments]    ${lastname}
    Input Text    ${txt_regLastName}    ${lastname}

Click on submit button
    Click Button    ${btn_submit}
    Sleep    5


Verify successful Registeration
    Page Should Contain    Thank you for registering.