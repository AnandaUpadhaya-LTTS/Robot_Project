*** Settings ***
Library     ../Python_File/my_script.py

*** Test Cases ***
TC1
    ${name}     Get My Name
    ${num_add}      Add Two Numbers    3.4    4.2
    Log To Console    ${name}
    Log To Console    ${num_add}
