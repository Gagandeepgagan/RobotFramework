*** Settings ***
Library   BuiltIn

Suite Setup    Log    this is my suite setup.
Suite Teardown    Log    this is my suite teardown.
Test Setup    Log    hi, Test.
Test Teardown    Log    bye, Test.

Default Tags    Functional

*** Test Cases ***
FirstTestCase
    [Tags]    smoke
    log    Gagan-smoke


SecondTestcase
    Set Tags    CustomizedTag
    Log    Bains-sutomized
    Remove Tags    CustomizedTag

ThirdTestcase
    [Tags]    sanity
    Log    Deep-sanity
