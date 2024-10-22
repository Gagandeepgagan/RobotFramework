*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/LoginPage.robot

Suite Setup    Open my chrome browser
Suite Teardown    SeleniumLibrary.Close Browser


*** Variables ***
${user}    tourist
${pass}    tourist

*** Test Cases ***
Login Test
    Set Selenium Implicit Wait    10
    Enter username    ${user}
    Enter Password    ${pass}
    Click on submit button
    Verify successful login


