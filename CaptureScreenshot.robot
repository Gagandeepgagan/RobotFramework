*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}        Chrome

*** Test Cases ***
Valid Login
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Sleep    20
    Capture Element Screenshot    xpath://*[@class="orangehrm-login-branding"]/img    C:/Users/netzwelt/eclipse/RobotFramework/logo.png
    Capture Page Screenshot    C:/Users/netzwelt/eclipse/RobotFramework/page.png

    Input Text    name:username    admin
    Input Text    name:password  admin123
    Click Button    type:submit
    Title Should Be    Welcome Page

    
    [Teardown]    Close Browser
