*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/keywords.robot
Suite Setup       Open Browser To Homepage
Suite Teardown    Close Browser

*** Test Cases ***
Test Title Is Correct
    Title Should Be    Example Domain
# Test Case 1