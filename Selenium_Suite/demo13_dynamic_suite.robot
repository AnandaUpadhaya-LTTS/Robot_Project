*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Library     AutoItLibrary
Test Teardown   Close Browser

*** Test Cases ***

TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To       https://phptravels.net/hotels
    Click Element    id=cookie_stop
    Click Element    id=select2-hotels_city-container
    Input Text    xpath=//input[@role="searchbox"]      Chennai
    Press Keys      None        ARROW_DOWN
    Press Keys      None        ENTER

