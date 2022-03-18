*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Test Teardown   Close Browser

*** Test Cases ***

TC1

        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    10s
        Go To    https://phptravels.net/
        Click Element    id=cookie_stop
        Click Element    xpath=//a[contains(text(),'flights')]
        Select From List By Value    id=flight_type     business
        Input Text    xpath=//input[@placeholder="Flying From"]    Los Angeles (LAX)
        Input Text    xpath=//input[@placeholder="To Destination"]    Dallas (DAL)
        Input Text    id=departure    17-12-2022
        Click Element    xpath=//span[@class='guest_flights d-block text-center']
        Input Text    id=fadults    4
        Input Text    id=fchilds    2
        Click Button    id=flights-search


        Sleep    5s







