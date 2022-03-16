*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Test Teardown   Close Browser

*** Test Cases ***

TC1

        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    20s
        Go To    https://www.royalcaribbean.com/account/
        Click Link    Create an account
        #Click Element    Link=Create an account
        #Input Text    id=mat-input-11    Ananda
        Input Text    xpath=//input[@data-placeholder='First name/Given name']    Ananda
        Input Text    xpath=//input[@data-placeholder='Last name/Surname']    Upadhaya
        #Input Text    id=mat-input-11    Ananda
        #Input Text    id=mat-input-12    Upadhaya
        Click Element    xpath=//span[text()='Month']
        Click Element    xpath=//span[contains(text(),'January')]

        Click Element    xpath=//span[text()='Day']
        Click Element    xpath=//span[contains(text(),'4')]

        Input Text    xpath=//input[@data-placeholder="Year"]    1984
        Sleep    5s





