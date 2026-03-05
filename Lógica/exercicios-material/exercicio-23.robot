*** Settings ***
Library    Dialogs

*** Variables ***


*** Tasks ***
Multiplicação até 10
    
    ${n}    Get Value From User    \nDigite um número:

    FOR    ${i}    IN RANGE    10
        ${i}    Evaluate    ${i}+1
        ${resultado}    Evaluate    ${n} * ${i}
        Log To Console    \n${n} x ${i} = ${resultado}
    END
    