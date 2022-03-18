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
    Go To    https://www.ilovepdf.com/pdf_to_word
    Click Element    xpath=//span[text()="Select PDF file"]
    #Choose File    xpath=//span[text()="Select PDF file"]    .//test.pdf
    Control Focus       Open        ${EMPTY}        Edit1
    Sleep    1s
    Control Set Text    Open        ${EMPTY}        Edit1   D:${/}Test.pdf
    Sleep    1s
    Control Click       Open        ${EMPTY}        Button1
    Sleep    2s
    Element Text Should Be    xpath=//span[@class='file__info__name']    Test.pdf