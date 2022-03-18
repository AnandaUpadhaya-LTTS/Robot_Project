*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library     AutoItLibrary
Test Teardown   Close Browser

*** Test Cases ***

TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    https://john:john123@softwaretesting.com/

TC2
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    https://softwaretesting.com/
    sleep   5s
    Send    Ananda
    Send    {TAB}
    Send    pass123
    Send    {ENTER}


