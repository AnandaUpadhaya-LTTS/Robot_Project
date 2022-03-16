*** Variables ***

${NAME}     Ananda Upadhaya

*** Test Cases ***

TC1

        Set Local Variable    ${name}       Ananda_Upadhaya
        Log To Console    ${name}

        ${val}      Set Variable    Ananda
        Log To Console    ${val}

        Log To Console    ${NAME}

TC2

        Log To Console    ${NAME}

