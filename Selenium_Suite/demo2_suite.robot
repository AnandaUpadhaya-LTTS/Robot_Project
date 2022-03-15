*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
        Open Browser    url=https://www.goto.com/meeting/       browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    20s
        Click Element    id=truste-consent-button
        Click Element    link=Get a Demo
        Input Text    xpath=//input[@data-sc-field-name='firstName']    Ananda
        Input Text    xpath=//input[@data-sc-field-name='lastName']    Upadhaya
        Input Text    xpath=//input[@data-sc-field-name='email']    ananda@gmail.com
