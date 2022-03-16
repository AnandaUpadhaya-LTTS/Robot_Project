*** Settings ***
Library    Collections

*** Variables ***

&{dict_1}   name=Ananda     gender=male     ph_no=22334

*** Test Cases ***

TC1
        Log To Console    ${dict_1}


TC2

        &{dict_2}   Create Dictionary  studentId=123       studentName=John    Percentage=72.2     mailId=john@gmail.com
        Log To Console    ${dict_2}


