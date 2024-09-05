*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://testautomationpractice.blogspot.com/
${BROWSER}     chrome

*** Test Cases ***
HAndlingAlerts
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element    xpath://button[@onclick='myFunctionAlert()']
    Sleep    3
    Handle Alert    accept
    Sleep    3
    Close Browser

HAndlingConfirmBox
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element    xpath://button[@onclick='myFunctionConfirm()']
    Sleep    3
    Handle Alert    leave     #to keep the alert open
    # Alert Should Be Present    Press a button!    #automatically accepts the alert, no need for next step
    Alert Should Not Be Present    gagan
    Handle Alert    dismiss
    Sleep    3
    Close Browser

HAndlingPrompt
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element    xpath://button[@onclick='myFunctionPrompt()']
    Sleep    3
    Input Text Into Alert    testing
    Sleep    3
    Close Browser

HAndlingFrame
    Select Frame    framename    #id,name,xpath
    Click Link    textoflinkedtext
    Unselect Frame
    Select Frame    packageFrame
    Click Link    webdriver
    Unselect Frame