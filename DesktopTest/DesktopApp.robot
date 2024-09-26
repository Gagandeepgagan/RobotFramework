*** Settings ***
Library    FlaUILibrary
Library    Process

Test Setup    BeforeTest
Test Teardown    AfterTest

*** Variables ***
${APP_NAME}    calc.exe
${pid}

*** Keywords ***
BeforeTest
    Launch Application    calc.exe
    Sleep    2

AfterTest
    Close Application By Name    CalculatorApp


*** Test Cases ***
Demo
    Click    //Button[@Name="Eight"]
    Click    //Button[@Name="Plus"]
    Click    //Button[@Name="Five"]
    Click    //Button[@Name="Equals"]
    ${actualResult}    Get Name From Element    //Text[@AutomationId="CalculatorResults"]
    Log    ${actualResult}
    Should Contain    ${actualResult}    13

