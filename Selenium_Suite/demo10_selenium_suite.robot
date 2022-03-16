*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
Test Teardown   Close Browser

*** Test Cases ***

TC1

        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    20s
        Go To    https://www.google.co.in/
        ${new_var}  Get Title
        Log To Console    ${new_var}
        ${var1}     Get Location
        Log To Console    ${var1}
        Set Selenium Speed    1s

        Press Keys      name=q    Hello World
        Press Keys      None      ARROW_DOWN
        Press Keys      None      ARROW_DOWN
        Press Keys      None      ARROW_DOWN
        Press Keys      None      ENTER



