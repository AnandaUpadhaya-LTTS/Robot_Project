*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***

TC1
    Append To Environment Variable    Path      ${EXECDIR}${/}Driver${/}
    #Append To Environment Variable    Path      D:${/}Robot_Framework${/}Robot_Programs${/}Driver${/}
    Open Browser        url=https://opensource-demo.orangehrmlive.com/      browser=chrome
    Sleep    5s
    Maximize Browser Window
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
    Page Should Contain    My Info
    Sleep    5s
    Click Element    id=welcome
    sleep   5s
    Click Element    Link=Logout
    sleep   5s
    Close All Browsers
