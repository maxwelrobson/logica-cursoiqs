*** Variables ***
${NOME}    Maria
${IDADE}    22
${CONDICAO}   deficiente 

*** Tasks ***
Fila preferencial ou comum

    IF    ${IDADE} > 65
    Log To Console    \nFila Preferencial
    ELSE IF    '${CONDICAO}' == 'deficiente' or '${CONDICAO}' == 'gestante'
    Log To Console    \nFila Preferencial
    ELSE
    Log To Console    \nFila comum
    END
    
    