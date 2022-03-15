*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***

TC1

        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    5s
        Go To    https://netbanking.hdfcbank.com/netbanking/
        Select Frame    xpath=//frame[@name='login_page']
        Input Text    xpath=//input[@name='fldLoginUserId']    test123
        Click Element    Link=CONTINUE
        #Click Button    name=btn btn-primary login-btn
        Unselect Frame
        [Teardown]  Close Browser

