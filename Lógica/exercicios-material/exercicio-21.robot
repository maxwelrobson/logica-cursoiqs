*** Settings ***
Library    Dialogs

*** Variables ***
${IDADE}

*** Tasks ***
Idade para voto
    ${IDADE}    Get Value From User    \nDigite sua idade:

    Log To Console    \nIdade: ${IDADE}

    IF    ${IDADE} < 16
    Log To Console    \nNão pode votar
    ELSE IF    ${IDADE} >= 16 and ${IDADE} <= 17 or ${IDADE} > 70
    Log To Console    \nVoto opcional
    ELSE 
    Log To Console    \nVoto obrigatório
        
    END
    