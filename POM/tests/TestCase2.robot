*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/RegisterPage.robot

Suite Setup    Open my chrome browser
Suite Teardown    SeleniumLibrary.Close Browser


*** Variables ***
${name1}    Gagan
${name2}    Bains

*** Test Cases ***
Registeration Test
    Set Selenium Implicit Wait    10
    Enter FirstName    ${name1}
    Enter Lastname    ${name2}
    Click on submit button
    Verify successful Registeration