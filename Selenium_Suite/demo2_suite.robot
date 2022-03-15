*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1

        #Append To Environment Variable      Path    ${EXECDIR}${/}Driver${/}
        Open Browser    url=https://www.goto.com/meeting/       browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        #Open Browser        url=https://www.goto.com/meeting/      browser=chrome
        Maximize Browser Window
        Set Selenium Implicit Wait    20s
        Click Element    id=truste-consent-button
        Click Element    link=Get a Demo
        Input Text    xpath=//input[@data-sc-field-name='firstName']    Ananda
        Input Text    xpath=//input[@data-sc-field-name='lastName']    Upadhaya
        Input Text    xpath=//input[@data-sc-field-name='email']    ananda@gmail.com
        Select From List By Label    xpath=//select[@data-sc-field-name='employees']    10-99
        Click Element    xpath=//input[@type='submit']
        [Teardown]      Close Browser