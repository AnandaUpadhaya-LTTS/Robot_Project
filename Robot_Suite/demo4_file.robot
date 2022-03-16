*** Settings ***
Library    Collections
*** Variables ***

${NAME}     Ananda Upadhaya
@{COLOURS}      red     green       blue        pink

*** Test Cases ***

TC1

        Set Local Variable    ${name}       Ananda_Upadhaya
        Log To Console    ${name}

        ${val}      Set Variable    Ananda
        Log To Console    ${val}
        Log To Console    ${NAME}

TC2

        Log To Console    ${NAME}
        Log To Console    ${COLOURS}[1]
        ${Length_List}      Get Length    ${COLOURS}
        Log To Console    ${Length_List}

TC3
        @{fruits}   Create List     apple   mango   banana  pineapple
        Log To Console    ${fruits}
        Remove Values From List    ${fruits}    mango
        Remove Values From List    ${fruits}    banana
        Append To List    ${fruits}     orange
        Log To Console    ${fruits}

