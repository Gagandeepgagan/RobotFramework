*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://swisnl.github.io/jQuery-contextMenu/demo.html
${BROWSER}        Chrome

*** Test Cases ***
RightClick
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Open Context Menu    xpath://div[@class="document"]/p/span
    Sleep    3
    [Teardown]    Close Browser

DoubleClick
    Open Browser    https://testautomationpractice.blogspot.com/    ${BROWSER}
    Double Click Element    //button[text()="Copy Text"]
    Sleep    3
    [Teardown]    Close Browser

DragDrop
    Open Browser    https://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html/    ${BROWSER}
    Drag And Drop    xpath://*[@id="post-962"]/div/div[1]/a[1]/img    xpath://*[@id="post-962"]/div/h2/a
    Sleep    3
    [Teardown]    Close Browser