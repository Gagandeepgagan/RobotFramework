*** Settings ***
Library    BuiltIn
Library    Collections
Library    SeleniumLibrary

*** Variables ***
@{ITEMS}    Apple    Banana    Orange

*** Test Cases ***
ForLoopWithRange
    FOR    ${i}    IN RANGE    1    5
        Log    Iteration ${i}
    END
    FOR    ${i}    IN RANGE    5    1    -1
        Log    Iteration ${i}
    END
    FOR    ${i}    IN    1 2 3 4 5
        Log    Iteration ${i}
    END
    FOR    ${i}    IN    1  2  3  4  5
        Log    Iteration ${i}
    END

Iterate Through List
    FOR    ${item}    IN    @{ITEMS}
        Log    The item is: ${item}
    END
    @{names}    Create List    gagan    neeraj    vivek    aatish
    FOR    ${name}    IN    @{names}
        Log    The item is: ${name}
    END


LoopWithExit
    @{ITEMS}    Create List    a    b    c    d    e
    FOR      ${i}    IN    @{ITEMS}
    Run Keyword If    '${i}' == 'd'    Exit For Loop
    Log    The item is: ${i}
    END

    @{ITEMS}    Create List    1    2    3    4    5
    FOR      ${i}    IN    @{ITEMS}
    Run Keyword If    ${i} == 2    Exit For Loop
    Log    The item is: ${i}
    END

Count and extract links
    Open Browser    https://www.amazon.com/    chrome
    Maximize Browser Window
    ${count}=   Get Element Count     xpath://a
    Log To Console    Total number of links: ${count}

    @{LinkItems}    Create List
    FOR    ${i}    IN RANGE    1    ${count}
        ${linkText}=    get text    xpath=(//a)[${i}]
        Log To Console    ${linkText}
    END

    Close Browser