*** Settings ***
Library    Dialogs

*** Variables ***

*** Tasks ***
Números multiplos
    
    ${n1}    Get Value From User    \nDigite o primeiro número:
    ${n2}    Get Value From User    \nDigite o segundo número:

    IF    ${n1} != 0 and ${n2} != 0
        IF     ${n1} % ${n2} == 0 or ${n2} % ${n1} == 0
            Log To Console    \n${n1} e ${n2} são multiplos um do outro.
        ELSE
            Log To Console    \n${n1} e ${n2} não são multiplos um do outro.
        END       
        
        ELSE
        Log To Console    \nMúltiplos devem ser diferentes de zero
    END
    