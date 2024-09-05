*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open The Browser
    Open Browser    https://demowebshop.tricentis.com/register    edge
    Maximize Browser Window

*** Test Cases ***
Open Browser
    Open The Browser


Search On Google
    # ${speed}=    Get Selenium Speed
    # Log    ${speed}
    # Log To Console    ${speed}
    # Set Selenium Speed    1
    # ${speed}=    Get Selenium Timeout
    # Log To Console    ${speed}
    # Set Selenium Timeout    10
    # Wait Until Page Contains    Registerrert
    
    Set Selenium Implicit Wait    5
    select radio button    Gender    M
    Input Text    name:FirstNameX    David
    Input Text    name:LastName    John
    Input Text    name:Email    anhc@gmail.com
    Input Text    name:Password    davidjohn
    Input Text    name:ConfirmPassword    davidjohn
    # Sleep    5

Close Browser
    Close Browser
