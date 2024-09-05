*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
ScrollTest
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html    edge
    Sleep    10
    Set Browser Implicit Wait    10
    # Execute Javascript    window.scrollTo(0,1500)
    # Scroll Element Into View    xpath://td[text()="Portugal"]
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    5
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    Sleep    5
    Close Browser


