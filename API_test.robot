*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Test Cases ***

# Test Case for GET Request
Test GET Request
    [Documentation]    Verify that a GET request to the API returns a 200 status and valid JSON response.
    Create Session    jsonplaceholder    ${BASE_URL}
    ${response}    GET On Session   jsonplaceholder    /posts/1
    Log    ${response.status_code}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.json()} 

