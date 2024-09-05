*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://formy-project.herokuapp.com/
${BROWSER}        Chrome

*** Test Cases ***
TestingRadioBox
    Open Browser    ${LOGIN URL}    ${BROWSER}
    # Maximize Browser Window
    Sleep    2
    Title Should Be    Formy
    Click Link    xpath=//li/a[text()='Radio Button']
    Sleep    2
    Select Radio Button    exampleRadios    option2
    Sleep    5
    Close Browser

TestingCheckBox
    Open Browser    ${LOGIN URL}    ${BROWSER}
    # Maximize Browser Window
    Set Selenium Speed    2
    Title Should Be    Formy
    Click Link    xpath=//li/a[text()='Checkbox']
    Select Checkbox    id:checkbox-3
    Select Checkbox   checkbox-2
    Unselect Checkbox    checkbox-3
    Close Browser

TestingDropdown
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    2
    Title Should Be    Formy
    Click Link    xpath=//li/a[text()='Complete Web Form']
    # Select From List By Index    id=select-menu    2
    Select From List By Label    id=select-menu    10+
    # Select From List By Value    id=select-menu    3
    # Unselect From List By Label     id=select-menu    3
    Close Browser