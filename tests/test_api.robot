*** Settings ***
Library           RequestsLibrary

*** Test Cases ***
Get Post By ID Should Return 200
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    ${response}=      GET    jsonplaceholder    /posts/1
    Status Should Be  200    ${response}
    Dictionary Should Contain Value    ${response.json()}    1
