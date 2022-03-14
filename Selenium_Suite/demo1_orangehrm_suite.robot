*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***

TC1
    Append To Environment Variable    Path      ${EXECDIR}${/}Driver${/}
    #Append To Environment Variable    Path      D:${/}Robot_Framework${/}Robot_Programs${/}Driver${/}
    Open Browser        url=https://opensource-demo.orangehrmlive.com/      browser=chrome
    Set Selenium Implicit Wait    20s
    Maximize Browser Window
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
    Page Should Contain    My Info
    Click Element    id=welcome
    Click Element    Link=Logout
    Close All Browsers

TC2
    Log To Console    Checking