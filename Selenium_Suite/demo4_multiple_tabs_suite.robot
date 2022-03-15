*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
        [Documentation]     This script validates if the phone no is 10 digitor not
        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    20s
        Go To    https://www.db4free.net/
        Click Element    Link=phpMyAdmin »
        Switch Window   NEW
        Input Text    id=input_username    Admin
        Input Text    id=input_password    admin123
        Click Button    id=input_go
        Element Text Should Be    xpath=//div[contains(text(),'Acess')]     Access denied for user.


