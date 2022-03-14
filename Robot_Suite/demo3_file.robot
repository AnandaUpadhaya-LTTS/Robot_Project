*** Settings ***
Library     OperatingSystem

*** Test Cases ***

TC1
    Log To Console    ${CURDIR}
    Log To Console    ${EXECDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${TEMPDIR}
    Log To Console    ${TEST_NAME}
    Log To Console    ${SUITE_NAME}


TC2
    Create Directory    D:${/}Robot_Framework${/}Robot_Programs${/}New_folder
    Create File    D:${/}Robot_Framework${/}Robot_Programs${/}New_folder${/}test.txt    Ananda Upadhaya
    Copy File    D:${/}Robot_Framework${/}Robot_Programs${/}New_folder${/}test.txt    D:${/}Robot_Framework${/}Robot_Programs${/}test.txt
    Sleep    3s
    Remove File    D:${/}Robot_Framework${/}Robot_Programs${/}New_folder${/}test.txt
    Remove Directory    D:${/}Robot_Framework${/}Robot_Programs${/}New_folder
    #Remove Directory    D:${/}Robot_Framework${/}Robot_Programs${/}New_folder