*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***

TC1

        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    5s
        Go To    https://www.redbus.in/
        Click Element    id=sign-in-icon-down
        Click Element    id=signInLink
        Select Frame    class=modalIframe
        #Switch Window   NEW
        Input Text    id=mobileNoInp    2567895422
        Unselect Frame
        [Teardown]  Close Browser

