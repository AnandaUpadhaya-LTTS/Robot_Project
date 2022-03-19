*** Settings ***
Library     SeleniumLibrary
Library    XML
Test Teardown   Close Browser

*** Test Cases ***

TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To       https://demo.openemr.io/b/openemr

    Element Text Should Be    xpath=//p[contains(text(),Electronic)]    The most popular open-source Electronic Health Record and Medical Practice Management solution.
    #Element Attribute Should Be     text        validator


TC2

    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To       https://demo.openemr.io/b/openemr
    
    ${text}     Get Text    xpath=//p[contains(text(),Electronic)]
    Log To Console    ${text}
    ${Href_val}     seleniumLibrary.Get Element Attribute    partial link= Acknowledgments,    href
    Log To Console    ${Href_val}


