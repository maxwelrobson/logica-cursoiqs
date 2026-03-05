*** Settings ***
Library    Dialogs

*** Variables ***
${N}

*** Tasks ***
Par ou Ímpar

    ${N}    Get Value From User    Escreva um número:
    
    IF    ${N} % 2 == 0
    Log To Console    \nNúmero Par
    ELSE
    Log To Console    \nNúmero Ímpar
    END
    