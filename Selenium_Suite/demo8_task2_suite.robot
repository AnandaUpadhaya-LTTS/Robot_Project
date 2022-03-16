*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***

TC1

        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        Set Selenium Implicit Wait    20s
        Go To    https://demo.openemr.io/b/openemr
        Input Text    id=authUser    admin
        Input Text    id=clearPass    pass
        Select From List By Value    xpath=//select[@class='form-control']      18
        Click Button    xpath=//button[@class='btn btn-login btn-lg']
        Click Element    xpath=//div[contains(text(),'Messages')]
        Select Frame    xpath=//iframe[@name="msg"]
        Click Element    Link=Add New
        Select From List By Value    id=form_note_type    Pharmacy
        Select From List By Label    name=form_message_status   Forwarded
        Select From List By Value    id=users       zhportal
        Input Text    id=note    Hello
        Click Button    id=newnote
        Page Should Contain     Please choose a patient
        Unselect Frame
        [Teardown]      Close Browser