*** Settings ***
Library         BuiltIn

Test Tags       common    tags


*** Test Cases ***
VAR_syntax
    VAR    ${name}    Robot Framework
    VAR    ${longer}    Gagandeep Kaur Bains
    ...    Quality Assursnace
    VAR    ${multiline}    Gagandeep Kaur Bains
    ...    First line
    ...    second line
    ...    third line
    ...    separator=\n
    VAR    @{list}    first    second
    ...    last
    Log Many    ${name}    ${longer}    ${multiline}
    ...    ${list}

    VAR    ${suite level}    value    scope=SUITE
    Log    ${suite level}

VAR continued
    Log    ${suite level}

tag syntax
    [Tags]    -common    own
    No Operation
