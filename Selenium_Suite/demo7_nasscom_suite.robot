*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***

TC1

        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    10s
        Go To    https://nasscom.in/nasscom-membership
        Click Element    id=edit-field-membership-type-und-1203
        Click Element    id=edit-field-business-focus-inst-und-970
        Click Element    id=edit-field-business-focus-inst-und-968
        Input Text    id=edit-title    L&T
        Select From List By Value    id=edit-field-state-member-und    5096
        Select From List By Label    id=edit-field-city-membership-und      Chennai
        Click Element    xpath=//label[@for='edit-field-mode-of-payment-und-1']
        Click Element    id=edit-field-code-of-conduct-und-0
        Click Element    id=edit-preview

        [Teardown]  Close Browser
