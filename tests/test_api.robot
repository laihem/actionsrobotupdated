*** Settings ***
Library           RequestsLibrary

*** Test Cases ***
Get Post By ID Should Return 200
    Create Session    jsonplaceholder    https://thetestingworldapi.com/
    ${response}=      GET    jsonplaceholder    api/studentsDetails
    Status Should Be  200    ${response}
    Dictionary Should Contain Value    ${response.json()}    1
