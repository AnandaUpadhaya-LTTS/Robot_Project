*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1

        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    20s
        Go To    url=https://www.medibuddy.in/
        Click Button    id=wzrk-cancel
        Click Element    link=For Employer
        Switch Window   MediBuddy LaunchPad
        Input Text    id=getInTouchName    Ananda
        Input Text    id=getInTouchEmail    aupadhaya@gmail.com
        Input Text    id=getInTouchMobile    1234567890
        Input Text    id=getInTouchEmpCount    99
        Input Text    id=getInTouchDesignation    Developer
        Click Button    xpath=//button[text()='Get in Touch']
        Close Window



