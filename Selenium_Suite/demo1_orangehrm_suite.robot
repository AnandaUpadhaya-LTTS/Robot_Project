*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***

TC1
    Append To Environment Variable    Path      ${EXECDIR}${/}Driver${/}
    #Append To Environment Variable    Path      D:${/}Robot_Framework${/}Robot_Programs${/}Driver${/}
    Open Browser        url=https://opensource-demo.orangehrmlive.com/      browser=chrome
    Sleep    5s
    Close All Browsers
