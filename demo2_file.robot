*** Settings ***
Library     DateTime

*** Test Cases ***

TC1
    ${current_date_time}    Get Current Date
    Log To Console    ${current_date_time}