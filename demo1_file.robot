*** Test Cases ***
TC1 print My Name
    Log To Console    Ananda Upadhaya
    Log To Console    Hello World

TC2
    Log To Console    Hello Everyone
    Log     Hello World Three

TC3
    ${session_name}     Set Variable    Robot Session
    Log To Console    ${session_name}
    Log To Console    Session name is ${session_name}

#var1 = 25 and var2 = 26, perform print
TC4
    ${var1}     Set Variable    25
    ${var2}     Set Variable    26
    #Log To Console    ${var1}
    #Log To Console    ${var2}
    Log To Console    ${var1}+${var2}
    ${result}    Evaluate      ${var1}+${var2}
    Log To Console    ${result}
    
# radius =10, find area of circle
TC5
    ${radius}   Set Variable    10
    ${area}     Evaluate    3.14 * ${radius} ** 2
    Log To Console    ${area}

