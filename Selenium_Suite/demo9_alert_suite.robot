*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Test Teardown   Close Browser

*** Test Cases ***

TC1

        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    20s
        Go To    https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
        Click Element    xpath=//img[@alt="Go"]
        ${alert_text}   Handle Alert    action=ACCEPT       timeout=30s
        Log To Console    ${alert_text}

TC2

        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    20s
        Go To    https://nasscom.in/nasscom-membership
        Click Element    xpath=//a[@id='edit-submitted-contact-person-for-nasscom-email-id-cp']

