*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library      AutoRecorder

*** Test Cases ***
TC1
        [Documentation]     This script validates if the phone no is 10 digitor not
        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    20s
        Go To    url=https://www.medibuddy.in/
        sleep   10s
        Click Button    id=wzrk-cancel
        Click Element    link=For Employer
        Switch Window   MediBuddy LaunchPad
        Input Text    id=getInTouchName    Ananda
        Input Text    id=getInTouchEmail    aupadhaya@gmail.com
        Input Text    id=getInTouchMobile    12340
        Input Text    id=getInTouchEmpCount    99
        Input Text    id=getInTouchDesignation    Developer
        Element Text Should Be    //div[contains(text(),'digits')]    Mobile Number should be 10 digits
        Click Button    xpath=//button[text()='Get in Touch']
        [Teardown]      Close Browser



