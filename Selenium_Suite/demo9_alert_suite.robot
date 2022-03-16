*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***

TC1

        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    20s
        Go To    https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
        Click Element    xpath=//img[@alt="Go"]
        ${alert_text}   Handle Alert    action=ACCEPT       timeout=30s
        Log To Console    ${alert_text}
        [Teardown]      Close Browser