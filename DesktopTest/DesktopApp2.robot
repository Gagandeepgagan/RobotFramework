*** Settings ***
Library    FlaUILibrary
Library    Process

Test Setup    BeforeTest
Test Teardown    AfterTest

*** Keywords ***
BeforeTest
    Launch Application    notepad.exe
    Sleep    5

AfterTest
    Close Application By Name    Notepad


*** Test Cases ***
Demo
    Log    gagan
