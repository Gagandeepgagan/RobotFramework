*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
webtable
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    ${rows}=    Get Element Count    xpath://table[@name="BookTable"]/tbody/tr
    ${columns}=    Get Element Count    xpath://table[@name="BookTable"]/tbody/tr/th
    Log    rows:${rows}    
    log    columns=${columns}
    ${name}=    Get Text    xpath://table[@name="BookTable"]/tbody/tr[5]/td[1]
    Log    table data:${name}    
    Table Column Should Contain    xpath://table[@name="BookTable"]/tbody/tr/th    2    Author
    Table Row Should Contain    xpath://table[@name="BookTable"]/tbody/tr    4    Javascript
    Table Cell Should Contain    xpath://table[@name="BookTable"]    5    2    Mukesh
    Table Header Should Contain    xpath://table[@name="BookTable"]    BookName
    Close Browser