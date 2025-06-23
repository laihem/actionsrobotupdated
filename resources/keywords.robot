*** Variables ***
${URL}     https://example.com
${BROWSER}     chrome

*** Keywords ***
Open Browser To Homepage
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Open Browser    ${URL}    ${BROWSER}    options=${options}
    Maximize Browser Window
